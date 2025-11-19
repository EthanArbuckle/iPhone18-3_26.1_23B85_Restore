void sub_1E5039AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaFormatInfo::setSDPMediaFormatParams(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = a1;
  v4[4] = a1;
  v4[5] = a1;
  v2 = *(a2 + 120);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = v4;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorI10overloadedIJZN18SDPMediaFormatInfo23setSDPMediaFormatParamsERKNS_7variantIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEEE3__0ZNS7_23setSDPMediaFormatParamsESH_E3__1ZNS7_23setSDPMediaFormatParamsESH_E3__2ZNS7_23setSDPMediaFormatParamsESH_E3__3ZNS7_23setSDPMediaFormatParamsESH_E3__4ZNS7_23setSDPMediaFormatParamsESH_E3__5ZNS7_23setSDPMediaFormatParamsESH_E3__6EEEEJRKNS0_6__implIJS9_SA_SB_SC_SD_SE_EEEEEEDcOT_DpOT0____fmatrix[v2])(&v5);
}

void sub_1E5039C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMedia::validConnection(SDPMedia *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this + 88;
  for (i = *(this + 12); i != v3; i = *(i + 8))
  {
    if ((*(*(i + 16) + 24))(i + 16))
    {
      SDPConnection::SDPConnection(a2, i + 16);
      *(a2 + 56) = 1;
      return;
    }
  }

  v6 = 0u;
  LOBYTE(v6) = 1;
  v5 = &unk_1F5ED8C78;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0uLL;
  SDPConnection::SDPConnection(a2, &v5);
  *(a2 + 56) = 0;
  v5 = &unk_1F5ED8C78;
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5039D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMedia::validateRemoteAddress(uint64_t a1, const void **a2)
{
  v2 = a1 + 88;
  v3 = *(a1 + 96);
  if (v3 == a1 + 88)
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
    v7 = (v3 + 40);
    v8 = *(v3 + 63);
    v9 = v8;
    v10 = (v3 + 40);
    if (v8 < 0)
    {
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
    }

    v11 = v5 >= v9 ? v9 : v5;
    v12 = memcmp(v10, v6, v11);
    if (v5 != v9 || v12 != 0)
    {
      break;
    }

LABEL_27:
    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
  }

  if (v8 >= 8)
  {
    v14 = &v7[v8];
    v15 = v7;
    do
    {
      v16 = memchr(v15, 46, v8 - 7);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (*v16 == 0x64696C61766E692ELL)
      {
        result = 1;
        if (v17 == v14 || v17 - v7 == -1)
        {
          return result;
        }

        goto LABEL_27;
      }

      v15 = v16 + 1;
      v8 = v14 - (v17 + 1);
    }

    while (v8 >= 8);
  }

  return 1;
}

uint64_t *SDPMedia::setConnectionAddress(uint64_t *result, std::string *__str, uint64_t a3)
{
  v3 = result + 11;
  v4 = result[12];
  if (v4 != result + 11)
  {
    do
    {
      std::string::operator=((v4 + 40), __str);
      result = SDPConnection::setAddressTypeFromString((v4 + 16), a3);
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t SDPMedia::mediaCryptoList@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  for (i = *(this + 144); i != this + 136; i = *(i + 8))
  {
    if (*(i + 136) == 3)
    {
      operator new();
    }
  }

  return this;
}

void sub_1E503A130(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaFormatAMRParams *a2)
{
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaFormatEVSParams *a2)
{
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(v2, a2);
  v2[0] = &unk_1F5EF5FB8;
  if (v3 < 0)
  {
    operator delete(v2[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v5 = *(a2 + 40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v3, *(a2 + 40));
  v5 = *(a2 + 44);
  v6 = *(a2 + 48);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v3, *(a2 + 40));
  v5 = *(a2 + 42);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::copyAttributes(SDPMedia const&)::$_0,SDPMedia::copyAttributes(SDPMedia const&)::$_1,SDPMedia::copyAttributes(SDPMedia const&)::$_2,SDPMedia::copyAttributes(SDPMedia const&)::$_3,SDPMedia::copyAttributes(SDPMedia const&)::$_4,SDPMedia::copyAttributes(SDPMedia const&)::$_5,SDPMedia::copyAttributes(SDPMedia const&)::$_6,SDPMedia::copyAttributes(SDPMedia const&)::$_7,SDPMedia::copyAttributes(SDPMedia const&)::$_8,SDPMedia::copyAttributes(SDPMedia const&)::$_9,SDPMedia::copyAttributes(SDPMedia const&)::$_10,SDPMedia::copyAttributes(SDPMedia const&)::$_11,SDPMedia::copyAttributes(SDPMedia const&)::$_12,SDPMedia::copyAttributes(SDPMedia const&)::$_13,SDPMedia::copyAttributes(SDPMedia const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 64);
  v3 = *(a2 + 42);
  v4 = *(a2 + 40);
  if (v3 == 1)
  {
    SDPMedia::setMaxPacketizationTime(v2, v4);
  }

  else
  {
    SDPMedia::setPacketizationTime(v2, v4);
  }
}

void SDPRTCPXR::SDPRTCPXR(SDPRTCPXR *this, const SDPRTCPXR *a2)
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

  *this = &unk_1F5EC8B98;
  v4 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v5 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v5;
  }
}

void sub_1E503AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v8 = *(v4 + 48);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *v4 = v6;
  if (*(v4 + 39) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPRTCPXR *a2)
{
  SDPRTCPXR::SDPRTCPXR(v3, a2);
  SDPRTCPXR::~SDPRTCPXR(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v4 = &unk_1F5EC1DD0;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
  }

  SDPUnsupportedAttribute::~SDPUnsupportedAttribute(&v4);
  return 1;
}

void sub_1E503B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaCandidate *a2)
{
  SDPMediaCandidate::SDPMediaCandidate(v3, a2);
  SDPMediaCandidate::~SDPMediaCandidate(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaCrypto *a2)
{
  SDPMediaCrypto::SDPMediaCrypto(v3, a2);
  SDPMediaCrypto::~SDPMediaCrypto(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v6 = *(a2 + 40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaEndToAccessEdgeProtection *a2)
{
  SDPMediaEndToAccessEdgeProtection::SDPMediaEndToAccessEdgeProtection(v3, a2);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaFormatUnknownParams *a2)
{
  SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(v3, a2);
  SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaFormatAMRParams *a2)
{
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(v3, a2);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaFormatEVSParams *a2)
{
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(v3, a2);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v6 = *(a2 + 40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v4, *(a2 + 40));
  v6 = *(a2 + 44);
  v7 = *(a2 + 48);
  v4[0] = &unk_1F5EF5FB8;
  if (v5 < 0)
  {
    operator delete(v4[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(v4, *(a2 + 40));
  v6 = *(a2 + 42);
  v4[0] = &unk_1F5EF5FB8;
  if (v5 < 0)
  {
    operator delete(v4[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaRTPMap *a2)
{
  SDPMediaRTPMap::SDPMediaRTPMap(v3, a2);
  SDPMediaRTPMap::~SDPMediaRTPMap(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPPacketizationTimeAttribute *a2)
{
  SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(v3, a2);
  v3[0] = &unk_1F5EF5FB8;
  if (v4 < 0)
  {
    operator delete(v3[2]);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaPath *a2)
{
  SDPMediaPath::SDPMediaPath(v3, a2);
  SDPMediaPath::~SDPMediaPath(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaAcceptTypes *a2)
{
  SDPMediaAcceptTypes::SDPMediaAcceptTypes(v3, a2);
  SDPMediaAcceptTypes::~SDPMediaAcceptTypes(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<16ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaAcceptWrappedTypes *a2)
{
  SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(v3, a2);
  SDPMediaAcceptWrappedTypes::~SDPMediaAcceptWrappedTypes(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<17ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaSetup::SDPMediaSetup(v3, a2);
  SDPMediaSetup::~SDPMediaSetup(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<18ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_0,SDPMedia::valid(void)::$_1,SDPMedia::valid(void)::$_2,SDPMedia::valid(void)::$_3,SDPMedia::valid(void)::$_4,SDPMedia::valid(void)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFingerprint::SDPMediaFingerprint(v3, a2);
  SDPMediaFingerprint::~SDPMediaFingerprint(v3);
  return 1;
}

void SDPMediaEndToAccessEdgeProtection::SDPMediaEndToAccessEdgeProtection(SDPMediaEndToAccessEdgeProtection *this, const SDPMediaEndToAccessEdgeProtection *a2)
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

  *this = &unk_1F5ED5438;
  *(this + 40) = *(a2 + 40);
}

void sub_1E503B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_6,SDPMedia::valid(void)::$_7,SDPMedia::valid(void)::$_8,SDPMedia::valid(void)::$_9,SDPMedia::valid(void)::$_10,SDPMedia::valid(void)::$_11,SDPMedia::valid(void)::$_12,SDPMedia::valid(void)::$_13,SDPMedia::valid(void)::$_14,SDPMedia::valid(void)::$_15,SDPMedia::valid(void)::$_16,SDPMedia::valid(void)::$_17,SDPMedia::valid(void)::$_18,SDPMedia::valid(void)::$_19,SDPMedia::valid(void)::$_20>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaPath *a2)
{
  SDPMediaPath::SDPMediaPath(v3, a2);
  SDPMediaPath::~SDPMediaPath(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_6,SDPMedia::valid(void)::$_7,SDPMedia::valid(void)::$_8,SDPMedia::valid(void)::$_9,SDPMedia::valid(void)::$_10,SDPMedia::valid(void)::$_11,SDPMedia::valid(void)::$_12,SDPMedia::valid(void)::$_13,SDPMedia::valid(void)::$_14,SDPMedia::valid(void)::$_15,SDPMedia::valid(void)::$_16,SDPMedia::valid(void)::$_17,SDPMedia::valid(void)::$_18,SDPMedia::valid(void)::$_19,SDPMedia::valid(void)::$_20>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaAcceptTypes *a2)
{
  SDPMediaAcceptTypes::SDPMediaAcceptTypes(v3, a2);
  SDPMediaAcceptTypes::~SDPMediaAcceptTypes(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<16ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_6,SDPMedia::valid(void)::$_7,SDPMedia::valid(void)::$_8,SDPMedia::valid(void)::$_9,SDPMedia::valid(void)::$_10,SDPMedia::valid(void)::$_11,SDPMedia::valid(void)::$_12,SDPMedia::valid(void)::$_13,SDPMedia::valid(void)::$_14,SDPMedia::valid(void)::$_15,SDPMedia::valid(void)::$_16,SDPMedia::valid(void)::$_17,SDPMedia::valid(void)::$_18,SDPMedia::valid(void)::$_19,SDPMedia::valid(void)::$_20>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, const SDPMediaAcceptWrappedTypes *a2)
{
  SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(v3, a2);
  SDPMediaAcceptWrappedTypes::~SDPMediaAcceptWrappedTypes(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<17ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_6,SDPMedia::valid(void)::$_7,SDPMedia::valid(void)::$_8,SDPMedia::valid(void)::$_9,SDPMedia::valid(void)::$_10,SDPMedia::valid(void)::$_11,SDPMedia::valid(void)::$_12,SDPMedia::valid(void)::$_13,SDPMedia::valid(void)::$_14,SDPMedia::valid(void)::$_15,SDPMedia::valid(void)::$_16,SDPMedia::valid(void)::$_17,SDPMedia::valid(void)::$_18,SDPMedia::valid(void)::$_19,SDPMedia::valid(void)::$_20>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaSetup::SDPMediaSetup(v3, a2);
  SDPMediaSetup::~SDPMediaSetup(v3);
  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<18ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMedia::valid(void)::$_6,SDPMedia::valid(void)::$_7,SDPMedia::valid(void)::$_8,SDPMedia::valid(void)::$_9,SDPMedia::valid(void)::$_10,SDPMedia::valid(void)::$_11,SDPMedia::valid(void)::$_12,SDPMedia::valid(void)::$_13,SDPMedia::valid(void)::$_14,SDPMedia::valid(void)::$_15,SDPMedia::valid(void)::$_16,SDPMedia::valid(void)::$_17,SDPMedia::valid(void)::$_18,SDPMedia::valid(void)::$_19,SDPMedia::valid(void)::$_20>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint> const&>(uint64_t a1, uint64_t a2)
{
  SDPMediaFingerprint::SDPMediaFingerprint(v3, a2);
  SDPMediaFingerprint::~SDPMediaFingerprint(v3);
  return 1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<0ul,SDPMediaFormatUnknownParams,SDPMediaFormatUnknownParams const&>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[30])
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(a1, a3);
    a1[30] = 0;
  }

  else
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);

    std::string::operator=((a2 + 48), (a3 + 48));
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<1ul,SDPMediaFormatAMRParams,SDPMediaFormatAMRParams const&>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[30] == 1)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    v5 = *(a3 + 42);
    *(a2 + 56) = *(a3 + 56);
    *(a2 + 42) = v5;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(a1, a3);
    a1[30] = 1;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<2ul,SDPMediaFormatEVSParams,SDPMediaFormatEVSParams const&>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[30] == 2)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    v5 = *(a3 + 58);
    v6 = *(a3 + 74);
    v7 = *(a3 + 90);
    *(a2 + 100) = *(a3 + 100);
    *(a2 + 90) = v7;
    *(a2 + 74) = v6;
    *(a2 + 58) = v5;
    *(a2 + 42) = *(a3 + 42);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(a1, a3);
    a1[30] = 2;
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<3ul,SDPMediaFormatDTMFParams,SDPMediaFormatDTMFParams const&>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[30] == 3)
  {
    *(a2 + 8) = *(a3 + 8);
    result = std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = std::construct_at[abi:ne200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,std::in_place_index_t<3ul> const&,SDPMediaFormatDTMFParams const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>*>(a1, &std::in_place_index<3ul>, a3);
    a1[30] = 3;
  }

  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<4ul,SDPMediaFormatTTYParams,SDPMediaFormatTTYParams const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 120) == 4)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    v5 = *(a3 + 44);
    *(a2 + 52) = *(a3 + 52);
    *(a2 + 44) = v5;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    SDPMediaFormatParams::SDPMediaFormatParams(a1, *(a3 + 40));
    *a1 = &unk_1F5EF24A0;
    *(a1 + 44) = *(a3 + 44);
    *(a1 + 48) = *(a3 + 48);
    *(a1 + 120) = 4;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__assign_alt[abi:ne200100]<5ul,SDPMediaFormatTTYRedParams,SDPMediaFormatTTYRedParams const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 120) == 5)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    SDPMediaFormatParams::SDPMediaFormatParams(a1, *(a3 + 40));
    *a1 = &unk_1F5EF2518;
    *(a1 + 42) = *(a3 + 42);
    *(a1 + 120) = 5;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(unsigned __int8 ***a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, ***a1);
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, **(*a1 + 8));
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, **(*a1 + 16));
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, **(*a1 + 24));
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, **(*a1 + 32));
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::bandwidthAS(BOOL)::$_0,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_1,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_2,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_3,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_4,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_5,SDPMediaFormatInfo::bandwidthAS(BOOL)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t a1, _WORD *a2)
{
  if (a2[20] == 255)
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 72))(a2, **(*a1 + 40));
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(ImsOutStream ***a1, const SDPMediaFormatUnknownParams *a2)
{
  v2 = *a1;
  SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(v4, a2);
  if (v5 != 255)
  {
    v3 = *v2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(*v2 + 1), "\r\n", 2);
    *(v3 + 17) = 0;
    SDPAttribute::toStream(v4, *v2);
  }

  SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(v4);
}

void sub_1E503C3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(va);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t *a1, const SDPMediaFormatAMRParams *a2)
{
  v2 = *a1;
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(v4, a2);
  if (v12 != 1 || (v7 & 1) != 0 || (v6 & 1) != 0 || (v8 & 1) != 0 || (v9 & 1) != 0 || (v10 & 1) != 0 || v11 == 1)
  {
    v3 = *(v2 + 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "\r\n", 2);
    *(v3 + 17) = 0;
    SDPAttribute::toStream(v4, *(v2 + 8));
  }

  v4[0] = &unk_1F5EF5FB8;
  if (v5 < 0)
  {
    operator delete(v4[2]);
  }
}

void sub_1E503C490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t *a1, const SDPMediaFormatEVSParams *a2)
{
  v2 = *a1;
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(v4, a2);
  if (v6 != 255)
  {
    v3 = *(v2 + 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "\r\n", 2);
    *(v3 + 17) = 0;
    SDPAttribute::toStream(v4, *(v2 + 16));
  }

  v4[0] = &unk_1F5EF5FB8;
  if (v5 < 0)
  {
    operator delete(v4[2]);
  }
}

void sub_1E503C568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v6 = *(a2 + 8);
  v5 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  v8 = *(a2 + 40);
  v5 = &unk_1F5EBF210;
  if (v8 != 255)
  {
    v4 = *(v3 + 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "\r\n", 2);
    *(v4 + 17) = 0;
    SDPAttribute::toStream(&v5, *(v3 + 24));
  }

  v5 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E503C698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  SDPMediaFormatParams::SDPMediaFormatParams(v5, *(a2 + 40));
  v5[0] = &unk_1F5EF24A0;
  v7 = *(a2 + 44);
  v8 = *(a2 + 48);
  if (v7)
  {
    v4 = *(v3 + 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "\r\n", 2);
    *(v4 + 17) = 0;
    SDPAttribute::toStream(v5, *(v3 + 32));
  }

  v5[0] = &unk_1F5EF5FB8;
  if (v6 < 0)
  {
    operator delete(v5[2]);
  }
}

