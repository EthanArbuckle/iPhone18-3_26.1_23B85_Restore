void sub_1E4F71370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRequest::canUpdateOutboundViaHeader(SipRequest *this)
{
  v1 = (this + 128);
  v2 = *(this + 151);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(this + 17);
  }

  if (v2 == 6)
  {
    if (v3 < 0)
    {
      v1 = *v1;
    }

    v8 = *v1;
    v9 = v1[2];
    v7 = v8 == 1129201987 && v9 == 19525;
  }

  else
  {
    if (v2 != 3)
    {
      goto LABEL_11;
    }

    if (v3 < 0)
    {
      v1 = *v1;
    }

    v4 = *v1;
    v5 = *(v1 + 2);
    if (v4 == 17217 && v5 == 75)
    {
      v7 = *(this + 560);
    }

    else
    {
LABEL_11:
      v7 = 0;
    }
  }

  return (v7 & 1) == 0;
}

double SipRequest::updateInboundViaHeader@<D0>(SipMessage *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(a1, 0);
  if (HeaderWith && (v6 = HeaderWith[8], v6 != HeaderWith[9]) && (v7 = *v6) != 0)
  {
    if (SipViaHop::supportsRport(*v6))
    {
      v8 = (*(**a2 + 56))();
      SipViaHop::setRport(v7, v8);
      goto LABEL_13;
    }

    v11 = *(v7 + 39);
    if (v11 < 0)
    {
      v11 = *(v7 + 3);
    }

    if (v11)
    {
      goto LABEL_13;
    }

    SipHost::address((v7 + 8), &v13);
    v12 = (*(*v13 + 104))(v13, a2, 0);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if ((v12 & 1) == 0)
    {
LABEL_13:
      SipViaHop::setReceived(v7, a2);
    }

    result = 0.0;
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
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = &unk_1F5EBDEF8;
    v14 = &_bambiDomain;
    v15 = 1073741828;
    v9 = ImsResult::operator<<<char [19]>(&v13, "invalid Via header");
    ImsResult::ImsResult(a3, v9);
    ImsResult::~ImsResult(&v13);
  }

  return result;
}

void sub_1E4F71604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void SipRequest::validate(SipRequest *this@<X0>, uint64_t a2@<X8>)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  SipMessage::validate(this, &v25);
  if ((*(**(&v25 + 1) + 24))(*(&v25 + 1), v26))
  {
    ImsResult::ImsResult(a2, &v25);
  }

  else
  {
    v4 = SipMessage::header<SipCSeqHeader>(this);
    if (v4)
    {
      v5 = (v4 + 64);
    }

    else
    {
      v5 = &ims::kEmptyString;
    }

    v6 = (*(*this + 120))(this);
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 1);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 == v9 && (v7 >= 0 ? (v11 = v5) : (v11 = *v5), v10 >= 0 ? (v12 = v6) : (v12 = *v6), !memcmp(v11, v12, v8)))
    {
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v19[0] = &unk_1F5EBDEF8;
      v19[1] = &_bambiDomain;
      v20 = 1073741828;
      v13 = (*(*this + 120))(this);
      v14 = ImsResult::operator<<<std::string>(v19, v13);
      v15 = ImsResult::operator<<<char [26]>(v14, " request has CSeq method ");
      v16 = SipMessage::header<SipCSeqHeader>(this);
      if (v16)
      {
        v17 = (v16 + 64);
      }

      else
      {
        v17 = &ims::kEmptyString;
      }

      v18 = ImsResult::operator<<<std::string>(v15, v17);
      ImsResult::ImsResult(a2, v18);
      ImsResult::~ImsResult(v19);
    }
  }

  ImsResult::~ImsResult(&v25);
}

void sub_1E4F71854(_Unwind_Exception *a1, uint64_t a2, ...)
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
  ImsResult::~ImsResult(va1);
  _Unwind_Resume(a1);
}

BOOL SipRequest::needsDefaultRoute(SipRequest *this)
{
  v1 = *(this + 151);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(this + 17);
  }

  if (v1 == 8)
  {
    v3 = v2 >= 0 ? (this + 128) : *(this + 16);
    if (*v3 == 0x5245545349474552)
    {
      return 0;
    }
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 9, "Route");
  return !v4 || v4[5] == 0;
}

uint64_t SipRequest::createMatchingRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 120);
  if (result)
  {
    v5 = *(a1 + 151);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 136);
    }

    if (v5 == 6)
    {
      if (v6 >= 0)
      {
        v7 = (a1 + 128);
      }

      else
      {
        v7 = *(a1 + 128);
      }

      v8 = *v7;
      v9 = *(v7 + 2);
      if (v8 == 1230392905 && v9 == 17748)
      {
        *a2 = 0;
        a2[1] = 0;
        SipMessageEncodingMap::createRequestFromTemplate(result, a2);
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1E4F71B28(_Unwind_Exception *a1)
{
  MEMORY[0x1E69235B0](v2, 0x10B3C4006157D98);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<SipMessage const,SharedImsResultItem const>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void SipRequest::createMatchingCancel(SipRequest *this@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  SipRequest::createMatchingRequest(this, &v9);
  v4 = v9;
  if (v9)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v5, this + 1);
    std::dynamic_pointer_cast[abi:ne200100]<SipMessage const,SharedImsResultItem const>(&v5, &v7);
    SipMessage::copyHeaderFromMessage(v4, &v7, &SipHeader::kHeaderTo);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }
  }
}

void sub_1E4F71CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

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

void SipRequest::createMatchingAckForResponse(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0uLL;
  SipRequest::createMatchingRequest(a1, &v9);
  v5 = v9;
  if (v9)
  {
    *(v9 + 560) = 1;
    v6 = *a2;
    v7 = a2[1];
    v8[0] = v6;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipMessage::copyHeaderFromMessage(v5, v8, &SipHeader::kHeaderTo);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    *a3 = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }
  }
}

void sub_1E4F71DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
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

uint64_t SipRequest::identityTypeFromString(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v26, "first");
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v27;
  v4 = v26[0];
  if (v27 >= 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = v26[0];
  }

  v6 = strcasecmp(v2, v5);
  v7 = v6;
  if ((v3 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  operator delete(v4);
  if (!v7)
  {
    return 0;
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(v26, "tel");
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v27;
  v10 = v26[0];
  if (v27 >= 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v26[0];
  }

  v12 = strcasecmp(v8, v11);
  v13 = v12;
  if ((v9 & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    return 2;
  }

  operator delete(v10);
  if (!v13)
  {
    return 2;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(v26, "sip");
  if (*(a1 + 23) >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  v15 = v27;
  v16 = v26[0];
  if (v27 >= 0)
  {
    v17 = v26;
  }

  else
  {
    v17 = v26[0];
  }

  v18 = strcasecmp(v14, v17);
  v19 = v18;
  if (v15 < 0)
  {
    operator delete(v16);
    if (v19)
    {
      goto LABEL_25;
    }

    return 1;
  }

  if (!v18)
  {
    return 1;
  }

LABEL_25:
  std::string::basic_string[abi:ne200100]<0>(v26, "from");
  if (*(a1 + 23) >= 0)
  {
    v20 = a1;
  }

  else
  {
    v20 = *a1;
  }

  v21 = v27;
  v22 = v26[0];
  if (v27 >= 0)
  {
    v23 = v26;
  }

  else
  {
    v23 = v26[0];
  }

  v24 = strcasecmp(v20, v23);
  if (v21 < 0)
  {
    operator delete(v22);
  }

  if (v24)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t SipRequest::headerWithAuthScheme(uint64_t a1, const void **a2)
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

    if (v10 >= 0xD)
    {
      v12 = 13;
    }

    else
    {
      v12 = v10;
    }

    v13 = memcmp(v11, "Authorization", v12);
    if (v10 == 13 && v13 == 0)
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

void sub_1E4F72244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void SipRequest::~SipRequest(void **this)
{
  *this = &unk_1F5EE1BE0;
  SipUri::~SipUri((this + 19));
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  SipMessage::~SipMessage(this);
}

{
  *this = &unk_1F5EE1BE0;
  SipUri::~SipUri((this + 19));
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  SipMessage::~SipMessage(this);

  JUMPOUT(0x1E69235B0);
}

void SipRequest::debugStr(SipRequest *this@<X0>, std::string *a2@<X8>)
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

void SipMessage::loggableName(SipMessage *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 40))(&__p);
  LoggableString::LoggableString(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F7244C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SipRequest>::__shared_ptr_emplace[abi:ne200100]<SipRequest::EnforcePrivateConstructor,std::string const&,SipMessageEncodingMap const*&,std::allocator<SipRequest>,0>(void *a1, uint64_t a2, const std::string *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EE1C70;
  SipRequest::SipRequest((a1 + 3), a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<SipRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE1C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_emplace<SipRequest>::__shared_ptr_emplace[abi:ne200100]<SipRequest::EnforcePrivateConstructor,SipRequest const&,std::allocator<SipRequest>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EE1C70;
  SipRequest::SipRequest((a1 + 24), a3);
  return a1;
}

char **SipMessageEncodingMap::headerPrototype<SipCSeqHeader>(void *a1)
{
  result = SipMessageEncodingMap::headerPrototypeWithName(a1, "CSeq");
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t ImsLogDestinationFile::ImsLogDestinationFile(uint64_t a1, uint64_t a2, int a3, char a4)
{
  *(a1 + 16) = 8;
  *a1 = &unk_1F5EE1D08;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 97) = 1;
  *(a1 + 104) = 0;
  std::string::operator=((a1 + 24), a2);
  std::string::operator=((a1 + 48), a2);
  *(a1 + 96) = a3;
  *(a1 + 97) = a4;
  *(a1 + 104) = 0;
  if (a3)
  {
    v9 = *(a2 + 23);
    v10 = v9 >= 0 ? a2 : *a2;
    v11 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v11 >= 1)
    {
      v12 = &v10[v11];
      v13 = v10;
      do
      {
        v14 = memchr(v13, 58, v11);
        if (!v14)
        {
          break;
        }

        if (*v14 == 58)
        {
          if (v14 != v12)
          {
            v15 = v14 - v10;
            if (v15 != -1)
            {
              std::string::basic_string(&v17, a2, 0, v15, &v18);
              if (*(a1 + 47) < 0)
              {
                operator delete(*v8);
              }

              *v8 = v17;
              std::string::basic_string(&v17, a2, v15 + 1, 0xFFFFFFFFFFFFFFFFLL, &v18);
              if (*(a1 + 71) < 0)
              {
                operator delete(*(a1 + 48));
              }

              *(a1 + 48) = v17;
            }
          }

          return a1;
        }

        v13 = v14 + 1;
        v11 = v12 - v13;
      }

      while (v12 - v13 >= 1);
    }
  }

  return a1;
}

void sub_1E4F72900(_Unwind_Exception *exception_object)
{
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
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogDestinationFile::createFromString(int a1, std::string *this)
{
  if (!std::string::compare(this, 0, 5uLL, "file:"))
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size >= 6)
    {
      operator new();
    }
  }

  if (!std::string::compare(this, 0, 8uLL, "symfile:"))
  {
    v4 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v4 & 0x80u) != 0)
    {
      v4 = this->__r_.__value_.__l.__size_;
    }

    if (v4 >= 9)
    {
      operator new();
    }
  }

  if (!std::string::compare(this, 0, 0xCuLL, "global-file:"))
  {
    v5 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v5 & 0x80u) != 0)
    {
      v5 = this->__r_.__value_.__l.__size_;
    }

    if (v5 >= 0xD)
    {
      operator new();
    }
  }

  if (!std::string::compare(this, 0, 0xFuLL, "global-symfile:"))
  {
    v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v6 & 0x80u) != 0)
    {
      v6 = this->__r_.__value_.__l.__size_;
    }

    if (v6 >= 0x10)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1E4F72B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69235B0](v14, 0x10B3C40919B9137);
  _Unwind_Resume(a1);
}

BOOL ImsLogDestinationFile::initialize(ImsLogDestinationFile *this)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v2 = *(this + 47);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_58;
    }

LABEL_5:
    v3 = (this + 24);
    if (*(this + 96) != 1)
    {
      std::string::operator=(this + 3, this + 1);
      operator new();
    }

    v58 = time(0);
    memset(&v57, 0, sizeof(v57));
    ims::localtime(&v58, &v57, v4);
    v56 = 0;
    v54 = 0u;
    memset(v55, 0, sizeof(v55));
    *v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
    v5 = (&v51[-1] + *(v50 - 24));
    if (v5[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v5);
      v6 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
      (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&v49);
    }

    v5[1].__fmtflags_ = 48;
    v49.__r_.__value_.__s.__data_[0] = 45;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, &v49, 1);
    v8 = MEMORY[0x1E6923340](v7, (v57.tm_year + 1900));
    v49.__r_.__value_.__s.__data_[0] = 45;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v49, 1);
    *(v9 + *(*v9 - 24) + 24) = 2;
    v10 = MEMORY[0x1E6923340]();
    v49.__r_.__value_.__s.__data_[0] = 45;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v49, 1);
    *(v11 + *(*v11 - 24) + 24) = 2;
    v12 = MEMORY[0x1E6923340]();
    v49.__r_.__value_.__s.__data_[0] = 45;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v49, 1);
    *(v13 + *(*v13 - 24) + 24) = 2;
    v14 = MEMORY[0x1E6923340]();
    v49.__r_.__value_.__s.__data_[0] = 45;
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v49, 1);
    *(v15 + *(*v15 - 24) + 24) = 2;
    v16 = MEMORY[0x1E6923340]();
    v49.__r_.__value_.__s.__data_[0] = 45;
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v49, 1);
    *(v17 + *(*v17 - 24) + 24) = 2;
    MEMORY[0x1E6923340]();
    v18 = (this + 72);
    v19 = *(this + 71);
    v20 = v19 < 0;
    if (v19 >= 0)
    {
      v21 = this + 48;
    }

    else
    {
      v21 = *(this + 6);
    }

    if (v20)
    {
      v22 = *(this + 7);
    }

    else
    {
      v22 = *(this + 71);
    }

    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = v21 - 1;
    do
    {
      if (!v22)
      {
        goto LABEL_42;
      }

      v24 = v23[v22--];
    }

    while (v24 != 46);
    if (v22 == -1)
    {
LABEL_42:
      std::ostringstream::str[abi:ne200100](&v50, &v49);
      v36 = *(this + 71);
      if (v36 >= 0)
      {
        v37 = this + 48;
      }

      else
      {
        v37 = *(this + 6);
      }

      if (v36 >= 0)
      {
        v38 = *(this + 71);
      }

      else
      {
        v38 = *(this + 7);
      }

      v39 = std::string::insert(&v49, 0, v37, v38);
      v40 = v39->__r_.__value_.__r.__words[0];
      v60.__r_.__value_.__r.__words[0] = v39->__r_.__value_.__l.__size_;
      *(v60.__r_.__value_.__r.__words + 7) = *(&v39->__r_.__value_.__r.__words[1] + 7);
      v41 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 95) < 0)
      {
        operator delete(*v18);
      }

      v42 = v60.__r_.__value_.__r.__words[0];
      *(this + 9) = v40;
      *(this + 10) = v42;
      *(this + 87) = *(v60.__r_.__value_.__r.__words + 7);
      *(this + 95) = v41;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        v35 = v49.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }
    }

    else
    {
      std::string::basic_string(&v60, this + 2, 0, v22, v47);
      std::ostringstream::str[abi:ne200100](&v50, v47);
      if ((v48 & 0x80u) == 0)
      {
        v25 = v47;
      }

      else
      {
        v25 = v47[0];
      }

      if ((v48 & 0x80u) == 0)
      {
        v26 = v48;
      }

      else
      {
        v26 = v47[1];
      }

      v27 = std::string::append(&v60, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string(&__p, this + 2, v22, 0xFFFFFFFFFFFFFFFFLL, &v59);
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

      v31 = std::string::append(&v49, p_p, size);
      v32 = v31->__r_.__value_.__r.__words[0];
      v61[0] = v31->__r_.__value_.__l.__size_;
      *(v61 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
      v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 95) < 0)
      {
        operator delete(*v18);
      }

      v34 = v61[0];
      *(this + 9) = v32;
      *(this + 10) = v34;
      *(this + 87) = *(v61 + 7);
      *(this + 95) = v33;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_52:
        operator delete(v35);
      }
    }

    *&v50 = *MEMORY[0x1E69E54E8];
    *(&v51[-1] + *(v50 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v50 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[1]);
    }

    *(&v50 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v51);
    std::ostream::~ostream();
    MEMORY[0x1E6923510](v55);
    v43 = this + 24;
    if (*(this + 47) < 0)
    {
      v43 = *v3;
    }

    unlink(v43);
    operator new();
  }

  v2 = *(this + 4);
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_58:
  result = v2 != 0;
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F7325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21.__locale_);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  std::ostringstream::~ostringstream(&a28, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a42);
  _Unwind_Resume(a1);
}

