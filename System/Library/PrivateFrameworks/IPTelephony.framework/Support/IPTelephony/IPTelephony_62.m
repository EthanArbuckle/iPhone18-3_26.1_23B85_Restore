void sub_1E50C9124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 81) < 0)
  {
    operator delete(*(v16 - 104));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaFormatEVSParams::updateConfigName(uint64_t this)
{
  v1 = *(this + 84);
  if (v1 == 3)
  {
    v3 = *(this + 56);
    if ((v3 & 0x2000) != 0)
    {
      v2 = 1;
      goto LABEL_12;
    }

    if ((~v3 & 0x9000) == 0)
    {
      v2 = 4;
      goto LABEL_12;
    }

LABEL_10:
    v2 = 255;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  if ((~*(this + 56) & 0x2200) != 0)
  {
    if ((~*(this + 56) & 0x8200) == 0)
    {
      v2 = 3;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v2 = 0;
LABEL_12:
  *(this + 114) = v2;
  return this;
}

void SDPMediaFormatAMRParams::~SDPMediaFormatAMRParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaFormatAMRParams::printable(SDPMediaFormatAMRParams *this)
{
  if (*(this + 63) != 1 || (*(this + 44) & 1) != 0 || (*(this + 43) & 1) != 0 || (*(this + 50) & 1) != 0 || (*(this + 54) & 1) != 0 || (*(this + 58) & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 62);
  }

  return v1 & 1;
}

void SDPMediaFormatEVSParams::~SDPMediaFormatEVSParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaFormatEVSParams::isOpenOffer(SDPMediaFormatEVSParams *this)
{
  if (*(this + 111) == 1)
  {
    v1 = *(this + 112);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void SDPMediaFormatTTYParams::~SDPMediaFormatTTYParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPMediaFormatTTYRedParams::~SDPMediaFormatTTYRedParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E50C9734(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t XcapClient::XcapClient(uint64_t a1, __int128 *a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 372) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *a1 = &unk_1F5EF25A8;
  *(a1 + 376) = &unk_1F5EF2698;
  *(a1 + 384) = &unk_1F5EF26E8;
  *(a1 + 408) = *a3;
  v4 = a3[1];
  *(a1 + 416) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 424), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 440) = *(a2 + 2);
    *(a1 + 424) = v5;
  }

  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 544) = a1 + 544;
  *(a1 + 552) = a1 + 544;
  *(a1 + 560) = 0;
  std::string::basic_string[abi:ne200100]<0>(v12, "xcap");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Creating BambiXcapClient: ", 26);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923310](*(v6 + 8), a1);
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

  return a1;
}

void sub_1E50C997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 + 416);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(v24 + 400);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  *v24 = &unk_1F5EC4310;
  XcapConfig::~XcapConfig((v24 + 16));
  _Unwind_Resume(a1);
}

void XcapClient::~XcapClient(XcapClient *this)
{
  *this = &unk_1F5EF25A8;
  *(this + 47) = &unk_1F5EF2698;
  *(this + 48) = &unk_1F5EF26E8;
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "xcap");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Deleting BambiXcapClient: ", 26);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  (*(*this + 32))(this);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 68);
  v4 = *(this + 66);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 62);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 60);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v14[0] = (this + 448);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v8 = *(this + 52);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 50);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  *this = &unk_1F5EC4310;
  XcapConfig::~XcapConfig(this + 2);
}

{
  XcapClient::~XcapClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapClient::~XcapClient(XcapClient *this)
{
  XcapClient::~XcapClient((this - 376));
}

{
  XcapClient::~XcapClient((this - 376));

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapClient::deinitialize(XcapClient *this)
{
  v2 = *(this + 56);
  for (i = *(this + 57); v2 != i; v2 += 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, kXcapLoggingFacility);
    v13[0] = 0;
    v16 = 0;
    v4 = ims::debug(v7, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Removing ", 9);
    *(v4 + 17) = 0;
    MEMORY[0x1E6923310](*(v4 + 8), *v2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " from list of sessions.", 23);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](this + 56);
  std::string::basic_string[abi:ne200100]<0>(v11, kXcapLoggingFacility);
  LOBYTE(v7[0]) = 0;
  v10 = 0;
  v5 = ims::debug(v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sessions list is empty.", 23);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 68);
  result = *(this + 67);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 67) = 0;
  *(this + 8) = 0;
  return result;
}

void sub_1E50CA314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void XcapClient::setAuthResponse(XcapClient *this, const SipAuthResponse *a2)
{
  v2 = *(this + 56);
  if (v2 == *(this + 57))
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v10, kXcapLoggingFacility);
    v6[0] = 0;
    v9 = 0;
    v5 = ims::error(v4, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to fetch client to handle auth response.", 47);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }
  }

  else
  {
    v3 = *(**v2 + 72);

    v3();
  }
}

void sub_1E50CA4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void XcapClient::setGbaNafCredentials(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (v1 == *(a1 + 456))
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v9, kXcapLoggingFacility);
    v5[0] = 0;
    v8 = 0;
    v4 = ims::error(v3, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Failed to fetch client to handle GBA NAF credentials.", 53);
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

  else
  {
    v2 = *(**v1 + 80);

    v2();
  }
}

void sub_1E50CA618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void XcapClient::fetchAllServices()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E50CA720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E69235B0](v7, 0x10B2C409DA9FE99);
  XcapNodeSelector::~XcapNodeSelector(va);
  _Unwind_Resume(a1);
}

void ___ZN10XcapClient16fetchAllServicesEU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, uint64_t a2, bambi::XmlParser *a3)
{
  memset(v10, 0, sizeof(v10));
  XcapDocumentSimservs::XcapDocumentSimservs(v10);
  if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    bambi::XmlParser::parseXml(a3, v10, v6, v7);
  }

  v8 = *(a1 + 32);
  ImsResult::ImsResult(v9, a2);
  (*(v8 + 16))(v8, v9, v10);
  ImsResult::~ImsResult(v9);
  XcapDocumentSimservs::~XcapDocumentSimservs(v10);
}

void sub_1E50CA820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  XcapDocumentSimservs::~XcapDocumentSimservs(va1);
  _Unwind_Resume(a1);
}

void XcapClient::_queueRequest(XcapClient *this, XcapRequest *a2)
{
  v2 = *(this + 70);
  v3 = a2;
  operator new();
}

void sub_1E50CAA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