void sub_1E503C780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<SDPMediaFormatInfo::toStream(ImsOutStream &)::$_0,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_1,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_2,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_3,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_4,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_5,SDPMediaFormatInfo::toStream(ImsOutStream &)::$_6>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams> const&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  SDPMediaFormatParams::SDPMediaFormatParams(v5, *(a2 + 40));
  v5[0] = &unk_1F5EF2518;
  v8 = *(a2 + 42);
  if (v7 != 255)
  {
    v4 = *(v3 + 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "\r\n", 2);
    *(v4 + 17) = 0;
    SDPAttribute::toStream(v5, *(v3 + 40));
  }

  v5[0] = &unk_1F5EF5FB8;
  if (v6 < 0)
  {
    operator delete(v5[2]);
  }
}

void sub_1E503C884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliMessageDecoder::decode(uint64_t a1, uint64_t a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v53, "decoder.laz");
  v48[0] = 0;
  v51 = 0;
  v4 = ims::debug(v3, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "LazuliMessageDecoder::decode bytes = ", 37);
  *(v4 + 17) = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  MEMORY[0x1E6923370](*(v4 + 8), v5);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
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
    v8 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v9 = memchr(v8, 10, size);
    if (v9)
    {
      v10 = v9 - v8;
      if (v10 != -1)
      {
        memset(&v46, 0, sizeof(v46));
        std::string::basic_string(&v46, &__str, 0, v10, &v53);
        std::string::basic_string(&v53, &__str, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, &v52);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v53;
        ims::chomp(&v46, "\r\n\t ", 3);
        memset(&v45, 0, sizeof(v45));
        *(&v53.__r_.__value_.__s + 23) = 1;
        LOWORD(v53.__r_.__value_.__l.__data_) = 32;
        v11 = ims::nextToken(&v46, 0, &v45, &v53);
        if (v11 == -1)
        {
          v14 = std::string::basic_string[abi:ne200100]<0>(&v53, "decoder.laz");
          v41[0] = 0;
          v44 = 0;
          v15 = ims::error(v14, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "LazuliMessageDecoder: no tokens in start line", 45);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v44 == 1 && v43 < 0)
          {
            v16 = v42;
LABEL_39:
            operator delete(v16);
          }

LABEL_40:
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          goto LABEL_42;
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v45.__r_.__value_.__l.__size_ != 4)
          {
            goto LABEL_36;
          }

          v12 = v45.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) != 4)
          {
            goto LABEL_36;
          }

          v12 = &v45;
        }

        if (LODWORD(v12->__r_.__value_.__l.__data_) == 1347572557)
        {
          memset(&v36, 0, sizeof(v36));
          *(&v53.__r_.__value_.__s + 23) = 1;
          LOWORD(v53.__r_.__value_.__l.__data_) = 32;
          v19 = ims::nextToken(&v46, v11, &v36, &v53);
          if (v19 == -1)
          {
            v22 = std::string::basic_string[abi:ne200100]<0>(&v53, "decoder.laz");
            v32[0] = 0;
            v35 = 0;
            v23 = ims::error(v22, v32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "LazuliMessageDecoder: no transaction ID in the message ", 55);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            if (v35 == 1 && v34 < 0)
            {
              operator delete(v33);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            memset(&v31, 0, sizeof(v31));
            *(&v53.__r_.__value_.__s + 23) = 1;
            LOWORD(v53.__r_.__value_.__l.__data_) = 32;
            if (ims::nextToken(&v46, v19, &v31, &v53) == -1)
            {
              v24 = std::string::basic_string[abi:ne200100]<0>(&v53, "decoder.laz");
              v27[0] = 0;
              v30 = 0;
              v25 = ims::error(v24, v27);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "LazuliMessageDecoder: no method or status in the message ", 57);
              *(v25 + 17) = 0;
              (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v25 + 17) = 0;
              if (v30 == 1 && v29 < 0)
              {
                operator delete(v28);
              }

              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v20 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
              if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v20 = v31.__r_.__value_.__l.__size_;
              }

              if (v20 == 4)
              {
                if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v21 = &v31;
                }

                else
                {
                  v21 = v31.__r_.__value_.__r.__words[0];
                }

                if (LODWORD(v21->__r_.__value_.__l.__data_) == *"SEND")
                {
                  std::allocate_shared[abi:ne200100]<LazuliRequest,std::allocator<LazuliRequest>,std::string &,std::string const&,LazuliMessageEncodingMap const*&,0>();
                }
              }

              else
              {
                if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v21 = &v31;
                }

                else
                {
                  v21 = v31.__r_.__value_.__r.__words[0];
                }

                if (v20 == 6 && LODWORD(v21->__r_.__value_.__l.__data_) == *"REPORT" && WORD2(v21->__r_.__value_.__r.__words[0]) == *"RT")
                {
                  std::allocate_shared[abi:ne200100]<LazuliRequest,std::allocator<LazuliRequest>,std::string &,std::string const&,LazuliMessageEncodingMap const*&,0>();
                }
              }

              LODWORD(v52.__r_.__value_.__l.__data_) = strtoul(v21, 0, 10);
              if (LODWORD(v52.__r_.__value_.__l.__data_))
              {
                std::allocate_shared[abi:ne200100]<LazuliResponse,std::allocator<LazuliResponse>,std::string &,unsigned int &,LazuliMessageEncodingMap const*&,0>();
              }
            }

            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

LABEL_42:
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_28;
          }

          return 0;
        }

LABEL_36:
        v17 = std::string::basic_string[abi:ne200100]<0>(&v53, "decoder.laz");
        v37[0] = 0;
        v40 = 0;
        v18 = ims::error(v17, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "LazuliMessageDecoder: non MSRP protocol: ", 41);
        *(v18 + 17) = 0;
        (*(*v18 + 32))(v18, &v45);
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v40 == 1 && v39 < 0)
        {
          v16 = __p;
          goto LABEL_39;
        }

        goto LABEL_40;
      }
    }
  }

  if (v6 < 0)
  {
LABEL_28:
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E503DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  _Unwind_Resume(a1);
}

void sub_1E503DE5C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1E503DF20(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1E503E258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, xpc_object_t object)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  xpc_release(object);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    xpc::dict::~dict(v20);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    xpc::dict::~dict(v20);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::SignallingDeferralEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEA948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::SignallingDeferralEventImpl::~SignallingDeferralEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5EEA998;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5EEA998;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::SignallingDeferralEventImpl::getDict@<X0>(_anonymous_namespace_::SignallingDeferralEventImpl *this@<X0>, void *a2@<X8>)
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

void SipRequireHeader::~SipRequireHeader(char **this)
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

int *BambiCallTerminationReasons::defaultReason(BambiCallTerminationReasons *this)
{
  {
    BambiCallTerminationReasons::defaultReason(void)::reason = 0;
    xmmword_1ECFD4910 = 0u;
    unk_1ECFD4920 = 0u;
    xmmword_1ECFD4900 = 0u;
    unk_1ECFD4938 = 0u;
    unk_1ECFD4948 = 0u;
    unk_1ECFD4958 = 0u;
    unk_1ECFD4967 = 0u;
    HIBYTE(xmmword_1ECFD4900) = 13;
    qmemcpy(&qword_1ECFD48F8, "InternalError", 13);
    unk_1ECFD492C = 0xA000001F4;
  }

  return &BambiCallTerminationReasons::defaultReason(void)::reason;
}

uint64_t BambiCallTerminationReason::BambiCallTerminationReason(uint64_t a1, const std::string *a2, const std::string *a3, int a4, int a5, int a6, int a7)
{
  *(a1 + 8) = 0u;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 10;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 119) = 0u;
  std::string::operator=((a1 + 8), a2);
  std::string::operator=((a1 + 32), a3);
  *(a1 + 56) = a6;
  *(a1 + 60) = a4;
  *(a1 + 64) = a5;
  *(a1 + 128) = a7;
  return a1;
}

void sub_1E503E764(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 120);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 104);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

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

uint64_t BambiCallTerminationReason::BambiCallTerminationReason(uint64_t a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v9;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = a3;
  *(a1 + 60) = 0xA00000000;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    *(a1 + 88) = *(a5 + 2);
    *(a1 + 72) = v11;
  }

  *(a1 + 127) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return a1;
}

void sub_1E503E898(_Unwind_Exception *exception_object)
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

const void **BambiCallTerminationReason::addReasonToRequest(const void **result, SipMessage **a2)
{
  v3 = result;
  if ((*(result + 55) & 0x8000000000000000) == 0)
  {
    if (!*(result + 55))
    {
      goto LABEL_8;
    }

LABEL_5:
    v4 = *a2;
    v5 = *(v3 + 14);
    v6 = v3[13];
    v14[0] = v3[12];
    v14[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    SipMessage::addReasonWithParams(v4, v5, v14, (v3 + 4), v3 + 3);
  }

  if (result[5])
  {
    goto LABEL_5;
  }

LABEL_8:
  v7 = result[14];
  if (v7)
  {
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        result = SipMessage::addHeader(*a2, (v9 + 4), (v9 + 7), 0);
        v11 = v9[1];
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
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  return result;
}

void sub_1E503E9B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallIncomingTerminationReasons::getDefaultReasonMap(BambiCallIncomingTerminationReasons *this@<X0>, uint64_t *a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_27, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_27))
  {
    __cxa_atexit(std::weak_ptr<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>::~weak_ptr, &qword_1EE2BC990, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_27);
  }

  if ((atomic_load_explicit(&qword_1EE2BC978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC978))
  {
    __cxa_atexit(MEMORY[0x1E69E5328], &BambiCallIncomingTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx, &dword_1E4C3F000);
    __cxa_guard_release(&qword_1EE2BC978);
  }

  std::mutex::lock(&BambiCallIncomingTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx);
  if (qword_1EE2BC998)
  {
    v4 = std::__shared_weak_count::lock(qword_1EE2BC998);
    a2[1] = v4;
    if (v4)
    {
      v5 = qword_1EE2BC990;
      *a2 = qword_1EE2BC990;
      if (v5)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  (*(*this + 8))(this);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = qword_1EE2BC998;
  qword_1EE2BC990 = v7;
  qword_1EE2BC998 = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_11:

  std::mutex::unlock(&BambiCallIncomingTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx);
}

uint64_t std::weak_ptr<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>::~weak_ptr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1E503F90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(v20 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v20 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1E503FB8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v21);
  JUMPOUT(0x1E503FB74);
}

void BambiCallIncomingTerminationReasons::BambiCallIncomingTerminationReasons(BambiCallIncomingTerminationReasons *this, const BambiCallIncomingTerminationReasons *a2)
{
  BambiCallTerminationReasonsBase::BambiCallTerminationReasonsBase(this, a2);
  *v2 = &unk_1F5EEAC58;
  *(v2 + 176) = 0;
  *(v2 + 168) = v2 + 176;
  *(v2 + 184) = 0;
  v3 = 0;
  v4 = 0;
  BambiCallTerminationReasonsBase::getCombinedReasonMap(v2);
}

void sub_1E503FD04(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(v2, *(v1 + 22));
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(v1);
  _Unwind_Resume(a1);
}

void BambiCallTerminationReasonsBase::BambiCallTerminationReasonsBase(BambiCallTerminationReasonsBase *this, const BambiCallTerminationReasonsBase *a2)
{
  *this = &unk_1F5EEAC98;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 127) = 0u;
  *(this + 39) = 13;
  qmemcpy(this + 16, "Internal", 8);
  *(this + 68) = 0xA000001F4;
  *(this + 19) = 0;
  *(this + 18) = this + 152;
  *(this + 20) = 0;
  BambiCallTerminationReasonsBase::assign(this, a2);
}

void sub_1E503FDF8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(v2, *v3);
  BambiCallTerminationReason::~BambiCallTerminationReason(v1);
  _Unwind_Resume(a1);
}

void BambiCallTerminationReasonsBase::getCombinedReasonMap(void (***this)(uint64_t *__return_ptr))
{
  v4[0] = 0;
  v4[1] = 0;
  (**this)(v4);
  memset(v3, 0, sizeof(v3));
  std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::map[abi:ne200100](v3, v4[0]);
  memset(v2, 0, sizeof(v2));
  std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::map[abi:ne200100](v2, (this + 18));
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__node_handle_merge_unique[abi:ne200100]<std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>>(v2, v3);
  std::allocate_shared[abi:ne200100]<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>,std::allocator<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>,std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>&,0>();
}

void sub_1E503FED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(&a13, a14);
  v16 = *(v14 - 32);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void BambiCallIncomingTerminationReasons::assign(BambiCallIncomingTerminationReasons *this, const BambiCallIncomingTerminationReasons *a2)
{
  v4 = (this + 176);
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(this + 168, *(this + 22));
  *(this + 21) = v4;
  *(this + 23) = 0;
  *v4 = 0;
  BambiCallTerminationReasonsBase::assign(this, a2);
  v5 = 0;
  v6 = 0;
  BambiCallTerminationReasonsBase::getCombinedReasonMap(this);
}

void sub_1E5040034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallTerminationReasonsBase::assign(BambiCallTerminationReasonsBase *this, const BambiCallTerminationReasonsBase *a2)
{
  v3 = (this + 152);
  v4 = this + 144;
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(this + 144, *(this + 19));
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  v5 = *(a2 + 18);
  v6 = a2 + 152;
  if (v5 != v6)
  {
    do
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v15, v5 + 2);
      ims::lowerCase(v15, &__p);
      p_p = &__p;
      v7 = std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4, &__p.__r_.__value_.__l.__data_);
      v9 = *&v15[24];
      v8 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v7 + 64);
      *(v7 + 56) = v9;
      *(v7 + 64) = v8;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v15[23] & 0x80000000) != 0)
      {
        operator delete(*v15);
      }

      v11 = *(v5 + 1);
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
          v12 = *(v5 + 2);
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }
}

void BambiCallIncomingTerminationReasons::addReason(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  BambiCallTerminationReasonsBase::addReason(a1);
}

void sub_1E504020C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallTerminationReasonsBase::addReason(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<BambiCallTerminationReason,std::allocator<BambiCallTerminationReason>,BambiCallTerminationReason const&,0>();
}

