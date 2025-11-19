void sub_1E4D20DD8(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*v4);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::getInfoForBasebandCallId@<X0>(uint64_t this@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 65280;
  *(a3 + 16) = 0;
  v4 = a3 + 16;
  *(a3 + 8) = &unk_1F5EBEE78;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v5 = *(this + 64);
  v6 = *(this + 72) - v5;
  if (v6)
  {
    v7 = this;
    v8 = 0;
    v9 = v6 >> 4;
    v10 = a2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    while (1)
    {
      v11 = *(v5 + v8);
      if (v11)
      {
        if (*(v11 + 72) == v10)
        {
          break;
        }
      }

      v8 += 16;
      if (!--v9)
      {
        return this;
      }
    }

    IMSCallInfo::uuid(v12, v11);
    if (*(a3 + 39) < 0)
    {
      operator delete(*v4);
    }

    *v4 = *&v12[8];
    *(v4 + 16) = v13;
    *(a3 + 1) = v10;
    this = IMSCallInfo::isEmergency(*(*(v7 + 64) + v8));
    *a3 = this;
  }

  return this;
}

void sub_1E4D20F04(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::initializeNonEmergencyCall(uint64_t a1, const void **a2, uint64_t a3)
{
  memset(&v110, 0, sizeof(v110));
  v109 = &unk_1F5EBEE78;
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v110 = *(a3 + 16);
  }

  memset(v108, 0, sizeof(v108));
  BambiCallOptions::BambiCallOptions(v108, (a3 + 40));
  v107 = 0u;
  v106 = 0u;
  v105 = 0;
  v90 = 0;
  *&v89[16] = 0u;
  memset(v89, 0, 23);
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  DWORD2(v88) = 90;
  v89[0] = 1;
  v89[2] = 1;
  *&v89[4] = 0x200000001;
  *&v89[13] = 257;
  *&v89[23] = 256;
  v94 = 0u;
  v95 = 0u;
  v91 = 0u;
  v92 = 0u;
  memset(v93, 0, sizeof(v93));
  v96 = 0x40A7700000000000;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v86 = 0;
  v85 = 0;
  IPTelephonyManager::getBambiClient(__p);
  (*(*__p[0] + 184))(&v85);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  IPTelephonyManager::instance(&v46);
  v6 = v46.__r_.__value_.__r.__words[0];
  std::string::basic_string[abi:ne200100]<0>(__p, "-");
  IPTelephonyManager::auditCarrierPrefs(v6, a3 + 5176, __p);
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v46.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46.__r_.__value_.__l.__size_);
  }

  if (v85)
  {
    if (*(v85 + 80) == 2)
    {
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      *__p = 0u;
      SipUri::SipUri(__p);
      memset(&v46, 0, sizeof(v46));
      v7 = SipStack::prefs(v85);
      ImsPrefs::CallTransferRequestUri(v7, &v46);
      v8 = SipStack::prefs(v85);
      ImsPrefs::CallTransferDialNumber(v8, &__str);
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v10 = a2[1];
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v12 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (v10 == size && (v9 >= 0 ? (v13 = a2) : (v13 = *a2), (v14 = __str.__r_.__value_.__r.__words[0], (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), !memcmp(v13, p_str, v10)))
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = v46.__r_.__value_.__l.__size_;
        }

        if (v12 < 0)
        {
          operator delete(v14);
        }

        if (v25)
        {
          OutgoingUri = SipUri::fromString(__p, &v46);
          memset(&__str, 0, sizeof(__str));
          v26 = SipStack::prefs(v85);
          ImsPrefs::CallTransferToUri(v26, &__str);
          std::string::operator=((&v108[5] + 8), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_33;
        }
      }

      else if (v12 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      IPTelephonyManager::instance(&__str);
      v16 = __str.__r_.__value_.__r.__words[0];
      v43 = v85;
      v44 = v86;
      if (v86)
      {
        atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutgoingUri = IPTelephonyManager::makeOutgoingUri(v16, &v43, a2, __p);
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }

LABEL_33:
      if (OutgoingUri)
      {
        v18 = SipStack::prefs(v85);
        BambiCallOptions::initializeFromPrefs(v108, v18);
        memset(&__str, 0, sizeof(__str));
        IPTelephonyManager::getBambiClient(&v27);
        *&v36.__r_.__value_.__l.__data_ = 0uLL;
        v19 = BambiClient::unconfirmedCallsExcludingCall(v27.__r_.__value_.__l.__data_, &__str.__r_.__value_.__l.__data_, &v36);
        if (v27.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
        }

        if (!v19)
        {
          v28 = 0;
          v29 = 0;
          std::allocate_shared[abi:ne200100]<IMSCallInfo,std::allocator<IMSCallInfo>,ImsUuid &,std::string &,decltype(nullptr),0>();
        }

        std::string::basic_string[abi:ne200100]<0>(&v36, "call");
        v32[0] = 0;
        v35 = 0;
        v20 = ims::debug(&v36, v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Can not dial calls during existing alerting call", 48);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (v35 == 1 && v34 < 0)
        {
          operator delete(v33);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v30 = &unk_1F5EBEE78;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
        }

        else
        {
          v31 = v110;
        }

        ims::CFString::asString(@"kCallDisconnectionReasonAnsweringExistingCall", 0x8000100, &v36);
        IMSCallManager::sendCallDisconnectionNotification(a1, &v30, (a3 + 5176), &v36, 0);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v30 = &unk_1F5EBEE78;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v36.__r_.__value_.__r.__words[0] = &__str;
        std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v36);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__str, "call");
        v39[0] = 0;
        v42 = 0;
        v23 = ims::error(&__str, v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "IMSCallManager: unable to determine destination URI", 51);
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v42 == 1 && v41 < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v37 = &unk_1F5EBEE78;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v38, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
        }

        else
        {
          v38 = v110;
        }

        ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &__str);
        IMSCallManager::sendCallDisconnectionNotification(a1, &v37, (a3 + 5176), &__str, 0);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v37 = &unk_1F5EBEE78;
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      SipUri::~SipUri(__p);
      goto LABEL_99;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v75[0] = 0;
    v78 = 0;
    v22 = ims::error(__p, v75);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "unable to dial call: stack ", 27);
    *(v22 + 17) = 0;
    (*(*v22 + 32))(v22, a3 + 5176);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " uninitialized.", 15);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v78 == 1 && v77 < 0)
    {
      operator delete(v76);
    }

    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v73 = &unk_1F5EBEE78;
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
    }

    else
    {
      v74 = v110;
    }

    ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, __p);
    IMSCallManager::sendCallDisconnectionNotification(a1, &v73, (a3 + 5176), __p, 0);
    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v73 = &unk_1F5EBEE78;
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v74.__r_.__value_.__r.__words[0];
      goto LABEL_75;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v81[0] = 0;
    v84 = 0;
    v21 = ims::error(__p, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "unable to begin non-emergency call: invalid stack id ", 53);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a3 + 5176);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v84 == 1 && v83 < 0)
    {
      operator delete(v82);
    }

    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v79 = &unk_1F5EBEE78;
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v80, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
    }

    else
    {
      v80 = v110;
    }

    ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, __p);
    IMSCallManager::sendCallDisconnectionNotification(a1, &v79, (a3 + 5176), __p, 0);
    if (SBYTE7(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v79 = &unk_1F5EBEE78;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v80.__r_.__value_.__r.__words[0];
LABEL_75:
      operator delete(v24);
    }
  }