void XcapClient::handleStandardDigestChallenge(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 416);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 408);
      if (v7)
      {
        (*(*v7 + 16))(v7, a1 + 424, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void XcapClient::handleAkaDigestChallenge(XcapClient *this, const SipAkaAuthChallenge *a2)
{
  v3 = *(this + 52);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 51);
      if (v7)
      {
        (*(*v7 + 24))(v7, this + 424, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void XcapClient::fetchKsExtNaf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 416);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 408);
      if (v13)
      {
        (*(*v13 + 32))(v13, a1 + 424, a2, a3, a4, a5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

uint64_t XcapClient::storeAppServerAuthCredentials(XcapClient *this, const SipAuthResponse *a2)
{
  v4 = *(this + 67);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 16))(a2);
  *(this + 67) = result;
  return result;
}

void *XcapClient::operationComplete(void *a1, uint64_t a2)
{
  v5 = a1[56];
  v4 = a1[57];
  if (v5 != v4)
  {
    while (1)
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v7 == a2)
      {
        break;
      }

      v5 += 2;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }

    v4 = a1[57];
  }

  if (v5 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, kXcapLoggingFacility);
    v22[0] = 0;
    v25 = 0;
    v15 = ims::debug(v26, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Session ", 8);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), a2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " not found in list of sessions. Current Size: ", 46);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923370](*(v15 + 8), (a1[57] - a1[56]) >> 4);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v26, kXcapLoggingFacility);
    v22[0] = 0;
    v25 = 0;
    v8 = ims::debug(v26, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Removing ", 9);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), a2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " from list of session. Current Size: ", 37);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923370](*(v8 + 8), (a1[57] - a1[56]) >> 4);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v9 = a1[57];
    if (v5 + 2 != v9)
    {
      do
      {
        v10 = *(v5 + 1);
        v5[2] = 0;
        v5[3] = 0;
        v11 = v5[1];
        *v5 = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v12 = v5 + 2;
        v13 = v5 + 4;
        v5 += 2;
      }

      while (v13 != v9);
      v9 = a1[57];
      v5 = v12;
    }

    while (v9 != v5)
    {
      v14 = *(v9 - 1);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v9 -= 2;
    }

    a1[57] = v5;
  }

  v16 = a1[70];
  if (v16)
  {
    v17 = a1[69];
    v19 = *v17;
    v18 = v17[1];
    *(v19 + 8) = v18;
    *v18 = v19;
    a1[70] = v16 - 1;
    v20 = v17[3];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    operator delete(v17);
  }

  return XcapClient::_processTopRequest(a1);
}

void sub_1E50CB0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void *XcapClient::_processTopRequest(void *this)
{
  if (this[70])
  {
    v1 = this;
    v2 = this[69];
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = this[52];
    if (v5 && std::__shared_weak_count::lock(v5) && (v6 = v1[51], __p[0] = 0, __p[1] = 0, *&v13 = 0, v6))
    {
      (*(*v6 + 40))(__p);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v13 = 0;
    }

    v7 = v1[50];
    if (v7)
    {
      v8 = v1[49];
      v9 = std::__shared_weak_count::lock(v7);
      v11[1] = v9;
      if (v9)
      {
        if (v8)
        {
          v14 = v8 + 376;
          v15 = v9;
          v10 = v11;
        }

        else
        {
          v10 = &v14;
        }

        *v10 = 0;
        v10[1] = 0;
        v16 = v14;
        v17 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        XcapSession::create();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  return this;
}

void sub_1E50CB9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<XcapClient::create(std::string const&,std::weak_ptr<BambiXcapDelegate>)::make_shared_enabler,std::allocator<XcapClient::create(std::string const&,std::weak_ptr<BambiXcapDelegate>)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF2788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void XcapClient::create(std::string const&,std::weak_ptr<BambiXcapDelegate>)::make_shared_enabler::~make_shared_enabler(XcapClient *a1)
{
  XcapClient::~XcapClient(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapClient::create(std::string const&,std::weak_ptr<BambiXcapDelegate>)::make_shared_enabler::~make_shared_enabler(uint64_t a1)
{
  XcapClient::~XcapClient((a1 - 376));
}

{
  XcapClient::~XcapClient((a1 - 376));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_pointer<XcapCallWaitingManager *,std::shared_ptr<XcapCallWaitingManager>::__shared_ptr_default_delete<XcapCallWaitingManager,XcapCallWaitingManager>,std::allocator<XcapCallWaitingManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCallWaitingManager *,std::shared_ptr<XcapCallWaitingManager>::__shared_ptr_default_delete<XcapCallWaitingManager,XcapCallWaitingManager>,std::allocator<XcapCallWaitingManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCallWaitingManager *,std::shared_ptr<XcapCallWaitingManager>::__shared_ptr_default_delete<XcapCallWaitingManager,XcapCallWaitingManager>,std::allocator<XcapCallWaitingManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<XcapCallForwardManager *,std::shared_ptr<XcapCallForwardManager>::__shared_ptr_default_delete<XcapCallForwardManager,XcapCallForwardManager>,std::allocator<XcapCallForwardManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCallForwardManager *,std::shared_ptr<XcapCallForwardManager>::__shared_ptr_default_delete<XcapCallForwardManager,XcapCallForwardManager>,std::allocator<XcapCallForwardManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCallForwardManager *,std::shared_ptr<XcapCallForwardManager>::__shared_ptr_default_delete<XcapCallForwardManager,XcapCallForwardManager>,std::allocator<XcapCallForwardManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<XcapCallerIDManager *,std::shared_ptr<XcapCallerIDManager>::__shared_ptr_default_delete<XcapCallerIDManager,XcapCallerIDManager>,std::allocator<XcapCallerIDManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCallerIDManager *,std::shared_ptr<XcapCallerIDManager>::__shared_ptr_default_delete<XcapCallerIDManager,XcapCallerIDManager>,std::allocator<XcapCallerIDManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCallerIDManager *,std::shared_ptr<XcapCallerIDManager>::__shared_ptr_default_delete<XcapCallerIDManager,XcapCallerIDManager>,std::allocator<XcapCallerIDManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<XcapCallBarringManager *,std::shared_ptr<XcapCallBarringManager>::__shared_ptr_default_delete<XcapCallBarringManager,XcapCallBarringManager>,std::allocator<XcapCallBarringManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCallBarringManager *,std::shared_ptr<XcapCallBarringManager>::__shared_ptr_default_delete<XcapCallBarringManager,XcapCallBarringManager>,std::allocator<XcapCallBarringManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCallBarringManager *,std::shared_ptr<XcapCallBarringManager>::__shared_ptr_default_delete<XcapCallBarringManager,XcapCallBarringManager>,std::allocator<XcapCallBarringManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

XcapRequest **std::unique_ptr<XcapRequest>::~unique_ptr[abi:ne200100](XcapRequest **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    XcapRequest::~XcapRequest(v2);
    MEMORY[0x1E69235B0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<XcapRequest *,std::shared_ptr<XcapRequest>::__shared_ptr_default_delete<XcapRequest,XcapRequest>,std::allocator<XcapRequest>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

XcapRequest *std::__shared_ptr_pointer<XcapRequest *,std::shared_ptr<XcapRequest>::__shared_ptr_default_delete<XcapRequest,XcapRequest>,std::allocator<XcapRequest>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    XcapRequest::~XcapRequest(result);

    JUMPOUT(0x1E69235B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapRequest *,std::shared_ptr<XcapRequest>::__shared_ptr_default_delete<XcapRequest,XcapRequest>,std::allocator<XcapRequest>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void LazuliDelegate::LazuliDelegate(LazuliDelegate *this)
{
  *(this + 2) = 0;
  *this = &unk_1F5EF2BA0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  pthread_mutex_init((this + 56), 0);
  *(this + 17) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
}

void sub_1E50CC104(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::destroy(v2, *v4);
  std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

void LazuliDelegate::~LazuliDelegate(LazuliDelegate *this)
{
  *this = &unk_1F5EF2BA0;
  std::__tree<std::string>::destroy(this + 120, *(this + 16));
  pthread_mutex_destroy((this + 56));
  std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::destroy(this + 8, *(this + 2));
}

{
  LazuliDelegate::~LazuliDelegate(this);

  JUMPOUT(0x1E69235B0);
}

void LazuliDelegate::addLazuliDelegate(LazuliDelegate *a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  v8 = (a1 + 16);
  if ((a1 + 16) != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "laz.client");
    v18[0] = 0;
    v21 = 0;
    v9 = ims::debug(&v15, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Replacing lazuli delegate for ", 30);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a2);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  v10 = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v12 = *a4;
  v11 = *(a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
  }

  else
  {
    v15 = *a2;
  }

  object[0] = v10;
  object[1] = v12;
  v17 = v11;
  v13 = *v8;
  if (!*v8)
  {
    goto LABEL_20;
  }

  while (1)
  {
    while (1)
    {
      v14 = v13;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15, (v13 + 32)) & 0x80) == 0)
      {
        break;
      }

      v13 = *v14;
      v8 = v14;
      if (!*v14)
      {
        goto LABEL_20;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14 + 4, &v15.__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      break;
    }

    v8 = v14 + 1;
    v13 = v14[1];
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (!*v8)
  {
LABEL_20:
    operator new();
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  LazuliDelegate::garbageCollectExpired(a1);
}

void LazuliDelegate::garbageCollectExpired(LazuliDelegate *this)
{
  v2 = (this + 32);
  v3 = *(this + 4);
  v4 = (this + 40);
  if (v3 != (this + 40))
  {
    do
    {
      v5 = v3[8];
      if (!v5 || *(v5 + 8) == -1)
      {
        v9 = std::string::basic_string[abi:ne200100]<0>(v27, "laz.client");
        v23[0] = 0;
        v26 = 0;
        v10 = ims::debug(v9, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Removing expired chat ", 22);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, v3 + 4);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v26 == 1 && v25 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

        v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(v2, v3);
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v3 + 4));
        operator delete(v3);
      }

      else
      {
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
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v13 = *(this + 1);
  v11 = (this + 8);
  v12 = v13;
  if (v13 != (v11 + 1))
  {
    do
    {
      v14 = v12[9];
      if (!v14 || *(v14 + 8) == -1)
      {
        v17 = std::string::basic_string[abi:ne200100]<0>(v27, "laz.client");
        v19[0] = 0;
        v22 = 0;
        v18 = ims::debug(v17, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Removing expired delegate ", 26);
        *(v18 + 17) = 0;
        (*(*v18 + 32))(v18, v12 + 4);
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v22 == 1 && v21 < 0)
        {
          operator delete(v20);
        }

        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

        v16 = std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::erase(v11, v12);
      }

      else
      {
        v15 = v12[1];
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
            v16 = v12[2];
            v8 = *v16 == v12;
            v12 = v16;
          }

          while (!v8);
        }
      }

      v12 = v16;
    }

    while (v16 != (v11 + 1));
  }
}

void sub_1E50CC7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  _Unwind_Resume(exception_object);
}

void LazuliDelegate::removeLazuliDelegate(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 1), a2);
  if (a1 + 2 != v3)
  {
    std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::erase(a1 + 1, v3);
  }

  LazuliDelegate::garbageCollectExpired(a1);
}

void LazuliDelegate::addChat(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20 = 0;
  ImsLock::set(&v20, (a1 + 56), v21);
  ImsResult::~ImsResult(v21);
  if (a1 + 128 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "laz.client");
    v16[0] = 0;
    v19 = 0;
    v6 = ims::debug(v21, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Adding a chat with same conversationID (", 40);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ") which has a pending BYE. Removing the pending BYE.", 52);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    std::__tree<std::string>::__erase_unique<std::string>((a1 + 120), a2);
  }

  ImsLock::~ImsLock(&v20);
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "laz.client");
  v12[0] = 0;
  v15 = 0;
  v7 = ims::debug(v21, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Tracking chat with conversationID ", 34);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v21[0] = a2;
  v8 = std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 32, a2);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 64);
  *(v8 + 56) = v10;
  *(v8 + 64) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void LazuliDelegate::removeChat(uint64_t a1, void **a2)
{
  v11 = 0;
  ImsLock::set(&v11, (a1 + 56), v12);
  ImsResult::~ImsResult(v12);
  std::string::basic_string[abi:ne200100]<0>(v12, "laz.client");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::debug(v12, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Removing chat with conversationID ", 34);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 32, a2);
  if ((a1 + 40) != v5)
  {
    v6 = v5;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 32), v5);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v6 + 4));
    operator delete(v6);
  }

  std::__tree<std::string>::__erase_unique<std::string>((a1 + 120), a2);
  ImsLock::~ImsLock(&v11);
}

void LazuliDelegate::trackPendingBye(uint64_t a1, void **a2)
{
  v9 = 0;
  ImsLock::set(&v9, (a1 + 56), v10);
  ImsResult::~ImsResult(v10);
  std::string::basic_string[abi:ne200100]<0>(v10, "laz.client");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v10, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Flagging pending BYE for chat with conversationID ", 50);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 120, a2);
  ImsLock::~ImsLock(&v9);
}

BOOL LazuliDelegate::hasPendingBye(uint64_t a1, void **a2)
{
  v6 = 0;
  ImsLock::set(&v6, (a1 + 56), v7);
  ImsResult::~ImsResult(v7);
  v4 = a1 + 128 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a2);
  ImsLock::~ImsLock(&v6);
  return v4;
}

void LazuliDelegate::handleIncomingChat(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate18handleIncomingChatENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_61;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CD104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate18handleIncomingChatENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleIncomingChat_block_invoke", 31);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 16))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CD344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c44_ZTSNSt3__110shared_ptrIN3ims6lazuli4ChatEEE72c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[8];
  a1[7] = a2[7];
  a1[8] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[9];
  a1[9] = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  a1[9] = result;
  return result;
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c44_ZTSNSt3__110shared_ptrIN3ims6lazuli4ChatEEE72c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void LazuliDelegate::handleMessageReceivedWithCompletion(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (v4 != (a1 + 16))
  {
    do
    {
      v9 = v4[7];
      if (v9)
      {
        dispatch_retain(v4[7]);
      }

      v11 = v4[8];
      v10 = v4[9];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate35handleMessageReceivedWithCompletionENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictENS0_8functionIFvvEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_13_2;
      block[4] = v11;
      v21 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a2;
      v12 = a2[1];
      v22 = v4 + 4;
      v23 = v13;
      v24 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *a3;
      object = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        object = xpc_null_create();
      }

      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v26, a4);
      IMSClientManager::callOnDestinationQueue(&v19, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
      xpc_release(object);
      object = 0;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        dispatch_release(v9);
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E50CD680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN14LazuliDelegate35handleMessageReceivedWithCompletionENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictENS0_8functionIFvvEEE_block_invoke(void *a1)
{
  v21[4] = *MEMORY[0x1E69E9840];
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
        std::string::basic_string[abi:ne200100]<0>(queue, "laz.client");
        v14[0] = 0;
        v17 = 0;
        v6 = ims::debug(queue, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "dispatch ", 9);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleMessageReceivedWithCompletion_block_invoke", 48);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " for ", 5);
        *(v6 + 17) = 0;
        (*(*v6 + 32))(v6, a1[6]);
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v17 == 1 && v16 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(queue[0]);
        }

        v7 = a1[8];
        v12 = a1[7];
        v13 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = a1[9];
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 24))(v5, &v12, &object);
        xpc_release(object);
        object = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        ims::getQueue(queue);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        block[2] = ___ZN14LazuliDelegate35handleMessageReceivedWithCompletionENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictENS0_8functionIFvvEEE_block_invoke_2;
        block[3] = &__block_descriptor_tmp_12_2;
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v21, (a1 + 10));
        v9 = queue[0];
        dispatch_async(queue[0], block);
        if (v9)
        {
          dispatch_release(v9);
        }

        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v21);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E50CD98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, dispatch_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14LazuliDelegate35handleMessageReceivedWithCompletionENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictENS0_8functionIFvvEEE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c44_ZTSNSt3__110shared_ptrIN3ims6lazuli4ChatEEE72c15_ZTSN3xpc4dictE80c27_ZTSNSt3__18functionIFvvEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[8];
  a1[7] = a2[7];
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[9];
  a1[9] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    a1[9] = xpc_null_create();
  }

  return std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 10), (a2 + 10));
}

void sub_1E50CDAF0(_Unwind_Exception *a1)
{
  xpc::dict::~dict(v2);
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c44_ZTSNSt3__110shared_ptrIN3ims6lazuli4ChatEEE72c15_ZTSN3xpc4dictE80c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 80);
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void LazuliDelegate::handleMessageSend(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate17handleMessageSendENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_16_5;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CDD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate17handleMessageSendENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMessageSend_block_invoke", 30);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 32))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CDF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleSessionReady(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v7 = **v6;
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(a2 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&v34[1], 0, 24);
  v33[0] = a3;
  v33[1] = "kMlsOpaqueToken";
  xpc::dict::object_proxy::operator xpc::object(v33, v34);
  __p = 0;
  v31 = 0;
  v32 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v34[0]);
  if (SHIBYTE(v34[3]) < 0)
  {
    if (!v34[2])
    {
LABEL_12:
      if (SHIBYTE(v34[3]) < 0)
      {
        operator delete(v34[1]);
      }

      goto LABEL_14;
    }

    std::string::__init_copy_ctor_external(&v29, v34[1], v34[2]);
LABEL_10:
    (*(*v9 + 8))(v9, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    goto LABEL_12;
  }

  if (HIBYTE(v34[3]))
  {
    v29 = *&v34[1];
    goto LABEL_10;
  }

LABEL_14:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_16:
  v11 = *(a1 + 8);
  v12 = (a1 + 16);
  if (v11 != (a1 + 16))
  {
    do
    {
      v13 = v11[7];
      if (v13)
      {
        dispatch_retain(v11[7]);
      }

      v15 = v11[8];
      v14 = v11[9];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate18handleSessionReadyENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_19_1;
      block[4] = v15;
      v23 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *a2;
      v16 = *(a2 + 8);
      v24 = v11 + 4;
      v25 = v17;
      v26 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
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

      IMSClientManager::callOnDestinationQueue(&v28, block);
      if (v13)
      {
        dispatch_release(v13);
      }

      xpc_release(object);
      object = 0;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v13)
      {
        dispatch_release(v13);
      }

      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != v12);
  }
}

void sub_1E50CE2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 105) < 0)
  {
    operator delete(*(v34 - 128));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14LazuliDelegate18handleSessionReadyENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleSessionReady_block_invoke", 31);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 40))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CE590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleSessionTerminated(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate23handleSessionTerminatedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_22_3;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CE7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate23handleSessionTerminatedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleSessionTerminated_block_invoke", 36);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 48))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleSessionEvent(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate18handleSessionEventENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_25_1;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CEC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate18handleSessionEventENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleSessionEvent_block_invoke", 31);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 56))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CEE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleGroupChatUpdate(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate21handleGroupChatUpdateENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_28_1;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CF07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate21handleGroupChatUpdateENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleGroupChatUpdate_block_invoke", 34);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 72))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CF2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleLeaveGroupChat(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate20handleLeaveGroupChatENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_31_1;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50CF4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate20handleLeaveGroupChatENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleLeaveGroupChat_block_invoke", 33);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 112))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CF720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleGroupChatCreated(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_29;
  }

  v6 = **v5;
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&v36[1], 0, sizeof(std::string));
  __p = a3;
  v31 = "kConferenceFocus";
  xpc::dict::object_proxy::operator xpc::object(&__p, object);
  memset(v36, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36[0].__r_.__value_.__l.__data_);
  }

  xpc_release(object[0]);
  if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v36[1].__r_.__value_.__l.__size_)
    {
      goto LABEL_14;
    }

    std::string::__init_copy_ctor_external(&v35, v36[1].__r_.__value_.__l.__data_, v36[1].__r_.__value_.__l.__size_);
  }

  else
  {
    if (!*(&v36[1].__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    v35 = v36[1];
  }

  (**v8)(v8, &v35);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_14:
  memset(v36, 0, 24);
  object[0] = a3;
  object[1] = "kMlsOpaqueToken";
  xpc::dict::object_proxy::operator xpc::object(object, &v34);
  __p = 0;
  v31 = 0;
  v32 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v34);
  if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v36[0].__r_.__value_.__l.__size_)
    {
LABEL_23:
      if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36[0].__r_.__value_.__l.__data_);
      }

      goto LABEL_25;
    }

    std::string::__init_copy_ctor_external(&v29, v36[0].__r_.__value_.__l.__data_, v36[0].__r_.__value_.__l.__size_);