void ImsLogDestinationFile::~ImsLogDestinationFile(ImsLogDestinationFile *this)
{
  *this = &unk_1F5EE1D08;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  ImsLogDestinationFile::~ImsLogDestinationFile(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsLogDestinationFile::output(uint64_t a1, uint64_t a2, ims *a3, uint64_t a4, const char *a5)
{
  if (*(a4 + 23) >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = *(a4 + 8);
  }

  v9 = *(a1 + 104);
  v10 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v11 = v10;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a2, v11);
  v13 = ims::logPriorityString(a3);
  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  if (v8)
  {
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "[", 1);
    v17 = *(a4 + 23);
    if (v17 >= 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = *a4;
    }

    if (v17 >= 0)
    {
      v19 = *(a4 + 23);
    }

    else
    {
      v19 = *(a4 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    v20 = "]: ";
    v21 = 3;
  }

  else
  {
    v20 = ": ";
    v21 = 2;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v20, v21);
  v23 = strlen(a5);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, a5, v23);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v27, MEMORY[0x1E69E5318]);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v27);
  std::ostream::put();
  return std::ostream::flush();
}

void ImsLogDestinationFile::dumpToPath(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 97) == 1)
  {
    if ((*(a1 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 80))
      {
        return;
      }
    }

    else if (!*(a1 + 95))
    {
      return;
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 104) = 0;
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    ImsFileManager::moveFile(a1 + 72, a2, v5);
    (*(*a1 + 32))(a1);
    ImsResult::~ImsResult(v5);
  }
}

void ImsLogDestinationFile::name(ImsLogDestinationFile *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

uint64_t ATTRegistrationPolicy::ATTRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Rfc5626RegistrationPolicy::Rfc5626RegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5EE1D50;
  *(a1 + 136) = &unk_1F5EE1FB0;
  *(a1 + 144) = &unk_1F5EE1FE0;
  *(a1 + 152) = &unk_1F5EE1FF8;
  *(a1 + 2380) = 0;
  return a1;
}

void sub_1E4F737AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL ATTRegistrationPolicy::isForbiddenUserError(ATTRegistrationPolicy *this, unsigned __int16 a2)
{
  if (SipResponseCodeMap::empty((this + 2336)))
  {
    return 0;
  }

  return SipResponseCodeMap::containsResponseCodeForMethod(this + 2336, "REGISTER", a2, 0);
}

uint64_t ATTRegistrationPolicy::disableIfInWrongCountry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1);
  if (result)
  {
    result = (*(*a1 + 120))(a1, a3);
    if (result)
    {
      v7 = *(*a2 + 128) == 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8[0] = &unk_1F5EBDEF8;
      v8[1] = &_bambiDomain;
      v9 = v7 << 30;
      v10 = 0;
      v11 = 0;
      (*(*a1 + 168))(a1, v8);
      ImsResult::~ImsResult(v8);
      return 1;
    }
  }

  return result;
}

void sub_1E4F73940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t ATTRegistrationPolicy::handleMaxReRegistrationErrors(uint64_t this)
{
  *(this + 2380) = 1;
  *(this + 220) = 1;
  *(this + 216) = 0;
  return this;
}

uint64_t ATTRegistrationPolicy::useNextProxy(ATTRegistrationPolicy *this)
{
  if (*(this + 220) == 1)
  {
    v1 = *(this + 2380) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void ATTRegistrationPolicy::skipToNextProxy(ATTRegistrationPolicy *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "skipToNextProxy...", 18);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;

  SipRegistrationPolicy::skipToNextProxy(this);
}

uint64_t ATTRegistrationPolicy::handleGeneralErrorFromOneProxy(ATTRegistrationPolicy *this, const ImsResult *a2)
{
  v4 = (*(*this + 536))(this);
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  v6 = *(v5 + 8);
  if (v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "handleGeneralErrorFromOneProxy(emergency)...", 44);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v7 = (*(*this + 64))(this);
    (*(*this + 16))(this, v7);
    SipRegistrationPolicy::printProxyErrors(this, v7, 2);
    if ((*(*this + 408))(this, 0, *(a2 + 4)))
    {
      v8 = (*(*this + 320))(this);
      v9 = *(*this + 488);

      return v9(this, a2, 0, v8);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "handleGeneralErrorFromOneProxy(non-emergency)...", 48);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }
}

uint64_t ATTRegistrationPolicy::handleGeneralErrorFromAllProxies(ATTRegistrationPolicy *this, const ImsResult *a2)
{
  v4 = (*(*this + 536))(this);
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  v6 = *(v5 + 8);
  if (v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "handleGeneralErrorFromAllProxies(emergency)...", 46);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v7 = (*(*this + 64))(this);
    (*(*this + 16))(this, v7);
    SipRegistrationPolicy::printProxyErrors(this, v7, 2);
    v8 = *(*this + 136);

    return v8(this, a2);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "handleGeneralErrorFromAllProxies(non-emergency)...", 50);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    return Rfc5626RegistrationPolicy::handleGeneralErrorFromAllProxies(this, a2);
  }
}

void ATTRegistrationPolicy::emergencyRegistrationTimeout(ATTRegistrationPolicy *this)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = &unk_1F5EBDEF8;
  v13 = &_bambiDomain;
  v14 = 1073741830;
  v2 = *(this + 57);
  if (v2 && v2 != *(this + 58))
  {
    ImsResult::operator=(v2 + 496 * *(this + 60) + 408, &v12);
  }

  ImsResult::~ImsResult(&v12);
  SipRegistrationPolicy::clearAllThrottling(this);
  v3 = (*(*this + 64))(this);
  (*(*this + 16))(this, v3);
  SipRegistrationPolicy::printProxyErrors(this, v3, 2);
  if ((*(*this + 408))(this, 0, 408))
  {
    (*(*this + 504))(this);
    v4 = *(this + 50);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(this + 49);
        if (v7)
        {
          (*(*v7 + 40))(v7, 408);
        }

LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    v8 = *(this + 50);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v6 = v9;
        v10 = *(this + 49);
        if (v10)
        {
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v12 = &unk_1F5EBDEF8;
          v13 = &_bambiDomain;
          v14 = 1073741842;
          v11 = ImsResult::operator<<<char [31]>(&v12, "Emergency registration timeout");
          (*(*v10 + 88))(v10, v11);
          ImsResult::~ImsResult(&v12);
        }

        goto LABEL_13;
      }
    }
  }
}

uint64_t ATTRegistrationPolicy::isRegistrationRetryAllowed(SipRegistrationPolicy *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 536))(a1))
  {
    v36 = 0;
    v37 = 0;
    IPTelephonyManager::getBambiClient(&v36);
    v6 = *(a1 + 50);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(a1 + 49);
        if (v8)
        {
          v9 = v36;
          if (v36)
          {
            v34 = 0;
            v35 = 0;
            (*(*v8 + 136))(__p);
            (*(*v9 + 184))(&v34, v9, __p);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }

            if (!v34)
            {
              v18 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v18);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "isRegistrationRetryAllowed(emergency) No: null SipStack", 55);
              *(v18 + 17) = 0;
              v11 = (v18 + 17);
              (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_28;
            }

            if (*(v34 + 2816) == 1)
            {
              v10 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v10);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "isRegistrationRetryAllowed(emergency) No: Roaming", 49);
              *(v10 + 17) = 0;
              v11 = (v10 + 17);
              (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_28:
              LOBYTE(a2) = 0;
              goto LABEL_49;
            }

            if (a3 == 408)
            {
              v20 = SipRegistrationPolicy::countOfProxiesWithErrors(a1);
              v21 = *a1;
              if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 58) - *(a1 + 57)) >> 4) != v20)
              {
                a2 = (*(v21 + 64))(a1);
                (*(*a1 + 16))(a1, a2);
                v22 = ImsOutStream::operator<<(a2, "isRegistrationRetryAllowed(emergency) Yes: RequestTimeout, still more proxy to try");
                (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v11 = (v22 + 17);
                LOBYTE(a2) = 1;
                goto LABEL_49;
              }

              if ((*(v21 + 536))(a1))
              {
                LODWORD(a2) = (*(**(a1 + 282) + 16))(*(a1 + 282), a2);
              }

              else
              {
                LODWORD(a2) = 1;
              }

              v28 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v28);
              v29 = ImsOutStream::operator<<(v28, "isRegistrationRetryAllowed(emergency) ");
              if (a2)
              {
                v30 = "Yes: ";
              }

              else
              {
                v30 = "No: ";
              }

              v31 = ImsOutStream::operator<<(v29, v30);
              v19 = ImsOutStream::operator<<(v31, "RequestTimeout on all proxies. Default behavior");
              (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            else if (a3 == 403)
            {
              a2 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, a2);
              v19 = ImsOutStream::operator<<(a2, "isRegistrationRetryAllowed(emergency) No: Forbidden");
              (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              LOBYTE(a2) = 0;
            }

            else
            {
              if ((*(*a1 + 536))(a1))
              {
                LODWORD(a2) = (*(**(a1 + 282) + 16))(*(a1 + 282), a2);
              }

              else
              {
                LODWORD(a2) = 1;
              }

              v23 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v23);
              v24 = ImsOutStream::operator<<(v23, "isRegistrationRetryAllowed(emergency, statusCode=");
              MEMORY[0x1E6923350](*(v24 + 8), a3);
              *(v24 + 17) = 0;
              v25 = ImsOutStream::operator<<(v24, ") ");
              if (a2)
              {
                v26 = "Yes: ";
              }

              else
              {
                v26 = "No: ";
              }

              v27 = ImsOutStream::operator<<(v25, v26);
              v19 = ImsOutStream::operator<<(v27, "Default behavior");
              (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            v11 = (v19 + 17);
LABEL_49:
            *v11 = 0;
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v35);
            }

LABEL_23:
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            v12 = a2;
LABEL_24:
            if (v37)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            }

            return v12 & 1;
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v16 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "isRegistrationRetryAllowed(emergency) No: null delegate or bambi", 64);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    LOBYTE(a2) = 0;
    v12 = 0;
    *(v16 + 17) = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((*(*a1 + 536))(a1))
  {
    v12 = (*(**(a1 + 282) + 16))(*(a1 + 282), a2);
  }

  else
  {
    v12 = 1;
  }

  v13 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "isRegistrationRetryAllowed(non-emergency) ", 42);
  *(v13 + 17) = 0;
  if (v12)
  {
    v14 = "Yes: ";
  }

  else
  {
    v14 = "No: ";
  }

  if (v12)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Default behavior", 16);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  return v12 & 1;
}

void sub_1E4F74AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void ATTRegistrationPolicy::~ATTRegistrationPolicy(ATTRegistrationPolicy *this)
{
  SipRegistrationPolicy::~SipRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toATTRegistrationPolicy::~ATTRegistrationPolicy(ATTRegistrationPolicy *this)
{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 136));
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 152));
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

_BYTE *ims::toString<ims::SpamCategory>@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 0x13)
  {
    v5 = "undefined";
  }

  else
  {
    v5 = off_1E876BAE0[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void SpamCategoryMap::SpamCategoryMap(SpamCategoryMap *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  SpamCategoryMap::populateDefaultCategories(this);
}

void SpamCategoryMap::populateDefaultCategories(char **this)
{
  v2 = (this + 1);
  std::__tree<std::string>::destroy(this, this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
  v3 = 3;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 3;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 4;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 4;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 5;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 5;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 6;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 6;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 7;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 7;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 8;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 8;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 9;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 9;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 10;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 10;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 11;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 11;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 12;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 12;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 13;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 13;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 14;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 14;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 15;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 15;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 16;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 16;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 17;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 17;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 18;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 18;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }

  v3 = 19;
  ims::toString<ims::SpamCategory>(&v3, v4);
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 19;
  std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1E4F7533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void SpamCategoryMap::parseFromArray(uint64_t a1, __int128 **a2)
{
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      memset(&v95, 0, sizeof(v95));
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v95, *v2, *(v2 + 1));
      }

      else
      {
        v5 = *v2;
        v95.__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&v95.__r_.__value_.__l.__data_ = v5;
      }

      std::string::basic_string[abi:ne200100]<0>(&v98, ";");
      ims::tokenize(&v95, &v91, &v98);
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
    v6 = v91;
    v7 = v92;
    if (v91 != v92)
    {
      while (1)
      {
        memset(&__p, 0, sizeof(__p));
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
        }

        else
        {
          v8 = *v6;
          __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        if (v10)
        {
          v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v12 = memchr(v11, 58, v10);
          v13 = v12 - v11;
          if (v12 && v13 != -1)
          {
            break;
          }
        }

LABEL_172:
        if (v9 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = (v6 + 24);
        if (v6 == v7)
        {
          goto LABEL_192;
        }
      }

      std::string::basic_string(&v98, &__p, 0, v13, &v95);
      LODWORD(v94.__r_.__value_.__l.__data_) = 0;
      ims::toString<ims::SpamCategory>(&v94, &v95);
      v15 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
      v16 = v95.__r_.__value_.__r.__words[0];
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v95;
      }

      else
      {
        v17 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v98;
      }

      else
      {
        v18 = v98.__r_.__value_.__r.__words[0];
      }

      v19 = strcasecmp(v17, v18);
      v20 = v19;
      if (v15 < 0)
      {
        operator delete(v16);
        if (v20)
        {
LABEL_33:
          LODWORD(v94.__r_.__value_.__l.__data_) = 2;
          ims::toString<ims::SpamCategory>(&v94, &v95);
          v21 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
          v22 = v95.__r_.__value_.__r.__words[0];
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v95;
          }

          else
          {
            v23 = v95.__r_.__value_.__r.__words[0];
          }

          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v98;
          }

          else
          {
            v24 = v98.__r_.__value_.__r.__words[0];
          }

          v25 = strcasecmp(v23, v24);
          v26 = v25;
          if (v21 < 0)
          {
            operator delete(v22);
            if (v26)
            {
LABEL_41:
              LODWORD(v94.__r_.__value_.__l.__data_) = 3;
              ims::toString<ims::SpamCategory>(&v94, &v95);
              v27 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
              v28 = v95.__r_.__value_.__r.__words[0];
              if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v29 = &v95;
              }

              else
              {
                v29 = v95.__r_.__value_.__r.__words[0];
              }

              if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = &v98;
              }

              else
              {
                v30 = v98.__r_.__value_.__r.__words[0];
              }

              v31 = strcasecmp(v29, v30);
              v32 = v31;
              if (v27 < 0)
              {
                operator delete(v28);
                if (v32)
                {
LABEL_49:
                  LODWORD(v94.__r_.__value_.__l.__data_) = 4;
                  ims::toString<ims::SpamCategory>(&v94, &v95);
                  v33 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                  v34 = v95.__r_.__value_.__r.__words[0];
                  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &v95;
                  }

                  else
                  {
                    v35 = v95.__r_.__value_.__r.__words[0];
                  }

                  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v36 = &v98;
                  }

                  else
                  {
                    v36 = v98.__r_.__value_.__r.__words[0];
                  }

                  v37 = strcasecmp(v35, v36);
                  v38 = v37;
                  if (v33 < 0)
                  {
                    operator delete(v34);
                    if (v38)
                    {
LABEL_57:
                      LODWORD(v94.__r_.__value_.__l.__data_) = 5;
                      ims::toString<ims::SpamCategory>(&v94, &v95);
                      v39 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                      v40 = v95.__r_.__value_.__r.__words[0];
                      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v41 = &v95;
                      }

                      else
                      {
                        v41 = v95.__r_.__value_.__r.__words[0];
                      }

                      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v42 = &v98;
                      }

                      else
                      {
                        v42 = v98.__r_.__value_.__r.__words[0];
                      }

                      v43 = strcasecmp(v41, v42);
                      v44 = v43;
                      if (v39 < 0)
                      {
                        operator delete(v40);
                        if (v44)
                        {
LABEL_65:
                          LODWORD(v94.__r_.__value_.__l.__data_) = 6;
                          ims::toString<ims::SpamCategory>(&v94, &v95);
                          v45 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                          v46 = v95.__r_.__value_.__r.__words[0];
                          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v47 = &v95;
                          }

                          else
                          {
                            v47 = v95.__r_.__value_.__r.__words[0];
                          }

                          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v48 = &v98;
                          }

                          else
                          {
                            v48 = v98.__r_.__value_.__r.__words[0];
                          }

                          v49 = strcasecmp(v47, v48);
                          v50 = v49;
                          if (v45 < 0)
                          {
                            operator delete(v46);
                            if (v50)
                            {
LABEL_73:
                              LODWORD(v94.__r_.__value_.__l.__data_) = 7;
                              ims::toString<ims::SpamCategory>(&v94, &v95);
                              v51 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                              v52 = v95.__r_.__value_.__r.__words[0];
                              if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v53 = &v95;
                              }

                              else
                              {
                                v53 = v95.__r_.__value_.__r.__words[0];
                              }

                              if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v54 = &v98;
                              }

                              else
                              {
                                v54 = v98.__r_.__value_.__r.__words[0];
                              }

                              v55 = strcasecmp(v53, v54);
                              v56 = v55;
                              if (v51 < 0)
                              {
                                operator delete(v52);
                                if (v56)
                                {
                                  goto LABEL_81;
                                }
                              }

                              else if (v55)
                              {
LABEL_81:
                                LODWORD(v94.__r_.__value_.__l.__data_) = 8;
                                ims::toString<ims::SpamCategory>(&v94, &v95);
                                v57 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                                v58 = v95.__r_.__value_.__r.__words[0];
                                if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v59 = &v95;
                                }

                                else
                                {
                                  v59 = v95.__r_.__value_.__r.__words[0];
                                }

                                if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v60 = &v98;
                                }

                                else
                                {
                                  v60 = v98.__r_.__value_.__r.__words[0];
                                }

                                v61 = strcasecmp(v59, v60);
                                v62 = v61;
                                if (v57 < 0)
                                {
                                  operator delete(v58);
                                  if (v62)
                                  {
                                    goto LABEL_89;
                                  }
                                }

                                else if (v61)
                                {
LABEL_89:
                                  LODWORD(v94.__r_.__value_.__l.__data_) = 9;
                                  ims::toString<ims::SpamCategory>(&v94, &v95);
                                  v63 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                                  v64 = v95.__r_.__value_.__r.__words[0];
                                  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v65 = &v95;
                                  }

                                  else
                                  {
                                    v65 = v95.__r_.__value_.__r.__words[0];
                                  }

                                  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v66 = &v98;
                                  }

                                  else
                                  {
                                    v66 = v98.__r_.__value_.__r.__words[0];
                                  }

                                  v67 = strcasecmp(v65, v66);
                                  if (v63 < 0)
                                  {
                                    operator delete(v64);
                                  }

                                  if (v67)
                                  {
                                    LODWORD(v94.__r_.__value_.__l.__data_) = 10;
                                    ims::toString<ims::SpamCategory>(&v94, &v95);
                                    v68 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                                    v69 = v95.__r_.__value_.__r.__words[0];
                                    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                    {
                                      v70 = &v95;
                                    }

                                    else
                                    {
                                      v70 = v95.__r_.__value_.__r.__words[0];
                                    }

                                    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                    {
                                      v71 = &v98;
                                    }

                                    else
                                    {
                                      v71 = v98.__r_.__value_.__r.__words[0];
                                    }

                                    v72 = strcasecmp(v70, v71);
                                    if (v68 < 0)
                                    {
                                      operator delete(v69);
                                    }

                                    if (v72)
                                    {
                                      LODWORD(v94.__r_.__value_.__l.__data_) = 11;
                                      ims::toString<ims::SpamCategory>(&v94, &v95);
                                      v73 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
                                      v74 = v95.__r_.__value_.__r.__words[0];
                                      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v75 = &v95;
                                      }

                                      else
                                      {
                                        v75 = v95.__r_.__value_.__r.__words[0];
                                      }

                                      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v76 = &v98;
                                      }

                                      else
                                      {
                                        v76 = v98.__r_.__value_.__r.__words[0];
                                      }

                                      v77 = strcasecmp(v75, v76);
                                      if (v73 < 0)
                                      {
                                        operator delete(v74);
                                      }

                                      if (v77)
                                      {
                                        LODWORD(v94.__r_.__value_.__l.__data_) = 12;
                                        ims::toString<ims::SpamCategory>(&v94, &v95);
                                        v78 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(v95.__r_.__value_.__l.__data_);
                                        }

                                        if (v78)
                                        {
                                          v79 = 12;
                                        }

                                        else
                                        {
                                          LODWORD(v94.__r_.__value_.__l.__data_) = 13;
                                          ims::toString<ims::SpamCategory>(&v94, &v95);
                                          v80 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                          {
                                            operator delete(v95.__r_.__value_.__l.__data_);
                                          }

                                          if (v80)
                                          {
                                            v79 = 13;
                                          }

                                          else
                                          {
                                            LODWORD(v94.__r_.__value_.__l.__data_) = 14;
                                            ims::toString<ims::SpamCategory>(&v94, &v95);
                                            v81 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                            {
                                              operator delete(v95.__r_.__value_.__l.__data_);
                                            }

                                            if (v81)
                                            {
                                              v79 = 14;
                                            }

                                            else
                                            {
                                              LODWORD(v94.__r_.__value_.__l.__data_) = 15;
                                              ims::toString<ims::SpamCategory>(&v94, &v95);
                                              v82 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                              if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                              {
                                                operator delete(v95.__r_.__value_.__l.__data_);
                                              }

                                              if (v82)
                                              {
                                                v79 = 15;
                                              }

                                              else
                                              {
                                                LODWORD(v94.__r_.__value_.__l.__data_) = 16;
                                                ims::toString<ims::SpamCategory>(&v94, &v95);
                                                v83 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                                if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                                {
                                                  operator delete(v95.__r_.__value_.__l.__data_);
                                                }

                                                if (v83)
                                                {
                                                  v79 = 16;
                                                }

                                                else
                                                {
                                                  LODWORD(v94.__r_.__value_.__l.__data_) = 17;
                                                  ims::toString<ims::SpamCategory>(&v94, &v95);
                                                  v84 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(v95.__r_.__value_.__l.__data_);
                                                  }

                                                  if (v84)
                                                  {
                                                    v79 = 17;
                                                  }

                                                  else
                                                  {
                                                    LODWORD(v94.__r_.__value_.__l.__data_) = 18;
                                                    ims::toString<ims::SpamCategory>(&v94, &v95);
                                                    v85 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                                    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v95.__r_.__value_.__l.__data_);
                                                    }

                                                    if (v85)
                                                    {
                                                      v79 = 18;
                                                    }

                                                    else
                                                    {
                                                      LODWORD(v94.__r_.__value_.__l.__data_) = 19;
                                                      ims::toString<ims::SpamCategory>(&v94, &v95);
                                                      v86 = ims::caseInsensitiveStringCompare(&v95, &v98);
                                                      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v95.__r_.__value_.__l.__data_);
                                                      }

                                                      if (v86)
                                                      {
                                                        v79 = 19;
                                                      }

                                                      else
                                                      {
                                                        v79 = 1;
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
                                        v79 = 11;
                                      }
                                    }

                                    else
                                    {
                                      v79 = 10;
                                    }
                                  }

                                  else
                                  {
                                    v79 = 9;
                                  }

                                  goto LABEL_168;
                                }

                                v79 = 8;