LABEL_99:
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  BambiCallOptions::~BambiCallOptions(v87);
  BambiCallOptions::~BambiCallOptions(v108);
  v109 = &unk_1F5EBEE78;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D21C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  a15 = &a61;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a69 < 0)
  {
    operator delete(a64);
  }

  SipUri::~SipUri(&a70);
  if (STACK[0x3F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3F8]);
  }

  BambiCallOptions::~BambiCallOptions(&STACK[0x400]);
  BambiCallOptions::~BambiCallOptions(&STACK[0x560]);
  *(v71 - 112) = v70;
  if (*(v71 - 81) < 0)
  {
    operator delete(*(v71 - 104));
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::sendCallDisconnectionNotification(uint64_t a1, uint64_t a2, void **a3, const std::string *a4, int a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v32[0] = 0;
  v35 = 0;
  v10 = ims::debug(__p, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Sending Call Status Changed notification: disconnection for callid: ", 68);
  *(v10 + 17) = 0;
  (*(*a2 + 16))(a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", reason = ", 11);
  *(v10 + 17) = 0;
  LoggableString::LoggableString(&v31, a4);
  (*(*v10 + 40))(v10, &v31);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 256;
  v26 = 0;
  v27 = 0;
  __p[1] = 0;
  v25 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (a5)
  {
    v22 = 0;
    v23 = 0;
    v20 = &unk_1F5EBEE78;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v21 = *(a2 + 8);
    }

    IMSCallManager::callInfoForUuid(a1, &v20, &v22);
    v20 = &unk_1F5EBEE78;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (v22)
    {
      v12 = *(v22 + 605);
    }

    else
    {
      v13 = std::string::basic_string[abi:ne200100]<0>(&v31, "call");
      v16[0] = 0;
      v19 = 0;
      v14 = ims::error(v13, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Unable to find call ", 20);
      *(v14 + 17) = 0;
      (*(*a2 + 16))(a2, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " -- assuming mobile originated.", 31);
      *(v14 + 17) = 0;
      v11 = (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v12 = 1;
    }

    BYTE4(v27) = 1;
    IMSCallManager::sendCallStatusRequest(v11, a3, 2, v12 & 1, 0);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  v15 = IMSClientManager::delegateForStack(a3);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v31 = *(a2 + 8);
  }

  (*(*v15 + 16))(v15, &v31, a4, __p);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(*(&v29 + 1));
  }

  if (SBYTE7(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_1E4D22398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  ims::DisconnectInfo::~DisconnectInfo(&a29);
  _Unwind_Resume(a1);
}

void IMSCallManager::initializeMOLazuliSession(IMSCallManager *this, const LazuliSendParams *a2, BOOL a3, char a4)
{
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 88, a2 + 9);
  if ((this + 96) != v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v61[0] = 0;
    v64 = 0;
    v8 = ims::debug(&__p, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session already established ", 28);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2 + 72);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v9 = v7;
  v59 = 0;
  v60 = 0;
  IPTelephonyManager::getBambiClient(&__p, v7);
  (*(*__p.__r_.__value_.__l.__data_ + 184))(&v59);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v58 = 0;
  memset(v57, 0, sizeof(v57));
  SipUri::SipUri(v57);
  IPTelephonyManager::instance(&__p, v10);
  v11 = __p.__r_.__value_.__r.__words[0];
  v55 = v59;
  v56 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OutgoingUri = IPTelephonyManager::makeOutgoingUri(v11, &v55, a2 + 2, v57);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (OutgoingUri)
  {
    if (v9 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 88, a2 + 9))
    {
      v40 = 0;
      v39 = 0;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v37 = &unk_1F5EBDEF8;
      v38 = &_bambiDomain;
      v41 = 0;
      *v32 = 0u;
      memset(__s, 0, sizeof(__s));
      *v30 = 0u;
      memset(v29, 0, sizeof(v29));
      *&v32[8] = 90;
      *&v32[16] = 16777472;
      memset(v33, 0, sizeof(v33));
      memset(v34, 0, sizeof(v34));
      v35 = 0u;
      v36 = 0;
      std::string::operator=(&v29[1], a2 + 3);
      std::string::operator=(v30, a2 + 3);
      std::string::operator=(v29, (a2 + 272));
      std::string::operator=(v33, (a2 + 248));
      std::string::operator=(&v33[1], a2 + 1);
      v32[16] = a4;
      std::string::operator=(v34, (a2 + 296));
      std::string::operator=(&v34[1], (a2 + 320));
      v13 = &v35;
      if (&v35 != (a2 + 344))
      {
        v13 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v35, *(a2 + 43), *(a2 + 44), *(a2 + 44) - *(a2 + 43));
      }

      v28[6] = 0;
      v28[5] = 0;
      IPTelephonyManager::getBambiClient(&__p, v13);
      v14 = __p.__r_.__value_.__r.__words[0];
      v28[3] = v59;
      v28[4] = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, v29[0].__r_.__value_.__l.__data_, v29[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v19 = v29[0];
      }

      if (SHIBYTE(v29[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v29[1].__r_.__value_.__l.__data_, v29[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v29[1];
      }

      if (SHIBYTE(__s[0]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, v30[0], v30[1]);
      }

      else
      {
        *&v21.__r_.__value_.__l.__data_ = *v30;
        v21.__r_.__value_.__r.__words[2] = __s[0];
      }

      if (SHIBYTE(__s[3]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, __s[1], __s[2]);
      }

      else
      {
        v22 = *&__s[1];
      }

      *v23 = *v32;
      *&v23[13] = *&v32[13];
      if (SHIBYTE(v33[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, v33[0].__r_.__value_.__l.__data_, v33[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v24 = v33[0];
      }

      if (SHIBYTE(v33[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, v33[1].__r_.__value_.__l.__data_, v33[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = v33[1];
      }

      if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v26 = v34[0];
      }

      if (SHIBYTE(v34[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, v34[1].__r_.__value_.__l.__data_, v34[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v34[1];
      }

      memset(v28, 0, 24);
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v28, v35, *(&v35 + 1), *(&v35 + 1) - v35);
      BambiClient::createNewLazuliSession(v14);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v45[0] = 0;
    v48 = 0;
    v17 = ims::debug(&__p, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "session found for ", 18);
    *(v17 + 17) = 0;
    (*(*v17 + 32))(v17, a2 + 72);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v51[0] = 0;
    v54 = 0;
    v15 = ims::error(&__p, v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "IMSCallManager: unable to determine destination URI", 51);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ImsUuid::ImsUuid(v49, a2 + 72);
    ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &__p);
    IMSCallManager::sendCallDisconnectionNotification(this, v49, a2, &__p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v49[0] = &unk_1F5EBEE78;
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    v16 = v49[1];
  }

  operator delete(v16);
LABEL_61:
  SipUri::~SipUri(v57);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }
}

void sub_1E4D22F34(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x518]) == 1)
  {
    LazuliSendParams::~LazuliSendParams(&STACK[0x390]);
  }

  if (STACK[0x688])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x688]);
  }

  LazuliSessionOptions::~LazuliSessionOptions(&STACK[0x690]);
  ImsResult::~ImsResult(&STACK[0x788]);
  SipUri::~SipUri(&STACK[0x880]);
  v3 = *(v1 - 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,LazuliInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 456) == 1)
  {
    LazuliSendParams::~LazuliSendParams((a1 + 64));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void LazuliInfo::~LazuliInfo(void **this)
{
  if (*(this + 432) == 1)
  {
    LazuliSendParams::~LazuliSendParams(this + 5);
  }

  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void IMSCallManager::leaveGroupChat(uint64_t **this, const LazuliSendParams *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lazuli");
  v43[0] = 0;
  v46 = 0;
  v4 = ims::debug(__p, v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Leaving Group Chat ", 19);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " with trx ", 10);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 24);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (SBYTE7(v21[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((this + 11), a2 + 9);
  if (this + 12 != v5)
  {
    v7 = *(v5 + 80);
    v6 = *(v5 + 88);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&v38, 0, sizeof(v38));
    if (*(v5 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *(v5 + 56), *(v5 + 64));
    }

    else
    {
      v38 = *(v5 + 56);
    }

    LazuliSession::leaveGroup(v7, a2);
    v36 = 0;
    v37 = 0;
    IPTelephonyManager::getBambiClient(__p);
    (*(*__p[0] + 184))(&v36);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    v10 = *(v36 + 248);
    v9 = *(v36 + 256);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(v10 + 296);
    v11 = *(v10 + 304);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "UserTriggered");
      v30[0] = 0;
      v31 = 0;
      SipLazuliManager::terminateMessageSession(v12, a2 + 72, __p, v30, 0);
      if (v31 == 1)
      {
        ImsResult::~ImsResult(v30);
      }

      if (SBYTE7(v21[0]) < 0)
      {
        operator delete(__p[0]);
      }

      std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__erase_unique<std::string>(this + 11, a2 + 9);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 1));
      }

      else
      {
        v15 = *a2;
      }

      v16 = v7;
      v17 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOBYTE(v18) = 0;
      v19 = 0;
      std::pair<std::string,LazuliInfo>::pair[abi:ne200100]<std::string const&,LazuliInfo,0>(__p, (a2 + 72), &v15);
      std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string,LazuliInfo>>((this + 17), __p);
      if (v29 == 1)
      {
        LazuliSendParams::~LazuliSendParams(v23);
      }

      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }

      if (SHIBYTE(v21[1]) < 0)
      {
        operator delete(*(&v21[0] + 1));
      }

      if (SBYTE7(v21[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 == 1)
      {
        LazuliSendParams::~LazuliSendParams(&v18);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v14 = v15.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "lazuli");
      v32[0] = 0;
      v35 = 0;
      v13 = ims::error(__p, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Lazuli manager is null ", 23);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v35 == 1 && v34 < 0)
      {
        operator delete(v33);
      }

      if ((SBYTE7(v21[0]) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v14 = __p[0];
    }

    operator delete(v14);
LABEL_57:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuli");
  v39[0] = 0;
  v42 = 0;
  v8 = ims::debug(__p, v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "triggering session creation for ", 32);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2 + 72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " with trx ", 10);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2 + 24);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (SBYTE7(v21[0]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(v28, 0, 72);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  *__p = 0u;
  memset(v21, 0, sizeof(v21));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    *&v21[0] = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 8), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    *(v21 + 8) = *(a2 + 24);
    *(&v21[1] + 1) = *(a2 + 5);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v22 = *(a2 + 3);
    *&v23[0] = *(a2 + 8);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((v23 + 8), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    *(v23 + 8) = *(a2 + 72);
    *(&v23[1] + 1) = *(a2 + 11);
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(v24, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    *v24 = *(a2 + 6);
    *&v24[16] = *(a2 + 14);
  }

  memset(&v24[24], 0, 128);
  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external(&v24[152], *(a2 + 31), *(a2 + 32));
  }

  else
  {
    *&v24[152] = *(a2 + 248);
    *&v24[168] = *(a2 + 33);
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v25 = *(a2 + 17);
    *&v26 = *(a2 + 36);
  }

  v27 = 0uLL;
  *(&v26 + 1) = 0;
  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external(v28, *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v28[0] = *(a2 + 320);
  }

  memset(&v28[1], 0, 48);
  IMSCallManager::initializeMOLazuliSession(this, __p, 1, 0);
  LazuliSendParams::~LazuliSendParams(__p);
}

void sub_1E4D23A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  a9 = v73 + 192;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  v75 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v75;
    operator delete(v75);
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

uint64_t *IMSCallManager::handleLeaveGroupChat(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 136, a2);
  if ((a1 + 144) != result)
  {

    return std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::erase((a1 + 136), result);
  }

  return result;
}

void IMSCallManager::handleMOSessionConnected(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 11), a2);
  if (a1 + 12 != v3)
  {
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    std::__optional_copy_base<LazuliSendParams,false>::__optional_copy_base[abi:ne200100](v11, (v3 + 96));
    if (BYTE8(v12) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v9, "lazuli");
      v5[0] = 0;
      v8 = 0;
      v4 = ims::debug(v9, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Found pending Group Chat leave for new session", 46);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v8 == 1 && v7 < 0)
      {
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      IMSCallManager::leaveGroupChat(a1, v11);
      if (BYTE8(v12))
      {
        LazuliSendParams::~LazuliSendParams(&v11[0].__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1E4D23E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68 == 1)
  {
    LazuliSendParams::~LazuliSendParams(&a19);
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::trackMTLazuliSession(uint64_t a1, void **a2, void *a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 88, a2);
  if (a1 + 96 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v35[0] = 0;
    v38 = 0;
    v14 = ims::debug(&__p, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Tracking lazuli session ", 24);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, a2);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = *a3;
    v16 = *(*a3 + 376);
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = *(v15 + 368);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (*(v18 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(v18 + 4432), *(v18 + 4440));
    }

    else
    {
      v24 = *(v18 + 4432);
    }

    v23 = a3[1];
    v25 = *a3;
    v26 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOBYTE(v27) = 0;
    v28 = 0;
    std::pair<std::string,LazuliInfo>::pair[abi:ne200100]<std::string const&,LazuliInfo,0>(&__p, a2, &v24);
    std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string,LazuliInfo>>(a1 + 88, &__p.__r_.__value_.__l.__data_);
    if (v34 == 1)
    {
      LazuliSendParams::~LazuliSendParams(&v33);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v28 == 1)
    {
      LazuliSendParams::~LazuliSendParams(&v27);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v17)
    {
      size = v17;
      goto LABEL_72;
    }
  }

  else
  {
    v7 = v6;
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v49[0] = 0;
    v52 = 0;
    v8 = ims::debug(&__p, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "session already established ", 28);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " old ", 5);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), *(v7 + 80));
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " vs ", 4);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), *a3);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v52 == 1 && v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(v7 + 80) != *a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
      v45[0] = 0;
      v48 = 0;
      v9 = ims::debug(&__p, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Replacing LazuliSession for conv ", 33);
      *(v9 + 17) = 0;
      (*(*v9 + 32))(v9, a2);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v48 == 1 && v47 < 0)
      {
        operator delete(v46);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&v24.__r_.__value_.__l.__data_ = 0uLL;
      IPTelephonyManager::getBambiClient(&__p);
      (*(*__p.__r_.__value_.__l.__data_ + 184))(&v24);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      if (!v24.__r_.__value_.__r.__words[0])
      {
        goto LABEL_42;
      }

      v11 = *(v24.__r_.__value_.__r.__words[0] + 248);
      v10 = *(v24.__r_.__value_.__r.__words[0] + 256);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v11 + 296);
      v12 = *(v11 + 304);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v13)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "TerminateChat");
        v39[0] = 0;
        v40 = 0;
        SipLazuliManager::terminateMessageSession(v13, a2, &__p, v39, 0);
        if (v40 == 1)
        {
          ImsResult::~ImsResult(v39);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
        v41[0] = 0;
        v44 = 0;
        v19 = ims::error(&__p, v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Lazuli manager is null ", 23);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (v44 == 1 && v43 < 0)
        {
          operator delete(v42);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (!v13)
      {
        size = v24.__r_.__value_.__l.__size_;
        if (!v24.__r_.__value_.__l.__size_)
        {
          return;
        }
      }

      else
      {
LABEL_42:
        if (v24.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24.__r_.__value_.__l.__size_);
        }

        LazuliSession::detachSipSession(*(v7 + 80));
        v21 = *a3;
        v20 = a3[1];
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        size = *(v7 + 88);
        *(v7 + 80) = v21;
        *(v7 + 88) = v20;
        if (!size)
        {
          return;
        }
      }

LABEL_72:
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
    }
  }
}

void sub_1E4D24508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
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

void IMSCallManager::trackMTOnlyLazuliSession(uint64_t a1, void **a2, void *a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 112, a2);
  if (a1 + 120 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v26[0] = 0;
    v29 = 0;
    v9 = ims::debug(&__p, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Tracking MT-only lazuli session ", 32);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a2);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = *a3;
    v11 = *(*a3 + 376);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(v10 + 368);
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

    if (*(v13 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(v13 + 4432), *(v13 + 4440));
    }

    else
    {
      v15 = *(v13 + 4432);
    }

    v14 = a3[1];
    v16 = *a3;
    v17 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOBYTE(v18) = 0;
    v19 = 0;
    std::pair<std::string,LazuliInfo>::pair[abi:ne200100]<std::string const&,LazuliInfo,0>(&__p, a2, &v15);
    std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string,LazuliInfo>>(a1 + 112, &__p.__r_.__value_.__l.__data_);
    if (v25 == 1)
    {
      LazuliSendParams::~LazuliSendParams(&v24);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v19 == 1)
    {
      LazuliSendParams::~LazuliSendParams(&v18);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v7 = v6;
    std::string::basic_string[abi:ne200100]<0>(&__p, "lazuli");
    v30[0] = 0;
    v33 = 0;
    v8 = ims::debug(&__p, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "MT-only session already established ", 36);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " old ", 5);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), *(v7 + 80));
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " vs ", 4);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), *a3);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4D249B4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::terminateLazuli(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    (*(*(a1 + 16) + 16))(__p);
    if (v63 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    v12 = "Normal";
    if (a5)
    {
      v12 = "MT-only";
    }

    v13 = *(a2 + 23);
    v14 = *a2;
    *buf = 141558787;
    if (v13 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = v14;
    }

    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v11;
    v68 = 2080;
    v69 = v12;
    v70 = 2080;
    v71 = v15;
    _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sTerminating %s lazuli session %s", buf, 0x2Au);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(*__p);
    }
  }

  memset(&v55, 0, sizeof(v55));
  v16 = *(a1 + 32);
  if (!v16 || (v17 = *(a1 + 24), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  v20 = 88;
  if (a5)
  {
    v20 = 112;
  }

  v21 = (a1 + v20);
  v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + v20, a2);
  if (v21 + 1 == v22)
  {
    v30 = *(v17 + 56);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      (*(*(v17 + 16) + 16))(v58, v17 + 16);
      if (v61 >= 0)
      {
        v31 = v58;
      }

      else
      {
        v31 = *v58;
      }

      v32 = "Normal";
      if (a5)
      {
        v32 = "MT-Only";
      }

      if (*(a2 + 23) >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      *__p = 141558787;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v31;
      v63 = 2080;
      v64 = v32;
      v65 = 2080;
      v66 = v33;
      _os_log_error_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}ssession not found. unable to terminate %s conv %s", __p, 0x2Au);
      if (v61 < 0)
      {
        operator delete(*v58);
      }
    }
  }

  else
  {
    v24 = *(v22 + 80);
    v23 = *(v22 + 88);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=(&v55, (v22 + 56));
    v25 = LazuliSession::endSession(v24, a3);
    v56 = 0;
    v57 = 0;
    IPTelephonyManager::getBambiClient(__p, v25);
    (*(**__p + 184))(&v56);
    if (*&__p[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
    }

    v49 = a4;
    v27 = *(v56 + 248);
    v26 = *(v56 + 256);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v27 + 296);
    v28 = *(v27 + 304);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v29)
    {
      buf[0] = 0;
      v72 = 0;
      SipLazuliManager::terminateMessageSession(v29, a2, a3, buf, a5);
      if (v72 == 1)
      {
        ImsResult::~ImsResult(buf);
      }

      std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__erase_unique<std::string>(v21, a2);
    }

    else
    {
      v34 = *(v17 + 56);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        (*(*(v17 + 16) + 16))(__p, v17 + 16);
        v48 = v63 >= 0 ? __p : *__p;
        *v58 = 141558275;
        *&v58[4] = 1752392040;
        v59 = 2081;
        v60 = v48;
        _os_log_error_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLazuli manager is null", v58, 0x16u);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(*__p);
        }
      }
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v29)
    {
      v35 = std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__count_unique<std::string>(*(a1 + 96), a2);
      if (!(v35 + std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__count_unique<std::string>(*(a1 + 120), a2)))
      {
        v36 = MEMORY[0x1E6924740](*v49);
        v37 = MEMORY[0x1E69E9E80];
        if (v36 != MEMORY[0x1E69E9E80])
        {
          v38 = xpc_dictionary_create(0, 0, 0);
          if (v38 || (v38 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x1E6924740](v38) == v37)
            {
              xpc_retain(v38);
              v39 = v38;
            }

            else
            {
              v39 = xpc_null_create();
            }
          }

          else
          {
            v39 = xpc_null_create();
            v38 = 0;
          }

          xpc_release(v38);
          v40 = xpc_null_create();
          v41 = *v49;
          *v49 = v39;
          xpc_release(v41);
          xpc_release(v40);
        }

        if (!xpc_dictionary_get_value(*v49, "kConversationId"))
        {
          if (*(a2 + 23) >= 0)
          {
            v42 = a2;
          }

          else
          {
            v42 = *a2;
          }

          v53 = xpc_string_create(v42);
          if (!v53)
          {
            v53 = xpc_null_create();
          }

          *buf = v49;
          *&buf[8] = "kConversationId";
          xpc::dict::object_proxy::operator=(buf, &v53, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v53);
          v53 = 0;
        }

        if (!xpc_dictionary_get_value(*v49, "kReason"))
        {
          if (*(a3 + 23) >= 0)
          {
            v43 = a3;
          }

          else
          {
            v43 = *a3;
          }

          v51 = xpc_string_create(v43);
          if (!v51)
          {
            v51 = xpc_null_create();
          }

          *buf = v49;
          *&buf[8] = "kReason";
          xpc::dict::object_proxy::operator=(buf, &v51, &v52);
          xpc_release(v52);
          v52 = 0;
          xpc_release(v51);
          v51 = 0;
        }

        size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v55.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          *buf = 0;
          *&buf[8] = 0;
          IMSClientManager::lazuliDelegateForStack(&v55.__r_.__value_.__l.__data_, buf);
          v45 = *buf;
          if (*buf)
          {
            v46 = *v49;
            v50 = v46;
            if (v46)
            {
              xpc_retain(v46);
            }

            else
            {
              v50 = xpc_null_create();
            }

            LazuliDelegate::handleSessionTerminated(v45, &v50);
            xpc_release(v50);
            v50 = 0;
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }
        }
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1E4D250DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::terminateAllLazuliSessions(IMSCallManager **this)
{
  v30 = &v30;
  v31 = &v30;
  v32 = 0;
  v2 = (this + 11);
  v3 = (this + 12);
  if (this[11] != (this + 12))
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  v4 = this[14];
  v5 = this + 15;
  if (v4 != (this + 15))
  {
    do
    {
      if (v3 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v2, v4 + 4))
      {
        std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
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

  v9 = std::string::basic_string[abi:ne200100]<0>(v28, "lazuli");
  v24[0] = 0;
  v27 = 0;
  v10 = ims::debug(v9, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Terminating ", 12);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923370](*(v10 + 8), v32);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " chats", 6);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  for (i = v31; i != &v30; i = i[1])
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "TerminateChat");
    object = xpc_null_create();
    IMSCallManager::terminateLazuli(this, (i + 2), v28, &object, 0);
    xpc_release(object);
    object = 0;
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }
  }

  v12 = this[19];
  if (v12)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v28, "lazuli");
    v19[0] = 0;
    v22 = 0;
    v14 = ims::debug(v13, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Forcefully detaching sip session for ", 37);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923370](*(v14 + 8), v12);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " chats", 6);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v15 = this[17];
    v16 = (this + 18);
    if (v15 != v16)
    {
      do
      {
        LazuliSession::forceDetachSipSession(*(v15 + 10));
        v17 = *(v15 + 1);
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
            v18 = *(v15 + 2);
            v8 = *v18 == v15;
            v15 = v18;
          }

          while (!v8);
        }

        v15 = v18;
      }

      while (v18 != v16);
    }
  }

  std::__list_imp<std::string>::clear(&v30);
}

