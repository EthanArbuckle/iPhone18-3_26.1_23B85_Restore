void SipStack::registrationDomain(SipStack *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 31);
  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::registrationDomain(v3, a2);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E500AD50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::phoneContext(SipStack *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 2776) == 1)
  {
    SipUserAgent::publicDomain(*(this + 31), a2);
  }

  else
  {
    SipStack::registrationDomain(this, a2);
  }
}

void SipStack::makeCanonicalUri(SipStack *this@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 400) = 0;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  SipUri::SipUri(a3, a2);
  memset(&__p, 0, sizeof(__p));
  SipStack::phoneContext(this, &__p);
  SipUri::makeCanonical(a3);
  if (*(this + 296) != 1 || (v5 = SipStack::prefs(this), ImsPrefs::AllowPhoneContextInEmergencyUri(v5)))
  {
    if ((*(SipUserAgent::config(*(this + 31)) + 610) & 1) != 0 || SipUri::needsPhoneContext(a3))
    {
      SipUri::setPhoneContext(a3, &__p);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void SipStack::makeOutgoingSipUri(SipStack *a1@<X0>, std::string *a2@<X1>, SipUri *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  SipUri::SipUri(v7, a2);
  SipStack::makeOutgoingSipUri(a1, v7, a3, a4);
  SipUri::~SipUri(v7);
}

void SipStack::makeOutgoingSipUri(SipStack *this@<X0>, const SipUri *a2@<X1>, SipUri *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SipUri::isSipUri(a2))
  {
    SipUri::operator=(a3, a2);
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else if (SipUri::isTelUri(a2))
  {
    memset(&v15, 0, sizeof(v15));
    SipUserAgent::publicDomain(*(this + 31), &v15);
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      SipUri::setUser(a3, (a2 + 176), &__p);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      SipHost::SipHost(&__p, &v15);
      (*(*a3 + 32))(a3, &__p);
      SipHost::~SipHost(&__p);
      SipUri::makeCanonical(a3);
      if (os_log_type_enabled(*(this + 24), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(&v14, this);
        asString(a2);
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
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      __p = &unk_1F5EBDEF8;
      v17 = &_bambiDomain;
      v18 = 0x40000000;
      v12 = ImsResult::operator<<<char [46]>(&__p, "no public domain available to build a sip URI");
      ImsResult::ImsResult(a4, v12);
      ImsResult::~ImsResult(&__p);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    __p = &unk_1F5EBDEF8;
    v17 = &_bambiDomain;
    v18 = 1073741825;
    v9 = ImsResult::operator<<<char [12]>(&__p, "can't make ");
    v10 = ImsResult::operator<<<std::string>(v9, a2 + 104);
    v11 = ImsResult::operator<<<char [20]>(v10, " URIs into sip URIs");
    ImsResult::ImsResult(a4, v11);
    ImsResult::~ImsResult(&__p);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E500B320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::makeOutgoingSipUriForPull(void *a1@<X0>, uint64_t a2@<X1>, SipUri *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a1[31];
  v9 = *(v7 + 352);
  v8 = *(v7 + 360);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    goto LABEL_35;
  }

  if (*(a2 + 23) < 0)
  {
    v10 = *(a2 + 8);
    if (v10)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, v10);
LABEL_9:
      v11 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v9 + 248, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9 + 256 != v11 && *(v11 + 648) == 1)
      {
        SipDialogParticipantInfo::uri((v11 + 520), v24);
        if ((SBYTE7(v25) & 0x80u) == 0)
        {
          v12 = SBYTE7(v25);
        }

        else
        {
          v12 = v24[1];
        }

        if ((SBYTE7(v25) & 0x8000000000000000) != 0)
        {
          operator delete(v24[0]);
        }

        if (v12)
        {
          v49 = 0;
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
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          *v24 = 0u;
          SipDialogParticipantInfo::uri((v11 + 520), &v50);
          SipUri::SipUri(v24, &v50);
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          SipUri::operator=(a3, v24);
          *(a4 + 24) = 0u;
          *(a4 + 40) = 0u;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          *a4 = &unk_1F5EBDEF8;
          *(a4 + 8) = &_bambiDomain;
          *(a4 + 16) = 0;
          SipUri::~SipUri(v24);
          goto LABEL_70;
        }
      }

LABEL_35:
      v17 = 1;
      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if (*(a2 + 23))
  {
    __p = *a2;
    goto LABEL_9;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  SipDialogTable::getAllDialogs((v9 + 248), &v59);
  v13 = v59;
  v14 = v60;
  if (v59 == v60)
  {
LABEL_34:
    v24[0] = &v59;
    std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](v24);
    goto LABEL_35;
  }

  while (*(v13 + 592) != 1)
  {
LABEL_30:
    v13 += 600;
    if (v13 == v14)
    {
      goto LABEL_34;
    }
  }

  SipDialogParticipantInfo::uri((v13 + 464), v24);
  v15 = BYTE7(v25);
  if (SBYTE7(v25) < 0)
  {
    v15 = v24[1];
  }

  if (v15)
  {
    v16 = *(v13 + 136) == 4;
    if ((SBYTE7(v25) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = 0;
  if (SBYTE7(v25) < 0)
  {
LABEL_28:
    operator delete(v24[0]);
  }

LABEL_29:
  if (!v16)
  {
    goto LABEL_30;
  }

  v19 = a1[24];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(v57, a1);
    if (v58 >= 0)
    {
      v20 = v57;
    }

    else
    {
      v20 = v57[0];
    }

    ObfuscatedString::ObfuscatedString(v24, (v13 + 24));
    ObfuscatedString::operator std::string(&v55, v24);
    v56 = v55;
    memset(&v55, 0, sizeof(v55));
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v56;
    }

    else
    {
      v21 = v56.__r_.__value_.__r.__words[0];
    }

    ObfuscatedString::ObfuscatedString(&v50, v13);
    ObfuscatedString::operator std::string(&v53, &v50);
    v54 = v53;
    memset(&v53, 0, sizeof(v53));
    v22 = &v54;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v54.__r_.__value_.__r.__words[0];
    }

    *buf = 141558787;
    v63 = 1752392040;
    v64 = 2081;
    v65 = v20;
    v66 = 2080;
    v67 = v21;
    v68 = 2080;
    v69 = v22;
    _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUsing first found active Thumper call: %s [ %s ]", buf, 0x2Au);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }
  }

  v49 = 0;
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
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v24 = 0u;
  SipDialogParticipantInfo::uri((v13 + 464), &v50);
  SipUri::SipUri(v24, &v50);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  SipUri::operator=(a3, v24);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  SipUri::~SipUri(v24);
  v24[0] = &v59;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](v24);
LABEL_70:
  v17 = 0;
  if (v8)
  {
LABEL_36:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_37:
  if (v17)
  {
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 1073741836;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E500B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ims::AccessNetwork::~AccessNetwork(&__p);
  if (*(v65 - 201) < 0)
  {
    operator delete(*(v65 - 224));
  }

  if (*(v65 - 225) < 0)
  {
    operator delete(*(v65 - 248));
  }

  ims::AccessNetwork::~AccessNetwork(&a13);
  if (*(v65 - 169) < 0)
  {
    operator delete(*(v65 - 192));
  }

  a13 = v65 - 168;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void ObfuscatedString::operator std::string(std::string *a1, ObfuscatedString *this)
{
  ObfuscatedString::str(this);
  LoggableString::LoggableString(&__p, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = __p;
  }
}

void sub_1E500BAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::activeThumperPullCallId(SipStack *this@<X0>, std::string *a2@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(this + 31);
  v5 = *(v4 + 352);
  v6 = *(v4 + 360);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
LABEL_17:
    v11 = 1;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  SipDialogTable::getAllDialogs((v5 + 248), &v31);
  v7 = v31;
  v8 = v32;
  if (v31 == v32)
  {
LABEL_16:
    __p.__r_.__value_.__r.__words[0] = &v31;
    std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
    goto LABEL_17;
  }

  while (*(v7 + 592) != 1)
  {
LABEL_12:
    v7 += 600;
    if (v7 == v8)
    {
      goto LABEL_16;
    }
  }

  SipDialogParticipantInfo::uri((v7 + 464), &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = *(v7 + 136) == 4;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_10:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_11:
  if (!v10)
  {
    goto LABEL_12;
  }

  v13 = *(this + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v29, this);
    if (v30 >= 0)
    {
      v14 = v29;
    }

    else
    {
      v14 = v29[0];
    }

    ObfuscatedString::ObfuscatedString(&__p, (v7 + 24));
    ObfuscatedString::operator std::string(&v27, &__p);
    v28 = v27;
    memset(&v27, 0, sizeof(v27));
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v28;
    }

    else
    {
      v15 = v28.__r_.__value_.__r.__words[0];
    }

    ObfuscatedString::ObfuscatedString(v18, v7);
    ObfuscatedString::operator std::string(&v22, v18);
    v23 = v22;
    memset(&v22, 0, sizeof(v22));
    v16 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v23.__r_.__value_.__r.__words[0];
    }

    *buf = 141558787;
    v35 = 1752392040;
    v36 = 2081;
    v37 = v14;
    v38 = 2080;
    v39 = v15;
    v40 = 2080;
    v41 = v16;
    _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUsing first found active Thumper call: %s [ %s ]", buf, 0x2Au);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v7, *(v7 + 8));
  }

  else
  {
    v17 = *v7;
    a2->__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&a2->__r_.__value_.__l.__data_ = v17;
  }

  __p.__r_.__value_.__r.__words[0] = &v31;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  v11 = 0;
  if (v6)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_19:
  if (v11)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E500BE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  a22 = v40 - 152;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void SipStack::loggableName(SipStack *this@<X0>, std::string *a2@<X8>)
{
  v3 = (this + 4432);
  if (*(this + 296) == 1)
  {
    if (*(this + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(this + 554), *(this + 555));
    }

    else
    {
      *&v8.__r_.__value_.__l.__data_ = *v3;
      v8.__r_.__value_.__r.__words[2] = *(this + 556);
    }

    v4 = std::string::insert(&v8, 0, "SipStack(EMERGENCY) ", 0x14uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    LoggableString::LoggableString(a2, &__p);
  }

  else
  {
    if (*(this + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(this + 554), *(this + 555));
    }

    else
    {
      *&v8.__r_.__value_.__l.__data_ = *v3;
      v8.__r_.__value_.__r.__words[2] = *(this + 556);
    }

    v6 = std::string::insert(&v8, 0, "SipStack ", 9uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    LoggableString::LoggableString(a2, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E500BFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::logPrefix(SipStack *this, ImsOutStream *a2)
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

void sub_1E500C0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::logPrefixStr(SipStack *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 112))(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v3 = std::string::append(&v5, ": ", 2uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E500C1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::setMediaInitialized(SipStack *this, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(this + 80) == 1)
  {
    SipTimerContainer::cancelTimer(this + 366, "MediaInitTimer");
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(this + 80) = v4;
    *(this + 4625) = 0;
    if ((a2 & 1) == 0)
    {
      *(this + 4626) = 0;
    }

    v5 = *(this + 388);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 387);
        if (v8)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v24, this + 20);
          if (a2)
          {
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            *buf = &unk_1F5EBDEF8;
            *&buf[8] = &_bambiDomain;
            *&buf[16] = 0;
          }

          else
          {
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v17[0] = &unk_1F5EBDEF8;
            v17[1] = &_bambiDomain;
            v18 = 0x40000000;
            v14 = ImsResult::operator<<<char [18]>(v17, "media init failed");
            ImsResult::ImsResult(buf, v14);
          }

          (*(*v8 + 16))(v8, &v24, buf);
          ImsResult::~ImsResult(buf);
          if ((a2 & 1) == 0)
          {
            ImsResult::~ImsResult(v17);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    ImsPowerAssertion::deinitialize(this + 3112);
  }

  else
  {
    v9 = *(this + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(v17, this);
      v10 = v19;
      v11 = v17[0];
      std::to_string(&__p, *(this + 80));
      v12 = v17;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v12;
      v27 = 2080;
      *&v28 = p_p;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssetMediaInitialized called when we are in state: %s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v19 < 0)
      {
        operator delete(v17[0]);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E500C4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  ImsResult::~ImsResult(&a28);
  if ((v29 & 1) == 0)
  {
    ImsResult::~ImsResult(&__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipStack::handleCallEvent(SipStack *this, BambiCallEvent *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v6)
    {
      if (v5 && *(v5 + 552))
      {
        BambiEmergencyCallHandler::handleCallEvent(*(this + 564), a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t SipStack::sendMessage(uint64_t a1, const SipUri *a2, uint64_t a3, uint64_t a4, const std::string *a5, const ims::LocationInfo *a6)
{
  v68 = *MEMORY[0x1E69E9840];
  if (SipStack::registeredForSms(a1))
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
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
    *v32 = 0u;
    SipStack::makeCanonicalUri(a1, a2, v32);
    v12 = *(a1 + 248);
    v14 = *(v12 + 280);
    v13 = *(v12 + 288);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ims::LocationInfo::LocationInfo(v23, a6);
    v15 = SipMessageManager::send(v14, v32, a3, a4, a5, v23);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    SipUri::~SipUri(v32);
  }

  else
  {
    v16 = *(a1 + 192);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 80))(v32, a1);
      v22 = (SBYTE7(v33) & 0x80u) == 0 ? v32 : v32[0];
      *buf = 141558275;
      v65 = 1752392040;
      v66 = 2081;
      v67 = v22;
      _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}snot registered for SMS", buf, 0x16u);
      if (SBYTE7(v33) < 0)
      {
        operator delete(v32[0]);
      }
    }

    v17 = *(a1 + 248);
    v18 = *(v17 + 280);
    v19 = *(v17 + 288);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v58[0] = &unk_1F5EBDEF8;
    v58[1] = &_bambiDomain;
    v59 = 1073741826;
    SipMessageManager::deferError(v18, 0, v58);
    ImsResult::~ImsResult(v58);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E500C870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  ims::LocationInfo::~LocationInfo(&a9);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  SipUri::~SipUri(&a27);
  _Unwind_Resume(a1);
}

uint64_t SipStack::sendLazuli(SipStack *this, const LazuliSendParams *a2, const SipUri *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v7 = v20;
    v8 = __p[0];
    SipUri::asString(a3, v46);
    v9 = __p;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v49 >= 0)
    {
      v10 = v46;
    }

    else
    {
      v10 = *v46;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v9;
    *&buf[22] = 2085;
    *&buf[24] = v10;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::sendLazuli %{sensitive}s", buf, 0x20u);
    if (v49 < 0)
    {
      operator delete(*v46);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v45 = 0;
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
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(buf, 0, sizeof(buf));
  SipUri::SipUri(buf);
  if (SipUri::hasChatbotSubdomain(a3))
  {
    SipUri::operator=(buf, a3);
  }

  else
  {
    SipStack::makeCanonicalUri(this, a3, __p);
    SipUri::operator=(buf, __p);
    SipUri::~SipUri(__p);
  }

  v11 = *(this + 31);
  v12 = *(v11 + 296);
  v13 = *(v11 + 304);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    v14 = SipLazuliManager::send(v12, a2, buf);
    if (v13)
    {
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v17 = *(this + 24);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(__p, this);
      if (v20 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *v46 = 141558275;
      *&v46[4] = 1752392040;
      v47 = 2081;
      v48 = v18;
      _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", v46, 0x16u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v14 = 0;
    if (v13)
    {
      goto LABEL_18;
    }
  }

  SipUri::~SipUri(buf);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1E500CBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  SipUri::~SipUri(&a61);
  _Unwind_Resume(a1);
}

uint64_t SipStack::addLazuliParticipants(SipStack *this, const void **a2, const SipUri *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v7 = (SBYTE7(v16) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v42 = 2081;
    v43 = v7;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::addLazuliParticipants", buf, 0x16u);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  SipStack::makeCanonicalUri(this, a3, __p);
  v8 = *(this + 31);
  v9 = *(v8 + 296);
  v10 = *(v8 + 304);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    SipLazuliManager::addGroupParticipants(v9, a2, __p);
  }

  v13 = *(this + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(buf, this);
    v14 = v44 >= 0 ? buf : *buf;
    *v45 = 141558275;
    v46 = 1752392040;
    v47 = 2081;
    v48 = v14;
    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", v45, 0x16u);
    if (v44 < 0)
    {
      operator delete(*buf);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  SipUri::~SipUri(__p);
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E500CE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipUri::~SipUri(&a9);
  _Unwind_Resume(a1);
}

uint64_t SipStack::removeLazuliParticipants(SipStack *this, const void **a2, const SipUri *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v7 = (SBYTE7(v16) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v42 = 2081;
    v43 = v7;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::removeLazuliParticipants", buf, 0x16u);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  SipStack::makeCanonicalUri(this, a3, __p);
  v8 = *(this + 31);
  v9 = *(v8 + 296);
  v10 = *(v8 + 304);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    SipLazuliManager::removeGroupParticipants(v9, a2, __p);
  }

  v13 = *(this + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(buf, this);
    v14 = v44 >= 0 ? buf : *buf;
    *v45 = 141558275;
    v46 = 1752392040;
    v47 = 2081;
    v48 = v14;
    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", v45, 0x16u);
    if (v44 < 0)
    {
      operator delete(*buf);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  SipUri::~SipUri(__p);
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E500D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipUri::~SipUri(&a9);
  _Unwind_Resume(a1);
}

uint64_t SipStack::changeLazuliGroupInfo(SipStack *this, const LazuliSendParams *a2, const SipUri *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v7 = (SBYTE7(v17) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v43 = 2081;
    v44 = v7;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::changeLazuliGroupInfo", buf, 0x16u);
    if (SBYTE7(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v41 = 0;
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
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  SipStack::makeCanonicalUri(this, a3, __p);
  v8 = *(this + 31);
  v9 = *(v8 + 296);
  v10 = *(v8 + 304);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    v11 = SipLazuliManager::changeGroupInfo(v9, a2, __p);
    if (v10)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v14 = *(this + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(buf, this);
      if (v45 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      *v46 = 141558275;
      v47 = 1752392040;
      v48 = 2081;
      v49 = v15;
      _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", v46, 0x16u);
      if (v45 < 0)
      {
        operator delete(*buf);
      }
    }

    v11 = 0;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  SipUri::~SipUri(__p);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1E500D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipUri::~SipUri(&a9);
  _Unwind_Resume(a1);
}

uint64_t SipStack::reportLazuliSpam(SipStack *this, const LazuliSpamReportParams *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v5 = v15 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::reportLazuliSpam", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 31);
  v7 = *(v6 + 296);
  v8 = *(v6 + 304);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = SipLazuliManager::reportSpam(v7, a2);
    if (v8)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v12 = *(this + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(__p, this);
      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 141558275;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v13;
      _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = 0;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1E500D5EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::sendOptionsRequest(SipStack *a1, uint64_t a2, const SipUri *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(__p, a1);
    v6 = (SBYTE7(v16) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *v42 = 1752392040;
    *&v42[8] = 2081;
    *&v42[10] = v6;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::sendOptionsRequest", buf, 0x16u);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  SipStack::makeCanonicalUri(a1, a3, __p);
  v7 = *(a1 + 31);
  v8 = v7[40];
  v9 = v7[41];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a1 + 31);
  }

  v10 = v7[38];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7[37];
    v14 = 0;
  }

  SipOptionsManager::sendOptionsRequest(v8, buf);
  v11 = (*(**&v42[4] + 24))(*&v42[4], *&v42[12]);
  ImsResult::~ImsResult(buf);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipUri::~SipUri(__p);
  v12 = *MEMORY[0x1E69E9840];
  return v11 ^ 1u;
}

void sub_1E500D850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  ImsResult::~ImsResult((v13 - 144));
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    SipUri::~SipUri(&a11);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void SipStack::getTlsFingerprint(SipStack *this@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(this + 31);
  v5 = *(v4 + 296);
  v6 = *(v4 + 304);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(a2, (v5 + 544), (v5 + 568));
    if (v6)
    {
LABEL_5:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v8 = *(this + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(__p, this);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 141558275;
      v13 = 1752392040;
      v14 = 2081;
      v15 = v9;
      _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSipStack::getTlsFingerprint Lazuli manager is null", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E500DA10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::coalesceLazuliRegistrationRefresh(SipStack *this)
{
  v1 = *(this + 31);
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::coalesceLazuliRegistrationRefresh(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E500DA88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipStack::isGroupChatUri(SipStack *this, const SipUri *a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  SipUri::SipUri(v8);
  v4 = SipStack::prefs(this);
  ImsPrefs::LazuliConferenceFactory(v4, &__p);
  SipUri::fromString(v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SipUri::matches(a2, v8))
  {
    v5 = 1;
  }

  else
  {
    v5 = !SipUri::isTelUri(a2) && (isPhoneNumber(a2 + 128) & 1) == 0 && !SipUri::hasChatbotSubdomain(a2);
  }

  SipUri::~SipUri(v8);
  return v5;
}

void sub_1E500DB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  SipUri::~SipUri(&a16);
  _Unwind_Resume(a1);
}

void SipStack::saveEmergencyMessageCallId(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 296) == 1)
  {
    v4 = *(a1 + 192);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 80))(v10, a1);
      if (v11 >= 0)
      {
        v5 = v10;
      }

      else
      {
        v5 = v10[0];
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
      }

      else
      {
        v8 = *a2;
      }

      __p = v8;
      memset(&v8, 0, sizeof(v8));
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v5;
      v13 = 2080;
      v14 = p_p;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sFor emergency message, saving call-id %s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    IPTelephonyManager::getBambiClient(buf);
    std::vector<std::string>::push_back[abi:ne200100](*buf + 800, a2);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E500DD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::setEmergencyAni(SipStack *this, const ims::AccessNetworks *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 296) == 1)
  {
    std::string::operator=(this + 143, a2);
    std::string::operator=(this + 144, a2 + 1);
    v4 = *(a2 + 64);
    *(this + 3480) = *(a2 + 3);
    *(this + 3496) = v4;
    std::string::operator=(this + 146, a2 + 3);
    std::string::operator=(this + 147, a2 + 4);
    v5 = *(a2 + 136);
    *(this + 222) = *(a2 + 120);
    *(this + 3568) = v5;
    std::string::operator=(this + 149, a2 + 6);
    std::string::operator=(this + 150, a2 + 7);
    v6 = *(a2 + 208);
    *(this + 3624) = *(a2 + 12);
    *(this + 3640) = v6;
    v7 = *(this + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(v15, this);
      v8 = v16;
      v9 = v15[0];
      ims::asString((this + 3432), __p);
      v10 = v15;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 141558531;
      v18 = 1752392040;
      v19 = 2081;
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sSetting up emergency access network: %s", buf, 0x20u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E500DF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::mediaAddress(SipStack *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 38);
  if (v4 && (*(*v4 + 88))(v4))
  {

    SipHost::SipHost(a2, this + 304);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    (*(*(*(this + 35) + 1232) + 48))(&v5);
    (*(*v5 + 32))(&v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    (*(*v7 + 64))(v7, 0);
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    SipHost::SipHost(a2, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E500E0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::updateSdpWithLocalAddressAndUsername(uint64_t a1, std::string **a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  SipStack::mediaAddress(a1, v9);
  v4 = *a2;
  SipHost::address(v9, &v7);
  v5 = SipUserAgent::publicUri(*(a1 + 248));
  SipUri::asString(v5, &__p);
  SDPModel::updateWithLocalAddressAndUsername(v4, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  SipHost::~SipHost(v9);
}

void sub_1E500E1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  SipHost::~SipHost(&a18);
  _Unwind_Resume(a1);
}

BOOL SipStack::massageIncomingDisplayNumber(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2816) == 1)
  {
    v3 = *(a1 + 192);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      (*(*a1 + 80))(&__p, a1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = p_p;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot doing phone number prefix mapping while roaming", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }

  else
  {
    v6 = *(a1 + 2784);
    v7 = (a1 + 2792);
    if (v6 == (a1 + 2792))
    {
LABEL_36:
      result = 0;
      goto LABEL_48;
    }

    v9 = *(a2 + 23);
    while (1)
    {
      v10 = *(v6 + 55);
      v11 = v10 < 0 ? v6[5] : *(v6 + 55);
      if ((v9 & 0x80) != 0)
      {
        if (v11 == -1)
        {
LABEL_49:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *a2;
        v12 = *(a2 + 8) >= v11 ? v11 : *(a2 + 8);
      }

      else
      {
        if (v11 == -1)
        {
          goto LABEL_49;
        }

        v12 = v9 >= v11 ? v11 : v9;
        v13 = a2;
      }

      v14 = v10 >= 0 ? v6 + 4 : v6[4];
      v15 = !memcmp(v13, v14, v12) && v12 == v11;
      if (v15)
      {
        break;
      }

      v16 = v6[1];
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
          v17 = v6[2];
          v15 = *v17 == v6;
          v6 = v17;
        }

        while (!v15);
      }

      v6 = v17;
      if (v17 == v7)
      {
        goto LABEL_36;
      }
    }

    std::string::basic_string(&__p, a2, v11, 0xFFFFFFFFFFFFFFFFLL, &v27);
    v18 = *(v6 + 79);
    if (v18 >= 0)
    {
      v19 = (v6 + 7);
    }

    else
    {
      v19 = v6[7];
    }

    if (v18 >= 0)
    {
      v20 = *(v6 + 79);
    }

    else
    {
      v20 = v6[8];
    }

    v21 = std::string::insert(&__p, 0, v19, v20);
    v22 = v21->__r_.__value_.__r.__words[0];
    *buf = v21->__r_.__value_.__l.__size_;
    *&buf[7] = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v24 = *buf;
    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 15) = *&buf[7];
    *(a2 + 23) = v23;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    result = 1;
  }

LABEL_48:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E500E478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::handleSystemWake(SipStack *this)
{
  BambiEmergencyCallHandler::checkTimers(*(this + 564));
  v2 = *(this + 31);
  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::checkTimers(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 31);
  v6 = *(v5 + 248);
  v7 = *(v5 + 256);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogManager::checkTimers(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 35);

  SipTransportLayer::handleSystemWake(v8);
}

void sub_1E500E528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::updateAccessNetworkInfo(SipStack *this, std::string *a2, char a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  memset(v77, 0, sizeof(v77));
  ims::AccessNetworks::AccessNetworks(v77, (this + 3432));
  v76 = 0;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  if (SHIBYTE(v77[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v74, v77[0].__r_.__value_.__l.__data_, v77[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v74[0] = v77[0];
  }

  if (SHIBYTE(v77[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v74[1], v77[1].__r_.__value_.__l.__data_, v77[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v74[1] = v77[1];
  }

  v75 = v78;
  LOBYTE(v76) = v79;
  ims::AccessNetwork::set(this + 143, a2, a2 + 1);
  v6 = *(this + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v96, this);
    v7 = v99;
    v8 = *v96;
    ims::asString((this + 3432), &__p);
    v9 = v96;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v90 = 2081;
    v91 = v9;
    v92 = 2080;
    v93 = p_p;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating access network info to %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v99 < 0)
    {
      operator delete(*v96);
    }
  }

  ims::AccessNetwork::set(this + 146, a2 + 3, a2 + 4);
  if ((*(this + 3527) & 0x8000000000000000) != 0)
  {
    if (!*(this + 439))
    {
      goto LABEL_35;
    }
  }

  else if (!*(this + 3527))
  {
    goto LABEL_35;
  }

  if ((*(this + 3551) & 0x8000000000000000) != 0)
  {
    if (!*(this + 442))
    {
      goto LABEL_35;
    }
  }

  else if (!*(this + 3551))
  {
    goto LABEL_35;
  }

  v11 = *(this + 24);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v96, this);
    v12 = v99;
    v13 = *v96;
    ims::asString((this + 3504), &__p);
    v14 = v96;
    if (v12 < 0)
    {
      v14 = v13;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v90 = 2081;
    v91 = v14;
    v92 = 2080;
    v93 = v15;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating camped access network info to %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v99 < 0)
    {
      operator delete(*v96);
    }
  }

LABEL_35:
  *(this + 3480) = a2[2].__r_.__value_.__s.__data_[0];
  *(this + 3552) = a2[5].__r_.__value_.__s.__data_[0];
  *(this + 3496) = a2[2].__r_.__value_.__s.__data_[16];
  *(this + 3568) = a2[5].__r_.__value_.__s.__data_[16];
  if (!ims::AccessNetwork::isWifi(a2))
  {
    ims::AccessNetwork::clear(this + 3576);
    v24 = *(this + 24);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    (*(*this + 80))(buf, this);
    if (v92 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    *v96 = 141558275;
    *&v96[4] = 1752392040;
    v97 = 2081;
    v98 = v25;
    v26 = "%{private, mask.hash}snot on WiFi. Clearing last access network info.";
LABEL_62:
    _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, v26, v96, 0x16u);
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    v23 = *buf;
    goto LABEL_64;
  }

  size = HIBYTE(a2[6].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2[6].__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_57;
  }

  v17 = HIBYTE(a2[7].__r_.__value_.__r.__words[2]);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a2[7].__r_.__value_.__l.__size_;
  }

  if (!v17)
  {
LABEL_57:
    *(this + 454) = 0;
    v24 = *(this + 24);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    (*(*this + 80))(buf, this);
    if (v92 >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    *v96 = 141558275;
    *&v96[4] = 1752392040;
    v97 = 2081;
    v98 = v27;
    v26 = "%{private, mask.hash}sno last access network. Clearing timestamp.";
    goto LABEL_62;
  }

  ims::AccessNetwork::set(this + 149, a2 + 6, a2 + 7);
  v18 = *(this + 24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v96, this);
    v19 = v99;
    v20 = *v96;
    ims::asString((this + 3576), &__p);
    v21 = v96;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v90 = 2081;
    v91 = v21;
    v92 = 2080;
    v93 = v22;
    _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating last access network info to %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v99 < 0)
    {
      v23 = *v96;
LABEL_64:
      operator delete(v23);
    }
  }

LABEL_65:
  if (v75 != a2[2].__r_.__value_.__s.__data_[0])
  {
    v28 = *(this + 24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(buf, this);
      v29 = v92 >= 0 ? buf : *buf;
      *v96 = 141558275;
      *&v96[4] = 1752392040;
      v97 = 2081;
      v98 = v29;
      _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating DSCP service classes.", v96, 0x16u);
      if (SHIBYTE(v92) < 0)
      {
        operator delete(*buf);
      }
    }

    SipTransportLayer::updateServiceClass(*(this + 35));
  }

  isLTE = ims::AccessNetwork::isLTE((this + 3432));
  BambiAccessBarring::accessNetworkChanged((this + 3160), isLTE);
  if (*(this + 80) == 2)
  {
    if (!ims::AccessNetwork::networkTypeChanged((this + 3432), v74))
    {
      goto LABEL_127;
    }

    v31 = *(this + 24);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v96;
      (*(*this + 80))(v96, this);
      if (v99 < 0)
      {
        v32 = *v96;
      }

      LoggableString::LoggableString(&v71, v74);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v72, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
      }

      else
      {
        v72 = v71;
      }

      __p = v72;
      memset(&v72, 0, sizeof(v72));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &__p;
      }

      else
      {
        v33 = __p.__r_.__value_.__r.__words[0];
      }

      LoggableString::LoggableString(&v68, this + 143);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
      }

      else
      {
        v69 = v68;
      }

      v70 = v69;
      memset(&v69, 0, sizeof(v69));
      v34 = &v70;
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v70.__r_.__value_.__r.__words[0];
      }

      *buf = 141558787;
      *&buf[4] = 1752392040;
      v90 = 2081;
      v91 = v32;
      v92 = 2080;
      v93 = v33;
      v94 = 2080;
      v95 = v34;
      _os_log_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}saccess network changed from %s to %s", buf, 0x2Au);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v99 < 0)
      {
        operator delete(*v96);
      }
    }

    v35 = *(this + 31);
    if (v35)
    {
      v36 = *(v35 + 336);
      v37 = *(v35 + 344);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v36)
      {
        SipRegistrationClient::handleDeviceEvents(v36, 4);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }
    }

    v38 = *(this + 2817);
    v39 = (this + 3432);
    if (v38 == 1)
    {
      isWifi = ims::AccessNetwork::isWifi(v39);
      v41 = ims::AccessNetwork::isWifi(v74);
      v42 = *(this + 24);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (isWifi != v41)
      {
        if (v43)
        {
          (*(*this + 80))(buf, this);
          v44 = v92 >= 0 ? buf : *buf;
          *v96 = 141558275;
          *&v96[4] = 1752392040;
          v97 = 2081;
          v98 = v44;
          _os_log_impl(&dword_1E4C3F000, v42, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRemoving lazuli connections due to cell<->wifi switch", v96, 0x16u);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_126;
      }

      if (v43)
      {
        (*(*this + 80))(buf, this);
        if (v92 >= 0)
        {
          v56 = buf;
        }

        else
        {
          v56 = *buf;
        }

        *v96 = 141558275;
        *&v96[4] = 1752392040;
        v97 = 2081;
        v98 = v56;
        v57 = "%{private, mask.hash}sAttempting to preserve lazuli connections";
        v58 = v42;
        goto LABEL_165;
      }

      goto LABEL_127;
    }

    if (!ims::AccessNetwork::isIMS(v39) || !ims::AccessNetwork::isIMS(v74))
    {
LABEL_126:
      SipTransportLayer::removeConnections(*(this + 35), 1, v38, 1);
      goto LABEL_127;
    }

    v45 = SipStack::prefs(this);
    if (ImsPrefs::ResetSocketWhenNetworkChange(v45))
    {
      v46 = *(this + 24);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(buf, this);
        if (v92 >= 0)
        {
          v47 = buf;
        }

        else
        {
          v47 = *buf;
        }

        *v96 = 141558275;
        *&v96[4] = 1752392040;
        v97 = 2081;
        v98 = v47;
        v48 = "%{private, mask.hash}soriginal: removing ununsed connection, resetting connection, and resetOnDelete";
        goto LABEL_183;
      }
    }

    else
    {
      if (ims::AccessNetwork::isNR((this + 3432)) && ims::AccessNetwork::isLTE(v74) || ims::AccessNetwork::isLTE((this + 3432)) && ims::AccessNetwork::isNR(v74))
      {
        v59 = *(this + 24);
        v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
        v61 = 0;
        if (v60)
        {
          (*(*this + 80))(buf, this);
          if (v92 >= 0)
          {
            v62 = buf;
          }

          else
          {
            v62 = *buf;
          }

          *v96 = 141558275;
          *&v96[4] = 1752392040;
          v97 = 2081;
          v98 = v62;
          _os_log_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snew: removing ununsed connection, not resetting connection, and not resetOnDelete", v96, 0x16u);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(*buf);
          }

          v61 = 0;
        }

LABEL_186:
        SipTransportLayer::removeConnections(*(this + 35), 1, v61, v61);
        v64 = *(this + 24);
        v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
        if ((a3 & 1) == 0)
        {
          if (v65)
          {
            (*(*this + 80))(buf, this);
            v67 = v92 >= 0 ? buf : *buf;
            *v96 = 141558275;
            *&v96[4] = 1752392040;
            v97 = 2081;
            v98 = v67;
            _os_log_impl(&dword_1E4C3F000, v64, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno need to reregister. refreshing call access network information now", v96, 0x16u);
            if (SHIBYTE(v92) < 0)
            {
              operator delete(*buf);
            }
          }

          SipStack::refreshAccessNetwork(this);
          goto LABEL_127;
        }

        if (v65)
        {
          (*(*this + 80))(buf, this);
          if (v92 >= 0)
          {
            v66 = buf;
          }

          else
          {
            v66 = *buf;
          }

          *v96 = 141558275;
          *&v96[4] = 1752392040;
          v97 = 2081;
          v98 = v66;
          v57 = "%{private, mask.hash}sneed to reregister. defer refreshing call access network information";
          v58 = v64;
LABEL_165:
          _os_log_impl(&dword_1E4C3F000, v58, OS_LOG_TYPE_DEFAULT, v57, v96, 0x16u);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(*buf);
          }
        }

LABEL_127:
        v49 = SipStack::prefs(this);
        if (ImsPrefs::ReRegisterOnMobikeHandover(v49) && ims::AccessNetwork::isWifi(v77) && ims::AccessNetwork::isWifi(a2))
        {
          v50 = ims::AccessNetwork::isWifi((&v79 + 8));
          if (v50 != ims::AccessNetwork::isWifi(&a2[3]))
          {
            v51 = *(this + 24);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 80))(buf, this);
              v52 = v92 >= 0 ? buf : *buf;
              *v96 = 141558275;
              *&v96[4] = 1752392040;
              v97 = 2081;
              v98 = v52;
              _os_log_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}striggering re-registration due to MOBIKE handover", v96, 0x16u);
              if (SHIBYTE(v92) < 0)
              {
                operator delete(*buf);
              }
            }

            v53 = SipStack::allRegisteredServices(this);
            std::string::basic_string[abi:ne200100]<0>(buf, "");
            std::string::basic_string[abi:ne200100]<0>(v96, "xx.xx.xx.xx");
            SipStack::updateRegisteredServices(this, v53, 1, "MobikeHandover", buf, v96, 1);
            if (v99 < 0)
            {
              operator delete(*v96);
            }

            if (SHIBYTE(v92) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v54 = ims::AccessNetwork::isWifi((this + 3432));
        if (v54 != ims::AccessNetwork::isWifi(v74))
        {
          SipTransportLayer::updateCrlfKeepAliveNetwork(*(this + 35), v54);
        }

        goto LABEL_143;
      }

      v46 = *(this + 24);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(buf, this);
        if (v92 >= 0)
        {
          v63 = buf;
        }

        else
        {
          v63 = *buf;
        }

        *v96 = 141558275;
        *&v96[4] = 1752392040;
        v97 = 2081;
        v98 = v63;
        v48 = "%{private, mask.hash}ssame as original: removing ununsed connection, resetting connection, and resetOnDelete";
LABEL_183:
        _os_log_impl(&dword_1E4C3F000, v46, OS_LOG_TYPE_DEFAULT, v48, v96, 0x16u);
        if (SHIBYTE(v92) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v61 = 1;
    goto LABEL_186;
  }

LABEL_143:
  if (SHIBYTE(v74[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(*(&v85 + 1));
  }

  if (SBYTE7(v85) < 0)
  {
    operator delete(v84);
  }

  if (SBYTE7(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(*(&v79 + 1));
  }

  if (SHIBYTE(v77[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77[0].__r_.__value_.__l.__data_);
  }

  v55 = *MEMORY[0x1E69E9840];
}

void sub_1E500F4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  ims::AccessNetwork::~AccessNetwork(&a43);
  ims::AccessNetworks::~AccessNetworks(&a56);
  _Unwind_Resume(a1);
}

void SipStack::addEmergencyNumberToUrnMapping(SipStack *a1, std::string *a2, const SipHop *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(&__str, a1);
    LoggableString::LoggableString(&v9, a2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v9;
    }

    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    asString(a3);
  }

  SipStack::carrierIdentifier(a1, &buf);
  v6 = ImsPrefsManager::emergencyPrefs(&buf.__r_.__value_.__l.__data_);
  SipUri::asString(a3, &__str);
  v11.__r_.__value_.__r.__words[0] = a2;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 32, &a2->__r_.__value_.__l.__data_);
  std::string::operator=((v7 + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E500F8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::setSimConfig(SipStack *this, SipStack *a2, ims::StackConfig *a3)
{
  SipStack::copyStackConfigs(a2, (this + 3648), a3);
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, this + 20);
  BambiAccessBarring::setStack((this + 3160), &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E500F994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

SipStack *SipStack::copyStackConfigs(SipStack *this, const ims::StackConfig *a2, ims::StackConfig *a3)
{
  if (a2)
  {
    v4 = this;
    ims::NetworkConfig::operator=(a2 + 24, this + 24);
    std::string::operator=((a2 + 616), (v4 + 616));
    std::string::operator=((a2 + 640), (v4 + 640));
    std::string::operator=((a2 + 664), (v4 + 664));
    this = std::string::operator=((a2 + 688), (v4 + 688));
    *(a2 + 356) = *(v4 + 356);
    *(a2 + 181) = *(v4 + 181);
    *(a2 + 728) = *(v4 + 728);
    *(a2 + 731) = *(v4 + 731);
    *(a2 + 366) = *(v4 + 366);
  }

  return this;
}

void SipStack::allCallsEnded(SipStack *this)
{
  SipTimerContainer::cancelTimer(this + 366, &kAccessNetworkRefreshDelayTimer);
  v2 = *(this + 31);
  v3 = *(this + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 344);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      SipRegistrationClient::allCallsEnded(v4);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  BambiAccessBarring::allCallsEnded((this + 3160));
}

void sub_1E500FAD4(_Unwind_Exception *exception_object)
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

void sub_1E500FB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::callCount(SipStack *this)
{
  IPTelephonyManager::getBambiClient(&v6, this);
  v2 = v6;
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
  }

  else
  {
    __p = *(this + 4432);
  }

  v3 = BambiClient::callCountForStack(v2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

void sub_1E500FBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::activeCallCount(SipStack *this, int a2)
{
  IPTelephonyManager::getBambiClient(&v8);
  v4 = v8;
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
  }

  else
  {
    __p = *(this + 4432);
  }

  v5 = BambiClient::activeCallCountForStack(v4, a2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v5;
}

void sub_1E500FCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::transferCalls(uint64_t a1, const ImsLoggable **a2, const ImsLoggable **a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = SipStack::prefs(a1);
  if (!ImsPrefs::ExplicitTransferEnabled(v6))
  {
    v7 = *(a1 + 192);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    (*(*a1 + 80))(&v64, a1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v64;
    }

    else
    {
      v10 = v64.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 141558275;
    *(buf[0].__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v10;
    v9 = "#E %{private, mask.hash}sExplicit call transfer is disabled by carrier";
    goto LABEL_23;
  }

  if (*(a1 + 296) == 1)
  {
    v7 = *(a1 + 192);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    (*(*a1 + 80))(&v64, a1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v64;
    }

    else
    {
      v8 = v64.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 141558275;
    *(buf[0].__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v8;
    v9 = "#E %{private, mask.hash}sUnable to initiate transfer on emergency stack";
    goto LABEL_23;
  }

  v11 = *a2;
  if (!*a2 || !*a3)
  {
    v7 = *(a1 + 192);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    (*(*a1 + 80))(&v64, a1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v64;
    }

    else
    {
      v15 = v64.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 141558275;
    *(buf[0].__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v15;
    v9 = "#E %{private, mask.hash}stransferee and transfer target must both be valid call objects";
LABEL_23:
    v16 = v7;
    goto LABEL_24;
  }

  v12 = *(v11 + 48);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(v11 + 47);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (*(v14 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *(v14 + 4432), *(v14 + 4440));
  }

  else
  {
    v64 = *(v14 + 4432);
  }

  v18 = (a1 + 4432);
  if (*(a1 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(a1 + 4432), *(a1 + 4440));
  }

  else
  {
    *&buf[0].__r_.__value_.__l.__data_ = *v18;
    buf[0].__r_.__value_.__r.__words[2] = *(a1 + 4448);
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  v20 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
  v21 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
  if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = buf[0].__r_.__value_.__l.__size_;
  }

  if (size != v20 || ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v22 = &v64) : (v22 = v64.__r_.__value_.__r.__words[0]), (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = buf) : (v23 = buf[0].__r_.__value_.__r.__words[0]), memcmp(v22, v23, size)))
  {
    v24 = 1;
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v33 = *a3;
  v34 = *(*a3 + 48);
  if (v34)
  {
    v35 = std::__shared_weak_count::lock(v34);
    if (v35)
    {
      v36 = *(v33 + 47);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  if (*(v36 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(v36 + 4432), *(v36 + 4440));
  }

  else
  {
    v68 = *(v36 + 4432);
  }

  if (*(a1 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a1 + 4432), *(a1 + 4440));
  }

  else
  {
    *&v62.__r_.__value_.__l.__data_ = *v18;
    v62.__r_.__value_.__r.__words[2] = *(a1 + 4448);
  }

  v37 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v68.__r_.__value_.__l.__size_;
  }

  v39 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  v40 = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v39 = v62.__r_.__value_.__l.__size_;
  }

  if (v38 == v39)
  {
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v68;
    }

    else
    {
      v41 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v62;
    }

    else
    {
      v42 = v62.__r_.__value_.__r.__words[0];
    }

    v24 = memcmp(v41, v42, v38) != 0;
  }

  else
  {
    v24 = 1;
  }

  if (v40 < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
    if ((*(&v68.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_95:
      if (!v35)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }
  }

  else if ((v37 & 0x80) == 0)
  {
    goto LABEL_95;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  if (v35)
  {
LABEL_96:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

LABEL_97:
  if ((*(&buf[0].__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_49:
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

LABEL_50:
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v24)
  {
    v25 = *(a1 + 192);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = buf;
      (*(*a1 + 80))(buf, a1);
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = buf[0].__r_.__value_.__r.__words[0];
      }

      v27 = *a2;
      v28 = *(v27 + 48);
      if (v28)
      {
        v30 = std::__shared_weak_count::lock(v28);
        if (v30)
        {
          v29 = *(v27 + 47);
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      if (*(v29 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v61, *(v29 + 4432), *(v29 + 4440));
      }

      else
      {
        v61 = *(v29 + 4432);
      }

      v68 = v61;
      memset(&v61, 0, sizeof(v61));
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v68;
      }

      else
      {
        v45 = v68.__r_.__value_.__r.__words[0];
      }

      v46 = *a3;
      v47 = *(v46 + 48);
      if (v47)
      {
        v49 = std::__shared_weak_count::lock(v47);
        if (v49)
        {
          v48 = *(v46 + 47);
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      if (*(v48 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, *(v48 + 4432), *(v48 + 4440));
      }

      else
      {
        v60 = *(v48 + 4432);
      }

      v62 = v60;
      memset(&v60, 0, sizeof(v60));
      v50 = &v62;
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = v62.__r_.__value_.__r.__words[0];
      }

      LODWORD(v64.__r_.__value_.__l.__data_) = 141558787;
      *(v64.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(v64.__r_.__value_.__r.__words[1]) = 2081;
      *(&v64.__r_.__value_.__r.__words[1] + 6) = v26;
      HIWORD(v64.__r_.__value_.__r.__words[2]) = 2080;
      v65 = v45;
      v66 = 2080;
      v67 = v50;
      _os_log_error_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}stransferee(%s) and transfer target(%s) must be anchored to the same SIP stack", &v64, 0x2Au);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = buf[0].__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (*(*a2 + 69) || (*(**a2 + 88))(*a2))
    {
      if (os_log_type_enabled(*(a1 + 192), OS_LOG_TYPE_ERROR))
      {
        (*(*a1 + 80))(buf, a1);
        asString(*a2);
      }

      goto LABEL_63;
    }

    if (*(*a3 + 69) || (*(**a3 + 88))(*a3))
    {
      if (os_log_type_enabled(*(a1 + 192), OS_LOG_TYPE_ERROR))
      {
        (*(*a1 + 80))(buf, a1);
        asString(*a3);
      }

      goto LABEL_63;
    }

    v43 = *(a1 + 192);
    if (!*(a1 + 4544))
    {
      if (os_log_type_enabled(*(a1 + 192), OS_LOG_TYPE_DEFAULT))
      {
        v51 = &v62;
        (*(*a1 + 80))(&v62, a1);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v62.__r_.__value_.__r.__words[0];
        }

        ObfuscatedString::ObfuscatedString(&v64, *a2 + 21);
        ObfuscatedString::operator std::string(&v58, &v64);
        v59 = v58;
        memset(&v58, 0, sizeof(v58));
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v59;
        }

        else
        {
          v52 = v59.__r_.__value_.__r.__words[0];
        }

        ObfuscatedString::ObfuscatedString(buf, *a3 + 21);
        ObfuscatedString::operator std::string(&v56, buf);
        __p = v56;
        memset(&v56, 0, sizeof(v56));
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v68.__r_.__value_.__l.__data_) = 141558787;
        *(v68.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v68.__r_.__value_.__r.__words[1]) = 2081;
        *(&v68.__r_.__value_.__r.__words[1] + 6) = v51;
        HIWORD(v68.__r_.__value_.__r.__words[2]) = 2080;
        v69 = v52;
        v70 = 2080;
        v71 = p_p;
        _os_log_impl(&dword_1E4C3F000, v43, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stransferring call between %s and %s", &v68, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        ims::AccessNetwork::~AccessNetwork(&buf[0].__r_.__value_.__l.__data_);
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        ims::AccessNetwork::~AccessNetwork(&v64.__r_.__value_.__l.__data_);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }
      }

      *&v64.__r_.__value_.__l.__data_ = 0uLL;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v64, (a1 + 160));
      *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
      ctu::SharedSynchronizable<SipSessionInterface>::weak_from_this(buf, (a1 + 160));
      v55 = *&v64.__r_.__value_.__l.__data_;
      if (v64.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v64.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      std::weak_ptr<BambiTransferHandlerDelegate>::weak_ptr<SipStack,0>(&v54, buf);
      BambiTransferHandler::create(&v68);
    }

    if (os_log_type_enabled(*(a1 + 192), OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 80))(&v64, a1);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v64;
      }

      else
      {
        v44 = v64.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 141558275;
      *(buf[0].__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v44;
      v9 = "#E %{private, mask.hash}sUnable to initiate transfer, existing transfer already in progress.";
      v16 = v43;
LABEL_24:
      _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v64.__r_.__value_.__r.__words[0];
LABEL_26:
        operator delete(v17);
      }
    }
  }

LABEL_63:
  v31 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E5010960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  ims::AccessNetwork::~AccessNetwork((v53 - 240));
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  ims::AccessNetwork::~AccessNetwork((v53 - 192));
  if (a53 < 0)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

void SipStack::transferComplete(SipStack *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(&__p, this);
    v3 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v9 = 1752392040;
    v10 = 2081;
    v11 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipStack::transferComplete", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v4 = *(this + 569);
  *(this + 284) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
  }

  else
  {
    __p = *(this + 4432);
  }

  v5 = IMSClientManager::delegateForStack(&__p.__r_.__value_.__l.__data_);
  (*(*(v5 + 16) + 112))();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void SipStack::transferFailed(uint64_t a1)
{
  v2 = *(a1 + 4552);
  *(a1 + 4544) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 4432), *(a1 + 4440));
  }

  else
  {
    __p = *(a1 + 4432);
  }

  v3 = IMSClientManager::delegateForStack(&__p.__r_.__value_.__l.__data_);
  (*(*(v3 + 16) + 112))();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5010D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipAuthConfig::operator==(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  v10 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v11 = v9[3];
  v12 = v9[4];
  v13 = v8[3];
  if (v12 - v11 != v8[4] - v13)
  {
    return 0;
  }

  while (v11 != v12)
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v15, v11, v13);
    if (!result)
    {
      return result;
    }

    v11 += 3;
    v13 += 3;
  }

  return *(v9 + 12) == *(v8 + 12);
}

uint64_t std::operator==[abi:ne200100]<std::string,unsigned int,std::less<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(void *a1, void *a2, uint64_t a3)
{
  if (a1[2] != a3)
  {
    return 0;
  }

  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    return 1;
  }

  while (1)
  {
    v6 = *(v4 + 55);
    if (v6 >= 0)
    {
      v7 = *(v4 + 55);
    }

    else
    {
      v7 = v4[5];
    }

    v8 = *(a2 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a2[5];
    }

    if (v7 != v8)
    {
      break;
    }

    v10 = v6 >= 0 ? v4 + 4 : v4[4];
    v11 = a2[4];
    v12 = v9 >= 0 ? a2 + 4 : a2[4];
    v13 = !memcmp(v10, v12, v7) && *(v4 + 14) == *(a2 + 14);
    if (!v13)
    {
      break;
    }

    v14 = v4[1];
    v15 = v4;
    if (v14)
    {
      do
      {
        v4 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v4 = v15[2];
        v13 = *v4 == v15;
        v15 = v4;
      }

      while (!v13);
    }

    v16 = a2[1];
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
        v17 = a2[2];
        v13 = *v17 == a2;
        a2 = v17;
      }

      while (!v13);
    }

    a2 = v17;
    if (v4 == v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL std::equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(const void **a1, const void **a2, const void **a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v15 = v3;
  v16 = v4;
  v8 = a1;
  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v14, v8 + 4, a3 + 4);
    if (!result)
    {
      break;
    }

    v9 = v8[1];
    v10 = v8;
    if (v9)
    {
      do
      {
        v8 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v8 = v10[2];
        v11 = *v8 == v10;
        v10 = v8;
      }

      while (!v11);
    }

    v12 = a3[1];
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
        v13 = a3[2];
        v11 = *v13 == a3;
        a3 = v13;
      }

      while (!v11);
    }

    a3 = v13;
  }

  while (v8 != a2);
  return result;
}

BOOL std::equal[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = a1;
  do
  {
    v5 = *(v4 + 7);
    v6 = *(a3 + 7);
    result = v5 == v6;
    if (v5 != v6)
    {
      break;
    }

    v7 = v4[1];
    v8 = v4;
    if (v7)
    {
      do
      {
        v4 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v4 = v8[2];
        v9 = *v4 == v8;
        v8 = v4;
      }

      while (!v9);
    }

    v10 = a3[1];
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
        v11 = a3[2];
        v9 = *v11 == a3;
        a3 = v11;
      }

      while (!v9);
    }

    a3 = v11;
  }

  while (v4 != a2);
  return result;
}

uint64_t std::operator==[abi:ne200100]<SipSecurityAgreementConfig,std::allocator<SipSecurityAgreementConfig>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = a1 + v7;
    v9 = *(a1 + v7 + 31);
    if (v9 >= 0)
    {
      v10 = *(a1 + v7 + 31);
    }

    else
    {
      v10 = *(a1 + v7 + 16);
    }

    v11 = a3 + v7;
    v12 = *(a3 + v7 + 31);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a3 + v7 + 16);
    }

    if (v10 != v12)
    {
      break;
    }

    v16 = *(v8 + 8);
    v14 = v8 + 8;
    v15 = v16;
    v17 = (v9 >= 0 ? v14 : v15);
    v20 = *(v11 + 8);
    v19 = v11 + 8;
    v18 = v20;
    v21 = (v13 >= 0 ? v19 : v18);
    if (memcmp(v17, v21, v10))
    {
      break;
    }

    result = SipParameterMap::operator==((a1 + v7 + 32), a3 + v7 + 32);
    if (!result)
    {
      return result;
    }

    v7 += 72;
    if (a1 + v7 == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  while (1)
  {
    v7 = *(v6 + 55);
    if (v7 >= 0)
    {
      v8 = *(v6 + 55);
    }

    else
    {
      v8 = v6[5];
    }

    v9 = *(a3 + 55);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a3[5];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? v6 + 4 : v6[4];
    v12 = v10 >= 0 ? a3 + 4 : a3[4];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = *(v6 + 79);
    if (v13 >= 0)
    {
      v14 = *(v6 + 79);
    }

    else
    {
      v14 = v6[8];
    }

    v15 = *(a3 + 79);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = a3[8];
    }

    if (v14 != v15)
    {
      break;
    }

    v17 = v13 >= 0 ? v6 + 7 : v6[7];
    v18 = v16 >= 0 ? a3 + 7 : a3[7];
    if (memcmp(v17, v18, v14))
    {
      break;
    }

    v19 = v6[1];
    v20 = v6;
    if (v19)
    {
      do
      {
        v6 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v6 = v20[2];
        v21 = *v6 == v20;
        v20 = v6;
      }

      while (!v21);
    }

    v22 = a3[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = a3[2];
        v21 = *v23 == a3;
        a3 = v23;
      }

      while (!v21);
    }

    a3 = v23;
    if (v6 == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ims::SharedLoggable<SipStack>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipStack>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipTransactionLayer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipTransportLayer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiDeregisterHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipStack>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<BambiCallHandler> &,BOOL &,std::string const&,ClientConfig const&,std::allocator<SipStack>,0>(void *a1, uint64_t *a2, char *a3, const std::string *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EE8DE0;
  std::construct_at[abi:ne200100]<SipStack,std::shared_ptr<BambiCallHandler> &,BOOL &,std::string const&,ClientConfig const&,SipStack*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<SipStack>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipStack,std::shared_ptr<BambiCallHandler> &,BOOL &,std::string const&,ClientConfig const&,SipStack*>(uint64_t a1, uint64_t *a2, char *a3, const std::string *a4, uint64_t a5)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipStack::SipStack(a1, v8, *a3, a4, a5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1E50117C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8E30;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8E30;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE8E30;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipStack::initialize(SipStackConfig const&)::$_0,std::allocator<SipStack::initialize(SipStackConfig const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8EB0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8EB0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE8EB0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0,std::allocator<SipStack::deinitialize(BOOL,BOOL,BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8F30;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE8F30;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE8F30;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipStack::setConnectivityAvailable(BOOL)::$_0,std::allocator<SipStack::setConnectivityAvailable(BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<SipProxyResolver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__110shared_ptrIK8SipStackEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__110shared_ptrIK8SipStackEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE9038;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE9038;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE9038;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipStack::refreshAccessNetwork(void)::$_0,std::allocator<SipStack::refreshAccessNetwork(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::weak_ptr<BambiTransferHandlerDelegate>::weak_ptr<SipStack,0>(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = a2[1];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *a2 + 144;
      v8 = *a2 == 0;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = a1[1];
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7;
      }

      *a1 = v10;
      a1[1] = v6;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v11 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  return a1;
}

uint64_t __cxx_global_var_init_32()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_SipStack_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kWaitForDeregistrationTimer, "WaitForDeregistrationTimer");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &kWaitForDeregistrationTimer, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&kAccessNetworkRefreshDelayTimer, "AccessNetworkRefreshDelayTimer");

  return __cxa_atexit(v0, &kAccessNetworkRefreshDelayTimer, &dword_1E4C3F000);
}

void XcapDocumentOIR::XcapDocumentOIR(XcapDocumentOIR *this)
{
  v3 = 0;
  v4 = &v3;
  v2 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v3) + 5);
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, &XcapDocumentOIR::kName, v2);
  *(this + 8) = &XcapDocumentOIR::kName;
  *(this + 9) = v2;
  *(this + 40) = 257;
  *this = &unk_1F5EE90B8;
  *(this + 1) = &unk_1F5EE9150;
}

void XcapDocumentOIR::~XcapDocumentOIR(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapDocumentOIR::~XcapDocumentOIR(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapDocumentOIR::createChild(uint64_t a1, uint64_t a2)
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

  v5 = qword_1EE2BD3B8;
  if (byte_1EE2BD3C7 >= 0)
  {
    v5 = byte_1EE2BD3C7;
  }

  if (size != v5 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v6 = &__p) : (v6 = __p.__r_.__value_.__r.__words[0]), byte_1EE2BD3C7 >= 0 ? (v7 = &XcapDocumentOIR::kName) : (v7 = XcapDocumentOIR::kName), memcmp(v6, v7, size)))
  {
    if (size == 17)
    {
      if (v3 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v9 = 0x64656661756C742DLL;
      v10 = bswap64(p_p->__r_.__value_.__r.__words[0]);
      if (v10 == 0x64656661756C742DLL && (v9 = 0x6265686176696F75, v10 = bswap64(p_p->__r_.__value_.__l.__size_), v10 == 0x6265686176696F75))
      {
        v11 = p_p->__r_.__value_.__s.__data_[16] - 114;
      }

      else if (v10 < v9)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        a1 = 0;
      }

      if (v3 < 0)
      {
        goto LABEL_30;
      }

      return a1;
    }

    a1 = 0;
  }

  if (v3 < 0)
  {
LABEL_30:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void XcapDocumentOIR::parseChild(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
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

  v8 = qword_1EE2BD3B8;
  if (byte_1EE2BD3C7 >= 0)
  {
    v8 = byte_1EE2BD3C7;
  }

  if (size == v8)
  {
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = byte_1EE2BD3C7 >= 0 ? &XcapDocumentOIR::kName : XcapDocumentOIR::kName;
    if (!memcmp(v9, v10, size))
    {
      bambi::XmlParserItem::parseChild(a1, a2, a3);
LABEL_50:
      LOBYTE(v17) = 0;
      goto LABEL_51;
    }
  }

  if (size != 17)
  {
    goto LABEL_50;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v6 >= 0)
  {
    p_p = &__p;
  }

  v12 = p_p->__r_.__value_.__r.__words[0];
  v13 = p_p->__r_.__value_.__l.__size_;
  v14 = p_p->__r_.__value_.__s.__data_[16];
  v15 = v12 == 0x2D746C7561666564 && v13 == 0x756F697661686562;
  if (!v15 || v14 != 114)
  {
    goto LABEL_50;
  }

  (*(*a1 + 72))(a1, "default-behaviour", a3, &v27);
  v17 = SHIBYTE(v29);
  if (v29 >= 0)
  {
    v18 = HIBYTE(v29);
  }

  else
  {
    v18 = v28;
  }

  v19 = qword_1EE2BC900;
  if (byte_1EE2BC90F >= 0)
  {
    v19 = byte_1EE2BC90F;
  }

  if (v18 == v19)
  {
    v20 = v29 >= 0 ? &v27 : v27;
    v21 = byte_1EE2BC90F >= 0 ? &qword_1EE2BC8F8 : qword_1EE2BC8F8;
    if (!memcmp(v20, v21, v18))
    {
      v25 = 0;
      goto LABEL_57;
    }
  }

  v22 = qword_1EE2BC8E8;
  if (byte_1EE2BC8F7 >= 0)
  {
    v22 = byte_1EE2BC8F7;
  }

  if (v18 == v22)
  {
    v23 = v17 >= 0 ? &v27 : v27;
    v24 = byte_1EE2BC8F7 >= 0 ? &_MergedGlobals_25 : _MergedGlobals_25;
    if (!memcmp(v23, v24, v18))
    {
      v25 = 1;
LABEL_57:
      a1[81] = v25;
    }
  }

LABEL_51:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v17 & 0x80) == 0)
    {
      return;
    }

LABEL_55:
    operator delete(v27);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v29 < 0)
  {
    goto LABEL_55;
  }
}

void sub_1E5012A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void XcapDocumentOIR::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E5012B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t XcapDocumentOIR::asString@<X0>(XcapDocumentOIR *this@<X0>, _BYTE *a2@<X8>)
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
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "OIR Default: ", 13);
  if (*(this + 81))
  {
    v5 = "Restricted";
  }

  else
  {
    v5 = "Allowed";
  }

  if (*(this + 81))
  {
    v6 = 10;
  }

  else
  {
    v6 = 7;
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

void sub_1E5012E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::locale::~locale((v23 - 56));
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

void sub_1E5012FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x1E69235B0](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_XcapDocumentOIR_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&XcapDocumentOIR::kName, "originating-identity-presentation-restriction");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &XcapDocumentOIR::kName, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_25, "presentation-restricted");
  __cxa_atexit(v0, &_MergedGlobals_25, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC8F8, "presentation-not-restricted");

  return __cxa_atexit(v0, &qword_1EE2BC8F8, &dword_1E4C3F000);
}

uint64_t ims::getNumMatchesForPattern(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
  v17 = 0;
  v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v8 options:a3 error:&v17];
  v12 = v17;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = [v11 numberOfMatchesInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v15;
}

void ims::escapeXMLString(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  if (![v6 length])
  {
    std::string::basic_string[abi:ne200100]<0>(a2, [v6 UTF8String]);
    goto LABEL_45;
  }

  v25 = v6;
  v27 = [MEMORY[0x1E696AD60] string];
  v7 = [v6 dataUsingEncoding:2617245952];
  v24 = v7;
  v26 = [v24 bytes];
  v23 = v4;
  v8 = [v7 length];
  if (v8 < 4)
  {
    goto LABEL_44;
  }

  v9 = 0;
  v22 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = -(v8 >> 2);
  v11 = v26;
  while (2)
  {
    v12 = 0;
    v13 = v9++;
    v14 = v26 + 4 * v13;
    while (1)
    {
      v15 = *(v14 + v12);
      v16 = (v15 - 57344) >> 1 >= 0xFFF && (v15 - 1114112) < 0xFFF00000;
      v17 = (v15 - 32) >> 5 >= 0x6BF && v16;
      if (v15 <= 0xD && ((1 << v15) & 0x2600) != 0)
      {
        v17 = 0;
      }

      if (v15 <= 38)
      {
        break;
      }

      if (v15 == 39)
      {
        v19 = @"&apos;";
        if (v17)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v15 == 60)
      {
        v19 = @"&lt;";
LABEL_32:
        if (v17)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v15 != 62)
      {
        goto LABEL_36;
      }

      v19 = @"&gt;";
      if (v17)
      {
        goto LABEL_37;
      }

LABEL_33:
      if ([(__CFString *)v19 length])
      {
        goto LABEL_37;
      }

      v12 += 4;
      ++v9;
      if (v10 + v9 == 1)
      {
        if (v22 != 4 * v13)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v11 length:v22 - 4 * v13 encoding:2617245952];
          [v27 appendString:v21];
        }

        goto LABEL_44;
      }
    }

    v19 = @"&quot;";
    if (v15 == 34)
    {
      goto LABEL_32;
    }

    if (v15 == 38)
    {
      v19 = @"&amp;";
      if (v17)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_36:
    v19 = &stru_1F5EFB6F8;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_37:
    if (v12)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v11 length:v12 encoding:2617245952];
      [v27 appendString:v20];
    }

    [v27 appendString:v19];
    v11 = v14 + v12 + 4;
    if (v10 + v9)
    {
      continue;
    }

    break;
  }

LABEL_44:
  std::string::basic_string[abi:ne200100]<0>(a2, [v27 UTF8String]);

  v6 = v25;
  v4 = v23;
LABEL_45:

  objc_autoreleasePoolPop(v4);
}

void SipStringBody::SipStringBody(SipStringBody *this)
{
  *this = &unk_1F5EE91E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::string::operator=((this + 32), "text/plain");
}

void sub_1E5013588(_Unwind_Exception *exception_object)
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

uint64_t SipStringBody::SipStringBody(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *a1 = &unk_1F5EE91E0;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::operator=((a1 + 32), a2);
  std::string::operator=(v5, a3);
  return a1;
}

void sub_1E5013628(_Unwind_Exception *exception_object)
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

BOOL SipStringBody::decode(uint64_t a1, void *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = a2 + 4;
  v7 = std::istream::get();
  std::string::push_back((a1 + 8), v7);
  if (*(v6 + *(*a2 - 24)))
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (a3 == v9)
    {
      break;
    }

    v11 = std::istream::get();
    std::string::push_back((a1 + 8), v11);
    v9 = v10 + 1;
  }

  while (!*(v6 + *(*a2 - 24)));
  return v10 >= a3;
}

void SipStringBody::~SipStringBody(void **this)
{
  *this = &unk_1F5EE91E0;
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
  *this = &unk_1F5EE91E0;
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

void sub_1E5013934(_Unwind_Exception *a1)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

__int128 *SipStringBody::contentType(SipStringBody *this)
{
  v1 = *(this + 55);
  if (v1 < 0)
  {
    v1 = *(this + 5);
  }

  if (v1)
  {
    return (this + 32);
  }

  else
  {
    return &SipBody::kGenericContentType;
  }
}

uint64_t SipStringBody::contentLength(SipStringBody *this)
{
  result = *(this + 31);
  if (result < 0)
  {
    return *(this + 2);
  }

  return result;
}

void BambiEmergencyUrnMap::urnForNumber(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v32[2] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *v8, *(v8 + 8));
  }

  else
  {
    *a4 = *v8;
    *(a4 + 2) = *(v8 + 16);
  }

  v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 24, a2);
  if (a1 + 32 != v9)
  {
    std::string::operator=(a4, (v9 + 56));
  }

  v10 = a4[23];
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 < 0)
  {
    v10 = *(a4 + 1);
  }

  if (v10 >= 6)
  {
    v12 = &v11[v10];
    v13 = v11;
    do
    {
      v14 = memchr(v13, 78, v10 - 5);
      if (!v14)
      {
        break;
      }

      if (*v14 == 1112364366 && *(v14 + 2) == 21061)
      {
        if (v14 != v12)
        {
          v16 = v14 - v11;
          if (v16 != -1)
          {
            std::string::basic_string(&v29, a4, 0, v16, &__p);
            v17 = *(a2 + 23);
            if (v17 >= 0)
            {
              v18 = a2;
            }

            else
            {
              v18 = *a2;
            }

            if (v17 >= 0)
            {
              v19 = *(a2 + 23);
            }

            else
            {
              v19 = *(a2 + 8);
            }

            v20 = std::string::append(&v29, v18, v19);
            v21 = *&v20->__r_.__value_.__l.__data_;
            v30.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&v30.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string(&__p, a4, v16 + 6, 0xFFFFFFFFFFFFFFFFLL, &v31);
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

            v24 = std::string::append(&v30, p_p, size);
            v25 = v24->__r_.__value_.__r.__words[0];
            v32[0] = v24->__r_.__value_.__l.__size_;
            *(v32 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
            v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            if (a4[23] < 0)
            {
              operator delete(*a4);
            }

            *a4 = v25;
            *(a4 + 1) = v32[0];
            *(a4 + 15) = *(v32 + 7);
            a4[23] = v26;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }
          }
        }

        break;
      }

      v13 = v14 + 1;
      v10 = v12 - v13;
    }

    while (v12 - v13 >= 6);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1E5013C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(exception_object);
}

void BambiEmergencyUrnMap::reset(BambiEmergencyUrnMap *this)
{
  v1 = this;
  v2 = (this + 32);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  if (*(v2 - 9) < 0)
  {
    *(v1 + 1) = 15;
    v1 = *v1;
  }

  else
  {
    *(v1 + 23) = 15;
  }

  strcpy(v1, "urn:service:sos");
}

uint64_t SipDialog::SipDialog(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F5EBED98;
  *(a1 + 8) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "sip.dlg");
  SipDialogManager::clientConfig(*a2, v20);
  v23 = v20[0];
  v24 = v20[1];
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  v26 = v22;
  v27 = 1;
  ImsLogContainer::ImsLogContainer(a1 + 16, &v28, &v23);
  if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  *(a1 + 152) = &unk_1F5EBEDE0;
  std::string::basic_string[abi:ne200100]<0>(v18, "sip.dlg");
  SipDialogManager::clientConfig(*a2, v15);
  ims::getQueue(&v29);
  ClientConfig::getLogTag(v15, &v28);
  if ((v19 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v18[1];
  }

  v8 = std::string::insert(&v28, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[0] = v8->__r_.__value_.__r.__words[2];
  *v20 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v20;
  }

  else
  {
    v10 = v20[0];
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = v29;
  *(a1 + 184) = v29;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 192) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 200), "com.apple.ipTelephony", v10);
  if (v21.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  *(a1 + 160) = &unk_1F5EE95E0;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  *a1 = &unk_1F5EE9270;
  *(a1 + 8) = &unk_1F5EE92D8;
  *(a1 + 16) = &unk_1F5EE9308;
  *(a1 + 152) = &unk_1F5EE9368;
  *(a1 + 160) = &unk_1F5EE9398;
  *(a1 + 208) = *a2;
  v12 = *(a2 + 8);
  *(a1 + 216) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = *a3;
  v13 = a3[1];
  *(a1 + 232) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  SipUri::SipUri((a1 + 240));
  *(a1 + 648) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1488) = 0;
  SipUri::SipUri((a1 + 1504));
  *(a1 + 1928) = 0;
  *(a1 + 1912) = 0u;
  SipUri::SipUri((a1 + 1936));
  SipIdString::SipIdString((a1 + 2344));
  *(a1 + 2344) = &unk_1F5EE94C0;
  SipIdString::SipIdString((a1 + 2400));
  *(a1 + 2400) = &unk_1F5EDEC18;
  SipIdString::SipIdString((a1 + 2456));
  *(a1 + 2456) = &unk_1F5EE9508;
  SipIdString::SipIdString((a1 + 2512));
  *(a1 + 2512) = &unk_1F5EE9550;
  SipIdString::SipIdString((a1 + 2568));
  *(a1 + 2568) = &unk_1F5EE9598;
  *(a1 + 2624) = 0;
  *(a1 + 2640) = 0;
  *(a1 + 2632) = 0;
  *(a1 + 2648) = xpc_null_create();
  *(a1 + 2656) = 0;
  *(a1 + 2672) = 0;
  *(a1 + 2664) = 0;
  *(a1 + 2680) = xpc_null_create();
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 1065353216;
  *(a1 + 2736) = 1;
  *(a1 + 2776) = 0u;
  *(a1 + 2760) = 0;
  *(a1 + 2744) = 0u;
  *(a1 + 2768) = a1 + 2776;
  *(a1 + 2800) = 0u;
  *(a1 + 2792) = a1 + 2800;
  *(a1 + 2816) = 0;
  *(a1 + 2856) = 0u;
  *(a1 + 2840) = 0;
  *(a1 + 2824) = 0u;
  *(a1 + 2848) = a1 + 2856;
  *(a1 + 2880) = 0u;
  *(a1 + 2872) = a1 + 2880;
  *(a1 + 2904) = 0u;
  *(a1 + 2896) = a1 + 2904;
  *(a1 + 2928) = 0u;
  *(a1 + 2920) = a1 + 2928;
  *(a1 + 2952) = 0u;
  *(a1 + 2944) = a1 + 2952;
  *(a1 + 2968) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 3016) = 0;
  return a1;
}

void sub_1E5014210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void SipInReplyToContributionId::~SipInReplyToContributionId(void **this)
{
  *this = &unk_1F5ED4468;
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
  *this = &unk_1F5ED4468;
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

void SipContributionId::~SipContributionId(void **this)
{
  *this = &unk_1F5ED4468;
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
  *this = &unk_1F5ED4468;
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

void SipConversationId::~SipConversationId(void **this)
{
  *this = &unk_1F5ED4468;
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
  *this = &unk_1F5ED4468;
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

void SipCallId::~SipCallId(void **this)
{
  *this = &unk_1F5ED4468;
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
  *this = &unk_1F5ED4468;
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

void SipDialog::~SipDialog(SipDialog *this)
{
  *this = &unk_1F5EE9270;
  *(this + 1) = &unk_1F5EE92D8;
  *(this + 2) = &unk_1F5EE9308;
  *(this + 19) = &unk_1F5EE9368;
  *(this + 20) = &unk_1F5EE9398;
  std::string::basic_string[abi:ne200100]<0>(v17, "sip.dlg");
  v13[0] = 0;
  v16 = 0;
  v2 = ims::debug(v17, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "~SipDialog() [Dialog:", 21);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, this + 2376);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "] ", 2);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923310](*(v2 + 8), this);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  SipDialog::removeAllForks(this);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(this + 2896, *(this + 363));
  *(this + 362) = this + 2904;
  *(this + 2904) = 0u;
  if (*(this + 3023) < 0)
  {
    operator delete(*(this + 375));
  }

  v3 = *(this + 374);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 372);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 369));
  std::__tree<std::string>::destroy(this + 2920, *(this + 366));
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(this + 2896, *(this + 363));
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 360));
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 357));
  v5 = *(this + 354);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__tree<std::string>::destroy(this + 2792, *(this + 350));
  std::__tree<std::string>::destroy(this + 2768, *(this + 347));
  v6 = *(this + 344);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 339);
  if (v7)
  {
    do
    {
      v8 = *v7;
      v9 = v7[4];
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = *(this + 337);
  *(this + 337) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  xpc_release(*(this + 335));
  *(this + 335) = 0;
  if (*(this + 2679) < 0)
  {
    operator delete(*(this + 332));
  }

  xpc_release(*(this + 331));
  *(this + 331) = 0;
  if (*(this + 2647) < 0)
  {
    operator delete(*(this + 328));
  }

  *(this + 321) = &unk_1F5ED4468;
  if (*(this + 2623) < 0)
  {
    operator delete(*(this + 325));
  }

  if (*(this + 2599) < 0)
  {
    operator delete(*(this + 322));
  }

  *(this + 314) = &unk_1F5ED4468;
  if (*(this + 2567) < 0)
  {
    operator delete(*(this + 318));
  }

  if (*(this + 2543) < 0)
  {
    operator delete(*(this + 315));
  }

  *(this + 307) = &unk_1F5ED4468;
  if (*(this + 2511) < 0)
  {
    operator delete(*(this + 311));
  }

  if (*(this + 2487) < 0)
  {
    operator delete(*(this + 308));
  }

  *(this + 300) = &unk_1F5ED4468;
  if (*(this + 2455) < 0)
  {
    operator delete(*(this + 304));
  }

  if (*(this + 2431) < 0)
  {
    operator delete(*(this + 301));
  }

  *(this + 293) = &unk_1F5ED4468;
  if (*(this + 2399) < 0)
  {
    operator delete(*(this + 297));
  }

  if (*(this + 2375) < 0)
  {
    operator delete(*(this + 294));
  }

  SipUri::~SipUri((this + 1936));
  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  SipUri::~SipUri((this + 1504));
  if (*(this + 1503) < 0)
  {
    operator delete(*(this + 185));
  }

  if (*(this + 1472) == 1)
  {
    SipUri::~SipUri((this + 1064));
  }

  if (*(this + 1056) == 1)
  {
    SipUri::~SipUri((this + 648));
  }

  SipUri::~SipUri((this + 240));
  v11 = *(this + 29);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
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
  SipDialog::~SipDialog(this);

  JUMPOUT(0x1E69235B0);
}

double SipDialog::removeAllForks(SipDialog *this)
{
  v2 = *(this + 374);
  *(this + 373) = 0;
  *(this + 374) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 372);
  *(this + 371) = 0;
  *(this + 372) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 369));
  *(this + 368) = this + 2952;
  result = 0.0;
  *(this + 2952) = 0u;
  return result;
}

void non-virtual thunk toSipDialog::~SipDialog(SipDialog *this)
{
  SipDialog::~SipDialog((this - 8));
}

{
  SipDialog::~SipDialog((this - 16));
}

{
  SipDialog::~SipDialog((this - 152));
}

{
  SipDialog::~SipDialog((this - 160));
}

{
  SipDialog::~SipDialog((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialog::~SipDialog((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialog::~SipDialog((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialog::~SipDialog((this - 160));

  JUMPOUT(0x1E69235B0);
}

void SipDialog::dialogTerminated(SipDialog *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "sip.dlg");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "SipDialog::dialogTerminated()", 29);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 26);
      if (v7)
      {
        SipDialogManager::dialogTerminated(v7, this + 297);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipDialog::forceDeinitialization(SipDialog *this)
{
  v2 = (this + 16);
  v3 = (*(*(this + 2) + 64))(this + 16);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "forcing deinitialization", 24);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = v2[342];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 343);
      if (v7)
      {
        v8 = *v7;
        v9 = **v7;
        if (v10)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          SipSession::forceDeinitialize(v10);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        else
        {
          (*(v8 + 24))(v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(this + 2896, *(this + 363));
  *(this + 362) = this + 2904;
  *(this + 2904) = 0u;
  v11 = (*(*(this + 2) + 64))(v2);
  (*(*(this + 2) + 16))(v2, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "detaching ", 10);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923370](*(v11 + 8), *(this + 361));
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " client transactions", 20);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  v12 = *(this + 359);
  v13 = this + 2880;
  if (v12 != this + 2880)
  {
    do
    {
      v14 = *(v12 + 7);
      v15 = *(v12 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(v14 + 344);
      *(v14 + 336) = 0;
      *(v14 + 344) = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v17 = *(v12 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v12 + 2);
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      v12 = v18;
    }

    while (v18 != v13);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 360));
  *(this + 359) = v13;
  *(this + 180) = 0u;
  v20 = (*(*(this + 2) + 64))(v2);
  (*(*(this + 2) + 16))(v2, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "detaching ", 10);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923370](*(v20 + 8), *(this + 358));
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " server transactions", 20);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  v21 = *(this + 356);
  v22 = (this + 2856);
  if (v21 != (this + 2856))
  {
    do
    {
      v23 = v21[7];
      v24 = v21[8];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *(v23 + 344);
      *(v23 + 336) = 0;
      *(v23 + 344) = 0;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      v26 = v21[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v21[2];
          v19 = *v27 == v21;
          v21 = v27;
        }

        while (!v19);
      }

      v21 = v27;
    }

    while (v27 != v22);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 357));
  *(this + 356) = v22;
  *v22 = 0u;

  SipDialog::dialogTerminated(this);
}

void SipDialog::checkTerminated(SipDialog *this)
{
  v2 = *(this + 344);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = *(this + 343) != 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 361))
  {
    v5 = *(this + 364) != 0;
    v6 = 1;
LABEL_7:
    v7 = std::string::basic_string[abi:ne200100]<0>(v20, "sip.dlg");
    v16[0] = 0;
    v19 = 0;
    v8 = ims::debug(v7, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Not removing dialog. (hasSession: ", 34);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923320](*(v8 + 8), v4);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", hasTrans: ", 12);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923320](*(v8 + 8), v6);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", hasSub: ", 10);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923320](*(v8 + 8), v5);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ")", 1);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    return;
  }

  v6 = *(this + 358) != 0;
  v9 = *(this + 364);
  v5 = v9 != 0;
  if (v4 || *(this + 358) != 0 || v9)
  {
    goto LABEL_7;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(v20, "sip.dlg");
  v12[0] = 0;
  v15 = 0;
  v11 = ims::debug(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Dialog is no longer being used for anything. Terminating...", 59);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  SipDialog::dialogTerminated(this);
}

void sub_1E501545C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::detachSession(SipDialog *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v9, "sip.dlg");
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(v2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "detaching Session", 17);
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

  v4 = *(this + 344);
  *(this + 2744) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SipDialog::checkTerminated(this);
}

void sub_1E50155A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void SipDialog::fillContactHeader(ImsResult *a1, uint64_t a2, std::__shared_weak_count **a3)
{
  v103 = *MEMORY[0x1E69E9840];
  memset(&v98, 0, sizeof(v98));
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

  v7 = v6->__vftable;
  v8 = v6->~__shared_weak_count;
  if (v9)
  {
    v6 = a3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v9 + 120))(v9);
    std::string::operator=(&v98, v10);
    goto LABEL_6;
  }

  v14 = v7->~__shared_weak_count;
  if (!v15)
  {
    v6 = 0;
LABEL_6:
    v81 = 0;
    goto LABEL_7;
  }

  v16 = v15;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = SipMessage::header<SipCSeqHeader>(v15);
  if (v17)
  {
    v18 = (v17 + 64);
  }

  else
  {
    v18 = &ims::kEmptyString;
  }

  std::string::operator=(&v98, v18);
  v81 = v16[32];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v6 = 0;
  }