void sub_1E50402C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallIncomingTerminationReasons::reasonForResponse(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = *(a1 + 176);
  if (!v5)
  {
    goto LABEL_122;
  }

  v8 = *(*a2 + 128);
  v9 = a1 + 176;
  do
  {
    v10 = *(v5 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v5;
    }

    v5 = *(v5 + 8 * v12);
  }

  while (v5);
  if (v9 != a1 + 176 && v8 >= *(v9 + 32) && (v13 = SipMessage::header<SipReasonHeader>(*a2), *(v9 + 56)))
  {
    v73 = a4;
    v14 = (v9 + 40);
    v85 = 0;
    v84 = 0;
    v86 = 0xFFFFFFFFLL;
    if (v13)
    {
      v15 = v13[4];
      v16 = *(v13 + 9);
      v17 = *(v13 + 8);
      if (v17 != v16)
      {
        v74 = *(v13 + 9);
        while (1)
        {
          v18 = *v17;
          v82 = 0;
          v81 = 0;
          v19 = -1;
          v83 = 0xFFFFFFFFLL;
          if (!v18)
          {
            goto LABEL_108;
          }

          v75 = v17;
          v20 = *(v9 + 48);
          if (v20 == v14)
          {
            goto LABEL_107;
          }

          do
          {
            v22 = v20[2];
            v21 = v20[3];
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(v22 + 132) == 1 && (a3 & 1) == 0)
            {
              v23 = std::string::basic_string[abi:ne200100]<0>(&v119, "bambi.call");
              v95[0] = 0;
              v98 = 0;
              v24 = ims::debug(v23, v95);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "ignoring override reason ", 25);
              *(v24 + 17) = 0;
              (*(*v24 + 32))(v24, v22 + 8);
              (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v24 + 17) = 0;
              if (v98 == 1 && v97 < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v121) < 0)
              {
                v25 = v119;
                goto LABEL_96;
              }

              goto LABEL_97;
            }

            v26 = *(v22 + 95);
            if (v26 < 0)
            {
              if (!*(v22 + 80))
              {
LABEL_43:
                v36 = 0;
                goto LABEL_50;
              }
            }

            else if (!*(v22 + 95))
            {
              goto LABEL_43;
            }

            if (v26 >= 0)
            {
              v27 = *(v22 + 95);
            }

            else
            {
              v27 = *(v22 + 80);
            }

            v28 = *(v18 + 23);
            v29 = v28;
            if (v28 < 0)
            {
              v28 = v18[1];
            }

            if (v27 != v28 || (v26 >= 0 ? (v30 = (v22 + 72)) : (v30 = *(v22 + 72)), (v31 = *v18, v29 >= 0) ? (v32 = v18) : (v32 = *v18), memcmp(v30, v32, v27)))
            {
              v33 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
              v115[0] = 0;
              v118 = 0;
              v34 = ims::debug(v33, v115);
              (*(*v34 + 32))(v34, v22 + 8);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), ": unable to match reason protocol (", 35);
              *(v34 + 17) = 0;
              (*(*v34 + 32))(v34, v22 + 72);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), " != ", 4);
              *(v34 + 17) = 0;
              (*(*v34 + 32))(v34, v18);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), ")", 1);
              *(v34 + 17) = 0;
              (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v34 + 17) = 0;
              if (v118 == 1 && v117 < 0)
              {
                v35 = v116;
                goto LABEL_93;
              }

LABEL_94:
              if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_97;
              }

              v25 = v124.__r_.__value_.__r.__words[0];
LABEL_96:
              operator delete(v25);
              goto LABEL_97;
            }

            v37 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
            LOBYTE(v119) = 0;
            v123 = 0;
            v38 = ims::debug(v37, &v119);
            (*(*v38 + 32))(v38, v22 + 8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), ": protocol matched (", 20);
            *(v38 + 17) = 0;
            (*(*v38 + 32))(v38, v22 + 72);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), ")", 1);
            *(v38 + 17) = 0;
            (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v38 + 17) = 0;
            if (v123 == 1 && v122 < 0)
            {
              operator delete(v121);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            v36 = 1;
LABEL_50:
            v39 = *(v22 + 56);
            if (v39)
            {
              if (v39 != SipReason::cause(v18))
              {
                v43 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
                LOBYTE(v107[0]) = 0;
                v110 = 0;
                v44 = ims::debug(v43, v107);
                (*(*v44 + 32))(v44, v22 + 8);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ": unable to match reason cause (", 32);
                *(v44 + 17) = 0;
                MEMORY[0x1E6923350](*(v44 + 8), *(v22 + 56));
                *(v44 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), " != ", 4);
                *(v44 + 17) = 0;
                v45 = SipReason::cause(v18);
                MEMORY[0x1E6923350](*(v44 + 8), v45);
                *(v44 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ")", 1);
                *(v44 + 17) = 0;
                (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v44 + 17) = 0;
                if (v110 != 1 || (v109 & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                v35 = v108;
                goto LABEL_93;
              }

              v40 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
              LOBYTE(v111[0]) = 0;
              v114 = 0;
              v41 = ims::debug(v40, v111);
              (*(*v41 + 32))(v41, v22 + 8);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), ": cause matched (", 17);
              *(v41 + 17) = 0;
              v42 = SipReason::cause(v18);
              MEMORY[0x1E6923350](*(v41 + 8), v42);
              *(v41 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), ")", 1);
              *(v41 + 17) = 0;
              (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v41 + 17) = 0;
              if (v114 == 1 && v113 < 0)
              {
                operator delete(v112);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              v36 = (v36 + 1);
            }

            if ((*(v22 + 55) & 0x8000000000000000) != 0)
            {
              if (!*(v22 + 40))
              {
                goto LABEL_75;
              }
            }

            else if (!*(v22 + 55))
            {
              goto LABEL_75;
            }

            SipReason::text(v18, &v124);
            NumMatchesForPattern = ims::getNumMatchesForPattern(&v124, (v22 + 32), 1u);
            v47 = NumMatchesForPattern;
            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
              if (!v47)
              {
LABEL_88:
                v55 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
                v99[0] = 0;
                v102 = 0;
                v56 = ims::debug(v55, v99);
                (*(*v56 + 32))(v56, v22 + 8);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), ": unable to match reason text (", 31);
                *(v56 + 17) = 0;
                (*(*v56 + 32))(v56, v22 + 32);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), " != ", 4);
                *(v56 + 17) = 0;
                v57 = SipReason::text(v18, &v103);
                (*(*v56 + 32))(v56, &v103, v57);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), ")", 1);
                *(v56 + 17) = 0;
                (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v56 + 17) = 0;
                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v103.__r_.__value_.__l.__data_);
                }

                if (v102 != 1 || (v101 & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                v35 = v100;
LABEL_93:
                operator delete(v35);
                goto LABEL_94;
              }
            }

            else if (!NumMatchesForPattern)
            {
              goto LABEL_88;
            }

            v48 = std::string::basic_string[abi:ne200100]<0>(&v124, "bambi.call");
            v104.__r_.__value_.__s.__data_[0] = 0;
            v106 = 0;
            v49 = ims::debug(v48, &v104);
            (*(*v49 + 32))(v49, v22 + 8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), ": text matched (", 16);
            *(v49 + 17) = 0;
            v50 = SipReason::text(v18, &v103);
            (*(*v49 + 32))(v49, &v103, v50);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), ")", 1);
            *(v49 + 17) = 0;
            (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v49 + 17) = 0;
            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }

            if (v106 == 1 && v105 < 0)
            {
              operator delete(v104.__r_.__value_.__r.__words[2]);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            v36 = (v36 + 1);
LABEL_75:
            v51 = std::string::basic_string[abi:ne200100]<0>(&v119, "bambi.call");
            v91[0] = 0;
            v94 = 0;
            v52 = ims::debug(v51, v91);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "matched ", 8);
            *(v52 + 17) = 0;
            (*(*v52 + 32))(v52, v22 + 8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), " with score ", 12);
            *(v52 + 17) = 0;
            MEMORY[0x1E6923340](*(v52 + 8), v36);
            *(v52 + 17) = 0;
            (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v52 + 17) = 0;
            if (v94 == 1 && v93 < 0)
            {
              operator delete(v92);
            }

            if (SHIBYTE(v121) < 0)
            {
              operator delete(v119);
            }

            if (v36 >= v83)
            {
              v53 = std::string::basic_string[abi:ne200100]<0>(&v119, "bambi.call");
              v87[0] = 0;
              v90 = 0;
              v54 = ims::debug(v53, v87);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v54 + 8), "new highest scoring match is ", 29);
              *(v54 + 17) = 0;
              (*(*v54 + 32))(v54, v22 + 8);
              (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v54 + 17) = 0;
              if (v90 == 1 && v89 < 0)
              {
                operator delete(v88);
              }

              if (SHIBYTE(v121) < 0)
              {
                operator delete(v119);
                if (!v21)
                {
                  goto LABEL_102;
                }

LABEL_86:
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                v120 = v21;
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                if (v21)
                {
                  goto LABEL_86;
                }

LABEL_102:
                v120 = 0;
              }

              v119 = v22;
              LODWORD(v121) = v36;
              BambiCallIncomingTerminationReasons::BambiCallTerminationScore::operator=(&v81, &v119);
              if (v120)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v120);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }
            }

LABEL_97:
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v20 = v20[1];
          }

          while (v20 != v14);
          v19 = v83;
          v16 = v74;
LABEL_107:
          v17 = v75;
LABEL_108:
          if (v19 > v86)
          {
            BambiCallIncomingTerminationReasons::BambiCallTerminationScore::operator=(&v84, &v81);
          }

          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          if (++v17 == v16)
          {
            v58 = v84;
            v59 = v85;
            if (v85)
            {
              atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v58)
            {
              v60 = std::string::basic_string[abi:ne200100]<0>(&v119, "bambi.call");
              v77[0] = 0;
              v80 = 0;
              v61 = ims::debug(v60, v77);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), "using matched reason ", 21);
              *(v61 + 17) = 0;
              (*(*v61 + 32))(v61, v58 + 8);
              (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v61 + 17) = 0;
              if (v80 == 1 && v79 < 0)
              {
                operator delete(v78);
              }

              if (SHIBYTE(v121) < 0)
              {
                operator delete(v119);
              }
            }

            *v73 = v58;
            v73[1] = v59;
            goto LABEL_171;
          }
        }
      }
    }

    v62 = *a2;
    if (*(*a2 + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v104, *(v62 + 136), *(v62 + 144));
    }

    else
    {
      v104 = *(v62 + 136);
    }

    *v73 = 0;
    v73[1] = 0;
    v63 = *(v9 + 48);
    if (v63 != v14)
    {
      v64 = 0;
      v76 = 0;
      while (1)
      {
        v66 = v63[2];
        v65 = v63[3];
        if (v65)
        {
          atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v66 + 132) != 1 || (a3 & 1) != 0)
        {
          if (!*(v66 + 56))
          {
            v68 = *(v66 + 55);
            if (v68 < 0)
            {
              if (!*(v66 + 40))
              {
                goto LABEL_150;
              }
            }

            else if (!*(v66 + 55))
            {
              goto LABEL_150;
            }

            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = &v104;
            }

            else
            {
              v69 = v104.__r_.__value_.__r.__words[0];
            }

            if (v68 >= 0)
            {
              v70 = (v66 + 32);
            }

            else
            {
              v70 = *(v66 + 32);
            }

            if (!strcasecmp(v69, v70))
            {
LABEL_150:
              std::string::basic_string[abi:ne200100]<0>(v111, "bambi.call");
              v115[0] = 0;
              v118 = 0;
              v71 = ims::debug(v111, v115);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v71 + 8), "matched ", 8);
              *(v71 + 17) = 0;
              (*(*v71 + 32))(v71, v66 + 8);
              (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v71 + 17) = 0;
              if (v118 == 1 && v117 < 0)
              {
                operator delete(v116);
              }

              if (SHIBYTE(v112) < 0)
              {
                operator delete(v111[0]);
              }

              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v64);
              }

              v64 = v65;
              v76 = v66;
            }
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v111, "bambi.call");
          LOBYTE(v119) = 0;
          v123 = 0;
          v67 = ims::debug(v111, &v119);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v67 + 8), "ignoring override reason ", 25);
          *(v67 + 17) = 0;
          (*(*v67 + 32))(v67, v66 + 8);
          (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v67 + 17) = 0;
          if (v123 == 1 && v122 < 0)
          {
            operator delete(v121);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111[0]);
          }
        }

        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        v63 = v63[1];
        if (v63 == v14)
        {
          *v73 = v76;
          v73[1] = v64;
          if (v76)
          {
            std::string::basic_string[abi:ne200100]<0>(v107, "bambi.call");
            LOBYTE(v111[0]) = 0;
            v114 = 0;
            v72 = ims::debug(v107, v111);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "using matching reason ", 22);
            *(v72 + 17) = 0;
            (*(*v72 + 32))(v72, v76 + 8);
            (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v72 + 17) = 0;
            if (v114 == 1 && v113 < 0)
            {
              operator delete(v112);
            }

            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107[0]);
            }
          }

          break;
        }
      }
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

LABEL_171:
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
    }
  }

  else
  {
LABEL_122:
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_1E50413E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

void *SipMessage::header<SipReasonHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Reason");
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

uint64_t BambiCallIncomingTerminationReasons::BambiCallTerminationScore::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(a1 + 16) = *(a2 + 4);
  }

  return a1;
}