void IMSCallManager::initializePullCall(uint64_t a1, uint64_t a2)
{
  memset(&v57, 0, sizeof(v57));
  v56 = &unk_1F5EBEE78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v57 = *(a2 + 16);
  }

  v55 = 0;
  memset(v54, 0, sizeof(v54));
  SipUri::SipUri(v54);
  v53 = 0;
  v52 = 0;
  IPTelephonyManager::getBambiClient(v13);
  (*(*v13[0] + 184))(&v52);
  if (v13[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13[1]);
  }

  if (v52)
  {
    v4 = *(a2 + 175);
    if (v4 < 0)
    {
      if (*(a2 + 160))
      {
        goto LABEL_19;
      }
    }

    else if (*(a2 + 175))
    {
      goto LABEL_19;
    }

    SipStack::activeThumperPullCallId(v52, v13);
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 152) = *v13;
    *(a2 + 168) = v14;
    LOBYTE(v4) = *(a2 + 175);
LABEL_19:
    memset(&v47, 0, sizeof(v47));
    if ((v4 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v47, *(a2 + 152), *(a2 + 160));
    }

    else
    {
      v47 = *(a2 + 152);
    }

    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      IPTelephonyManager::instance(v13);
      OutgoingUriForPull = IPTelephonyManager::makeOutgoingUriForPull(v13[0], a2 + 5176, &v47, v54);
      if (v13[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13[1]);
      }

      if (OutgoingUriForPull)
      {
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
        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        BambiCallOptions::BambiCallOptions(v13, (a2 + 40));
        v9 = SipStack::prefs(v52);
        BambiCallOptions::initializeFromPrefs(v13, v9);
        std::allocate_shared[abi:ne200100]<IMSCallInfo,std::allocator<IMSCallInfo>,ImsUuid &,std::string &,decltype(nullptr),0>();
      }

      std::string::basic_string[abi:ne200100]<0>(v13, "call");
      v37[0] = 0;
      v40 = 0;
      v11 = ims::error(v13, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "IMSCallManager: unable to determine destination URI", 51);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (SBYTE7(v14) < 0)
      {
        operator delete(v13[0]);
      }

      v35 = &unk_1F5EBEE78;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v57;
      }

      (*(*a1 + 216))(a1, &v35, @"kCallStatusPulling", 255, 0);
      v35 = &unk_1F5EBEE78;
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v12 = v36.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v13, "call");
      v43[0] = 0;
      v46 = 0;
      v10 = ims::error(v13, v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Unable to initiate pull call without pull-call-id", 49);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (SBYTE7(v14) < 0)
      {
        operator delete(v13[0]);
      }

      v41 = &unk_1F5EBEE78;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
      }

      else
      {
        v42 = v57;
      }

      (*(*a1 + 216))(a1, &v41, @"kCallStatusPulling", 255, 0);
      v41 = &unk_1F5EBEE78;
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v12 = v42.__r_.__value_.__r.__words[0];
    }

    operator delete(v12);
LABEL_50:
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v6 = v47.__r_.__value_.__r.__words[0];
    goto LABEL_52;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "call");
  v48[0] = 0;
  v51 = 0;
  v5 = ims::error(v13, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Unable to initiate pull call for invalid stack ", 47);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2 + 5176);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v14) < 0)
  {
    v6 = v13[0];
LABEL_52:
    operator delete(v6);
  }

LABEL_53:
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  SipUri::~SipUri(v54);
  v56 = &unk_1F5EBEE78;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D25DB0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (STACK[0x2A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2A8]);
  }

  SipUri::~SipUri(&STACK[0x2B0]);
  *(v2 - 96) = v1;
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::checkSubscribersForIface(uint64_t a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  ImsPrefsManager::subscribers(a1, &v37);
  std::string::basic_string[abi:ne200100]<0>(&v36, "call");
  v32[0] = 0;
  v35 = 0;
  v6 = ims::debug(&v36, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "found ", 6);
  *(v6 + 17) = 0;
  if (v39)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    ImsStringOutStream::ImsStringOutStream(&v40);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "NO");
  (*(*v6 + 32))(v6, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " subscriber(s) for ", 19);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a1);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v40 = 0uLL;
  *&v41 = 0;
  IPTelephonyManager::getBambiClient(&v36);
  BambiClient::sipStacks(v36.__r_.__value_.__l.__data_, &v40);
  v26 = a3;
  if (v36.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36.__r_.__value_.__l.__size_);
  }

  v8 = *(&v40 + 1);
  v7 = v40;
  if (v40 == *(&v40 + 1))
  {
LABEL_45:
    std::string::basic_string[abi:ne200100]<0>(v26, "");
    goto LABEL_46;
  }

  while (1)
  {
    v9 = *v7;
    if (*(*v7 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(v9 + 554), *(v9 + 555));
    }

    else
    {
      v36 = *(v9 + 4432);
    }

    v10 = std::__tree<std::string>::__count_unique<std::string>(&v37, &v36.__r_.__value_.__l.__data_);
    v11 = v10;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    else if (!v10)
    {
      goto LABEL_44;
    }

    SipStack::carrierIdentifier(*v7, &v36);
    v12 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    v14 = *(a1 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 8);
    }

    if (size != v14)
    {
      v18 = 0;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      goto LABEL_33;
    }

    v16 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v36 : v36.__r_.__value_.__r.__words[0];
    v17 = v15 >= 0 ? a1 : *a1;
    v18 = memcmp(v16, v17, size) == 0;
    if (v12 < 0)
    {
      break;
    }

LABEL_33:
    if (v18)
    {
      goto LABEL_37;
    }

LABEL_44:
    v7 += 2;
    if (v7 == v8)
    {
      goto LABEL_45;
    }
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if (!v18)
  {
    goto LABEL_44;
  }

LABEL_37:
  if (*(*v7 + 1751) >= 0)
  {
    v19 = *v7 + 1728;
  }

  else
  {
    v19 = *(*v7 + 216);
  }

  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (strcasecmp(v19, v20))
  {
    goto LABEL_44;
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "call");
  v27[0] = 0;
  v30 = 0;
  v21 = ims::debug(&v36, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "interface ", 10);
  *(v21 + 17) = 0;
  (*(*v21 + 32))(v21, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " used by existing stack ", 24);
  *(v21 + 17) = 0;
  v22 = *v7;
  if (*(*v7 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v22 + 554), *(v22 + 555));
  }

  else
  {
    __p = *(v22 + 4432);
  }

  (*(*v21 + 32))(v21, &__p);
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v23 = *v7;
  if (*(*v7 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(v26, *(v23 + 554), *(v23 + 555));
  }

  else
  {
    v24 = v23 + 4432;
    v25 = *v24;
    v26->__r_.__value_.__r.__words[2] = *(v24 + 2);
    *&v26->__r_.__value_.__l.__data_ = v25;
  }

LABEL_46:
  v36.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v36);
  std::__tree<std::string>::destroy(&v37, v38);
}

void sub_1E4D264C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, char *a43)
{
  a36 = (v43 - 144);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a36);
  std::__tree<std::string>::destroy(&a42, a43);
  _Unwind_Resume(a1);
}

void IMSCallManager::companionStack(void **a1@<X1>, void *a2@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  ImsPrefsManager::subscribers(a1, &v20);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  IPTelephonyManager::getBambiClient(&v16);
  BambiClient::sipStacks(v16.__r_.__value_.__l.__data_, &v17);
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  v3 = v17;
  v4 = v18;
  if (v17 == v18)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_14;
  }

  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(v5 + 4432), *(v5 + 4440));
    }

    else
    {
      v16 = *(v5 + 4432);
    }

    v6 = std::__tree<std::string>::__count_unique<std::string>(&v20, &v16.__r_.__value_.__l.__data_);
    v7 = v6;
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      break;
    }

    operator delete(v16.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v3 += 2;
    if (v3 == v4)
    {
      goto LABEL_13;
    }
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(*v3 + 296))
  {
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, "call");
  v12[0] = 0;
  v15 = 0;
  v8 = ims::debug(&v16, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "using companion stack ", 22);
  *(v8 + 17) = 0;
  v9 = *v3;
  if (*(*v3 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
  }

  else
  {
    __p = *(v9 + 4432);
  }

  (*(*v8 + 32))(v8, &__p);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v10 = v3[1];
  *a2 = *v3;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_14:
  v16.__r_.__value_.__r.__words[0] = &v17;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v16);
  std::__tree<std::string>::destroy(&v20, v21);
}

void sub_1E4D26880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a25 = (v30 - 96);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::__tree<std::string>::destroy(v30 - 72, *(v30 - 64));
  _Unwind_Resume(a1);
}

void IMSCallManager::initializeEmergencyCall()
{
  MEMORY[0x1EEE9AC00]();
  v1 = v0;
  memset(&v5, 0, sizeof(v5));
  v4 = &unk_1F5EBEE78;
  if (*(v0 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(v0 + 16), *(v0 + 24));
  }

  else
  {
    v5 = *(v0 + 16);
  }

  memset(v3, 0, sizeof(v3));
  BambiCallOptions::BambiCallOptions(v3, (v1 + 40));
  bzero(&v2, 0x12B0uLL);
  BambiEmergencyCallOptions::BambiEmergencyCallOptions(&v2, (v1 + 392));
}

void sub_1E4D28EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  SipUri::~SipUri(&STACK[0x510]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (STACK[0x4A0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  SipUri::~SipUri(&STACK[0x970]);
  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (STACK[0xB38])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB38]);
  }

  BambiEmergencyCallOptions::~BambiEmergencyCallOptions(&STACK[0xB40]);
  BambiCallOptions::~BambiCallOptions(&STACK[0x1DF0]);
  *(v11 - 128) = a10;
  if (*(v10 + 31) < 0)
  {
    operator delete(*(v11 - 120));
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::endLegacyCall(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v33, "call");
  v29[0] = 0;
  v32 = 0;
  v7 = ims::debug(v6, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Doing HANG UP to call Id = ", 27);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  memset(&v33, 0, sizeof(v33));
  std::string::basic_string[abi:ne200100]<0>(&v33, "UserTriggered");
  v8 = *a3;
  if (*a3 > 3)
  {
    switch(v8)
    {
      case 4:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 16;
          v12 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 16;
          v12 = &v33;
        }

        *&v12->__r_.__value_.__l.__data_ = *"DeferToSecondary";
        v15 = &v12->__r_.__value_.__s.__data_[16];
        break;
      case 5:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 14;
          v14 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 14;
          v14 = &v33;
        }

        qmemcpy(v14, "AvoidVoicemail", 14);
        v15 = &v14->__r_.__value_.__s.__data_[14];
        break;
      case 6:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 7;
          v10 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 7;
          v10 = &v33;
        }

        qmemcpy(v10, "Blocked", 7);
        v15 = &v10->__r_.__value_.__s.__data_[7];
        break;
      default:
        goto LABEL_38;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 12;
          v11 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 12;
          v11 = &v33;
        }

        qmemcpy(v11, "DoNotDisturb", 12);
        v15 = &v11->__r_.__value_.__s.__data_[12];
        break;
      case 2:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 19;
          v13 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 19;
          v13 = &v33;
        }

        qmemcpy(v13, "CallWaitingDisabled", 19);
        v15 = &v13->__r_.__value_.__s.__data_[19];
        break;
      case 3:
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v33.__r_.__value_.__l.__size_ = 5;
          v9 = v33.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v33.__r_.__value_.__s + 23) = 5;
          v9 = &v33;
        }

        qmemcpy(v9, "SRVCC", 5);
        v15 = &v9->__r_.__value_.__s.__data_[5];
        break;
      default:
        goto LABEL_38;
    }
  }

  *v15 = 0;