LABEL_21:
    (*(*v8 + 8))(v8, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    goto LABEL_23;
  }

  if (*(&v36[0].__r_.__value_.__s + 23))
  {
    v29 = v36[0];
    goto LABEL_21;
  }

LABEL_25:
  if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36[1].__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_29:
  v10 = *(a1 + 8);
  v11 = (a1 + 16);
  if (v10 != (a1 + 16))
  {
    do
    {
      v12 = v10[7];
      if (v12)
      {
        dispatch_retain(v10[7]);
      }

      v13 = v10[8];
      v14 = v10[9];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate22handleGroupChatCreatedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_34_1;
      block[4] = v13;
      v23 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *a2;
      v15 = *(a2 + 8);
      v24 = v10 + 4;
      v25 = v16;
      v26 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *a3;
      v27 = v17;
      if (v17)
      {
        xpc_retain(v17);
      }

      else
      {
        v27 = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v28, block);
      if (v12)
      {
        dispatch_release(v12);
      }

      xpc_release(v27);
      v27 = 0;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v12)
      {
        dispatch_release(v12);
      }

      v18 = v10[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != v11);
  }
}

void sub_1E50CFB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t a34, uint64_t a35, xpc_object_t object, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  if (*(v43 - 113) < 0)
  {
    operator delete(*(v43 - 136));
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14LazuliDelegate22handleGroupChatCreatedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleGroupChatCreated_block_invoke", 35);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 104))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50CFE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleParticipantAdded(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate22handleParticipantAddedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_37_0;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50D0090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate22handleParticipantAddedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleParticipantAdded_block_invoke", 35);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 80))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50D02D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleParticipantRemoved(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 != (a1 + 16))
  {
    do
    {
      v7 = v3[7];
      if (v7)
      {
        dispatch_retain(v3[7]);
      }

      v9 = v3[8];
      v8 = v3[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate24handleParticipantRemovedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_40_2;
      block[4] = v9;
      v17 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      v10 = a2[1];
      v18 = v3 + 4;
      v19 = v11;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v22, block);
      if (v7)
      {
        dispatch_release(v7);
      }

      xpc_release(object);
      object = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        dispatch_release(v7);
      }

      v13 = v3[1];
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
          v14 = v3[2];
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1E50D04F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v19)
    {
LABEL_5:
      if (!v20)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  dispatch_release(v19);
  if (!v20)
  {
LABEL_6:
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v19);
  goto LABEL_8;
}

void ___ZN14LazuliDelegate24handleParticipantRemovedENSt3__110shared_ptrIN3ims6lazuli4ChatEEEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v17, "laz.client");
        v13[0] = 0;
        v16 = 0;
        v7 = ims::debug(v6, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleParticipantRemoved_block_invoke", 37);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        v8 = a1[8];
        v11 = a1[7];
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[9];
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 88))(v5, &v11, &object);
        xpc_release(object);
        object = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50D0734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleIncomingChat(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "IncomingChat");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 16))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1E50D08FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::getChat(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (!v5)
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v34, "laz.client");
    v22[0] = 0;
    v25 = 0;
    v15 = ims::error(v14, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "conversationId is empty for ", 28);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a4);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v25 != 1 || (v24 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v16 = v23;
    goto LABEL_22;
  }

  v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 32, a3);
  if (a2 + 40 != v9)
  {
    v10 = v9;
    v11 = *(v9 + 64);
    if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
    {
      v13 = v10[7];
      *a1 = v13;
      a1[1] = v12;
      if (v13)
      {
        return;
      }
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(v34, "laz.client");
    v30[0] = 0;
    v33 = 0;
    v18 = ims::debug(v17, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "conversationId ", 15);
    *(v18 + 17) = 0;
    (*(*v18 + 32))(v18, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " expired", 8);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(__p);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a2 + 32), v10);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v10 + 4));
    v19 = v10;
    goto LABEL_25;
  }

  v20 = std::string::basic_string[abi:ne200100]<0>(v34, "laz.client");
  v26[0] = 0;
  v29 = 0;
  v21 = ims::error(v20, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Conversation not found for ", 27);
  *(v21 + 17) = 0;
  (*(*v21 + 32))(v21, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " conversationId ", 16);
  *(v21 + 17) = 0;
  (*(*v21 + 32))(v21, a3);
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (v29 == 1 && v28 < 0)
  {
    v16 = v27;
LABEL_22:
    operator delete(v16);
  }

LABEL_23:
  if ((v35 & 0x80000000) == 0)
  {
    return;
  }

  v19 = v34[0];
LABEL_25:
  operator delete(v19);
}

void LazuliDelegate::handleMessageReceivedWithCompletion(LazuliDelegate *a1, void **a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  LazuliDelegate::garbageCollectExpired(a1);
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v23[0] = a2;
  v23[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v23, object);
  __p = 0;
  v30 = 0;
  v31 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object[0]);
  std::string::basic_string[abi:ne200100]<0>(v27, "MessageReceived");
  LazuliDelegate::getChat(&__p, a1, v32, v27);
  v7 = __p;
  v6 = v30;
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  __p = a2;
  v30 = "kIsGroupChat";
  xpc::dict::object_proxy::operator xpc::object(&__p, v23);
  v8 = xpc::dyn_cast_or_default(v23, 0);
  xpc_release(v23[0]);
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  {
    v12 = v11;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v30 = 0;
    v31 = 0;
    (*(*v11 + 16))(&__p, v11);
    v13 = HIBYTE(v31);
    v14 = HIBYTE(v31);
    if (v31 < 0)
    {
      v13 = v30;
    }

    if (v13)
    {
      (*(*v12 + 16))(v23, v12);
      if (v24 >= 0)
      {
        v15 = v23;
      }

      else
      {
        v15 = v23[0];
      }

      v25 = xpc_string_create(v15);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      object[0] = a2;
      object[1] = "kRemoteUri";
      xpc::dict::object_proxy::operator=(object, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      v14 = HIBYTE(v31);
    }

    if (v14 < 0)
    {
      operator delete(__p);
      if (v6)
      {
        goto LABEL_25;
      }
    }

    else if (v6)
    {
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      v20 = v7;
      v21 = v6;
LABEL_27:
      v16 = 0;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_31;
    }

    v20 = v7;
    v21 = 0;
  }

  else
  {
    v20 = v7;
    v21 = v6;
    if (v6)
    {
      goto LABEL_27;
    }
  }

  v16 = 1;
LABEL_31:
  v17 = *a2;
  v19 = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v19 = xpc_null_create();
  }

  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v34, a3);
  (*(*a1 + 136))(a1, &v20, &v19, v34);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v34);
  xpc_release(v19);
  v19 = 0;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
    if (v16)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if ((v16 & 1) == 0)
  {
LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_39:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E50D112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LazuliDelegate::handleMessageSend(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "MessageSend");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 32))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D139C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleSessionReady(LazuliDelegate *a1, std::string::size_type a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v14.__r_.__value_.__r.__words[0] = a2;
  v14.__r_.__value_.__l.__size_ = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(&v14, &v12);
  memset(&v13, 0, sizeof(v13));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  xpc_release(v12);
  v3 = std::string::basic_string[abi:ne200100]<0>(&v13, "laz.client");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::error(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "empty conversation ID; unable to match incoming", 47);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v9);
  }
}

void sub_1E50D1FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  std::__shared_weak_count::~__shared_weak_count(v56);
  operator delete(v59);
  if (*(v57 - 193) < 0)
  {
    operator delete(*(v57 - 216));
  }

  xpc_release(*(v57 - 168));
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  xpc_release(object);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleSessionTerminated(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v20[0] = a2;
  v20[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v20, object);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  xpc_release(object[0]);
  std::string::basic_string[abi:ne200100]<0>(__p, "SessionTerminated");
  LazuliDelegate::getChat(&v26, a1, v29, __p);
  v5 = v26;
  v4 = v27;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = a2;
  v27 = "kUserEvictedFromGroup";
  xpc::dict::object_proxy::operator xpc::object(&v26, v20);
  v6 = xpc::dyn_cast_or_default(v20, 0);
  xpc_release(v20[0]);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  {
    v10 = v9;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    (*(*v9 + 16))(&v26, v9);
    v11 = HIBYTE(v28);
    v12 = HIBYTE(v28);
    if (v28 < 0)
    {
      v11 = v27;
    }

    if (v11)
    {
      (*(*v10 + 16))(v20, v10);
      if (v21 >= 0)
      {
        v13 = v20;
      }

      else
      {
        v13 = v20[0];
      }

      v22 = xpc_string_create(v13);
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      object[0] = a2;
      object[1] = "kConferenceFocus";
      xpc::dict::object_proxy::operator=(object, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v12 = HIBYTE(v28);
    }

    if (v12 < 0)
    {
      operator delete(v26);
      if (v4)
      {
        goto LABEL_25;
      }
    }

    else if (v4)
    {
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v17 = v5;
      v18 = v4;
LABEL_27:
      v14 = 0;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_31;
    }

    v17 = v5;
    v18 = 0;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    if (v4)
    {
      goto LABEL_27;
    }
  }

  v14 = 1;
LABEL_31:
  v15 = *a2;
  v16 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v16 = xpc_null_create();
  }

  (*(*a1 + 48))(a1, &v17, &v16);
  xpc_release(v16);
  v16 = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
    if (v14)
    {
      return;
    }
  }

  else if (v14)
  {
    return;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_1E50D260C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void LazuliDelegate::handleSessionEvent(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "SessionEvent");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 56))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D284C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleLeaveGroupChat(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  __p[0] = a2;
  __p[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(__p, object);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  xpc_release(object[0]);
  std::string::basic_string[abi:ne200100]<0>(v33, "LeaveGroupChat");
  LazuliDelegate::getChat(&v35, a1, v38, v33);
  v5 = v35;
  v4 = v36;
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v31 = v5;
  v32 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  v30 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v30 = xpc_null_create();
  }

  (*(*a1 + 112))(a1, &v31, &v30);
  xpc_release(v30);
  v30 = 0;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v29 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v29 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v29 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_19;
    }
  }

  if (MEMORY[0x1E6924740](v8) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v8);
    goto LABEL_20;
  }

  v9 = xpc_null_create();
LABEL_19:
  v29 = v9;
LABEL_20:
  xpc_release(v8);
  if (v39 >= 0)
  {
    v10 = v38;
  }

  else
  {
    v10 = v38[0];
  }

  v27 = xpc_string_create(v10);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v35 = &v29;
  v36 = "kConversationId";
  xpc::dict::object_proxy::operator=(&v35, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_string_create("LeaveGroup");
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v35 = &v29;
  v36 = "kReason";
  xpc::dict::object_proxy::operator=(&v35, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  {
    v18 = v5;
    v19 = v4;
    if (!v4)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v13 = v12;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  (*(*v12 + 16))(&v35, v12);
  v14 = HIBYTE(v37);
  v15 = HIBYTE(v37);
  if (v37 < 0)
  {
    v14 = v36;
  }

  if (v14)
  {
    (*(*v13 + 16))(__p, v13);
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    v23 = xpc_string_create(v16);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    object[0] = &v29;
    object[1] = "kConferenceFocus";
    xpc::dict::object_proxy::operator=(object, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = HIBYTE(v37);
  }

  if (v15 < 0)
  {
    operator delete(v35);
    if (v4)
    {
      goto LABEL_44;
    }
  }

  else if (v4)
  {
LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v18 = v5;
    v19 = v4;
LABEL_46:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_47;
  }

  v18 = v5;
  v19 = 0;
LABEL_47:
  v17 = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    v17 = xpc_null_create();
  }

  (*(*a1 + 48))(a1, &v18, &v17);
  xpc_release(v17);
  v17 = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  xpc_release(v29);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D2D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, xpc_object_t a25, uint64_t a26, uint64_t a27)
{
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  xpc_release(object);
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleGroupChatUpdate(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "GroupChatUpdate");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 72))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D2FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleGroupChatCreated(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "GroupChatCreated");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 104))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D31EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleParticipantAdded(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "ParticipantAdded");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 80))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D33E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleParticipantRemoved(LazuliDelegate *a1, void **a2)
{
  LazuliDelegate::garbageCollectExpired(a1);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = a2;
  v15[1] = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(v15, &v16);
  __p = 0;
  v13 = 0;
  v14 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(v16);
  std::string::basic_string[abi:ne200100]<0>(v10, "ParticipantRemoved");
  LazuliDelegate::getChat(&__p, a1, v17, v10);
  v5 = __p;
  v4 = v13;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 88))(a1, &v8, &object);
  xpc_release(object);
  object = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50D35D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void LazuliDelegate::handleCapabilitiesReceived(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v5 = v2[7];
      if (v5)
      {
        dispatch_retain(v2[7]);
      }

      v7 = v2[8];
      v6 = v2[9];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate26handleCapabilitiesReceivedEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_57_2;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *a2;
      v14 = v2 + 4;
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v16, block);
      if (v5)
      {
        dispatch_release(v5);
      }

      xpc_release(object);
      object = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        dispatch_release(v5);
      }

      v9 = v2[1];
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
          v10 = v2[2];
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