void *BambiCallIncomingTerminationReasons::reasonForByeOrCancelRequest@<X0>(void (***a1)(uint64_t *__return_ptr)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = (*(**a2 + 120))();
  v6 = *(v5 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6 == 3)
  {
    v8 = v7 >= 0 ? v5 : *v5;
    v9 = *v8;
    v10 = *(v8 + 2);
    if (v9 == SipRequest::kMethodBye && v10 == BYTE2(SipRequest::kMethodBye))
    {
      goto LABEL_22;
    }
  }

  result = (*(**a2 + 120))();
  v13 = *(result + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = result[1];
  }

  if (v13 == 6)
  {
    v15 = v14 >= 0 ? result : *result;
    v16 = *v15;
    v17 = v15[2];
    if (v16 == *"CANCEL" && v17 == *"EL")
    {
LABEL_22:
      result = SipMessage::header<SipReasonHeader>(*a2);
      if (result)
      {
        v19 = result[8];
        if (v19 != result[9])
        {
          v20 = *v19;
          *a3 = 0;
          a3[1] = 0;
          v22 = *a2;
          v21 = a2[1];
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }

          memset(&v26, 0, sizeof(v26));
          SipReason::text(v20, &v26);
          SipReason::cause(v20);
          memset(&v25, 0, sizeof(v25));
          if (*(v20 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, *v20, v20[1]);
          }

          else
          {
            v23 = *v20;
            v25.__r_.__value_.__r.__words[2] = v20[2];
            *&v25.__r_.__value_.__l.__data_ = v23;
          }

          *a3 = 0;
          a3[1] = 0;
          BambiCallTerminationReasonsBase::getCombinedReasonMap(a1);
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1E5041EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallTerminationReasons::getDefaultReasonMap(BambiCallTerminationReasons *this@<X0>, uint64_t *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE2BC980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC980))
  {
    __cxa_atexit(std::weak_ptr<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>::~weak_ptr, &qword_1EE2BC9A0, &dword_1E4C3F000);
    __cxa_guard_release(&qword_1EE2BC980);
  }

  if ((atomic_load_explicit(&qword_1EE2BC988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC988))
  {
    __cxa_atexit(MEMORY[0x1E69E5328], &BambiCallTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx, &dword_1E4C3F000);
    __cxa_guard_release(&qword_1EE2BC988);
  }

  std::mutex::lock(&BambiCallTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx);
  if (qword_1EE2BC9A8)
  {
    v4 = std::__shared_weak_count::lock(qword_1EE2BC9A8);
    a2[1] = v4;
    if (v4)
    {
      v5 = qword_1EE2BC9A0;
      *a2 = qword_1EE2BC9A0;
      if (v5)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  (*(*this + 8))(this);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = qword_1EE2BC9A8;
  qword_1EE2BC9A0 = v7;
  qword_1EE2BC9A8 = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_11:

  std::mutex::unlock(&BambiCallTerminationReasons::getDefaultReasonMap(void)const::sDefaultsMtx);
}

void sub_1E5044578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  v23 = *(v20 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiCallTerminationReasonsBase::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a2 + 104);
  v6 = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v6 = SipParameterMap::operator==(v4, v5);
  }

  v8 = *(a1 + 120);
  v9 = *(a2 + 120);
  v10 = (v8 | v9) == 0;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (*(v8 + 16) == *(v9 + 16))
    {
      v10 = std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(*v8, (v8 + 8), *v9);
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *(a1 + 39);
  if (v12 >= 0)
  {
    v13 = *(a1 + 39);
  }

  else
  {
    v13 = *(a1 + 24);
  }

  v14 = *(a2 + 39);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 24);
  }

  if (v13 != v14)
  {
    return 0;
  }

  v16 = v12 >= 0 ? (a1 + 16) : *(a1 + 16);
  v17 = v15 >= 0 ? (a2 + 16) : *(a2 + 16);
  if (memcmp(v16, v17, v13))
  {
    return 0;
  }

  v18 = *(a1 + 63);
  if (v18 >= 0)
  {
    v19 = *(a1 + 63);
  }

  else
  {
    v19 = *(a1 + 48);
  }

  v20 = *(a2 + 63);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 48);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = v18 >= 0 ? (a1 + 40) : *(a1 + 40);
  v23 = v21 >= 0 ? (a2 + 40) : *(a2 + 40);
  if (memcmp(v22, v23, v19) || *(a1 + 68) != *(a2 + 68) || ((*(a1 + 72) == *(a2 + 72)) & v6 & v10) != 1 || *(a1 + 160) != *(a2 + 160))
  {
    return 0;
  }

  v24 = *(a1 + 144);
  v25 = (a1 + 152);
  if (v24 != v25)
  {
    v26 = (a2 + 152);
    while (1)
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v35, v24 + 2);
      v27 = ims::lowerCase(*&v35[24] + 8, &__p);
      v28 = *v26;
      if (!*v26)
      {
        goto LABEL_54;
      }

      v29 = v26;
      do
      {
        v27 = ReasonCompare::operator()(v27, v28 + 4, &__p.__r_.__value_.__l.__data_);
        if (v27)
        {
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }

        if (!v27)
        {
          v29 = v28;
        }

        v28 = v28[v30];
      }

      while (v28);
      if (v29 == v26 || ReasonCompare::operator()(v27, &__p.__r_.__value_.__l.__data_, v29 + 4))
      {
LABEL_54:
        v29 = v26;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v26 == v29 || *&v35[24] != v29[7])
      {
        break;
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if ((v35[23] & 0x80000000) != 0)
      {
        operator delete(*v35);
      }

      v31 = *(v24 + 1);
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
          v32 = *(v24 + 2);
          v7 = *v32 == v24;
          v24 = v32;
        }

        while (!v7);
      }

      result = 1;
      v24 = v32;
      if (v32 == v25)
      {
        return result;
      }
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if ((v35[23] & 0x80000000) != 0)
    {
      operator delete(*v35);
    }

    return 0;
  }

  return 1;
}

void sub_1E5044D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string const,std::shared_ptr<MessageSession>>::~pair(&a16);
  _Unwind_Resume(a1);
}

void BambiCallTerminationReasonsBase::reason(void (***a1)(uint64_t *__return_ptr))
{
  v1 = 0;
  v2 = 0;
  BambiCallTerminationReasonsBase::getCombinedReasonMap(a1);
}

void sub_1E5044E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallTerminationReasonsBase::setReasonsFromPref(void (***a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ims::CFDictionary::getKeysAndValues(a2, &v19, &v16, 0x8000100);
  if (v20 != v19)
  {
    v5 = *(a3 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a3 + 8);
    }

    if (v5)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v19, &__str);
    }

    else if (*(v19 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v19, v19[1]);
    }

    else
    {
      v6 = *v19;
      __str.__r_.__value_.__r.__words[2] = v19[2];
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    v14 = 0;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    *&v10[16] = 0u;
    *v10 = 0u;
    *v9 = 0u;
    *&v8[8] = 0u;
    v7 = 0;
    v8[23] = 13;
    qmemcpy(v8, "InternalError", 13);
    *&v10[12] = 0xA000001F4;
    BambiCallTerminationReasonsBase::getCombinedReasonMap(a1);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v7 = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1E504683C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  ims::CFType::~CFType(&STACK[0x3A8]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x3E8], STACK[0x3F0]);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x400], STACK[0x408]);
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(&STACK[0x4C0]);
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  v3 = *(v1 - 192);
  if (v3)
  {
    *(v1 - 184) = v3;
    operator delete(v3);
  }

  STACK[0x4C0] = v1 - 168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

BOOL ReasonCompare::operator()(uint64_t a1, void **a2, void **a3)
{
  std::string::basic_string[abi:ne200100]<0>(v16, "Override_");
  ims::lowerCase(v16, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 < 0)
  {
    v7 = a2[1];
  }

  v19 = v8;
  v20 = v7;
  v9 = std::string_view::starts_with[abi:ne200100](&v19, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "Override_");
  ims::lowerCase(v16, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  v12 = *(a3 + 23);
  if (v12 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 < 0)
  {
    v12 = a3[1];
  }

  v19 = v13;
  v20 = v12;
  v14 = std::string_view::starts_with[abi:ne200100](&v19, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (!v14 && v9)
  {
    return 0;
  }

  if (v9 || !v14)
  {
    return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a3) & 0x80u) != 0;
  }

  return 1;
}

void sub_1E5046DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallTerminationReasons::~BambiCallTerminationReasons(BambiCallTerminationReasons *this)
{
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(this);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEAAD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiCallTerminationReason>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEAB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiCallTerminationReason>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        a1 = ReasonCompare::operator()(a1, a3, (v4 + 32));
        if (!a1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      a1 = ReasonCompare::operator()(a1, (v7 + 32), a3);
      if (!a1)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 8);
    }

    while (v4);
  }

  else
  {
    v7 = a1 + 8;
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1E50472B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1E50474BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E50475E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E504783C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5047F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E504805C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E5048184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_1E50482A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,void *> *,long>>>(uint64_t result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>> const&>(v5, v5 + 8, v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>> const&>(_BOOL8 a1, uint64_t a2, void **a3)
{
  v4 = a2;
  v5 = a1;
  v18 = 0;
  v6 = a1 + 8;
  if (a1 + 8 == a2 || (a1 = ReasonCompare::operator()(a1, a3, (a2 + 32))))
  {
    if (*v5 == v4)
    {
      v8 = v4;
LABEL_16:
      if (*v4)
      {
        v18 = v8;
        v11 = (v8 + 8);
      }

      else
      {
        v18 = v4;
        v11 = v4;
      }

      goto LABEL_30;
    }

    v7 = *v4;
    if (*v4)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 8);
      }

      while (v7);
    }

    else
    {
      v14 = v4;
      do
      {
        v8 = *(v14 + 16);
        v15 = *v8 == v14;
        v14 = v8;
      }

      while (v15);
    }

    if (ReasonCompare::operator()(a1, (v8 + 32), a3))
    {
      goto LABEL_16;
    }

LABEL_29:
    v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__find_equal<std::string>(v5, &v18, a3);
    goto LABEL_30;
  }

  v9 = ReasonCompare::operator()(a1, (v4 + 32), a3);
  if (v9)
  {
    v11 = (v4 + 8);
    v10 = *(v4 + 8);
    if (v10)
    {
      v12 = *(v4 + 8);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = v4;
      do
      {
        v13 = *(v16 + 16);
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 != v6)
    {
      if (!ReasonCompare::operator()(v9, a3, (v13 + 32)))
      {
        goto LABEL_29;
      }

      v10 = *v11;
    }

    if (v10)
    {
      v18 = v13;
      v11 = v13;
    }

    else
    {
      v18 = v4;
    }

LABEL_30:
    v4 = *v11;
    if (*v11)
    {
      return v4;
    }

LABEL_20:
    operator new();
  }

  v18 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  return v4;
}

void sub_1E50485BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__node_handle_merge_unique[abi:ne200100]<std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>>(uint64_t **result, uint64_t **a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = result;
    do
    {
      v11 = 0;
      result = std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::__find_equal<std::string>(v5, &v11, v2 + 4);
      v6 = result;
      v7 = v2[1];
      v8 = v2;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (!v10);
      }

      if (!*result)
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a2, v2);
        result = std::__tree<unsigned int>::__insert_node_at(v5, v11, v6, v2);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void *std::__shared_ptr_emplace<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>::__shared_ptr_emplace[abi:ne200100]<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>&,std::allocator<std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEAAD8;
  std::map<std::string,std::shared_ptr<BambiCallTerminationReason>,ReasonCompare,std::allocator<std::pair<std::string const,std::shared_ptr<BambiCallTerminationReason>>>>::map[abi:ne200100](a1 + 3, a2);
  return a1;
}

void *std::__shared_ptr_emplace<BambiCallTerminationReason>::__shared_ptr_emplace[abi:ne200100]<BambiCallTerminationReason const&,std::allocator<BambiCallTerminationReason>,0>(void *a1, const BambiCallTerminationReason *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEAB28;
  BambiCallTerminationReason::BambiCallTerminationReason((a1 + 3), a2);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::find<std::string>(uint64_t a1, void **a2)
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
    a1 = ReasonCompare::operator()(a1, (v3 + 32), a2);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || ReasonCompare::operator()(a1, a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void std::__shared_ptr_emplace<std::map<std::string,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEAB78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipParameterMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEABC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipViaHop::SipViaHop(SipViaHop *this, const SipViaHop *a2)
{
  SipHop::SipHop(this, a2);
  *v4 = &unk_1F5EEACD8;
  *(v4 + 104) = 0u;
  v5 = (v4 + 104);
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0;
  v6 = *(a2 + 16);
  if (v6)
  {
    (*(*v6 + 32))(&v9);
    v7 = *(this + 17);
    v8 = v9;
    v9 = 0uLL;
    *(this + 8) = v8;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }
  }

  else
  {
    *(this + 16) = 0;
    *(this + 17) = 0;
  }

  std::string::operator=(v5, (a2 + 104));
}

void sub_1E5048AA0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 136);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  SipHop::~SipHop(v1);
  _Unwind_Resume(a1);
}

void SipViaHop::~SipViaHop(SipViaHop *this)
{
  *this = &unk_1F5EEACD8;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  SipHop::~SipHop(this);
}

{
  SipViaHop::~SipViaHop(this);

  JUMPOUT(0x1E69235B0);
}

__int128 *SipViaHop::branch(SipViaHop *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "branch");
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 80) == v2)
  {
    return &ims::kEmptyString;
  }

  else
  {
    return (v2 + 56);
  }
}

void sub_1E5048BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipViaHop::setBranch(uint64_t a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "branch");
  v7 = __p;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, __p);
  std::string::operator=((v4 + 56), a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5048C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipViaHop::supportsRport(SipViaHop *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "rport");
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return (this + 80) != v2;
}

void sub_1E5048D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipViaHop::rport(SipViaHop *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "rport");
  v2 = SipParameterMap::uintParameter(this + 64, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E5048D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipViaHop::setSupportsRport(SipViaHop *this, int a2)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "rport");
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_2_17);
    v7 = v5;
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, v5);
    std::string::operator=((v3 + 56), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "rport");
    SipParameterMap::clearParameter(this + 64, v5);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1E5048E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipViaHop::setRport(SipViaHop *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "rport");
  SipParameterMap::setParameter(this + 64, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(this + 16);
  if (result)
  {
    return (*(*result + 64))(result, a2);
  }

  return result;
}

void sub_1E5048F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipViaHop::setReceived(uint64_t a1, uint64_t *a2)
{
  memset(&__str, 0, sizeof(__str));
  v2 = *a2;
  IpAddress::asString();
}

void sub_1E5049074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t SipViaHop::keep(SipViaHop *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "keep");
  v2 = SipParameterMap::uintParameter(this + 64, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E5049110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipViaHop::setSupportsKeep(SipViaHop *this, int a2)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "keep");
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_2_17);
    v7 = v5;
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, v5);
    std::string::operator=((v3 + 56), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "keep");
    SipParameterMap::clearParameter(this + 64, v5);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1E50491E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *SipViaHop::toStream(SipViaHop *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SIP", 3);
  *(a2 + 17) = 0;
  v4 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 47;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &__p, 1);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "2.0", 3);
  *(a2 + 17) = 0;
  v5 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 47;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &__p, 1);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 104));
  (*(*a2 + 40))(a2, &__p);
  v6 = *(a2 + 1);
  v9 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v9, 1);
  *(a2 + 17) = 0;
  (*(*(this + 1) + 8))(this + 8, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipParameterMap::toStream((this + 64), a2, 0, 0, 0, 0);
  return a2;
}

void sub_1E5049368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SipViaHop *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void SipViaHeader::~SipViaHeader(SipViaHeader *this)
{
  *this = &unk_1F5EEAD28;
  v2 = *(this + 8);
  v3 = *(this + 9);
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
    v2 = *(this + 8);
  }

  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

{
  SipViaHeader::~SipViaHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipViaHeader::encodeValue(SipViaHeader *this, ImsOutStream *a2)
{
  v4 = *(this + 8);
  if (*(this + 9) != v4)
  {
    v11 = v2;
    v12 = v3;
    v7 = 0;
    do
    {
      if (v7)
      {
        v8 = *(a2 + 1);
        v10 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v10, 1);
        *(a2 + 17) = 0;
        v4 = *(this + 8);
      }

      (*(**(v4 + 8 * v7) + 40))(*(v4 + 8 * v7), a2);
      ++v7;
      v4 = *(this + 8);
    }

    while (v7 < (*(this + 9) - v4) >> 3);
  }

  return 1;
}

uint64_t SipViaHeader::setValueFromString(int a1, std::string *__str)
{
  memset(&v3, 0, sizeof(v3));
  v5 = 1;
  v4[0] = 44;
  if (ims::nextToken(__str, 0, &v3, v4) != -1)
  {
    operator new();
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E5049FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipViaHeader::mergeHeader(SipViaHeader *this, char **lpsrc)
{
  v2 = **lpsrc;
  if (v3 && v3[9] != v3[8])
  {
    operator new();
  }

  return v3 != 0;
}

char *std::vector<SipViaHop *>::insert(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v20 = *a1;
    v21 = v16 + *(a1 + 8) - v4 + 8;
    *(a1 + 8) = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_1E504A35C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void SipViaHop::returnAddress(SipViaHop *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 17);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    SipHost::ipAddress((this + 8), a2);
  }
}

void BambiAccessBarring::BambiAccessBarring(BambiAccessBarring *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "bambi.acb");
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

  ctu::OsLogLogger::OsLogLogger((this + 144), "com.apple.ipTelephony", "bambi.acb");
  *this = &unk_1F5EEADD8;
  *(this + 17) = &unk_1F5EEAE38;
  *(this + 76) = 100;
  *(this + 39) = 0;
  *(this + 160) = 0;
  *(this + 41) = 0;
  *(this + 168) = 0;
  *(this + 228) = 0;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = this + 240;
}