LABEL_38:
  v16 = *(a1 + 64);
  if (*(a1 + 72) == v16)
  {
LABEL_47:
    std::string::basic_string[abi:ne200100]<0>(v27, "call");
    v23[0] = 0;
    v26 = 0;
    v22 = ims::error(v27, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Unable to HANG UP call Id = ", 28);
    *(v22 + 17) = 0;
    MEMORY[0x1E6923340](*(v22 + 8), a2);
    *(v22 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ".  No call found.", 17);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = (v16 + v17);
      v20 = *v19;
      v21 = v19[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v20 && *(v20 + 72) == a2)
      {
        break;
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      ++v18;
      v16 = *(a1 + 64);
      v17 += 16;
      if (v18 >= (*(a1 + 72) - v16) >> 4)
      {
        goto LABEL_47;
      }
    }

    IMSCallInfo::endCall(v20, &v33);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D29BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::endCall(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v31, "call");
  v27[0] = 0;
  v30 = 0;
  v7 = ims::debug(v6, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Doing HANG UP to call UUID = ", 29);
  *(v7 + 17) = 0;
  (*(*a2 + 16))(a2, v7);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v25 = 0;
  v26 = 0;
  v23 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v23, &v25);
  v23 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = v25;
  if (v25)
  {
    if (*(v25 + 152) != 1)
    {
      goto LABEL_18;
    }

    IMSCallInfo::stack(v25, &v31);
    v9 = v31.__r_.__value_.__r.__words[0];
    if (v31.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31.__r_.__value_.__l.__size_);
    }

    if (v9)
    {
      IMSCallInfo::uuid(v21, v8);
      IMSCallInfo::stack(v8, &v19);
      if (*(v19 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v19 + 4432), *(v19 + 4440));
      }

      else
      {
        v31 = *(v19 + 4432);
      }

      ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v18);
      IMSCallManager::sendCallDisconnectionNotification(a1, v21, &v31.__r_.__value_.__l.__data_, &v18, 1);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      v21[0] = &unk_1F5EBEE78;
      if (v22 < 0)
      {
        operator delete(v21[1]);
      }

      v16 = v8;
      v17 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 224))(a1, &v16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    else
    {
LABEL_18:
      IMSCallInfo::endCall(v8, a3);
    }
  }

  else
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&v31, "call");
    v12[0] = 0;
    v15 = 0;
    v11 = ims::error(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "endCall: unknown callId ", 24);
    *(v11 + 17) = 0;
    (*(*a2 + 16))(a2, v11);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1E4D2A038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  v45 = *(v43 - 144);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::callInfoForUuid(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 72) == *(a1 + 64))
  {
LABEL_15:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "call");
      v16[0] = 0;
      v19 = 0;
      v7 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Checking call ", 14);
      *(v7 + 17) = 0;
      MEMORY[0x1E6923370](*(v7 + 8), v6);
      *(v7 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " (", 2);
      *(v7 + 17) = 0;
      IMSCallInfo::uuid(&v13, *(*(a1 + 64) + v5));
      v13[2](&v13, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ")", 1);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      v13 = &unk_1F5EBEE78;
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v8 = *(a1 + 64);
      v9 = *(v8 + v5);
      if (v9)
      {
        IMSCallInfo::uuid(&v13, v9);
        v10 = ImsUuid::operator==(&v13, a2);
        v13 = &unk_1F5EBEE78;
        if (v15 < 0)
        {
          operator delete(__p);
        }

        v8 = *(a1 + 64);
        if (v10)
        {
          break;
        }
      }

      ++v6;
      v5 += 16;
      if (v6 >= (*(a1 + 72) - v8) >> 4)
      {
        goto LABEL_15;
      }
    }

    v11 = *(v8 + v5);
    *a3 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_1E4D2A3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::ringCall(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v20, "call");
  v16[0] = 0;
  v19 = 0;
  v5 = ims::debug(v4, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Doing RING to call Id = ", 24);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v14 = 0;
  v15 = 0;
  v12 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v13 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v12, &v14);
  v12 = &unk_1F5EBEE78;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    IMSCallInfo::ringCall(v14);
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v20, "call");
    v8[0] = 0;
    v11 = 0;
    v7 = ims::error(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ringCall: unknown callId ", 25);
    *(v7 + 17) = 0;
    (*(*a2 + 16))(a2, v7);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E4D2A6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::answerCall(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v22, "call");
  v18[0] = 0;
  v21 = 0;
  v7 = ims::debug(v6, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Doing ANSWER to call Id = ", 26);
  *(v7 + 17) = 0;
  (*(*a2 + 16))(a2, v7);
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

  v16 = 0;
  v17 = 0;
  v14 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v15 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v14, &v16);
  v14 = &unk_1F5EBEE78;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    IMSCallInfo::answerCall(v16, a3);
  }

  else
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v22, "call");
    v10[0] = 0;
    v13 = 0;
    v9 = ims::error(v8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "answerCall: unknown callId ", 27);
    *(v9 + 17) = 0;
    (*(*a2 + 16))(a2, v9);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1E4D2A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

BOOL IMSCallManager::activateCall(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v14, "call");
  v10[0] = 0;
  v13 = 0;
  v5 = ims::debug(v4, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Doing ACTIVATE to call Id = ", 28);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v14);
  }

  v14 = 0;
  v15 = 0;
  v8 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v8, &v14);
  v8 = &unk_1F5EBEE78;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v6 = v14;
  if (v14)
  {
    IMSCallInfo::setActive(v14, 1);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v6 != 0;
}