LABEL_168:
                                if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v98.__r_.__value_.__l.__data_);
                                }

                                memset(&v98, 0, sizeof(v98));
                                if (v79 >= 2)
                                {
                                  std::string::basic_string(&v95, &__p, v13 + 1, 0xFFFFFFFFFFFFFFFFLL, &v94);
                                  std::string::basic_string[abi:ne200100]<0>(&v97, ",");
                                  ims::tokenize(&v95, &v98, &v97);
                                  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v97.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v95.__r_.__value_.__l.__data_);
                                  }

                                  size = v98.__r_.__value_.__l.__size_;
                                  for (i = v98.__r_.__value_.__r.__words[0]; i != size; i += 24)
                                  {
                                    memset(&v97, 0, sizeof(v97));
                                    if (*(i + 23) < 0)
                                    {
                                      std::string::__init_copy_ctor_external(&v97, *i, *(i + 8));
                                    }

                                    else
                                    {
                                      v89 = *i;
                                      v97.__r_.__value_.__r.__words[2] = *(i + 16);
                                      *&v97.__r_.__value_.__l.__data_ = v89;
                                    }

                                    ims::lowerCase(&v97, &v94);
                                    v95 = v94;
                                    memset(&v94, 0, sizeof(v94));
                                    v96 = v79;
                                    std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(a1, &v95.__r_.__value_.__l.__data_);
                                    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v95.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v94.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v97.__r_.__value_.__l.__data_);
                                    }
                                  }
                                }

                                v95.__r_.__value_.__r.__words[0] = &v98;
                                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v95);
                                v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                                goto LABEL_172;
                              }

                              v79 = 7;
                              goto LABEL_168;
                            }
                          }

                          else if (v49)
                          {
                            goto LABEL_73;
                          }

                          v79 = 6;
                          goto LABEL_168;
                        }
                      }

                      else if (v43)
                      {
                        goto LABEL_65;
                      }

                      v79 = 5;
                      goto LABEL_168;
                    }
                  }

                  else if (v37)
                  {
                    goto LABEL_57;
                  }

                  v79 = 4;
                  goto LABEL_168;
                }
              }

              else if (v31)
              {
                goto LABEL_49;
              }

              v79 = 3;
              goto LABEL_168;
            }
          }

          else if (v25)
          {
            goto LABEL_41;
          }

          v79 = 2;
          goto LABEL_168;
        }
      }

      else if (v19)
      {
        goto LABEL_33;
      }

      v79 = 0;
      goto LABEL_168;
    }
  }

LABEL_192:
  v95.__r_.__value_.__r.__words[0] = &v91;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v95);
}

void sub_1E4F75C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a25 = (v37 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *SpamCategoryMap::SpamCategoryMap(void *a1, __int128 **a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  SpamCategoryMap::parseFromArray(a1, a2);
  return a1;
}

uint64_t SpamCategoryMap::operator==(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 55);
    if (v5 >= 0)
    {
      v6 = *(v3 + 55);
    }

    else
    {
      v6 = v3[5];
    }

    v7 = *(v4 + 55);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[5];
    }

    if (v6 != v7)
    {
      break;
    }

    v9 = v5 >= 0 ? v3 + 4 : v3[4];
    v10 = v4[4];
    v11 = v8 >= 0 ? v4 + 4 : v4[4];
    v12 = !memcmp(v9, v11, v6) && *(v3 + 14) == *(v4 + 14);
    if (!v12)
    {
      break;
    }

    v13 = v3[1];
    v14 = v3;
    if (v13)
    {
      do
      {
        v3 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v3 = v14[2];
        v12 = *v3 == v14;
        v14 = v3;
      }

      while (!v12);
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
        v12 = *v16 == v4;
        v4 = v16;
      }

      while (!v12);
    }

    v4 = v16;
    if (v3 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SpamCategoryMap::categoryForString(uint64_t a1, uint64_t a2)
{
  ims::lowerCase(a2, &__p);
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1 + 8 == v3)
  {
    return 1;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_1E4F75F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,ims::SpamCategory>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,ims::SpamCategory>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ims::SpamCategory>,std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,ims::SpamCategory>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,ims::SpamCategory>,std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ims::SpamCategory> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ims::SpamCategory> const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__construct_node<std::pair<std::string const,ims::SpamCategory> const&>();
  }

  return result;
}

void sub_1E4F7614C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ims::SpamCategory>,std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
          *(v8 + 14) = *(v9 + 14);
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

    result = std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__construct_node<std::pair<std::string const,ims::SpamCategory> const&>();
  }

  return result;
}

void sub_1E4F76374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,ims::SpamCategory>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t SipEmergencyRegistrationPolicy::isRegistrationRetryAllowed(uint64_t a1, int a2)
{
  if (*(a1 + 10) == 1)
  {
    if (a2 == 2)
    {
      v2 = *(a1 + 11);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t SipRegistrationPolicy::SipRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v31, "sip.reg");
  v4 = a2[1];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4)
    {
      v4 = *a2;
    }
  }

  else
  {
    v5 = 0;
  }

  (v4->__vftable[3].__on_zero_shared_weak)(v23);
  v26 = v23[0];
  v27 = v23[1];
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v24;
  }

  v29 = v25;
  v30 = 1;
  ImsLogContainer::ImsLogContainer(a1, &v31, &v26);
  if (v30 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  *(a1 + 136) = &unk_1F5EBEEC0;
  *(a1 + 144) = &unk_1F5EDEC70;
  std::string::basic_string[abi:ne200100]<0>(v21, "sip.reg");
  v6 = a2[1];
  if (v6)
  {
    v6 = std::__shared_weak_count::lock(v6);
    v7 = v6;
    if (v6)
    {
      v6 = *a2;
    }
  }

  else
  {
    v7 = 0;
  }

  (v6->__vftable[3].__on_zero_shared_weak)(v19);
  ims::getQueue(&v32);
  ClientConfig::getLogTag(v19, &v31);
  if ((v22 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = v21[1];
  }

  v10 = std::string::insert(&v31, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[0] = v10->__r_.__value_.__r.__words[2];
  *v23 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v24.__r_.__value_.__s.__data_[7] >= 0)
  {
    v12 = v23;
  }

  else
  {
    v12 = v23[0];
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v13 = v32;
  *(a1 + 176) = v32;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 184) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.ipTelephony", v12);
  if (v24.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 152) = &unk_1F5EE2428;
  if (v20 < 0)
  {
    operator delete(v19[2]);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_1F5EE2060;
  *(a1 + 136) = &unk_1F5EE22B8;
  *(a1 + 144) = &unk_1F5EE22E8;
  *(a1 + 152) = &unk_1F5EE2300;
  *(a1 + 200) = xmmword_1E5177530;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  SipTimerContainer::SipTimerContainer((a1 + 224));
  *(a1 + 392) = *a2;
  v14 = a2[1];
  *(a1 + 400) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 436) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = -1;
  SipRegistrationConfig::SipRegistrationConfig((a1 + 504));
  *&v15 = 0;
  *(a1 + 2176) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = v15;
  *(a1 + 2184) = &unk_1F5EC3598;
  *(a1 + 2264) = 0;
  *(a1 + 2266) = 1;
  *(a1 + 2272) = &unk_1F5EF3C38;
  *(a1 + 2288) = 0u;
  *(a1 + 2280) = a1 + 2288;
  *(a1 + 2304) = &unk_1F5EF3C38;
  *(a1 + 2320) = 0u;
  *(a1 + 2312) = a1 + 2320;
  *(a1 + 2336) = &unk_1F5EF3C38;
  *(a1 + 2352) = 0u;
  *(a1 + 2344) = a1 + 2352;
  *(a1 + 2368) = 0;
  *(a1 + 2372) = 0;
  *(a1 + 2256) = 0;
  v16 = a2[1];
  if (v16)
  {
    v16 = std::__shared_weak_count::lock(v16);
    v17 = v16;
    if (v16)
    {
      v16 = *a2;
    }
  }

  else
  {
    v17 = 0;
  }

  (v16->__vftable[3].__on_zero_shared_weak)(v23);
  std::string::operator=((a1 + 272), (a1 + 8));
  *(a1 + 296) = v23[0];
  *(a1 + 304) = v23[1];
  std::string::operator=((a1 + 312), &v24);
  *(a1 + 336) = v25;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(a1 + 352) = a1 + 136;
  *(a1 + 448) = SipRegistrationMode::kModeNormal;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = -1;
  *(a1 + 2368) = 0;
  return a1;
}

void sub_1E4F769F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, SipBackoffTimer *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (*(v48 - 97) < 0)
  {
    operator delete(*(v48 - 120));
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::~SipRegistrationPolicy(SipRegistrationPolicy *this)
{
  *this = &unk_1F5EE2060;
  *(this + 17) = &unk_1F5EE22B8;
  *(this + 18) = &unk_1F5EE22E8;
  *(this + 19) = &unk_1F5EE2300;
  v2 = *(this + 282);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 292) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 2344, *(this + 294));
  *(this + 288) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 2312, *(this + 290));
  *(this + 284) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 2280, *(this + 286));
  SipBackoffTimer::~SipBackoffTimer((this + 2184));
  SipRegistrationConfig::~SipRegistrationConfig(this + 63);
  v4 = (this + 456);
  std::vector<SipRegistrationPolicy::ProxyInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 50);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipTimerContainer::~SipTimerContainer((this + 224));
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

uint64_t SipRegistrationPolicy::initialize(SipRegistrationPolicy *this)
{
  *(this + 220) = 1;
  *(this + 54) = 0;
  (*(*this + 568))(this);
  *(this + 2368) = 1;
  return 1;
}

void SipRegistrationPolicy::deinitialize(SipRegistrationPolicy *this)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  *(this + 2266) = 0;
  *(this + 2368) = 0;
}