void sub_1E50D37FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, xpc_object_t object)
{
  xpc_release(object);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v17)
    {
LABEL_3:
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  if (!v18)
  {
LABEL_4:
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v18);
  if (!v17)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_5:
  dispatch_release(v17);
  goto LABEL_6;
}

void ___ZN14LazuliDelegate26handleCapabilitiesReceivedEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v14, "laz.client");
        v10[0] = 0;
        v13 = 0;
        v7 = ims::debug(v6, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleCapabilitiesReceived_block_invoke", 39);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        v8 = a1[7];
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 96))(v5, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50D3A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatDelegateEEE56c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void LazuliDelegate::handleSpamReportResponse(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v5 = v2[7];
      if (v5)
      {
        dispatch_retain(v2[7]);
      }

      v7 = v2[8];
      v6 = v2[9];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate24handleSpamReportResponseEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_60_3;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *a2;
      v14 = v2 + 4;
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v16, block);
      if (v5)
      {
        dispatch_release(v5);
      }

      xpc_release(object);
      object = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        dispatch_release(v5);
      }

      v9 = v2[1];
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
          v10 = v2[2];
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

void sub_1E50D3CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, xpc_object_t object)
{
  xpc_release(object);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v17)
    {
LABEL_3:
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  if (!v18)
  {
LABEL_4:
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v18);
  if (!v17)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_5:
  dispatch_release(v17);
  goto LABEL_6;
}

void ___ZN14LazuliDelegate24handleSpamReportResponseEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v14, "laz.client");
        v10[0] = 0;
        v13 = 0;
        v7 = ims::debug(v6, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleSpamReportResponse_block_invoke", 37);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        v8 = a1[7];
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 120))(v5, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50D3EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void LazuliDelegate::handleMlsGroupInfoReceived(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v5 = v2[7];
      if (v5)
      {
        dispatch_retain(v2[7]);
      }

      v7 = v2[8];
      v6 = v2[9];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN14LazuliDelegate26handleMlsGroupInfoReceivedEN3xpc4dictE_block_invoke;
      block[3] = &__block_descriptor_tmp_63_2;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *a2;
      v14 = v2 + 4;
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      IMSClientManager::callOnDestinationQueue(&v16, block);
      if (v5)
      {
        dispatch_release(v5);
      }

      xpc_release(object);
      object = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        dispatch_release(v5);
      }

      v9 = v2[1];
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
          v10 = v2[2];
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

void sub_1E50D40A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, xpc_object_t object)
{
  xpc_release(object);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v17)
    {
LABEL_3:
      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  if (!v18)
  {
LABEL_4:
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v18);
  if (!v17)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_5:
  dispatch_release(v17);
  goto LABEL_6;
}

void ___ZN14LazuliDelegate26handleMlsGroupInfoReceivedEN3xpc4dictE_block_invoke(void *a1)
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
        v6 = std::string::basic_string[abi:ne200100]<0>(&v14, "laz.client");
        v10[0] = 0;
        v13 = 0;
        v7 = ims::debug(v6, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dispatch ", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMlsGroupInfoReceived_block_invoke", 39);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for ", 5);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, a1[6]);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        v8 = a1[7];
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v5 + 128))(v5, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50D42AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

uint64_t LazuliDelegate::dumpState(LazuliDelegate *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  LazuliDelegates:", 18);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 1);
  if (v4 != (this + 16))
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v4 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      v5 = *(v4 + 9);
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6 && *(v4 + 8))
        {
          MEMORY[0x1E6923310](*(a2 + 1));
          *(a2 + 17) = 0;
LABEL_8:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_9;
        }
      }

      else
      {
        v6 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "expired", 7);
      *(a2 + 17) = 0;
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 = *(a2 + 1);
      v18 = 41;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v18, 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      v8 = *(v4 + 1);
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
          v9 = *(v4 + 2);
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != (this + 16));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Chats:", 6);
  *(a2 + 17) = 0;
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v12 = *(this + 4);
  if (v12 != (this + 40))
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  ", 2);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v12 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14 && *(v12 + 7))
        {
          MEMORY[0x1E6923310](*(a2 + 1));
          *(a2 + 17) = 0;
LABEL_22:
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          goto LABEL_23;
        }
      }

      else
      {
        v14 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "expired", 7);
      *(a2 + 17) = 0;
      if (v14)
      {
        goto LABEL_22;
      }

LABEL_23:
      v15 = *(a2 + 1);
      v19 = 41;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v19, 1);
      *(a2 + 17) = 0;
      result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      v16 = *(v12 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v12 + 2);
          v10 = *v17 == v12;
          v12 = v17;
        }

        while (!v10);
      }

      v12 = v17;
    }

    while (v17 != (this + 40));
  }

  return result;
}

void DelegateInfo::~DelegateInfo(DelegateInfo *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DelegateInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DelegateInfo>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DelegateInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DelegateInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,DelegateInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateInfo>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DelegateInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DelegateInfo>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ims::lazuli::Chat>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
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

void sub_1E50D49E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliDelegate::getOrCreateChat(std::string &,std::string,xpc::dict)::ClientWrapper,std::allocator<LazuliDelegate::getOrCreateChat(std::string &,std::string,xpc::dict)::ClientWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF2F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliDelegate::getOrCreateChat(std::string &,std::string,xpc::dict)::ClientWrapper::~ClientWrapper(void **a1)
{
  ims::ClientHandle::~ClientHandle(a1);

  JUMPOUT(0x1E69235B0);
}

void SipCallIdHeader::~SipCallIdHeader(void **this)
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

void SipPrivateTokenAuthChallenge::SipPrivateTokenAuthChallenge(SipPrivateTokenAuthChallenge *this, SipPrivateTokenAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EF31D0;
  *(this + 8) = 0;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

void SipPrivateTokenAuthChallenge::~SipPrivateTokenAuthChallenge(SipPrivateTokenAuthChallenge *this)
{
  *this = &unk_1F5EF31D0;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  SipAuthChallenge::~SipAuthChallenge(this);
}

{
  SipPrivateTokenAuthChallenge::~SipPrivateTokenAuthChallenge(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50D4E44(_Unwind_Exception *a1)
{
  SipAuthChallenge::~SipAuthChallenge(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t SipPrivateTokenAuthChallenge::scheme(SipPrivateTokenAuthChallenge *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

void IBIResultDomain::~IBIResultDomain(void **this)
{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t IBIResultDomain::textForResultCode@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v18 = 0u;
  v15 = 0u;
  *__src = 0u;
  v13 = 0u;
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v5 = asString();
  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " (", 2);
  v8 = MEMORY[0x1E6923340](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    v11 = *(&v14 + 1);
    v10 = *(&v15 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, v11, v9);
  }

LABEL_14:
  a2[v9] = 0;
  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v20);
}

void sub_1E50D514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_IBIResultDomain_cpp()
{
  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 4801097;
  ImsResultDomain::ImsResultDomain(&IBIResultDomain::_domain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  IBIResultDomain::_domain = &unk_1F5EF3228;

  return __cxa_atexit(IBIResultDomain::~IBIResultDomain, &IBIResultDomain::_domain, &dword_1E4C3F000);
}

void sub_1E50D5290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapDocumentOIP::XcapDocumentOIP(XcapDocumentOIP *this)
{
  v3 = 0;
  v4 = &v3;
  v2 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v3) + 5);
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, &XcapDocumentOIP::kName, v2);
  *(this + 8) = &XcapDocumentOIP::kName;
  *(this + 9) = v2;
  *(this + 80) = 1;
  *this = &unk_1F5EF3270;
  *(this + 1) = &unk_1F5EF3308;
}

uint64_t XcapDocumentOIP::asString@<X0>(XcapDocumentOIP *this@<X0>, _BYTE *a2@<X8>)
{
  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v18 = 0u;
  v15 = 0u;
  *__src = 0u;
  v13 = 0u;
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "OIP: ", 5);
  if (*(this + 80))
  {
    v5 = "Enabled";
  }

  else
  {
    v5 = "Disabled";
  }

  if (*(this + 80))
  {
    v6 = 7;
  }

  else
  {
    v6 = 8;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v22, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v22);
  std::ostream::put();
  std::ostream::flush();
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    v11 = *(&v14 + 1);
    v10 = *(&v15 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, v11, v9);
  }

LABEL_20:
  a2[v9] = 0;
  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v20);
}

void sub_1E50D5660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::locale::~locale((v23 - 56));
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

void XcapDocumentOIP::~XcapDocumentOIP(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50D5844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x1E69235B0](v2, v3);
  _Unwind_Resume(a1);
}

void non-virtual thunk toXcapDocumentOIP::~XcapDocumentOIP(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

_BYTE *ims::toString<DscpClass>@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  HIDWORD(v5) = *a1;
  LODWORD(v5) = *a1;
  v4 = v5 >> 3;
  if (v4 > 0x18)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_1E876C878[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v6);
}

int *ImsServiceClass::ImsServiceClass(int *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 104;
  v109 = a1 + 1;
  a1[2] = 0;
  v108 = a1 + 2;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    if (CFDictionaryGetCount(v4))
    {
      ims::CFDictionary::getKeysAndValues(a2, &v118, &v115, 0x8000100);
      v7 = v118;
      if (v119 != v118)
      {
        for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 3); ++i)
        {
          memset(&v114, 0, sizeof(v114));
          v9 = (v7 + 24 * i);
          if (*(v9 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v114, *v9, *(v9 + 1));
          }

          else
          {
            v10 = *v9;
            v114.__r_.__value_.__r.__words[2] = *(v9 + 2);
            *&v114.__r_.__value_.__l.__data_ = v10;
          }

          size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
          if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v114.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v12 = *(a3 + 23);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(a3 + 8);
            }

            if (!v12 || (v13 >= 0 ? (v14 = a3) : (v14 = *a3), (v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &v114) : (v15 = v114.__r_.__value_.__r.__words[0]), !strcasecmp(v14, v15)))
            {
              v16 = *(v115 + i);
              if (v16)
              {
                v17 = CFGetTypeID(v16);
                if (v17 == CFDictionaryGetTypeID())
                {
                  v112 = 0;
                  cf = 0;
                  v18 = *(v115 + i);
                  v112 = &unk_1F5EF3658;
                  cf = v18;
                  if (v18)
                  {
                    CFRetain(v18);
                    v18 = cf;
                  }

                  theDict = v18;
                  v112 = &unk_1F5EF3760;
                  v110 = &unk_1F5EF3658;
                  if (v18)
                  {
                    CFRetain(v18);
                    v18 = theDict;
                  }

                  v110 = &unk_1F5EF3760;
                  v126 = 0;
                  v127 = 0;
                  v128 = 0;
                  v123 = 0;
                  v124 = 0;
                  v125 = 0;
                  if (v18)
                  {
                    if (CFDictionaryGetCount(v18))
                    {
                      ims::CFDictionary::getKeysAndValues(&v110, &v126, &v123, 0x8000100);
                      v19 = v126;
                      if (v127 != v126)
                      {
                        v20 = 0;
                        v21 = 0;
                        while (2)
                        {
                          memset(&v122, 0, sizeof(v122));
                          v22 = (v19 + v20);
                          if (*(v22 + 23) < 0)
                          {
                            std::string::__init_copy_ctor_external(&v122, *v22, *(v22 + 1));
                          }

                          else
                          {
                            v23 = *v22;
                            v122.__r_.__value_.__r.__words[2] = *(v22 + 2);
                            *&v122.__r_.__value_.__l.__data_ = v23;
                          }

                          v24 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
                          if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v24 = v122.__r_.__value_.__l.__size_;
                          }

                          if (!v24)
                          {
                            goto LABEL_203;
                          }

                          v25 = v123[v21];
                          if (!v25 || (v26 = CFGetTypeID(v25), v26 != CFStringGetTypeID()))
                          {
                            v81 = 0;
                            goto LABEL_175;
                          }

                          memset(&__p, 0, sizeof(__p));
                          v27 = v123[v21];
                          v129 = &unk_1F5EF3658;
                          v130 = v27;
                          if (v27)
                          {
                            CFRetain(v27);
                            v27 = v130;
                          }

                          v129 = &unk_1F5EF36B0;
                          ims::CFString::asString(v27, 0x8000100, &__p);
                          ims::CFType::~CFType(&v129);
                          std::string::basic_string[abi:ne200100]<0>(v28, "CS6");
                          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            p_p = &__p;
                          }

                          else
                          {
                            p_p = __p.__r_.__value_.__r.__words[0];
                          }

                          v30 = v131;
                          v31 = v129;
                          if (v131 >= 0)
                          {
                            v32 = &v129;
                          }

                          else
                          {
                            v32 = v129;
                          }

                          v33 = strcasecmp(p_p, v32);
                          v34 = v33;
                          if ((v30 & 0x80000000) == 0)
                          {
                            if (v33)
                            {
                              goto LABEL_49;
                            }

LABEL_122:
                            v81 = 192;
LABEL_173:
                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

LABEL_175:
                            std::string::basic_string[abi:ne200100]<0>(&v129, "Signaling");
                            if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v91 = &v122;
                            }

                            else
                            {
                              v91 = v122.__r_.__value_.__r.__words[0];
                            }

                            v92 = v131;
                            v93 = v129;
                            if (v131 >= 0)
                            {
                              v94 = &v129;
                            }

                            else
                            {
                              v94 = v129;
                            }

                            v95 = strcasecmp(v91, v94);
                            if (v92 < 0)
                            {
                              operator delete(v93);
                            }

                            v96 = a1;
                            if (!v95)
                            {
                              goto LABEL_202;
                            }

                            std::string::basic_string[abi:ne200100]<0>(&v129, "Voice");
                            if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v97 = &v122;
                            }

                            else
                            {
                              v97 = v122.__r_.__value_.__r.__words[0];
                            }

                            v98 = v131;
                            v99 = v129;
                            if (v131 >= 0)
                            {
                              v100 = &v129;
                            }

                            else
                            {
                              v100 = v129;
                            }

                            v101 = strcasecmp(v97, v100);
                            if (v98 < 0)
                            {
                              operator delete(v99);
                            }

                            v96 = v109;
                            if (!v101)
                            {
                              goto LABEL_202;
                            }

                            std::string::basic_string[abi:ne200100]<0>(&v129, "Video");
                            if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v102 = &v122;
                            }

                            else
                            {
                              v102 = v122.__r_.__value_.__r.__words[0];
                            }

                            v103 = v131;
                            v104 = v129;
                            if (v131 >= 0)
                            {
                              v105 = &v129;
                            }

                            else
                            {
                              v105 = v129;
                            }

                            v106 = strcasecmp(v102, v105);
                            if (v103 < 0)
                            {
                              operator delete(v104);
                            }

                            v96 = v108;
                            if (!v106)
                            {
LABEL_202:
                              *v96 = v81;
                            }

LABEL_203:
                            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v122.__r_.__value_.__l.__data_);
                            }

                            ++v21;
                            v19 = v126;
                            v20 += 24;
                            if (v21 >= 0xAAAAAAAAAAAAAAABLL * ((v127 - v126) >> 3))
                            {
                              goto LABEL_206;
                            }

                            continue;
                          }

                          break;
                        }

                        operator delete(v31);
                        if (!v34)
                        {
                          goto LABEL_122;
                        }