void BambiAccessBarring::~BambiAccessBarring(BambiAccessBarring *this)
{
  *this = &unk_1F5EEADD8;
  *(this + 17) = &unk_1F5EEAE38;
  v2 = *(this + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 24);
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

  v5 = *(this + 27);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 26);
      if (v8 && v4)
      {
        if (*(v8 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v8 + 4432), *(v8 + 4440));
        }

        else
        {
          __p = *(v8 + 4432);
        }

        (*(*v4 + 40))(v4, &__p, 4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(this + 30));
  v9 = *(this + 27);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 25);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
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
  BambiAccessBarring::~BambiAccessBarring(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiAccessBarring::~BambiAccessBarring(BambiAccessBarring *this)
{
  BambiAccessBarring::~BambiAccessBarring((this - 136));
}

{
  BambiAccessBarring::~BambiAccessBarring((this - 136));

  JUMPOUT(0x1E69235B0);
}

void BambiAccessBarring::registerForUac(BambiAccessBarring *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 24);
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

  v5 = *(this + 27);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 26);
      if (v8 && v4)
      {
        v9 = *(v8 + 4372);
        if (*(v8 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v8 + 4432), *(v8 + 4440));
        }

        else
        {
          __p = *(v8 + 4432);
        }

        (*(*v4 + 24))(v4, &__p, v9, 4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E504AA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void BambiAccessBarring::setStack(BambiAccessBarring *a1, uint64_t *a2)
{
  v4 = *(a1 + 25);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 24);
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

  v7 = *(a1 + 27);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 26);
      if (v9)
      {
        if (v6)
        {
          if (*(v9 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
          }

          else
          {
            __p = *(v9 + 4432);
          }

          (*(*v6 + 40))(v6, &__p, 4);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 27);
  *(a1 + 26) = v11;
  *(a1 + 27) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  BambiAccessBarring::registerForUac(a1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E504AB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void BambiAccessBarring::setDelegate(BambiAccessBarring *this, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 25);
  *(this + 24) = v4;
  *(this + 25) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  BambiAccessBarring::registerForUac(this);
}

BOOL BambiAccessBarring::alwaysListen(BambiAccessBarring *this)
{
  v2 = *(this + 27);
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
  v5 = *(this + 26);
  if (v5)
  {
    v6 = SipStack::prefs(v5);
    v7 = ImsPrefs::RegisterSmsWhenAccessBarringZero(v6);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v7;
}

void BambiAccessBarring::updateRegistrationForBarring(BambiAccessBarring *this)
{
  v36 = 0;
  v37 = 0;
  IPTelephonyManager::getBambiClient(&v36);
  v2 = *(this + 27);
  if (!v2)
  {
    goto LABEL_44;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_44;
  }

  v4 = v3;
  v5 = *(this + 26);
  if (v5)
  {
    if (!*(this + 76) && (*(this + 164) & 1) != 0)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      *v31 = 0u;
      *v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      *v28 = 0u;
      v25 = 0u;
      *v26 = 0u;
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      if ((SipStack::allRegisteredServices(v5) & 4) == 0 || (*(this + 164) & 4) != 0)
      {
        v15 = (*(*this + 64))(this);
        (*(*this + 16))(this, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "barring IMS services for both voice and sms", 43);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
      }

      else if (BambiAccessBarring::alwaysListen(this))
      {
        v12 = (*(*this + 64))(this);
        (*(*this + 16))(this, v12);
        v13 = ImsOutStream::operator<<(v12, "registering for SMS only due to access barring change");
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v13[17] = 0;
        v14 = v36;
        if (*(v5 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v5 + 4432), *(v5 + 4440));
        }

        else
        {
          __p = *(v5 + 4432);
        }

        std::string::basic_string[abi:ne200100]<0>(v19, "");
        std::string::basic_string[abi:ne200100]<0>(v17, "");
        BambiClient::updateRegisteredServices(v14, &__p.__r_.__value_.__l.__data_, 4, v22, v19, v17, 0);
LABEL_25:
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      *v31 = 0u;
      *v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      *v28 = 0u;
      v25 = 0u;
      *v26 = 0u;
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      v6 = SipStack::configuredServices(v5);
      if (SipStack::registeredForSms(v5))
      {
        v7 = SipStack::registeredForVoice(v5);
        v8 = (v6 & 1) != 0 ? v7 : 1;
        if ((v8 & 1) == 0)
        {
          v9 = (*(*this + 64))(this);
          (*(*this + 16))(this, v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "registering for ", 16);
          *(v9 + 17) = 0;
          v10 = SipStack::configuredServices(v5);
          std::string::basic_string[abi:ne200100]<0>(v19, ",");
          BambiServices::namesForServiceMask(v10, &__p);
          (*(*v9 + 32))(v9, &__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " due to access barring change", 29);
          *(v9 + 17) = 0;
          (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v9 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v20 < 0)
          {
            operator delete(v19[0]);
          }

          v11 = v36;
          if (*(v5 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v5 + 4432), *(v5 + 4440));
          }

          else
          {
            __p = *(v5 + 4432);
          }

          v16 = SipStack::configuredServices(v5);
          std::string::basic_string[abi:ne200100]<0>(v19, "");
          std::string::basic_string[abi:ne200100]<0>(v17, "");
          BambiClient::updateRegisteredServices(v11, &__p.__r_.__value_.__l.__data_, v16, v22, v19, v17, 0);
          goto LABEL_25;
        }
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[1]);
    }

    if (SHIBYTE(v32[0]) < 0)
    {
      operator delete(v31[0]);
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
LABEL_44:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

void sub_1E504B1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28)
{
  ims::AccessNetworks::~AccessNetworks(&a28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  v31 = *(v29 - 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void BambiAccessBarring::updateVoiceInfo(unsigned int *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "received update voice barring factor: ", 38);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923390](*(v6 + 8), *a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ", time: ", 8);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), *(a2 + 1));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ", SpecialAccessClass: ", 22);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923340](*(v6 + 8), *(a2 + 8));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ", services : ", 13);
  *(v6 + 17) = 0;
  v7 = *(a2 + 3);
  std::string::basic_string[abi:ne200100]<0>(v34, ",");
  BambiServices::namesForServiceMask(v7, &v36);
  LoggableString::LoggableString(&__p, &v36);
  (*(*v6 + 40))(v6, &__p);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v8 = *(a1 + 27);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 26);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (TelephonyRadiosGetRadioVendor() == 1)
  {
    if (v10)
    {
      v11 = SipStack::prefs(v10);
      if (ImsPrefs::HonorSimAccessClassBeforeBarring(v11))
      {
        v12 = *(a2 + 8);
        v13 = a1[56];
        if (!v13)
        {
          v14 = (*(*a1 + 48))(a1);
          (*(*a1 + 16))(a1, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "SIM access class is zero, all barring indications will be honored", 65);
          *(v14 + 17) = 0;
          (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v14 + 17) = 0;
        }

        if (v13 >= 0x800 && ((v13 >> 11) & (__rbit32(v12) >> 27)) != v13 >> 11)
        {
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
          __p.__r_.__value_.__l.__size_ = &_bambiDomain;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741825;
          v15 = ImsResult::operator<<<char [52]>(&__p, "Barring indication not intended for our sim class (");
          v16 = ImsResult::operator<<<unsigned int>(v15, a1 + 56);
          v17 = ImsResult::operator<<<char [2]>(v16, ")");
          v18 = ImsLogContainer::logResult(a1, v17);
          ImsResult::ImsResult(a3, v18);
          ImsResult::~ImsResult(&__p);
          goto LABEL_44;
        }
      }
    }
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 32) = 0;
  if ((a2[8] & 1) == 0)
  {
    *a2 = 100;
    *(a2 + 1) = 0;
    *(a2 + 8) = 0;
    *(a2 + 3) = 1;
    *(a2 + 16) = 1;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741825;
    v19 = ImsResult::operator<<<char [15]>(&__p, "invalid factor");
    ImsResult::operator=(a3, v19);
    ImsResult::~ImsResult(&__p);
    v20 = (*(*a1 + 48))(a1);
    (*(*a1 + 16))(a1, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Received AccessBarring information is invalid, but letting it through", 69);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
  }

  v21 = (a1 + 38);
  v22 = *a2;
  if (v22 == *(a1 + 76) && *(a2 + 3) == a1[41] && *(a2 + 1) == a1[39])
  {
    if (*(a2 + 8) == *(a1 + 160))
    {
      v23 = (*(*a1 + 48))(a1);
      (*(*a1 + 16))(a1, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Barring ignored, no change in barring information", 49);
      *(v23 + 17) = 0;
      (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_43:
      *(v23 + 17) = 0;
      goto LABEL_44;
    }

    if (*(a1 + 184) != 1)
    {
LABEL_42:
      v23 = (*(*a1 + 48))(a1);
      (*(*a1 + 16))(a1, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Barring ignored, non-LTE RAT", 28);
      *(v23 + 17) = 0;
      (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      goto LABEL_43;
    }
  }

  else if ((a1[46] & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v21 != a2)
  {
    *(a1 + 76) = v22;
    a1[39] = *(a2 + 1);
    *(a1 + 160) = *(a2 + 8);
    a1[41] = *(a2 + 3);
    *(a1 + 168) = *(a2 + 16);
  }

  *(a1 + 228) = 0;
  v27 = 0;
  v28 = 0;
  IPTelephonyManager::getBambiClient(&v27);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  if (BambiClient::callCountExcludingCall(v27, &__p))
  {
    v24 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "not updating registration state due to barring factor change while in active call", 81);
    *(v24 + 17) = 0;
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    *(a1 + 228) = 1;
  }

  else
  {
    BambiAccessBarring::updateRegistrationForBarring(a1);
  }

  v25 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "updated voice barring factor: ", 30);
  *(v25 + 17) = 0;
  MEMORY[0x1E6923390](*(v25 + 8), *v21);
  *(v25 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", time: ", 8);
  *(v25 + 17) = 0;
  MEMORY[0x1E6923350](*(v25 + 8), a1[39]);
  *(v25 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", services : ", 13);
  *(v25 + 17) = 0;
  v26 = a1[41];
  std::string::basic_string[abi:ne200100]<0>(v34, ",");
  BambiServices::namesForServiceMask(v26, &v36);
  LoggableString::LoggableString(&__p, &v36);
  (*(*v25 + 40))(v25, &__p);
  (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  __p.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  ImsResult::operator=(a3, &__p);
  ImsResult::~ImsResult(&__p);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_44:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E504BC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ImsResult::~ImsResult(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ImsResult::~ImsResult(v31);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923350](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

uint64_t BambiAccessBarring::isServiceBarred(uint64_t **a1, int a2)
{
  v4 = a1[30];
  if (v4)
  {
    v5 = a1 + 29;
    v6 = (a1 + 30);
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = v4[*(v4 + 8) < a2];
    }

    while (v4);
    if (v6 != (a1 + 30) && *(v6 + 8) <= a2)
    {
      if (std::chrono::system_clock::now().__d_.__rep_ / 1000 <= v6[6] + *(v6 + 10))
      {
        v25 = ((*a1)[8])(a1);
        ((*a1)[2])(a1, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "UAC barring is in effect for service ", 37);
        *(v25 + 17) = 0;
        v26 = ims::Services::nameForService(a2);
        v27 = strlen(v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), v26, v27);
        *(v25 + 17) = 0;
        (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v25 + 17) = 0;
        return 1;
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(v5, v6);
      operator delete(v6);
    }
  }

  if ((*(a1 + 187) & 1) == 0)
  {
    v13 = ((*a1)[8])(a1);
    ((*a1)[2])(a1, v13);
    v14 = *(v13 + 8);
    v15 = "access barring is not enabled";
    v16 = 29;
LABEL_18:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v17 = 0;
    *(v13 + 17) = 0;
    return v17;
  }

  if ((*(a1 + 186) & 1) == 0)
  {
    v13 = ((*a1)[8])(a1);
    ((*a1)[2])(a1, v13);
    v14 = *(v13 + 8);
    v15 = "not listening for access barring";
    v16 = 32;
    goto LABEL_18;
  }

  memset(&v42, 0, sizeof(v42));
  v7 = ims::Services::nameForService(a2);
  std::string::basic_string[abi:ne200100]<0>(&v42, v7);
  if ((*(a1 + 41) & a2) == 0)
  {
    v28 = ((*a1)[8])(a1);
    ((*a1)[2])(a1, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "service ", 8);
    *(v28 + 17) = 0;
    LoggableString::LoggableString(&__p, &v42);
    (*(*v28 + 40))(v28, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " not barred", 11);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_26;
  }

  v8 = time(0);
  v9 = v8;
  if (a2 != 1 || v8 >= a1[22])
  {
    if (*(a1 + 39))
    {
      v19 = random() % 100;
      if (*(a1 + 76) <= v19)
      {
        v29 = ((random() + 1) % 100) / 100.0;
        HIDWORD(v30) = 1071854387;
        LODWORD(v30) = *(a1 + 39);
        v31 = ((v29 * 0.6 + 0.7) * v30);
        a1[22] = (v9 + v31);
        v32 = ((*a1)[4])(a1);
        ((*a1)[2])(a1, v32);
        v33 = ImsOutStream::operator<<(v32, "barring ");
        LoggableString::LoggableString(&__p, &v42);
        (*(*v33 + 40))(v33, &__p);
        v34 = ImsOutStream::operator<<(v33, " call (barringFactor = ");
        MEMORY[0x1E6923390](*(v34 + 8), *(a1 + 76));
        *(v34 + 17) = 0;
        v35 = ImsOutStream::operator<<(v34, ", rand3 = ");
        MEMORY[0x1E6923390](*(v35 + 8), v19);
        *(v35 + 17) = 0;
        v36 = ImsOutStream::operator<<(v35, ", rand4 = ");
        MEMORY[0x1E6923330](*(v36 + 8), v29);
        *(v36 + 17) = 0;
        v37 = ImsOutStream::operator<<(v36, ", Ty = ");
        MEMORY[0x1E6923350](*(v37 + 8), v31);
        *(v37 + 17) = 0;
        v38 = ImsOutStream::operator<<(v37, ")");
        (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v38[17] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v39 = ((*a1)[4])(a1);
        ((*a1)[2])(a1, v39);
        v11 = ImsOutStream::operator<<(v39, "access barring is in effect until ");
        ims::formatTimeAndIntervalFromNow(a1[22], v11, v40);
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        goto LABEL_33;
      }

      v20 = ((*a1)[8])(a1);
      ((*a1)[2])(a1, v20);
      v21 = ImsOutStream::operator<<(v20, "allowing ");
      LoggableString::LoggableString(&__p, &v42);
      (*(*v21 + 40))(v21, &__p);
      v22 = ImsOutStream::operator<<(v21, " call (barringFactor = ");
      MEMORY[0x1E6923390](*(v22 + 8), *(a1 + 76));
      *(v22 + 17) = 0;
      v23 = ImsOutStream::operator<<(v22, ", rand3 = ");
      MEMORY[0x1E6923390](*(v23 + 8), v19);
      *(v23 + 17) = 0;
      v24 = ImsOutStream::operator<<(v23, ")");
      (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v24[17] = 0;
LABEL_27:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v17 = 0;
      goto LABEL_34;
    }

    v28 = ((*a1)[8])(a1);
    ((*a1)[2])(a1, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "no ", 3);
    *(v28 + 17) = 0;
    LoggableString::LoggableString(&__p, &v42);
    (*(*v28 + 40))(v28, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " service access barring in effect", 33);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_26:
    *(v28 + 17) = 0;
    goto LABEL_27;
  }

  v10 = ((*a1)[4])(a1);
  ((*a1)[2])(a1, v10);
  v11 = ImsOutStream::operator<<(v10, "access barring is still in effect until ");
  ims::formatTimeAndIntervalFromNow(a1[22], v11, v12);
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_33:
  v11[17] = 0;
  v17 = 1;
LABEL_34:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_1E504C7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiAccessBarring::isVoiceRegistrationBarred(BambiAccessBarring *this)
{
  if (*(this + 187))
  {
    if (*(this + 186))
    {
      if (*(this + 184))
      {
        if (*(this + 164))
        {
          v6 = *(this + 76);
          v2 = (*(*this + 64))(this);
          (*(*this + 16))(this, v2);
          v3 = *(v2 + 8);
          if (!v6)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "isVoiceRegistrationBarred: zero barring factor for voice, service barred", 72);
            v7 = 1;
            goto LABEL_12;
          }

          v4 = "isVoiceRegistrationBarred: non-zero barring factor";
          v5 = 50;
        }

        else
        {
          v2 = (*(*this + 64))(this);
          (*(*this + 16))(this, v2);
          v3 = *(v2 + 8);
          v4 = "isVoiceRegistrationBarred: voice service not barred";
          v5 = 51;
        }
      }

      else
      {
        v2 = (*(*this + 64))(this);
        (*(*this + 16))(this, v2);
        v3 = *(v2 + 8);
        v4 = "isVoiceRegistrationBarred: not on LTE";
        v5 = 37;
      }
    }

    else
    {
      v2 = (*(*this + 64))(this);
      (*(*this + 16))(this, v2);
      v3 = *(v2 + 8);
      v4 = "isVoiceRegistrationBarred: not listening for access barring";
      v5 = 59;
    }
  }

  else
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    v3 = *(v2 + 8);
    v4 = "isVoiceRegistrationBarred: access barring is not enabled";
    v5 = 56;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  v7 = 0;
LABEL_12:
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return v7;
}

uint64_t BambiAccessBarring::clear(BambiAccessBarring *this)
{
  *(this + 76) = 100;
  *(this + 39) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 41) = 0;
  *(this + 22) = 0;
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "clearing access barring values", 30);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

uint64_t BambiAccessBarring::reset(BambiAccessBarring *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "resetting settings", 18);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  *(this + 46) = 0;

  return BambiAccessBarring::clear(this);
}

void BambiAccessBarring::checkFlags(BambiAccessBarring *this)
{
  if (*(this + 187) != 1)
  {
    goto LABEL_7;
  }

  if (BambiAccessBarring::alwaysListen(this))
  {
    v2 = this + 186;
    if (*(this + 186))
    {
      return;
    }

    *v2 = 1;
    goto LABEL_10;
  }

  if (*(this + 185) == 1)
  {
    v3 = *(this + 184);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  v2 = this + 186;
  v4 = v3 & 1;
  if (*(this + 186) == v4)
  {
    return;
  }

  *v2 = v4;
  if (!v4)
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "shouldn't listen for access barring changes", 43);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    BambiAccessBarring::clear(this);
    goto LABEL_12;
  }

LABEL_10:
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "should listen for access barring changes", 40);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
LABEL_12:
  v7 = *(this + 25);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(this + 24);
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

  v10 = *(this + 27);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      if (v9)
      {
        v13 = *(this + 26);
        if (v13)
        {
          memset(&v19, 0, sizeof(v19));
          v14 = SipStack::prefs(v13);
          std::string::basic_string[abi:ne200100]<0>(&__p, "AccessBarringType");
          ImsPrefs::enumAsString(v14, &__p.__r_.__value_.__l.__data_, &v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*v2 == 1)
          {
            v15 = *(v13 + 4372);
            if (*(v13 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v13 + 4432), *(v13 + 4440));
            }

            else
            {
              __p = *(v13 + 4432);
            }

            v16 = nas::barringTypeFromString(&v19);
            (*(*v9 + 16))(v9, &__p, v15, v16);
          }

          else
          {
            if (*(v13 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v13 + 4432), *(v13 + 4440));
            }

            else
            {
              __p = *(v13 + 4432);
            }

            v17 = nas::barringTypeFromString(&v19);
            (*(*v9 + 32))(v9, &__p, v17);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E504D09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void BambiAccessBarring::registrationStateChanged(BambiAccessBarring *this, int a2)
{
  if (*(this + 185) != a2)
  {
    *(this + 185) = a2;
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    if (a2)
    {
      v6 = "";
    }

    else
    {
      v6 = "not ";
    }

    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "registered", 10);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    BambiAccessBarring::checkFlags(this);
  }
}

void BambiAccessBarring::allCallsEnded(BambiAccessBarring *this)
{
  if (*(this + 228) == 1)
  {
    v3 = (*(*this + 64))(this);
    (*(*this + 16))(this, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "All calls have ended, update registration for deferred barring indication", 73);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    *(this + 228) = 0;

    BambiAccessBarring::updateRegistrationForBarring(this);
  }
}

void BambiAccessBarring::accessNetworkChanged(BambiAccessBarring *this, int a2)
{
  if (*(this + 184) != a2)
  {
    *(this + 184) = a2;
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    if (a2)
    {
      v6 = "";
    }

    else
    {
      v6 = "non-";
    }

    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "LTE access network", 18);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    BambiAccessBarring::checkFlags(this);
  }
}

void BambiAccessBarring::setEnabled(BambiAccessBarring *this, int a2)
{
  if (*(this + 187) != a2)
  {
    *(this + 187) = a2;
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "access barring is ", 18);
    *(v5 + 17) = 0;
    if (a2)
    {
      v6 = "";
    }

    else
    {
      v6 = "not ";
    }

    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "enabled", 7);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    BambiAccessBarring::checkFlags(this);
  }
}