void SipRegistrationPolicy::updateNextRetryTime(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a1[24];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      (*(*a1 + 184))(v12, a1);
      v11 = a2;
      ims::TimeAndIntervalFromNow::logStr(&v11);
    }
  }

  else if (v7)
  {
    (*(*a1 + 184))(v12, a1);
    v8 = v13 >= 0 ? v12 : v12[0];
    v9 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 141558531;
    v15 = 1752392040;
    v16 = 2081;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclearing nextRetryTime due to %s", buf, 0x20u);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  a1[51] = a2;
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4F77064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::isRegistrationRetryAllowed(void **a1)
{
  if (!((*a1)[67])(a1))
  {
    return 1;
  }

  v2 = *(*a1[282] + 16);

  return v2();
}

uint64_t SipRegistrationPolicy::startTimer(SipRegistrationPolicy *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 51))
  {
    v2 = time(0);
    v3 = *(this + 51);
    v4 = v3 - v2;
    if (v3 <= v2)
    {
      v7 = *(this + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(buf, this);
        v8 = SHIBYTE(v23) >= 0 ? buf : *buf;
        *v18 = 141558275;
        *&v18[4] = 1752392040;
        v19 = 2081;
        v20 = v8;
        _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sstartTimer: nextRetryTime has passed. Retrying immediately.", v18, 0x16u);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(*buf);
        }
      }

      *(this + 2266) = 1;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZN21SipRegistrationPolicy10startTimerEv_block_invoke;
      v17[3] = &__block_descriptor_tmp_17;
      v17[4] = this;
      v9 = *(this + 21);
      if (!v9 || (v10 = *(this + 20), (v11 = std::__shared_weak_count::lock(v9)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v12 = v11;
      v13 = *(this + 22);
      *buf = MEMORY[0x1E69E9820];
      v22 = 1174405120;
      v23 = ___ZNK3ctu20SharedSynchronizableI21SipRegistrationPolicyE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      v24 = &unk_1F5EE2448;
      v26 = v10;
      v27 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = v17;
      dispatch_async(v13, buf);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v4 = 0;
    }

    else
    {
      if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_INFO))
      {
        (*(*this + 184))(v18, this);
        v16 = *(this + 51);
        ims::TimeAndIntervalFromNow::logStr(&v16);
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 20);
      v5 = v22;
      if (v22)
      {
        v6 = (v22 + 16);
        atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
        if ((*(this + 2176) & 1) == 0)
        {
          atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
          goto LABEL_21;
        }

        std::__shared_weak_count::__release_weak(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      else if ((*(this + 2176) & 1) == 0)
      {
LABEL_21:
        v17[8] = 0;
        operator new();
      }
    }
  }

  else
  {
    v4 = -1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1E4F77518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a19);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  _Unwind_Resume(a1);
}

void ___ZN21SipRegistrationPolicy10startTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 2266) == 1)
  {
    SipRegistrationPolicy::retryRegistration(v1);
  }
}

void SipRegistrationPolicy::retryRegistration(SipRegistrationPolicy *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(this + 50);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 49);
      if (v4)
      {
        if ((*(*v4 + 16))(*(this + 49)))
        {
          v5 = *(this + 24);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 184))(__p, this);
            if (v27 >= 0)
            {
              v6 = __p;
            }

            else
            {
              v6 = *__p;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            v21 = 2081;
            v22 = v6;
            _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sretryRegistration: registration already in progress", buf, 0x16u);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(*__p);
            }
          }
        }

        else if ((*(*this + 424))(this))
        {
          v10 = *(this + 24);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = buf;
            (*(*this + 184))(buf, this);
            if (v23 < 0)
            {
              v11 = *buf;
            }

            SipRegistrationPolicy::lastRegisteredProxyUriString(v18, this);
            v12 = v19;
            v13 = v18[0];
            SipRegistrationPolicy::currentProxyUriString(v16, this);
            v14 = v18;
            if (v12 < 0)
            {
              v14 = v13;
            }

            if (v17 >= 0)
            {
              v15 = v16;
            }

            else
            {
              v15 = v16[0];
            }

            *__p = 141558787;
            *&__p[4] = 1752392040;
            v25 = 2081;
            v26 = v11;
            v27 = 2080;
            v28 = v14;
            v29 = 2080;
            v30 = v15;
            _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sretryRegistration: waiting for calls started on proxy %s to end before attempting registration with %s", __p, 0x2Au);
            if (v17 < 0)
            {
              operator delete(v16[0]);
            }

            if (v19 < 0)
            {
              operator delete(v18[0]);
            }

            if (v23 < 0)
            {
              operator delete(*buf);
            }
          }

          *(this + 2264) = 1;
        }

        else
        {
          *(this + 2264) = 0;
          if (*(this + 51) <= time(0))
          {
            SipRegistrationPolicy::clearAllThrottling(this);
            (*(*v4 + 24))(v4);
          }

          else
          {
            if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 184))(buf, this);
              v16[0] = *(this + 51);
              ims::TimeAndIntervalFromNow::logStr(v16);
            }

            SipRegistrationPolicy::startTimer(this);
          }
        }

LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_20;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 24);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v8 = v27 >= 0 ? __p : *__p;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v21 = 2081;
    v22 = v8;
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sretryRegistration: no delegate", buf, 0x16u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*__p);
    }
  }

  if (v3)
  {
    goto LABEL_19;
  }

LABEL_20:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4F77A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationPolicy::startingRegistration(SipRegistrationPolicy *this)
{
  v2 = v24;
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 51) <= time(0))
  {
    if ((*(*this + 424))(this))
    {
      v6 = *(this + 24);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(v24, this);
        if (v27 < 0)
        {
          v2 = *v24;
        }

        SipRegistrationPolicy::lastRegisteredProxyUriString(__p, this);
        v7 = v20;
        v8 = __p[0];
        SipRegistrationPolicy::currentProxyUriString(v17, this);
        v9 = __p;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v18 >= 0)
        {
          v10 = v17;
        }

        else
        {
          v10 = v17[0];
        }

        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v2;
        v22 = 2080;
        *&v23[0] = v9;
        WORD4(v23[0]) = 2080;
        *(v23 + 10) = v10;
        _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting for calls started on proxy %s to end before attempting registration with %s", buf, 0x2Au);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(*v24);
        }
      }

      v5 = 0;
      *(this + 2264) = 1;
    }

    else
    {
      *(this + 2264) = 0;
      v11 = *(this + 51);
      v12 = *(this + 24);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          (*(*this + 184))(v24, this);
          v17[0] = *(this + 51);
          ims::TimeAndIntervalFromNow::logStr(v17);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "ThrottlingExpired");
        (*(*this + 576))(this, 0, buf);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(*buf);
        }

        *(this + 52) = 0;
      }

      else if (v13)
      {
        (*(*this + 184))(buf, this);
        v14 = v22 >= 0 ? buf : *buf;
        *v24 = 141558275;
        *&v24[4] = 1752392040;
        v25 = 2081;
        v26 = v14;
        _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthere is currently no registration throttling. Ok to retry registration.", v24, 0x16u);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(*buf);
        }
      }

      SipTimerContainer::cancelAllTimers((this + 224));
      memset(v23, 0, sizeof(v23));
      *buf = &unk_1F5EBDEF8;
      *&buf[8] = &_bambiDomain;
      *&buf[16] = 0;
      v5 = (*(_bambiDomain + 24))() ^ 1;
      ImsResult::~ImsResult(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(v24, this);
      v17[0] = *(this + 51);
      ims::TimeAndIntervalFromNow::logStr(v17);
    }

    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 29, "ThrottleTimer"))
    {
      v3 = *(this + 24);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(buf, this);
        if (v22 >= 0)
        {
          v4 = buf;
        }

        else
        {
          v4 = *buf;
        }

        *v24 = 141558275;
        *&v24[4] = 1752392040;
        v25 = 2081;
        v26 = v4;
        _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sThrottleTimer is not active. Start it now... ", v24, 0x16u);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(*buf);
        }
      }

      SipRegistrationPolicy::startTimer(this);
    }

    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1E4F780DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::lastRegisteredProxyUriString(SipRegistrationPolicy *this, void *a2)
{
  v2 = a2[62];
  if ((v2 & 0x8000000000000000) != 0 || (v3 = a2[57], v2 >= 0xEF7BDEF7BDEF7BDFLL * ((a2[58] - v3) >> 4)))
  {
    std::string::basic_string[abi:ne200100]<0>(this, "(none)");
  }

  else
  {
    SipUri::asString(v3 + 496 * v2, this);
  }
}

void SipRegistrationPolicy::currentProxyUriString(SipRegistrationPolicy *this, void *a2)
{
  v2 = a2[57];
  if (v2)
  {
    v3 = v2 == a2[58];
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(this, "(none)");
  }

  else
  {
    SipUri::asString(v2 + 496 * a2[60], this);
  }
}

void SipRegistrationPolicy::startEmergencyRegistrationTimer(SipRegistrationPolicy *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(*this + 536))(this) && ((*(**(this + 282) + 16))(*(this + 282), 0) & 1) == 0)
  {
    v2 = *(*(this + 282) + 12);
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 20);
    v3 = v7;
    if (v7)
    {
      p_shared_weak_owners = &v7->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      if (v2)
      {
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        goto LABEL_7;
      }

      std::__shared_weak_count::__release_weak(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    else if (v2)
    {
LABEL_7:
      v8 = 0;
      operator new();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4F78358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void SipRegistrationPolicy::initialRegisterRequestSent(SipRegistrationPolicy *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 61) = *(this + 60);
  v2 = time(0);
  *(this + 52) = v2;
  v3 = *(this + 187);
  std::string::basic_string[abi:ne200100]<0>(&__p, "SentInitialRegister");
  (*(*this + 576))(this, v3 + v2, &__p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(&v6, this);
    v5 = *(this + 51);
    ims::TimeAndIntervalFromNow::logStr(&v5);
  }

  SipRegistrationPolicy::startEmergencyRegistrationTimer(this);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::authChallengeReceived(SipRegistrationPolicy *this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = time(0);
  v3 = *(this + 187) + result;
  if (*(this + 51) < v3)
  {
    v4 = result;
    std::string::basic_string[abi:ne200100]<0>(&__p, "AuthChallengeReceived");
    (*(*this + 576))(this, v3, &__p);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    *(this + 52) = v4;
    result = os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      (*(*this + 184))(&v7, this);
      v6 = *(this + 51);
      ims::TimeAndIntervalFromNow::logStr(&v6);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F7876C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::clearFailureFlags(SipRegistrationPolicy *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclearing registration failure flags", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 25) = 0;
  *(this + 52) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ClearFailureFlags");
  (*(*this + 576))(this, 0, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 52) = 0;
  SipRegistrationPolicy::clearLastProxyErrors(this);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4F78920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::clearLastProxyErrors(SipRegistrationPolicy *this)
{
  v1 = *(this + 57);
  if (*(this + 58) != v1)
  {
    v3 = 0;
    v4 = 408;
    do
    {
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5[0] = &unk_1F5EBDEF8;
      v5[1] = &_bambiDomain;
      v6 = 0;
      ImsResult::operator=(v1 + v4, v5);
      ImsResult::~ImsResult(v5);
      ++v3;
      v1 = *(this + 57);
      v4 += 496;
    }

    while (v3 < 0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - v1) >> 4));
  }
}

void sub_1E4F78A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipRegistrationPolicy::clearAllThrottling(SipRegistrationPolicy *this)
{
  v7 = *MEMORY[0x1E69E9840];
  SipTimerContainer::cancelAllTimers((this + 224));
  if (*(this + 51))
  {
    if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(&v4, this);
      v3 = *(this + 51);
      ims::TimeAndIntervalFromNow::logStr(&v3);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "ClearAllThrottling");
    (*(*this + 576))(this, 0, buf);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(*buf);
    }

    *(this + 52) = 0;
  }

  *(this + 2264) = 0;
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4F78BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::scheduleRetry(SipRegistrationPolicy *this, const ImsResult *a2, uint64_t a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = time(0);
  v8 = *(this + 24);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    goto LABEL_6;
  }

  (*(*this + 184))(__p, this);
  v9 = v31 >= 0 ? __p : *__p;
  *buf = 141558531;
  *&buf[4] = 1752392040;
  v33 = 2081;
  v34 = v9;
  v35 = 2048;
  v36 = v7;
  _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sscheduleRetry: now is %lu", buf, 0x20u);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_6:
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*__p);
  if (a4)
  {
LABEL_7:
    (*(*this + 504))(this);
  }

LABEL_8:
  if (a3)
  {
    v10 = *(this + 24);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    (*(*this + 184))(__p, this);
    if (v31 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v33 = 2081;
    v34 = v11;
    v35 = 2048;
    v36 = a3;
    v12 = "%{private, mask.hash}sscheduleRetry: set retryInterval = %lu";
  }

  else
  {
    a3 = (*(*this + 200))(this);
    v10 = *(this + 24);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    (*(*this + 184))(__p, this);
    if (v31 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v33 = 2081;
    v34 = v13;
    v35 = 2048;
    v36 = a3;
    v12 = "%{private, mask.hash}sscheduleRetry: got retryInterval = %lu";
  }

  _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x20u);
  if (v31 < 0)
  {
    operator delete(*__p);
  }

LABEL_21:
  if (!(*(*this + 520))(this))
  {
    goto LABEL_48;
  }

  if ((*(*this + 520))(this))
  {
    v14 = *(this + 54) + *(this + 53);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 24);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v16 = v31 >= 0 ? __p : *__p;
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v33 = 2081;
    v34 = v16;
    v35 = 2048;
    v36 = v14;
    _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sscheduleRetry: barringEndAt %lu", buf, 0x20u);
    if (v31 < 0)
    {
      operator delete(*__p);
    }
  }

  v17 = v14 <= v7;
  v18 = v14 - v7;
  if (v17)
  {
    goto LABEL_48;
  }

  v19 = *(this + 24);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v20 = v31 >= 0 ? __p : *__p;
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v33 = 2081;
    v34 = v20;
    v35 = 2048;
    v36 = v18;
    _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sscheduleRetry: retryIntervalOfBarring = %lu", buf, 0x20u);
    if (v31 < 0)
    {
      operator delete(*__p);
    }
  }

  if (v18 <= a3)
  {
    *(this + 55) = 0;
LABEL_48:
    v18 = a3;
    goto LABEL_49;
  }

  *(this + 55) = v18 - a3;
  v21 = *(this + 24);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v22 = v31 >= 0 ? __p : *__p;
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v33 = 2081;
    v34 = v22;
    v35 = 2048;
    v36 = v18;
    _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sscheduleRetry: barring time is longer than the original retry interval: set retryInterval = %lu", buf, 0x20u);
    if (v31 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_49:
  if (*(this + 51) >= v18 + v7)
  {
    v23 = *(this + 24);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    (*(*this + 184))(buf, this);
    if (v35 >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v29 = 2081;
    v30 = v24;
    _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}skeeping old retry time", __p, 0x16u);
  }

  else
  {
    *(this + 52) = v7;
    std::string::basic_string[abi:ne200100]<0>(buf, "ScheduleRetry");
    (*(*this + 576))(this, v18 + v7, buf);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*buf);
  }

LABEL_58:
  if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v27 = *(this + 51);
    ims::TimeAndIntervalFromNow::logStr(&v27);
  }

  result = SipRegistrationPolicy::startTimer(this);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F79378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::handleBarringAccessAlleviated(SipRegistrationPolicy *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 29, "ThrottleTimer") && *(this + 51) > 0)
  {
    if ((*(*this + 520))(this))
    {
      v2 = *(this + 55);
      v3 = *(this + 24);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(__p, this);
        v4 = v20 >= 0 ? __p : *__p;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v22 = 2081;
        v23 = v4;
        v24 = 2048;
        v25 = v2;
        _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleBarringAccessAlleviated: retryIntervalExtendedByBarring=%lu", buf, 0x20u);
        if (v20 < 0)
        {
          operator delete(*__p);
        }
      }

      *(this + 53) = 0;
      *(this + 54) = 0;
      if (v2)
      {
        v5 = *(this + 51);
        v6 = *(this + 24);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(__p, this);
          v16 = *(this + 51);
          ims::TimeAndIntervalFromNow::logStr(&v16);
        }

        v7 = v5 - v2;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(__p, this);
          v16 = v7;
          ims::TimeAndIntervalFromNow::logStr(&v16);
        }

        SipTimerContainer::cancelTimer(this + 28, "ThrottleTimer");
        v8 = *(this + 24);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(buf, this);
          v9 = v24 >= 0 ? buf : *buf;
          *__p = 141558275;
          *&__p[4] = 1752392040;
          v18 = 2081;
          v19 = v9;
          _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleBarringAccessAlleviated: canceled current ThrottleTimer", __p, 0x16u);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(*buf);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "ScheduleRetry");
        (*(*this + 576))(this, v7, buf);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }

        if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(__p, this);
          v16 = *(this + 51);
          ims::TimeAndIntervalFromNow::logStr(&v16);
        }

        SipRegistrationPolicy::startTimer(this);
        goto LABEL_43;
      }

      v10 = *(this + 24);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      (*(*this + 184))(buf, this);
      if (v24 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      *__p = 141558275;
      *&__p[4] = 1752392040;
      v18 = 2081;
      v19 = v14;
      v12 = "%{private, mask.hash}shandleBarringAccessAlleviated: no-op: registration barring did not add extra wait time";
    }

    else
    {
      v10 = *(this + 24);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      (*(*this + 184))(buf, this);
      if (v24 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      *__p = 141558275;
      *&__p[4] = 1752392040;
      v18 = 2081;
      v19 = v13;
      v12 = "%{private, mask.hash}shandleBarringAccessAlleviated: no-op: registration barring is not active";
    }
  }

  else
  {
    v10 = *(this + 24);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    (*(*this + 184))(buf, this);
    if (v24 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v18 = 2081;
    v19 = v11;
    v12 = "%{private, mask.hash}shandleBarringAccessAlleviated: no-op: registration is currently not being throttled";
  }

  _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, v12, __p, 0x16u);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