void sub_1E4D2ABE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  v27 = *(v25 - 48);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::deactivateCall(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v17, "call");
  v13[0] = 0;
  v16 = 0;
  v5 = ims::debug(v4, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Doing DEACTIVATE to call Id = ", 30);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v17);
  }

  v17 = 0;
  v18 = 0;
  v11 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v12 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v11, &v17);
  v11 = &unk_1F5EBEE78;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v6 = v17;
  if (v17)
  {
    IMSCallInfo::setActive(v17, 0);
    v8 = *(v6 + 20);
    v7 = *(v6 + 21);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v8)
      {
        v10 = *(v6 + 20);
        v9 = *(v6 + 21);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          *(v10 + 1842) = 1;
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        else
        {
          *(v10 + 1842) = 1;
        }
      }
    }

    else if (v8)
    {
      *(v8 + 1842) = 1;
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E4D2AE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  v27 = *(v25 - 48);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::playDtmf(IMSCallInfo *this, RTPManager *a2)
{
  v4 = *(this + 20);
  if (v4 && *(this + 604) == 1)
  {
    v5 = *(v4 + 392);

    RTPManager::startSendingDTMF(v5, a2);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    IPTelephonyManager::getCallManager(this, &v6);
    (*(*v6 + 200))(&v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(this + 73) && v8)
    {
      RTPManager::startSendingDTMF(*(v8 + 392), a2);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D2AF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::playDtmf(uint64_t a1, unsigned __int8 **a2)
{
  v4 = *(a1 + 160);
  if (v4 && *(a1 + 604) == 1)
  {
    v5 = *(v4 + 392);

    RTPManager::sendDTMFDigits(v5, a2);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    IPTelephonyManager::getCallManager(a1, &v6);
    (*(*v6 + 200))(&v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(a1 + 584) && v8)
    {
      RTPManager::sendDTMFDigits(*(v8 + 392), a2);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D2B068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::stopDtmf(IMSCallInfo *this)
{
  v2 = *(this + 20);
  if (v2 && *(this + 604) == 1)
  {
    v3 = *(v2 + 392);

    RTPManager::stopSendingDTMF(v3);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    IPTelephonyManager::getCallManager(this, &v4);
    (*(*v4 + 200))(&v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (*(this + 73) && v6)
    {
      RTPManager::stopSendingDTMF(*(v6 + 392));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1E4D2B158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::setRelayMode(IMSCallInfo *this, uint64_t a2)
{
  v4 = *(this + 20);
  if (v4)
  {

    BambiCall::setRelayMode(v4, a2);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    IPTelephonyManager::getCallManager(0, &v5);
    (*(*v5 + 200))(&v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(this + 73) && v7)
    {
      BambiCall::setRelayMode(v7, a2);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4D2B240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::setScreeningMode(IMSCallInfo *this, uint64_t a2)
{
  v4 = *(this + 20);
  if (v4)
  {

    BambiCall::setScreeningMode(v4, a2);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    IPTelephonyManager::getCallManager(0, &v5);
    (*(*v5 + 200))(&v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(this + 73) && v7)
    {
      BambiCall::setScreeningMode(v7, a2);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4D2B328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::setTextMediaSessionMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {

    BambiCall::setTextMediaSessionMode(v4, a2);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    IPTelephonyManager::getCallManager(0, &v5);
    (*(*v5 + 200))(&v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(a1 + 584) && v7)
    {
      BambiCall::setTextMediaSessionMode(v7, a2);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4D2B410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::playDtmf(uint64_t a1, uint64_t a2, RTPManager *a3)
{
  v5 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v7 = 0;
  v8 = 0;
  IMSCallManager::callInfoForUuid(a1, &v5, &v7);
  v5 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    IMSCallInfo::playDtmf(v7, a3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D2B500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::playDtmf(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v5 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v7 = 0;
  v8 = 0;
  IMSCallManager::callInfoForUuid(a1, &v5, &v7);
  v5 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    IMSCallInfo::playDtmf(v7, a3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D2B5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::stopDtmf(uint64_t a1, uint64_t a2)
{
  v3 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v5 = 0;
  v6 = 0;
  IMSCallManager::callInfoForUuid(a1, &v3, &v5);
  v3 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    IMSCallInfo::stopDtmf(v5);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D2B6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::setRelayMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v7 = 0;
  v8 = 0;
  IMSCallManager::callInfoForUuid(a1, &v5, &v7);
  v5 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    IMSCallInfo::setRelayMode(v7, a3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D2B7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::setScreeningMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v7 = 0;
  v8 = 0;
  IMSCallManager::callInfoForUuid(a1, &v5, &v7);
  v5 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    IMSCallInfo::setScreeningMode(v7, a3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D2B8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::setTextMediaSessionMode(uint64_t a1, uint64_t a2, int a3)
{
  v13 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v15 = 0;
  v16 = 0;
  IMSCallManager::callInfoForUuid(a1, &v13, &v15);
  v13 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    IMSCallInfo::setTextMediaSessionMode(v15, a3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "call");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::warn(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Unable to set text mode for call.  No call for UUID ", 52);
    *(v6 + 17) = 0;
    (*(*a2 + 16))(a2, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1E4D2BAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 40);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::setTextMediaSessionMode(uint64_t a1, const void **a2, int a3, int a4)
{
  if (!a4)
  {
    a3 = 0;
  }

  if (a3 == 1)
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v36, "call");
    v32[0] = 0;
    v35 = 0;
    v6 = ims::error(v5, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "TTY mode is not supported by IMS", 32);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    return;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v36, "call");
  v28[0] = 0;
  v31 = 0;
  v10 = ims::debug(v9, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Turning RTT ", 12);
  *(v10 + 17) = 0;
  if (a3 == 2)
  {
    v11 = "ON";
  }

  else
  {
    v11 = "OFF";
  }

  if (a3 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " for stack ID ", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  if (v13 != v14)
  {
    while (1)
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::stack(v16, &v26);
      if (v26)
      {
        break;
      }

      v17 = 0;
LABEL_45:
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v17)
      {
        IMSCallInfo::setTextMediaSessionMode(v16, a3);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v13 += 16;
      if (v13 == v14)
      {
        return;
      }
    }

    IMSCallInfo::stack(v16, &v24);
    if (*(v24 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(v24 + 4432), *(v24 + 4440));
    }

    else
    {
      v36 = *(v24 + 4432);
    }

    v18 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    v20 = *(a2 + 23);
    v21 = v20;
    if (v20 < 0)
    {
      v20 = a2[1];
    }

    if (size == v20)
    {
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v36;
      }

      else
      {
        v22 = v36.__r_.__value_.__r.__words[0];
      }

      if (v21 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v17 = memcmp(v22, v23, size) == 0;
      if (v18 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v17 = 0;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_42:
        operator delete(v36.__r_.__value_.__l.__data_);
      }
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    goto LABEL_45;
  }
}

void sub_1E4D2BE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a32 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::mergeAllCalls(IMSCallManager *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v135[0] = 0;
  v138 = 0;
  v2 = ims::debug(__p, v135);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Doing MERGE ALL", 15);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v138 == 1 && v137 < 0)
  {
    operator delete(v136);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v3 = *(this + 4);
  v4 = *(this + 9);
  v5 = *(this + 8);
  if (v5 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v131[0] = 0;
    v134 = 0;
    v46 = ims::debug(__p, v131);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "No calls to merge", 17);
    *(v46 + 17) = 0;
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v46 + 17) = 0;
    if (v134 == 1 && v133 < 0)
    {
      operator delete(v132);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  v70 = 0;
  v6 = 0;
  v71 = 0;
  v7 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  do
  {
    v9 = *v5;
    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 160);
    v10 = *(v9 + 168);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v11 || *(v9 + 584))
    {
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

LABEL_16:
      v12 = 1;
      goto LABEL_17;
    }

    v13 = *(v9 + 602);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v13)
    {
      goto LABEL_16;
    }

    v14 = *(v9 + 160);
    v15 = *(v9 + 168);
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = v129;
    if (v129 >= v130)
    {
      v18 = v128;
      v19 = v129 - v128;
      v20 = (v129 - v128) >> 4;
      v21 = v20 + 1;
      if ((v20 + 1) >> 60)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v22 = v130 - v128;
      if ((v130 - v128) >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
      v24 = 0xFFFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v24 = v21;
      }

      *&v76 = &v128;
      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(&v128, v24);
      }

      v25 = (16 * v20);
      v26 = &v25[-((v129 - v128) >> 4)];
      *v25 = v14;
      v17 = (v25 + 1);
      memcpy(v26, v18, v19);
      v27 = v128;
      v28 = v130;
      v128 = v26;
      v129 = v17;
      v130 = 0;
      *&__p[16] = v27;
      *&__p[24] = v28;
      *__p = v27;
      *&__p[8] = v27;
      std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(__p);
    }

    else
    {
      *v129 = v14;
      v16[1] = v15;
      v17 = v16 + 2;
    }

    v129 = v17;
    *(v9 + 602) = 1;
    v30 = *(v9 + 160);
    v29 = *(v9 + 168);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *(v30 + 786);
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      v30 = *(v9 + 160);
      v32 = *(v9 + 168);
      v6 |= v31;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v33 = *(v30 + 787);
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        v30 = *(v9 + 160);
        v34 = *(v9 + 168);
        goto LABEL_42;
      }
    }

    else
    {
      v6 |= *(v30 + 786);
    }

    v34 = 0;
    v33 = *(v30 + 787);
LABEL_42:
    v71 |= v33;
    if (!v7)
    {
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = *(v30 + 384);
      if (v39)
      {
        v40 = std::__shared_weak_count::lock(v39);
        if (v40)
        {
          v7 = *(v30 + 376);
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
        v40 = 0;
      }

      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      v12 = 1;
      v70 = v40;
      goto LABEL_17;
    }

    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = *(v30 + 384);
    if (v35)
    {
      v36 = std::__shared_weak_count::lock(v35);
      if (v36)
      {
        v37 = *(v30 + 376) == v7;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        if (!v34)
        {
          goto LABEL_51;
        }

LABEL_50:
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        goto LABEL_51;
      }
    }

    v37 = 0;
    if (v34)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (v37)
    {
      goto LABEL_16;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v124[0] = 0;
    v127 = 0;
    v38 = ims::error(__p, v124);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Unable to merge calls across SIP stacks.  Merge from ", 53);
    *(v38 + 17) = 0;
    if (*(v7 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v123, *(v7 + 4432), *(v7 + 4440));
    }

    else
    {
      v123 = *(v7 + 4432);
    }

    (*(*v38 + 32))(v38, &v123);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " to ", 4);
    *(v38 + 17) = 0;
    v41 = *(v9 + 160);
    v42 = *(v9 + 168);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v43 = *(v41 + 384);
    if (v43)
    {
      v44 = std::__shared_weak_count::lock(v43);
      if (v44)
      {
        v45 = *(v41 + 376);
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
      v44 = 0;
    }

    MEMORY[0x1E6923310](*(v38 + 8), v45);
    *(v38 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " requested.", 11);
    *(v38 + 17) = 0;
    (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v38 + 17) = 0;
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    if (v127 == 1 && v126 < 0)
    {
      operator delete(v125);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v12 = 0;
LABEL_17:
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v12 & 1) == 0)
    {
      v47 = 0;
      v48 = v70;
      goto LABEL_128;
    }

    v5 += 2;
  }

  while (v5 != v4);
  if (v129 == v128)
  {
    v48 = v70;
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v119[0] = 0;
    v122 = 0;
    v50 = ims::debug(__p, v119);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), "No new calls to merge", 21);
    *(v50 + 17) = 0;
    (*(*v50 + 64))(v50, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v50 + 17) = 0;
    if (v122 == 1 && v121 < 0)
    {
      operator delete(v120);
    }

    goto LABEL_125;
  }

  v48 = v70;
  if ((*(v7 + 4624) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v115[0] = 0;
    v118 = 0;
    v51 = ims::error(__p, v115);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Previous conference INVITE ended fatally, automatically failing merge.", 70);
    *(v51 + 17) = 0;
    (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v51 + 17) = 0;
    if (v118 == 1 && v117 < 0)
    {
      operator delete(v116);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (*(v7 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v7 + 4432), *(v7 + 4440));
    }

    else
    {
      *__p = *(v7 + 4432);
      *&__p[16] = *(v7 + 4448);
    }

    v55 = IMSClientManager::delegateForStack(__p);
    (*(*(v55 + 16) + 40))();
LABEL_125:
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v47 = 0;
    goto LABEL_128;
  }

  if (*(this + 20))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v111[0] = 0;
    v114 = 0;
    v49 = ims::debug(__p, v111);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "Merging ", 8);
    *(v49 + 17) = 0;
    MEMORY[0x1E6923370](*(v49 + 8), (v129 - v128) >> 4);
    *(v49 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " calls into existing conference", 31);
    *(v49 + 17) = 0;
    (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v49 + 17) = 0;
    if (v114 == 1 && v113 < 0)
    {
      operator delete(v112);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v47 = BambiConferenceCall::addCalls(*(this + 20), &v128);
    goto LABEL_128;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v107[0] = 0;
  v110 = 0;
  v52 = ims::debug(__p, v107);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "Starting conference call with ", 30);
  *(v52 + 17) = 0;
  MEMORY[0x1E6923370](*(v52 + 8), (v129 - v128) >> 4);
  *(v52 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), " other participants", 19);
  *(v52 + 17) = 0;
  (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v52 + 17) = 0;
  if (v110 == 1 && v109 < 0)
  {
    operator delete(v108);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v106 = 0;
  v105 = 0;
  IMSCallManager::getActiveCall(this, &v105);
  if (v105)
  {
    IMSCallInfo::uuid(__p, v105);
    if (*(this + 215) < 0)
    {
      operator delete(*(this + 24));
    }

    *(this + 12) = *&__p[8];
    *(this + 26) = *&__p[24];
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v101[0] = 0;
    v104 = 0;
    v53 = ims::debug(__p, v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), "setting _activeCallBeforeConference to ", 39);
    *(v53 + 17) = 0;
    (*(*(this + 23) + 16))(this + 184, v53);
    (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v53 + 17) = 0;
    if (v104 == 1 && v103 < 0)
    {
      v54 = v102;
      goto LABEL_138;
    }
  }

  else
  {
    if (*(this + 215) < 0)
    {
      **(this + 24) = 0;
      *(this + 25) = 0;
    }

    else
    {
      *(this + 192) = 0;
      *(this + 215) = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v97[0] = 0;
    v100 = 0;
    v57 = ims::error(__p, v97);
    v58 = ImsOutStream::operator<<(v57, "No active call when starting conference");
    (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v58[17] = 0;
    if (v100 == 1 && v99 < 0)
    {
      v54 = v98;
LABEL_138:
      operator delete(v54);
    }
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v95 = 0u;
  v96 = 0u;
  v94 = 0;
  *&v78[1] = 0;
  v76 = 0u;
  memset(v77, 0, sizeof(v77));
  memset(__p, 0, sizeof(__p));
  DWORD2(v76) = 90;
  v77[0] = 1;
  v77[2] = 1;
  *&v77[4] = 0x200000001;
  *&v77[13] = 257;
  *v78 = 256;
  v83 = 0u;
  v84 = 0u;
  v79 = 0;
  v80 = 0u;
  v81 = 0u;
  memset(v82, 0, sizeof(v82));
  v85 = 0x40A7700000000000;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = SipStack::prefs(v7);
  BambiCallOptions::initializeFromPrefs(__p, v59);
  BYTE2(v79) = v6 & 1;
  BYTE3(v79) = v71 & 1;
  if (*(v7 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, *(v7 + 4432), *(v7 + 4440));
  }

  else
  {
    v123 = *(v7 + 4432);
  }

  IMSCallManager::sendCallStatusRequest(v60, &v123, 0, 1, 0);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getBambiClient(&v73);
  v61 = *(this + 4);
  if (!v61 || (v62 = v73, v63 = *(this + 3), (v64 = std::__shared_weak_count::lock(v61)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v65 = v64;
  atomic_fetch_add_explicit(&v64->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  v66 = std::__shared_weak_count::lock(v65);
  if (v66)
  {
    v67 = v66;
    atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v72 = v66;
    std::__shared_weak_count::__release_weak(v65);
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  else
  {
    v72 = 0;
    std::__shared_weak_count::__release_weak(v65);
  }

  BambiClient::initializeConferenceCall(v62, &v128, &v123);
  v68 = *&v123.__r_.__value_.__l.__data_;
  *&v123.__r_.__value_.__l.__data_ = 0uLL;
  v69 = *(this + 21);
  *(this + 10) = v68;
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    if (v123.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v123.__r_.__value_.__l.__size_);
    }
  }

  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  v47 = *(this + 20) != 0;
  BambiCallOptions::~BambiCallOptions(__p);
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

LABEL_128:
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  *__p = &v128;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](__p);
  return v47;
}

void sub_1E4D2CCB4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  BambiCallOptions::~BambiCallOptions(va);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  STACK[0x310] = v11 - 232;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  _Unwind_Resume(a1);
}

void IMSCallManager::getActiveCall(IMSCallManager *this@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  IPTelephonyManager::getBambiClient(&v12);
  BambiClient::activeCall(v12, &v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v4 = v14;
  if (!v14 || (v5 = *(this + 8), v6 = *(this + 9), v5 == v6))
  {
LABEL_14:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v10 = *(v8 + 160);
        v9 = *(v8 + 168);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        if (v10 == v4)
        {
          break;
        }
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    *a2 = v8;
    a2[1] = v7;
  }

  v11 = v15;
  if (v15)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4D2D050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::transferCalls(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = 0;
  v47 = 0;
  ImsUuid::ImsUuid(v44, a2);
  IMSCallManager::callInfoForUuid(a1, v44, &v46);
  v44[0] = &unk_1F5EBEE78;
  if (v45 < 0)
  {
    operator delete(v44[1]);
  }

  v42 = 0;
  v43 = 0;
  ImsUuid::ImsUuid(v40, a3);
  IMSCallManager::callInfoForUuid(a1, v40, &v42);
  v40[0] = &unk_1F5EBEE78;
  if (v41 < 0)
  {
    operator delete(v40[1]);
  }

  v6 = v46;
  if (v46)
  {
    v7 = v42;
    if (v42)
    {
      v29 = 0;
      v30 = 0;
      IMSCallInfo::stack(v46, &v29);
      v8 = v29;
      if (v29)
      {
        v9 = *(v6 + 21);
        v23 = *(v6 + 20);
        v24 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v7 + 168);
        v21 = *(v7 + 160);
        v22 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = SipStack::transferCalls(v8, &v23, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v11)
        {
          goto LABEL_41;
        }

        if (*(v29 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *(v29 + 4432), *(v29 + 4440));
        }

        else
        {
          v39 = *(v29 + 4432);
        }

        v20 = IMSClientManager::delegateForStack(&v39.__r_.__value_.__l.__data_);
        (*(*(v20 + 16) + 112))();
      }

      else
      {
        v17 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
        v25[0] = 0;
        v28 = 0;
        v18 = ims::error(v17, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "No valid SIP stack to initiate transfer", 39);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (*(v29 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *(v29 + 4432), *(v29 + 4440));
        }

        else
        {
          v39 = *(v29 + 4432);
        }

        v19 = IMSClientManager::delegateForStack(&v39.__r_.__value_.__l.__data_);
        (*(*(v19 + 16) + 112))();
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

LABEL_41:
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      goto LABEL_43;
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
    v31[0] = 0;
    v34 = 0;
    v16 = ims::error(v15, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No call ", 8);
    *(v16 + 17) = 0;
    (*(*v16 + 32))(v16, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " found for transfer target", 26);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      v14 = __p;
      goto LABEL_25;
    }
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v39, "call");
    v35[0] = 0;
    v38 = 0;
    v13 = ims::error(v12, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No call ", 8);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " found for transferee", 21);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      v14 = v36;
LABEL_25:
      operator delete(v14);
    }
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_43:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }
}

void sub_1E4D2D544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v47 = *(v45 - 104);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(v45 - 56);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::transferAllCalls(IMSCallManager *this)
{
  v1 = *(this + 8);
  if (*(this + 9) - v1 >= 0x11uLL)
  {
    IMSCallInfo::uuid(&v6, *v1);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v7;
    }

    IMSCallInfo::uuid(&v3, *(*(this + 9) - 16));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = __p;
    }

    IMSCallManager::transferCalls(this, &v8, &v5);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v3 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v6 = &unk_1F5EBEE78;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4D2D7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 25) < 0)
  {
    operator delete(*(v29 - 48));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::refreshCall(uint64_t a1, uint64_t a2, int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v14, "call");
  v10[0] = 0;
  v13 = 0;
  v7 = ims::debug(v6, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Sending reinvite for call Id = ", 31);
  *(v7 + 17) = 0;
  (*(*a2 + 16))(a2, v7);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v14);
  }

  v14 = 0;
  v15 = 0;
  v8 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v8, &v14);
  v8 = &unk_1F5EBEE78;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    IMSCallInfo::refresh(v14, a3);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E4D2DA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  v27 = *(v25 - 48);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::callInfoForSipCallId(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) == v4)
  {
LABEL_29:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(v4 + v7);
    v10 = *(v9 + 160);
    v11 = *(v9 + 168);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
      v24 = 0;
      goto LABEL_25;
    }

    v12 = *(*(a1 + 64) + v7);
    v13 = *(v12 + 160);
    v14 = *(v12 + 168);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(v13 + 527);
    if (v15 >= 0)
    {
      v16 = *(v13 + 527);
    }

    else
    {
      v16 = *(v13 + 512);
    }

    v17 = *(a2 + 23);
    v18 = v17;
    if (v17 < 0)
    {
      v17 = a2[1];
    }

    if (v16 == v17)
    {
      v19 = (v13 + 504);
      v20 = *(v13 + 504);
      if (v15 >= 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      v22 = *a2;
      if (v18 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v24 = memcmp(v21, v23, v16) == 0;
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v24 = 0;
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_25:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v24)
    {
      break;
    }

    ++v8;
    v4 = *(a1 + 64);
    v7 += 16;
    if (v8 >= (*(a1 + 72) - v4) >> 4)
    {
      goto LABEL_29;
    }
  }

  v25 = *(*(a1 + 64) + v7);
  *a3 = v25;
  if (*(&v25 + 1))
  {
    atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
  }
}

void IMSCallManager::setConferenceCallActive(IMSCallManager *this, int a2)
{
  if (*(this + 20))
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(v21, "call");
    v17[0] = 0;
    v20 = 0;
    v5 = ims::debug(v4, v17);
    v6 = v5;
    if (a2)
    {
      v7 = "Activating";
    }

    else
    {
      v7 = "Deactivating";
    }

    v8 = *(v5 + 8);
    if (a2)
    {
      v9 = 10;
    }

    else
    {
      v9 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7, v9);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " conference call", 16);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    v10 = *(this + 20);
    if (a2)
    {
      BambiCall::performLocalResume(v10);
    }

    else
    {
      BambiCall::performLocalHold(v10);
      *(*(this + 20) + 1842) = 1;
    }
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v21, "call");
    v13[0] = 0;
    v16 = 0;
    v12 = ims::error(v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "setConferenceCallActive: no existing conference call", 52);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(v14);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }
}

void sub_1E4D2DDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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

void IMSCallManager::endConferenceCall(IMSCallManager *this)
{
  if (*(this + 20))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(v16, "call");
    v12[0] = 0;
    v15 = 0;
    v3 = ims::debug(v2, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Ending conference call", 22);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    v4 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v16, "UserTriggered");
    BambiCall::endWithReason(v4, v11);
    ImsResult::~ImsResult(v11);
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(v16, "call");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::error(v5, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "endConferenceCall: no existing conference call", 46);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1E4D2DFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (*(v18 - 33) < 0)
  {
    operator delete(*(v18 - 56));
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleCallInvalidated(uint64_t a1, uint64_t *a2)
{
  if (*a2 == *(a1 + 160))
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v62, "call");
    v58[0] = 0;
    v61 = 0;
    v5 = ims::debug(v4, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Conference call invalidated", 27);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v6 = *(a1 + 160);
    if (v6 && *(v6 + 2075) == 1)
    {
      v7 = std::string::basic_string[abi:ne200100]<0>(&v62, "call");
      v54[0] = 0;
      v57 = 0;
      v8 = ims::error(v7, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Conference ended due to fatal error.  Further merges will be disabled.", 70);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v57 == 1 && v56 < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v9 = *(a1 + 160);
      v10 = *(v9 + 384);
      if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
      {
        *(*(v9 + 376) + 4624) = 0;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        MEMORY[0x1210] = 0;
      }
    }

    v12 = *(a1 + 168);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v52 = 0;
    v53 = 0;
    IMSCallManager::getActiveCall(a1, &v52);
    if (*(a1 + 64) == *(a1 + 72))
    {
      goto LABEL_73;
    }

    v13 = *a2;
    v14 = *(*a2 + 384);
    if (v14 && (v15 = std::__shared_weak_count::lock(v14)) != 0)
    {
      v16 = *(*(v13 + 376) + 320);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      if (v16 != 2)
      {
        goto LABEL_24;
      }
    }

    else if (MEMORY[0x140] != 2)
    {
LABEL_24:
      v17 = std::string::basic_string[abi:ne200100]<0>(&v62, "call");
      v40[0] = 0;
      v43 = 0;
      v18 = ims::debug(v17, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Stack not initialized.  Forcing disconnect to joined parties.", 61);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v43 == 1 && v42 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v19 = *(a1 + 64);
      for (i = *(a1 + 72); v19 != i; v19 += 16)
      {
        v22 = *v19;
        v21 = *(v19 + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v22 && *(v22 + 73))
        {
          IMSCallInfo::uuid(v38, v22);
          IMSCallInfo::stack(v22, &v36);
          if (*(v36 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, *(v36 + 4432), *(v36 + 4440));
          }

          else
          {
            v62 = *(v36 + 4432);
          }

          ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v35);
          IMSCallManager::sendCallDisconnectionNotification(a1, v38, &v62.__r_.__value_.__l.__data_, &v35, 1);
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          v38[0] = &unk_1F5EBEE78;
          if (v39 < 0)
          {
            operator delete(v38[1]);
          }
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      v23 = *a2;
      v24 = *(v23 + 384);
      if (v24)
      {
        v24 = std::__shared_weak_count::lock(v24);
        v25 = v24;
        if (v24)
        {
          v26 = *(v23 + 376);
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      if (*(v26 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(v26 + 4432), *(v26 + 4440));
      }

      else
      {
        v62 = *(v26 + 4432);
      }

      IMSCallManager::sendCallStatusRequest(v24, &v62, 2, 1, 0);
      goto LABEL_69;
    }

    if (v52)
    {
      goto LABEL_73;
    }

    v27 = *(a1 + 215);
    if (v27 < 0)
    {
      v27 = *(a1 + 200);
    }

    if (!v27)
    {
      goto LABEL_73;
    }

    v28 = std::string::basic_string[abi:ne200100]<0>(&v62, "call");
    v48[0] = 0;
    v51 = 0;
    v29 = ims::debug(v28, v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Activating call with id: ", 25);
    *(v29 + 17) = 0;
    (*(*(a1 + 184) + 16))(a1 + 184, v29);
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v51 == 1 && v50 < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v46 = &unk_1F5EBEE78;
    if (*(a1 + 215) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      v47 = *(a1 + 192);
    }

    v30 = IMSCallManager::activateCall(a1, &v46);
    v46 = &unk_1F5EBEE78;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (!v30)
    {
      IMSCallInfo::uuid(v44, **(a1 + 64));
      IMSCallManager::activateCall(a1, v44);
      v44[0] = &unk_1F5EBEE78;
      if (v45 < 0)
      {
        operator delete(v44[1]);
      }
    }

    if (*(a1 + 215) < 0)
    {
      **(a1 + 192) = 0;
      *(a1 + 200) = 0;
    }

    else
    {
      *(a1 + 192) = 0;
      *(a1 + 215) = 0;
    }

    v31 = *a2;
    v32 = *(v31 + 384);
    if (v32)
    {
      v25 = std::__shared_weak_count::lock(v32);
      if (v25)
      {
        v33 = *(v31 + 376);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
      v25 = 0;
    }

    if (*(v33 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *(v33 + 4432), *(v33 + 4440));
    }

    else
    {
      v62 = *(v33 + 4432);
    }

    v34 = IMSClientManager::delegateForStack(&v62.__r_.__value_.__l.__data_);
    (*(*(v34 + 16) + 40))();
LABEL_69:
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

LABEL_73:
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }
  }
}

void sub_1E4D2E750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58, uint64_t a59, std::__shared_weak_count *a60)
{
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleMediaActivationEvent(IMSCallManager *this, BambiCallEvent *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v30, "call");
  v26[0] = 0;
  v29 = 0;
  v7 = ims::debug(v6, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMedia", 11);
  *(v7 + 17) = 0;
  if (a3)
  {
    v8 = "A";
  }

  else
  {
    v8 = "Dea";
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ctivationEvent", 14);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v10 = *(a2 + 3);
  if (v10)
  {
    v11 = *(a2 + 2);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = std::__shared_weak_count::lock(v10);
    if (!v12)
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = *(this + 20);
  if (v11 == v13)
  {
    v16 = *(v13 + 408);
    if (v16 && SipSession::confirmed(v16))
    {
      v17 = *(this + 21);
      v20 = *(this + 20);
      v21 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = &unk_1F5EBEE78;
      if (byte_1EE2BD0B0[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *byte_1EE2BD0B0, *&byte_1EE2BD0B0[8]);
      }

      else
      {
        v19 = *byte_1EE2BD0B0;
      }

      (*(*this + 192))(this, &v20, a3, &v18);
      v18 = &unk_1F5EBEE78;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v30, "call");
    v22[0] = 0;
    v25 = 0;
    v15 = ims::debug(v14, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Ignore for non-conference call.", 31);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4D2EC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::removeCallInfo(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v3 != v2)
  {
    while (*v3 != *a2)
    {
      v3 += 2;
      if (v3 == v2)
      {
        return;
      }
    }

    v5 = v3 + 2;
    if (v3 + 2 != v2)
    {
      do
      {
        v6 = *v5;
        *v5 = 0;
        v5[1] = 0;
        v7 = *(v5 - 1);
        *(v5 - 1) = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v5 += 2;
      }

      while (v5 != v2);
      v2 = *(a1 + 72);
      v3 = v5 - 2;
    }

    while (v2 != v3)
    {
      v8 = *(v2 - 1);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v2 -= 2;
    }

    *(a1 + 72) = v3;
    if (*(a1 + 64) == v3)
    {
      *(a1 + 248) = 0;
    }
  }
}

void IMSCallManager::handleBurstDtmfSendComplete(IMSCallManager *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "call");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "handleBurstDtmfSendComplete", 27);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

void sub_1E4D2EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void IMSCallManager::handleSessionConfirmedEvent(IMSCallManager *this, BambiCallSessionConfirmedEvent *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v3);
    if (!v5)
    {
      v4 = 0;
    }

    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v4 == *(this + 20))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v7 = ims::debug(v6, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Conference session confirmed", 28);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    v10 = v4;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = &unk_1F5EBEE78;
    if (byte_1EE2BD0B0[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *byte_1EE2BD0B0, *&byte_1EE2BD0B0[8]);
    }

    else
    {
      v9 = *byte_1EE2BD0B0;
    }

    (*(*this + 192))(this, &v10, 1, &v8);
    v8 = &unk_1F5EBEE78;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D2F098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::sendConferenceSubscriptionEvent(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 48);

  return v2();
}

void IMSCallManager::handleSessionTerminatedEvent(uint64_t **this, BambiCallSessionTerminatedEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == this[20])
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, "call");
    v31[0] = 0;
    v34 = 0;
    v7 = ims::debug(&v35, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Terminated conference call", 26);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v29 = v5;
    v30 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = &unk_1F5EBEE78;
    if (byte_1EE2BD0B0[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *byte_1EE2BD0B0, *&byte_1EE2BD0B0[8]);
    }

    else
    {
      v28 = *byte_1EE2BD0B0;
    }

    ((*this)[24])(this, &v29, 0, &v27);
    v27 = &unk_1F5EBEE78;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    memset(&v35, 0, sizeof(v35));
    v8 = *(v5 + 384);
    if (v8)
    {
      v8 = std::__shared_weak_count::lock(v8);
      v9 = v8;
      if (v8)
      {
        v10 = *(v5 + 376);
LABEL_26:
        if (*(v10 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v35, *(v10 + 4432), *(v10 + 4440));
        }

        else
        {
          v35 = *(v10 + 4432);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        IMSCallManager::sendCallStatusRequest(v8, &v35, 2, 1, 0);
        v11 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v12 = off_1EE2BBBC0;
        if (!off_1EE2BBBC0)
        {
          IMSMetricsManager::create_default_global(v11);
        }

        v13 = *(&off_1EE2BBBC0 + 1);
        if (*(&off_1EE2BBBC0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        IMSMetricsManager::logSessionTerminationEvent(v12, a2, 255, 255, 0);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v14 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v15 = off_1EE2BBBC0;
        if (!off_1EE2BBBC0)
        {
          IMSMetricsManager::create_default_global(v14);
        }

        v16 = *(&off_1EE2BBBC0 + 1);
        if (*(&off_1EE2BBBC0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v17 = v15 + 240;
        for (i = *(v15 + 248); i != v17; i = *(i + 8))
        {
          (*(**(i + 16) + 80))(*(i + 16), a2);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v19 = IMSClientManager::delegateForStack(&v35.__r_.__value_.__l.__data_);
        (*(*(v19 + 16) + 48))();
        v20 = this[8];
        for (j = this[9]; v20 != j; v20 += 2)
        {
          v23 = *v20;
          v22 = v20[1];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = *(v23 + 160);
          v24 = *(v23 + 168);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v25 && !*(v23 + 584))
          {
            v26 = *(v23 + 602);
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v26)
            {
              *(v23 + 602) = 0;
            }
          }

          else if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        goto LABEL_65;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_26;
  }

LABEL_65:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D2F610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::handleSessionActivatedEvent(IMSCallManager *this, std::__shared_weak_count **a2)
{
  v2 = a2;
  v4 = a2[3];
  if (v4)
  {
    v5 = a2[2];
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v22 = v6;
    v7 = std::string::basic_string[abi:ne200100]<0>(&v33, "call");
    v29[0] = 0;
    v32 = 0;
    v8 = ims::debug(v7, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Conference call activated", 25);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(__p);
    }

    v21 = v5;
    if (v34 < 0)
    {
      operator delete(v33);
    }

    v10 = *(this + 8);
    v9 = *(this + 9);
    while (v10 != v9)
    {
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v12 + 584);
      v14 = *(v12 + 592);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (!v13)
      {
        goto LABEL_31;
      }

      IMSCallInfo::uuid(v27, v12);
      (*(*this + 216))(this, v27, @"kCallStatusActive", *(v12 + 72), v2);
      v27[0] = &unk_1F5EBEE78;
      if (v28 < 0)
      {
        operator delete(v27[1]);
      }

      v15 = *(v12 + 584);
      v16 = *(v12 + 592);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v2;
      v18 = *(v15 + 216);
      if (v18)
      {
        v19 = *(v15 + 208);
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v20 = std::__shared_weak_count::lock(v18);
        if (!v20)
        {
          v19 = 0;
        }

        std::__shared_weak_count::__release_weak(v18);
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_27:
      if (v19)
      {
        BambiCall::sendHoldResumeIndication(v19, (*(v19 + 120) & 0xFFFFFFFE) == 2);
      }

      v2 = v17;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

LABEL_31:
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v10 += 2;
    }

    v6 = v22;
    v25 = v21;
    v26 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = &unk_1F5EBEE78;
    if (byte_1EE2BD0B0[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *byte_1EE2BD0B0, *&byte_1EE2BD0B0[8]);
    }

    else
    {
      v24 = *byte_1EE2BD0B0;
    }

    (*(*this + 192))(this, &v25, 1, &v23);
    v23 = &unk_1F5EBEE78;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D2FA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleSessionActivationAcceptedEvent(BambiConferenceCall **this, BambiCallEvent *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v3);
    if (!v5)
    {
      v4 = 0;
    }

    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v4 == this[20])
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "call");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::debug(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Conference call activation accepted", 35);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    BambiConferenceCall::conferenceCallActivated(this[20]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D2FCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleSessionHoldFailedEvent(IMSCallManager *this, BambiCallEvent *a2)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "call");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "nothing to do for kIMSCallStatusHoldFailed", 42);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_1E4D2FDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void IMSCallManager::handleSessionResumeFailedEvent(IMSCallManager *this, BambiCallEvent *a2)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "call");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "nothing to do for kIMSCallStatusResumeFailed", 44);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_1E4D2FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void IMSCallManager::handleSessionLocalHeldEvent(IMSCallManager *this, std::__shared_weak_count **a2)
{
  v2 = a2;
  v4 = a2[3];
  if (v4)
  {
    v5 = a2[2];
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (!v6)
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == *(this + 20))
  {
    v22 = v6;
    v7 = std::string::basic_string[abi:ne200100]<0>(&v33, "call");
    v29[0] = 0;
    v32 = 0;
    v8 = ims::debug(v7, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Conference call deactivated", 27);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(__p);
    }

    v21 = v5;
    if (v34 < 0)
    {
      operator delete(v33);
    }

    v10 = *(this + 8);
    v9 = *(this + 9);
    while (v10 != v9)
    {
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v12 + 584);
      v14 = *(v12 + 592);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (!v13)
      {
        goto LABEL_31;
      }

      IMSCallInfo::uuid(v27, v12);
      (*(*this + 216))(this, v27, @"kCallStatusInactive", *(v12 + 72), v2);
      v27[0] = &unk_1F5EBEE78;
      if (v28 < 0)
      {
        operator delete(v27[1]);
      }

      v15 = *(v12 + 584);
      v16 = *(v12 + 592);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v2;
      v18 = *(v15 + 216);
      if (v18)
      {
        v19 = *(v15 + 208);
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v20 = std::__shared_weak_count::lock(v18);
        if (!v20)
        {
          v19 = 0;
        }

        std::__shared_weak_count::__release_weak(v18);
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_27:
      if (v19)
      {
        BambiCall::sendHoldResumeIndication(v19, (*(v19 + 120) & 0xFFFFFFFE) == 2);
      }

      v2 = v17;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

LABEL_31:
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v10 += 2;
    }

    v6 = v22;
    v25 = v21;
    v26 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = &unk_1F5EBEE78;
    if (byte_1EE2BD0B0[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *byte_1EE2BD0B0, *&byte_1EE2BD0B0[8]);
    }

    else
    {
      v24 = *byte_1EE2BD0B0;
    }

    (*(*this + 192))(this, &v25, 0, &v23);
    v23 = &unk_1F5EBEE78;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D30290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::handleForceLTEFallbackEvent(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 104);

  return v2();
}

uint64_t non-virtual thunk toIMSCallManager::handleForceLTEFallbackEvent(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 104);

  return v2();
}

void IMSCallManager::handleConferenceEvent(IMSCallManager *this, BambiCallConferenceEvent *a2)
{
  v73 = 0uLL;
  v74 = 0;
  v4 = *(a2 + 3);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *(a2 + 2);
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v6 = std::__shared_weak_count::lock(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (!v6)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v7 = *(v5 + 384);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(v5 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          v10 = *(v5 + 384);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = *(v5 + 376);
LABEL_110:
              v44 = v6;
              if (*(v12 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(__p, *(v12 + 4432), *(v12 + 4440));
                if (SHIBYTE(v74) < 0)
                {
                  operator delete(v73);
                }
              }

              else
              {
                v40 = v12 + 4432;
                *__p = *v40;
                *&__p[16] = *(v40 + 16);
              }

              v73 = *__p;
              v74 = *&__p[16];
              __p[23] = 0;
              __p[0] = 0;
              if (v11)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v11);
              }

              v14 = 1;
              goto LABEL_18;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = 0;
          goto LABEL_110;
        }
      }
    }
  }

LABEL_12:
  v44 = v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v69[0] = 0;
  v72 = 0;
  v13 = ims::error(__p, v69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Invalid sip stack for conference event", 38);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v14 = 0;
LABEL_18:
  if (v5 != *(this + 20))
  {
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v65[0] = 0;
  v68 = 0;
  v15 = ims::debug(__p, v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Conference event: ", 18);
  *(v15 + 17) = 0;
  MEMORY[0x1E6923340](*(v15 + 8), *(a2 + 14));
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v68 == 1 && v67 < 0)
  {
    operator delete(v66);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v16 = *(a2 + 14);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v34 = *(v5 + 384);
      if (v34)
      {
        v35 = std::__shared_weak_count::lock(v34);
        if (v35)
        {
          v36 = *(v5 + 376);
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

      if ((*(v36 + 4455) & 0x80000000) == 0)
      {
        v41 = v36 + 4432;
        *__p = *v41;
        *&__p[16] = *(v41 + 16);
LABEL_125:
        v43 = IMSClientManager::delegateForStack(__p);
        (*(*(v43 + 16) + 48))();
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v16 != 4)
      {
        if (v16 == 5)
        {
          v17 = IMSClientManager::delegateForStack(&v73);
          (*(*(v17 + 16) + 24))();
        }

        goto LABEL_19;
      }

      v37 = *(v5 + 384);
      if (v37)
      {
        v35 = std::__shared_weak_count::lock(v37);
        if (v35)
        {
          v36 = *(v5 + 376);
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

      if ((*(v36 + 4455) & 0x80000000) == 0)
      {
        v42 = v36 + 4432;
        *__p = *v42;
        *&__p[16] = *(v42 + 16);
        goto LABEL_125;
      }
    }

    std::string::__init_copy_ctor_external(__p, *(v36 + 4432), *(v36 + 4440));
    goto LABEL_125;
  }

  if (v16 == 1)
  {
    if (v14)
    {
      v38 = IMSClientManager::delegateForStack(&v73);
      (*(*(v38 + 16) + 32))();
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v61[0] = 0;
    v64 = 0;
    v39 = ims::debug(__p, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Clear active call before conference", 35);
    *(v39 + 17) = 0;
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v39 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (*(this + 215) < 0)
    {
      **(this + 24) = 0;
      *(this + 25) = 0;
    }

    else
    {
      *(this + 192) = 0;
      *(this + 215) = 0;
    }
  }

  else if (v16 == 2)
  {
    if (v14)
    {
      v18 = IMSClientManager::delegateForStack(&v73);
      (*(*(v18 + 16) + 40))();
    }

    v20 = *(this + 8);
    v19 = *(this + 9);
    while (v20 != v19)
    {
      v22 = *v20;
      v21 = v20[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(&v60, 0, sizeof(v60));
      IMSCallInfo::uuid(__p, v22);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v60, *&__p[8], *&__p[16]);
        *__p = &unk_1F5EBEE78;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }
      }

      else
      {
        v60 = *&__p[8];
      }

      v23 = *(v22 + 584);
      v24 = *(v22 + 592);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v23)
      {
        v25 = *(v22 + 584);
        v26 = *(v22 + 592);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *(v25 + 264) == 6;
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          if (!v24)
          {
            goto LABEL_51;
          }

LABEL_50:
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          goto LABEL_51;
        }

        v27 = *(v25 + 264) == 6;
        if (v24)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v27 = 0;
        if (v24)
        {
          goto LABEL_50;
        }
      }

LABEL_51:
      if (v27)
      {
        std::string::basic_string[abi:ne200100]<0>(v57, "call");
        v53[0] = 0;
        v56 = 0;
        v28 = ims::debug(v57, v53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Sending active notification for ", 32);
        *(v28 + 17) = 0;
        IMSCallInfo::uuid(__p, v22);
        (*(*__p + 16))(__p, v28);
        (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v28 + 17) = 0;
        *__p = &unk_1F5EBEE78;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (v56 == 1 && v55 < 0)
        {
          operator delete(v54);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        IMSCallInfo::uuid(v51, v22);
        (*(*this + 216))(this, v51, @"kCallStatusActive", *(v22 + 72), a2);
        v51[0] = &unk_1F5EBEE78;
        if (v52 < 0)
        {
          operator delete(v51[1]);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v57, "call");
        v47[0] = 0;
        v50 = 0;
        v29 = ims::debug(v57, v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Sending inactive notification for ", 34);
        *(v29 + 17) = 0;
        IMSCallInfo::uuid(__p, v22);
        (*(*__p + 16))(__p, v29);
        (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v29 + 17) = 0;
        *__p = &unk_1F5EBEE78;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (v50 == 1 && v49 < 0)
        {
          operator delete(v48);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        IMSCallInfo::uuid(v45, v22);
        (*(*this + 216))(this, v45, @"kCallStatusInactive", *(v22 + 72), a2);
        v45[0] = &unk_1F5EBEE78;
        if (v46 < 0)
        {
          operator delete(v45[1]);
        }

        *(v22 + 602) = 0;
      }

      v31 = *(v22 + 160);
      v30 = *(v22 + 168);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        if (v31)
        {
          v31 = *(v22 + 160);
          v32 = *(v22 + 168);
          if (!v32)
          {
            goto LABEL_79;
          }

          v33 = 0;
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_80;
        }
      }

      else if (v31)
      {
        v32 = 0;
LABEL_79:
        v33 = 1;
LABEL_80:
        BambiCall::sendHoldResumeIndication(v31, (*(v31 + 120) & 0xFFFFFFFE) == 2);
        if ((v33 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v20 += 2;
    }
  }

LABEL_19:
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }
}

void sub_1E4D30E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (*(v12 - 105) < 0)
  {
    operator delete(*(v12 - 128));
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::sendCallStatusChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  (*(*a1 + 216))(a1, &v7, a3, 255, a4);
  v7 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D311F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallStatusChangedNotification(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  memset(&v88, 0, sizeof(v88));
  v6 = *(a2 + 31);
  if (v6 < 0)
  {
    if (*(a2 + 16))
    {
LABEL_3:
      v81 = 0;
      v82 = 0;
      v79 = &unk_1F5EBEE78;
      if ((v6 & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v80, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v80 = *(a2 + 8);
      }

      IMSCallManager::callInfoForUuid(a1, &v79, &v81);
      v79 = &unk_1F5EBEE78;
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      v9 = v81;
      if (!v81)
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&v87, "call");
        v75[0] = 0;
        v78 = 0;
        v16 = ims::warn(v15, v75);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Unable to find call information for UUID ", 41);
        *(v16 + 17) = 0;
        (*(*a2 + 16))(a2, v16);
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        if (v78 == 1 && v77 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        goto LABEL_135;
      }

      v73 = 0;
      v74 = 0;
      IMSCallInfo::stack(v81, &v73);
      if (!v73)
      {
        v17 = std::string::basic_string[abi:ne200100]<0>(&v87, "call");
        v69[0] = 0;
        v72 = 0;
        v18 = ims::warn(v17, v69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Unable to resolve sip stack for callid: ", 40);
        *(v18 + 17) = 0;
        MEMORY[0x1E6923340](*(v18 + 8), *(v9 + 72));
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v72 != 1 || (v71 & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        v19 = v70;
LABEL_130:
        operator delete(v19);
LABEL_131:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

LABEL_135:
        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        goto LABEL_137;
      }

      v10 = SipStack::prefs(v73);
      if (ImsPrefs::ConvertSessionProgressToRinging(v10) && CFStringCompare(a3, @"kCallStatusInProgress", 0) == kCFCompareEqualTo && !*(v9 + 601))
      {
        a3 = @"kCallStatusRinging";
      }

      v12 = *(v9 + 20);
      v11 = *(v9 + 21);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        if (!v12)
        {
          goto LABEL_37;
        }

        v12 = *(v9 + 20);
        v13 = *(v9 + 21);
        if (v13)
        {
          v14 = 0;
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_35;
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = 0;
      }

      v14 = 1;
LABEL_35:
      std::string::operator=(&v88, v12 + 21);
      if ((v14 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

LABEL_37:
      memset(&v87, 0, sizeof(v87));
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v87 = *(a2 + 8);
      }

      memset(&v68, 0, sizeof(v68));
      if (*(v73 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, *(v73 + 554), *(v73 + 555));
      }

      else
      {
        *&v68.__r_.__value_.__l.__data_ = *(v73 + 277);
        v68.__r_.__value_.__r.__words[2] = *(v73 + 556);
      }

      memset(&v67, 0, sizeof(v67));
      ims::CFString::asString(a3, 0x8000100, &v67);
      std::string::basic_string[abi:ne200100]<0>(&v66, "call");
      v62[0] = 0;
      v65 = 0;
      v20 = ims::debug(&v66, v62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Delegating ", 11);
      *(v20 + 17) = 0;
      LoggableString::LoggableString(&v61, &v67);
      (*(*v20 + 40))(v20, &v61);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " notification for ", 18);
      *(v20 + 17) = 0;
      (*(*a2 + 16))(a2, v20);
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v65 == 1 && v64 < 0)
      {
        operator delete(v63);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      ims::CFString::asString(@"kCallStatusTrying", 0x8000100, &v66);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v67.__r_.__value_.__l.__size_;
      }

      v22 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      v23 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v66.__r_.__value_.__l.__size_;
      }

      if (size == v22)
      {
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v67;
        }

        else
        {
          v24 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v66;
        }

        else
        {
          v25 = v66.__r_.__value_.__r.__words[0];
        }

        v26 = memcmp(v24, v25, size) == 0;
        if ((v23 & 0x80000000) == 0)
        {
LABEL_63:
          if (v26)
          {
LABEL_64:
            v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 48);
            goto LABEL_125;
          }

LABEL_67:
          ims::CFString::asString(@"kCallStatusActive", 0x8000100, &v66);
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = v67.__r_.__value_.__l.__size_;
          }

          v29 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
          v30 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
          if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v66.__r_.__value_.__l.__size_;
          }

          if (v28 == v29)
          {
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v67;
            }

            else
            {
              v31 = v67.__r_.__value_.__r.__words[0];
            }

            if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v66;
            }

            else
            {
              v32 = v66.__r_.__value_.__r.__words[0];
            }

            v33 = memcmp(v31, v32, v28) == 0;
            if ((v30 & 0x80000000) == 0)
            {
LABEL_83:
              if (v33)
              {
                v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 32);
              }

              else
              {
                ims::CFString::asString(@"kCallStatusInactive", 0x8000100, &v66);
                if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v34 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v34 = v67.__r_.__value_.__l.__size_;
                }

                v35 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                v36 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
                if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v35 = v66.__r_.__value_.__l.__size_;
                }

                if (v34 == v35)
                {
                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v37 = &v67;
                  }

                  else
                  {
                    v37 = v67.__r_.__value_.__r.__words[0];
                  }

                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v38 = &v66;
                  }

                  else
                  {
                    v38 = v66.__r_.__value_.__r.__words[0];
                  }

                  v39 = memcmp(v37, v38, v34) == 0;
                }

                else
                {
                  v39 = 0;
                }

                if (v36 < 0)
                {
                  operator delete(v66.__r_.__value_.__l.__data_);
                }

                if (v39)
                {
                  v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 40);
                }

                else
                {
                  ims::CFString::asString(@"kCallStatusRinging", 0x8000100, &v66);
                  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v40 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v40 = v67.__r_.__value_.__l.__size_;
                  }

                  v41 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                  v42 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v41 = v66.__r_.__value_.__l.__size_;
                  }

                  if (v40 == v41)
                  {
                    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v43 = &v67;
                    }

                    else
                    {
                      v43 = v67.__r_.__value_.__r.__words[0];
                    }

                    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v44 = &v66;
                    }

                    else
                    {
                      v44 = v66.__r_.__value_.__r.__words[0];
                    }

                    v45 = memcmp(v43, v44, v40) == 0;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (v42 < 0)
                  {
                    operator delete(v66.__r_.__value_.__l.__data_);
                  }

                  if (v45)
                  {
                    v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 56);
                  }

                  else
                  {
                    ims::CFString::asString(@"kCallStatusJoined", 0x8000100, &v66);
                    v46 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v66.__r_.__value_.__l.__data_);
                    }

                    if (v46)
                    {
                      v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 64);
                    }

                    else
                    {
                      ims::CFString::asString(@"kCallStatusDialing", 0x8000100, &v66);
                      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66))
                      {
                        v47 = 1;
                      }

                      else
                      {
                        ims::CFString::asString(@"kCallStatusPulling", 0x8000100, &v61);
                        v47 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v61);
                        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v61.__r_.__value_.__l.__data_);
                        }
                      }

                      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v66.__r_.__value_.__l.__data_);
                      }

                      if (v47)
                      {
                        v48 = IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_);
                        (*(*v48 + 80))(v48, &v87, &v88);
                        goto LABEL_126;
                      }

                      ims::CFString::asString(@"kCallStatusInProgress", 0x8000100, &v66);
                      v49 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v66.__r_.__value_.__l.__data_);
                      }

                      if (v49)
                      {
                        v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 72);
                      }

                      else
                      {
                        ims::CFString::asString(@"kCallStatusAcknowledged", 0x8000100, &v66);
                        v50 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v66.__r_.__value_.__l.__data_);
                        }

                        if (v50)
                        {
                          v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 144);
                        }

                        else
                        {
                          ims::CFString::asString(@"kCallStatusHoldFailed", 0x8000100, &v66);
                          v51 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v66.__r_.__value_.__l.__data_);
                          }

                          if (v51)
                          {
                            v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 104);
                          }

                          else
                          {
                            ims::CFString::asString(@"kCallStatusResumeFailed", 0x8000100, &v66);
                            v52 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v66.__r_.__value_.__l.__data_);
                            }

                            if (!v52)
                            {
                              ims::CFString::asString(@"kCallStatusPlayLRBT", 0x8000100, &v66);
                              v53 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v66.__r_.__value_.__l.__data_);
                              }

                              if (v53)
                              {
                                goto LABEL_170;
                              }

                              ims::CFString::asString(@"kCallStatusStopLRBT", 0x8000100, &v66);
                              v54 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v66.__r_.__value_.__l.__data_);
                              }

                              if (v54)
                              {
LABEL_170:
                                v55 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 96);
                              }

                              else
                              {
                                ims::CFString::asString(@"kCallStatusMediaActive", 0x8000100, &v66);
                                v56 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                                if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v66.__r_.__value_.__l.__data_);
                                }

                                if (!v56)
                                {
                                  ims::CFString::asString(@"kCallStatusMediaInactive", 0x8000100, &v66);
                                  v57 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                                  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v66.__r_.__value_.__l.__data_);
                                  }

                                  if (!v57)
                                  {
                                    ims::CFString::asString(@"kCallStatusMediaInitialized", 0x8000100, &v66);
                                    v58 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                                    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v66.__r_.__value_.__l.__data_);
                                    }

                                    if (v58)
                                    {
                                      v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 152);
                                    }

                                    else
                                    {
                                      ims::CFString::asString(@"kIMSCallStatusTextMediaDetected", 0x8000100, &v66);
                                      v59 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                                      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v66.__r_.__value_.__l.__data_);
                                      }

                                      if (v59)
                                      {
                                        v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 120);
                                      }

                                      else
                                      {
                                        ims::CFString::asString(@"kIMSCallStatusTextMediaDeactivated", 0x8000100, &v66);
                                        v60 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v67, &v66);
                                        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(v66.__r_.__value_.__l.__data_);
                                        }

                                        if (!v60)
                                        {
                                          goto LABEL_126;
                                        }

                                        v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 128);
                                      }
                                    }

                                    goto LABEL_125;
                                  }
                                }

                                v55 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 88);
                              }

                              (*v55)();
                              goto LABEL_126;
                            }

                            v27 = (*IMSClientManager::delegateForStack(&v68.__r_.__value_.__l.__data_) + 112);
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_125:
              (*v27)();
LABEL_126:
              if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v67.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_131;
              }

              v19 = v68.__r_.__value_.__r.__words[0];
              goto LABEL_130;
            }
          }

          else
          {
            v33 = 0;
            if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_83;
            }
          }

          operator delete(v66.__r_.__value_.__l.__data_);
          goto LABEL_83;
        }
      }

      else
      {
        v26 = 0;
        if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      operator delete(v66.__r_.__value_.__l.__data_);
      if (v26)
      {
        goto LABEL_64;
      }

      goto LABEL_67;
    }
  }

  else if (*(a2 + 31))
  {
    goto LABEL_3;
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(&v87, "call");
  v83[0] = 0;
  v86 = 0;
  v8 = ims::warn(v7, v83);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "UUID for call is empty - treating as LEGACY request", 51);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v86 == 1 && v85 < 0)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