LABEL_7:
  v11 = *(a2 + 2752);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *(a2 + 2744);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  memset(v91, 0, sizeof(v91));
  v90 = &unk_1F5ED0580;
  SipUri::SipUri(v91);
  *&v94 = 0;
  *(&v93 + 1) = 0;
  *(&v92 + 1) = &unk_1F5EBEF50;
  *&v93 = &v93 + 8;
  WORD4(v94) = 256;
  v96 = 0uLL;
  *(&v95 + 1) = &v96;
  v97 = 0uLL;
  LODWORD(v95) = 0;
  if (v13)
  {
    v19 = (*(*v13 + 208))(v13);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 232);
  if (v20)
  {
    v80 = v19;
    v21 = std::__shared_weak_count::lock(v20);
    if (v21)
    {
      v22 = *(a2 + 224);
      if (v22)
      {
        v79 = *(v22 + 248);
        v77 = *(a2 + 224);
        v23 = *(v77 + 32);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v78 = v23;
        if (!v79)
        {
          v42 = *(a2 + 200);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            (*(*(a2 + 160) + 16))(&__p, a2 + 160);
            p_p = &__p;
            if (v85 < 0)
            {
              p_p = __p;
            }

            *buf = 141558275;
            v100 = 1752392040;
            v101 = 2081;
            v102 = p_p;
            _os_log_error_impl(&dword_1E4C3F000, v42, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
            if (v85 < 0)
            {
              operator delete(__p);
            }
          }

          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          __p = &unk_1F5EBDEF8;
          v83 = &_bambiDomain;
          v84 = 1073741826;
          v43 = ImsResult::operator<<<char [14]>(&__p, "no user agent");
          ImsResult::ImsResult(a1, v43);
          ImsResult::~ImsResult(&__p);
          v44 = v78;
          goto LABEL_124;
        }

        size = HIBYTE(v98.__r_.__value_.__r.__words[2]);
        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v98.__r_.__value_.__l.__size_;
        }

        v75 = a3;
        v76 = a1;
        if (size == 9)
        {
          v25 = &v98;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = v98.__r_.__value_.__r.__words[0];
          }

          v26 = v25->__r_.__value_.__r.__words[0];
          v27 = v25->__r_.__value_.__s.__data_[8];
          v28 = v26 == *"SUBSCRIBE" && v27 == SipRequest::kMethodSubscribe[8];
          v29 = !v28;
          if (!(v29 | v81) && *(SipUserAgent::config(v79) + 622) == 1)
          {
            v30 = (*(*(a2 + 16) + 64))(a2 + 16);
            (*(*(a2 + 16) + 16))(a2 + 16, v30);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Add services to contact for Subscribe Method", 44);
            *(v30 + 17) = 0;
            (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v30 + 17) = 0;
            v31 = SipMessage::headerWithName<SipEventHeader>(*v75);
            if (v31)
            {
              v32 = *(v31 + 127);
              v33 = v32;
              if ((v32 & 0x80u) != 0)
              {
                v32 = v31[14];
              }

              if (v32 == 10)
              {
                v36 = v31[13];
                v34 = (v31 + 13);
                v35 = v36;
                if (v33 >= 0)
                {
                  v37 = v34;
                }

                else
                {
                  v37 = v35;
                }

                v38 = bswap64(*v37);
                v39 = bswap64(*"conference");
                if (v38 == v39 && (v38 = bswap32(*(v37 + 4)) >> 16, v39 = bswap32(*"ce") >> 16, v38 == v39))
                {
                  v40 = 0;
                }

                else if (v38 < v39)
                {
                  v40 = -1;
                }

                else
                {
                  v40 = 1;
                }

                v28 = v40 == 0;
                v46 = v80;
                if (v28)
                {
                  v46 = 1;
                }

                v80 = v46;
              }
            }
          }
        }

        v47 = *(a2 + 232);
        if (v47)
        {
          v47 = std::__shared_weak_count::lock(v47);
          v48 = v47;
          if (v47)
          {
            v47 = *(a2 + 224);
          }
        }

        else
        {
          v48 = 0;
        }

        v49 = SipStack::prefs(v47);
        if (ImsPrefs::AlwaysAddTextService(v49))
        {
          v50 = 1;
        }

        else
        {
          v50 = *(a2 + 2841);
        }

        v73 = v50;
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        v51 = *(a2 + 232);
        if (v51)
        {
          v51 = std::__shared_weak_count::lock(v51);
          v52 = v51;
          if (v51)
          {
            v51 = *(a2 + 224);
          }
        }

        else
        {
          v52 = 0;
        }

        v53 = SipStack::prefs(v51);
        v54 = ImsPrefs::TTYOverImsSupported(v53);
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (v54)
        {
          v55 = SipMessage::body<SipSdpBody>(*v75);
          v56 = v76;
          if (v55)
          {
            shared_owners = v55->__shared_owners_;
            v55 = v55->__shared_weak_owners_;
            if (v55)
            {
              atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (shared_owners)
            {
              v58 = *(shared_owners + 448);
              v59 = *(shared_owners + 456);
              while (v58 != v59)
              {
                if (*(v58 + 12) == 4)
                {
                  goto LABEL_95;
                }

                v58 += 200;
              }
            }
          }

          if (v73)
          {
LABEL_95:
            v74 = v55;
            v60 = *(a2 + 16);
            *(a2 + 2841) = 1;
            v61 = (*(v60 + 64))(a2 + 16);
            (*(*(a2 + 16) + 16))(a2 + 16, v61);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), "Adding text service feature tag to dialog", 41);
            *(v61 + 17) = 0;
            (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v80 |= 0x20u;
            *(v61 + 17) = 0;
            v56 = v76;
            v55 = v74;
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }
        }

        else
        {
          v80 &= ~0x20u;
          *(a2 + 2841) = 0;
          v56 = v76;
        }

        if (*(v77 + 2817) != 1)
        {
LABEL_122:
          *(v56 + 80) = 0;
          *(v56 + 48) = 0u;
          *(v56 + 64) = 0u;
          *(v56 + 16) = 0u;
          *(v56 + 32) = 0u;
          *v56 = 0u;
          SipUserAgent::fillContactForServicesAndMethod(v79, &v90, v80, &v98, v81, v56);
          v44 = v78;
          if (((*(**(v56 + 8) + 24))(*(v56 + 8), *(v56 + 16)) & 1) == 0)
          {
            SipMessage::setContact(*v75, &v90);
          }

LABEL_124:
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          goto LABEL_126;
        }

        if (*(a2 + 2689))
        {
          v62 = 2048;
LABEL_121:
          v80 = v62;
          goto LABEL_122;
        }

        v63 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v63 = v98.__r_.__value_.__l.__size_;
        }

        if (v63 == 3)
        {
          v69 = &v98;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v69 = v98.__r_.__value_.__r.__words[0];
          }

          if (LOWORD(v69->__r_.__value_.__l.__data_) == SipRequest::kMethodAck && v69->__r_.__value_.__s.__data_[2] == BYTE2(SipRequest::kMethodAck))
          {
            goto LABEL_120;
          }

          data_low = LOWORD(v69->__r_.__value_.__l.__data_);
          v66 = SipRequest::kMethodBye;
          v67 = v69->__r_.__value_.__s.__data_[2];
          v68 = BYTE2(SipRequest::kMethodBye);
        }

        else
        {
          if (v63 != 6)
          {
LABEL_119:
            v80 = SipStack::allRegisteredServices(v77);
            goto LABEL_122;
          }

          v64 = &v98;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v64 = v98.__r_.__value_.__r.__words[0];
          }

          data_low = v64->__r_.__value_.__l.__data_;
          v66 = *"INVITE";
          v67 = WORD2(v64->__r_.__value_.__r.__words[0]);
          v68 = *"TE";
        }

        if (data_low != v66 || v67 != v68)
        {
          goto LABEL_119;
        }