LABEL_43:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4F79AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::emergencyRegistrationTimeout(SipRegistrationPolicy *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 49);
      if (v5)
      {
        v9 = 0u;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v7[0] = &unk_1F5EBDEF8;
        v7[1] = &_bambiDomain;
        v8 = 1073741842;
        v6 = ImsResult::operator<<<char [31]>(v7, "Emergency registration timeout");
        (*(*v5 + 88))(v5, v6);
        ImsResult::~ImsResult(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F79BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void SipRegistrationPolicy::handleTimer(SipRegistrationPolicy *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5 == 13)
  {
    v6 = *a2;
    if (v4 >= 0)
    {
      v6 = a2;
    }

    v7 = *v6;
    v8 = *(v6 + 5);
    if (v7 == 0x656C74746F726854 && v8 == 0x72656D6954656C74)
    {
      v20 = *(a1 + 24);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 184))(__p, a1);
        v21 = v29 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v31 = 1752392040;
        v32 = 2081;
        v33 = v21;
        _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration throttling timer fired", buf, 0x16u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      SipRegistrationPolicy::retryRegistration(a1);
      goto LABEL_52;
    }
  }

  v10 = qword_1EE2BD1E8;
  if (byte_1EE2BD1F7 >= 0)
  {
    v10 = byte_1EE2BD1F7;
  }

  if (v5 != v10 || (v4 >= 0 ? (v11 = a2) : (v11 = *a2), byte_1EE2BD1F7 >= 0 ? (v12 = &SipRegistrationPolicy::kSubscriptionRetryTimerName) : (v12 = SipRegistrationPolicy::kSubscriptionRetryTimerName), memcmp(v11, v12, v5)))
  {
    if ((*(*a1 + 536))(a1))
    {
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v14 = *(a2 + 23);
      }

      else
      {
        v14 = *(a2 + 8);
      }

      v15 = qword_1EE2BD200;
      if (byte_1EE2BD20F >= 0)
      {
        v15 = byte_1EE2BD20F;
      }

      if (v14 == v15)
      {
        v16 = v13 >= 0 ? a2 : *a2;
        v17 = byte_1EE2BD20F >= 0 ? &SipRegistrationPolicy::kEmergencyRegistrationTimer : SipRegistrationPolicy::kEmergencyRegistrationTimer;
        if (!memcmp(v16, v17, v14))
        {
          v18 = *(*a1 + 88);
          v19 = *MEMORY[0x1E69E9840];

          v18(a1);
          return;
        }
      }
    }

LABEL_52:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v22 = *(a1 + 50);
  if (!v22)
  {
    goto LABEL_52;
  }

  v23 = std::__shared_weak_count::lock(v22);
  if (!v23)
  {
    goto LABEL_52;
  }

  v24 = v23;
  v25 = *(a1 + 49);
  if (v25)
  {
    (*(*v25 + 96))(v25);
  }

  v26 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
}

uint64_t SipRegistrationPolicy::handleNonSipError(SipRegistrationPolicy *this, const ImsResult *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(this + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(__p, this);
      if (v12 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = *(this + 53);
      *buf = 141558531;
      v14 = 1752392040;
      v15 = 2081;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleNonSipError(causedByUAC): scheduleRetry(preferredRetryInterval=%lu, useNextProxy=false)", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = (*(*this + 488))(this, a2, *(this + 53), 0);
    goto LABEL_14;
  }

  if (!(*(*this + 408))(this, 0, 200))
  {
    result = -1;
LABEL_14:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v8 = *MEMORY[0x1E69E9840];

  return SipRegistrationPolicy::handleGeneralError(this, a2);
}

uint64_t SipRegistrationPolicy::handleGeneralError(SipRegistrationPolicy *this, const ImsResult *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 57);
  if (v4)
  {
    v5 = v4 == *(this + 58);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    ImsResult::operator=(v4 + 496 * *(this + 60) + 408, a2);
  }

  ++*(this + 50);
  SipRegistrationPolicy::clearAllThrottling(this);
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v7 = v35 >= 0 ? __p : *__p;
    v8 = *(this + 50);
    *v25 = 141558531;
    *&v25[4] = 1752392040;
    v26 = 2081;
    v27 = v7;
    v28 = 1024;
    v29 = v8;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandling general registration error #%u", v25, 0x1Cu);
    if (v35 < 0)
    {
      operator delete(*__p);
    }
  }

  if ((*(this + 220) & 1) == 0)
  {
    v9 = *(this + 50);
    v10 = *(this + 461);
    v11 = *(this + 24);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9 <= v10)
    {
      if (v12)
      {
        (*(*this + 184))(__p, this);
        v14 = v35 >= 0 ? __p : *__p;
        v15 = *(this + 461) - *(this + 50);
        *v25 = 141558531;
        *&v25[4] = 1752392040;
        v26 = 2081;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sstill have %u more re-registration attempts", v25, 0x1Cu);
        if (v35 < 0)
        {
          operator delete(*__p);
        }
      }
    }

    else
    {
      if (v12)
      {
        (*(*this + 184))(v25, this);
        v13 = v28 >= 0 ? v25 : *v25;
        *__p = 141558275;
        *&__p[4] = 1752392040;
        v33 = 2081;
        v34 = v13;
        _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stoo many re-registration errors. Next attempt will be an initial registration.", __p, 0x16u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*v25);
        }
      }

      (*(*this + 248))(this);
    }
  }

  v16 = SipRegistrationPolicy::countOfProxiesWithErrors(this);
  v17 = 0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - *(this + 57)) >> 4);
  v18 = *(this + 24);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17 == v16)
  {
    if (v19)
    {
      (*(*this + 184))(v25, this);
      if (v28 >= 0)
      {
        v20 = v25;
      }

      else
      {
        v20 = *v25;
      }

      *__p = 141558275;
      *&__p[4] = 1752392040;
      v33 = 2081;
      v34 = v20;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived general errors from all proxies", __p, 0x16u);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*v25);
      }
    }

    result = (*(*this + 144))(this, a2);
  }

  else
  {
    if (v19)
    {
      (*(*this + 184))(__p, this);
      v21 = v35 >= 0 ? __p : *__p;
      v22 = 0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - *(this + 57)) >> 4);
      *v25 = 141558787;
      *&v25[4] = 1752392040;
      v26 = 2081;
      v27 = v21;
      v28 = 1024;
      v29 = v16;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived general errors from %u of %zu proxies", v25, 0x26u);
      if (v35 < 0)
      {
        operator delete(*__p);
      }
    }

    result = (*(*this + 136))(this, a2);
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SipRegistrationPolicy::isFatalError(SipRegistrationPolicy *this, int a2)
{
  if (SipResponseCodeMap::empty((this + 2304)))
  {
    return (a2 & 0xFFFFFFFD) == 400;
  }

  return SipResponseCodeMap::containsResponseCodeForMethod(this + 2304, "REGISTER", a2, 0);
}

BOOL SipRegistrationPolicy::isForbiddenUserError(SipRegistrationPolicy *this, int a2)
{
  if (SipResponseCodeMap::empty((this + 2336)))
  {
    return (a2 - 403) < 2;
  }

  return SipResponseCodeMap::containsResponseCodeForMethod(this + 2336, "REGISTER", a2, 0);
}

uint64_t SipRegistrationPolicy::isForbiddenCountryError(uint64_t a1, SipMessage **a2)
{
  v3 = *a2;
  if (*(*a2 + 32) != 403)
  {
    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  SipMessage::reasonText(v3, &__p);
  v4 = (*(*a1 + 120))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1E4F7A7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRegistrationPolicy::isForbiddenCountryReasonText(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (byte_1EE2BBE1F >= 0)
  {
    v3 = &kResponseServiceNotAllowedInThisLocation;
  }

  else
  {
    v3 = kResponseServiceNotAllowedInThisLocation;
  }

  return strcasecmp(v2, v3) == 0;
}

uint64_t SipRegistrationPolicy::isWifiAccessNetwork(SipRegistrationPolicy *this)
{
  v2 = *(this + 50);
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
  v5 = *(this + 49);
  if (v5)
  {
    v6 = (*(*v5 + 56))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void SipRegistrationPolicy::handleDeregistrationError(os_log_t *this, uint64_t **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2[1] == &_posixDomain)
  {
    goto LABEL_14;
  }

  v4 = a2;
  do
  {
    v5 = v4;
    v4 = v4[4];
  }

  while (v4);
  if (v5[1] == &_posixDomain)
  {
LABEL_14:
    v6 = a2;
    do
    {
      v7 = v6;
      v6 = v6[4];
    }

    while (v6);
    if (ImsResultSet::containsResult((this + 252), *(v7 + 4)))
    {
      if (os_log_type_enabled(this[24], OS_LOG_TYPE_DEFAULT))
      {
        ((*this)[23].isa)(&v9, this);
        ImsResult::logStr(a2);
      }

      SipRegistrationPolicy::clearAllThrottling(this);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7AA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::handleRegistrationError(uint64_t a1, SipResponse **a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 408))(a1, 0, *(*a2 + 32)) & 1) == 0)
  {
    SipRegistrationPolicy::clearAllThrottling(a1);
    v16 = -1;
    goto LABEL_41;
  }

  v4 = *(a1 + 192);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 184))(__p, a1);
    v5 = v33;
    v6 = *__p;
    v7 = (*(*a1 + 128))(a1);
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    v9 = "false";
    *&buf[4] = 1752392040;
    *buf = 141558531;
    if (v7)
    {
      v9 = "true";
    }

    *&buf[12] = 2081;
    *&buf[14] = v8;
    v35 = 2080;
    v36 = v9;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swifi access network: %s", buf, 0x20u);
    if (v33 < 0)
    {
      operator delete(*__p);
    }
  }

  if ((*(*a1 + 128))(a1))
  {
    v10 = a2[1];
    v28 = *a2;
    v29 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*a1 + 112))(a1, &v28);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      if (v11)
      {
LABEL_14:
        v12 = *(a1 + 192);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 184))(buf, a1);
          if (v35 >= 0)
          {
            v13 = buf;
          }

          else
          {
            v13 = *buf;
          }

          *__p = 141558275;
          *&__p[4] = 1752392040;
          v31 = 2081;
          v32 = v13;
          _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sForbidden Country Situation", __p, 0x16u);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v14 = *(*a2 + 32) == 0;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *buf = &unk_1F5EBDEF8;
        *&buf[8] = &_bambiDomain;
        *&buf[16] = v14 << 30;
        v36 = 0;
        v37 = 0;
        v15 = (*(*a1 + 168))(a1, buf);
        goto LABEL_36;
      }
    }

    else if (v11)
    {
      goto LABEL_14;
    }
  }

  if ((*(*a1 + 104))(a1, *(*a2 + 32)))
  {
    v17 = a2[1];
    v26 = *a2;
    v27 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(*a1 + 160))(a1, &v26);
    v18 = v27;
    if (!v27)
    {
      goto LABEL_41;
    }

LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    goto LABEL_41;
  }

  *(a1 + 208) = 0;
  v19 = *a2;
  if (*(*a2 + 32) != 423)
  {
    if ((*(*a1 + 96))(a1))
    {
      v23 = *(*a2 + 32) == 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      *buf = &unk_1F5EBDEF8;
      *&buf[8] = &_bambiDomain;
      *&buf[16] = v23 << 30;
      v36 = 0;
      v37 = 0;
      v15 = (*(*a1 + 152))(a1, buf);
    }

    else
    {
      SipResponse::asImsResult(*a2, buf);
      v15 = SipRegistrationPolicy::handleGeneralError(a1, buf);
    }

LABEL_36:
    v16 = v15;
    ImsResult::~ImsResult(buf);
    goto LABEL_41;
  }

  v20 = a2[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = SipMessage::header<SipRetryAfterHeader>(v19);
  SipResponse::asImsResult(v19, buf);
  if (v21)
  {
    v22 = (*(*a1 + 488))(a1, buf, v21[26], 0);
  }

  else
  {
    v22 = SipRegistrationPolicy::handleGeneralError(a1, buf);
  }

  v16 = v22;
  ImsResult::~ImsResult(buf);
  if (v20)
  {
    v18 = v20;
    goto LABEL_40;
  }

LABEL_41:
  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1E4F7B008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  ImsResult::~ImsResult(&a20);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t SipRegistrationPolicy::handleMaxReRegistrationErrors(uint64_t this)
{
  *(this + 220) = 1;
  *(this + 216) = 0;
  return this;
}

uint64_t SipRegistrationPolicy::handleAuthChallengeError(SipRegistrationPolicy *this, const ImsResult *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  SipRegistrationPolicy::clearAllThrottling(this);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_bambiDomain;
  v13 = 1073741832;
  if (*(a2 + 1) == &_bambiDomain)
  {
    v4 = *(a2 + 4);
    ImsResult::~ImsResult(__p);
    if (v4 == 1073741832)
    {
      v5 = *(this + 24);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(__p, this);
        v6 = v14 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v20 = 1752392040;
        v21 = 2081;
        v22 = v6;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sretrying on auth challenge sync failure", buf, 0x16u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    ImsResult::~ImsResult(__p);
  }

  v7 = *(this + 57);
  if (v7 && v7 != *(this + 58))
  {
    ImsResult::operator=(v7 + 496 * *(this + 60) + 408, a2);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - *(this + 57)) >> 4) != SipRegistrationPolicy::countOfProxiesWithErrors(this))
  {
    if ((*(*this + 320))(this))
    {
      (*(*this + 504))(this);
    }

LABEL_22:
    result = 1;
    goto LABEL_24;
  }

  v8 = *(this + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2081;
    v22 = v9;
    _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived auth challenge error from all proxies", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*this + 144))(this, a2);
  result = 0;
LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SipRegistrationPolicy::countOfProxiesWithErrors(SipRegistrationPolicy *this)
{
  v1 = *(this + 57);
  if (*(this + 58) == v1)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 424;
  do
  {
    v4 = v4 + (*(**(v1 + v5 - 8) + 24))(*(v1 + v5 - 8), *(v1 + v5));
    ++v3;
    v1 = *(this + 57);
    v5 += 496;
  }

  while (v3 < 0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - v1) >> 4));
  return v4;
}