uint64_t BambiAccessBarring::updateSimAccessClass(BambiAccessBarring *this, const unsigned int *a2)
{
  *(this + 56) = *a2;
  v3 = (*(*this + 64))(this);
  (*(*this + 16))(this, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Our sim class is ", 17);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(this + 56));
  *(v3 + 17) = 0;
  result = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  return result;
}

uint64_t *BambiAccessBarring::setUacBarring(uint64_t a1, int a2, int a3)
{
  v7 = a2;
  if (!a3)
  {
    return std::__tree<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::__map_value_compare<ims::Services::ServiceType,std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::less<ims::Services::ServiceType>,true>,std::allocator<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>>>::__erase_unique<ims::Services::ServiceType>(a1 + 232, &v7);
  }

  v5 = std::chrono::system_clock::now().__d_.__rep_ / 1000;
  v8 = &v7;
  result = std::__tree<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::__map_value_compare<ims::Services::ServiceType,std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::less<ims::Services::ServiceType>,true>,std::allocator<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>>>::__emplace_unique_key_args<ims::Services::ServiceType,std::piecewise_construct_t const&,std::tuple<ims::Services::ServiceType const&>,std::tuple<>>(a1 + 232, &v7);
  *(result + 10) = a3;
  *(result + 11) = 0;
  result[6] = v5;
  return result;
}

void *BambiAccessBarring::logPrefix(BambiAccessBarring *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "AccessBarring: ", 15);
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__tree<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::__map_value_compare<ims::Services::ServiceType,std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::less<ims::Services::ServiceType>,true>,std::allocator<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>>>::__erase_unique<ims::Services::ServiceType>(uint64_t a1, int *a2)
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
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::__map_value_compare<ims::Services::ServiceType,std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>,std::less<ims::Services::ServiceType>,true>,std::allocator<std::__value_type<ims::Services::ServiceType,BambiAccessBarring::UacBackoff>>>::__emplace_unique_key_args<ims::Services::ServiceType,std::piecewise_construct_t const&,std::tuple<ims::Services::ServiceType const&>,std::tuple<>>(uint64_t a1, int *a2)
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

char *ExtensionSerializer::init(ExtensionSerializer *this)
{
  v2 = *(this + 2);
  v6 = 0;
  std::vector<unsigned char>::insert(this + 1, v2, &v6);
  v3 = *(this + 2);
  v5 = 0;
  return std::vector<unsigned char>::insert(this + 1, v3, &v5);
}

char *std::vector<unsigned char>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v24 = a1;
    if (v13)
    {
      operator new();
    }

    v21 = 0;
    v22 = (__src - v10);
    v23 = (__src - v10);
    std::__split_buffer<unsigned char>::emplace_back<unsigned char>(&v21, a3);
    v14 = v22;
    memcpy(v23, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v22;
    *&v23 = v23 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1E504DA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExtensionSerializer::addTlv(unsigned __int16 *a1, unsigned int a2, _DWORD *a3)
{
  v27[0] = __rev16(a2);
  v27[1] = bswap32(a3[2] - *a3) >> 16;
  __p = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v27, &v28, 4);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>((a1 + 4), *(a1 + 2), __p, v25, v25 - __p);
  v6 = *a3;
  v5 = *(a3 + 1);
  v7 = &v5[-*a3];
  if (v7 >= 1)
  {
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    if (v8 - v9 >= v7)
    {
      if (v6 == v5)
      {
        v14 = *(a1 + 2);
      }

      else
      {
        v14 = &v9[v5] - v6;
        do
        {
          v15 = *v6++;
          *v9++ = v15;
        }

        while (v6 != v5);
      }

      *(a1 + 2) = v14;
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = &v9[v7 - v10];
      if (v11 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - v10;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v16 = &v9[-v10];
      v17 = &v9[v7 - v10];
      v18 = &v9[-v10];
      do
      {
        v19 = *v6++;
        *v18++ = v19;
        --v7;
      }

      while (v7);
      v20 = *(a1 + 2) - v9;
      memcpy(v17, v9, v20);
      v21 = &v17[v20];
      *(a1 + 2) = v9;
      v22 = *(a1 + 1);
      memcpy(&v16[v22 - v9], v22, v9 - v22);
      *(a1 + 1) = &v16[v22 - v9];
      *(a1 + 2) = v21;
      *(a1 + 3) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }
  }

  v23 = *a1 + 1;
  *a1 = v23;
  **(a1 + 1) = bswap32(v23) >> 16;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_1E504DD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ExtensionSerializer::serializeBase64@<X0>(ExtensionSerializer *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return base64UrlEncode(this + 1, a2, 0);
}

void sub_1E504DD70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ExtensionDeserializer::init(uint64_t a1, uint64_t a2)
{
  result = base64UrlDecode(a2, a1 + 8);
  *(a1 + 32) = result;
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if ((v4 - v5) >= 2)
    {
      *a1 = bswap32(*v5) >> 16;
      v6 = v4 - (v5 + 2);
      if (v4 != (v5 + 2))
      {
        result = memmove(v5, v5 + 2, v4 - (v5 + 2));
      }

      *(a1 + 16) = &v5[v6];
    }
  }

  return result;
}

BOOL ExtensionDeserializer::deserialize(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 1)
  {
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if (v4 >= 5)
  {
    while (1)
    {
      v6 = bswap32(*v3);
      v7 = HIWORD(v6);
      if ((HIWORD(v6) - 1) >= 3u)
      {
        ims::getStaticLoggerFor("ser", &v36);
        v29 = __p[0];
        ctu::OsLogContext::~OsLogContext(&v36);
        result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_37;
        }

        v36 = 33554688;
        LOWORD(v37) = v7;
        v30 = "#E Invalid TLV type 0x%hx";
        v31 = v29;
        v32 = 6;
        goto LABEL_35;
      }

      v8 = bswap32(v3[1]);
      v9 = HIWORD(v8);
      v10 = v9 + 4;
      if (v4 < v9 + 4)
      {
        break;
      }

      LOWORD(v36) = v7;
      __p[1] = 0;
      v39 = 0;
      __p[0] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, (v3 + 2), v3 + v9 + 4, HIWORD(v8));
      v12 = *(a2 + 8);
      v11 = *(a2 + 16);
      if (v12 >= v11)
      {
        v13 = *a2;
        v14 = (v12 - *a2) >> 5;
        v15 = v14 + 1;
        if ((v14 + 1) >> 59)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - v13;
        if (v16 >> 4 > v15)
        {
          v15 = v16 >> 4;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = (v12 - *a2) >> 5;
        v19 = 32 * v14;
        *v19 = v36;
        *(v19 + 8) = *__p;
        *(v19 + 24) = v39;
        __p[1] = 0;
        v39 = 0;
        __p[0] = 0;
        v20 = 32 * v14 - 32 * v18;
        if (v13 != v12)
        {
          v21 = v13;
          v22 = v20;
          do
          {
            *v22 = *v21;
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            *(v22 + 8) = 0;
            *(v22 + 8) = *(v21 + 1);
            *(v22 + 24) = v21[3];
            v21[1] = 0;
            v21[2] = 0;
            v21[3] = 0;
            v21 += 4;
            v22 += 32;
          }

          while (v21 != v12);
          do
          {
            v23 = v13[1];
            if (v23)
            {
              v13[2] = v23;
              operator delete(v23);
            }

            v13 += 4;
          }

          while (v13 != v12);
          v13 = *a2;
        }

        *a2 = v20;
        *(a2 + 8) = v19 + 32;
        *(a2 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }

        v24 = __p[0];
        *(a2 + 8) = v19 + 32;
        if (v24)
        {
          __p[1] = v24;
          operator delete(v24);
        }
      }

      else
      {
        *v12 = v36;
        v12[2] = 0;
        v12[3] = 0;
        v12[1] = 0;
        *(v12 + 1) = *__p;
        v12[3] = v39;
        *(a2 + 8) = v12 + 4;
      }

      v26 = *(a1 + 8);
      v25 = *(a1 + 16);
      v27 = v25 - (v9 + v26) - 4;
      if (v25 != v26 + v10)
      {
        memmove(*(a1 + 8), (v26 + v10), v27);
      }

      v3 = *(a1 + 8);
      *(a1 + 16) = v26 + v27;
      v4 = v26 + v27 - v3;
      if (v4 <= 4)
      {
        goto LABEL_30;
      }
    }

    ims::getStaticLoggerFor("ser", &v36);
    v33 = __p[0];
    ctu::OsLogContext::~OsLogContext(&v36);
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }

    v34 = (*(a1 + 16) - *(a1 + 8));
    v36 = 67109376;
    v37 = v9;
    LOWORD(__p[0]) = 2048;
    *(__p + 2) = v34;
    v30 = "#E Expected size %hu but only %zu remain";
    v31 = v33;
    v32 = 18;
LABEL_35:
    _os_log_error_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_ERROR, v30, &v36, v32);
    goto LABEL_36;
  }

LABEL_30:
  result = 1;
LABEL_37:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E504E23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<unsigned char>::emplace_back<unsigned char>(void *result, char *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if ((2 * &v4[-*result]) > 1)
      {
        v10 = 2 * &v4[-*result];
      }

      operator new();
    }

    v7 = (v6 + 1) / -2;
    v8 = &v5[-((v6 + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-((v6 + 1) / 2)], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v8[v9];
    v3[1] = &v5[v7];
    v3[2] = &v8[v9];
  }

  *v4 = *a2;
  ++v3[2];
  return result;
}

void std::__shared_ptr_emplace<ExtensionSerializer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEAED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ExtensionSerializer>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<ExtensionDeserializer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEAF20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ExtensionDeserializer>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void SDPMediaCrypto::value(SDPMediaCrypto *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 72))
  {
    memset(&v27, 0, sizeof(v27));
    if ((base64Encode(*(this + 6), *(this + 7) - *(this + 6), &v27) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(a2, "");
LABEL_35:
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return;
    }

    v26 = 0;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *__p = 0u;
    v23 = 0u;
    v20 = 0u;
    *__src = 0u;
    v18 = 0u;
    v19 = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
    v4 = MEMORY[0x1E6923390](&v18, *(this + 20));
    v28 = 32;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v28, 1);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "AES_CM_128_HMAC_SHA1_80", 23);
    v28 = 32;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v28, 1);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "inline", 6);
    v28 = 58;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v28, 1);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v27;
    }

    else
    {
      v10 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, size);
    if ((*(this + 73) & 1) == 0)
    {
      v28 = 32;
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v28, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "UNENCRYPTED_SRTP", 16);
    }

    if ((*(this + 74) & 1) == 0)
    {
      v28 = 32;
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v28, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "UNENCRYPTED_SRTCP", 17);
    }

    if ((*(this + 75) & 1) == 0)
    {
      v28 = 32;
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v28, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "UNAUTHENTICATED_SRTP", 20);
    }

    if ((BYTE8(v24) & 0x10) != 0)
    {
      v16 = v24;
      if (v24 < __src[1])
      {
        *&v24 = __src[1];
        v16 = __src[1];
      }

      v17 = __src[0];
    }

    else
    {
      if ((BYTE8(v24) & 8) == 0)
      {
        v15 = 0;
        a2[23] = 0;
LABEL_32:
        a2[v15] = 0;
        *&v18 = *MEMORY[0x1E69E54E8];
        *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        *(&v18 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[1]);
        }

        *(&v18 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v19);
        std::ostream::~ostream();
        MEMORY[0x1E6923510](v25);
        goto LABEL_35;
      }

      v17 = *(&v19 + 1);
      v16 = *(&v20 + 1);
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

    goto LABEL_32;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_1E504E84C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaCrypto::valid(SDPMediaCrypto *this)
{
  if (*(this + 8) == 1)
  {
    v1 = *(this + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void SipConnectionUser::SipConnectionUser(SipConnectionUser *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  ImsUuid::generate(&v4);
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), __p[0], __p[1]);
    v4 = &unk_1F5EBEE78;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 8) = *__p;
    *(this + 3) = v6;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
}