LABEL_120:
        v62 = 0x20000;
        goto LABEL_121;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  __p = &unk_1F5EBDEF8;
  v83 = &_bambiDomain;
  v84 = 1073741826;
  v41 = ImsResult::operator<<<char [12]>(&__p, "no sipstack");
  ImsResult::ImsResult(a1, v41);
  ImsResult::~ImsResult(&__p);
  if (v21)
  {
LABEL_126:
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v90 = &unk_1F5ED0580;
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v97 + 1));
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(&v95 + 8, v96);
  *(&v92 + 1) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v93, *(&v93 + 1));
  SipUri::~SipUri(v91);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v72 = *MEMORY[0x1E69E9840];
}

void sub_1E5015FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  SipContactParam::~SipContactParam(&a27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (*(v30 - 129) < 0)
  {
    operator delete(*(v30 - 152));
  }

  _Unwind_Resume(a1);
}

void *SipMessage::headerWithName<SipEventHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Event");
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

void SipDialog::fillCommonRequestHeaders(uint64_t a1, uint64_t a2, SipMessage **a3, uint64_t *a4)
{
  SipMessage::removeHeadersWithName(*a3, "Route");
  v8 = *a4;
  if (*a4)
  {
    v9 = a3[1];
    v33[0] = *a3;
    v33[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }

    SipDialogFork::fillCommonRequestHeaders(v8, v33);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (!SipUri::isValidUri((*a3 + 152)))
  {
    SipUri::operator=((*a3 + 152), a2 + 240);
  }

  v10 = SipMessage::header<SipFromHeader>(*a3, 1);
  SipUri::operator=((v10 + 13), a2 + 1504);
  v11 = SipMessage::header<SipToHeader>(*a3, 1);
  SipUri::operator=((v11 + 13), a2 + 240);
  v12 = *(a2 + 1935);
  if (v12 < 0)
  {
    v12 = *(a2 + 1920);
  }

  if (v12)
  {
    v13 = SipMessage::header<SipFromHeader>(*a3, 1);
    SipUriHeader::setTag(v13, a2 + 1912);
  }

  v14 = SipMessage::header<SipCallIdHeader>(*a3, 1);
  std::string::operator=((v14 + 8), (a2 + 2376));
  v15 = *(a2 + 2455);
  if (v15 < 0)
  {
    v15 = *(a2 + 2440);
  }

  if (v15)
  {
    v16 = SipMessage::header<SipSessionIdHeader>(*a3, 1);
    std::string::operator=((v16 + 8), (a2 + 2432));
  }

  v17 = *(a2 + 2511);
  if (v17 < 0)
  {
    v17 = *(a2 + 2496);
  }

  if (v17)
  {
    v18 = SipMessage::header<SipConversationIdHeader>(*a3, 1);
    std::string::operator=((v18 + 8), (a2 + 2488));
  }

  v19 = *(a2 + 2567);
  if (v19 < 0)
  {
    v19 = *(a2 + 2552);
  }

  if (v19)
  {
    v20 = SipMessage::header<SipContributionIdHeader>(*a3, 1);
    std::string::operator=((v20 + 8), (a2 + 2544));
  }

  v21 = *(a2 + 2623);
  if (v21 < 0)
  {
    v21 = *(a2 + 2608);
  }

  if (v21)
  {
    v22 = SipMessage::header<SipInReplyToContributionIdHeader>(*a3, 1);
    std::string::operator=((v22 + 8), (a2 + 2600));
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v23 = a3[1];
  v32[0] = *a3;
  v32[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::fillContactHeader(a1, a2, v32);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (((*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 16)) & 1) == 0)
  {
    v24 = *(a2 + 2752);
    if (v24)
    {
      v25 = std::__shared_weak_count::lock(v24);
      if (v25)
      {
        v26 = v25;
        v27 = *(a2 + 2744);
        if (v27)
        {
          v28 = a3[1];
          v29 = *a3;
          v30 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v27 + 200))(v31);
          ImsResult::operator=(a1, v31);
          ImsResult::~ImsResult(v31);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }
  }
}

void sub_1E5016408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  ImsResult::~ImsResult(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  ImsResult::~ImsResult(v4);
  _Unwind_Resume(a1);
}

void SipDialog::createRequestInDialog(void *a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1[29];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = a1[28];
      if (v8)
      {
        SipStack::createRequestFromTemplate(v8, a2, a3);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = a1[25];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    (*(a1[20] + 16))(__p, a1 + 20);
    v11 = v13 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v15 = 1752392040;
    v16 = 2081;
    v17 = v11;
    _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void SipDialog::setSenderIdentity(SipDialog *this, const SipUri *a2)
{
  SipUri::SipUri(v3, a2);
  v4 = 1;
  std::__optional_storage_base<SipUri,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SipUri,false>>((this + 648), v3);
  if (v4 == 1)
  {
    SipUri::~SipUri(v3);
  }
}

void sub_1E501663C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a60 == 1)
  {
    SipUri::~SipUri(&a9);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::setReferredBy(SipDialog *this, const SipUri *a2)
{
  SipUri::SipUri(v3, a2);
  v4 = 1;
  std::__optional_storage_base<SipUri,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SipUri,false>>((this + 1064), v3);
  if (v4 == 1)
  {
    SipUri::~SipUri(v3);
  }
}

void sub_1E50166B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a60 == 1)
  {
    SipUri::~SipUri(&a9);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::resetCallIdAndTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  v35 = &unk_1F5ED4468;
  if (*(a1 + 2375) < 0)
  {
    std::string::__init_copy_ctor_external(v36, *(a1 + 2352), *(a1 + 2360));
  }

  else
  {
    v36[0] = *(a1 + 2352);
  }

  if (*(a1 + 2399) < 0)
  {
    std::string::__init_copy_ctor_external(&v36[1], *(a1 + 2376), *(a1 + 2384));
  }

  else
  {
    v36[1] = *(a1 + 2376);
  }

  v35 = &unk_1F5EE94C0;
  memset(v34, 0, sizeof(v34));
  *v33 = 0u;
  v32 = &unk_1F5ED4468;
  if (*(a1 + 2431) < 0)
  {
    std::string::__init_copy_ctor_external(v33, *(a1 + 2408), *(a1 + 2416));
  }

  else
  {
    *v33 = *(a1 + 2408);
    v34[0] = *(a1 + 2424);
  }

  if (*(a1 + 2455) < 0)
  {
    std::string::__init_copy_ctor_external(&v34[1], *(a1 + 2432), *(a1 + 2440));
  }

  else
  {
    *&v34[1] = *(a1 + 2432);
    v34[3] = *(a1 + 2448);
  }

  v32 = &unk_1F5EDEC18;
  memset(&v31, 0, sizeof(v31));
  v6 = (a1 + 1912);
  if (*(a1 + 1935) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(a1 + 1912), *(a1 + 1920));
  }

  else
  {
    *&v31.__r_.__value_.__l.__data_ = *v6;
    v31.__r_.__value_.__r.__words[2] = *(a1 + 1928);
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    SipCallId::generate((a1 + 2344));
  }

  SipIdString::set(a1 + 2344, a2);
  v8 = *(a1 + 232);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 224);
      if (v10)
      {
        v12 = *(v10 + 248);
        v11 = *(v10 + 256);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          ImsRandomStringGenerator::randomString((v12 + 688), 10, &v28);
          if (*(a1 + 1935) < 0)
          {
            operator delete(*v6);
          }

          *v6 = *&v28.__r_.__value_.__l.__data_;
          *(a1 + 1928) = *(&v28.__r_.__value_.__l + 2);
          size = HIBYTE(v36[1].__r_.__value_.__r.__words[2]);
          if ((v36[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v36[1].__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v15 = (*(*(a1 + 16) + 64))(a1 + 16);
            (*(*(a1 + 16) + 16))(a1 + 16, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "replaced callId (", 17);
            *(v15 + 17) = 0;
            v35[2](&v35, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ") and localTag (", 16);
            *(v15 + 17) = 0;
            ObfuscatedString::ObfuscatedString(&v28, &v31);
            (*(*v15 + 56))(v15, &v28);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ")", 1);
            *(v15 + 17) = 0;
            v13 = (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v15 + 17) = 0;
            if (v30 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }
          }

          v16 = *(a3 + 23);
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(a3 + 8);
          }

          if (v16)
          {
            SipIdString::set(a1 + 2400, a3);
            v17 = HIBYTE(v34[3]);
            if (SHIBYTE(v34[3]) < 0)
            {
              v17 = v34[2];
            }

            if (v17)
            {
              v18 = (*(*(a1 + 16) + 64))(a1 + 16);
              (*(*(a1 + 16) + 16))(a1 + 16, v18);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "replaced sessionId ", 19);
              *(v18 + 17) = 0;
              v32[2](&v32, v18);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " with ", 6);
              *(v18 + 17) = 0;
              (*(*(a1 + 2400) + 16))(a1 + 2400, v18);
              v13 = (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v18 + 17) = 0;
            }
          }

          else if (*(a1 + 2816) == 1)
          {
            v13 = SipUserAgent::config(v12);
            if (*(v13 + 857) == 1)
            {
              v22 = *(a1 + 2455);
              if (v22 < 0)
              {
                v22 = *(a1 + 2440);
              }

              if (!v22)
              {
                v23 = *(a1 + 2399);
                if ((v23 & 0x80u) != 0)
                {
                  v23 = *(a1 + 2384);
                }

                if (v23)
                {
                  SipSessionId::generateFromCallId(a1 + 2400, a1 + 2376);
                }
              }
            }
          }

          IPTelephonyManager::getBambiClient(&v28, v13);
          v24 = *(v28.__r_.__value_.__r.__words[0] + 297);
          if (v28.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
          }

          if (v24)
          {
            v25 = random() & 0x7FFFFFFF;
          }

          else
          {
            v25 = 1;
          }

          *(a1 + 2736) = v25;
          std::__tree<std::string>::destroy(a1 + 2920, *(a1 + 2928));
          *(a1 + 2920) = a1 + 2928;
          *(a1 + 2928) = 0u;
          if (*(a1 + 3023) < 0)
          {
            **(a1 + 3000) = 0;
            *(a1 + 3008) = 0;
          }

          else
          {
            *(a1 + 3000) = 0;
            *(a1 + 3023) = 0;
          }

          SipDialog::removeAllForks(a1);
        }

        else
        {
          v20 = *(a1 + 200);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            (*(*(a1 + 160) + 16))(&v28, a1 + 160);
            v21 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
            buf = 141558275;
            buf_4 = 1752392040;
            buf_12 = 2081;
            buf_14 = v21;
            _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_72:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_73;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v19 = *(a1 + 200);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 160) + 16))(&v28, a1 + 160);
    v27 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v27;
    _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v32 = &unk_1F5ED4468;
  if (SHIBYTE(v34[3]) < 0)
  {
    operator delete(v34[1]);
  }

  if (SHIBYTE(v34[0]) < 0)
  {
    operator delete(v33[0]);
  }

  v35 = &unk_1F5ED4468;
  if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36[0].__r_.__value_.__l.__data_);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E5016FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  SipSessionId::~SipSessionId(&a25);
  SipCallId::~SipCallId(&a35);
  _Unwind_Resume(a1);
}