uint64_t SipRegistrationPolicy::retryTimeFromResult(SipRegistrationPolicy *this, const ImsResult *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1) != &SipResultDomain::_domain)
  {
    goto LABEL_16;
  }

  v2 = a2;
  if (!SipRegistrationConfig::honorRetryAfterForStatusCode((this + 504), *(a2 + 4)))
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 0;
  SipResultDomain::responseFromResult(v2, &v12);
  if (v12 && (v2 = SipMessage::header<SipRetryAfterHeader>(v12)) != 0)
  {
    v4 = *(this + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(__p, this);
      v5 = v11 >= 0 ? __p : __p[0];
      v6 = *(v2 + 104);
      *buf = 141558531;
      v15 = 1752392040;
      v16 = 2081;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUsing Retry-After header value: %u", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = 0;
    v2 = *(v2 + 104);
  }

  else
  {
    v7 = 1;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v7)
  {
LABEL_16:
    v2 = -1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1E4F7B61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::handleGeneralErrorFromOneProxy(SipRegistrationPolicy *this, const ImsResult *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = SipRegistrationPolicy::retryTimeFromResult(this, a2);
  if (v4 == -1)
  {
    v5 = (*(*this + 200))(this);
  }

  else
  {
    v5 = v4;
    v6 = *(this + 50);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(this + 49);
        if (v9)
        {
          (*(*v9 + 144))(buf);
          v10 = *(*buf + 248);
          v11 = *(*buf + 256);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = SipUserAgent::config(v10);
          v13 = SipTimers::timerValue((v12 + 512), &SipTimers::kTimerF, 0);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          if (v5 < (v13 / 0x3E8uLL))
          {
            v14 = *(this + 24);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 184))(__p, this);
              if (v27 >= 0)
              {
                v15 = __p;
              }

              else
              {
                v15 = *__p;
              }

              *buf = 141558787;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v15;
              v29 = 2048;
              v30 = v5;
              v31 = 1024;
              v32 = v13;
              _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRetry-After header value=%ld < timerF=%u: will stay on the same proxy", buf, 0x26u);
              if (v27 < 0)
              {
                operator delete(*__p);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            v16 = 0;
            goto LABEL_36;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  v17 = (*(*this + 320))(this);
  v18 = *(this + 24);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      (*(*this + 184))(buf, this);
      v20 = v29 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v25 = 2081;
      v26 = v20;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stime to switch proxies", __p, 0x16u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }
    }

    v16 = 1;
  }

  else
  {
    if (v19)
    {
      (*(*this + 184))(buf, this);
      v21 = v29 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v25 = 2081;
      v26 = v21;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swill try again with the same proxy.", __p, 0x16u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }
    }

    v16 = 0;
  }

LABEL_36:
  result = (*(*this + 488))(this, a2, v5, v16);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SipRegistrationPolicy::handleFatalError(SipRegistrationPolicy *this, const ImsResult *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(this + 57);
  if (v4)
  {
    v5 = v4 == *(this + 58);
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    ImsResult::operator=(v4 + 496 * *(this + 60) + 408, a2);
  }

  ++*(this + 51);
  SipRegistrationPolicy::clearAllThrottling(this);
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
    v7 = v28 >= 0 ? __p : *__p;
    v8 = *(this + 51);
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v30 = 2081;
    v31 = v7;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandling fatal registration error #%u", buf, 0x1Cu);
    if (v28 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(this + 539) != 1)
  {
    v16 = *(this + 24);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    (*(*this + 184))(buf, this);
    v17 = v32 >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    v26 = 2081;
    v27 = v17;
    _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdisabled mode is, uh, disabled. I'll keep retrying.", __p, 0x16u);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v15 = *buf;
    goto LABEL_26;
  }

  v9 = *(this + 51);
  v10 = *(this + 376);
  v11 = *(this + 24);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9 < v10)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    (*(*this + 184))(__p, this);
    v13 = v28 >= 0 ? __p : *__p;
    v14 = *(this + 376) - *(this + 51);
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v30 = 2081;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived fatal registration response. %u more and you're done.", buf, 0x1Cu);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v15 = *__p;
LABEL_26:
    operator delete(v15);
LABEL_27:
    v18 = (*(*this + 320))(this);
    if ((v18 & 1) == 0)
    {
      v19 = *(this + 24);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(buf, this);
        if (v32 >= 0)
        {
          v20 = buf;
        }

        else
        {
          v20 = *buf;
        }

        *__p = 141558275;
        *&__p[4] = 1752392040;
        v26 = 2081;
        v27 = v20;
        _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthis is a re-registration. Trying to use the same proxy.", __p, 0x16u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v21 = (*(*this + 208))(this);
    result = (*(*this + 488))(this, a2, v21, v18);
    goto LABEL_42;
  }

  if (v12)
  {
    (*(*this + 184))(buf, this);
    v23 = v32 >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    v26 = 2081;
    v27 = v23;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}stoo many fatal registration errors.  Disabling IMS registration.", __p, 0x16u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }
  }

  SipRegistrationPolicy::setRegistrationMode(this, &SipRegistrationMode::kModeDisabled, 200);
  result = -1;
LABEL_42:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void SipRegistrationPolicy::setRegistrationMode(SipRegistrationPolicy *this, const SipRegistrationMode *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(this + 50);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(this + 49);
      if (v8)
      {
        v9 = *a2;
        if (*(this + 112) != *a2)
        {
          if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 184))(v20, this);
            SipRegistrationMode::logStr((this + 448));
          }

          *(this + 112) = v9;
          (*(*this + 568))(this);
          if (*(this + 112) != SipRegistrationMode::kModeNormal)
          {
            v10 = *(this + 24);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 184))(v20, this);
              v11 = v23;
              v12 = *v20;
              deviceEventsToString(*(this + 452), v18);
              v13 = v20;
              if (v11 < 0)
              {
                v13 = v12;
              }

              if (v19 >= 0)
              {
                v14 = v18;
              }

              else
              {
                v14 = v18[0];
              }

              *buf = 141558531;
              *&buf[4] = 1752392040;
              v25 = 2081;
              v26 = v13;
              v27 = 2080;
              v28 = v14;
              _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot resetting registration mode until we see one of these events: %s", buf, 0x20u);
              if (v19 < 0)
              {
                operator delete(v18[0]);
              }

              if (v23 < 0)
              {
                operator delete(*v20);
              }
            }
          }

          (*(*v8 + 32))(v8, a2, a3);
        }

LABEL_27:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_28;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *(this + 24);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(buf, this);
    v16 = v27 >= 0 ? buf : *buf;
    *v20 = 141558275;
    *&v20[4] = 1752392040;
    v21 = 2081;
    v22 = v16;
    _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssetRegistrationMode: no delegate", v20, 0x16u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v7)
  {
    goto LABEL_27;
  }

LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7C360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationPolicy::handleForbiddenUser(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(*a2 + 128);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  SipResponse::asImsResult(v4, v29);
  v6 = *(a1 + 456);
  if (v6 && v6 != *(a1 + 464))
  {
    ImsResult::operator=(v6 + 496 * *(a1 + 480) + 408, v29);
  }

  *(a1 + 220) = 1;
  *(a1 + 216) = 0;
  ++*(a1 + 208);
  SipRegistrationPolicy::clearAllThrottling(a1);
  v7 = (*(*a1 + 216))(a1);
  v8 = *(a1 + 192);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 184))(__p, a1);
    v9 = v34 >= 0 ? __p : *__p;
    v10 = *(a1 + 208);
    *buf = 141558531;
    *&buf[4] = 1752392040;
    v36 = 2081;
    v37 = v9;
    v38 = 1024;
    v39 = v10;
    _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandling consecutive forbidden/unknown user registration error #%u", buf, 0x1Cu);
    if (v34 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 208) == *(a1 + 212))
  {
    if (*(a1 + 538) == 1 && *(a1 + 448) != SipRegistrationMode::kModeLimitedAccess)
    {
      v17 = *(a1 + 192);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 184))(buf, a1);
        v18 = v38 >= 0 ? buf : *buf;
        *__p = 141558275;
        *&__p[4] = 1752392040;
        v32 = 2081;
        v33 = v18;
        _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived Forbidden/Unknown responses from all proxies.  Falling back to limited-access mode.", __p, 0x16u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }

      SipRegistrationPolicy::setRegistrationMode(a1, &SipRegistrationMode::kModeLimitedAccess, 200);
      v19 = time(0);
      *(a1 + 416) = v19;
      v20 = *(a1 + 1496);
      std::string::basic_string[abi:ne200100]<0>(buf, "LimitedAccessThrottling");
      (*(*a1 + 576))(a1, v20 + v19, buf);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }

      SipRegistrationPolicy::setProxyOffset(a1, 0);
      goto LABEL_41;
    }

    v11 = SipMessage::header<SipWarningHeader>(*a2);
    if (*(a1 + 539) == 1 && v11)
    {
      if ((*(*a1 + 176))(a1, v11))
      {
        v12 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "received Forbidden responses from all proxies. Trigger RCS reprovisioning.", 74);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        v13 = &SipRegistrationMode::kModeReprovision;
LABEL_31:
        SipRegistrationPolicy::setRegistrationMode(a1, v13, v5);
LABEL_41:
        v21 = -1;
        goto LABEL_57;
      }

      if ((*(a1 + 539) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 539))
    {
LABEL_43:
      v22 = *(a1 + 192);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 184))(buf, a1);
        v23 = v38 >= 0 ? buf : *buf;
        *__p = 141558275;
        *&__p[4] = 1752392040;
        v32 = 2081;
        v33 = v23;
        _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdisabled mode is, uh, disabled. I'll keep retrying.", __p, 0x16u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_49;
    }

    v15 = *(a1 + 192);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 184))(buf, a1);
      v16 = v38 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v32 = 2081;
      v33 = v16;
      _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived Forbidden/Unknown responses from all proxies.  Disabling IMS registration.", __p, 0x16u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }

    v13 = &SipRegistrationMode::kModeDisabled;
    goto LABEL_31;
  }

  v14 = SipMessage::header<SipRetryAfterHeader>(*a2);
  if (v14 && *(a1 + 2128) == 1)
  {
    v7 = v14[26];
  }

  if (SipMessage::header<SipWarningHeader>(*a2) && ((*(*a1 + 176))(a1) & 1) != 0)
  {
    goto LABEL_41;
  }

LABEL_49:
  v24 = (*(*a1 + 320))(a1);
  if ((v24 & 1) == 0)
  {
    v25 = *(a1 + 192);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 184))(buf, a1);
      if (v38 >= 0)
      {
        v26 = buf;
      }

      else
      {
        v26 = *buf;
      }

      *__p = 141558275;
      *&__p[4] = 1752392040;
      v32 = 2081;
      v33 = v26;
      _os_log_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthis is a re-registration. Trying to use the same proxy.", __p, 0x16u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v21 = (*(*a1 + 488))(a1, v29, v7, v24);
LABEL_57:
  ImsResult::~ImsResult(v29);
  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

void *SipMessage::header<SipWarningHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Warning");
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

BOOL SipRegistrationPolicy::shouldWaitForCallsToEnd(SipRegistrationPolicy *this)
{
  v2 = *(this + 50);
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
  v5 = *(this + 49);
  v6 = *(this + 2161) != 1 || v5 == 0;
  v8 = !v6 && (*(*v5 + 120))(v5) && (v7 = *(this + 62), v7 != -1) && *(this + 60) != v7;
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v8;
}

void SipRegistrationPolicy::handleAllCallsEnded(SipRegistrationPolicy *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 2264) == 1)
  {
    *(this + 2264) = 0;
    v2 = *(this + 24);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(__p, this);
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
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sall calls have ended. Retrying registration.", buf, 0x16u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipRegistrationPolicy::retryRegistration(this);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SipRegistrationPolicy::handleRegistrationChange(int8x8_t *this, const SipRegistrationStateNotification *a2, const SipRegistrationState *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(*(*a2 + 48))(a2) == 2)
  {
    if ((*(*this + 536))(this))
    {
      SipTimerContainer::cancelTimer(this + 28, &SipRegistrationPolicy::kEmergencyRegistrationTimer);
    }

    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      if (this[27].i8[4] == 1)
      {
        this[27].i8[4] = 0;
      }

      else
      {
        ++this[27].i32[0];
      }

      (*(*this + 568))(this);
      this[62] = this[60];
    }

    goto LABEL_17;
  }

  {
LABEL_17:
    v9 = -1;
    goto LABEL_18;
  }

  v8 = v7;
  if (v7[80] == 1 && (v7[81] & 1) == 0)
  {
    Retry = SipRegistrationNotification::secondsUntilNextRetry(a2);
    v13 = this[186];
    if (v13 >= Retry)
    {
      v14 = Retry;
    }

    else
    {
      v14 = this[186];
    }

    if (!v13)
    {
      v14 = Retry;
    }

    if ((Retry - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v15 = this[186];
    }

    else
    {
      v15 = v14;
    }

    v16 = this[50];
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = v17;
        v19 = this[49];
        if (!*&v19)
        {
          goto LABEL_33;
        }

        (*(**&v19 + 144))(&__p, *&this[49]);
        v20 = SipStack::prefs(__p);
        v21 = ImsPrefs::KeepThrottleRegAfterTerminationWhileOutOfService(v20);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (!v21)
        {
          (*(**&v19 + 144))(&__p, v19);
          v29 = *(__p + 4504);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          if ((v29 & 1) == 0)
          {
            v30 = this[24];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 184))(&__p, this);
              v31 = v35 >= 0 ? &__p : __p;
              *buf = 141558275;
              v41 = 1752392040;
              v42 = 2081;
              v43 = v31;
              _os_log_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno more reg attempt after termination while no connectivity", buf, 0x16u);
              if (v35 < 0)
              {
                operator delete(__p);
              }
            }

            goto LABEL_17;
          }
        }

        else
        {
LABEL_33:
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }

    v22 = (*(*this + 328))(this);
    v23 = *(v8 + 14);
    if (v22)
    {
      if (v23 != 21)
      {
        v24 = this[24];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(&__p, this);
          if (v35 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 141558275;
          v41 = 1752392040;
          v42 = 2081;
          v43 = p_p;
          v26 = "%{private, mask.hash}smoving to next proxy due to registration change";
          goto LABEL_48;
        }

        goto LABEL_50;
      }
    }

    else if (v23 == 2 && this[271].i8[0] == 1)
    {
      v24 = this[24];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(&__p, this);
        if (v35 >= 0)
        {
          v27 = &__p;
        }

        else
        {
          v27 = __p;
        }

        *buf = 141558275;
        v41 = 1752392040;
        v42 = 2081;
        v43 = v27;
        v26 = "%{private, mask.hash}smoving to next proxy due to P-CSCF restoration";
LABEL_48:
        _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
        if (v35 < 0)
        {
          operator delete(__p);
        }
      }

LABEL_50:
      v28 = 1;
LABEL_52:
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      __p = &unk_1F5EBDEF8;
      v33 = &_bambiDomain;
      v34 = 1073741839;
      v9 = (*(*this + 488))(this, &__p, v15, v28);
      ImsResult::~ImsResult(&__p);
      goto LABEL_18;
    }

    v28 = 0;
    goto LABEL_52;
  }

  if ((*(v7 + 14) - 3) > 1)
  {
    goto LABEL_17;
  }

  SipTimerContainer::cancelAllTimers(&this[28]);
  v9 = -1;
  if (*(v8 + 14) == 3 && *a3 == 2)
  {
    SipRegistrationPolicy::clearAllThrottling(this);
  }

LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t SipRegistrationPolicy::printProxyErrors(uint64_t this, ImsOutStream *a2, int a3)
{
  v3 = *(this + 456);
  v4 = *(this + 464);
  if (v3 != v4)
  {
    v6 = a3;
    v7 = v3 + 408;
    do
    {
      std::string::basic_string[abi:ne200100](__p, v6, 32);
      (*(*a2 + 32))(a2, __p);
      v8 = v7 - 408;
      (*(*(v7 - 408) + 40))(v7 - 408, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*(**(v7 + 8) + 24))(*(v7 + 8), *(v7 + 16)))
      {
        (*(*v7 + 16))(v7, a2);
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "no errors", 9);
        *(a2 + 17) = 0;
      }

      this = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      v3 += 496;
      v7 += 496;
    }

    while (v8 + 496 != v4);
  }

  return this;
}

void sub_1E4F7D5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::printPolicyInfo(SipRegistrationPolicy *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Initial reg:   ", 19);
  *(a2 + 17) = 0;
  if (*(this + 220))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (*(this + 220))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v4, v5);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Re-reg count:  ", 19);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 54));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 52))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Last Throttle: ", 19);
    *(a2 + 17) = 0;
    ims::formatTimeAndIntervalFromNow(*(this + 51), a2, v6);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if (*(this + 51))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Next retry:    ", 19);
    *(a2 + 17) = 0;
    ims::formatTimeAndIntervalFromNow(*(this + 51), a2, v7);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Mode:                 ", 26);
  *(a2 + 17) = 0;
  v8 = operator<<(a2, this + 112);
  (*(*a2 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 50) || *(this + 52) || *(this + 51))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Policy failures: ", 21);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "      General:    ", 18);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), *(this + 50));
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "      Forbidden:  ", 18);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), *(this + 52));
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "      Fatal:      ", 18);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), *(this + 51));
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Last error from each proxy: ", 32);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;

    return SipRegistrationPolicy::printProxyErrors(this, a2, 6);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Policy failures: none", 25);
    *(a2 + 17) = 0;
    result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  return result;
}

void SipRegistrationPolicy::logStrForPolicyInfo(SipRegistrationPolicy *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4F7DB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipRegistrationPolicy::emergencyStateExited(SipRegistrationPolicy *this)
{
  result = (*(*this + 536))(this);
  if (result)
  {
    *(this + 220) = 1;
    *(this + 54) = 0;
  }

  return result;
}

void SipRegistrationPolicy::checkTimers(SipRegistrationPolicy *this, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 29, "ThrottleTimer"))
  {
    v4 = *(this + 51);
    if (v4 >= 1)
    {
      v5 = v4 - a2;
      if (v4 <= a2)
      {
        v12 = *(this + 24);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(buf, this);
          v13 = v20 >= 0 ? buf : *buf;
          *v16 = 141558275;
          *&v16[4] = 1752392040;
          v17 = 2081;
          v18 = v13;
          _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}soops, I slept through the last throttle time", v16, 0x16u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(*buf);
          }
        }

        SipRegistrationPolicy::startTimer(this);
      }

      else
      {
        v6 = 0;
        v7 = *(this + 52);
        if (v7 >= 1)
        {
          v8 = v4 <= v7;
          v9 = v4 - v7;
          if (!v8)
          {
            v10 = v9 * *(this + 141) / 100;
            if (v10 >= *(this + 142))
            {
              v10 = *(this + 142);
            }

            v6 = v10 & ~(v10 >> 63);
          }
        }

        v11 = os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT);
        if (v5 <= v6)
        {
          if (v11)
          {
            (*(*this + 184))(v16, this);
            v15 = *(this + 51);
            ims::TimeAndIntervalFromNow::logStr(&v15);
          }

          std::string::basic_string[abi:ne200100]<0>(buf, "CheckTimers");
          (*(*this + 576))(this, a2, buf);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(*buf);
          }

          SipRegistrationPolicy::retryRegistration(this);
        }

        else
        {
          if (v11)
          {
            (*(*this + 184))(v16, this);
            v15 = *(this + 51);
            ims::TimeAndIntervalFromNow::logStr(&v15);
          }

          SipRegistrationPolicy::startTimer(this);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7E008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::currentProxies(SipRegistrationPolicy *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(this + 57);
  v3 = *(this + 58);
  if (v2 != v3)
  {
    v6 = 0;
    do
    {
      if (v6 == *(this + 60))
      {
        v7 = *(a2 + 32);
        v8 = *(a2 + 8);
        v9 = *(a2 + 16);
        if (!v7)
        {
          v10 = 2 * (v9 - v8) - 1;
          v11 = v9 - v8;
          if (v9 == v8)
          {
            v10 = 0;
          }

          if ((v10 - *(a2 + 40)) < 0x10)
          {
            v12 = *(a2 + 24);
            v13 = *a2;
            v14 = v12 - *a2;
            if (v11 < v14)
            {
              if (v8 != v13)
              {
                operator new();
              }

              operator new();
            }

            if (v12 == v13)
            {
              v15 = 1;
            }

            else
            {
              v15 = v14 >> 2;
            }

            v19[4] = a2;
            std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a2, v15);
          }

          *(a2 + 32) = 16;
          v19[0] = *(v9 - 8);
          *(a2 + 16) = v9 - 8;
          std::__split_buffer<SipUri *>::emplace_front<SipUri *>(a2, v19);
          v7 = *(a2 + 32);
          v8 = *(a2 + 8);
          v9 = *(a2 + 16);
        }

        v16 = (v8 + 8 * (v7 >> 4));
        v17 = *v16 + 408 * (v7 & 0xF);
        if (v9 == v8)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        if (v18 == *v16)
        {
          v18 = *(v16 - 1) + 6528;
        }

        SipUri::SipUri((v18 - 408), v2);
        *(a2 + 32) = vaddq_s64(*(a2 + 32), xmmword_1E5177540);
      }

      else if (((*(**(v2 + 416) + 24))(*(v2 + 416), *(v2 + 424)) & 1) == 0)
      {
        std::deque<SipUri>::push_back(a2, v2);
      }

      ++v6;
      v2 += 496;
    }

    while (v2 != v3);
  }
}