LABEL_137:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D321BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (*(v42 - 49) < 0)
  {
    operator delete(*(v42 - 72));
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::failPendingCalls(void *a1, const void **a2)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v2 = a1[8];
  v3 = a1[9];
  if (v2 == v3)
  {
    goto LABEL_45;
  }

  do
  {
    v7 = *v2;
    v6 = *(v2 + 8);
    *&v26 = *v2;
    *(&v26 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7 && *(v7 + 152) == 1)
    {
      IMSCallInfo::stack(v7, &v23);
      if (*(v23 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v23 + 4432), *(v23 + 4440));
      }

      else
      {
        v25 = *(v23 + 4432);
      }

      v8 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = a2[1];
      }

      if (size == v10)
      {
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v25;
        }

        else
        {
          v12 = v25.__r_.__value_.__r.__words[0];
        }

        if (v11 >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        v14 = memcmp(v12, v13, size) == 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v14 = 0;
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_25:
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v14)
          {
            IMSCallInfo::uuid(v21, v7);
            ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v25);
            IMSCallManager::sendCallDisconnectionNotification(a1, v21, a2, &v25, 1);
            if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v25.__r_.__value_.__l.__data_);
            }

            v21[0] = &unk_1F5EBEE78;
            if (v22 < 0)
            {
              operator delete(v21[1]);
            }

            std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v27, &v26);
          }

          goto LABEL_33;
        }
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      goto LABEL_25;
    }