void SipDialog::updateLocalUri(SipDialog *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 29);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 28);
      if (v4)
      {
        v6 = *(v4 + 248);
        v5 = *(v4 + 256);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          v31 = 0;
          v29 = 0u;
          memset(v30, 0, sizeof(v30));
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          *__p = 0u;
          v7 = SipUserAgent::publicUri(v6);
          SipUri::SipUri(__p, v7);
          memset(&buf, 0, sizeof(buf));
          if (*(v6 + 679) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, *(v6 + 656), *(v6 + 664));
          }

          else
          {
            buf = *(v6 + 656);
          }

          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::operator=((v30 + 8), &buf);
          }

          v12 = this + 1504;
          SipUri::operator=((this + 1504), __p);
          v14 = *(this + 2);
          v13 = this + 16;
          v15 = (*(v14 + 64))(v13);
          (*(*v13 + 16))(v13, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updated local URI to ", 21);
          *(v15 + 17) = 0;
          (*(*v12 + 40))(v12, v15);
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          SipUri::~SipUri(__p);
        }

        else
        {
          v9 = *(this + 25);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 20) + 16))(__p, this + 160);
            v10 = (SBYTE7(v19) & 0x80u) == 0 ? __p : __p[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
            *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
            _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
            if (SBYTE7(v19) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

LABEL_29:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_30;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 25);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 20) + 16))(__p, this + 160);
    v17 = (SBYTE7(v19) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
    _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    goto LABEL_29;
  }