void sub_1E4F7E330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14)
{
  operator delete(v15);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<SipUri>::~deque[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipRegistrationPolicy::transportInitializedToProxy(SipRegistrationPolicy *this, const SipUri *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 57);
  v3 = *(this + 58);
  if (v2 != v3)
  {
    v6 = 0;
    do
    {
      memset(v14, 0, sizeof(v14));
      SipUri::SipUri(v14, v2);
      ImsResult::ImsResult((&v14[25] + 8), (v2 + 408));
      v7 = SipUri::equals(v14, a2, 1);
      if (v7)
      {
        *(this + 60) = v6;
        v8 = *(this + 24);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 184))(__p, this);
          v9 = __p;
          if (v13 < 0)
          {
            v9 = __p[0];
          }

          *buf = 141558531;
          v16 = 1752392040;
          v17 = 2081;
          v18 = v9;
          v19 = 2048;
          v20 = v6;
          _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinitialized transport to proxy offset %lu", buf, 0x20u);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        ++v6;
      }

      ImsResult::~ImsResult((&v14[25] + 8));
      SipUri::~SipUri(v14);
      v2 += 496;
      if (v2 == v3)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }
    }

    while ((v10 & 1) == 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ImsResult::~ImsResult((v7 + 408));
  SipUri::~SipUri(va);
  _Unwind_Resume(a1);
}

void SipRegistrationPolicy::skipToNextProxy(SipRegistrationPolicy *this)
{
  v1 = *(this + 58) - *(this + 57);
  if (v1 != 496)
  {
    v2 = *(this + 60);
    if (v2 + 1 < 0xEF7BDEF7BDEF7BDFLL * (v1 >> 4))
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 0;
    }

    SipRegistrationPolicy::setProxyOffset(this, v3);
  }
}

void SipRegistrationPolicy::setProxyOffset(SipRegistrationPolicy *this, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 57);
  v3 = *(this + 58);
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (*(this + 60) == a2)
    {
      if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(v20, this);
        v8 = *(this + 57);
        if (v8 == *(this + 58))
        {
          v9 = 0;
        }

        else
        {
          v9 = (v8 + 496 * *(this + 60));
        }

        SipHop::logStr(v9);
      }
    }

    else if (0xEF7BDEF7BDEF7BDFLL * ((v3 - v2) >> 4) <= a2)
    {
      v12 = *(this + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        (*(*this + 184))(v20, this);
        v13 = v21 >= 0 ? v20 : v20[0];
        *buf = 141558531;
        v23 = 1752392040;
        v24 = 2081;
        v25 = v13;
        v26 = 2048;
        v27 = a2;
        _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}s%lu is not a valid proxy offset", buf, 0x20u);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }
    }

    else
    {
      *(this + 60) = a2;
      *(this + 220) = 1;
      *(this + 54) = 0;
      if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(v20, this);
        v10 = *(this + 57);
        if (v10 == *(this + 58))
        {
          v11 = 0;
        }

        else
        {
          v11 = (v10 + 496 * *(this + 60));
        }

        SipHop::logStr(v11);
      }

      (*(*this + 224))(this);
      v14 = *(this + 50);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = *(this + 49);
          if (v17)
          {
            v18 = *(this + 57);
            if (v18 == *(this + 58))
            {
              v19 = 0;
            }

            else
            {
              v19 = v18 + 496 * *(this + 60);
            }

            (*(*v17 + 48))(v17, v19);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void SipRegistrationPolicy::setProxy(SipRegistrationPolicy *this@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 58) == *(this + 57))
  {
LABEL_13:
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buf = &unk_1F5EBDEF8;
    v17 = &_bambiDomain;
    v18 = 1073741836;
    v12 = ImsResult::operator<<<char [15]>(buf, "unknown proxy ");
    v13 = *(v12 + 3);
    if (!v13)
    {
      operator new();
    }

    (*(*a2 + 40))(a2, v13);
    ImsResult::ImsResult(a3, v12);
    ImsResult::~ImsResult(buf);
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 8;
  while (1)
  {
    v8 = *(this + 50);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(this + 49);
        if (v10)
        {
          v11 = (*(*v10 + 112))(v10);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 5060;
LABEL_9:
    if (SipHost::equalsWithDefaultPort((a2 + 8), (*(this + 57) + v7), v11))
    {
      break;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    ++v6;
    v7 += 496;
    if (v6 >= 0xEF7BDEF7BDEF7BDFLL * ((*(this + 58) - *(this + 57)) >> 4))
    {
      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(&v15, this);
    SipHop::logStr(a2);
  }

  SipRegistrationPolicy::setProxyOffset(this, v6);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7ED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::lastProxyResult(SipRegistrationPolicy *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 57);
  if (v2)
  {
    v3 = v2 == *(this + 58);
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }

  else
  {
    ImsResult::ImsResult(a2, (v2 + 496 * *(this + 60) + 408));
  }
}

BOOL SipRegistrationPolicy::allProxiesHaveError(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 456);
  v3 = *(a1 + 464) - v2;
  if (!v3)
  {
    return 1;
  }

  v4 = 0xEF7BDEF7BDEF7BDFLL * (v3 >> 4);
  v5 = *(a2 + 8);
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (*(v2 + 416) != v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (*(v2 + 424) != v7)
  {
    return 0;
  }

  v8 = (v2 + 920);
  v9 = 1;
  do
  {
    v10 = v9;
    if (v6 == v9)
    {
      break;
    }

    if (*(v8 - 1) != v5)
    {
      break;
    }

    v11 = *v8;
    ++v9;
    v8 += 124;
  }

  while (v11 == v7);
  return v10 >= v4;
}

void SipRegistrationPolicy::onInterfaceChanged(SipRegistrationPolicy *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(__p, this);
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
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sClearing throttling due to network interface change.", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipRegistrationPolicy::clearAllThrottling(this);
  v4 = *MEMORY[0x1E69E9840];
}

void SipRegistrationPolicy::updateConfig(NSObject **this, const SipRegistrationConfig *a2)
{
  v3 = this;
  v98 = *MEMORY[0x1E69E9840];
  v4 = this[24];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 184))(&__p, v3);
    v5 = v55 >= 0 ? &__p : __p;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating config", buf, 0x16u);
    if (v55 < 0)
    {
      operator delete(__p);
    }
  }

  bzero(&__p, 0x688uLL);
  SipRegistrationConfig::SipRegistrationConfig(&__p, (v3 + 504));
  SipRegistrationConfig::operator=(v3 + 504, a2);
  if ((*(*v3 + 536))(v3))
  {
    SipRegistrationPolicy::clearAllThrottling(v3);
    goto LABEL_23;
  }

  v6 = *(v3 + 50);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(v3 + 49);
      if (v8)
      {
        if ((*(*v8 + 128))(v8))
        {
          (*(*v3 + 240))(v3);
LABEL_22:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v3 + 24);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 184))(buf, v3);
    v10 = v65 >= 0 ? buf : *buf;
    *v73 = 141558275;
    *&v73[4] = 1752392040;
    *&v73[12] = 2081;
    *&v73[14] = v10;
    _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNetwork interface hasn't changed. Not clearing throttling.", v73, 0x16u);
    if (v65 < 0)
    {
      operator delete(*buf);
    }
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_23:
  v11 = *(v3 + 24);
  if (__p != v54 && os_log_type_enabled(*(v3 + 24), OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 184))(v73, v3);
    std::string::basic_string[abi:ne200100]<0>(v60, ",");
    ims::join<std::__wrap_iter<SipUri const*>>();
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 184))(v73, v3);
    std::string::basic_string[abi:ne200100]<0>(v60, ",");
    v12 = *a2;
    v13 = *(a2 + 1);
    ims::join<std::__wrap_iter<SipUri const*>>();
  }

  if (*(v3 + 57) == *(v3 + 58))
  {
    v17 = *(v3 + 24);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    (*(*v3 + 184))(buf, v3);
    if (v65 >= 0)
    {
      v20 = buf;
    }

    else
    {
      v20 = *buf;
    }

    *v73 = 141558275;
    *&v73[4] = 1752392040;
    *&v73[12] = 2081;
    *&v73[14] = v20;
    v19 = "%{private, mask.hash}sinitialized proxy list";
    goto LABEL_55;
  }

  v15 = *(v3 + 63);
  v14 = *(v3 + 64);
  v16 = __p;
  if (v14 - v15 != v54 - __p)
  {
LABEL_33:
    v17 = *(v3 + 24);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 184))(buf, v3);
      if (v65 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      *v73 = 141558275;
      *&v73[4] = 1752392040;
      *&v73[12] = 2081;
      *&v73[14] = v18;
      v19 = "%{private, mask.hash}sproxy list has changed.";
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  while (v15 != v14)
  {
    if (!SipUri::equals(v15, v16, 1))
    {
      goto LABEL_33;
    }

    v15 = (v15 + 408);
    v16 = (v16 + 408);
  }

  if ((*(*v3 + 536))(v3))
  {
    v17 = *(v3 + 24);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 184))(buf, v3);
      if (v65 >= 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      *v73 = 141558275;
      *&v73[4] = 1752392040;
      *&v73[12] = 2081;
      *&v73[14] = v21;
      v19 = "%{private, mask.hash}sresetting proxy list for emergency call";
      goto LABEL_55;
    }

LABEL_57:
    v25 = (v3 + 456);
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v26 = *(v3 + 57);
    if (v26 && v26 != *(v3 + 58))
    {
      SipUri::SipUri(v73, (v26 + 496 * *(v3 + 60)));
      BYTE8(v97) = 1;
      v26 = *v25;
    }

    std::vector<SipRegistrationPolicy::ProxyInfo>::__base_destruct_at_end[abi:ne200100](v3 + 456, v26);
    v27 = *a2;
    if (*(a2 + 1) != *a2)
    {
      v28 = 0;
      v50 = (v3 + 456);
      do
      {
        SipUri::SipUri(buf);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v66[0] = &unk_1F5EBDEF8;
        v66[1] = &_bambiDomain;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        SipUri::operator=(buf, v27 + 408 * v28);
        v30 = *(v3 + 58);
        v29 = *(v3 + 59);
        if (v30 >= v29)
        {
          v32 = 0xEF7BDEF7BDEF7BDFLL * ((v30 - *v25) >> 4);
          v33 = v32 + 1;
          if (v32 + 1 > 0x84210842108421)
          {
            std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
          }

          v34 = a2;
          v35 = 0xEF7BDEF7BDEF7BDFLL * ((v29 - *v25) >> 4);
          if (2 * v35 > v33)
          {
            v33 = 2 * v35;
          }

          if (v35 >= 0x42108421084210)
          {
            v36 = 0x84210842108421;
          }

          else
          {
            v36 = v33;
          }

          v59 = v25;
          if (v36)
          {
            if (v36 <= 0x84210842108421)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = 0;
          v57 = 496 * v32;
          v58 = 496 * v32;
          SipUri::SipUri((496 * v32), buf);
          ImsResult::ImsResult(496 * v32 + 408, v66);
          *&v58 = v58 + 496;
          v38 = *(v3 + 57);
          v37 = *(v3 + 58);
          v39 = v3;
          v60[0] = v25;
          v60[1] = &v62;
          v61 = 0;
          v60[2] = &v63;
          v40 = v38;
          v41 = v57 + v38 - v37;
          v63 = v41;
          v62 = v41;
          v42 = v41;
          if (v38 == v37)
          {
            LOBYTE(v61) = 1;
          }

          else
          {
            do
            {
              SipUri::SipUri(v42, v40);
              ImsResult::ImsResult((v42 + 408), (v40 + 408));
              v40 += 496;
              v42 = v63 + 496;
              v63 += 496;
            }

            while (v40 != v37);
            LOBYTE(v61) = 1;
            do
            {
              ImsResult::~ImsResult((v38 + 408));
              SipUri::~SipUri(v38);
              v38 += 496;
            }

            while (v38 != v37);
          }

          std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SipRegistrationPolicy::ProxyInfo>,SipRegistrationPolicy::ProxyInfo*>>::~__exception_guard_exceptions[abi:ne200100](v60);
          v43 = *(v39 + 57);
          *(v39 + 57) = v41;
          v44 = *(v39 + 59);
          v51 = v58;
          *(v39 + 29) = v58;
          *&v58 = v43;
          *(&v58 + 1) = v44;
          v57 = v43;
          v56 = v43;
          std::__split_buffer<SipRegistrationPolicy::ProxyInfo>::~__split_buffer(&v56);
          v31 = v51;
          a2 = v34;
          v25 = v50;
          v3 = v39;
        }

        else
        {
          SipUri::SipUri(*(v3 + 58), buf);
          ImsResult::ImsResult(v30 + 408, v66);
          v31 = v30 + 496;
          *(v3 + 58) = v30 + 496;
        }

        *(v3 + 58) = v31;
        ImsResult::~ImsResult(v66);
        SipUri::~SipUri(buf);
        ++v28;
        v27 = *a2;
      }

      while (v28 < 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 1) - *a2) >> 3));
    }

    (*(*v3 + 232))(v3, v73);
    v45 = -1108378657 * ((*(v3 + 58) - *(v3 + 57)) >> 4);
    *(v3 + 53) = v45;
    if (v45 == 1)
    {
      *(v3 + 53) = *(a2 + 334);
    }

    if (BYTE8(v97) == 1)
    {
      SipUri::~SipUri(v73);
    }

    goto LABEL_85;
  }

  v22 = *(a2 + 1656);
  v17 = *(v3 + 24);
  v23 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v22 == 1)
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    (*(*v3 + 184))(buf, v3);
    if (v65 >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    *v73 = 141558275;
    *&v73[4] = 1752392040;
    *&v73[12] = 2081;
    *&v73[14] = v24;
    v19 = "%{private, mask.hash}sproxy list hasn't changed, but updating it anyway";
LABEL_55:
    _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, v19, v73, 0x16u);
    if (v65 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_57;
  }

  if (v23)
  {
    (*(*v3 + 184))(buf, v3);
    v49 = v65 >= 0 ? buf : *buf;
    *v73 = 141558275;
    *&v73[4] = 1752392040;
    *&v73[12] = 2081;
    *&v73[14] = v49;
    _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sproxy list hasn't changed", v73, 0x16u);
    if (v65 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_85:
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, v3 + 20);
  v46 = *&buf[8];
  if (*buf)
  {
    v47 = *buf + 144;
  }

  else
  {
    v47 = 0;
  }

  v52[0] = v47;
  v52[1] = *&buf[8];
  *&buf[8] = 0;
  *buf = 0;
  SipSimpleBackoffTimer::initialize(v3 + 2184, v3 + 224, v52, &SipRegistrationPolicy::kSubscriptionRetryTimerName, *(a2 + 342), *(a2 + 343));
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v3 + 2336 != a2 + 1384)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>(v3 + 293, *(a2 + 174), a2 + 175);
  }

  if (v3 + 2304 != a2 + 1416)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>(v3 + 289, *(a2 + 178), a2 + 179);
  }

  if (v3 + 2272 != a2 + 1448)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>(v3 + 285, *(a2 + 182), a2 + 183);
  }

  SipRegistrationConfig::~SipRegistrationConfig(&__p);
  v48 = *MEMORY[0x1E69E9840];
}