void sub_1E504EA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipConnectionUser::setTransport(uint64_t a1, void *a2, int a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *a2;
  if (v8 != *a2)
  {
    v10 = a2[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 40);
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (a3)
    {
      v12 = *a2;
      if (*a2)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v34, (a1 + *(*a1 - 24) + 8));
        v13 = (*(*v12 + 56))(v12, &v34);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v13)
        {
          v14 = std::string::basic_string[abi:ne200100]<0>(&v33, "sip.txn");
          v29[0] = 0;
          v32 = 0;
          v15 = ims::debug(v14, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "added connection user to ", 25);
          *(v15 + 17) = 0;
          (*(**a2 + 80))(*a2, v15);
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v32 == 1 && v31 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v16 = std::string::basic_string[abi:ne200100]<0>(&v33, "sip.txn");
          v25[0] = 0;
          v28 = 0;
          v17 = ims::debug(v16, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Failed to add connection user to ", 33);
          *(v17 + 17) = 0;
          (*(**a2 + 80))(*a2, v17);
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v17 + 17) = 0;
          if (v28 == 1 && v27 < 0)
          {
            operator delete(v26);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          v18 = *(a1 + 40);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          if (v18)
          {
            std::__shared_weak_count::__release_weak(v18);
          }
        }
      }

      if (v8)
      {
        v19 = std::string::basic_string[abi:ne200100]<0>(&v33, "sip.txn");
        v21[0] = 0;
        v24 = 0;
        v20 = ims::debug(v19, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "removing connection user from ", 30);
        *(v20 + 17) = 0;
        (*(*v8 + 80))(v8, v20);
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(v22);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, *(a1 + 8), *(a1 + 16));
        }

        else
        {
          v33 = *(a1 + 8);
        }

        (*(*v8 + 64))(v8, &v33);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E504EE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(exception_object);
}

void SipConnectionUser::~SipConnectionUser(SipConnectionUser *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  v4 = *(this + 5);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 4);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        (*(*this + 48))(this, &v8, 1);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }

    v7 = *(this + 5);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t SipTransaction::SipTransaction(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, const std::string *a5)
{
  *a1 = &unk_1F5EEB220;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  SipConnectionUser::SipConnectionUser((a1 + 72), a2 + 1);
  *(a1 + 120) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.txn");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v25, (*a3 + 232));
  ImsLogContainer::ImsLogContainer(a1 + 128, &__str, v25);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v10 = *a2;
  *a1 = *a2;
  *(a1 + 72) = a2[3];
  *(a1 + *(v10 - 24)) = a2[4];
  *(a1 + 120) = &unk_1F5EEB0C0;
  *(a1 + 128) = &unk_1F5EEB0F0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = &unk_1F5EBEF50;
  *(a1 + 368) = a1 + 376;
  *(a1 + 392) = 256;
  SipTimerContainer::SipTimerContainer((a1 + 400));
  std::string::operator=((a1 + 312), a5);
  (*(**a4 + 32))(&__str);
  v11 = *&__str.__r_.__value_.__l.__data_;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  v12 = *(a1 + 288);
  *(a1 + 280) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (__str.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
    }
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 304);
  *(a1 + 296) = v14;
  *(a1 + 304) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(a1 + 344);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(a1 + 352) = 1;
  *(a1 + 528) = a1 + 120;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.txn");
  v17 = *a3;
  std::string::operator=((a1 + 448), &__str);
  v18 = *(v17 + 232);
  *(a1 + 480) = *(v17 + 240);
  *(a1 + 472) = v18;
  std::string::operator=((a1 + 488), (v17 + 248));
  *(a1 + 512) = *(v17 + 272);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v19 = *(*a3 + 16);
  if (v19)
  {
    v20 = *(*a3 + 8);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21 = std::__shared_weak_count::lock(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v21)
    {
      if (v20)
      {
        v22 = *(v20 + 248);
        v23 = *(v20 + 256);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v22)
        {
          *(a1 + 560) = SipUserAgent::config(v22) + 512;
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  return a1;
}

void sub_1E504F3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  SipTimerContainer::~SipTimerContainer((v25 + 400));
  *(v25 + 360) = v29;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25 + 368, *(v25 + 376));
  v31 = *(v25 + 344);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (*(v25 + 335) < 0)
  {
    operator delete(*(v25 + 312));
  }

  v32 = *(v25 + 304);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(v25 + 288);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v25 + 272);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  ImsLogContainer::~ImsLogContainer(v28);
  SipConnectionUser::~SipConnectionUser(v27, (v26 + 8));
  SipTypedStateMachine<SipTransactionState>::~SipTypedStateMachine(v25);
  _Unwind_Resume(a1);
}

uint64_t SipTypedStateMachine<SipTransactionState>::~SipTypedStateMachine(uint64_t a1)
{
  *a1 = &unk_1F5EEB220;
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
    *(a1 + 32) = 0;
    v2 = *(a1 + 24);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(a1 + 16) + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void SipTransaction::~SipTransaction(SipTransaction *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  v5 = (this + 72);
  *(this + 9) = a2[3];
  *(this + *(v4 - 24)) = a2[4];
  *(this + 15) = &unk_1F5EEB0C0;
  v6 = this + 128;
  *(this + 16) = &unk_1F5EEB0F0;
  if (*(this + 33))
  {
    v7 = ImsLogContainer::debugStream((this + 128));
    (*(*v6 + 16))(this + 128, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "~SipTransaction: ", 17);
    *(v7 + 17) = 0;
    v8 = (*(**(this + 33) + 120))(*(this + 33));
    LoggableString::LoggableString(&v18, v8);
    (*(*v7 + 40))(v7, &v18);
    v9 = *(v7 + 8);
    LOBYTE(v14[0]) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, 1);
    *(v7 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v14, this + 13);
    (*(*v7 + 56))(v7, v14);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  SipTimerContainer::~SipTimerContainer((this + 400));
  *(this + 45) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 368, *(this + 47));
  v10 = *(this + 43);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v11 = *(this + 38);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 34);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *(this + 16) = &unk_1F5ED7318;
  if (*(this + 208) == 1 && *(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  SipConnectionUser::~SipConnectionUser(v5, a2 + 1);
  SipTypedStateMachine<SipTransactionState>::~SipTypedStateMachine(this);
}

void SipTransaction::logPrefix(SipTransaction *this, ImsOutStream *a2)
{
  (*(*(this + 15) + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E504F9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransaction::retryEnabled(SipTransaction *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 13);
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

  v5 = (*(*(this + 16) + 64))(this + 128);
  (*(*(this + 16) + 16))(this + 128, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " _retryEnabled: ", 16);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923320](*(v5 + 8), *(this + 352));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " transport->isReliable: ", 24);
  *(v5 + 17) = 0;
  if (v4)
  {
    if ((*(*v4 + 48))(v4))
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }
  }

  else
  {
    v6 = "no transport";
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v8 = *(this + 352);
  if (v4 && (v8 & 1) != 0)
  {
    v8 = (*(*v4 + 48))(v4) ^ 1;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v8 & 1;
}

void sub_1E504FBEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransaction::transitionToState(SipTransaction *this, uint64_t a2)
{
  v4 = this + 128;
  v5 = (*(*(this + 16) + 64))(this + 128);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "transitioning to state [", 24);
  *(v5 + 17) = 0;
  v6 = (*(*this + 16))(this, a2);
  LoggableString::LoggableString(&__p, v6);
  (*(*v5 + 40))(v5, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return SipTypedStateMachine<SipTransactionState>::transitionToState(this, a2);
}

void sub_1E504FD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTypedStateMachine<SipTransactionState>::transitionToState(void *a1, uint64_t a2)
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

void sub_1E5050100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

void SipTransaction::handleStateTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**a3 + 48))() == 4)
  {
    *&v23.__r_.__value_.__l.__data_ = 0uLL;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v22, (a1 + *(*a1 - 24) + 8));
    std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(&v22, &v23);
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }

    v5 = *(a1 + 336);
    if (v5 && v23.__r_.__value_.__r.__words[0])
    {
      v18 = *&v23.__r_.__value_.__l.__data_;
      if (v23.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v23.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 40))(v5, &v18);
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }
    }

    size = v23.__r_.__value_.__l.__size_;
    if (!v23.__r_.__value_.__l.__size_)
    {
      return;
    }

LABEL_48:
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
    return;
  }

  if ((*(**a3 + 48))() == 7)
  {
    v7 = (*(*(a1 + 128) + 64))(a1 + 128);
    (*(*(a1 + 128) + 16))(a1 + 128, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "SipTransaction::transactionTerminated", 37);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    SipTimerContainer::cancelAllTimers((a1 + 400));
    v26 = 0;
    v27 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v23, (a1 + *(*a1 - 24) + 8));
    std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(&v23, &v26);
    if (v23.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23.__r_.__value_.__l.__size_);
    }

    v8 = *(a1 + 336);
    if (v8 && v26)
    {
      v24 = v26;
      v25 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 48))(v8, &v24);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v9 = *(a1 + 344);
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    memset(&v23, 0, sizeof(v23));
    v10 = (*(**(a1 + 264) + 120))(*(a1 + 264));
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *v10, *(v10 + 8));
    }

    else
    {
      v11 = *v10;
      v23.__r_.__value_.__r.__words[2] = *(v10 + 16);
      *&v23.__r_.__value_.__l.__data_ = v11;
    }

    memset(&v22, 0, sizeof(v22));
    if (*(a1 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 312), *(a1 + 320));
    }

    else
    {
      v22 = *(a1 + 312);
    }

    memset(&v21, 0, sizeof(v21));
    v12 = SipMessage::header<SipCallIdHeader>(*(a1 + 264));
    v13 = (v12 + 64);
    if (!v12)
    {
      v13 = &ims::kEmptyString;
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *v13, *(v13 + 1));
    }

    else
    {
      v21 = *v13;
    }

    v19 = 0;
    v20 = 0;
    (*(*(a1 + 72) + 48))(a1 + 72, &v19, 1);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v14 = *(a1 + 304);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 296);
        if (v17)
        {
          SipTransactionLayer::transactionTerminated(v17, &v22, &v23);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    size = v27;
    if (v27)
    {
      goto LABEL_48;
    }
  }
}

void sub_1E5050574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
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

  v35 = *(v33 - 40);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTransaction::abort(SipTransaction *this)
{
  v2 = this + 128;
  v3 = (*(*(this + 16) + 64))(this + 128);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "aborting transaction", 20);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = *(*this + 32);

  return v4(this, 4);
}

char *SipTransaction::nameForStateId(SipTransaction *this, unsigned int a2)
{
  if (a2 <= 8)
  {
    return &stateNames[24 * a2];
  }

  else
  {
    return "Invalid";
  }
}

uint64_t SipTransaction::timerValue(uint64_t a1, const SipTimer *a2)
{
  SipTransaction::stack(&v13, a1);
  v4 = *(v13 + 248);
  v5 = *(v13 + 256);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    SipTransaction::stack(&v11, a1);
    v6 = *(v11 + 248);
    v7 = *(v11 + 256);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = SipUserAgent::config(v6);
    v9 = SipTimers::timerValue((v8 + 512), a2, 0);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v9;
}

void sub_1E5050828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipTransaction::stack(SipTransaction *this, uint64_t a2)
{
  v3 = *(a2 + 304);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a2 + 296);
    if (v7 && (v8 = *(v7 + 16)) != 0)
    {
      v9 = *(v7 + 8);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *this = 0;
      v10 = std::__shared_weak_count::lock(v8);
      *(this + 1) = v10;
      if (v10)
      {
        *this = v9;
      }

      std::__shared_weak_count::__release_weak(v8);
    }

    else
    {
      *this = 0;
      *(this + 1) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

void SipTransaction::handleError(SipTransaction *this, const ImsResult *a2)
{
  v4 = (*(*this + 136))(this);
  v6 = this + 128;
  v5 = *(this + 16);
  if (v4)
  {
    v7 = (*(v5 + 64))(this + 128);
    (*(*v6 + 16))(v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "already completed.  Ignoring error ", 35);
    *(v7 + 17) = 0;
    (*(*a2 + 16))(a2, v7);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

  else
  {
    v8 = (*(v5 + 56))(this + 128);
    (*(*(this + 16) + 16))(this + 128, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "terminating due to error: ", 26);
    *(v8 + 17) = 0;
    (*(*a2 + 16))(a2, v8);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    v14 = 0;
    v15 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (this + *(*this - 24) + 8));
    std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(&v12, &v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v9 = *(this + 42);
    if (v9 && v14)
    {
      v10 = v14;
      v11 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 32))(v9, a2, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    (*(*this + 32))(this, 7);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E5050C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipTransaction::handleTimeout(SipTransaction *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 13);
      if (v4)
      {
        (*(*v4 + 72))(v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  SipTransaction::reportTimeoutToIRat(this);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5[0] = &unk_1F5EBDEF8;
  v5[1] = &SipResultDomain::_domain;
  v6 = 408;
  (*(*this + 104))(this, v5);
  ImsResult::~ImsResult(v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E5050D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void SipTransaction::reportTimeoutToIRat(SipTransaction *this)
{
  v63 = 0;
  v64 = 0;
  v65 = 0;
  SipTransaction::stack(this, &v60);
  LOBYTE(v63) = ims::AccessNetwork::isWifi((v60.__r_.__value_.__r.__words[0] + 3432));
  if (v60.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60.__r_.__value_.__l.__size_);
  }

  SipTransaction::stack(this, &v60);
  v64 = *(v60.__r_.__value_.__r.__words[0] + 4372);
  if (v60.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60.__r_.__value_.__l.__size_);
  }

  LODWORD(v65) = 0;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = (*(*v2 + 120))(v2);
    v4 = *(v3 + 23);
    v5 = v4;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v3 + 8);
    }

    if (v4 != 8 || (v5 >= 0 ? (v6 = v3) : (v6 = *v3), *v6 != *"REGISTER"))
    {
      v7 = (*(**(this + 33) + 120))(*(this + 33));
      v8 = *(v7 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 8);
      }

      if (v8 == 7 && (v9 >= 0 ? (v10 = v7) : (v10 = *v7), (v11 = *v10, v12 = *(v10 + 3), v11 == *"MESSAGE") ? (v13 = v12 == *"SAGE") : (v13 = 0), v13))
      {
        v51 = 3;
      }

      else
      {
        v14 = (*(**(this + 33) + 120))(*(this + 33));
        v15 = *(v14 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v14 + 8);
        }

        if (v15 == 6)
        {
          v17 = v16 >= 0 ? v14 : *v14;
          v18 = *v17;
          v19 = *(v17 + 4);
          if (v18 == *"INVITE" && v19 == *"TE")
          {
            goto LABEL_75;
          }
        }

        v21 = (*(**(this + 33) + 120))(*(this + 33));
        v22 = *(v21 + 23);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(v21 + 8);
        }

        if (v22 == 5)
        {
          v24 = v23 >= 0 ? v21 : *v21;
          v25 = *v24;
          v26 = *(v24 + 4);
          if (v25 == *"PRACK" && v26 == SipRequest::kMethodPrack[4])
          {
            goto LABEL_75;
          }
        }

        v28 = (*(**(this + 33) + 120))(*(this + 33));
        v29 = *(v28 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v28 + 8);
        }

        if (v29 == 3 && (v30 >= 0 ? (v31 = v28) : (v31 = *v28), (v32 = *v31, v33 = *(v31 + 2), v32 == SipRequest::kMethodAck) ? (v34 = v33 == BYTE2(SipRequest::kMethodAck)) : (v34 = 0), v34))
        {
LABEL_75:
          v51 = 4;
        }

        else
        {
          v35 = (*(**(this + 33) + 120))(*(this + 33));
          v36 = *(v35 + 23);
          v37 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v36 = *(v35 + 8);
          }

          if (v36 == 6 && (v37 >= 0 ? (v38 = v35) : (v38 = *v35), (v39 = *v38, v40 = *(v38 + 4), v39 == *"CANCEL") ? (v41 = v40 == *"EL") : (v41 = 0), v41))
          {
            v51 = 5;
          }

          else
          {
            v42 = (*(**(this + 33) + 120))(*(this + 33));
            v43 = *(v42 + 23);
            v44 = v43;
            if ((v43 & 0x80u) != 0)
            {
              v43 = *(v42 + 8);
            }

            if (v43 == 3)
            {
              if (v44 >= 0)
              {
                v45 = v42;
              }

              else
              {
                v45 = *v42;
              }

              v46 = bswap32(*v45 | (*(v45 + 2) << 16));
              v47 = bswap32(SipRequest::kMethodBye | (BYTE2(SipRequest::kMethodBye) << 16));
              v48 = v46 >= v47;
              v49 = v46 > v47;
              v50 = !v48;
              if (v49 == v50)
              {
                v51 = 5;
              }

              else
              {
                v51 = 6;
              }
            }

            else
            {
              v51 = 6;
            }
          }
        }
      }