LABEL_30:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E50174B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SipUri::~SipUri(&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t SipDialog::updateRemoteUri(SipDialog *this, const SipUri *a2)
{
  v3 = this + 240;
  SipUri::operator=((this + 240), a2);
  v4 = (*(*(this + 2) + 64))(this + 16);
  (*(*(this + 2) + 16))(this + 16, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "updated remote URI to ", 22);
  *(v4 + 17) = 0;
  (*(*(this + 30) + 40))(v3, v4);
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  return result;
}

double SipDialog::initializeMobileOriginated@<D0>(SipDialog *this@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X8>)
{
  *(this + 2816) = 1;
  *(this + 2840) = 1;
  SipDialog::updateLocalUri(this);
  SipUri::operator=((this + 240), a2);
  std::string::basic_string[abi:ne200100]<0>(v11, &str_25_3);
  std::string::basic_string[abi:ne200100]<0>(__p, &str_25_3);
  SipDialog::resetCallIdAndTags(this, v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  SipDialog::createFork(this, v11);
  v6 = *v11;
  v11[0] = 0;
  v11[1] = 0;
  v7 = *(this + 374);
  *(this + 2984) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v11[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11[1]);
    }
  }

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

void sub_1E501772C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::createFork(SipDialog *this@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 29);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        v8 = *(v6 + 248);
        v7 = *(v6 + 256);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          *a2 = 0;
          a2[1] = 0;
          v9 = *(this + 22);
          v15 = *(this + 21);
          if (v9)
          {
            if (std::__shared_weak_count::lock(v9))
            {
              SipDialogFork::create(a2);
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v11 = *(this + 25);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          (*(*(this + 20) + 16))(__p, this + 160);
          v14 = v17 >= 0 ? __p : __p[0];
          *buf = 141558275;
          v19 = 1752392040;
          v20 = 2081;
          v21 = v14;
          _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *a2 = 0;
        a2[1] = 0;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_18;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *(this + 25);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 20) + 16))(__p, this + 160);
    v13 = v17 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v13;
    _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E5017A18(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialog::initializeMobileTerminated(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  (*(**a2 + 80))(&v23);
  if ((*(**(&v23 + 1) + 24))(*(&v23 + 1), v24))
  {
    ImsResult::ImsResult(a3, &v23);
  }

  else
  {
    a1[2816] = 0;
    v6 = SipMessage::header<SipToHeader>(*a2);
    if (v6)
    {
      v7 = v6 + 104;
    }

    else
    {
      v7 = 0;
    }

    SipUri::operator=((a1 + 1504), v7);
    v8 = SipMessage::header<SipFromHeader>(*a2);
    if (v8)
    {
      v9 = v8 + 104;
    }

    else
    {
      v9 = 0;
    }

    SipUri::operator=((a1 + 240), v9);
    v10 = SipMessage::header<SipCallIdHeader>(*a2);
    v11 = SipMessage::header<SipSessionIdHeader>(*a2);
    if (v10)
    {
      v12 = (v10 + 64);
    }

    else
    {
      v12 = &ims::kEmptyString;
    }

    if (v11)
    {
      v13 = (v11 + 64);
    }

    else
    {
      v13 = &ims::kEmptyString;
    }

    SipDialog::resetCallIdAndTags(a1, v12, v13);
    v21 = 0;
    v22 = 0;
    SipDialog::createFork(a1, &v21);
    v14 = v21;
    v15 = *a2;
    v16 = a2[1];
    v19[0] = v15;
    v19[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialogFork::initializeMobileTerminated(v14, v19, v20);
    ImsResult::operator=(&v23, v20);
    ImsResult::~ImsResult(v20);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if ((*(**(&v23 + 1) + 24))(*(&v23 + 1), v24))
    {
      ImsResult::ImsResult(a3, &v23);
    }

    else
    {
      v17 = v22;
      v18[0] = v21;
      v18[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipDialog::addFork(a1, v18);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  ImsResult::~ImsResult(&v23);
}

void sub_1E5017CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  ImsResult::~ImsResult(&a27);
  _Unwind_Resume(a1);
}

void SipDialog::addFork(SipDialog *a1, void *a2)
{
  SipDialog::sipSession(a1, &v14);
  v4 = v15;
  if (v15)
  {
    v5 = std::__shared_weak_count::lock(v15);
    if (v5)
    {
      v6 = v14;
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        v7 = a2[1];
        v12 = *a2;
        v13 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 39))(v6, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }

    else
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = (*a2 + 264);
  v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 2944, v14);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 64);
  *(v8 + 56) = v10;
  *(v8 + 64) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5017E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipDialog::resetIfNecessary(std::string *this)
{
  v48 = *MEMORY[0x1E69E9840];
  if (this[117].__r_.__value_.__s.__data_[8] != 1 || this[118].__r_.__value_.__s.__data_[8] != 1)
  {
    goto LABEL_59;
  }

  v2 = this[9].__r_.__value_.__r.__words[2];
  if (!v2)
  {
    v3 = 0;
LABEL_56:
    size = this[8].__r_.__value_.__l.__size_;
    if (os_log_type_enabled(size, OS_LOG_TYPE_ERROR))
    {
      (*(this[6].__r_.__value_.__r.__words[2] + 16))(v43, &this[6].__r_.__value_.__s.__data_[16]);
      v34 = (SBYTE7(v44) & 0x80u) == 0 ? v43 : v43[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v34;
      _os_log_error_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SBYTE7(v44) < 0)
      {
        operator delete(v43[0]);
      }
    }

    goto LABEL_57;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_56;
  }

  v4 = this[9].__r_.__value_.__l.__size_;
  if (!v4)
  {
    goto LABEL_56;
  }

  v6 = *(v4 + 248);
  v5 = *(v4 + 256);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    v44 = 0u;
    memset(&v45, 0, sizeof(v45));
    *v43 = 0u;
    SipIdString::SipIdString(v43);
    v43[0] = &unk_1F5EE94C0;
    if (*(SipUserAgent::config(v6) + 1122) == 1)
    {
      std::string::operator=(&v43[1], this + 98);
      std::string::operator=(&v45, this + 99);
      std::string::basic_string[abi:ne200100]<0>(buf, &str_25_3);
      std::string::basic_string[abi:ne200100]<0>(&__p, &str_25_3);
      SipDialog::resetCallIdAndTags(this, buf, &__p);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    memset(buf, 0, sizeof(buf));
    v7 = this[119].__r_.__value_.__r.__words[2];
    if (v7 != &this[120])
    {
      do
      {
        std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](buf, (v7 + 56));
        v8 = *(v7 + 1);
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
            v9 = *(v7 + 2);
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != &this[120]);
      v11 = *buf;
      for (i = *&buf[8]; v11 != i; v11 += 2)
      {
        v13 = *v11;
        v14 = v11[1];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39[0] = v13;
        v39[1] = v14;
        SipDialog::removeClientTransaction(this, v39);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }
    }

    __p = 0;
    v41 = 0;
    v42 = 0;
    v15 = this[118].__r_.__value_.__r.__words[2];
    if (v15 != &this[119])
    {
      do
      {
        std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&__p, (v15 + 56));
        v16 = *(v15 + 1);
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
            v17 = *(v15 + 2);
            v10 = *v17 == v15;
            v15 = v17;
          }

          while (!v10);
        }

        v15 = v17;
      }

      while (v17 != &this[119]);
      v18 = __p;
      v19 = v41;
      if (__p != v41)
      {
        do
        {
          v20 = *v18;
          v21 = v18[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v38[0] = v20;
          v38[1] = v21;
          SipDialog::removeServerTransaction(this, v38);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v18 += 2;
        }

        while (v18 != v19);
      }
    }

    SipDialog::removeAllForks(this);
    v22 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v45.__r_.__value_.__l.__size_;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    data = this[9].__r_.__value_.__l.__data_;
    if (!data)
    {
      goto LABEL_50;
    }

    v24 = std::__shared_weak_count::lock(data);
    if (!v24)
    {
      goto LABEL_50;
    }

    v25 = v24;
    v26 = this[8].__r_.__value_.__r.__words[2];
    if (v26)
    {
      v27 = this[7].__r_.__value_.__l.__size_;
      v36 = this[7].__r_.__value_.__l.__data_;
      if (v27)
      {
        v28 = std::__shared_weak_count::lock(v27);
        v37 = v28;
        if (v28)
        {
          v29 = v28;
          SipDialogManager::updateDialogMap(v26, &v45, &this[99].__r_.__value_.__l.__data_, &v36);
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          goto LABEL_49;
        }
      }

      else
      {
        v37 = 0;
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

LABEL_49:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_50:
    p_p = &__p;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    __p = buf;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v43[0] = &unk_1F5ED4468;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    v30 = v43[1];
    goto LABEL_54;
  }

  v33 = this[8].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    (*(this[6].__r_.__value_.__r.__words[2] + 16))(v43, &this[6].__r_.__value_.__s.__data_[16]);
    v35 = (SBYTE7(v44) & 0x80u) == 0 ? v43 : v43[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v35;
    _os_log_error_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
    if (SBYTE7(v44) < 0)
    {
      v30 = v43[0];
LABEL_54:
      operator delete(v30);
    }
  }

LABEL_61:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_57:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_59:
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E5018394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  *(v26 - 104) = &__p;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  __p = (v26 - 96);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  SipCallId::~SipCallId(&a22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void SipDialog::removeClientTransaction(uint64_t a1, void *a2)
{
  v4 = *(a1 + 2752);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 2744);
      if (v7)
      {
        v8 = a2[1];
        v21 = *a2;
        v22 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v7 + 216))(v7, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v9 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*(a1 + 16) + 16))(a1 + 16, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "removing ", 9);
  *(v9 + 17) = 0;
  (*(**a2 + 144))(__p);
  (*(*v9 + 40))(v9, __p);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v10 = *a2;
  v11 = (*(**(v10 + 264) + 120))(*(v10 + 264));
  SipTransaction::transactionMapKey(v10 + 312, v11, __p);
  v12 = *(a1 + 2880);
  if (v12)
  {
    v13 = a1 + 2880;
    do
    {
      v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v12 + 32), __p);
      if ((v14 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v12 = *(v12 + ((v14 >> 4) & 8));
    }

    while (v12);
    if (v13 != a1 + 2880 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v13 + 32)) & 0x80) == 0)
    {
      v15 = *(v13 + 8);
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
        v17 = v13;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (!v18);
      }

      if (*(a1 + 2872) == v13)
      {
        *(a1 + 2872) = v16;
      }

      --*(a1 + 2888);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 2880), v13);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(v13 + 32);
      operator delete(v13);
      SipDialog::checkTerminated(a1);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5018754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void SipDialog::removeServerTransaction(uint64_t a1, void *a2)
{
  v4 = *(a1 + 2752);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 2744);
      if (v7)
      {
        v8 = a2[1];
        v21 = *a2;
        v22 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v7 + 224))(v7, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v9 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*(a1 + 16) + 16))(a1 + 16, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "removing ", 9);
  *(v9 + 17) = 0;
  (*(**a2 + 152))(__p);
  (*(*v9 + 40))(v9, __p);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v10 = *a2;
  v11 = (*(**(v10 + 264) + 120))(*(v10 + 264));
  SipTransaction::transactionMapKey(v10 + 312, v11, __p);
  v12 = (a1 + 2848);
  v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2848, __p);
  v14 = v13;
  if ((a1 + 2856) != v13)
  {
    v15 = v13[1];
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
      v17 = v13;
      do
      {
        v16 = v17[2];
        v18 = *v16 == v17;
        v17 = v16;
      }

      while (!v18);
    }

    if (*v12 == v13)
    {
      *v12 = v16;
    }

    --*(a1 + 2864);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 2856), v13);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v14 + 4));
    operator delete(v14);
  }

  SipDialog::checkTerminated(a1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5018A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void SipDialog::removeForkWithRemoteTag(uint64_t a1, std::string *a2)
{
  v4 = a1 + 2944;
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, &a2->__r_.__value_.__l.__data_);
  if (a1 + 2952 != v5)
  {
    v6 = v5;
    v7 = (*(*(a1 + 16) + 64))(a1 + 16);
    (*(*(a1 + 16) + 16))(a1 + 16, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "removing fork ", 14);
    *(v7 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v18, a2);
    (*(*v7 + 56))(v7, v18);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
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

    --*(a1 + 2960);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 2952), v6);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v6 + 4));
    operator delete(v6);
    if (v9 == *(a1 + 2968))
    {
      if (*(a1 + 2960) == 1)
      {
        v14 = *(*v4 + 56);
        v15 = *(*v4 + 64);
        v16 = v14;
        v17 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }

      SipDialog::setActiveFork(a1, &v16, 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E5018CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::setActiveFork(const std::string **a1, const std::string **a2, int a3)
{
  v4 = *a2;
  v5 = a1[371];
  if (*a2)
  {
    if (v5 == v4 && (a3 & 1) == 0)
    {
      v8 = a1 + 2;
      v9 = (a1[2][2].__r_.__value_.__r.__words[2])(a1 + 2);
      (*(*v8 + 16))(v8, v9);
      ObfuscatedString::ObfuscatedString(&v31, *a2 + 11);
      (*(*v9 + 56))(v9, &v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " was already the active fork", 28);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v31);
      }

      return;
    }

    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    a1[371] = v4;
    v15 = a1[372];
    a1[372] = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v16 = (a1[2][2].__r_.__value_.__r.__words[2])(a1 + 2);
    (a1[2]->__r_.__value_.__r.__words[2])(a1 + 2, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "active fork is now ", 19);
    *(v16 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v31, *a2 + 11);
    (*(*v16 + 56))(v16, &v31);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v33 < 0)
    {
      operator delete(v31);
    }

    SipDialog::sipSession(a1, &v31);
    v17 = v32;
    if (v32)
    {
      v18 = std::__shared_weak_count::lock(v32);
      if (!v18)
      {
        std::__shared_weak_count::__release_weak(v17);
        return;
      }

      v19 = v18;
      v20 = v31;
      std::__shared_weak_count::__release_weak(v17);
      if (v20)
      {
        v21 = *a2;
        v22 = a2[1];
        v30[0] = v21;
        v30[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          SipSessionInterface::stack(v20, &v31);
          v23 = SipStack::prefs(v31);
          if (ImsPrefs::SelectForkWithActiveEarlyMedia(v23))
          {
            v24 = 0;
            active = 1;
          }

          else
          {
            SipSessionInterface::stack(v20, &v28);
            v27 = SipStack::prefs(v28);
            active = ImsPrefs::SelectLatestForkWithActiveEarlyMedia(v27);
            v24 = 1;
          }
        }

        else
        {
          v24 = 0;
          active = 0;
        }

        SipSession::handleActiveForkChanged(v20, v30, active);
        if (v24 && v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (a3 && v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      v26 = v19;
      goto LABEL_44;
    }
  }

  else
  {
    v10 = a1 + 371;
    v11 = a1 + 2;
    v12 = (a1[2][2].__r_.__value_.__r.__words[2])(a1 + 2);
    (*(*v11 + 16))(a1 + 2, v12);
    v13 = *(v12 + 8);
    if (v5)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "setActiveFork ", 14);
      *(v12 + 17) = 0;
      ObfuscatedString::ObfuscatedString(&v31, *v10 + 11);
      (*(*v12 + 56))(v12, &v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " to null", 8);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      if (v35 < 0)
      {
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v31);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "setActiveFork (already null) to null", 36);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
    }

    v26 = a1[372];
    *v10 = 0;
    a1[372] = 0;
    if (v26)
    {
LABEL_44:
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }
}

