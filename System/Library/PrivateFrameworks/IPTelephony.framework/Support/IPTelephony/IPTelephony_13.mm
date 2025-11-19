void sub_1E4D0FFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  v50 = *(v48 - 168);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  ims::DisconnectInfo::~DisconnectInfo((v48 - 160));
  _Unwind_Resume(a1);
}

void IMSCallInfo::uuid(IMSCallInfo *this, uint64_t a2)
{
  *this = &unk_1F5EBEE78;
  v2 = (this + 8);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 112), *(a2 + 120));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(a2 + 112);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 128);
  }
}

BOOL ImsUuid::operator==(uint64_t a1, uint64_t a2)
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

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void IMSCallManager::epsFallbackCall(IMSCallManager *this, uint64_t a2)
{
  *this = &unk_1F5EBEE78;
  v2 = (this + 8);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(a2 + 224);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 240);
  }
}

uint64_t IMSCallInfo::startCall(IMSCallInfo *this)
{
  if (*(this + 152) == 1)
  {
    v30 = 0;
    v31 = 0;
    IMSCallInfo::stack(this, &v30);
    if (!v30)
    {
      v11 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
      v26[0] = 0;
      v29 = 0;
      v12 = ims::debug(v11, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Strange: how could stack be null? startCall() failed.", 53);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }

      v8 = 0;
      goto LABEL_54;
    }

    if (TelephonyRadiosGetRadioVendor() == 1 || TelephonyRadiosGetRadioVendor() == 3 && ims::AccessNetwork::isNR((v30 + 3432)))
    {
      v2 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
      v22[0] = 0;
      v25 = 0;
      v3 = ims::info(v2, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Checking UAC access barring before dialing call ", 48);
      *(v3 + 17) = 0;
      IMSCallInfo::uuid(&v32, this);
      (*(v32 + 2))(&v32, v3);
      v4 = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      v32 = &unk_1F5EBEE78;
      if (v35 < 0)
      {
        operator delete(v33);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(__p);
      }

      if (v42 < 0)
      {
        operator delete(v40);
      }

      IPTelephonyManager::getCallManager(v4, &v32);
      IMSCallManager::sendCallStatusRequest(v5, this + 136, 0, 1, *(this + 600));
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      IPTelephonyManager::getBambiClient(&v40);
      (*(*v40 + 184))(&v32);
      v6 = v32;
      if (ims::AccessNetwork::isLTE((v32 + 3432)) || ims::AccessNetwork::isNR((v6 + 3432)))
      {
        v7 = *(this + 600);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if ((v7 & 1) == 0)
        {
          v8 = 1;
          goto LABEL_54;
        }
      }

      else
      {
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }
      }

      v13 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
      v18[0] = 0;
      v21 = 0;
      v14 = ims::debug(v13, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Not waiting for UAC check ", 26);
      *(v14 + 17) = 0;
      if (*(this + 600))
      {
        v15 = "for emergency call";
      }

      else
      {
        v15 = "while on WiFi";
      }

      if (*(this + 600))
      {
        v16 = 18;
      }

      else
      {
        v16 = 13;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15, v16);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }
    }

    v8 = IMSCallInfo::continueCall(this);
LABEL_54:
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    return v8;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
  v36[0] = 0;
  v39 = 0;
  v10 = ims::warn(v9, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Not waiting to dial call ", 25);
  *(v10 + 17) = 0;
  IMSCallInfo::uuid(&v32, this);
  (*(v32 + 2))(&v32, v10);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v32 = &unk_1F5EBEE78;
  if (v35 < 0)
  {
    operator delete(v33);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

  return 1;
}

void sub_1E4D10688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  v41 = *(v39 - 152);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallStatusRequest(IPTelephonyManager *a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v26 = a3;
  IPTelephonyManager::instance(&v23, a1);
  IPTelephonyManager::sendCallStatusRequest(v23, a2, a3, 1, a4, a5);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v23, "call");
  v19[0] = 0;
  v22 = 0;
  v10 = ims::debug(v9, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Voice call ", 11);
  *(v10 + 17) = 0;
  ims::toString<UacCallStatus>(&v26, __p);
  (*(*v10 + 32))(v10, __p);
  v11 = *(v10 + 8);
  v27 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v27, 1);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v25 < 0)
  {
    operator delete(v23);
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_14:
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
    AnalyticsLogger::setCallActive(*(v15 + 184), 1);
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (a3 != 2)
  {
    return;
  }

  v12 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v13 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v12);
  }

  v16 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  AnalyticsLogger::setCallActive(*(v13 + 184), 0);
LABEL_22:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

uint64_t IMSCallInfo::continueCall(IMSCallInfo *this)
{
  ims::AccessNetwork::clear(this + 624);
  v126 = 0;
  v127 = 0;
  IMSCallInfo::stack(this, &v126);
  v2 = v126;
  if (v126)
  {
    std::string::operator=(this + 26, v126 + 143);
    std::string::operator=(this + 27, v2 + 144);
    v3 = *&v2[145].__r_.__value_.__l.__data_;
    *(this + 688) = v2[145].__r_.__value_.__s.__data_[16];
    *(this + 42) = v3;
    std::string::basic_string[abi:ne200100]<0>(&v102, "call");
    v122[0] = 0;
    v125 = 0;
    v4 = ims::debug(&v102, v122);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "ANI at call start: ", 19);
    *(v4 + 17) = 0;
    LoggableString::LoggableString(__p, this + 26);
    (*(*v4 + 40))(v4, __p);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v125 == 1 && v124 < 0)
    {
      operator delete(v123);
    }

    if (SHIBYTE(v104) < 0)
    {
      operator delete(v102);
    }
  }

  if (*(this + 152) != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v118[0] = 0;
    v121 = 0;
    v11 = ims::warn(__p, v118);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Not waiting to dial call ", 25);
    *(v11 + 17) = 0;
    IMSCallInfo::uuid(&v102, this);
    (*(v102 + 2))(&v102, v11);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    v102 = &unk_1F5EBEE78;
    if (SHIBYTE(v105) < 0)
    {
      operator delete(v103);
    }

    if (v121 == 1 && v120 < 0)
    {
      operator delete(v119);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_169;
  }

  *(this + 152) = 2;
  if (*(this + 77))
  {
    v113 = 0;
    v112 = 0;
    IPTelephonyManager::getBambiClient(&v112);
    v111 = 0;
    v110 = 0;
    IPTelephonyManager::getCallManager(v5, &v110);
    v105 = 0;
    v104 = 0;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v102 = &unk_1F5EBDEF8;
    v103 = &_bambiDomain;
    v106 = 0;
    v101 = 0;
    v100 = 0;
    v6 = v112;
    (*(*v112 + 184))(&v100, v112, this + 136);
    v7 = *(this + 5);
    if (!v7 || (v8 = *(this + 4), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v99 = 0;
    v98 = 0;
    if (*(v100 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v100 + 4432), *(v100 + 4440));
    }

    else
    {
      *__p = *(v100 + 4432);
    }

    v14 = (this + 616);
    v15 = *(this + 77);
    v97 = 0;
    v96 = 0;
    v16 = std::__shared_weak_count::lock(v10);
    if (v16)
    {
      v17 = v16;
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = v97;
      v96 = v8;
      v97 = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = v97;
      v97 = 0;
      v96 = 0;
      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }
    }

    BambiClient::initializeCallToRemoteUri(v6, __p, v15 + 360, &v96, (*v14 + 1), **v14, &v102, &v98);
    if (v97)
    {
      std::__shared_weak_count::__release_weak(v97);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v20 = v98;
    if (v98)
    {
      v21 = *(v98 + 384);
      if (!v21)
      {
        goto LABEL_141;
      }

      v22 = std::__shared_weak_count::lock(v21);
      if (!v22)
      {
        goto LABEL_141;
      }

      v23 = v22;
      if (*(v20 + 376))
      {
        v24 = v98;
        v25 = *(v98 + 384);
        if (v25 && (v26 = std::__shared_weak_count::lock(v25)) != 0)
        {
          v27 = *(v24 + 376);
          v28 = v100;
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          if (v27 == v28)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v33 = v100;
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          if (!v33)
          {
LABEL_141:
            v51 = v98;
            v52 = v99;
            if (v99)
            {
              atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v53 = *(this + 21);
            *(this + 20) = v51;
            *(this + 21) = v52;
            if (v53)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v53);
            }

            v54 = v110;
            v64[0] = 0;
            v64[1] = 0;
            IMSCallManager::setEPSFallbackCall(v110, v64);
            std::unique_ptr<IMSCallInfo::DialInfo>::reset[abi:ne200100](this + 77, 0);
            v55 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v56 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global(v55);
            }

            v57 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v58 = *(this + 21);
            v63[0] = *(this + 20);
            v63[1] = v58;
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            IMSMetricsManager::logSessionRequestedEvent(v56, v63, *(this + 72), 1);
            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            }

            IMSCallInfo::uuid(v61, this);
            if (*(this + 601))
            {
              v59 = kIMSCallStatusPulling;
            }

            else
            {
              v59 = kIMSCallStatusDialing;
            }

            (*(*v54 + 216))(v54, v61, *v59, *(this + 72), 0);
            v61[0] = &unk_1F5EBEE78;
            if ((v62 & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

            v46 = v61[1];
LABEL_160:
            operator delete(v46);
LABEL_161:
            if (v99)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v99);
            }

            std::__shared_weak_count::__release_weak(v10);
            if (v101)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v101);
            }

            ImsResult::~ImsResult(&v102);
            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }

            if (v113)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v113);
            }

LABEL_169:
            v13 = 1;
            goto LABEL_170;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "call");
        v65[0] = 0;
        v68 = 0;
        v34 = ims::warn(__p, v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "desired stack (", 15);
        *(v34 + 17) = 0;
        (*(*v34 + 32))(v34, this + 136);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), ") not equal to actual stack (", 29);
        *(v34 + 17) = 0;
        v35 = v98;
        v36 = *(v98 + 384);
        if (v36)
        {
          v37 = std::__shared_weak_count::lock(v36);
          if (v37)
          {
            v38 = *(v35 + 376);
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          v37 = 0;
        }

        if (*(v38 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, *(v38 + 4432), *(v38 + 4440));
        }

        else
        {
          v87 = *(v38 + 4432);
        }

        (*(*v34 + 32))(v34, &v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), ")", 1);
        *(v34 + 17) = 0;
        (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v34 + 17) = 0;
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v68 == 1 && v67 < 0)
        {
          operator delete(v66);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v47 = v98;
        v48 = *(v98 + 384);
        if (v48)
        {
          v23 = std::__shared_weak_count::lock(v48);
          if (v23)
          {
            v49 = *(v47 + 376);
          }

          else
          {
            v49 = 0;
          }
        }

        else
        {
          v49 = 0;
          v23 = 0;
        }

        if (*(v49 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(v49 + 4432), *(v49 + 4440));
        }

        else
        {
          v50 = v49 + 4432;
          *__p = *v50;
          *&__p[16] = *(v50 + 16);
        }

        if (*(this + 159) < 0)
        {
          operator delete(*(this + 17));
        }

        *(this + 136) = *__p;
        *(this + 19) = *&__p[16];
        __p[23] = 0;
        __p[0] = 0;
        if (!v23)
        {
          goto LABEL_141;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      goto LABEL_141;
    }

    *__p = 0x100uLL;
    *&__p[24] = 0;
    v93 = 0;
    *&__p[16] = 0;
    __s = 0u;
    memset(v95, 0, sizeof(v95));
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v87.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v87.__r_.__value_.__l.__size_ = &SessionTerminatedResultDomain::_domain;
    LODWORD(v87.__r_.__value_.__r.__words[2]) = 28;
    if (v103 == &SessionTerminatedResultDomain::_domain)
    {
      v29 = v104;
      ImsResult::~ImsResult(&v87);
      if (v29 == 28)
      {
        std::string::__assign_external(&__p[8], "SessionTerminated:OnEmergencyCall", 0x21uLL);
        v30 = kIMSCallDisconnectionReasonOnEmergencyCall;
        goto LABEL_80;
      }
    }

    else
    {
      ImsResult::~ImsResult(&v87);
    }

    if (*(v100 + 320) != 2)
    {
      goto LABEL_69;
    }

    v31 = *(v100 + 248);
    v32 = *(v100 + 256);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(SipUserAgent::config(v31) + 456) != 1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        goto LABEL_69;
      }
    }

    else if ((*(SipUserAgent::config(v31) + 456) & 1) == 0)
    {
LABEL_69:
      std::string::basic_string[abi:ne200100]<0>(&v87, "call");
      v79[0] = 0;
      v82 = 0;
      v42 = ims::error(&v87, v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "IMSCallInfo::continueCall not falling back to CS", 48);
      *(v42 + 17) = 0;
      (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v42 + 17) = 0;
      if (v82 == 1 && v81 < 0)
      {
        operator delete(v80);
      }

      v43 = @"kCallDisconnectionReasonUnknownError";
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      goto LABEL_81;
    }

    v39 = *(v100 + 248);
    v40 = *(v100 + 256);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *(SipUserAgent::config(v39) + 912);
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v41 = *(SipUserAgent::config(v39) + 912);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v41)
    {
      goto LABEL_69;
    }

    std::string::basic_string[abi:ne200100]<0>(&v87, "call");
    v83[0] = 0;
    v86 = 0;
    v44 = ims::error(&v87, v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "IMSCallInfo::continueCall falling back to CS", 44);
    *(v44 + 17) = 0;
    (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v44 + 17) = 0;
    if (v86 == 1 && v85 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v30 = kIMSCallDisconnectionReasonRequiresCSFB;
LABEL_80:
    v43 = *v30;
LABEL_81:
    LODWORD(v93) = 4;
    __p[2] = 1;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 1174405120;
    v69[2] = ___ZN11IMSCallInfo12continueCallEv_block_invoke;
    v69[3] = &__block_descriptor_tmp_33;
    v69[4] = this;
    v69[5] = v110;
    v70 = v111;
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = v43;
    v72 = *__p;
    v73 = __p[2];
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v74, *&__p[8], *&__p[16]);
    }

    else
    {
      v74 = *&__p[8];
    }

    v75 = v93;
    v76 = BYTE4(v93);
    if (SHIBYTE(v95[0]) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, __s, *(&__s + 1));
    }

    else
    {
      *&v77.__r_.__value_.__l.__data_ = __s;
      v77.__r_.__value_.__r.__words[2] = v95[0];
    }

    if (SHIBYTE(v95[3]) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, v95[1], v95[2]);
    }

    else
    {
      v78 = *&v95[1];
    }

    ims::performBlock(v69);
    v45 = **v14;
    if (v45)
    {
      if (*(v45 + 4775) < 0)
      {
        operator delete(*(v45 + 4752));
      }

      SipUri::~SipUri((v45 + 4344));
      SipStackConfig::~SipStackConfig((v45 + 1752));
      SipRegistrationConfig::~SipRegistrationConfig((v45 + 80));
      if (*(v45 + 71) < 0)
      {
        operator delete(*(v45 + 48));
      }

      if (*(v45 + 47) < 0)
      {
        operator delete(*(v45 + 24));
      }

      if (*(v45 + 23) < 0)
      {
        operator delete(*v45);
      }

      MEMORY[0x1E69235B0](v45, 0x10B2C40F20492F8);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    if (SHIBYTE(v95[3]) < 0)
    {
      operator delete(v95[1]);
    }

    if (SHIBYTE(v95[0]) < 0)
    {
      operator delete(__s);
    }

    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    v46 = *&__p[8];
    goto LABEL_160;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v114[0] = 0;
  v117 = 0;
  v12 = ims::warn(__p, v114);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "No dial information cached for ", 31);
  *(v12 + 17) = 0;
  IMSCallInfo::uuid(&v102, this);
  (*(v102 + 2))(&v102, v12);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  v102 = &unk_1F5EBEE78;
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v103);
  }

  if (v117 == 1 && v116 < 0)
  {
    operator delete(v115);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v13 = 0;
LABEL_170:
  if (v127)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v127);
  }

  return v13;
}