LABEL_33:
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v2 += 16;
  }

  while (v2 != v3);
  v15 = v27;
  for (i = v28; v15 != i; v15 += 2)
  {
    v17 = *v15;
    v18 = v15[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = v18;
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v20 = 0;
    }

    v19 = v17;
    (*(*a1 + 224))(a1, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

LABEL_45:
  v25.__r_.__value_.__r.__words[0] = &v27;
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1E4D32638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  __p = &a28;
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void IMSCallManager::continuePendingCalls(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 != v3)
  {
    while (1)
    {
      v7 = *v2;
      v6 = *(v2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v7 || *(v7 + 152) != 1)
      {
        goto LABEL_39;
      }

      IMSCallInfo::stack(v7, &v25);
      if (v25[4455] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(v25 + 554), *(v25 + 555));
      }

      else
      {
        v19 = *(v25 + 4432);
      }

      v8 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = a2[1];
      }

      if (size != v10)
      {
        break;
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v19;
      }

      else
      {
        v12 = v19.__r_.__value_.__r.__words[0];
      }

      if (v11 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = memcmp(v12, v13, size) == 0;
      if (v8 < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v14 && (IMSCallInfo::startCall(v7) & 1) == 0)
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&v25, "call");
        v21[0] = 0;
        v24 = 0;
        v16 = ims::error(v15, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Unable to start pending call ", 29);
        *(v16 + 17) = 0;
        IMSCallInfo::uuid(&v19, v7);
        (*(v19.__r_.__value_.__r.__words[0] + 16))(&v19, v16);
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        v19.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
        if (v20 < 0)
        {
          operator delete(v19.__r_.__value_.__l.__size_);
        }

        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v25);
        }

        IMSCallInfo::uuid(v17, v7);
        ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v19);
        IMSCallManager::sendCallDisconnectionNotification(a1, v17, a2, &v19, 1);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v17[0] = &unk_1F5EBEE78;
        if (v18 < 0)
        {
          operator delete(v17[1]);
          if (!v6)
          {
            goto LABEL_41;
          }

LABEL_40:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_41;
        }
      }