void sub_1E50191FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipDialog::forkForBearerPort(SipDialog *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, _DWORD *a4@<X3>, const std::string **a5@<X8>)
{
  v6 = *(a1 + 368);
  v38 = (a1 + 2952);
  if (v6 != (a1 + 2952))
  {
    v7 = a2;
    v8 = (a1 + 16);
    if (a3)
    {
      v9 = "local";
    }

    else
    {
      v9 = "remote";
    }

    v10 = 5;
    if (!a3)
    {
      v10 = 6;
    }

    v35 = v10;
    v36 = v9;
    do
    {
      *a5 = 0;
      a5[1] = 0;
      v11 = v6[7];
      *a5 = v11;
      v12 = v6[8];
      a5[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = 0;
      v48 = 0;
      data = v11[32].__r_.__value_.__l.__data_;
      size = v11[32].__r_.__value_.__l.__size_;
      if (a3)
      {
        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          SipOfferAnswer::activeLocalSdp(data, &v47);
LABEL_15:
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          goto LABEL_18;
        }

        SipOfferAnswer::activeLocalSdp(data, &v47);
      }

      else
      {
        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          SipOfferAnswer::activeRemoteSdp(data, &v47);
          goto LABEL_15;
        }

        SipOfferAnswer::activeRemoteSdp(data, &v47);
      }

LABEL_18:
      if (v47)
      {
        v15 = *(v47 + 448);
        v16 = *(v47 + 456);
        while (1)
        {
          if (v15 == v16)
          {
            v18 = 0;
            v19 = 1;
            goto LABEL_42;
          }

          v17 = (*(*v8 + 64))(v8);
          (*(*v8 + 16))(v8, v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Fork ", 5);
          *(v17 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&v42, v11 + 11);
          (*(*v17 + 56))(v17, &v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " has media port ", 16);
          *(v17 + 17) = 0;
          MEMORY[0x1E6923370](*(v17 + 8), *(v15 + 16));
          *(v17 + 17) = 0;
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v17 + 17) = 0;
          if (v46 < 0)
          {
            operator delete(__p);
          }

          if (v44 < 0)
          {
            operator delete(v42);
          }

          if (*(v15 + 16) == v7)
          {
            break;
          }

          v15 += 200;
        }

        if (a4)
        {
          *a4 = *(v15 + 12);
        }

        v21 = (*(*v8 + 64))(v8);
        (*(*v8 + 16))(v8, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 1), "Matched ", 8);
        v21[17] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 1), v36, v35);
        v21[17] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 1), " fork ", 6);
        v21[17] = 0;
        ObfuscatedString::ObfuscatedString(&v42, v11 + 11);
        (*(*v21 + 56))(v21, &v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 1), " with media type ", 17);
        v21[17] = 0;
        (*(*v21 + 32))(v21, v40);
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v21[17] = 0;
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }

        if (v46 < 0)
        {
          operator delete(__p);
        }

        if (v44 < 0)
        {
          operator delete(v42);
        }

        v19 = 0;
        v18 = 1;
      }

      else
      {
        v20 = (*(*v8 + 48))(v8);
        (*(*v8 + 16))(v8, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "No active remote SDP for fork ", 30);
        *(v20 + 17) = 0;
        ObfuscatedString::ObfuscatedString(&v42, v11 + 11);
        (*(*v20 + 56))(v20, &v42);
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (v46 < 0)
        {
          operator delete(__p);
        }

        if (v44 < 0)
        {
          operator delete(v42);
        }

        v18 = 0;
        v19 = 1;
      }