void sub_1E4D11A74(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x258]);
  }

  std::__shared_weak_count::__release_weak(v1);
  if (STACK[0x268])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x268]);
  }

  ImsResult::~ImsResult(&STACK[0x270]);
  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2D0]);
  }

  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2E0]);
  }

  v5 = *(v3 - 88);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ims::AccessNetwork::clear(uint64_t this)
{
  if (*(this + 23) < 0)
  {
    **this = 0;
    *(this + 8) = 0;
  }

  else
  {
    *this = 0;
    *(this + 23) = 0;
  }

  if (*(this + 47) < 0)
  {
    **(this + 24) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 24) = 0;
    *(this + 47) = 0;
  }

  *(this + 56) = 0;
  return this;
}

void ___ZN11IMSCallInfo12continueCallEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  IMSCallInfo::uuid(v9, v2);
  ims::CFString::asString(*(a1 + 56), 0x8000100, &__p);
  IMSCallManager::sendCallDisconnectionNotification(v3, v9, &__p, a1 + 64);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9[0] = &unk_1F5EBEE78;
  if (v10 < 0)
  {
    operator delete(v9[1]);
  }

  *(v2 + 603) = 1;
  v4 = *(a1 + 40);
  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  (*(*v4 + 224))(v4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4D11F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallDisconnectionNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v32[0] = 0;
  v35 = 0;
  v8 = ims::debug(__p, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Sending Call Status Changed notification: disconnection for callid: ", 68);
  *(v8 + 17) = 0;
  (*(*a2 + 16))(a2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", reason = ", 11);
  *(v8 + 17) = 0;
  LoggableString::LoggableString(&v31, a3);
  (*(*v8 + 40))(v8, &v31);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v29 = 0;
  v30 = 0;
  v27 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v28 = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v27, &v29);
  v27 = &unk_1F5EBEE78;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v9 = v29;
  if (!v29)
  {
    goto LABEL_19;
  }

  IMSCallInfo::stack(v29, __p);
  v10 = *__p;
  if (*&__p[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
  }

  if (v10)
  {
    memset(&v31, 0, sizeof(v31));
    IMSCallInfo::stack(v9, __p);
    if (*(*__p + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(*__p + 4432), *(*__p + 4440));
    }

    else
    {
      v31 = *(*__p + 4432);
    }

    if (*&__p[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
    }

    memset(&__p[3], 0, 85);
    *__p = *a4;
    __p[2] = *(a4 + 2);
    if (*(a4 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], *(a4 + 8), *(a4 + 16));
    }

    else
    {
      *&__p[8] = *(a4 + 8);
      *&__p[24] = *(a4 + 24);
    }

    *&__p[32] = *(a4 + 32);
    __p[36] = *(a4 + 36);
    if (*(a4 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[40], *(a4 + 40), *(a4 + 48));
    }

    else
    {
      *&__p[40] = *(a4 + 40);
      *&__p[56] = *(a4 + 56);
    }

    if (*(a4 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[64], *(a4 + 64), *(a4 + 72));
    }

    else
    {
      *&__p[64] = *(a4 + 64);
      *&__p[80] = *(a4 + 80);
    }

    v12 = v30;
    v21[0] = v9;
    v21[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ims::CFString::asString(@"kCallDisconnectionReasonNormal", 0x8000100, &v20);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    if (v14 == size)
    {
      if (v13 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v20;
      }

      else
      {
        v17 = v20.__r_.__value_.__r.__words[0];
      }

      v18 = memcmp(v16, v17, v14) == 0;
    }

    else
    {
      v18 = 0;
    }

    __p[36] = IMSCallManager::sendCallEndRequest(a1, v21, v18);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v19 = IMSClientManager::delegateForStack(&v31.__r_.__value_.__l.__data_);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v20 = *(a2 + 8);
    }

    (*(*v19 + 16))(v19, &v20, a3, __p);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if ((__p[87] & 0x80000000) != 0)
    {
      operator delete(*&__p[64]);
    }

    if ((__p[63] & 0x80000000) != 0)
    {
      operator delete(*&__p[40]);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_19:
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v23[0] = 0;
    v26 = 0;
    v11 = ims::error(__p, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Unable to disconnect call - unknown stack id", 44);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v12 = v30;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4D12508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  ims::DisconnectInfo::~DisconnectInfo(&a18);
  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  v56 = *(v54 - 152);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrI14IMSCallManagerEE64c26_ZTSN3ims14DisconnectInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 64) = v5;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  v7 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v7;
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }
}

void sub_1E4D12748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrI14IMSCallManagerEE64c26_ZTSN3ims14DisconnectInfoE(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ims::DisconnectInfo::~DisconnectInfo(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void IMSCallManager::setEPSFallbackCall(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    IMSCallInfo::uuid(v4, v3);
    if (*(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    *(a1 + 224) = *&v4[8];
    *(a1 + 240) = v5;
  }

  else if (*(a1 + 247) < 0)
  {
    **(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  else
  {
    *(a1 + 224) = 0;
    *(a1 + 247) = 0;
  }
}

void IMSCallInfo::endCall(uint64_t a1, const std::string *a2)
{
  v66 = 0;
  v67 = 0;
  IPTelephonyManager::getCallManager(a1, &v66);
  if (!*(a1 + 584))
  {
    if (!*(a1 + 160))
    {
      goto LABEL_109;
    }

    memset(&v65, 0, sizeof(v65));
    v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((v11 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v65, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (a2->__r_.__value_.__l.__size_ != 13)
        {
          goto LABEL_50;
        }

        v16 = a2->__r_.__value_.__r.__words[0];
LABEL_37:
        v17 = *v16;
        v18 = *(v16 + 5);
        if (v17 == *"UserTriggered" && v18 == *"riggered")
        {
          v22 = *(a1 + 160);
          if (v22[69])
          {
            v23 = v22[48];
            if (v23)
            {
              v23 = std::__shared_weak_count::lock(v23);
              v24 = v23;
              if (v23)
              {
                v23 = v22[47];
              }
            }

            else
            {
              v24 = 0;
            }

            v31 = SipStack::prefs(v23);
            v32 = ImsPrefs::EmergencyAnonymousAutomaticRedial(v31);
            v33 = v32;
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
              if (v33)
              {
LABEL_68:
                if (*(a1 + 606) != 1 || (v34 = *(*(a1 + 160) + 408)) != 0 && (SipSession::confirmed(v34) & 1) != 0)
                {
                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v65.__r_.__value_.__l.__size_ = 22;
                    v35 = v65.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    *(&v65.__r_.__value_.__s + 23) = 22;
                    v35 = &v65;
                  }

                  qmemcpy(v35, "EmergencyUserTriggered", 22);
                  v30 = &v35->__r_.__value_.__s.__data_[22];
LABEL_76:
                  *v30 = 0;
                  goto LABEL_77;
                }

                std::string::__assign_external(&v65, "EmergencyUserTriggeredTimeout", 0x1DuLL);
LABEL_77:
                if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
                {
                  if (a2->__r_.__value_.__l.__size_ != 13)
                  {
LABEL_92:
                    std::string::basic_string[abi:ne200100]<0>(v53, "call");
                    v49[0] = 0;
                    v52 = 0;
                    v42 = ims::debug(v53, v49);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "endCall: reason= ", 17);
                    *(v42 + 17) = 0;
                    LoggableString::LoggableString(&v48, a2);
                    (*(*v42 + 40))(v42, &v48);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " (", 2);
                    *(v42 + 17) = 0;
                    LoggableString::LoggableString(&v47, &v65);
                    (*(*v42 + 40))(v42, &v47);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "); confirmed= ", 14);
                    *(v42 + 17) = 0;
                    v43 = *(*(a1 + 160) + 408);
                    v44 = "false";
                    if (v43)
                    {
                      if (SipSession::confirmed(v43))
                      {
                        v44 = "true";
                        v45 = 4;
                      }

                      else
                      {
                        v45 = 5;
                      }
                    }

                    else
                    {
                      v45 = 5;
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), v44, v45);
                    *(v42 + 17) = 0;
                    (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v42 + 17) = 0;
                    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v47.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v48.__r_.__value_.__l.__data_);
                    }

                    if (v52 == 1 && v51 < 0)
                    {
                      operator delete(v50);
                    }

                    if (v54 < 0)
                    {
                      operator delete(v53[0]);
                    }

                    BambiCall::endWithReason(*(a1 + 160), v46);
                    ImsResult::~ImsResult(v46);
                    goto LABEL_107;
                  }

                  v36 = a2->__r_.__value_.__r.__words[0];
LABEL_83:
                  v37 = *v36;
                  v38 = *(v36 + 5);
                  if (v37 == *"UserTriggered" && v38 == *"riggered")
                  {
                    v40 = *(a1 + 160);
                    v41 = *(v40 + 1727);
                    if (v41 < 0)
                    {
                      v41 = *(v40 + 1712);
                    }

                    if (v41)
                    {
                      std::string::operator=(&v65, (v40 + 1704));
                    }
                  }

                  goto LABEL_92;
                }

                v20 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_79:
                v36 = a2;
                if (v20 != 13)
                {
                  goto LABEL_92;
                }

                goto LABEL_83;
              }
            }

            else if (v32)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_41:
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v20 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v21 = a2;
          if (v20 != 13)
          {
            goto LABEL_79;
          }

          goto LABEL_52;
        }

LABEL_50:
        if (a2->__r_.__value_.__l.__size_ != 13)
        {
          goto LABEL_77;
        }

        v21 = a2->__r_.__value_.__r.__words[0];
LABEL_52:
        v25 = *v21;
        v26 = *(v21 + 5);
        if (v25 != *"UserTriggered" || v26 != *"riggered")
        {
          goto LABEL_77;
        }

        v28 = *(*(a1 + 160) + 408);
        if (v28)
        {
          if (SipSession::confirmed(v28))
          {
            goto LABEL_77;
          }
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v65.__r_.__value_.__l.__size_ = 14;
          v29 = v65.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v65.__r_.__value_.__s + 23) = 14;
          v29 = &v65;
        }

        qmemcpy(v29, "RejectedByUser", 14);
        v30 = &v29->__r_.__value_.__s.__data_[14];
        goto LABEL_76;
      }

      v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = *a2;
    }

    v16 = a2;
    if (v11 != 13)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v4 = v66;
  (*(*v66 + 200))(&v65, v66);
  v5 = v65.__r_.__value_.__r.__words[0];
  if (v65.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
  }

  if (v5)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v65, "call");
    v61[0] = 0;
    v64 = 0;
    v7 = ims::debug(v6, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "endCall: CallInfo ", 18);
    *(v7 + 17) = 0;
    (*(*(a1 + 104) + 16))(a1 + 104, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " is in a conference call.  Removing participant from call.", 58);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    (*(*v4 + 200))(&v65, v4);
    v8 = v65.__r_.__value_.__r.__words[0];
    v9 = *(a1 + 592);
    v59 = *(a1 + 584);
    v60 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v10 < 0)
    {
      if (a2->__r_.__value_.__l.__size_ != 5)
      {
LABEL_29:
        v15 = 0;
LABEL_30:
        BambiConferenceCall::removeParticipant(v8, &v59, v15);
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v65.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
        }

        goto LABEL_109;
      }

      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else if (v10 != 5)
    {
      goto LABEL_29;
    }

    v15 = LODWORD(a2->__r_.__value_.__l.__data_) == *"SRVCC" && a2->__r_.__value_.__s.__data_[4] == str_7_10[4];
    goto LABEL_30;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v65, "call");
  v55[0] = 0;
  v58 = 0;
  v13 = ims::error(v12, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "endCall: CallInfo ", 18);
  *(v13 + 17) = 0;
  (*(*(a1 + 104) + 16))(a1 + 104, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " is in a conference call, but manager doesn't have one.", 55);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v58 == 1 && v57 < 0)
  {
    operator delete(__p);
  }

LABEL_107:
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

LABEL_109:
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }
}