LABEL_91:
      LODWORD(v65) = v51;
      goto LABEL_92;
    }

    SipTransaction::stack(this, &v60);
    v52 = *(v60.__r_.__value_.__r.__words[0] + 248);
    v53 = *(v60.__r_.__value_.__r.__words[0] + 256);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v55 = *(v52 + 336);
    v54 = *(v52 + 344);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v56 = *(v55 + 716);
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      if (!v53)
      {
LABEL_81:
        if (v60.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60.__r_.__value_.__l.__size_);
        }

        if (v56 == 3)
        {
          v51 = 2;
        }

        else
        {
          v51 = 1;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v56 = *(v55 + 716);
      if (!v53)
      {
        goto LABEL_81;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    goto LABEL_81;
  }

LABEL_92:
  IPTelephonyManager::getBambiClient(&v61);
  v57 = v61;
  SipTransaction::stack(this, &v58);
  if (*(v58 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *(v58 + 4432), *(v58 + 4440));
  }

  else
  {
    v60 = *(v58 + 4432);
  }

  BambiClient::reportIRatTimeout(v57, &v60, &v63);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }
}

void sub_1E5051230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void SipTransaction::stack(SipTransaction *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 38);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 37);
    if (v7 && (v8 = *(v7 + 16)) != 0)
    {
      v9 = *(v7 + 8);
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

uint64_t SipTransaction::transactionMapKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v26 = 0u;
  *__src = 0u;
  *__p = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v7, v8);
  LOBYTE(__dst) = 45;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &__dst, 1);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  if ((BYTE8(v26) & 0x10) != 0)
  {
    v15 = v26;
    if (v26 < __src[1])
    {
      *&v26 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
  }

  else
  {
    if ((BYTE8(v26) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v19) = 0;
      goto LABEL_26;
    }

    v16 = *(&v21 + 1);
    v15 = *(&v22 + 1);
  }

  v14 = v15 - v16;
  if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = v15 - v16;
  if (v14)
  {
    memmove(&__dst, v16, v14);
  }

LABEL_26:
  *(&__dst + v14) = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = __dst;
  *(a3 + 16) = v19;
  *&v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v20 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v20 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v21);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v27);
}

void sub_1E5051640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a27);
  _Unwind_Resume(a1);
}

uint64_t SipTransaction::messageEncoding(SipTransaction *this)
{
  v2 = *(this + 38);
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
  v5 = *(this + 37);
  if (v5)
  {
    v6 = SipTransactionLayer::messageEncoding(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t SipSessionInterface::SipSessionInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v24, a3);
  ImsLogContainer::ImsLogContainer(a1, a2, v24);
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  v6 = a1 + 136;
  *(a1 + 136) = &unk_1F5EBEEC0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  v19 = *a3;
  v20 = *(a3 + 8);
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v21 = *(a3 + 16);
  }

  v22 = *(a3 + 40);
  ims::getQueue(&v31);
  ClientConfig::getLogTag(&v19, &v28);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v9 = std::string::insert(&v28, 0, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v30 = v9->__r_.__value_.__r.__words[2];
  v29 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v11 = &v29;
  }

  else
  {
    v11 = v29;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = v31;
  *(a1 + 168) = v31;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 144) = &unk_1F5EEB488;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F5EEB278;
  *(a1 + 136) = &unk_1F5EEB398;
  *(a1 + 144) = &unk_1F5EEB3C8;
  v13 = *a3;
  *(a1 + 200) = *(a3 + 8);
  *(a1 + 192) = v13;
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v14 = *(a3 + 16);
    *(a1 + 224) = *(a3 + 32);
    *(a1 + 208) = v14;
  }

  *(a1 + 232) = *(a3 + 40);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 264));
  SipTimerContainer::SipTimerContainer((a1 + 432));
  *(a1 + 600) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 608) = a1 + 616;
  *(a1 + 632) = a1 + 640;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  v15 = *(a1 + 248);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *(a1 + 256) = 1;
  *(a1 + 392) = v6;
  std::string::operator=((a1 + 312), a2);
  v16 = *a3;
  *(a1 + 344) = *(a3 + 8);
  *(a1 + 336) = v16;
  std::string::operator=((a1 + 352), (a3 + 16));
  *(a1 + 376) = *(a3 + 40);
  *(a1 + 560) = v6;
  std::string::operator=((a1 + 480), a2);
  v17 = *a3;
  *(a1 + 512) = *(a3 + 8);
  *(a1 + 504) = v17;
  std::string::operator=((a1 + 520), (a3 + 16));
  *(a1 + 544) = *(a3 + 40);
  return a1;
}

void sub_1E5051A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  MEMORY[0x1E69225A0](v34 + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v34 + 152));
  ImsLogContainer::~ImsLogContainer(v34);
  _Unwind_Resume(a1);
}

void SipSessionInterface::~SipSessionInterface(SipSessionInterface *this)
{
  *this = &unk_1F5EEB278;
  *(this + 17) = &unk_1F5EEB398;
  *(this + 18) = &unk_1F5EEB3C8;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "sip.session");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "SipSessionInterface::~SipSessionInterface()", 43);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  SipDialog::detachSession(*(this + 30));
  v4 = *(this + 83);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(*(this + 80));
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 77));
  SipTimerContainer::~SipTimerContainer((this + 432));
  SipTimerContainer::~SipTimerContainer((this + 264));
  v5 = *(this + 31);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
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

void SipSessionInterface::initialize(uint64_t a1, uint64_t *a2)
{
  IPTelephonyManager::getBambiClient(&v15);
  v4 = v15;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (a1 + 152));
  BambiClient::trackSipSession(v4, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v6;
  *(a1 + 248) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v6 = *(a1 + 240);
  }

  *(a1 + 600) = 1;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, (a1 + 152));
  v9 = v11;
  v8 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(v6 + 2744) = v9;
  v10 = *(v6 + 2752);
  *(v6 + 2752) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    v8 = v12;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E5051E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::checkTerminated(SipSessionInterface *this)
{
  if ((*(this + 601) & 1) == 0)
  {
    v2 = *(this + 78);
    v3 = *(this + 81);
    v4 = *(this + 600);
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    v6 = *(v5 + 8);
    if ((v4 & 1) == 0 && (!v2 ? (v7 = v3 == 0) : (v7 = 0), v7))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "This session is done, removing references...", 44);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      *(this + 601) = 1;
      IPTelephonyManager::getBambiClient(&v11);
      v8 = v11;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 19);
      BambiClient::untrackSipSession(v8, &v9);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not terminating session. (_initialized: ", 40);
      *(v5 + 17) = 0;
      MEMORY[0x1E6923320](*(v5 + 8), *(this + 600));
      *(v5 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ", AckRetrans: ", 14);
      *(v5 + 17) = 0;
      MEMORY[0x1E6923320](*(v5 + 8), v2 != 0);
      *(v5 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ", AckRecv: ", 11);
      *(v5 + 17) = 0;
      MEMORY[0x1E6923320](*(v5 + 8), v3 != 0);
      *(v5 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
    }
  }
}

void sub_1E505208C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::removeAllAckHandlers(SipSessionInterface *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "removing all ACK handlers", 25);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v3 = *(this + 76);
  v4 = this + 616;
  if (v3 != (this + 616))
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v40, v3 + 2);
      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
    v8 = v40;
    if (v41 != v40)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 608, (v8 + v9));
        if (v4 != v11)
        {
          v12 = *(v11 + 56);
          v13 = *(v11 + 64);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12)
          {
            v14 = (*(*this + 64))(this);
            (*(*this + 16))(this, v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "forcing ", 8);
            *(v14 + 17) = 0;
            (*(*(v12 + 184) + 16))(v12 + 184, v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " to terminate its transaction", 29);
            *(v14 + 17) = 0;
            (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v14 + 17) = 0;
            *(v12 + 408) = 1;
            v15 = *(v12 + 208);
            if (v15)
            {
              (*(*v15 + 32))(v15, 7);
            }
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }

        ++v10;
        v8 = v40;
        v9 += 24;
      }

      while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
    }
  }

  __src = 0;
  v38 = 0;
  v39 = 0;
  v16 = *(this + 79);
  if (v16 != (this + 640))
  {
    v17 = 0;
    do
    {
      if (v17 >= v39)
      {
        v18 = __src;
        v19 = v17 - __src;
        v20 = (v17 - __src) >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v22 = v39 - __src;
        if ((v39 - __src) >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(&__src, v23);
        }

        v24 = (v17 - __src) >> 2;
        v25 = (4 * v20);
        v26 = (4 * v20 - 4 * v24);
        *v25 = *(v16 + 8);
        v17 = (v25 + 1);
        memcpy(v26, v18, v19);
        v27 = __src;
        __src = v26;
        v38 = v17;
        v39 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v17 = *(v16 + 8);
        v17 += 4;
      }

      v38 = v17;
      v28 = *(v16 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v16 + 2);
          v7 = *v29 == v16;
          v16 = v29;
        }

        while (!v7);
      }

      v16 = v29;
    }

    while (v29 != (this + 640));
    v30 = __src;
    if (v17 != __src)
    {
      v31 = 0;
      do
      {
        v35 = 0;
        v36 = 0;
        SipSessionInterface::ackReceiveHandlerForCseq(&v35, this, *&v30[4 * v31]);
        v32 = v35;
        if (v35)
        {
          v33 = (*(*this + 64))(this);
          (*(*this + 16))(this, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "forcing ", 8);
          *(v33 + 17) = 0;
          (*(*v32 + 16))(v32, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " to terminate its transaction", 29);
          *(v33 + 17) = 0;
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v33 + 17) = 0;
          v34 = v32[26];
          if (v34)
          {
            (*(*v34 + 32))(v34, 7);
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        ++v31;
        v30 = __src;
      }

      while (v31 < (v38 - __src) >> 2);
    }

    if (v30)
    {
      v38 = v30;
      operator delete(v30);
    }
  }

  __src = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
}

void sub_1E5052628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *SipSessionInterface::ackReceiveHandlerForCseq(void *this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 640);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a2 + 640;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != a2 + 640 && *(v4 + 32) <= a3)
  {
    v9 = *(v4 + 40);
    v8 = *(v4 + 48);
    *this = v9;
    this[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *this = 0;
    this[1] = 0;
  }

  return this;
}

uint64_t SipSessionInterface::addAckRetransmitHandlerForClientTransaction(void *a1, char ***a2, uint64_t a3, int a4)
{
  v6 = *a2;
  if (*a2)
  {
    v8 = **v6;
    if (v9)
    {
      v10 = v9;
      v11 = a2[1];
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      }

      v12 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "adding ACK retransmit handler for transaction ", 46);
      *(v12 + 17) = 0;
      (*(v10[15] + 16))(v10 + 15, v12);
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      if (a4)
      {
        (*(*a1 + 128))(&v17, a1);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }
      }

      v16[0] = 0;
      v16[1] = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, a1 + 19);
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      }

      SipAckRetransmitHandler::create(v16);
    }
  }

  v13 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "can't add ACK retransmit handler for non-invite transaction ", 60);
  *(v13 + 17) = 0;
  (*((*a2)[15] + 2))(*a2 + 15, v13);
  result = (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  return result;
}

void sub_1E5052BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void SipSessionInterface::removeAckRetransmitHandler(uint64_t **a1, std::string *a2)
{
  v4 = a1 + 76;
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 76), &a2->__r_.__value_.__l.__data_);
  if (a1 + 77 != v5)
  {
    v6 = v5;
    v7 = ((*a1)[8])(a1);
    ((*a1)[2])(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "removing ACK retransmit handler for transaction ", 48);
    *(v7 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v14, a2);
    (*(*v7 + 56))(v7, v14);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v9 = v6[7];
    v8 = v6[8];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
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
      v12 = v6;
      do
      {
        v11 = v12[2];
        v13 = *v11 == v12;
        v12 = v11;
      }

      while (!v13);
    }

    if (*v4 == v6)
    {
      *v4 = v11;
    }

    a1[78] = (a1[78] - 1);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(a1[77], v6);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v6 + 4));
    operator delete(v6);
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    (*(*v9 + 72))(v14, v9);
    ((*a1)[13])(a1);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E5052EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::addAckReceiveHandlerForServerTransaction(void *a1, uint64_t a2)
{
  v4 = *(*a2 + 264);
  v5 = *(*a2 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = SipMessage::header<SipCSeqHeader>(v4);
  if (v6)
  {
    v7 = v6[15];
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
LABEL_6:
      v8 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "adding ACK receive handler for transaction ", 43);
      *(v8 + 17) = 0;
      (*(*(*a2 + 120) + 16))(*a2 + 120, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " with cseq ", 11);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923350](*(v8 + 8), v7);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, a1 + 19);
      operator new();
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  goto LABEL_6;
}

void sub_1E5053264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (!v12)
    {
LABEL_3:
      if (!v13)
      {
LABEL_5:
        std::__shared_weak_count::~__shared_weak_count(v10);
        operator delete(v15);
        if (a10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](a10);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_5;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void SipSessionInterface::removeAckReceiveHandler(SipSessionInterface *this, uint64_t a2)
{
  v2 = *(this + 80);
  if (v2)
  {
    v5 = this + 640;
    do
    {
      v6 = *(v2 + 8);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *&v2[8 * v8];
    }

    while (v2);
    if (v5 != this + 640 && *(v5 + 8) <= a2)
    {
      v9 = (*(*this + 64))(this);
      (*(*this + 16))(this, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "removing ACK receive handler for cseq ", 38);
      *(v9 + 17) = 0;
      MEMORY[0x1E6923350](*(v9 + 8), a2);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      v11 = *(v5 + 5);
      v10 = *(v5 + 6);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(v5 + 1);
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
        v14 = v5;
        do
        {
          v13 = *(v14 + 2);
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (*(this + 79) == v5)
      {
        *(this + 79) = v13;
      }

      --*(this + 81);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 80), v5);
      v16 = *(v5 + 6);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      operator delete(v5);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      (*(*v11 + 24))(__p, v11);
      (*(*this + 104))(this);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }
}