LABEL_42:
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (v12)
      {
        v22 = v18;
      }

      else
      {
        v22 = 1;
      }

      if ((v22 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (!v19)
      {
        return;
      }

      v23 = v6[1];
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
          v24 = v6[2];
          v25 = *v24 == v6;
          v6 = v24;
        }

        while (!v25);
      }

      v6 = v24;
    }

    while (v24 != v38);
  }

  SipDialog::sipSession(a1, &v42);
  v26 = v43;
  if (v43)
  {
    v27 = std::__shared_weak_count::lock(v43);
    if (v27)
    {
      v28 = v42;
      std::__shared_weak_count::__release_weak(v26);
      if (v28)
      {
        SipSessionInterface::stack(v28, &v42);
        v29 = SipStack::prefs(v42);
        v30 = ImsPrefs::RequireBearerPortMatchForPreconditions(v29);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v30)
        {
          *a5 = 0;
          a5[1] = 0;
          goto LABEL_72;
        }
      }
    }

    else
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else
  {
    v27 = 0;
  }

  v31 = *(a1 + 373);
  if (v31)
  {
    v32 = *(a1 + 374);
  }

  else
  {
    if (*(a1 + 370) != 1)
    {
      *a5 = 0;
      a5[1] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_72;
    }

    v33 = *(a1 + 368);
    v31 = *(v33 + 56);
    v32 = *(v33 + 64);
  }

  *a5 = v31;
  a5[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  if (v27)
  {
LABEL_72:
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}