void sub_1E4D13038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v59 - 73) < 0)
  {
    operator delete(*(v59 - 96));
  }

  v61 = *(v59 - 56);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::ringCall(IMSCallInfo *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v2 = BambiCall::ring(v1, &v9);
    v3 = (*(*v10 + 24))(v10, v11, v2);
    ImsResult::~ImsResult(&v9);
    if (v3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, "call");
      v5[0] = 0;
      v8 = 0;
      v4 = ims::debug(&v9, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Couldn't send ringing notification", 34);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v8 == 1 && v7 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

void IMSCallInfo::answerCall(void *a1, const std::string *a2)
{
  if (!a1[73])
  {
    v4 = a1[20];
    if (!v4)
    {
      return;
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__p = 0u;
    BambiCall::answer(v4, a2, __p);
    if (!(*(*__p[1] + 24))(__p[1], v19))
    {
      goto LABEL_17;
    }

    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11[0] = &unk_1F5EBDEF8;
    v11[1] = &_bambiDomain;
    v12 = 1073741838;
    if (__p[1] == &_bambiDomain)
    {
      v5 = v19;
      ImsResult::~ImsResult(v11);
      if (v5 == 1073741838)
      {
LABEL_17:
        ImsResult::~ImsResult(__p);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(v11);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "call");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::debug(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Couldn't answer call", 20);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    if (v13 < 0)
    {
      operator delete(v11[0]);
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v24[0] = 0;
  v27 = 0;
  v3 = ims::error(__p, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMSCallManager::answerCall: call ", 33);
  *(v3 + 17) = 0;
  (*(a1[13] + 16))(a1 + 13, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " is already in a conference.", 28);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void IMSCallInfo::setActive(BambiCall **this, uint64_t a2)
{
  if (this[73])
  {
    IPTelephonyManager::getCallManager(this, &v4);
    (*(*v4 + 184))(v4, a2);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v3 = this[20];
    if (v3)
    {
      if (a2)
      {

        BambiCall::performLocalResume(v3);
      }

      else
      {

        BambiCall::performLocalHold(v3);
      }
    }
  }
}

void sub_1E4D13694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallInfo::isActive(IMSCallInfo *this)
{
  if (*(this + 73))
  {
    v1 = std::string::basic_string[abi:ne200100]<0>(&v22, "call");
    v18[0] = 0;
    v21 = 0;
    v2 = ims::debug(v1, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "isActive: call is conference participant", 40);
    *(v2 + 17) = 0;
    v3 = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }

    v16 = 0;
    v17 = 0;
    IPTelephonyManager::getCallManager(v3, &v22);
    (*(*v22 + 200))(&v16);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v16 && (v4 = *(v16 + 408)) != 0 && SipSession::confirmed(v4) && (*(v16 + 480) & 0xFFFFFFFE) != 2)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "call");
      v12[0] = 0;
      v15 = 0;
      v11 = ims::debug(v10, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "isActive: conference call is confirmed or unheld", 48);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v15 == 1 && v14 < 0)
      {
        operator delete(v13);
      }

      if (v24 < 0)
      {
        operator delete(v22);
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v8 = *(this + 20);
    if (v8)
    {
      v9 = *(v8 + 408);
      if (v9)
      {
        if (SipSession::confirmed(v9) && (*(*(this + 20) + 480) & 0xFFFFFFFE) != 2)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_1E4D138E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

SipSession *IMSCallInfo::isAlerting(IMSCallInfo *this)
{
  v1 = *(this + 20);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 408);
  if (result)
  {
    return (SipSession::confirmed(result) ^ 1);
  }

  return result;
}

void IMSCallInfo::refresh(IMSCallInfo *this, int a2)
{
  v2 = *(this + 20);
  if (v2)
  {
    BambiCall::handleSRVCCFailure(v2, a2, v3);
    ImsResult::~ImsResult(v3);
  }
}

void IMSCallInfo::setBasebandCallId(IMSCallInfo *this, uint64_t a2)
{
  *(this + 72) = a2;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "call");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Setting basebandCallId to ", 26);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), a2);
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

void sub_1E4D13ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void ___ZN11IMSCallInfo27sendAccessBarringDisconnectEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  IPTelephonyManager::getCallManager(a1, &v10);
  v3 = v10;
  IMSCallInfo::uuid(v8, v2);
  ims::CFString::asString(*(a1 + 40), 0x8000100, &__p);
  IMSCallManager::sendCallDisconnectionNotification(v3, v8, &__p, a1 + 48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8[0] = &unk_1F5EBEE78;
  if (v9 < 0)
  {
    operator delete(v8[1]);
  }

  *(v2 + 603) = 1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 32);
  if (!v4)
  {
    v6 = 0;
LABEL_13:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_13;
  }

  (*(*v3 + 224))(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4D13C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c26_ZTSN3ims14DisconnectInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 48) = v4;
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

  v6 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v6;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
  }
}

void sub_1E4D13D74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c26_ZTSN3ims14DisconnectInfoE(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void IMSCallInfo::handleJoinedConferenceEvent(IMSCallInfo *this, BambiCallJoinedConferenceEvent *a2)
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

  if (v5 == *(this + 20))
  {
    std::string::operator=((this + 80), v5 + 22);
    v9 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v32[0] = 0;
    v35 = 0;
    v10 = ims::debug(v9, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Swapping call for conference participant", 40);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    v11 = *(a2 + 5);
    if (v11)
    {
      v12 = *(a2 + 4);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = std::__shared_weak_count::lock(v11);
      if (v13)
      {
        v14 = v12;
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

    *(this + 73) = v14;
    v15 = *(this + 74);
    *(this + 74) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    v16 = *(this + 5);
    if (!v16 || (v17 = *(this + 73), v18 = *(this + 4), (v19 = std::__shared_weak_count::lock(v16)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    v21 = std::__shared_weak_count::lock(v20);
    v22 = v21;
    if (v21)
    {
      if (v18)
      {
        v23 = v18 + 8;
      }

      else
      {
        v23 = 0;
      }

      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v20);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v20);
      v23 = 0;
    }

    *(v17 + 1104) = v23;
    v24 = *(v17 + 1112);
    *(v17 + 1112) = v22;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    v25 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v40 = 0;
    v41 = 0;
    IPTelephonyManager::getCallManager(v25, &v40);
    v26 = v40;
    IMSCallInfo::uuid(v30, this);
    (*(*v26 + 216))(v26, v30, @"kCallStatusJoined", *(this + 72), a2);
    v30[0] = &unk_1F5EBEE78;
    if (v31 < 0)
    {
      operator delete(v30[1]);
    }

    (*(*v26 + 200))(&v28, v26);
    v27 = *(v28 + 480);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v27 == 3)
    {
      (*(*v26 + 184))(v26, 1);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v36[0] = 0;
    v39 = 0;
    v8 = ims::debug(v7, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleJoinedConferenceEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  v41 = *(v39 - 96);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleInputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = *(v3 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          IPTelephonyManager::getCallManager(v10, &v19);
          v11 = *a2;
          v12 = *(*a2 + 384);
          if (v12)
          {
            v13 = std::__shared_weak_count::lock(v12);
            if (v13)
            {
              v14 = *(v11 + 376);
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
            std::string::__init_copy_ctor_external(&v18, *(v14 + 4432), *(v14 + 4440));
          }

          else
          {
            v18 = *(v14 + 4432);
          }

          IMSCallInfo::uuid(v16, a1);
          IMSCallManager::sendInputFrequencyLevelUpdateNotification(v15, &v18.__r_.__value_.__l.__data_, v16, a3);
          v16[0] = &unk_1F5EBEE78;
          if (v17 < 0)
          {
            operator delete(v16[1]);
          }

          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }
      }
    }
  }
}

void sub_1E4D14424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendInputFrequencyLevelUpdateNotification(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = IMSClientManager::delegateForStack(a2);
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  (*(*v6 + 216))(v6, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D1453C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleOutputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = *(v3 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          IPTelephonyManager::getCallManager(v10, &v19);
          v11 = *a2;
          v12 = *(*a2 + 384);
          if (v12)
          {
            v13 = std::__shared_weak_count::lock(v12);
            if (v13)
            {
              v14 = *(v11 + 376);
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
            std::string::__init_copy_ctor_external(&v18, *(v14 + 4432), *(v14 + 4440));
          }

          else
          {
            v18 = *(v14 + 4432);
          }

          IMSCallInfo::uuid(v16, a1);
          IMSCallManager::sendOutputFrequencyLevelUpdateNotification(v15, &v18.__r_.__value_.__l.__data_, v16, a3);
          v16[0] = &unk_1F5EBEE78;
          if (v17 < 0)
          {
            operator delete(v16[1]);
          }

          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }
      }
    }
  }
}

void sub_1E4D14698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendOutputFrequencyLevelUpdateNotification(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = IMSClientManager::delegateForStack(a2);
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  (*(*v6 + 224))(v6, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D147B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleVocoderInfoEvent(IMSCallInfo *a1, uint64_t a2, uint64_t a3)
{
  IMSCallInfo::stack(a1, &v13);
  size = v13.__r_.__value_.__l.__size_;
  v7 = v13.__r_.__value_.__r.__words[0];
  if (v13.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13.__r_.__value_.__l.__size_);
  }

  if (v7)
  {
    IPTelephonyManager::getCallManager(size, &v14);
    IMSCallInfo::stack(a1, &v11);
    if (*(v11 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(v11 + 4432), *(v11 + 4440));
    }

    else
    {
      v13 = *(v11 + 4432);
    }

    IMSCallInfo::uuid(v9, a1);
    v8 = IMSClientManager::delegateForStack(&v13.__r_.__value_.__l.__data_);
    (*(*v8 + 232))(v8, a2, a3);
    v9[0] = &unk_1F5EBEE78;
    if (v10 < 0)
    {
      operator delete(v9[1]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E4D14904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::sendVocoderInfoNotification(uint64_t a1, void **a2)
{
  v2 = *(*IMSClientManager::delegateForStack(a2) + 232);

  return v2();
}

void IMSCallInfo::handleAudioStreamTokensEvent(IMSCallInfo *this, const __CFArray *a2)
{
  v11 = 0;
  v12 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 14), *(this + 15));
  }

  else
  {
    v10 = *(this + 112);
  }

  v4 = ims::CFString::CFString(&v11, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(v4, &v8);
  IMSCallInfo::stack(this, &v6);
  if (*(v6 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v6 + 4432), *(v6 + 4440));
  }

  else
  {
    v10 = *(v6 + 4432);
  }

  IMSCallManager::sendAudioStreamTokensNotification(v5, &v10.__r_.__value_.__l.__data_, v12, 0, a2);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ims::CFType::~CFType(&v11);
}

void sub_1E4D14AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D14B40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D14B38);
}

const void **IMSCallManager::sendAudioStreamTokensNotification(int a1, void **a2, CFStringRef theString, int a4, CFTypeRef cf)
{
  v30 = *MEMORY[0x1E69E9840];
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
  *buffer = 0u;
  v15 = 0u;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CFStringGetCString(theString, buffer, 256, 0x600u);
  v7 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  v10 = cfa;
  if (cfa)
  {
    CFRetain(cfa);
  }

  (*(*v7 + 176))(v7, __p, &v10);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&cfa);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D14C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextStreamTokenEvent(IMSCallInfo *this, const __CFNumber *a2)
{
  v11 = 0;
  v12 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 14), *(this + 15));
  }

  else
  {
    v10 = *(this + 112);
  }

  v4 = ims::CFString::CFString(&v11, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(v4, &v8);
  IMSCallInfo::stack(this, &v6);
  if (*(v6 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v6 + 4432), *(v6 + 4440));
  }

  else
  {
    v10 = *(v6 + 4432);
  }

  IMSCallManager::sendTextStreamTokenNotification(v5, &v10.__r_.__value_.__l.__data_, v12, 0, a2);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ims::CFType::~CFType(&v11);
}

void sub_1E4D14DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D14E24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D14E1CLL);
}

const void **IMSCallManager::sendTextStreamTokenNotification(int a1, void **a2, CFStringRef theString, int a4, CFTypeRef cf)
{
  v30 = *MEMORY[0x1E69E9840];
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
  *buffer = 0u;
  v15 = 0u;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CFStringGetCString(theString, buffer, 256, 0x600u);
  v7 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  v10 = cfa;
  if (cfa)
  {
    CFRetain(cfa);
  }

  (*(*v7 + 184))(v7, __p, &v10);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&cfa);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D14F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleIncomingDtmfEvent(IMSCallInfo *this, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 14), *(this + 15));
  }

  else
  {
    v10 = *(this + 112);
  }

  v4 = ims::CFString::CFString(&v11, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  IPTelephonyManager::getCallManager(v4, &v8);
  IMSCallInfo::stack(this, &v6);
  if (*(v6 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v6 + 4432), *(v6 + 4440));
  }

  else
  {
    v10 = *(v6 + 4432);
  }

  IMSCallManager::sendIncomingDtmfNotification(v5, &v10.__r_.__value_.__l.__data_, v12, a2);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ims::CFType::~CFType(&v11);
}

void sub_1E4D150B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  ims::CFType::~CFType((v18 - 32));
  _Unwind_Resume(a1);
}

void sub_1E4D15104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4D150FCLL);
}