void sub_1E4F7FCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ImsResult *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  SipRegistrationConfig::~SipRegistrationConfig(va);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationPolicy::bestAssociatedUri(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void SipRegistrationPolicy::systemClockDidChange(SipRegistrationPolicy *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 51))
  {
    v2 = time(0);
    v3 = (*(*this + 200))(this) + v2;
    v4 = *(this + 51);
    if (v4 <= v3)
    {
      v5 = os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT);
      if (v4 >= v2)
      {
        if (v5)
        {
          (*(*this + 184))(v9, this);
          __p[0] = *(this + 51);
          ims::TimeAndIntervalFromNow::logStr(__p);
        }
      }

      else if (v5)
      {
        (*(*this + 184))(v9, this);
        __p[0] = *(this + 51);
        ims::TimeAndIntervalFromNow::logStr(__p);
      }
    }

    else
    {
      if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(v9, this);
        v8 = *(this + 51);
        ims::TimeAndIntervalFromNow::logStr(&v8);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "SystemClockDidChange");
      (*(*this + 576))(this, v3, buf);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(*buf);
      }

      *(this + 52) = v2;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4F80250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRegistrationPolicy::handleSubscriptionFailed(SipRegistrationPolicy *this, const ImsResult *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 20);
    v4 = v14;
    if (v14)
    {
      p_shared_weak_owners = &v14->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    operator new();
  }

  v6 = (*(*this + 256))(this, a2);
  v7 = (*(*v6 + 24))(v6);
  v8 = time(0);
  result = os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    (*(*this + 184))(&v12, this);
    v11 = v8 + v7;
    ims::TimeAndIntervalFromNow::logStr(&v11);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F80518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationPolicy::handleSubscriptionSucceeded(SipRegistrationPolicy *this)
{
  v1 = *(*(*(*this + 256))(this) + 16);

  return v1();
}

uint64_t SipRegistrationPolicy::disableIfInWrongCountry(uint64_t a1, void *a2)
{
  result = (*(*a1 + 128))(a1);
  if (result)
  {
    v5 = a2[1];
    v15 = *a2;
    v16 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*a1 + 112))(a1, &v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      if (v6)
      {
LABEL_6:
        v7 = *(*a2 + 128) == 0;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v8[0] = &unk_1F5EBDEF8;
        v8[1] = &_bambiDomain;
        v9 = v7 << 30;
        v10 = 0;
        v11 = 0;
        (*(*a1 + 168))(a1, v8);
        ImsResult::~ImsResult(v8);
        return 1;
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

void sub_1E4F8072C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

_BYTE *SipRegistrationPolicy::getClientRegTypeStr@<X0>(SipRegistrationPolicy *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 593);
  if (v4 > 3)
  {
    v5 = "";
  }

  else
  {
    v5 = off_1E876BBA0[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void SipEmergencyRegistrationPolicy::~SipEmergencyRegistrationPolicy(SipEmergencyRegistrationPolicy *this)
{
  *this = &unk_1F5EE2038;
  v2 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *(this + 8) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 72, *(this + 10));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_1F5EE2038;
  v2 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *(this + 8) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 72, *(this + 10));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  MEMORY[0x1E69235B0](this, 0x10B3C40B37997A8);
}

void std::vector<SipRegistrationPolicy::ProxyInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SipRegistrationPolicy::ProxyInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SipRegistrationPolicy::ProxyInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, SipUri *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = (v4 - 496);
      ImsResult::~ImsResult((v4 - 88));
      SipUri::~SipUri(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SipRegistrationPolicy::ProxyInfo>,SipRegistrationPolicy::ProxyInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v4 = (v3 - 496);
        ImsResult::~ImsResult((v3 - 88));
        SipUri::~SipUri(v4);
        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<SipRegistrationPolicy::ProxyInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 496);
    *(a1 + 16) = i - 496;
    ImsResult::~ImsResult((i - 88));
    SipUri::~SipUri(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ims::SharedLoggable<SipRegistrationPolicy>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipRegistrationPolicy>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21SipRegistrationPolicyEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21SipRegistrationPolicyEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2488;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2488;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE2488;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipRegistrationPolicy::startTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2508;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2508;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE2508;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0,std::allocator<SipRegistrationPolicy::startEmergencyRegistrationTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ims::join<std::__wrap_iter<SipUri const*>>()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4F81190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t ims::join<std::__wrap_iter<SipUri const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = result;
    v8 = 1;
    v9 = result;
    do
    {
      if ((v8 & 1) == 0)
      {
        (*(*a3 + 32))(a3, a4);
      }

      result = (*(*v9 + 40))(v9, a3);
      v8 = 0;
      v9 += 408;
      v7 += 408;
    }

    while (v9 != a2);
  }

  return result;
}

void *std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2588;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE2588;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE2588;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<SipRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipRegistrationPolicy_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&SipRegistrationPolicy::kSubscriptionRetryTimerName, "RegSubscriptionRetryTimer");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &SipRegistrationPolicy::kSubscriptionRetryTimerName, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&SipRegistrationPolicy::kEmergencyRegistrationTimer, "EmergencyRegistrationTimer");
  __cxa_atexit(v0, &SipRegistrationPolicy::kEmergencyRegistrationTimer, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&SipRegistrationPolicy::kThumperErrorUnauthorized, "Account Authentication Failure");
  __cxa_atexit(v0, &SipRegistrationPolicy::kThumperErrorUnauthorized, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&kResponseServiceNotAllowedInThisLocation, "Service not allowed in this location");

  return __cxa_atexit(v0, &kResponseServiceNotAllowedInThisLocation, &dword_1E4C3F000);
}

BOOL SipStandardDigestAuthScheme::hasValidNonce(SipStandardDigestAuthScheme *this)
{
  v1 = *(this + 207);
  if (v1 < 0)
  {
    v1 = *(this + 24);
  }

  return v1 != 0;
}

void SipStandardDigestAuthScheme::computeResponse(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
  }

  (*(*v3 + 120))(v3);
  v6 = v3[14];
  SipDigestAuthScheme::_computeResponse();
}

void sub_1E4F81790(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStandardDigestAuthScheme::computeResponse(uint64_t a1)
{
  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 208);
    v2 = *(a1 + 216);
  }

  SipDigestAuthScheme::_computeResponse();
}

{
  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 208);
    v2 = *(a1 + 216);
  }

  SipDigestAuthScheme::_computeResponse(a1);
}

void SipStandardDigestAuthScheme::~SipStandardDigestAuthScheme(void **this)
{
  *this = &unk_1F5EE2608;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

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

{
  *this = &unk_1F5EE2608;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

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
  MEMORY[0x1E69235B0](this, 0x10B3C4000F68170);
}

void SipRegistrationInfoBody::SipRegistrationInfoBody(SipRegistrationInfoBody *this, const SipRegistrationInfoBody *a2)
{
  v3 = SipXmlBody::SipXmlBody(this, a2);
  *v3 = &unk_1F5ED5C40;
  SipRegistrationInfo::SipRegistrationInfo((v3 + 4), (a2 + 32));
}

void sub_1E4F81BEC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5ED9B90;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_SipRegistrationInfoBody_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(SipRegistrationInfoBody::kContentType, "application/reginfo+xml");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, SipRegistrationInfoBody::kContentType, &dword_1E4C3F000);
}

void SipToHeader::~SipToHeader(SipToHeader *this)
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

void SipRoutableLocalAddressHeader::SipRoutableLocalAddressHeader(SipRoutableLocalAddressHeader *this)
{
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  SipStringHeader::SipStringHeader(this, "Routable-Local-Address", &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F5EE2770;
  *(this + 56) = 0;
}

void sub_1E4F81ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRoutableLocalAddressHeader::setValueFromString(uint64_t a1, std::string *a2)
{
  v6 = 0;
  v7 = 0;
  IpAddress::createAddress(a2, &v6);
  if (v6 && (*(*v6 + 88))(v6))
  {
    IpAddress::asString(&v5);
  }

  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v3 = *(a1 + 72);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3 != 0;
}

void sub_1E4F81FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipRoutableLocalAddressHeader::~SipRoutableLocalAddressHeader(void **this)
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

void LazuliUri::LazuliUri(LazuliUri *this, const SipHost *a2, char a3)
{
  *this = &unk_1F5EE2808;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 7) = &unk_1F5ED7D40;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 14) = &unk_1F5EBEF50;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  v5 = this + 120;
  *(this + 17) = 0;
  *(this + 152) = a3;
  *(this + 72) = 257;
  SipHost::operator=(this + 56, a2);
  if (!*(this + 44))
  {
    *(this + 44) = 2855;
    v6 = *(this + 12);
    if (v6)
    {
      (*(*v6 + 64))(v6, 2855);
    }
  }

  if (*(this + 152))
  {
    v7 = "msrps";
  }

  else
  {
    v7 = "msrp";
  }

  std::string::__assign_external(v4, v7);
  std::string::basic_string[abi:ne200100]<0>(v10, "tcp");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v12 = v10;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5, v10);
  std::string::operator=((v8 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1E4F822D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  *(v20 + 112) = v23;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v24, *(v20 + 128));
  SipHost::~SipHost(v22);
  if (*(v20 + 55) < 0)
  {
    operator delete(*(v20 + 32));
  }

  if (*(v20 + 31) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

uint64_t LazuliUri::fromString(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&__str, "LazuliUri");
  v32[0] = 0;
  v35 = 0;
  v5 = ims::debug(v4, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "fromString ", 11);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v35 == 1 && v34 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  SipHost::clear((a1 + 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 120, *(a1 + 128));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 128;
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      return 0;
    }
  }

  else if (!*(a2 + 23))
  {
    return 0;
  }

  v7 = std::string::find(a2, 58, 0);
  if (v7 == -1)
  {
    return 0;
  }

  v8 = v7;
  std::string::basic_string(&v31, a2, 0, v7, v25);
  ims::lowerCase(&v31, &__str);
  v9 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *&__str.__r_.__value_.__l.__data_;
  *(a1 + 24) = *(&__str.__r_.__value_.__l + 2);
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    if (*(a1 + 31) != 4)
    {
      v10 = (a1 + 8);
      if (*(a1 + 31) != 5)
      {
        return 0;
      }

      goto LABEL_25;
    }

    v16 = *v9;
    goto LABEL_33;
  }

  v11 = *(a1 + 16);
  if (v11 == 4)
  {
    v16 = **v9;
LABEL_33:
    if (v16 == 1886548845)
    {
      v15 = 0;
      goto LABEL_35;
    }

    return 0;
  }

  if (v11 != 5)
  {
    return 0;
  }

  v10 = *v9;
LABEL_25:
  v12 = *v10;
  v13 = v10[4];
  if (v12 != 1886548845 || v13 != 115)
  {
    return 0;
  }

  v15 = 1;
LABEL_35:
  *(a1 + 152) = v15;
  v17 = std::string::find(a2, 59, v8 + 1);
  if (v17 == -1)
  {
    return 0;
  }

  v18 = v17;
  std::string::basic_string(&__str, a2, v17 + 1, v6 + ~v17, &v31);
  SipParameterMap::fromString(a1 + 112, &__str, 0, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v19 = v8 + 3;
  v20 = std::string::find(a2, 47, v19);
  if (v20 == -1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
    std::string::basic_string(&__str, a2, v20 + 1, v18 + ~v20, &v31);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = __str;
  }

  if (v21 <= v19)
  {
    return 0;
  }

  memset(&__str, 0, sizeof(__str));
  std::string::basic_string(&__str, a2, v19, v21 - v19, &v31);
  SipHost::fromString(a1 + 56, &__str);
  std::string::basic_string[abi:ne200100]<0>(&v31, "LazuliUri");
  v27[0] = 0;
  v30 = 0;
  v22 = ims::debug(&v31, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " scheme=", 8);
  *(v22 + 17) = 0;
  (*(*v22 + 32))(v22, a1 + 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " _hostname=", 11);
  *(v22 + 17) = 0;
  (*(*v22 + 32))(v22, a1 + 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " _hostport=", 11);
  *(v22 + 17) = 0;
  MEMORY[0x1E6923380](*(v22 + 8), *(a1 + 88));
  *(v22 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " _sessionId=", 12);
  *(v22 + 17) = 0;
  (*(*v22 + 32))(v22, a1 + 32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " tcp=", 5);
  *(v22 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(v25, "tcp");
  v23 = a1 + 128 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, v25);
  MEMORY[0x1E6923320](*(v22 + 8), v23);
  *(v22 + 17) = 0;
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4F828B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  _Unwind_Resume(exception_object);
}

void LazuliUri::setHostPort(LazuliUri *this, unsigned __int16 a2)
{
  v6 = 0;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  SipHost::SipHost(v4, this + 56);
  LOWORD(v5) = a2;
  if (*(&v5 + 1))
  {
    (*(**(&v5 + 1) + 64))(*(&v5 + 1), a2);
  }

  (*(*this + 24))(this, v4);
  SipHost::~SipHost(v4);
}

void LazuliUri::~LazuliUri(LazuliUri *this)
{
  *this = &unk_1F5EE2808;
  *(this + 14) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 120, *(this + 16));
  SipHost::~SipHost((this + 56));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  LazuliUri::~LazuliUri(this);

  JUMPOUT(0x1E69235B0);
}

ImsOutStream *LazuliUri::toStream(LazuliUri *this, ImsOutStream *a2)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_7;
    }
  }

  else if (!*(this + 31))
  {
    goto LABEL_7;
  }

  LoggableString::LoggableString(&__p, (this + 8));
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "://", 3);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_7:
  SipHost::toStream((this + 56), a2, 1);
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (!*(this + 5))
    {
      goto LABEL_13;
    }
  }

  else if (!*(this + 55))
  {
    goto LABEL_13;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "/", 1);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 32));
  (*(*a2 + 40))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_13:
  SipParameterMap::toStream((this + 112), a2, 0, @"[]/:&+$", @"#@!'()*=", 0);
  return a2;
}

void sub_1E4F82C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliUri::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = v2 >= 0 ? (a1 + 8) : *(a1 + 8);
  v9 = v5 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  v10 = *(a1 + 55);
  if (v10 >= 0)
  {
    v11 = *(a1 + 55);
  }

  else
  {
    v11 = *(a1 + 40);
  }

  v12 = *(a2 + 55);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 40);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 32) : *(a1 + 32);
  v15 = v13 >= 0 ? (a2 + 32) : *(a2 + 32);
  if (memcmp(v14, v15, v11) || *(a1 + 152) != *(a2 + 152) || !SipHost::equals((a1 + 56), (a2 + 56), 1))
  {
    return 0;
  }

  return SipParameterMap::operator==((a1 + 112), a2 + 112);
}

void LazuliUri::LazuliUri(LazuliUri *this, const LazuliUri *a2)
{
  *this = &unk_1F5EE2808;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  SipHost::SipHost(this + 56, a2 + 56);
  *(this + 14) = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(this + 15, *(a2 + 15), a2 + 16);
  *(this + 145) = 1;
  *(this + 144) = *(a2 + 144);
  *(this + 152) = *(a2 + 152);
}

void sub_1E4F82F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUint32Header::encodeValue(SipUint32Header *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 15));
  *(a2 + 17) = 0;
  return 1;
}

uint64_t SipUint32Header::setValueFromString(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  *(a1 + 60) = strtoul(v3, 0, 10);
  return 1;
}

void SipUint32Header::~SipUint32Header(void **this)
{
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipPAccessNetworkInfoHeader::SipPAccessNetworkInfoHeader(uint64_t a1, const std::string *a2)
{
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  SipStringParameterHeader::SipStringParameterHeader(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F5EE28F8;
  *(a1 + 128) = 2;
  return a1;
}

void sub_1E4F83108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipPAccessNetworkInfoHeader::setAccessNetworkInfo(uint64_t a1, std::string *this, uint64_t a3, int a4)
{
  memset(&v22, 0, sizeof(v22));
  memset(&__str, 0, sizeof(__str));
  if (ims::AccessNetwork::isGSM(this))
  {
    v8 = "cgi-3gpp";
LABEL_7:
    std::string::operator=(&v22, v8);
    goto LABEL_8;
  }

  if (ims::AccessNetwork::isUMTS(this) || ims::AccessNetwork::isLTE(this) || ims::AccessNetwork::isNR(this))
  {
    v8 = "utran-cell-id-3gpp";
    goto LABEL_7;
  }

  if (ims::AccessNetwork::is3GPP2(this))
  {
    v8 = "ci-3gpp2";
    goto LABEL_7;
  }

  if (ims::AccessNetwork::isWifi(this))
  {
    v8 = "i-wlan-node-id";
    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    v20 = 0;
    v19 = 0u;
    memset(&v18[1], 0, 48);
    v18[0] = time(0);
    ims::localtime(v18, &v18[2], v9);
    LODWORD(v20) = v19;
    ImsInternetDateTime::toString(v18, &v17);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v17;
    ims::addQuotes(&__str, 0);
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((a1 + 104), this);
    v18[0] = &v22;
    v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, &v22.__r_.__value_.__l.__data_);
    std::string::operator=((v11 + 56), this + 1);
    v12 = *(a3 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a3 + 8);
    }

    if (v12)
    {
      v18[0] = "country";
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, "country");
      std::string::operator=((v13 + 56), a3);
    }

    v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __str.__r_.__value_.__l.__size_;
    }

    if (v14)
    {
      v18[0] = "local-time-zone";
      v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, "local-time-zone");
      std::string::operator=((v15 + 56), &__str);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return size != 0;
}