LABEL_49:
                        std::string::basic_string[abi:ne200100]<0>(&v129, "EF");
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v35 = &__p;
                        }

                        else
                        {
                          v35 = __p.__r_.__value_.__r.__words[0];
                        }

                        v36 = v131;
                        v37 = v129;
                        if (v131 >= 0)
                        {
                          v38 = &v129;
                        }

                        else
                        {
                          v38 = v129;
                        }

                        v39 = strcasecmp(v35, v38);
                        v40 = v39;
                        if ((v36 & 0x80000000) == 0)
                        {
                          if (v39)
                          {
                            goto LABEL_57;
                          }

LABEL_124:
                          v81 = 184;
                          goto LABEL_173;
                        }

                        operator delete(v37);
                        if (!v40)
                        {
                          goto LABEL_124;
                        }

LABEL_57:
                        std::string::basic_string[abi:ne200100]<0>(&v129, "CS5");
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v41 = &__p;
                        }

                        else
                        {
                          v41 = __p.__r_.__value_.__r.__words[0];
                        }

                        v42 = v131;
                        v43 = v129;
                        if (v131 >= 0)
                        {
                          v44 = &v129;
                        }

                        else
                        {
                          v44 = v129;
                        }

                        v45 = strcasecmp(v41, v44);
                        v46 = v45;
                        if ((v42 & 0x80000000) == 0)
                        {
                          if (v45)
                          {
                            goto LABEL_65;
                          }

LABEL_126:
                          v81 = 160;
                          goto LABEL_173;
                        }

                        operator delete(v43);
                        if (!v46)
                        {
                          goto LABEL_126;
                        }

LABEL_65:
                        std::string::basic_string[abi:ne200100]<0>(&v129, "AF41");
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v47 = &__p;
                        }

                        else
                        {
                          v47 = __p.__r_.__value_.__r.__words[0];
                        }

                        v48 = v131;
                        v49 = v129;
                        if (v131 >= 0)
                        {
                          v50 = &v129;
                        }

                        else
                        {
                          v50 = v129;
                        }

                        v51 = strcasecmp(v47, v50);
                        v52 = v51;
                        if ((v48 & 0x80000000) == 0)
                        {
                          if (v51)
                          {
                            goto LABEL_73;
                          }

LABEL_128:
                          v81 = 136;
                          goto LABEL_173;
                        }

                        operator delete(v49);
                        if (!v52)
                        {
                          goto LABEL_128;
                        }

LABEL_73:
                        std::string::basic_string[abi:ne200100]<0>(&v129, "AF42");
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v53 = &__p;
                        }

                        else
                        {
                          v53 = __p.__r_.__value_.__r.__words[0];
                        }

                        v54 = v131;
                        v55 = v129;
                        if (v131 >= 0)
                        {
                          v56 = &v129;
                        }

                        else
                        {
                          v56 = v129;
                        }

                        v57 = strcasecmp(v53, v56);
                        v58 = v57;
                        if ((v54 & 0x80000000) == 0)
                        {
                          if (v57)
                          {
                            goto LABEL_81;
                          }

LABEL_130:
                          v81 = 144;
                          goto LABEL_173;
                        }

                        operator delete(v55);
                        if (!v58)
                        {
                          goto LABEL_130;
                        }

LABEL_81:
                        std::string::basic_string[abi:ne200100]<0>(&v129, "AF43");
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v59 = &__p;
                        }

                        else
                        {
                          v59 = __p.__r_.__value_.__r.__words[0];
                        }

                        v60 = v131;
                        v61 = v129;
                        if (v131 >= 0)
                        {
                          v62 = &v129;
                        }

                        else
                        {
                          v62 = v129;
                        }

                        v63 = strcasecmp(v59, v62);
                        v64 = v63;
                        if (v60 < 0)
                        {
                          operator delete(v61);
                          if (v64)
                          {
                            goto LABEL_89;
                          }
                        }

                        else if (v63)
                        {
LABEL_89:
                          std::string::basic_string[abi:ne200100]<0>(&v129, "CS4");
                          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v65 = &__p;
                          }

                          else
                          {
                            v65 = __p.__r_.__value_.__r.__words[0];
                          }

                          v66 = v131;
                          v67 = v129;
                          if (v131 >= 0)
                          {
                            v68 = &v129;
                          }

                          else
                          {
                            v68 = v129;
                          }

                          v69 = strcasecmp(v65, v68);
                          if (v66 < 0)
                          {
                            operator delete(v67);
                          }

                          if (v69)
                          {
                            std::string::basic_string[abi:ne200100]<0>(&v129, "AF31");
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v70 = &__p;
                            }

                            else
                            {
                              v70 = __p.__r_.__value_.__r.__words[0];
                            }

                            v71 = v131;
                            v72 = v129;
                            if (v131 >= 0)
                            {
                              v73 = &v129;
                            }

                            else
                            {
                              v73 = v129;
                            }

                            v74 = strcasecmp(v70, v73);
                            if (v71 < 0)
                            {
                              operator delete(v72);
                            }

                            if (v74)
                            {
                              std::string::basic_string[abi:ne200100]<0>(&v129, "AF32");
                              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v75 = &__p;
                              }

                              else
                              {
                                v75 = __p.__r_.__value_.__r.__words[0];
                              }

                              v76 = v131;
                              v77 = v129;
                              if (v131 >= 0)
                              {
                                v78 = &v129;
                              }

                              else
                              {
                                v78 = v129;
                              }

                              v79 = strcasecmp(v75, v78);
                              if (v76 < 0)
                              {
                                operator delete(v77);
                              }

                              if (v79)
                              {
                                std::string::basic_string[abi:ne200100]<0>(&v129, "AF33");
                                v80 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                if (v131 < 0)
                                {
                                  operator delete(v129);
                                }

                                if (v80)
                                {
                                  v81 = 120;
                                }

                                else
                                {
                                  std::string::basic_string[abi:ne200100]<0>(&v129, "CS3");
                                  v82 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                  if (v131 < 0)
                                  {
                                    operator delete(v129);
                                  }

                                  if (v82)
                                  {
                                    v81 = 96;
                                  }

                                  else
                                  {
                                    std::string::basic_string[abi:ne200100]<0>(&v129, "AF21");
                                    v83 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                    if (v131 < 0)
                                    {
                                      operator delete(v129);
                                    }

                                    if (v83)
                                    {
                                      v81 = 72;
                                    }

                                    else
                                    {
                                      std::string::basic_string[abi:ne200100]<0>(&v129, "AF22");
                                      v84 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                      if (v131 < 0)
                                      {
                                        operator delete(v129);
                                      }

                                      if (v84)
                                      {
                                        v81 = 80;
                                      }

                                      else
                                      {
                                        std::string::basic_string[abi:ne200100]<0>(&v129, "AF23");
                                        v85 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                        if (v131 < 0)
                                        {
                                          operator delete(v129);
                                        }

                                        if (v85)
                                        {
                                          v81 = 88;
                                        }

                                        else
                                        {
                                          std::string::basic_string[abi:ne200100]<0>(&v129, "CS2");
                                          v86 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                          if (v131 < 0)
                                          {
                                            operator delete(v129);
                                          }

                                          if (v86)
                                          {
                                            v81 = 64;
                                          }

                                          else
                                          {
                                            std::string::basic_string[abi:ne200100]<0>(&v129, "AF11");
                                            v87 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                            if (v131 < 0)
                                            {
                                              operator delete(v129);
                                            }

                                            if (v87)
                                            {
                                              v81 = 40;
                                            }

                                            else
                                            {
                                              std::string::basic_string[abi:ne200100]<0>(&v129, "AF12");
                                              v88 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                              if (v131 < 0)
                                              {
                                                operator delete(v129);
                                              }

                                              if (v88)
                                              {
                                                v81 = 48;
                                              }

                                              else
                                              {
                                                std::string::basic_string[abi:ne200100]<0>(&v129, "AF13");
                                                v89 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                                if (v131 < 0)
                                                {
                                                  operator delete(v129);
                                                }

                                                if (v89)
                                                {
                                                  v81 = 56;
                                                }

                                                else
                                                {
                                                  std::string::basic_string[abi:ne200100]<0>(&v129, "CS1");
                                                  v90 = ims::caseInsensitiveStringCompare(&__p, &v129);
                                                  if (v131 < 0)
                                                  {
                                                    operator delete(v129);
                                                  }

                                                  if (v90)
                                                  {
                                                    v81 = 32;
                                                  }

                                                  else
                                                  {
                                                    v81 = 0;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v81 = 112;
                              }
                            }

                            else
                            {
                              v81 = 104;
                            }
                          }

                          else
                          {
                            v81 = 128;
                          }

                          goto LABEL_173;
                        }

                        v81 = 152;
                        goto LABEL_173;
                      }
                    }

LABEL_206:
                    if (v123)
                    {
                      v124 = v123;
                      operator delete(v123);
                    }
                  }

                  v129 = &v126;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v129);
                  ims::CFType::~CFType(&v110);
                  ims::CFType::~CFType(&v112);
                }
              }
            }
          }

          if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v114.__r_.__value_.__l.__data_);
          }

          v7 = v118;
        }
      }
    }

    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }
  }

  v129 = &v118;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v129);
  return a1;
}

void sub_1E50D63D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  ims::CFType::~CFType(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  *(v38 - 136) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v38 - 136));
  _Unwind_Resume(a1);
}