void IMSCallManager::sendIncomingDtmfNotification(int a1, void **a2, CFStringRef theString, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *buffer = 0u;
  CFStringGetCString(theString, buffer, 256, 0x600u);
  v6 = IMSClientManager::delegateForStack(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, buffer);
  (*(*v6 + 192))(v6, __p, a4);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4D15214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextStreamHeldEvent(IMSCallInfo *this, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  IMSCallInfo::stack(this, &v5);
  if (v5[4455] < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v5 + 554), *(v5 + 555));
  }

  else
  {
    v8 = *(v5 + 4432);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
  }

  memset(&v7, 0, sizeof(v7));
  IMSCallInfo::uuid(&v5, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = __p;
  }

  v4 = IMSClientManager::delegateForStack(&v8.__r_.__value_.__l.__data_);
  (*(*v4 + 136))(v4, &v7, a2);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D15388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleCallInvalidated(std::string *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v38[0] = 0;
  v41 = 0;
  v4 = ims::debug(__p, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "handleCallInvalidated", 21);
  *(v4 + 17) = 0;
  v5 = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v36 = 0;
  v37 = 0;
  IPTelephonyManager::getCallManager(v5, &v36);
  if (a1[24].__r_.__value_.__l.__size_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "call");
    v32[0] = 0;
    v35 = 0;
    v6 = ims::debug(__p, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Invalidated call turned into a conference participant.  Keeping CallInfo", 72);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(__p[0]);
    }

    data = a1[7].__r_.__value_.__l.__data_;
    a1[6].__r_.__value_.__r.__words[2] = 0;
    a1[7].__r_.__value_.__r.__words[0] = 0;
    if (data)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (*a2 != a1[6].__r_.__value_.__r.__words[2])
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "call");
  v28[0] = 0;
  v31 = 0;
  v8 = ims::debug(__p, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleCallInvalidated actually removing the call", 48);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a2;
  if (*(*a2 + 1529))
  {
    v10 = a1[25].__r_.__value_.__s.__data_[3];
  }

  else
  {
    v10 = a1[25].__r_.__value_.__s.__data_[3];
    if ((*(v9 + 1530) & 1) == 0)
    {
      if ((a1[25].__r_.__value_.__s.__data_[3] & 1) == 0)
      {
        v14 = *(v9 + 384);
        if (v14)
        {
          v14 = std::__shared_weak_count::lock(v14);
          v15 = v14;
          if (v14)
          {
            v16 = *(v9 + 376);
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        if (*(v16 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(__p, *(v16 + 4432), *(v16 + 4440));
        }

        else
        {
          v17 = v16 + 4432;
          *__p = *v17;
          *&v25 = *(v17 + 16);
        }

        IMSCallManager::sendCallStatusRequest(v14, __p, 2, *(*a2 + 1529), *(*a2 + 552) != 0);
        if (SBYTE7(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      goto LABEL_47;
    }
  }

  if ((v10 & 1) == 0)
  {
    bzero(__p, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 15, 10);
    __p[0] = &unk_1F5EC4038;
    v11 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(&v25 + 1);
    *&v25 = v11;
    *(&v25 + 1) = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    IMSCallInfo::handleSessionTerminationEvent(a1, __p);
    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(__p);
    goto LABEL_53;
  }

LABEL_47:
  v27 = 0;
  v25 = 0u;
  *v26 = 0u;
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(v22, "CallInvalidated");
  BambiCallNamedEvent::BambiCallNamedEvent(__p, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  __p[0] = &unk_1F5ED0738;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  __p[0] = &unk_1F5EC4090;
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v25 + 1));
  }

LABEL_53:
  v18 = v36;
  v19 = a1[1].__r_.__value_.__r.__words[2];
  size = a1[1].__r_.__value_.__l.__size_;
  if (!v19)
  {
    v21 = 0;
LABEL_58:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = std::__shared_weak_count::lock(v19);
  if (!v21)
  {
    goto LABEL_58;
  }

  (*(*v18 + 224))(v18, &size);
  data = v21;
  if (v21)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
  }

LABEL_15:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

void sub_1E4D158C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v26 = *(v24 - 112);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionTerminationEvent(std::string *this, BambiCallSessionTerminationBaseEvent *a2)
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

  if (v5 != this[6].__r_.__value_.__r.__words[2])
  {
    std::string::basic_string[abi:ne200100]<0>(&v233, "call");
    v342[0] = 0;
    v345 = 0;
    v7 = ims::debug(&v233, v342);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo: received ", 22);
    *(v7 + 17) = 0;
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " event for an unknown call", 26);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v345 == 1 && v344 < 0)
    {
      operator delete(v343);
    }

    if (SBYTE7(v234) < 0)
    {
      v8 = v233;
LABEL_391:
      operator delete(v8);
      goto LABEL_392;
    }

    goto LABEL_392;
  }

  v335 = 256;
  v337 = 0;
  v338 = 0;
  v336 = 0uLL;
  v339 = 0u;
  v340 = 0u;
  v341 = 0u;
  LODWORD(v338) = IMSCallInfo::sendSessionTerminationMetric(this, a2, &v335);
  (*(*a2 + 40))(&v233, a2);
  if (SHIBYTE(v337) < 0)
  {
    operator delete(v336);
  }

  v336 = v233;
  v337 = v234;
  BYTE1(v335) = *(a2 + 146);
  this[25].__r_.__value_.__s.__data_[3] = 1;
  v334 = 0;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0;
  v328 = 0;
  IMSCallInfo::stack(this, &v328);
  v9 = v328;
  if (v328)
  {
    std::string::operator=(&v330, v328 + 143);
    std::string::operator=((&v331 + 8), v9 + 144);
    LOBYTE(v334) = v9[145].__r_.__value_.__s.__data_[16];
    v333 = *&v9[145].__r_.__value_.__l.__data_;
  }

  v327 = 0;
  v326 = 0;
  IPTelephonyManager::getBambiClient(&v326);
  v325 = 0;
  v324 = 0;
  IPTelephonyManager::getCallManager(v10, &v324);
  if ((this[29].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    if ((SHIBYTE(this[26].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!this[26].__r_.__value_.__l.__size_)
      {
        goto LABEL_35;
      }
    }

    else if (!*(&this[26].__r_.__value_.__s + 23))
    {
      goto LABEL_35;
    }

    size = SHIBYTE(this[27].__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this[27].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = BYTE7(v331);
      if (SBYTE7(v331) < 0)
      {
        v13 = *(&v330 + 1);
      }

      if (v13)
      {
        v14 = HIBYTE(v332);
        if (v332 < 0)
        {
          v14 = v332;
        }

        if (v14)
        {
          v11 = ims::AccessNetwork::isNR(&this[26]) && ims::AccessNetwork::isLTE(&v330);
          std::string::basic_string[abi:ne200100]<0>(&v233, "call");
          v320[0] = 0;
          v323 = 0;
          v30 = ims::debug(&v233, v320);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "start ANI: ", 11);
          *(v30 + 17) = 0;
          LoggableString::LoggableString(v228, this + 26);
          (*(*v30 + 40))(v30, v228);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ", current ANI: ", 15);
          *(v30 + 17) = 0;
          LoggableString::LoggableString(&v319, &v330);
          (*(*v30 + 40))(v30, &v319);
          if (v11)
          {
            v31 = ": EPS Fallback happend during the call";
          }

          else
          {
            v31 = ": EPS Fallback did not happen during the call";
          }

          if (v11)
          {
            v32 = 38;
          }

          else
          {
            v32 = 45;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), v31, v32);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v319.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v228[0].__r_.__value_.__l.__data_);
          }

          if (v323 == 1 && v322 < 0)
          {
            operator delete(v321);
          }

          if (SBYTE7(v234) < 0)
          {
            operator delete(v233);
          }

LABEL_36:
          if (v335)
          {
            v233 = 0uLL;
            *&v234 = 0;
            if (!v11)
            {
              goto LABEL_56;
            }

            goto LABEL_38;
          }

LABEL_40:
          v17 = this[6].__r_.__value_.__r.__words[2];
          if ((*(v17 + 1529) & 1) == 0 && (*(v17 + 1530) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v233, "call");
            v305[0] = 0;
            v308 = 0;
            v25 = ims::debug(&v233, v305);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Not sending termination event for hidden call", 45);
            *(v25 + 17) = 0;
            (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v25 + 17) = 0;
            if (v308 == 1 && v307 < 0)
            {
              operator delete(v306);
            }

            if (SBYTE7(v234) < 0)
            {
              operator delete(v233);
            }

            v26 = v324;
            v27 = this[1].__r_.__value_.__r.__words[2];
            v304[0] = this[1].__r_.__value_.__l.__size_;
            if (!v27 || (v28 = std::__shared_weak_count::lock(v27), (v304[1] = v28) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v29 = v28;
            BYTE4(v338) = IMSCallManager::sendCallEndRequest(v26, v304, 0);
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            goto LABEL_375;
          }

          memset(&v319, 0, sizeof(v319));
          v18 = *(a2 + 8);
          switch(v18)
          {
            case 0:
            case 4:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v217[0] = 0;
              v220 = 0;
              v35 = ims::debug(&v233, v217);
              v36 = ImsOutStream::operator<<(v35, "I hung up with ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v36);
              (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v36[17] = 0;
              if (v220 == 1 && v219 < 0)
              {
                operator delete(v218);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonNormal", 0x8000100, &v233);
              goto LABEL_303;
            case 1:
            case 5:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v292[0] = 0;
              v295 = 0;
              v33 = ims::debug(&v233, v292);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v33);
              v34 = ImsOutStream::operator<<(v33, " hung up");
              (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v34[17] = 0;
              if (v295 == 1 && v294 < 0)
              {
                operator delete(v293);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonNormal", 0x8000100, &v233);
              goto LABEL_335;
            case 2:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v280[0] = 0;
              v283 = 0;
              v98 = ims::debug(&v233, v280);
              v99 = ImsOutStream::operator<<(v98, "I rejected call from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v99);
              (*(*v99 + 64))(v99, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v99[17] = 0;
              if (v283 == 1 && v282 < 0)
              {
                operator delete(v281);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonNormal", 0x8000100, &v233);
              goto LABEL_303;
            case 3:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v268[0] = 0;
              v271 = 0;
              v65 = ims::debug(&v233, v268);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v65);
              v66 = ImsOutStream::operator<<(v65, " Rejected");
              (*(*v66 + 64))(v66, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v66[17] = 0;
              if (v271 == 1 && v270 < 0)
              {
                operator delete(v269);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonRemoteBusy", 0x8000100, &v233);
              goto LABEL_335;
            case 6:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v288[0] = 0;
              v291 = 0;
              v87 = ims::debug(&v233, v288);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v87);
              v88 = ImsOutStream::operator<<(v87, " answered elsewhere");
              (*(*v88 + 64))(v88, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v88[17] = 0;
              if (v291 == 1 && v290 < 0)
              {
                operator delete(v289);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonAnsweredElsewhere", 0x8000100, &v233);
              goto LABEL_335;
            case 7:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v284[0] = 0;
              v287 = 0;
              v89 = ims::debug(&v233, v284);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v89);
              v90 = ImsOutStream::operator<<(v89, " not allowed as other secondary device is in use");
              (*(*v90 + 64))(v90, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v90[17] = 0;
              if (v287 == 1 && v286 < 0)
              {
                operator delete(v285);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonSecondaryDeviceAlreadyInUse", 0x8000100, &v233);
              goto LABEL_335;
            case 8:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v260[0] = 0;
              v263 = 0;
              v102 = ims::debug(&v233, v260);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v102);
              v103 = ImsOutStream::operator<<(v102, " Silent hangup completed");
              (*(*v103 + 64))(v103, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v103[17] = 0;
              if (v263 == 1 && v262 < 0)
              {
                operator delete(v261);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              v104 = v324;
              v105 = this[1].__r_.__value_.__r.__words[2];
              v259[0] = this[1].__r_.__value_.__l.__size_;
              if (!v105 || (v106 = std::__shared_weak_count::lock(v105), (v259[1] = v106) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v107 = v106;
              BYTE4(v338) = IMSCallManager::sendCallEndRequest(v104, v259, 0);
              v108 = v107;
              goto LABEL_367;
            case 9:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v300[0] = 0;
              v303 = 0;
              v100 = ims::debug(&v233, v300);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v100);
              v101 = ImsOutStream::operator<<(v100, " transferred to another device");
              (*(*v101 + 64))(v101, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v101[17] = 0;
              if (v303 == 1 && v302 < 0)
              {
                operator delete(v301);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonTransferredToOtherDevice", 0x8000100, &v233);
              goto LABEL_335;
            case 11:
            case 12:
            case 13:
            case 14:
            case 29:
              if (v18 != 11 || !v11)
              {
                goto LABEL_114;
              }

              (*(*v326 + 184))(&v233);
              v19 = SipStack::prefs(v233);
              v20 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v19) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
              if (*(&v233 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v233 + 1));
              }

              if (v20)
              {
                std::string::basic_string[abi:ne200100]<0>(&v233, "call");
                v276[0] = 0;
                v279 = 0;
                v37 = ims::debug(&v233, v276);
                v38 = ImsOutStream::operator<<(v37, "Network error resulting in redial over LTE with ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v38);
                (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v38[17] = 0;
                if (v279 == 1 && v278 < 0)
                {
                  operator delete(v277);
                }

                if (SBYTE7(v234) < 0)
                {
                  operator delete(v233);
                }

                ims::CFString::asString(@"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100, &v233);
              }

              else
              {
LABEL_114:
                std::string::basic_string[abi:ne200100]<0>(&v233, "call");
                v272[0] = 0;
                v275 = 0;
                v39 = ims::debug(&v233, v272);
                v40 = ImsOutStream::operator<<(v39, "Network error resulting in redial with ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v40);
                (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v40[17] = 0;
                if (v275 == 1 && v274 < 0)
                {
                  operator delete(v273);
                }

                if (SBYTE7(v234) < 0)
                {
                  operator delete(v233);
                }

                ims::CFString::asString(@"kCallDisconnectionReasonNetworkError", 0x8000100, &v233);
              }

              goto LABEL_335;
            case 15:
              v258 = 0;
              v256 = 0u;
              v257 = 0u;
              v254 = 0u;
              v255 = 0u;
              v252 = 0u;
              v253 = 0u;
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v246 = 0u;
              v247 = 0u;
              v244 = 0u;
              v245 = 0u;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v233 = 0u;
              SipUri::SipUri(&v233);
              std::string::basic_string[abi:ne200100]<0>(v228, "call");
              v229[0] = 0;
              v232 = 0;
              v91 = ims::debug(v228, v229);
              v92 = ImsOutStream::operator<<(v91, "Call to ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v92);
              v93 = ImsOutStream::operator<<(v92, " requires emergency session");
              (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v93[17] = 0;
              if (v232 == 1 && v231 < 0)
              {
                operator delete(v230);
              }

              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              v94 = **a2;
              if (v95)
              {
                v96 = v95;
                SipUri::SipUri(v228, (v95 + 592));
                SipUri::operator=(&v233, v228);
                SipUri::~SipUri(v228);
                v97 = v96[1000];
              }

              else
              {
                v97 = 0;
              }

              v128 = v324;
              v129 = this[1].__r_.__value_.__r.__words[2];
              v227[0] = this[1].__r_.__value_.__l.__size_;
              if (!v129 || (v130 = std::__shared_weak_count::lock(v129), (v227[1] = v130) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v131 = v130;
              BYTE4(v338) = IMSCallManager::sendCallEndRequest(v128, v227, 1);
              std::__shared_weak_count::__release_shared[abi:ne200100](v131);
              IMSCallInfo::uuid(v225, this);
              IMSCallManager::sendEmergencySessionRequiredNotification(v128, v225, &v233, v97 & 1);
              v225[0] = &unk_1F5EBEE78;
              if (v226 < 0)
              {
                operator delete(v225[1]);
              }

              SipUri::~SipUri(&v233);
              goto LABEL_372;
            case 16:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v213[0] = 0;
              v216 = 0;
              v111 = ims::debug(&v233, v213);
              v112 = ImsOutStream::operator<<(v111, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v112);
              v113 = ImsOutStream::operator<<(v112, " due to ");
              v114 = *(a2 + 8);
              if (v114 <= 37)
              {
                v115 = (reasonStrings + 24 * v114);
              }

              else
              {
                v115 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v115);
              (*(*v113 + 40))(v113, v228);
              (*(*v113 + 64))(v113, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v113[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v216 == 1 && v215 < 0)
              {
                operator delete(v214);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonForbidden", 0x8000100, &v233);
              goto LABEL_335;
            case 17:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v221[0] = 0;
              v224 = 0;
              v109 = ims::debug(&v233, v221);
              v110 = ImsOutStream::operator<<(v109, "INVITE timed out to ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v110);
              (*(*v110 + 64))(v110, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v110[17] = 0;
              if (v224 == 1 && v223 < 0)
              {
                operator delete(v222);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonTimeout", 0x8000100, &v233);
              goto LABEL_303;
            case 19:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v209[0] = 0;
              v212 = 0;
              v41 = ims::debug(&v233, v209);
              v42 = ImsOutStream::operator<<(v41, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v42);
              v43 = ImsOutStream::operator<<(v42, " due to ");
              v44 = *(a2 + 8);
              if (v44 <= 37)
              {
                v45 = (reasonStrings + 24 * v44);
              }

              else
              {
                v45 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v45);
              (*(*v43 + 40))(v43, v228);
              (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v43[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v212 == 1 && v211 < 0)
              {
                operator delete(v210);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonMediaError", 0x8000100, &v233);
              goto LABEL_303;
            case 20:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v205[0] = 0;
              v208 = 0;
              v67 = ims::debug(&v233, v205);
              v68 = ImsOutStream::operator<<(v67, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v68);
              v69 = ImsOutStream::operator<<(v68, " due to ");
              v70 = *(a2 + 8);
              if (v70 <= 37)
              {
                v71 = (reasonStrings + 24 * v70);
              }

              else
              {
                v71 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v71);
              (*(*v69 + 40))(v69, v228);
              (*(*v69 + 64))(v69, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v69[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v208 == 1 && v207 < 0)
              {
                operator delete(v206);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonMediaTimeout", 0x8000100, &v233);
              goto LABEL_303;
            case 21:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v201[0] = 0;
              v204 = 0;
              v116 = ims::debug(&v233, v201);
              v117 = ImsOutStream::operator<<(v116, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v117);
              v118 = ImsOutStream::operator<<(v117, " due to ");
              v119 = *(a2 + 8);
              if (v119 <= 37)
              {
                v120 = (reasonStrings + 24 * v119);
              }

              else
              {
                v120 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v120);
              (*(*v118 + 40))(v118, v228);
              (*(*v118 + 64))(v118, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v118[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v204 == 1 && v203 < 0)
              {
                operator delete(v202);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonMediaHeartbeatTimeout", 0x8000100, &v233);
              goto LABEL_303;
            case 22:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v197[0] = 0;
              v200 = 0;
              v46 = ims::debug(&v233, v197);
              v47 = ImsOutStream::operator<<(v46, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v47);
              v48 = ImsOutStream::operator<<(v47, " due to ");
              v49 = *(a2 + 8);
              if (v49 <= 37)
              {
                v50 = (reasonStrings + 24 * v49);
              }

              else
              {
                v50 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v50);
              (*(*v48 + 40))(v48, v228);
              (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v48[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v200 == 1 && v199 < 0)
              {
                operator delete(v198);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonLocalSocketError", 0x8000100, &v233);
              goto LABEL_303;
            case 24:
              if (!v11)
              {
                goto LABEL_329;
              }

              (*(*v326 + 184))(&v233);
              v63 = SipStack::prefs(v233);
              v64 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v63) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
              if (*(&v233 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v233 + 1));
              }

              if (v64)
              {
                std::string::basic_string[abi:ne200100]<0>(&v233, "call");
                v173[0] = 0;
                v176 = 0;
                v132 = ims::debug(&v233, v173);
                v133 = ImsOutStream::operator<<(v132, "Call to ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v133);
                v134 = ImsOutStream::operator<<(v133, " requires redial over LTE due to LocalQosTimeout");
                (*(*v134 + 64))(v134, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v134[17] = 0;
                if (v176 == 1 && v175 < 0)
                {
                  operator delete(v174);
                }

                if (SBYTE7(v234) < 0)
                {
                  operator delete(v233);
                }

                ims::CFString::asString(@"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100, &v233);
              }

              else
              {
LABEL_329:
                std::string::basic_string[abi:ne200100]<0>(&v233, "call");
                v169[0] = 0;
                v172 = 0;
                v135 = ims::debug(&v233, v169);
                v136 = ImsOutStream::operator<<(v135, "Disconnected from ");
                (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v136);
                v137 = ImsOutStream::operator<<(v136, " as in the dedault case due to LocalQosTimeout");
                (*(*v137 + 64))(v137, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v137[17] = 0;
                if (v172 == 1 && v171 < 0)
                {
                  operator delete(v170);
                }

                if (SBYTE7(v234) < 0)
                {
                  operator delete(v233);
                }

                ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v233);
              }

              goto LABEL_335;
            case 31:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v296[0] = 0;
              v299 = 0;
              v56 = ims::debug(&v233, v296);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v56);
              v57 = ImsOutStream::operator<<(v56, " failed: we cannot support emergency calls in this location");
              (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v57[17] = 0;
              if (v299 == 1 && v298 < 0)
              {
                operator delete(v297);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonNoEmergencyCallLocation", 0x8000100, &v233);
              goto LABEL_335;
            case 32:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v193[0] = 0;
              v196 = 0;
              v82 = ims::debug(&v233, v193);
              v83 = ImsOutStream::operator<<(v82, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v83);
              v84 = ImsOutStream::operator<<(v83, " due to ");
              v85 = *(a2 + 8);
              if (v85 <= 37)
              {
                v86 = (reasonStrings + 24 * v85);
              }

              else
              {
                v86 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v86);
              (*(*v84 + 40))(v84, v228);
              (*(*v84 + 64))(v84, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v84[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v196 == 1 && v195 < 0)
              {
                operator delete(v194);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonAudioUnit", 0x8000100, &v233);
              goto LABEL_303;
            case 33:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v189[0] = 0;
              v192 = 0;
              v51 = ims::debug(&v233, v189);
              v52 = ImsOutStream::operator<<(v51, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v52);
              v53 = ImsOutStream::operator<<(v52, " due to ");
              v54 = *(a2 + 8);
              if (v54 <= 37)
              {
                v55 = (reasonStrings + 24 * v54);
              }

              else
              {
                v55 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v55);
              (*(*v53 + 40))(v53, v228);
              (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v53[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v192 == 1 && v191 < 0)
              {
                operator delete(v190);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonAVConferencedCrash", 0x8000100, &v233);
              goto LABEL_303;
            case 34:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v264[0] = 0;
              v267 = 0;
              v126 = ims::debug(&v233, v264);
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v126);
              v127 = ImsOutStream::operator<<(v126, " Declined, locally busy.");
              (*(*v127 + 64))(v127, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v127[17] = 0;
              if (v267 == 1 && v266 < 0)
              {
                operator delete(v265);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonLocalBusy", 0x8000100, &v233);
              goto LABEL_335;
            case 35:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v185[0] = 0;
              v188 = 0;
              v121 = ims::debug(&v233, v185);
              v122 = ImsOutStream::operator<<(v121, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v122);
              v123 = ImsOutStream::operator<<(v122, " due to ");
              v124 = *(a2 + 8);
              if (v124 <= 37)
              {
                v125 = (reasonStrings + 24 * v124);
              }

              else
              {
                v125 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v125);
              (*(*v123 + 40))(v123, v228);
              (*(*v123 + 64))(v123, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v123[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v188 == 1 && v187 < 0)
              {
                operator delete(v186);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kIMSCallDisconnectionReasonBasebandCrash", 0x8000100, &v233);
              goto LABEL_303;
            case 36:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v181[0] = 0;
              v184 = 0;
              v58 = ims::debug(&v233, v181);
              v59 = ImsOutStream::operator<<(v58, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v59);
              v60 = ImsOutStream::operator<<(v59, " due to ");
              v61 = *(a2 + 8);
              if (v61 <= 37)
              {
                v62 = (reasonStrings + 24 * v61);
              }

              else
              {
                v62 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v62);
              (*(*v60 + 40))(v60, v228);
              (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v60[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v184 == 1 && v183 < 0)
              {
                operator delete(v182);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonRequiresCSFB", 0x8000100, &v233);
              if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v319.__r_.__value_.__l.__data_);
              }

              *&v319.__r_.__value_.__l.__data_ = v233;
              v319.__r_.__value_.__r.__words[2] = v234;
              LOBYTE(v335) = 1;
              goto LABEL_306;
            case 37:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v177[0] = 0;
              v180 = 0;
              v72 = ims::debug(&v233, v177);
              v73 = ImsOutStream::operator<<(v72, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v73);
              v74 = ImsOutStream::operator<<(v73, " due to ");
              v75 = *(a2 + 8);
              if (v75 <= 37)
              {
                v76 = (reasonStrings + 24 * v75);
              }

              else
              {
                v76 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v76);
              (*(*v74 + 40))(v74, v228);
              (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v74[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v180 == 1 && v179 < 0)
              {
                operator delete(v178);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonRequiresRedial", 0x8000100, &v233);
LABEL_303:
              if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v319.__r_.__value_.__l.__data_);
              }

              *&v319.__r_.__value_.__l.__data_ = v233;
              v319.__r_.__value_.__r.__words[2] = v234;
LABEL_306:
              BYTE2(v335) = 1;
              break;
            default:
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v165[0] = 0;
              v168 = 0;
              v77 = ims::debug(&v233, v165);
              v78 = ImsOutStream::operator<<(v77, "Disconnected from ");
              (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v78);
              v79 = ImsOutStream::operator<<(v78, " due to ");
              v80 = *(a2 + 8);
              if (v80 <= 37)
              {
                v81 = (reasonStrings + 24 * v80);
              }

              else
              {
                v81 = (reasonStrings + 240);
              }

              LoggableString::LoggableString(v228, v81);
              (*(*v79 + 40))(v79, v228);
              (*(*v79 + 64))(v79, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v79[17] = 0;
              if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v228[0].__r_.__value_.__l.__data_);
              }

              if (v168 == 1 && v167 < 0)
              {
                operator delete(v166);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              ims::CFString::asString(@"kCallDisconnectionReasonUnknownError", 0x8000100, &v233);
LABEL_335:
              if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v319.__r_.__value_.__l.__data_);
              }

              *&v319.__r_.__value_.__l.__data_ = v233;
              v319.__r_.__value_.__r.__words[2] = v234;
              break;
          }

          if (*(a2 + 148) == 1 && *(this[6].__r_.__value_.__r.__words[2] + 552))
          {
            IMSCallInfo::stack(this, &v233);
            isNR = ims::AccessNetwork::isNR((v233 + 3432));
            if (*(&v233 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v233 + 1));
            }

            if (isNR)
            {
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v153[0] = 0;
              v156 = 0;
              v139 = ims::debug(&v233, v153);
              v140 = ImsOutStream::operator<<(v139, "Anonymous redial requested for NR emergency call.  Doing EPS fallback instead.");
              (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v140[17] = 0;
              if (v156 == 1 && v155 < 0)
              {
                operator delete(v154);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v233, "call");
              v161[0] = 0;
              v164 = 0;
              v141 = ims::debug(&v233, v161);
              v142 = ImsOutStream::operator<<(v141, "Anonymous redial is set for this call, attempting new emergency call.");
              (*(*v142 + 64))(v142, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v142[17] = 0;
              if (v164 == 1 && v163 < 0)
              {
                operator delete(v162);
              }

              if (SBYTE7(v234) < 0)
              {
                operator delete(v233);
              }

              v233 = 0uLL;
              v143 = v326;
              data = this[7].__r_.__value_.__l.__data_;
              v159 = this[6].__r_.__value_.__r.__words[2];
              v160 = data;
              if (data)
              {
                atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v157 = 0;
              v158 = 0;
              BambiClient::initializeRedial(v143, &v159, &v157, &v233);
              if (v158)
              {
                std::__shared_weak_count::__release_weak(v158);
              }

              if (v160)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v160);
              }

              v145 = v233;
              if (v233)
              {
                v146 = this[6].__r_.__value_.__r.__words[2];
                v147 = *(v146 + 432);
                *(v146 + 424) = 0;
                *(v146 + 432) = 0;
                if (v147)
                {
                  std::__shared_weak_count::__release_weak(v147);
                  v145 = v233;
                }

                v148 = *(&v233 + 1);
                if (*(&v233 + 1))
                {
                  atomic_fetch_add_explicit((*(&v233 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v149 = this[7].__r_.__value_.__l.__data_;
                this[6].__r_.__value_.__r.__words[2] = v145;
                this[7].__r_.__value_.__r.__words[0] = v148;
                if (v149)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v149);
                }

                this[25].__r_.__value_.__s.__data_[6] = 1;
                this[25].__r_.__value_.__s.__data_[3] = 0;
                v108 = *(&v233 + 1);
                if (*(&v233 + 1))
                {
LABEL_367:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v108);
                }

                goto LABEL_372;
              }

              if (*(&v233 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v233 + 1));
              }
            }
          }

          v150 = v324;
          IMSCallInfo::uuid(v151, this);
          IMSCallManager::sendCallDisconnectionNotification(v150, v151, &v319, &v335);
          v151[0] = &unk_1F5EBEE78;
          if (v152 < 0)
          {
            operator delete(v151[1]);
          }

LABEL_372:
          if ((SHIBYTE(v319.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_375;
          }

          v24 = v319.__r_.__value_.__r.__words[0];
          goto LABEL_374;
        }
      }
    }

LABEL_35:
    v11 = 0;
    goto LABEL_36;
  }

  if (v335 != 1)
  {
    v11 = 1;
    goto LABEL_40;
  }

  v233 = 0uLL;
  *&v234 = 0;
LABEL_38:
  (*(*v326 + 184))(v228);
  v15 = SipStack::prefs(v228[0].__r_.__value_.__l.__data_);
  v16 = ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(v15) && SLODWORD(this[25].__r_.__value_.__r.__words[1]) < 3;
  if (v228[0].__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v228[0].__r_.__value_.__l.__size_);
  }

  if (v16)
  {
    std::string::basic_string[abi:ne200100]<0>(v228, "call");
    v315[0] = 0;
    v318 = 0;
    v21 = ims::debug(v228, v315);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Call to ", 8);
    *(v21 + 17) = 0;
    (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " requires redial over LTE", 25);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v318 == 1 && v317 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228[0].__r_.__value_.__l.__data_);
    }

    ims::CFString::asString(@"kCallDisconnectionReasonRequiresRedialOverLteOnly", 0x8000100, v228);
    goto LABEL_62;
  }

LABEL_56:
  std::string::basic_string[abi:ne200100]<0>(v228, "call");
  v311[0] = 0;
  v314 = 0;
  v22 = ims::debug(v228, v311);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Call to ", 8);
  *(v22 + 17) = 0;
  (*(*(this[6].__r_.__value_.__r.__words[2] + 1080) + 40))(this[6].__r_.__value_.__r.__words[2] + 1080, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " requires CS fallback", 21);
  *(v22 + 17) = 0;
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  if (v314 == 1 && v313 < 0)
  {
    operator delete(v312);
  }

  if (SHIBYTE(v228[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228[0].__r_.__value_.__l.__data_);
  }

  ims::CFString::asString(@"kCallDisconnectionReasonRequiresCSFB", 0x8000100, v228);
LABEL_62:
  if (SBYTE7(v234) < 0)
  {
    operator delete(v233);
  }

  v233 = *&v228[0].__r_.__value_.__l.__data_;
  *&v234 = *(&v228[0].__r_.__value_.__l + 2);
  BYTE2(v335) = 1;
  v23 = v324;
  IMSCallInfo::uuid(v309, this);
  IMSCallManager::sendCallDisconnectionNotification(v23, v309, &v233, &v335);
  v309[0] = &unk_1F5EBEE78;
  if (v310 < 0)
  {
    operator delete(v309[1]);
  }

  if (SBYTE7(v234) < 0)
  {
    v24 = v233;
LABEL_374:
    operator delete(v24);
  }

LABEL_375:
  if (v325)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v325);
  }

  if (v327)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v327);
  }

  if (v329)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v329);
  }

  if (SHIBYTE(v332) < 0)
  {
    operator delete(*(&v331 + 1));
  }

  if (SBYTE7(v331) < 0)
  {
    operator delete(v330);
  }

  if (SHIBYTE(v341) < 0)
  {
    operator delete(*(&v340 + 1));
  }

  if (SBYTE7(v340) < 0)
  {
    operator delete(v339);
  }

  if (SHIBYTE(v337) < 0)
  {
    v8 = v336;
    goto LABEL_391;
  }

LABEL_392:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D18730(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xB07]) < 0)
  {
    operator delete(STACK[0xAF0]);
  }

  if (STACK[0xB48])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB48]);
  }

  if (STACK[0xB58])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB58]);
  }

  if (STACK[0xB68])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0xB68]);
  }

  ims::AccessNetwork::~AccessNetwork(&STACK[0xB70]);
  ims::DisconnectInfo::~DisconnectInfo((v2 - 208));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1E4D18FCC()
{
  if (*(v0 - 72) == 1 && *(v0 - 81) < 0)
  {
    operator delete(*(v0 - 104));
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  JUMPOUT(0x1E4D18FB0);
}

void IMSCallInfo::handleMediaInitializedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  IPTelephonyManager::getCallManager(this, &v7);
  v4 = v7;
  IMSCallInfo::uuid(v5, this);
  (*(*v4 + 216))(v4, v5, @"kCallStatusMediaInitialized", *(this + 72), a2);
  v5[0] = &unk_1F5EBEE78;
  if (v6 < 0)
  {
    operator delete(v5[1]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D190CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleMediaActivationEvent(IMSCallInfo *this, BambiCallEvent *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
  v34[0] = 0;
  v37 = 0;
  v7 = ims::debug(v6, v34);
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
  v10 = (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  if (v40 < 0)
  {
    operator delete(v38);
  }

  if (*(this + 73))
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(&v38, "call");
    v30[0] = 0;
    v33 = 0;
    v12 = ims::debug(v11, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Ignore for conference participant.", 34);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v40 < 0)
    {
      operator delete(v38);
    }

    return;
  }

  *(this + 604) = a3;
  v38 = 0;
  v39 = 0;
  IPTelephonyManager::getCallManager(v10, &v38);
  v13 = *(a2 + 3);
  if (v13)
  {
    v14 = *(a2 + 2);
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = std::__shared_weak_count::lock(v13);
    v16 = v15;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(this + 20);
    if (v17 != v18)
    {
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      std::__shared_weak_count::__release_weak(v13);
      goto LABEL_40;
    }

    v19 = *(v18 + 408);
    if (v19)
    {
      v20 = SipSession::confirmed(v19);
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0;
      if (!v16)
      {
LABEL_29:
        std::__shared_weak_count::__release_weak(v13);
        if (v20)
        {
          v21 = v38;
          IMSCallInfo::uuid(v28, this);
          v22 = kIMSCallStatusMediaActive;
          if (!a3)
          {
            v22 = kIMSCallStatusMediaInactive;
          }

          (*(*v21 + 216))(v21, v28, *v22, *(this + 72), a2);
          v28[0] = &unk_1F5EBEE78;
          if (v29 < 0)
          {
            operator delete(v28[1]);
          }

          v23 = *(this + 21);
          v26 = *(this + 20);
          v27 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          IMSCallInfo::uuid(v24, this);
          (*(*v21 + 192))(v21, &v26, a3, v24);
          v24[0] = &unk_1F5EBEE78;
          if (v25 < 0)
          {
            operator delete(v24[1]);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        goto LABEL_40;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    goto LABEL_29;
  }

LABEL_40:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void sub_1E4D194BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v47 = *(v45 - 80);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionConfirmedEvent(IMSCallInfo *this, BambiCallSessionConfirmedEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v41, "call");
    v33[0] = 0;
    v36 = 0;
    v10 = ims::debug(v9, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Session confirmed with ", 23);
    *(v10 + 17) = 0;
    (*(*(v5 + 1080) + 40))(v5 + 1080, v10);
    v11 = (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v36 == 1 && v35 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v31 = 0;
    v32 = 0;
    IPTelephonyManager::getCallManager(v11, &v31);
    v12 = v31;
    IMSCallInfo::uuid(v29, this);
    (*(*v12 + 216))(v12, v29, @"kCallStatusMediaActive", *(this + 72), 0);
    v29[0] = &unk_1F5EBEE78;
    if (v30 < 0)
    {
      operator delete(v29[1]);
    }

    v13 = *(this + 21);
    v27 = *(this + 20);
    v28 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallInfo::uuid(v25, this);
    (*(*v12 + 192))(v12, &v27, 1, v25);
    v25[0] = &unk_1F5EBEE78;
    if (v26 < 0)
    {
      operator delete(v25[1]);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    IMSCallInfo::uuid(v23, this);
    (*(*v12 + 216))(v12, v23, @"kCallStatusActive", *(this + 72), a2);
    v23[0] = &unk_1F5EBEE78;
    if (v24 < 0)
    {
      operator delete(v23[1]);
    }

    v14 = *(this + 20);
    if (v14)
    {
      BambiCall::sendHoldResumeIndication(v14, (*(v14 + 120) & 0xFFFFFFFE) == 2);
    }

    if (*(this + 152) == 2 && *(this + 20))
    {
      IMSCallInfo::stack(this, &v21);
      if (*(v21 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *(v21 + 4432), *(v21 + 4440));
      }

      else
      {
        v41 = *(v21 + 4432);
      }

      IMSCallManager::sendCallStatusRequest(v15, &v41, 1, *(*(this + 20) + 1529), *(*(this + 20) + 552) != 0);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      *(this + 152) = 3;
    }

    v16 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v17 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v16);
    }

    v18 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v19 = *(this + 21);
    v20[0] = *(this + 20);
    v20[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logSessionConfirmedEvent(v17, v20, *(this + 72), *(this + 72));
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v41, "call");
    v37[0] = 0;
    v40 = 0;
    v8 = ims::debug(v7, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionConfirmedEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D19AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionAcknowledgedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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
    v8 = std::string::basic_string[abi:ne200100]<0>(&v22, "call");
    v14[0] = 0;
    v17 = 0;
    v9 = ims::debug(v8, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Session acknowledged with ", 26);
    *(v9 + 17) = 0;
    (*(*(v4 + 1080) + 40))(v4 + 1080, v9);
    v10 = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }

    IPTelephonyManager::getCallManager(v10, &v22);
    v11 = v22;
    IMSCallInfo::uuid(v12, this);
    (*(*v11 + 216))(v11, v12, @"kCallStatusAcknowledged", *(this + 72), 0);
    v12[0] = &unk_1F5EBEE78;
    if (v13 < 0)
    {
      operator delete(v12[1]);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v22, "call");
    v18[0] = 0;
    v21 = 0;
    v7 = ims::debug(v6, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo::handleSessionAcknowledgedEvent for an unknown call", 63);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D19F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 48);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionRequestedEvent(IMSCallInfo *this, BambiCallSessionRequestedEvent *a2)
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

  if (v4 != *(this + 20))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v57, "call");
    v53[0] = 0;
    v56 = 0;
    v7 = ims::debug(v6, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "IMSCallInfo::handleSessionRequestedEvent for an unknown call", 60);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v56 == 1 && v55 < 0)
    {
      operator delete(v54);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    goto LABEL_75;
  }

  v51 = 0;
  v52 = 0;
  IPTelephonyManager::getBambiClient(&v51);
  v49 = 0;
  v50 = 0;
  IPTelephonyManager::getCallManager(v8, &v49);
  v9 = v51;
  v10 = *(this + 21);
  v48[0] = *(this + 20);
  v48[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = BambiClient::unconfirmedCallsExcludingCall(v9, 0, v48);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v11)
  {
    v40 = 0;
    v41 = 0;
    (*(*v9 + 184))(&v40, v9, this + 136);
    if (v40)
    {
      v15 = SipStack::prefs(v40);
      v16 = ImsPrefs::MaxCallCount(v15);
    }

    else
    {
      v16 = 3;
    }

    v57[0] = 0;
    v57[1] = 0;
    if (BambiClient::callCountExcludingCall(v9, v57) <= v16)
    {
      v21 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v22 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global(v21);
      }

      v23 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v24 = *(this + 21);
      v33[0] = *(this + 20);
      v33[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSMetricsManager::logSessionRequestedEvent(v22, v33, *(this + 72), 0);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v25 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v26 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global(v25);
      }

      v27 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      if (*(v26 + 264) == 1)
      {
        isWifi = ims::AccessNetwork::isWifi((v40 + 3432));
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (!isWifi)
        {
          goto LABEL_69;
        }
      }

      else if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      v29 = *(this + 5);
      v32[0] = *(this + 4);
      if (!v29 || (v30 = std::__shared_weak_count::lock(v29), (v32[1] = v30) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v31 = v30;
      IMSCallManager::sendIncomingCallStatusNotification(v30, v32);
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v17 = std::string::basic_string[abi:ne200100]<0>(v57, "call");
      v36[0] = 0;
      v39 = 0;
      v18 = ims::info(v17, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "IMSCallInfo::handleSessionRequestedEvent when we already have ", 62);
      *(v18 + 17) = 0;
      v59[0] = 0;
      v59[1] = 0;
      v19 = BambiClient::callCountExcludingCall(v9, v59);
      MEMORY[0x1E6923370](*(v18 + 8), v19);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " calls. Declining.", 18);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v39 == 1 && v38 < 0)
      {
        operator delete(v37);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      v20 = v49;
      v34 = &unk_1F5EBEE78;
      if (*(this + 135) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(this + 14), *(this + 15));
      }

      else
      {
        v35 = *(this + 112);
      }

      std::string::basic_string[abi:ne200100]<0>(v57, "AlreadyOnMaxCalls");
      (*(*v20 + 56))(v20, &v34, v57);
      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      v34 = &unk_1F5EBEE78;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

LABEL_69:
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    goto LABEL_71;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v57, "call");
  v44[0] = 0;
  v47 = 0;
  v13 = ims::info(v12, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "IMSCallInfo::handleSessionRequestedEvent during an existing alerting call. Declining.", 85);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(__p);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  v14 = v49;
  v42 = &unk_1F5EBEE78;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *(this + 14), *(this + 15));
  }

  else
  {
    v43 = *(this + 112);
  }

  std::string::basic_string[abi:ne200100]<0>(v57, "EstablishingAnotherCall");
  (*(*v14 + 56))(v14, &v42, v57);
  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  v42 = &unk_1F5EBEE78;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

LABEL_71:
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

LABEL_75:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D1A670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  v52 = *(v50 - 208);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = *(v50 - 192);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void IMSCallManager::sendIncomingCallStatusNotification(uint64_t a1, IMSCallInfo **a2)
{
  memset(v97, 0, sizeof(v97));
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  memset(v89, 0, sizeof(v89));
  v2 = *a2;
  if (*a2)
  {
    v5 = *(v2 + 20);
    v4 = *(v2 + 21);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (v5)
      {
        v5 = *(*a2 + 20);
        v6 = *(*a2 + 21);
        memset(&__str, 0, sizeof(__str));
        if (v6)
        {
          v7 = 0;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v7 = 1;
        }

LABEL_14:
        BambiCall::remoteDisplayName(v5, &__str);
        if ((v7 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        memset(&__s, 0, sizeof(__s));
        v10 = *(*a2 + 20);
        v11 = *(*a2 + 21);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BambiCall::remoteDisplayNumber(v10, &__s);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v81 = 0;
        v82 = 0;
        IMSCallInfo::stack(*a2, &v81);
        if (v81)
        {
          v12 = SipStack::prefs(v81);
          if (ImsPrefs::EnableSenderName(v12))
          {
            ims::removeQuotes(&__str, &v76);
            std::string::basic_string[abi:ne200100]<0>(&v75, "\");
            ims::unescapeString(&v76, 0x5Cu, &v75, &v69);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            *__str.__r_.__value_.__l.__data_ = 0;
            __str.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __str.__r_.__value_.__s.__data_[0] = 0;
            *(&__str.__r_.__value_.__s + 23) = 0;
          }

          std::string::operator=(v89, &__str);
          v14 = *(*a2 + 20);
          v15 = *(*a2 + 21);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteDisplayNumber(v14, &v69);
          if (SHIBYTE(v89[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89[1].__r_.__value_.__l.__data_);
          }

          v89[1] = v69;
          *(&v69.__r_.__value_.__s + 23) = 0;
          v69.__r_.__value_.__s.__data_[0] = 0;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          v16 = *(*a2 + 20);
          v17 = *(*a2 + 21);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteDisplayCountryCode(v16, &v69);
          if (SBYTE7(v91) < 0)
          {
            operator delete(v90);
          }

          v90 = *&v69.__r_.__value_.__l.__data_;
          *&v91 = *(&v69.__r_.__value_.__l + 2);
          *(&v69.__r_.__value_.__s + 23) = 0;
          v69.__r_.__value_.__s.__data_[0] = 0;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v18 = *(*a2 + 20);
          v19 = *(*a2 + 21);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::operator=((&v91 + 8), v18 + 21);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = *(*a2 + 20);
          v21 = *(*a2 + 21);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            IsPrivate = BambiCall::senderIsPrivate(v20);
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            if (IsPrivate)
            {
              goto LABEL_54;
            }
          }

          else if (BambiCall::senderIsPrivate(v20))
          {
LABEL_54:
            LOBYTE(v93) = 1;
            std::string::basic_string[abi:ne200100]<0>(&v76, "call");
            v71[0] = 0;
            v74 = 0;
            v23 = ims::debug(&v76, v71);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Incoming call ", 14);
            *(v23 + 17) = 0;
            IMSCallInfo::uuid(&v69, *a2);
            (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " from blocked number", 20);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
            if (SHIBYTE(v70) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__size_);
            }

            if (v74 == 1 && v73 < 0)
            {
              v24 = v72;
LABEL_73:
              operator delete(v24);
              goto LABEL_74;
            }

            goto LABEL_74;
          }

          std::string::basic_string[abi:ne200100]<0>(&v76, "call");
          v65[0] = 0;
          v68 = 0;
          v25 = ims::debug(&v76, v65);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Incoming call ", 14);
          *(v25 + 17) = 0;
          IMSCallInfo::uuid(&v69, *a2);
          (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " from ", 6);
          *(v25 + 17) = 0;
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__s.__r_.__value_.__l.__size_)
            {
              std::string::__init_copy_ctor_external(&v75, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
              goto LABEL_66;
            }
          }

          else if (*(&__s.__r_.__value_.__s + 23))
          {
            v75 = __s;
            goto LABEL_66;
          }

          std::string::basic_string[abi:ne200100]<0>(&v75, "Unknown number");
LABEL_66:
          (*(*v25 + 32))(v25, &v75);
          (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v25 + 17) = 0;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
          if (SHIBYTE(v70) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__size_);
          }

          if (v68 == 1 && v67 < 0)
          {
            v24 = v66;
            goto LABEL_73;
          }

LABEL_74:
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          memset(&v76, 0, sizeof(v76));
          v27 = &v76;
          std::string::basic_string[abi:ne200100](&v76, size + 1);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v76.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_s = &__s;
            }

            else
            {
              p_s = __s.__r_.__value_.__r.__words[0];
            }

            memmove(v27, p_s, size);
          }

          *(&v27->__r_.__value_.__l.__data_ + size) = 10;
          memset(&v75, 0, sizeof(v75));
          v29 = *(*a2 + 20);
          v30 = *(*a2 + 21);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v29 + 735) < 0)
          {
            std::string::__init_copy_ctor_external(&v75, *(v29 + 712), *(v29 + 720));
          }

          else
          {
            v75 = *(v29 + 712);
          }

          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v75.__r_.__value_.__l.__size_;
          }

          if (v31)
          {
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v75;
            }

            else
            {
              v32 = v75.__r_.__value_.__r.__words[0];
            }

            std::string::append(&v76, v32, v31);
          }

          std::string::operator=((&v93 + 8), &v76);
          v33 = *a2;
          BYTE1(v93) = *(*a2 + 72);
          v35 = *(v33 + 20);
          v34 = *(v33 + 21);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            v36 = *(v35 + 408);
            if (v36)
            {
              LODWORD(v36) = *(v36 + 1664);
            }

            LOBYTE(v95) = v36 & 1;
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            v35 = *(*a2 + 20);
            v37 = *(*a2 + 21);
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
              v38 = *(v35 + 408);
              if (v38)
              {
                LODWORD(v38) = *(v38 + 1668);
              }

              DWORD1(v95) = v38;
              std::__shared_weak_count::__release_shared[abi:ne200100](v37);
              goto LABEL_114;
            }
          }

          else
          {
            v39 = *(v35 + 408);
            if (v39)
            {
              LODWORD(v39) = *(v39 + 1664);
            }

            LOBYTE(v95) = v39 & 1;
          }

          v40 = *(v35 + 408);
          if (v40)
          {
            LODWORD(v40) = *(v40 + 1668);
          }

          DWORD1(v95) = v40;
LABEL_114:
          v41 = SipStack::prefs(v81);
          v42 = ImsPrefs::EnableBrandedCalling(v41);
          v43 = *a2;
          if (!v42)
          {
            goto LABEL_146;
          }

          v44 = *(v43 + 20);
          v45 = *(v43 + 21);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::remoteCompanyName(v44, &v69);
          v46 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v46 = v69.__r_.__value_.__l.__size_;
          }

          if (v46)
          {
            v48 = *(*a2 + 20);
            v47 = *(*a2 + 21);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v49 = *(v48 + 408);
            if (v49)
            {
              v50 = *(v49 + 1668) == 1;
              if (!v47)
              {
                goto LABEL_128;
              }

              goto LABEL_127;
            }

            v50 = 0;
            if (v47)
            {
LABEL_127:
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            }
          }

          else
          {
            v50 = 0;
          }

LABEL_128:
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          v43 = *a2;
          if (v50)
          {
            v51 = *(v43 + 20);
            v52 = *(v43 + 21);
            if (v52)
            {
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCall::remoteCompanyName(v51, &v69);
            if (SHIBYTE(v89[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89[0].__r_.__value_.__l.__data_);
            }

            v89[0] = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v53 = *(*a2 + 20);
            v54 = *(*a2 + 21);
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCall::remoteImageUrl(v53, &v69);
            if (SHIBYTE(v97[1]) < 0)
            {
              operator delete(*(&v97[0] + 1));
            }

            *(v97 + 8) = v69;
            *(&v69.__r_.__value_.__s + 23) = 0;
            v69.__r_.__value_.__s.__data_[0] = 0;
            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

            v43 = *a2;
          }

LABEL_146:
          v55 = *(v43 + 20);
          v56 = *(v43 + 21);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiCall::spamInfo(v55, &v69);
          *(&v95 + 1) = v69.__r_.__value_.__r.__words[0];
          if (SBYTE7(v97[0]) < 0)
          {
            operator delete(v96);
          }

          v96 = *&v69.__r_.__value_.__r.__words[1];
          *&v97[0] = v70;
          HIBYTE(v70) = 0;
          v69.__r_.__value_.__s.__data_[8] = 0;
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          memset(&v64, 0, sizeof(v64));
          if (*(v81 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v64, *(v81 + 554), *(v81 + 555));
          }

          else
          {
            *&v64.__r_.__value_.__l.__data_ = *(v81 + 277);
            v64.__r_.__value_.__r.__words[2] = *(v81 + 556);
          }

          std::string::basic_string[abi:ne200100]<0>(v62, "audit");
          v58[0] = 0;
          v61 = 0;
          v57 = ims::debug(v62, v58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "Creating ims::Client handle for call ", 37);
          *(v57 + 17) = 0;
          IMSCallInfo::uuid(&v69, *a2);
          (*(v69.__r_.__value_.__r.__words[0] + 16))(&v69, v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " on stack ", 10);
          *(v57 + 17) = 0;
          (*(*v57 + 32))(v57, &v64);
          (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v57 + 17) = 0;
          v69.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
          if (SHIBYTE(v70) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__size_);
          }

          if (v61 == 1 && v60 < 0)
          {
            operator delete(v59);
          }

          if (v63 < 0)
          {
            operator delete(v62[0]);
          }

          IMSCallInfo::createCallHandle(*a2);
        }

        std::string::basic_string[abi:ne200100]<0>(&v69, "legacy");
        v77[0] = 0;
        v80 = 0;
        v13 = ims::warn(&v69, v77);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to resolve sip stack for callid: ", 40);
        *(v13 + 17) = 0;
        MEMORY[0x1E6923340](*(v13 + 8), *(*a2 + 72));
        *(v13 + 17) = 0;
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        if (v80 == 1 && v79 < 0)
        {
          operator delete(v78);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          v9 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_169;
        }

        goto LABEL_170;
      }
    }

    else if (v5)
    {
      v6 = 0;
      memset(&__str, 0, sizeof(__str));
      v7 = 1;
      goto LABEL_14;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "call");
  v85[0] = 0;
  v88 = 0;
  v8 = ims::error(&v69, v85);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sendIncomingCallStatusNotification does not have a valid callInfo", 65);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v88 == 1 && v87 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v69.__r_.__value_.__r.__words[0];
LABEL_169:
    operator delete(v9);
  }

LABEL_170:
  if (SHIBYTE(v97[1]) < 0)
  {
    operator delete(*(&v97[0] + 1));
  }

  if (SBYTE7(v97[0]) < 0)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(*(&v93 + 1));
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(*(&v91 + 1));
  }

  if (SBYTE7(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v89[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89[0].__r_.__value_.__l.__data_);
  }
}

void sub_1E4D1B564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, void *a62, uint64_t a63)
{
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  ims::CallIncomingInfo::~CallIncomingInfo((v73 - 240));
  _Unwind_Resume(a1);
}

void sub_1E4D1B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 == 1 && a72 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    JUMPOUT(0x1E4D1B7F4);
  }

  JUMPOUT(0x1E4D1B7F8);
}

uint64_t IMSCallInfo::handleForceLTEFallbackEvent(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 104);

  return v2();
}

void IMSCallInfo::handleHoldIndicationEvent(IMSCallInfo *this, BambiCallHoldResumeIndicationEvent *a2)
{
  if (a2)
  {
    IMSCallInfo::stack(this, &v8);
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v10 = *(v8 + 4432);
    }

    v4 = IMSClientManager::delegateForStack(&v10.__r_.__value_.__l.__data_);
    IMSCallInfo::uuid(&v5, this);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    (*(*v4 + 208))(v4, &v7, *(a2 + 9), *(a2 + 8));
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D1B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleResumeIndicationEvent(IMSCallInfo *this, BambiCallHoldResumeIndicationEvent *a2)
{
  if (a2)
  {
    IMSCallInfo::stack(this, &v8);
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v10 = *(v8 + 4432);
    }

    v4 = IMSClientManager::delegateForStack(&v10.__r_.__value_.__l.__data_);
    IMSCallInfo::uuid(&v5, this);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    (*(*v4 + 200))(v4, &v7, *(a2 + 9), *(a2 + 8));
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4D1BBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionTerminatingEvent(IMSCallInfo *this, BambiCallSessionTerminatingEvent *a2)
{
  if (*(this + 603) == 1)
  {
    v7 = v2;
    v8 = v3;
    IPTelephonyManager::getCallManager(this, &v5);
    v4 = v6;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {

    IMSCallInfo::handleSessionTerminationEvent(this, a2);
  }
}

void IMSCallInfo::handleSessionTerminatedEvent(std::string *this, BambiCallSessionTerminatedEvent *a2)
{
  v4 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v5 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v4);
  }

  v6 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v8 = v5 + 240;
  for (i = *(v5 + 248); i != v8; i = *(i + 8))
  {
    v7 = (*(**(i + 16) + 80))(*(i + 16), a2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v18 = 0uLL;
  IPTelephonyManager::getCallManager(v7, &v18);
  if ((this[25].__r_.__value_.__s.__data_[3] & 1) == 0)
  {
    v10 = v18;
    IMSCallInfo::uuid(v16, this);
    (*(*v10 + 216))(v10, v16, @"kCallStatusMediaInactive", this[3].__r_.__value_.__s.__data_[0], 0);
    v16[0] = &unk_1F5EBEE78;
    if (v17 < 0)
    {
      operator delete(v16[1]);
    }

    data = this[7].__r_.__value_.__l.__data_;
    v14 = this[6].__r_.__value_.__r.__words[2];
    v15 = data;
    if (data)
    {
      atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallInfo::uuid(v12, this);
    (*(*v10 + 192))(v10, &v14, 0, v12);
    v12[0] = &unk_1F5EBEE78;
    if (v13 < 0)
    {
      operator delete(v12[1]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    IMSCallInfo::handleSessionTerminationEvent(this, a2);
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }
}

void IMSCallInfo::handleMetricOnlyEvent(std::__shared_weak_count **this, char **lpsrc)
{
  if ((lpsrc[1] & 0xFFFFFFFE) == 0xE)
  {
    v3 = **lpsrc;
    v5 = IMSCallInfo::sendSessionTerminationMetric(this, v4, 0);
    IPTelephonyManager::getCallManager(v5, &v11);
    v6 = v11;
    v7 = this[5];
    v10[0] = this[4];
    if (!v7 || (v8 = std::__shared_weak_count::lock(v7), (v10[1] = v8) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    IMSCallManager::sendCallEndRequest(v6, v10, 0);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E4D1C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t IMSCallInfo::sendSessionTerminationMetric(IMSCallInfo *this, char **a2, BOOL *a3)
{
  v6 = a2[3];
  if (v6)
  {
    v7 = a2[2];
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    if (!v8)
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (*(a2 + 144) == 1 && (*(a2 + 145) & 1) == 0)
  {
    IMSCallInfo::stack(this, &v33);
    if (v33)
    {
      IMSCallInfo::stack(this, &v31);
      v15 = *(v31 + 248);
      v16 = *(v31 + 256);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(SipUserAgent::config(v15) + 456) != 1 || v7 == 0;
      if (v17 || v7[1529] != 1)
      {
        v9 = 0;
      }

      else
      {
        IMSCallInfo::stack(this, &v29);
        v18 = *(v29 + 248);
        v19 = *(v29 + 256);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *(SipUserAgent::config(v18) + 912);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          v20 = *(SipUserAgent::config(v18) + 912);
        }

        v9 = v20 ^ 1;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      v9 = 0;
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v9 & 1;
  }

  v10 = **a2;
  if (v11)
  {
    v12 = v11;
    v13 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v14 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v13);
    }

    v21 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v22 = v14 + 240;
    for (i = *(v14 + 248); i != v22; i = *(i + 8))
    {
      (*(**(i + 16) + 80))(*(i + 16), v12);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v24 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v25 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v24);
  }

  v26 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v27 = IMSMetricsManager::logSessionTerminationEvent(v25, a2, *(this + 72), *(this + 72), v9 & 1);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v27;
}

void sub_1E4D1C3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::sendCallEndRequest(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v42, 0, sizeof(v42));
  IMSCallInfo::stack(*a2, &v39);
  if (*(v39 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(v39 + 554), *(v39 + 555));
  }

  else
  {
    v42 = *(v39 + 4432);
  }

  v6 = v40;
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v7 = *a2;
  v8 = *(*a2 + 160);
  v9 = *(*a2 + 168);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
  }

  if (v8)
  {
    v11 = *(v7 + 20);
    v10 = *(v7 + 21);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_26;
  }

  v12 = *(v7 + 73);
  v13 = *(v7 + 74);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v14 = *(*a2 + 584);
  v15 = *(*a2 + 592);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 216);
  if (v16)
  {
    v11 = *(v14 + 208);
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v16);
    if (!v10)
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v16);
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
LABEL_24:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_26:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    v17 = *(v11 + 1529);
    goto LABEL_38;
  }

  v18 = *a2;
  v19 = *(*a2 + 584);
  v20 = *(*a2 + 592);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *a2;
  }

  if (!v19)
  {
    v17 = *(v18 + 605);
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v21 = *(v18 + 73);
  v6 = *(v18 + 74);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *(v21 + 1312);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v20)
    {
      goto LABEL_38;
    }

LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_38;
  }

  v17 = *(v21 + 1312);
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_38:
  v22 = *a2;
  if ((*(*a2 + 608) | 4) == 4)
  {
    v23 = 0;
    if (!v10)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v11)
  {
    v25 = *(v11 + 552) != 0;
    if (a3)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v25 = 0;
    if (a3)
    {
      goto LABEL_78;
    }
  }

  if ((v17 ^ 1))
  {
    goto LABEL_78;
  }

  v26 = *(v22 + 20);
  v27 = *(v22 + 21);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      goto LABEL_78;
    }

    v26 = *(*a2 + 160);
    v28 = *(*a2 + 168);
    if (v28)
    {
      v29 = 0;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_58;
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_78;
    }

    v28 = 0;
  }

  v29 = 1;
LABEL_58:
  if (*(v26 + 464))
  {
    isNR = 0;
  }

  else
  {
    IMSCallInfo::stack(*a2, &v39);
    isNR = ims::AccessNetwork::isNR((v39 + 3432));
    v6 = v40;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  if ((v29 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (isNR)
    {
      goto LABEL_67;
    }

LABEL_78:
    IMSCallManager::sendCallStatusRequest(v6, &v42, 2, v17 & 1, v25);
    v23 = 1;
    goto LABEL_79;
  }

  if (!isNR)
  {
    goto LABEL_78;
  }

LABEL_67:
  std::string::basic_string[abi:ne200100]<0>(&v39, "call");
  v35[0] = 0;
  v38 = 0;
  v31 = ims::warn(&v39, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Not sending call status request for END due to call setup failure on NR", 71);
  *(v31 + 17) = 0;
  v32 = (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v31 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v39);
  }

  IMSCallManager::sendCallStatusRequest(v32, &v42, 4, v17 & 1, v25);
  v33 = *(a2 + 8);
  v34[0] = *a2;
  v34[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSCallManager::setEPSFallbackCall(a1, v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v23 = 0;
LABEL_79:
  *(*a2 + 608) = 4;
  if (v10)
  {
LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_41:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_1E4D1C898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((v35 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendEmergencySessionRequiredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
  v28[0] = 0;
  v31 = 0;
  v9 = ims::debug(v8, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Sending Call Status Changed notification: emergency session required for callid: ", 81);
  *(v9 + 17) = 0;
  (*(*a2 + 16))(a2, v9);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v26 = 0;
  v27 = 0;
  v24 = &unk_1F5EBEE78;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  IMSCallManager::callInfoForUuid(a1, &v24, &v26);
  v24 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v26;
  if (!v26)
  {
    goto LABEL_17;
  }

  IMSCallInfo::stack(v26, &v32);
  v11 = v32.__r_.__value_.__r.__words[0];
  if (v32.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32.__r_.__value_.__l.__size_);
  }

  if (v11)
  {
    memset(&v32, 0, sizeof(v32));
    IMSCallInfo::stack(v10, &v17);
    if (*(v17 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v17 + 554), *(v17 + 555));
    }

    else
    {
      v32 = *(v17 + 4432);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    SipUri::asString(a3, &v17);
    v15 = IMSClientManager::delegateForStack(&v32.__r_.__value_.__l.__data_);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v16 = *(a2 + 8);
    }

    (*(*v15 + 24))(v15, &v16, &v17, a4);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19) < 0)
    {
      v14 = v17;
      goto LABEL_30;
    }
  }

  else
  {
LABEL_17:
    v12 = std::string::basic_string[abi:ne200100]<0>(&v32, "call");
    v20[0] = 0;
    v23 = 0;
    v13 = ims::error(v12, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to issue emergency redial request - unknown stack id", 59);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      v14 = v21;
LABEL_30:
      operator delete(v14);
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1E4D1CC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleParticipantLeftConference(uint64_t a1, uint64_t a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "call");
  v39[0] = 0;
  v42 = 0;
  v6 = ims::debug(&__p, v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleParticipantLeftConferenceEvent", 36);
  *(v6 + 17) = 0;
  v7 = (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v32.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  v37 = 0;
  v38 = 0;
  IPTelephonyManager::getCallManager(v7, &v37);
  if ((a3 & 1) == 0)
  {
    __p = 65792;
    v33 = 0;
    memset(&v32, 0, sizeof(v32));
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = *(*a2 + 1316);
    if (v8 > 9)
    {
      if (v8 == 20)
      {
        LODWORD(v33) = 1026;
        std::string::__assign_external(&v32, "ConferenceParticipantLeft:MediaTimeout", 0x26uLL);
        v13 = v37;
        IMSCallInfo::uuid(v26, a1);
        ims::CFString::asString(@"kCallDisconnectionReasonMediaTimeout", 0x8000100, &v28);
        IMSCallManager::sendCallDisconnectionNotification(v13, v26, &v28, &__p);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v26[0] = &unk_1F5EBEE78;
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v12 = v26;
      }

      else
      {
        LODWORD(v33) = 1009;
        BYTE2(__p) = 0;
        std::string::__assign_external(&v32, "ConferenceParticipantLeft:NetworkError", 0x26uLL);
        v14 = v37;
        IMSCallInfo::uuid(v24, a1);
        ims::CFString::asString(@"kCallDisconnectionReasonNetworkError", 0x8000100, &v28);
        IMSCallManager::sendCallDisconnectionNotification(v14, v24, &v28, &__p);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v24[0] = &unk_1F5EBEE78;
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v12 = v24;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v9 = 1008;
      }

      else
      {
        v9 = 1003;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1007;
      }

      LODWORD(v33) = v10;
      std::string::__assign_external(&v32, "ConferenceParticipantLeft:Normal", 0x20uLL);
      v11 = v37;
      IMSCallInfo::uuid(v29, a1);
      ims::CFString::asString(@"kCallDisconnectionReasonNormal", 0x8000100, &v28);
      IMSCallManager::sendCallDisconnectionNotification(v11, v29, &v28, &__p);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v29[0] = &unk_1F5EBEE78;
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      v12 = v29;
    }

    operator delete(v12[1]);
LABEL_28:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(*(&v35 + 1));
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  v15 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v16 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v15);
  }

  v17 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v18 = v16 + 240;
  for (i = *(v16 + 248); i != v18; i = *(i + 8))
  {
    (*(**(i + 16) + 104))(*(i + 16), a1 + 80);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v20 = v37;
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  if (!v21)
  {
    v23 = 0;
LABEL_51:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = std::__shared_weak_count::lock(v21);
  if (!v23)
  {
    goto LABEL_51;
  }

  (*(*v20 + 224))(v20, &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_1E4D1D200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  ims::DisconnectInfo::~DisconnectInfo(&a39);
  v46 = *(v44 - 112);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleSessionActivatedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v42, "call");
    v34[0] = 0;
    v37 = 0;
    v10 = ims::debug(v9, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " activated", 10);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(__p);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v42, "call");
      v30[0] = 0;
      v33 = 0;
      v13 = ims::debug(v12, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusActive", 28);
      *(v13 + 17) = 0;
      v14 = (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      v28 = 0;
      v29 = 0;
      IPTelephonyManager::getCallManager(v14, &v28);
      v15 = v28;
      IMSCallInfo::uuid(v26, this);
      (*(*v15 + 216))(v15, v26, @"kCallStatusActive", *(this + 72), a2);
      v26[0] = &unk_1F5EBEE78;
      if (v27 < 0)
      {
        operator delete(v26[1]);
      }

      v16 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v17 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global(v16);
      }

      v18 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v19 = v17 + 240;
      for (i = *(v17 + 248); i != v19; i = *(i + 8))
      {
        (*(**(i + 16) + 96))(*(i + 16), a2, @"kCallStatusActive");
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v21 = *(this + 21);
      v24 = *(this + 20);
      v25 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v22, this);
      (*(*v15 + 192))(v15, &v24, 1, v22);
      v22[0] = &unk_1F5EBEE78;
      if (v23 < 0)
      {
        operator delete(v22[1]);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v42, "call");
    v38[0] = 0;
    v41 = 0;
    v8 = ims::debug(v7, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionActivatedEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1D86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleSessionHoldFailedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
    v27[0] = 0;
    v30 = 0;
    v10 = ims::debug(v9, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " hold failed!", 13);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
      v23[0] = 0;
      v26 = 0;
      v13 = ims::debug(v12, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusHoldFailed", 32);
      *(v13 + 17) = 0;
      v14 = (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v37 < 0)
      {
        operator delete(v35);
      }

      v35 = 0;
      v36 = 0;
      IPTelephonyManager::getCallManager(v14, &v35);
      v15 = v35;
      IMSCallInfo::uuid(v21, this);
      (*(*v15 + 216))(v15, v21, @"kCallStatusHoldFailed", *(this + 72), a2);
      v21[0] = &unk_1F5EBEE78;
      if (v22 < 0)
      {
        operator delete(v21[1]);
      }

      v16 = *(this + 21);
      v19 = *(this + 20);
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v17, this);
      (*(*v15 + 192))(v15, &v19, 1, v17);
      v17[0] = &unk_1F5EBEE78;
      if (v18 < 0)
      {
        operator delete(v17[1]);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
    v31[0] = 0;
    v34 = 0;
    v8 = ims::debug(v7, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionHoldFailedEvent for an unknown call", 61);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v47 = *(v45 - 64);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionResumeFailedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
    v27[0] = 0;
    v30 = 0;
    v10 = ims::debug(v9, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Call ", 5);
    *(v10 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " resume failed!", 15);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }

    v11 = *(*(this + 20) + 408);
    if (v11 && SipSession::confirmed(v11))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
      v23[0] = 0;
      v26 = 0;
      v13 = ims::debug(v12, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Sending kIMSCallStatusResumeFailed", 34);
      *(v13 + 17) = 0;
      v14 = (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v37 < 0)
      {
        operator delete(v35);
      }

      v35 = 0;
      v36 = 0;
      IPTelephonyManager::getCallManager(v14, &v35);
      v15 = v35;
      IMSCallInfo::uuid(v21, this);
      (*(*v15 + 216))(v15, v21, @"kCallStatusResumeFailed", *(this + 72), a2);
      v21[0] = &unk_1F5EBEE78;
      if (v22 < 0)
      {
        operator delete(v21[1]);
      }

      v16 = *(this + 21);
      v19 = *(this + 20);
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v17, this);
      (*(*v15 + 192))(v15, &v19, 0, v17);
      v17[0] = &unk_1F5EBEE78;
      if (v18 < 0)
      {
        operator delete(v17[1]);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v35, "call");
    v31[0] = 0;
    v34 = 0;
    v8 = ims::debug(v7, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionResumeFailedEvent for an unknown call", 63);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1E304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v47 = *(v45 - 64);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionLocalHeldEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v10 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v9);
    }

    v11 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v12 = v10 + 240;
    for (i = *(v10 + 248); i != v12; i = *(i + 8))
    {
      (*(**(i + 16) + 96))(*(i + 16), a2, @"kCallStatusInactive");
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v14 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v32[0] = 0;
    v35 = 0;
    v15 = ims::debug(v14, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Call ", 5);
    *(v15 + 17) = 0;
    (*(*(this + 13) + 16))(this + 104, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " deactivated", 12);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    v16 = *(*(this + 20) + 408);
    if (v16 && SipSession::confirmed(v16))
    {
      v17 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
      v28[0] = 0;
      v31 = 0;
      v18 = ims::debug(v17, v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Sending kIMSCallStatusInactive", 30);
      *(v18 + 17) = 0;
      v19 = (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v31 == 1 && v30 < 0)
      {
        operator delete(v29);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      v40 = 0uLL;
      IPTelephonyManager::getCallManager(v19, &v40);
      v20 = v40;
      IMSCallInfo::uuid(v26, this);
      (*(*v20 + 216))(v20, v26, @"kCallStatusInactive", *(this + 72), a2);
      v26[0] = &unk_1F5EBEE78;
      if (v27 < 0)
      {
        operator delete(v26[1]);
      }

      v21 = *(this + 21);
      v24 = *(this + 20);
      v25 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSCallInfo::uuid(v22, this);
      (*(*v20 + 192))(v20, &v24, 0, v22);
      v22[0] = &unk_1F5EBEE78;
      if (v23 < 0)
      {
        operator delete(v22[1]);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (*(&v40 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
      }
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v40, "call");
    v36[0] = 0;
    v39 = 0;
    v8 = ims::debug(v7, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleSessionLocalHeldEvent for an unknown call", 60);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1E904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v48 = *(v46 - 88);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleRingingEvent(std::__shared_weak_count **this, BambiCallProvisionalResponseEvent *a2)
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
    IPTelephonyManager::getCallManager(this, &v21);
    v9 = v21;
    IMSCallInfo::uuid(v15, this);
    (*(*v9 + 216))(v9, v15, @"kCallStatusRinging", *(this + 72), a2);
    v15[0] = &unk_1F5EBEE78;
    if (v16 < 0)
    {
      operator delete(v15[1]);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v10 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v11 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v10);
    }

    v12 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v13 = this[21];
    v14[0] = this[20];
    v14[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logRingingEvent(v11, v14, *(this + 72), *(this + 72));
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v21, "call");
    v17[0] = 0;
    v20 = 0;
    v8 = ims::debug(v7, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleRingingEvent for an unknown call", 51);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleLRBTEvent(IMSCallInfo *this, BambiCallEvent *a2, int a3)
{
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 2);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    if (!v8)
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(this, &v19);
    v11 = v19;
    IMSCallInfo::uuid(v13, this);
    v12 = kIMSCallStatusPlayLRBT;
    if (!a3)
    {
      v12 = kIMSCallStatusStopLRBT;
    }

    (*(*v11 + 216))(v11, v13, *v12, *(this + 72), a2);
    v13[0] = &unk_1F5EBEE78;
    if (v14 < 0)
    {
      operator delete(v13[1]);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v19, "call");
    v15[0] = 0;
    v18 = 0;
    v10 = ims::debug(v9, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "IMSCallInfo::handleRingingEvent for an unknown call", 51);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D1EF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextMediaDetectedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(this, &v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kIMSCallStatusTextMediaDetected", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTextMediaDetectedEvent for an unknown call", 61);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleTextMediaDeactivatedEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(this, &v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kIMSCallStatusTextMediaDeactivated", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTextMediaDeactivatedEvent for an unknown call", 64);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handleSessionProgressEvent(IMSCallInfo *this, BambiCallProvisionalResponseEvent *a2)
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

  if (v5 == *(this + 20))
  {
    v9 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v10 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v9);
    }

    v11 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v12 = *(a2 + 5);
    v19[0] = *(a2 + 4);
    v19[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 21);
    v18[0] = *(this + 20);
    v18[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSMetricsManager::logSessionProgress(v10, v19, v18, *(this + 72));
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    IPTelephonyManager::getCallManager(v14, &v24);
    v15 = v24;
    IMSCallInfo::uuid(v16, this);
    (*(*v15 + 216))(v15, v16, @"kCallStatusInProgress", *(this + 72), a2);
    v16[0] = &unk_1F5EBEE78;
    if (v17 < 0)
    {
      operator delete(v16[1]);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v24, "call");
    v20[0] = 0;
    v23 = 0;
    v8 = ims::debug(v7, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleInProgressEvent for an unknown call", 54);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1F7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void IMSCallInfo::handleTryingEvent(IMSCallInfo *this, BambiCallEvent *a2)
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

  if (v5 == *(this + 20))
  {
    IPTelephonyManager::getCallManager(this, &v16);
    v9 = v16;
    IMSCallInfo::uuid(v10, this);
    (*(*v9 + 216))(v9, v10, @"kCallStatusTrying", *(this + 72), a2);
    v10[0] = &unk_1F5EBEE78;
    if (v11 < 0)
    {
      operator delete(v10[1]);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v16, "call");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v7, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IMSCallInfo::handleTryingEvent for an unknown call", 50);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v16);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D1FA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallInfo::handlePreconditionsSatisfiedEvent(IMSCallInfo *this, BambiCallPreconditionsSatisfiedEvent *a2)
{
  IPTelephonyManager::getCallManager(this, &v3);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void IMSCallInfo::handleUnprocessedEvent(IMSCallInfo *this, BambiCallEvent *a2)
{
  IPTelephonyManager::getCallManager(this, &v3);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void IMSCallInfo::logIncomingPrack(uint64_t a1, uint64_t *a2)
{
  v4 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v5 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v4);
  }

  v6 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v7 = *a2;
  v8 = a2[1];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 168);
  v10[0] = *(a1 + 160);
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSMetricsManager::logIncomingPrack(v5, v11, v10, *(a1 + 72));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void IMSCallInfo::logPrackResponse(uint64_t a1, uint64_t *a2)
{
  v4 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v5 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v4);
  }

  v6 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v7 = *a2;
  v8 = a2[1];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 168);
  v10[0] = *(a1 + 160);
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSMetricsManager::logPrackResponse(v5, v11, v10, *(a1 + 72));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4D20070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69235B0](v24, v25);
  _Unwind_Resume(a1);
}

uint64_t IMSCallInfo::isEmergency(IMSCallInfo *this)
{
  if (*(this + 600))
  {
    goto LABEL_4;
  }

  v2 = *(this + 20);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2[69])
  {
LABEL_4:
    v3 = 1;
    return v3 & 1;
  }

  v4 = v2[48];
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  v6 = v5;
  if (v2[47])
  {
    v7 = *(this + 20);
    v8 = *(v7 + 384);
    if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
    {
      v3 = *(*(v7 + 376) + 296);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v3 = MEMORY[0x128];
    }
  }

  else
  {
    v3 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v3 & 1;
}

void IMSCallManager::IMSCallManager(IMSCallManager *this)
{
  *this = &unk_1F5EC7088;
  *(this + 1) = &unk_1F5EF7C00;
  ims::SharedLoggable<IMSCallManager>::SharedLoggable(this + 2, "call.mgr");
  *this = &unk_1F5EC6BD8;
  *(this + 1) = &unk_1F5EC6CD0;
  *(this + 2) = &unk_1F5EC6E08;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = &unk_1F5EBEE78;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = &unk_1F5EBEE78;
  *(this + 28) = 0;
  *(this + 62) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
}

void *ims::SharedLoggable<IMSCallManager>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<IMSCallManager,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC70B8;
  return a1;
}

void sub_1E4D20384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::~IMSCallManager(IMSCallManager *this)
{
  *this = &unk_1F5EC6BD8;
  *(this + 1) = &unk_1F5EC6CD0;
  *(this + 2) = &unk_1F5EC6E08;
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  *(this + 27) = &unk_1F5EBEE78;
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  *(this + 23) = &unk_1F5EBEE78;
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  v2 = *(this + 22);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(this + 88, *(this + 12));
  v4 = (this + 64);
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  MEMORY[0x1E69225A0](this + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 3);
}

{
  IMSCallManager::~IMSCallManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSCallManager::~IMSCallManager(IMSCallManager *this)
{
  IMSCallManager::~IMSCallManager((this - 8));
}

{
  IMSCallManager::~IMSCallManager((this - 16));
}

{
  IMSCallManager::~IMSCallManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSCallManager::~IMSCallManager((this - 16));

  JUMPOUT(0x1E69235B0);
}

uint64_t IMSCallManager::dumpState(IMSCallManager *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Active Lazuli Sessions (", 30);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 13));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 11);
  if (v4 != (this + 96))
  {
    do
    {
      LazuliSession::logSession(*(v4 + 10), a2);
      v5 = *(v4 + 1);
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
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 96));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Store-And-Forward Lazuli Sessions (", 41);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 16));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v8 = *(this + 14);
  if (v8 != (this + 120))
  {
    do
    {
      LazuliSession::logSession(*(v8 + 10), a2);
      v9 = *(v8 + 1);
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
          v10 = *(v8 + 2);
          v7 = *v10 == v8;
          v8 = v10;
        }

        while (!v7);
      }

      v8 = v10;
    }

    while (v10 != (this + 120));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "----- Group-Leave Lazuli Sessions (", 35);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 19));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") -----", 7);
  *(a2 + 17) = 0;
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v12 = *(this + 17);
  v13 = this + 144;
  if (v12 != v13)
  {
    do
    {
      result = LazuliSession::logSession(*(v12 + 10), a2);
      v14 = *(v12 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v12 + 2);
          v7 = *v15 == v12;
          v12 = v15;
        }

        while (!v7);
      }

      v12 = v15;
    }

    while (v15 != v13);
  }

  return result;
}

void IMSCallManager::delegateForIncomingCall(uint64_t a1, uint64_t *a2)
{
  memset(&v11[6], 0, 24);
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 384);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(v3 + 376);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        if (v6)
        {
          v7 = *a2;
          v8 = *(*a2 + 384);
          if (v8)
          {
            v9 = std::__shared_weak_count::lock(v8);
            if (v9)
            {
              v10 = *(v7 + 376);
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

          if (*(v10 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v12, *(v10 + 4432), *(v10 + 4440));
          }

          else
          {
            v12 = *(v10 + 4432);
          }

          *&v11[6] = v12;
          *(&v12.__r_.__value_.__s + 23) = 0;
          v12.__r_.__value_.__s.__data_[0] = 0;
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }
      }
    }
  }

  v11[4] = 0;
  v11[5] = 0;
  ImsUuid::generate(v11);
  operator new();
}

void sub_1E4D20AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void IMSCallManager::getInfoForActiveCall(IMSCallManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 65280;
  *(a2 + 16) = 0;
  v3 = a2 + 16;
  *(a2 + 8) = &unk_1F5EBEE78;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v5 == v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(v4 + v7);
    if (v9)
    {
      break;
    }

LABEL_7:
    ++v8;
    v7 += 16;
    if (v8 >= (v5 - v4) >> 4)
    {
      return;
    }
  }

  isActive = IMSCallInfo::isActive(v9);
  v4 = *(this + 8);
  v11 = *(v4 + v7);
  if ((isActive & 1) == 0 && (*(v11 + 604) & 1) == 0)
  {
    v5 = *(this + 9);
    goto LABEL_7;
  }

  v12 = *(v4 + v7 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    IMSCallInfo::uuid(v13, v11);
    if (*(a2 + 39) < 0)
    {
      operator delete(*v3);
    }

    *v3 = *&v13[8];
    *(v3 + 16) = v14;
    *(a2 + 1) = *(v11 + 72);
    *a2 = IMSCallInfo::isEmergency(v11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}