LABEL_39:
      if (v6)
      {
        goto LABEL_40;
      }

LABEL_41:
      v2 += 16;
      if (v2 == v3)
      {
        return;
      }
    }

    v14 = 0;
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(v19.__r_.__value_.__l.__data_);
    goto LABEL_25;
  }
}

void sub_1E4D329DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleQualityOfServiceEstablished(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(v36, "call");
  v32[0] = 0;
  v35 = 0;
  v9 = ims::debug(v8, v32);
  if (v35 == 1 && v34 < 0)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  v10 = *(v9 + 8);
  if (a4[1] != *a4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Handling QoS notification for ", 30);
    *(v9 + 17) = 0;
    if (a3)
    {
      v11 = "local";
    }

    else
    {
      v11 = "remote";
    }

    if (a3)
    {
      v12 = 5;
    }

    else
    {
      v12 = 6;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v11, v12);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " ports: ", 8);
    *(v9 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v31, " ");
    v13 = *a4;
    v14 = a4[1];
    ims::join<std::__wrap_iter<unsigned short const*>>();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Handling QoS notification without any ports", 43);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v15 = a1[8];
  v16 = a1[9];
  while (v15 != v16)
  {
    v17 = *v15;
    v18 = v15[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = *(v17 + 160);
    v20 = *(v17 + 168);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      v21 = *(v17 + 160);
      v22 = *(v17 + 168);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = BambiCall::setQualityOfServiceEstablished(v21, a2, a3, a4);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v20)
      {
LABEL_25:
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }

    else
    {
      v23 = 0;
      if (v20)
      {
        goto LABEL_25;
      }
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v23)
    {
      return;
    }

    v15 += 2;
  }

  v24 = a1[20];
  if (!v24 || (BambiCall::setQualityOfServiceEstablished(v24, a2, a3, a4) & 1) == 0)
  {
    v25 = std::string::basic_string[abi:ne200100]<0>(v36, "call");
    v27[0] = 0;
    v30 = 0;
    v26 = ims::debug(v25, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "handleQualityOfServiceEstablished: no call found ", 49);
    *(v26 + 17) = 0;
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }
  }
}

void sub_1E4D32E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleQualityOfServiceEstablished(void *a1, int **a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned short>>>(&v6, *a2, a2[1], &__p);
  IMSCallManager::handleQualityOfServiceEstablished(a1, 0, 1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1E4D32F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleQualityOfServiceRevoked(IMSCallManager *this, uint64_t a2)
{
  v4 = *(this + 8);
  v5 = *(this + 9);
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = v4[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 160);
    v9 = *(v6 + 168);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      v10 = *(v6 + 160);
      v11 = *(v6 + 168);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = BambiCall::setQualityOfServiceRevoked(v10, a2);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v9)
      {
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v12 = 0;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v12)
    {
      return;
    }

    v4 += 2;
  }

  v13 = *(this + 20);
  if (!v13 || (BambiCall::setQualityOfServiceRevoked(v13, a2) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "call");
    v15[0] = 0;
    v18 = 0;
    v14 = ims::debug(v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleQualityOfServiceRevoked: no call found ", 45);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1E4D33118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void IMSCallManager::getDialingCall(uint64_t a1@<X0>, const void **a2@<X1>, IMSCallInfo **a3@<X8>)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 == v5)
  {
LABEL_36:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  while (1)
  {
    v8 = *v4;
    v7 = *(v4 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
      goto LABEL_30;
    }

    IMSCallInfo::stack(v8, &v19);
    if (!v19)
    {
      v9 = 0;
      goto LABEL_27;
    }

    IMSCallInfo::stack(v8, &v16);
    if (*(v16 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(v16 + 4432), *(v16 + 4440));
    }

    else
    {
      v18 = *(v16 + 4432);
    }

    v10 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if (v12 < 0)
    {
      v12 = a2[1];
    }

    if (size != v12 || ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v14 = &v18) : (v14 = v18.__r_.__value_.__r.__words[0]), v13 >= 0 ? (v15 = a2) : (v15 = *a2), memcmp(v14, v15, size)))
    {
      v9 = 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_24:
      operator delete(v18.__r_.__value_.__l.__data_);
      goto LABEL_25;
    }

    v9 = (*(v8 + 152) - 1) < 2;
    if (v10 < 0)
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

LABEL_27:
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v9)
    {
      break;
    }

LABEL_30:
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_36;
    }
  }

  *a3 = v8;
  a3[1] = v7;
}

void sub_1E4D3331C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  *v17 = v18;
  v17[1] = v16;
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleUacBarringResponse(void *a1, const void **a2, int a3)
{
  v48[0] = a3;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "call");
  v41[0] = 0;
  v44 = 0;
  v6 = ims::debug(&__p, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Received UAC barring response ", 30);
  *(v6 + 17) = 0;
  ims::toString<UacAccessResponse>(v48, &v38);
  (*(*v6 + 32))(v6, &v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " for ", 5);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v40 < 0)
  {
    operator delete(v38);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = a1[8];
  v8 = a1[9];
  if (v7 != v8)
  {
    while (1)
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      *&v37 = *v7;
      *(&v37 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v10 || *(v10 + 152) != 1)
      {
        goto LABEL_59;
      }

      IMSCallInfo::stack(v10, &v38);
      if (v38[4455] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v38 + 554), *(v38 + 555));
      }

      else
      {
        __p = *(v38 + 4432);
      }

      v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v13 = *(a2 + 23);
      v14 = v13;
      if (v13 < 0)
      {
        v13 = a2[1];
      }

      if (size != v13)
      {
        break;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v14 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      v17 = memcmp(p_p, v16, size) == 0;
      if (v11 < 0)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (!v17)
      {
        goto LABEL_59;
      }

      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            IMSCallInfo::sendAccessBarringDisconnect(v10);
          }

          goto LABEL_59;
        }

        v19 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
        v33[0] = 0;
        v36 = 0;
        v20 = ims::info(v19, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Continuing call with uuid ", 26);
        *(v20 + 17) = 0;
        IMSCallInfo::uuid(&__p, v10);
        (*(__p.__r_.__value_.__r.__words[0] + 16))(&__p, v20);
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
        if (v32 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__size_);
        }

        if (v36 == 1 && v35 < 0)
        {
          operator delete(v34);
        }

        if (v40 < 0)
        {
          operator delete(v38);
        }

        if (IMSCallInfo::continueCall(v10))
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (a3 == 2)
      {
        IMSCallInfo::uuid(&v27, v10);
        ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &__p);
        IMSCallManager::sendCallDisconnectionNotification(a1, &v27, a2, &__p, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v27 = &unk_1F5EBEE78;
        v18 = v28;
        if ((v28[23] & 0x80000000) != 0)
        {
LABEL_57:
          operator delete(*v18);
        }

LABEL_58:
        std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v45, &v37);
        goto LABEL_59;
      }

      if (a3 == 5)
      {
        IMSCallInfo::uuid(&v29, v10);
        ims::CFString::asString(@"kIMSCallDisconnectionReasonInvalidRat", 0x8000100, &__p);
        IMSCallManager::sendCallDisconnectionNotification(a1, &v29, a2, &__p, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v29 = &unk_1F5EBEE78;
        v18 = v30;
        if ((v30[23] & 0x80000000) != 0)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      }

LABEL_59:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 += 16;
      if (v7 == v8)
      {
        goto LABEL_62;
      }
    }

    v17 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_32;
  }

LABEL_62:
  v21 = v45;
  for (i = v46; v21 != i; v21 += 2)
  {
    v23 = *v21;
    v24 = v21[1];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = v24;
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v26 = 0;
    }

    v25 = v23;
    (*(*a1 + 224))(a1, &v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v45;
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1E4D33924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, void *a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  if (a48 == 1 && a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 177) < 0)
  {
    operator delete(*(v49 - 200));
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  a29 = (v49 - 120);
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}