void RTCPRRPacket::packetize(RTCPRRPacket *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __x[0] = bswap32(*(this + 6));
  v4.__i_ = 0;
  std::vector<unsigned int>::insert(a2, v4, __x);
  RTCPReceiverReports::packetize((this + 32), __x);
  v5 = *__x;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), *__x, v10, &v10[-*__x] >> 2);
  v6 = -73 * ((*(this + 10) - *(this + 8)) >> 2);
  v7.__i_ = *a2;
  v8 = (*(a2 + 8) - *a2) >> 2;
  *(this + 12) = 0;
  *(this + 13) = v6;
  *(this + 4) = 201;
  *(this + 10) = v8;
  __x[0] = bswap32(v8) & 0xFFFF0000 | 0xC900 | v6 & 0x1F | 0x80;
  std::vector<unsigned int>::insert(a2, v7, __x);
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1E50D6644(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPRRPacket::toStream(unsigned int **this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCPRRPacket - Sender SSRC: ", 28);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 6));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;

  return RTCPReceiverReports::toStream(this + 4, a2);
}

void RTCPRRPacket::~RTCPRRPacket(RTCPRRPacket *this)
{
  *this = &unk_1F5EF3398;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5EF3398;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E50D6A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  xpc::dict::~dict((v26 + 184));
  MEMORY[0x1E69225A0](v26 + 176);
  ImsLogContainer::~ImsLogContainer(v27);
  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::CallEndEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF33E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::CallEndEventImpl::processSessionTerminationEvent(_anonymous_namespace_::CallEndEventImpl *this, const BambiCallSessionTerminationBaseEvent *a2, int a3, const AnalyticsLogger::AnalyticsData *a4)
{
  if (a2)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v8 = *(a2 + 2);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = std::__shared_weak_count::lock(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v9)
      {
        if (!v8)
        {
LABEL_416:
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          return;
        }

        v248 = 0;
        v249 = 0;
        v114 = v9;
        IPTelephonyManager::getBambiClient(&v248);
        v10 = *(v8 + 384);
        if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
        {
          v12 = *(v8 + 376) + 328;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v12 = 328;
        }

        v13 = this + 8;
        v14 = (*(*(this + 1) + 64))(this + 8);
        (*(*v13 + 16))(v13, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Current call count is ", 22);
        *(v14 + 17) = 0;
        v235 = 0uLL;
        v15 = BambiClient::callCountExcludingCall(v248, &v235);
        MEMORY[0x1E6923370](*(v14 + 8), v15);
        *(v14 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " SIP callID=", 12);
        *(v14 + 17) = 0;
        ObfuscatedString::ObfuscatedString(&v235, (v8 + 504));
        (*(*v14 + 56))(v14, &v235);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " handover ", 10);
        *(v14 + 17) = 0;
        MEMORY[0x1E6923370](*(v14 + 8), (*(a4 + 34) - *(a4 + 33)) >> 3);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v14 + 17) = 0;
        if (SHIBYTE(v237) < 0)
        {
          operator delete(v236.__r_.__value_.__l.__size_);
        }

        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v235);
        }

        v17 = *(a2 + 5);
        v16 = *(a2 + 6);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(this + 176) == 1)
        {
          v246 = xpc_BOOL_create(1);
          if (!v246)
          {
            v246 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "has_redialed";
          xpc::dict::object_proxy::operator=(&v235, &v246, &v247);
          xpc_release(v247);
          v247 = 0;
          xpc_release(v246);
          v246 = 0;
        }

        v244 = xpc_BOOL_create(*(v12 + 1838));
        if (!v244)
        {
          v244 = xpc_null_create();
        }

        v113 = v16;
        *&v235 = this + 160;
        *(&v235 + 1) = "sec_agree";
        xpc::dict::object_proxy::operator=(&v235, &v244, &v245);
        xpc_release(v245);
        v245 = 0;
        xpc_release(v244);
        v244 = 0;
        v18 = *(v8 + 408);
        if (v18)
        {
          v19 = SipPreconditions::preconditionsSatisfiedInAnyFork(*(v18 + 1536));
        }

        else
        {
          v19 = 0;
        }

        v242 = xpc_BOOL_create(v19);
        if (!v242)
        {
          v242 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "precondition";
        xpc::dict::object_proxy::operator=(&v235, &v242, &v243);
        xpc_release(v243);
        v243 = 0;
        xpc_release(v242);
        v242 = 0;
        if (*(v8 + 1559) < 0)
        {
          std::string::__init_copy_ctor_external(&v235, *(v8 + 1536), *(v8 + 1544));
        }

        else
        {
          v235 = *(v8 + 1536);
          v236.__r_.__value_.__r.__words[0] = *(v8 + 1552);
        }

        if (*(v8 + 1583) < 0)
        {
          std::string::__init_copy_ctor_external(&v236.__r_.__value_.__r.__words[1], *(v8 + 1560), *(v8 + 1568));
        }

        else
        {
          *&v236.__r_.__value_.__r.__words[1] = *(v8 + 1560);
          v237 = *(v8 + 1576);
        }

        v238 = *(v8 + 1584);
        v239 = *(v8 + 1600);
        if (v236.__r_.__value_.__s.__data_[7] >= 0)
        {
          v20 = &v235;
        }

        else
        {
          v20 = v235;
        }

        v240 = xpc_string_create(v20);
        if (!v240)
        {
          v240 = xpc_null_create();
        }

        v216.__r_.__value_.__r.__words[0] = this + 160;
        v216.__r_.__value_.__l.__size_ = "start_rat_info";
        xpc::dict::object_proxy::operator=(&v216, &v240, &v241);
        xpc_release(v241);
        v241 = 0;
        xpc_release(v240);
        v240 = 0;
        if (SHIBYTE(v237) < 0)
        {
          operator delete(v236.__r_.__value_.__l.__size_);
        }

        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v235);
        }

        v21 = *(v8 + 384);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = *(v8 + 376);
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
          v22 = 0;
        }

        v24 = *(v23 + 3527);
        if (v24 < 0)
        {
          v24 = *(v23 + 3512);
        }

        v25 = (v23 + 3432);
        if (v24)
        {
          v26 = *(v23 + 3551);
          if (v26 < 0)
          {
            v26 = *(v23 + 3536);
          }

          v27 = 72;
          if (!v26)
          {
            v27 = 0;
          }

          v25 += v27;
        }

        if (v25[23] < 0)
        {
          v25 = *v25;
        }

        v233 = xpc_string_create(v25);
        if (!v233)
        {
          v233 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "rat_info";
        xpc::dict::object_proxy::operator=(&v235, &v233, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v233);
        v233 = 0;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v28 = *(a4 + 36);
        v29 = *(a4 + 37);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v28)
        {
          v235 = 0uLL;
          (*(*v28 + 16))(&v235);
          v30 = v235;
          if (v235)
          {
            if (*(v235 + 23) < 0)
            {
              v30 = *v235;
            }

            v231 = xpc_string_create(v30);
            if (!v231)
            {
              v231 = xpc_null_create();
            }

            v216.__r_.__value_.__r.__words[0] = this + 160;
            v216.__r_.__value_.__l.__size_ = "active_rat";
            xpc::dict::object_proxy::operator=(&v216, &v231, &v232);
            xpc_release(v232);
            v232 = 0;
            xpc_release(v231);
            v231 = 0;
          }

          if (*(&v235 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v235 + 1));
          }
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v229 = xpc_BOOL_create(*(v12 + 1839));
        if (!v229)
        {
          v229 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "use_tcp";
        xpc::dict::object_proxy::operator=(&v235, &v229, &v230);
        xpc_release(v230);
        v230 = 0;
        xpc_release(v229);
        v229 = 0;
        v31 = *(v8 + 384);
        if (v31 && (v32 = std::__shared_weak_count::lock(v31)) != 0 && (v33 = *(v8 + 376), std::__shared_weak_count::__release_shared[abi:ne200100](v32), v33))
        {
          v34 = *(v8 + 384);
          if (v34)
          {
            v34 = std::__shared_weak_count::lock(v34);
            v35 = v34;
            if (v34)
            {
              v34 = *(v8 + 376);
            }
          }

          else
          {
            v35 = 0;
          }

          isMultisimEnabled = SipStack::isMultisimEnabled(v34);
          v227 = xpc_BOOL_create(isMultisimEnabled);
          if (!v227)
          {
            v227 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "msim_enabled";
          xpc::dict::object_proxy::operator=(&v235, &v227, &v228);
          xpc_release(v228);
          v228 = 0;
          xpc_release(v227);
          v227 = 0;
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }
        }

        else
        {
          v225 = xpc_BOOL_create(0);
          if (!v225)
          {
            v225 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "msim_enabled";
          xpc::dict::object_proxy::operator=(&v235, &v225, &v226);
          xpc_release(v226);
          v226 = 0;
          xpc_release(v225);
          v225 = 0;
        }

        if ((*(v8 + 784) & 1) != 0 || *(v8 + 785) == 1)
        {
          v223 = xpc_string_create("ATM_CALL_TYPE_TTY");
          if (!v223)
          {
            v223 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "type";
          xpc::dict::object_proxy::operator=(&v235, &v223, &v224);
          xpc_release(v224);
          v224 = 0;
          xpc_release(v223);
          v223 = 0;
        }

        else if ((*(*v8 + 104))(v8))
        {
          v221 = xpc_string_create("ATM_CALL_TYPE_Emergency_Unlisted");
          if (!v221)
          {
            v221 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "type";
          xpc::dict::object_proxy::operator=(&v235, &v221, &v222);
          xpc_release(v222);
          v222 = 0;
          xpc_release(v221);
          v221 = 0;
        }

        else
        {
          if (*(v8 + 552))
          {
            v65 = "ATM_CALL_TYPE_E911";
          }

          else
          {
            v65 = "ATM_CALL_TYPE_Voice";
          }

          v219 = xpc_string_create(v65);
          if (!v219)
          {
            v219 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "type";
          xpc::dict::object_proxy::operator=(&v235, &v219, &v220);
          xpc_release(v220);
          v220 = 0;
          xpc_release(v219);
          v219 = 0;
        }

        v235 = 0u;
        *&v236.__r_.__value_.__l.__data_ = 0u;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v235, (v8 + 1024));
        if (v236.__r_.__value_.__s.__data_[8] == 1)
        {
          if (v236.__r_.__value_.__s.__data_[7] < 0)
          {
            std::string::__init_copy_ctor_external(&v216, v235, *(&v235 + 1));
          }

          else
          {
            *&v216.__r_.__value_.__l.__data_ = v235;
            v216.__r_.__value_.__r.__words[2] = v236.__r_.__value_.__r.__words[0];
          }

          if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v216;
          }

          else
          {
            v36 = v216.__r_.__value_.__r.__words[0];
          }

          v217 = xpc_string_create(v36);
          if (!v217)
          {
            v217 = xpc_null_create();
          }

          v215[0] = this + 160;
          v215[1] = "phone_number_list_type";
          xpc::dict::object_proxy::operator=(v215, &v217, &v218);
          xpc_release(v218);
          v218 = 0;
          xpc_release(v217);
          v217 = 0;
          if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v216.__r_.__value_.__l.__data_);
          }

          if ((v236.__r_.__value_.__s.__data_[8] & 1) != 0 && v236.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v235);
          }
        }

        v213 = xpc_string_create("ATM_CALL_Normal");
        if (!v213)
        {
          v213 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "invite_type";
        xpc::dict::object_proxy::operator=(&v235, &v213, &v214);
        xpc_release(v214);
        v214 = 0;
        xpc_release(v213);
        v213 = 0;
        if (a3 == 255)
        {
          v37 = (*(*v13 + 64))(v13);
          (*(*v13 + 16))(v13, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), " Conference terminated ", 23);
          *(v37 + 17) = 0;
          (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v37 + 17) = 0;
          v211 = xpc_string_create("ATM_CALL_TYPE_CONF");
          if (!v211)
          {
            v211 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "invite_type";
          xpc::dict::object_proxy::operator=(&v235, &v211, &v212);
          xpc_release(v212);
          v212 = 0;
          xpc_release(v211);
          v211 = 0;
        }

        if (*(v8 + 1529) == 1)
        {
          if (*(v8 + 1728))
          {
            v38 = (*(*v13 + 64))(v13);
            (*(*v13 + 16))(v13, v38);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Call setup delay is ", 20);
            *(v38 + 17) = 0;
            MEMORY[0x1E69233B0](*(v38 + 8), *(v8 + 1728) - *(v8 + 1744));
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " ms", 3);
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " reason is ", 11);
            *(v38 + 17) = 0;
            MEMORY[0x1E6923340](*(v38 + 8), *(a2 + 8));
            *(v38 + 17) = 0;
            (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v38 + 17) = 0;
            v209 = xpc_int64_create((*(v8 + 1728) - *(v8 + 1744)));
            if (!v209)
            {
              v209 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "call_setup_delay";
            xpc::dict::object_proxy::operator=(&v235, &v209, &v210);
            xpc_release(v210);
            v210 = 0;
            xpc_release(v209);
            v209 = 0;
          }

          else
          {
            v39 = *(v8 + 1776);
            if (v39)
            {
              v40 = *(v8 + 1744);
              v41 = v39 - v40;
              v207 = xpc_int64_create((v39 - v40));
              if (!v207)
              {
                v207 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "call_setup_delay";
              xpc::dict::object_proxy::operator=(&v235, &v207, &v208);
              xpc_release(v208);
              v208 = 0;
              xpc_release(v207);
              v207 = 0;
              v42 = (*(*v13 + 64))(v13);
              (*(*v13 + 16))(v13, v42);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "Call setup delay was ", 21);
              *(v42 + 17) = 0;
              MEMORY[0x1E6923350](*(v42 + 8), v41);
              *(v42 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " ms", 3);
              *(v42 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " reason is ", 11);
              *(v42 + 17) = 0;
              MEMORY[0x1E6923340](*(v42 + 8), *(a2 + 8));
              *(v42 + 17) = 0;
              (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v42 + 17) = 0;
            }
          }

          v43 = *(v8 + 1736);
          if (v43)
          {
            v205 = xpc_int64_create((v43 - *(v8 + 1744)));
            if (!v205)
            {
              v205 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "call_setup_delay_ringing";
            xpc::dict::object_proxy::operator=(&v235, &v205, &v206);
            xpc_release(v206);
            v206 = 0;
            xpc_release(v205);
            v205 = 0;
          }
        }

        v44 = std::__shared_weak_count::lock(*(v8 + 384));
        v45 = *(v8 + 376);
        v46 = *(v45 + 248);
        v47 = *(v45 + 256);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = SipUserAgent::config(v46);
        v203 = xpc_BOOL_create(*(v48 + 456));
        if (!v203)
        {
          v203 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "is_primary_device";
        xpc::dict::object_proxy::operator=(&v235, &v203, &v204);
        xpc_release(v204);
        v204 = 0;
        xpc_release(v203);
        v203 = 0;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        v201 = xpc_int64_create(*a4);
        if (!v201)
        {
          v201 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "amr_mode";
        xpc::dict::object_proxy::operator=(&v235, &v201, &v202);
        xpc_release(v202);
        v202 = 0;
        xpc_release(v201);
        v201 = 0;
        v49 = ims::analytics::asString(*(a4 + 1));
        v199 = xpc_string_create(v49);
        if (!v199)
        {
          v199 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "codec";
        xpc::dict::object_proxy::operator=(&v235, &v199, &v200);
        xpc_release(v200);
        v200 = 0;
        xpc_release(v199);
        v199 = 0;
        v197 = xpc_BOOL_create(*(v8 + 1529));
        if (!v197)
        {
          v197 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "outgoing";
        xpc::dict::object_proxy::operator=(&v235, &v197, &v198);
        xpc_release(v198);
        v198 = 0;
        xpc_release(v197);
        v197 = 0;
        v195 = xpc_BOOL_create(*(this + 177));
        if (!v195)
        {
          v195 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "multiparty";
        xpc::dict::object_proxy::operator=(&v235, &v195, &v196);
        xpc_release(v196);
        v196 = 0;
        xpc_release(v195);
        v195 = 0;
        if (*(a4 + 8) == 1)
        {
          if (!*(a4 + 25))
          {
LABEL_142:
            v112 = 0;
            goto LABEL_145;
          }
        }

        else if (!*(a4 + 53))
        {
          goto LABEL_142;
        }

        v112 = 1;
LABEL_145:
        v50 = *(v8 + 464);
        if (v50 < 1)
        {
          v64 = (*(*v13 + 64))(v13);
          (*(*v13 + 16))(v13, v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v64 + 8), " Call ", 6);
          *(v64 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&v235, (v8 + 504));
          (*(*v64 + 56))(v64, &v235);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v64 + 8), " was not set up", 15);
          *(v64 + 17) = 0;
          (*(*v64 + 64))(v64, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v64 + 17) = 0;
          if (SHIBYTE(v237) < 0)
          {
            operator delete(v236.__r_.__value_.__l.__size_);
          }

          if (v236.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v235);
          }

          v179 = xpc_BOOL_create(0);
          if (!v179)
          {
            v179 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "isConnected";
          xpc::dict::object_proxy::operator=(&v235, &v179, &v180);
          xpc_release(v180);
          v180 = 0;
          xpc_release(v179);
          v179 = 0;
        }

        else
        {
          v52 = *(a4 + 2);
          v51 = *(a4 + 3);
          v193 = xpc_int64_create(*(this + 21) - v50);
          if (!v193)
          {
            v193 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "duration";
          xpc::dict::object_proxy::operator=(&v235, &v193, &v194);
          xpc_release(v194);
          v194 = 0;
          xpc_release(v193);
          v193 = 0;
          v191 = xpc_BOOL_create(1);
          if (!v191)
          {
            v191 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "two_way_audio";
          xpc::dict::object_proxy::operator=(&v235, &v191, &v192);
          xpc_release(v192);
          v192 = 0;
          xpc_release(v191);
          v191 = 0;
          v189 = xpc_int64_create(1);
          if (!v189)
          {
            v189 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "audios";
          xpc::dict::object_proxy::operator=(&v235, &v189, &v190);
          xpc_release(v190);
          v190 = 0;
          xpc_release(v189);
          v189 = 0;
          v187 = xpc_BOOL_create(1);
          if (!v187)
          {
            v187 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "isConnected";
          xpc::dict::object_proxy::operator=(&v235, &v187, &v188);
          xpc_release(v188);
          v188 = 0;
          xpc_release(v187);
          v187 = 0;
          v53 = (*(*v13 + 64))(v13);
          (*(*v13 + 16))(v13, v53);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), "Call-end-duration=", 18);
          *(v53 + 17) = 0;
          MEMORY[0x1E6923360](*(v53 + 8), *(this + 21) - *(v8 + 464));
          *(v53 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), " time-since-last-recv=", 22);
          *(v53 + 17) = 0;
          MEMORY[0x1E6923360](*(v53 + 8), *(this + 21) - *(a4 + 3));
          *(v53 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), " time-since-last-send=", 22);
          *(v53 + 17) = 0;
          MEMORY[0x1E6923360](*(v53 + 8), *(this + 21) - *(a4 + 2));
          *(v53 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), " in-remote-rtcp=", 16);
          *(v53 + 17) = 0;
          if (v112)
          {
            v54 = "yes";
          }

          else
          {
            v54 = "no";
          }

          if (v112)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), v54, v55);
          *(v53 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), " local-hold=", 12);
          *(v53 + 17) = 0;
          v56 = *(v8 + 480);
          if (v56 == 3)
          {
            v57 = "yes";
          }

          else
          {
            v57 = "no";
          }

          if (v56 == 3)
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), v57, v58);
          *(v53 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), " remote-hold=", 13);
          *(v53 + 17) = 0;
          v59 = *(v8 + 484);
          if (v59 <= 2)
          {
            v60 = "no";
          }

          else
          {
            v60 = "yes";
          }

          if (v59 <= 2)
          {
            v61 = 2;
          }

          else
          {
            v61 = 3;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), v60, v61);
          *(v53 + 17) = 0;
          (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v53 + 17) = 0;
          v62 = *(this + 21);
          if (v62 - v51 > 9 || (v63 = *(v8 + 464), v63 == v51))
          {
            if (v62 - v52 > 9 || *(v8 + 464) == v52)
            {
              v185 = xpc_int64_create(2);
              if (!v185)
              {
                v185 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "audios";
              xpc::dict::object_proxy::operator=(&v235, &v185, &v186);
              xpc_release(v186);
              v186 = 0;
              xpc_release(v185);
              v185 = 0;
            }

            else
            {
              v183 = xpc_int64_create(3);
              if (!v183)
              {
                v183 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "audios";
              xpc::dict::object_proxy::operator=(&v235, &v183, &v184);
              xpc_release(v184);
              v184 = 0;
              xpc_release(v183);
              v183 = 0;
            }
          }

          else if (v112 && (v62 - v52 > 9 || v52 == v63))
          {
            v181 = xpc_int64_create(4);
            if (!v181)
            {
              v181 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "audios";
            xpc::dict::object_proxy::operator=(&v235, &v181, &v182);
            xpc_release(v182);
            v182 = 0;
            xpc_release(v181);
            v181 = 0;
          }
        }

        if (*(a4 + 53))
        {
          if (*(a4 + 21))
          {
            v66 = (*(*v13 + 64))(v13);
            (*(*v13 + 16))(v13, v66);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v66 + 8), " volteRtcpRemote.packetLost ", 28);
            *(v66 + 17) = 0;
            MEMORY[0x1E6923350](*(v66 + 8), *(a4 + 61));
            *(v66 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v66 + 8), " volteRtcpLocal.senderCount = ", 30);
            *(v66 + 17) = 0;
            MEMORY[0x1E69233B0](*(v66 + 8), *(a4 + 21));
            *(v66 + 17) = 0;
            (*(*v66 + 64))(v66, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v66 + 17) = 0;
          }

          else
          {
            v177 = xpc_BOOL_create(0);
            if (!v177)
            {
              v177 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "two_way_audio";
            xpc::dict::object_proxy::operator=(&v235, &v177, &v178);
            xpc_release(v178);
            v178 = 0;
            xpc_release(v177);
            v177 = 0;
          }
        }

        else if (*(a4 + 39))
        {
          if (*(a4 + 25))
          {
            if (*(a4 + 54) && !*(a4 + 32))
            {
              v171 = xpc_BOOL_create(0);
              if (!v171)
              {
                v171 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "two_way_audio";
              xpc::dict::object_proxy::operator=(&v235, &v171, &v172);
              xpc_release(v172);
              v172 = 0;
              xpc_release(v171);
              v171 = 0;
              if (*(a4 + 21))
              {
                v67 = 4;
              }

              else
              {
                v67 = 2;
              }

              v169 = xpc_int64_create(v67);
              if (!v169)
              {
                v169 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "audios";
              xpc::dict::object_proxy::operator=(&v235, &v169, &v170);
              xpc_release(v170);
              v170 = 0;
              xpc_release(v169);
              v169 = 0;
            }
          }

          else
          {
            v175 = xpc_BOOL_create(0);
            if (!v175)
            {
              v175 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "two_way_audio";
            xpc::dict::object_proxy::operator=(&v235, &v175, &v176);
            xpc_release(v176);
            v176 = 0;
            xpc_release(v175);
            v175 = 0;
            if (*(a4 + 21))
            {
              v69 = 3;
            }

            else
            {
              v69 = 2;
            }

            v173 = xpc_int64_create(v69);
            if (!v173)
            {
              v173 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "audios";
            xpc::dict::object_proxy::operator=(&v235, &v173, &v174);
            xpc_release(v174);
            v174 = 0;
            xpc_release(v173);
            v173 = 0;
          }
        }

        if (*(a4 + 25))
        {
          if (*(a4 + 7))
          {
            v70 = (*(*v13 + 64))(v13);
            (*(*v13 + 16))(v13, v70);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), " wifiRtcpRemote.packetLost ", 27);
            *(v70 + 17) = 0;
            MEMORY[0x1E6923350](*(v70 + 8), *(a4 + 33));
            *(v70 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), " wifiRtcpLocal.senderCount = ", 29);
            *(v70 + 17) = 0;
            MEMORY[0x1E69233B0](*(v70 + 8), *(a4 + 7));
            *(v70 + 17) = 0;
            (*(*v70 + 64))(v70, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v70 + 17) = 0;
          }

          else
          {
            v167 = xpc_BOOL_create(0);
            if (!v167)
            {
              v167 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "two_way_audio";
            xpc::dict::object_proxy::operator=(&v235, &v167, &v168);
            xpc_release(v168);
            v168 = 0;
            xpc_release(v167);
            v167 = 0;
          }
        }

        else if (*(a4 + 11))
        {
          if (*(a4 + 11))
          {
            if (*(a4 + 26) && !*(a4 + 18))
            {
              v161 = xpc_BOOL_create(0);
              if (!v161)
              {
                v161 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "two_way_audio";
              xpc::dict::object_proxy::operator=(&v235, &v161, &v162);
              xpc_release(v162);
              v162 = 0;
              xpc_release(v161);
              v161 = 0;
              if (*(a4 + 7))
              {
                v71 = 4;
              }

              else
              {
                v71 = 2;
              }

              v159 = xpc_int64_create(v71);
              if (!v159)
              {
                v159 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "audios";
              xpc::dict::object_proxy::operator=(&v235, &v159, &v160);
              xpc_release(v160);
              v160 = 0;
              xpc_release(v159);
              v159 = 0;
            }
          }

          else
          {
            v165 = xpc_BOOL_create(0);
            if (!v165)
            {
              v165 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "two_way_audio";
            xpc::dict::object_proxy::operator=(&v235, &v165, &v166);
            xpc_release(v166);
            v166 = 0;
            xpc_release(v165);
            v165 = 0;
            if (*(a4 + 7))
            {
              v72 = 3;
            }

            else
            {
              v72 = 2;
            }

            v163 = xpc_int64_create(v72);
            if (!v163)
            {
              v163 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "audios";
            xpc::dict::object_proxy::operator=(&v235, &v163, &v164);
            xpc_release(v164);
            v164 = 0;
            xpc_release(v163);
            v163 = 0;
          }
        }

        v157 = xpc_string_create("ATM_CALL_End_Normal");
        if (!v157)
        {
          v157 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "callEndStatus";
        xpc::dict::object_proxy::operator=(&v235, &v157, &v158);
        xpc_release(v158);
        v158 = 0;
        xpc_release(v157);
        v157 = 0;
        v155 = xpc_BOOL_create(0);
        if (!v155)
        {
          v155 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "is_televcc";
        xpc::dict::object_proxy::operator=(&v235, &v155, &v156);
        xpc_release(v156);
        v156 = 0;
        xpc_release(v155);
        v155 = 0;
        v153 = xpc_int64_create(2);
        if (!v153)
        {
          v153 = xpc_null_create();
        }

        *&v235 = this + 160;
        *(&v235 + 1) = "ectStatus";
        xpc::dict::object_proxy::operator=(&v235, &v153, &v154);
        xpc_release(v154);
        v154 = 0;
        xpc_release(v153);
        v153 = 0;
        v73 = *(v8 + 1848);
        if (v73)
        {
          if (v73 == 2)
          {
            v151 = xpc_int64_create(0);
            if (!v151)
            {
              v151 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "ectStatus";
            xpc::dict::object_proxy::operator=(&v235, &v151, &v152);
            xpc_release(v152);
            v152 = 0;
            xpc_release(v151);
            v151 = 0;
          }

          else
          {
            v149 = xpc_int64_create(1);
            if (!v149)
            {
              v149 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "ectStatus";
            xpc::dict::object_proxy::operator=(&v235, &v149, &v150);
            xpc_release(v150);
            v150 = 0;
            xpc_release(v149);
            v149 = 0;
          }
        }

        if (*(a2 + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&v235, *(a2 + 15), *(a2 + 16));
        }

        else
        {
          v235 = *(a2 + 120);
          v236.__r_.__value_.__r.__words[0] = *(a2 + 17);
        }

        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          v74 = *(&v235 + 1);
          operator delete(v235);
          if (!v74)
          {
            goto LABEL_289;
          }
        }

        else if (!v236.__r_.__value_.__s.__data_[7])
        {
          goto LABEL_289;
        }

        if (*(a2 + 143) < 0)
        {
          std::string::__init_copy_ctor_external(&v235, *(a2 + 15), *(a2 + 16));
        }

        else
        {
          v235 = *(a2 + 120);
          v236.__r_.__value_.__r.__words[0] = *(a2 + 17);
        }

        if (v236.__r_.__value_.__s.__data_[7] >= 0)
        {
          v75 = &v235;
        }

        else
        {
          v75 = v235;
        }

        v147 = xpc_string_create(v75);
        if (!v147)
        {
          v147 = xpc_null_create();
        }

        v216.__r_.__value_.__r.__words[0] = this + 160;
        v216.__r_.__value_.__l.__size_ = "q_reason";
        xpc::dict::object_proxy::operator=(&v216, &v147, &v148);
        xpc_release(v148);
        v148 = 0;
        xpc_release(v147);
        v147 = 0;
        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v235);
        }

LABEL_289:
        if (v17)
        {
          if (!*(v17 + 128))
          {
            goto LABEL_390;
          }

          v76 = (*(*v13 + 64))(v13);
          (*(*v13 + 16))(v13, v76);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), " Call ", 6);
          *(v76 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&v235, (v8 + 504));
          (*(*v76 + 56))(v76, &v235);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), " IMS code ", 10);
          *(v76 + 17) = 0;
          MEMORY[0x1E6923350](*(v76 + 8), *(v17 + 128));
          *(v76 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), " event reason ", 14);
          *(v76 + 17) = 0;
          MEMORY[0x1E6923340](*(v76 + 8), *(a2 + 8));
          *(v76 + 17) = 0;
          (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v76 + 17) = 0;
          if (SHIBYTE(v237) < 0)
          {
            operator delete(v236.__r_.__value_.__l.__size_);
          }

          if (v236.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v235);
          }

          v235 = 0uLL;
          v236.__r_.__value_.__r.__words[0] = 0;
          v77 = qword_1EE2BD560;
          if (qword_1EE2BD560)
          {
            v78 = *(v17 + 128);
            v79 = &qword_1EE2BD560;
            do
            {
              v80 = *(v77 + 32);
              v81 = v80 >= v78;
              v82 = v80 < v78;
              if (v81)
              {
                v79 = v77;
              }

              v77 = *(v77 + 8 * v82);
            }

            while (v77);
            v83 = &ims::kEmptyString;
            if (v79 != &qword_1EE2BD560)
            {
              v84 = *(v79 + 8);
              v85 = (v79 + 5);
              if (v84 <= v78)
              {
                v83 = v85;
              }
            }
          }

          else
          {
            v83 = &ims::kEmptyString;
          }

          if (*(v83 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v235, *v83, *(v83 + 1));
          }

          else
          {
            v235 = *v83;
            v236.__r_.__value_.__r.__words[0] = *(v83 + 2);
          }

          v88 = v236.__r_.__value_.__s.__data_[7];
          v89 = v236.__r_.__value_.__s.__data_[7];
          if (v236.__r_.__value_.__s.__data_[7] < 0)
          {
            v88 = *(&v235 + 1);
          }

          if (v88)
          {
            if (v236.__r_.__value_.__s.__data_[7] >= 0)
            {
              v90 = &v235;
            }

            else
            {
              v90 = v235;
            }

            v145 = xpc_string_create(v90);
            if (!v145)
            {
              v145 = xpc_null_create();
            }

            v216.__r_.__value_.__r.__words[0] = this + 160;
            v216.__r_.__value_.__l.__size_ = "status_code";
            xpc::dict::object_proxy::operator=(&v216, &v145, &v146);
            xpc_release(v146);
            v146 = 0;
            xpc_release(v145);
            v145 = 0;
            v89 = v236.__r_.__value_.__s.__data_[7];
          }

          if (v89 < 0)
          {
            operator delete(v235);
          }

          v143 = xpc_int64_create(*(v17 + 128));
          if (!v143)
          {
            v143 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "sip_status_code";
          xpc::dict::object_proxy::operator=(&v235, &v143, &v144);
          xpc_release(v144);
          v144 = 0;
          xpc_release(v143);
          v143 = 0;
          if (*(v17 + 128) != 380)
          {
            goto LABEL_390;
          }

          v235 = 0uLL;
          v236.__r_.__value_.__r.__words[0] = 0;
          if (*(v8 + 1279) < 0)
          {
            std::string::__init_copy_ctor_external(&v235, *(v8 + 1256), *(v8 + 1264));
          }

          else
          {
            v235 = *(v8 + 1256);
            v236.__r_.__value_.__r.__words[0] = *(v8 + 1272);
          }

          v100 = v236.__r_.__value_.__s.__data_[7];
          if ((v236.__r_.__value_.__s.__data_[7] & 0x8000000000000000) != 0)
          {
            v100 = *(&v235 + 1);
            if (!*(&v235 + 1))
            {
LABEL_377:
              operator delete(v235);
              goto LABEL_378;
            }

            v101 = v235;
          }

          else
          {
            if (!v236.__r_.__value_.__s.__data_[7])
            {
LABEL_378:
              v104 = SipMessage::header<SipContactHeader>(v17);
              if (v104)
              {
                v105 = v104[9];
                if (v105)
                {
                  if (v105 != v104[10] && SipUri::isEmergencyUrn((v105 + 8)) && SipUri::getEmergencySubservice((v105 + 8)) != 6)
                  {
                    SipUri::asString(v105 + 8, &v235);
                    if (v236.__r_.__value_.__s.__data_[7] >= 0)
                    {
                      v106 = &v235;
                    }

                    else
                    {
                      v106 = v235;
                    }

                    v139 = xpc_string_create(v106);
                    if (!v139)
                    {
                      v139 = xpc_null_create();
                    }

                    v216.__r_.__value_.__r.__words[0] = this + 160;
                    v216.__r_.__value_.__l.__size_ = "redial_contact_urn";
                    xpc::dict::object_proxy::operator=(&v216, &v139, &v140);
                    xpc_release(v140);
                    v140 = 0;
                    xpc_release(v139);
                    v139 = 0;
                    if (v236.__r_.__value_.__s.__data_[7] < 0)
                    {
                      operator delete(v235);
                    }
                  }
                }
              }

LABEL_390:
              if (*(a4 + 3))
              {
              }

              else
              {
                v137 = xpc_string_create("ATM_CALL_END_Bchannel_Error");
                if (!v137)
                {
                  v137 = xpc_null_create();
                }

                *&v235 = this + 160;
                *(&v235 + 1) = "end_reason";
                xpc::dict::object_proxy::operator=(&v235, &v137, &v138);
                xpc_release(v138);
                v138 = 0;
                xpc_release(v137);
                v137 = 0;
                v107 = ims::analytics::asString(*(a4 + 1));
                v135 = xpc_string_create(v107);
                if (!v135)
                {
                  v135 = xpc_null_create();
                }

                *&v235 = this + 160;
                *(&v235 + 1) = "status_code";
                xpc::dict::object_proxy::operator=(&v235, &v135, &v136);
                xpc_release(v136);
                v136 = 0;
                xpc_release(v135);
                v135 = 0;
                atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
                if (v236.__r_.__value_.__s.__data_[7] >= 0)
                {
                  v108 = &v235;
                }

                else
                {
                  v108 = v235;
                }

                v133 = xpc_string_create(v108);
                if (!v133)
                {
                  v133 = xpc_null_create();
                }

                v216.__r_.__value_.__r.__words[0] = this + 160;
                v216.__r_.__value_.__l.__size_ = "callEndStatus";
                xpc::dict::object_proxy::operator=(&v216, &v133, &v134);
                xpc_release(v134);
                v134 = 0;
                xpc_release(v133);
                v133 = 0;
                if (v236.__r_.__value_.__s.__data_[7] < 0)
                {
                  operator delete(v235);
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v114);
              }

LABEL_404:
              v109 = *(this + 20);
              v118 = v109;
              if (v109)
              {
                xpc_retain(v109);
                v110 = v113;
              }

              else
              {
                v110 = v113;
                v118 = xpc_null_create();
              }

              v116 = 0;
              v117 = 0;
              v111 = *(v8 + 384);
              if (v111)
              {
                v117 = std::__shared_weak_count::lock(v111);
                if (v117)
                {
                  v116 = *(v8 + 376);
                }
              }

              v9 = v114;
              ims::analytics::populateCellularInfo(&v118, &v116);
              if (v117)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v117);
              }

              xpc_release(v118);
              v118 = 0;
              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v110);
              }

              if (v249)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v249);
              }

              goto LABEL_416;
            }

            v101 = &v235;
          }

          v102 = 0;
          do
          {
            v103 = *v101;
            if ((v103 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v103 + 60) & 0x400) != 0)
            {
              ++v102;
            }

            v101 = (v101 + 1);
            --v100;
          }

          while (v100);
          v141 = xpc_BOOL_create(v102 > 5);
          if (!v141)
          {
            v141 = xpc_null_create();
          }

          v216.__r_.__value_.__r.__words[0] = this + 160;
          v216.__r_.__value_.__l.__size_ = "phone_number_is_long";
          xpc::dict::object_proxy::operator=(&v216, &v141, &v142);
          xpc_release(v142);
          v142 = 0;
          xpc_release(v141);
          v141 = 0;
          if ((v236.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
          {
            goto LABEL_378;
          }

          goto LABEL_377;
        }

        v86 = *(v8 + 464);
        if (v86 >= 1)
        {
          v131 = xpc_int64_create((v86 - *(v8 + 456)));
          if (!v131)
          {
            v131 = xpc_null_create();
          }

          *&v235 = this + 160;
          *(&v235 + 1) = "call_answering_delay";
          xpc::dict::object_proxy::operator=(&v235, &v131, &v132);
          xpc_release(v132);
          v132 = 0;
          xpc_release(v131);
          v131 = 0;
        }

        v87 = (*(*v13 + 64))(v13);
        (*(*v13 + 16))(v13, v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v87 + 8), " callend reason is  ", 20);
        *(v87 + 17) = 0;
        MEMORY[0x1E6923340](*(v87 + 8), *(a2 + 8));
        *(v87 + 17) = 0;
        (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v87 + 17) = 0;
        if (*(a2 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v235, *(a2 + 8), *(a2 + 9));
        }

        else
        {
          v235 = *(a2 + 4);
          v236.__r_.__value_.__r.__words[0] = *(a2 + 10);
        }

        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          v91 = *(&v235 + 1);
          operator delete(v235);
          if (!v91)
          {
LABEL_346:
            v127 = xpc_int64_create((*(a4 + 34) - *(a4 + 33)) >> 3);
            if (!v127)
            {
              v127 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "handover_counts";
            xpc::dict::object_proxy::operator=(&v235, &v127, &v128);
            xpc_release(v128);
            v128 = 0;
            xpc_release(v127);
            v127 = 0;
            v93 = *(a4 + 33);
            v94 = *(a4 + 34);
            if (v93 == v94)
            {
              v96 = 0;
              v95 = 0;
            }

            else
            {
              LODWORD(v95) = 0;
              LODWORD(v96) = 0;
              do
              {
                v97 = *(v93 + 4);
                v96 = (v96 + v97);
                v95 = v95 + (v97 ^ 1);
                v93 += 8;
              }

              while (v93 != v94);
            }

            v125 = xpc_int64_create(v96);
            if (!v125)
            {
              v125 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "cell_to_wifi_handover_counts";
            xpc::dict::object_proxy::operator=(&v235, &v125, &v126);
            xpc_release(v126);
            v126 = 0;
            xpc_release(v125);
            v125 = 0;
            v123 = xpc_int64_create(v95);
            if (!v123)
            {
              v123 = xpc_null_create();
            }

            *&v235 = this + 160;
            *(&v235 + 1) = "wifi_to_cell_handover_counts";
            xpc::dict::object_proxy::operator=(&v235, &v123, &v124);
            xpc_release(v124);
            v124 = 0;
            xpc_release(v123);
            v123 = 0;
            if (!*(a4 + 3))
            {
              v121 = xpc_string_create("ATM_CALL_END_Bchannel_Error");
              if (!v121)
              {
                v121 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "end_reason";
              xpc::dict::object_proxy::operator=(&v235, &v121, &v122);
              xpc_release(v122);
              v122 = 0;
              xpc_release(v121);
              v121 = 0;
              v98 = ims::analytics::asString(*(a4 + 1));
              v119 = xpc_string_create(v98);
              if (!v119)
              {
                v119 = xpc_null_create();
              }

              *&v235 = this + 160;
              *(&v235 + 1) = "status_code";
              xpc::dict::object_proxy::operator=(&v235, &v119, &v120);
              xpc_release(v120);
              v120 = 0;
              xpc_release(v119);
              v119 = 0;
              v99 = (*(*v13 + 64))(v13);
              (*(*v13 + 16))(v13, v99);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v99 + 8), " reason rtp error code ", 23);
              *(v99 + 17) = 0;
              MEMORY[0x1E6923350](*(v99 + 8), *(a4 + 1));
              *(v99 + 17) = 0;
              (*(*v99 + 64))(v99, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v99 + 17) = 0;
            }

            goto LABEL_404;
          }
        }

        else if (!v236.__r_.__value_.__s.__data_[7])
        {
          goto LABEL_346;
        }

        if (*(a2 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v235, *(a2 + 8), *(a2 + 9));
        }

        else
        {
          v235 = *(a2 + 4);
          v236.__r_.__value_.__r.__words[0] = *(a2 + 10);
        }

        if (v236.__r_.__value_.__s.__data_[7] >= 0)
        {
          v92 = &v235;
        }

        else
        {
          v92 = v235;
        }

        v129 = xpc_string_create(v92);
        if (!v129)
        {
          v129 = xpc_null_create();
        }

        v216.__r_.__value_.__r.__words[0] = this + 160;
        v216.__r_.__value_.__l.__size_ = "q_reason";
        xpc::dict::object_proxy::operator=(&v216, &v129, &v130);
        xpc_release(v130);
        v130 = 0;
        xpc_release(v129);
        v129 = 0;
        if (v236.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v235);
        }

        goto LABEL_346;
      }
    }
  }
}