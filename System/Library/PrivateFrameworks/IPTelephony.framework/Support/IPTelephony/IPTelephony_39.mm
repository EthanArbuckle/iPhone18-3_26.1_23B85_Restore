void XcapNafServerInfo::handleHttpResponseFailure(uint64_t a1, uint64_t a2, const ImsResult *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 56);
      if (v8)
      {
        XcapSession::operationFailure(v8, a3);
        XcapSession::operationFailure(v8, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t XcapNafServerInfo::sendPutRequest(uint64_t a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, XcapServerInfo::kContentTypeHeaderName);
  v10 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 464, __p);
  std::string::operator=((v6 + 56), (a1 + 328));
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return XcapServerInfo::sendPutRequest(a1, a2, a3);
}

void sub_1E4F18C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *XcapNafServerInfo::_userAgent@<X0>(XcapNafServerInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = &XcapServerInfo::k3gppGbaUicc;
  if (*(this + 74))
  {
    v2 = &XcapServerInfo::k3gppGba;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, *v2);
}

void XcapNafServerInfo::httpVersion(XcapNafServerInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 423) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 50), *(this + 51));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 25);
    a2->__r_.__value_.__r.__words[2] = *(this + 52);
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void std::__shared_ptr_emplace<XcapNafServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,SipAuthResponse const*,unsigned long long)::make_shared_enabler,std::allocator<XcapNafServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,SipAuthResponse const*,unsigned long long)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDDA60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void XcapNafServerInfo::create(std::weak_ptr<XcapSession>,XcapConfig const&,SipAuthResponse const*,unsigned long long)::make_shared_enabler::~make_shared_enabler(XcapNafServerInfo *a1)
{
  XcapNafServerInfo::~XcapNafServerInfo(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t DeferredRegistration::name@<X0>(DeferredRegistration *this@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "deferred registration (services=", 32);
  v5 = *(this + 12);
  std::string::basic_string[abi:ne200100]<0>(&v15, ",");
  BambiServices::namesForServiceMask(v5, __p);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " reason=", 8);
  v10 = *(this + 1719);
  if (v10 >= 0)
  {
    v11 = this + 1696;
  }

  else
  {
    v11 = *(this + 212);
  }

  if (v10 >= 0)
  {
    v12 = *(this + 1719);
  }

  else
  {
    v12 = *(this + 213);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::ostringstream::str[abi:ne200100](&v19, a2);
  *&v19 = *MEMORY[0x1E69E54E8];
  *(&v20[-1] + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v24);
}

void sub_1E4F192BC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a14, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void DeferredRegistration::perform(DeferredRegistration *this, char a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7)
      {
        SipRegistrationClient::registerWithConfig(v7, this + 24, (this + 1696), a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipRegistrationClient::registerWithConfig(uint64_t a1, uint64_t a2, std::string *a3, char a4)
{
  __p[11] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 504);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *(a1 + 496);
      if (v10)
      {
        if (*(v10 + 320) == 2)
        {
          if (*a2 == *(a2 + 8))
          {
            memset(&__p[3], 0, 64);
            __p[0] = &unk_1F5EBDEF8;
            __p[1] = &_bambiDomain;
            LODWORD(__p[2]) = 1073741825;
            v19 = ImsResult::operator<<<char [41]>(__p, "registerWithConfig: no proxies specified");
            SipRegistrationClient::handleRegistrationError(a1, v19, -1, 1, 0);
          }

          else
          {
            if (*(v10 + 2166) != 1)
            {
              goto LABEL_13;
            }

            v11 = *(v10 + 280);
            v12 = *(v10 + 288);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            isIPSecAvailable = SipTransportLayer::isIPSecAvailable(v11);
            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            if (isIPSecAvailable)
            {
LABEL_13:
              if ((SipRegistrationClient::shouldDeferRegistration(a1) & 1) != 0 || (*(a1 + 704) | 4) != 5)
              {
                v21 = *(a1 + 248);
                v60 = *(a1 + 240);
                if (v21)
                {
                  v22 = std::__shared_weak_count::lock(v21);
                  v61 = v22;
                  if (v22)
                  {
                    v23 = v22;
                    SipRegistrationDeferralManager::deferAction((a1 + 4240), &v60, a2, a3);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v61 = 0;
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              if (a4 & 1) == 0 && (SipRegistrationClient::checkForRegHysteresis(a1, a2, a3))
              {
                goto LABEL_39;
              }

              SipRegistrationConfig::operator=(a1 + 1312, a2);
              if (*(a1 + 704) == 5)
              {
                v14 = *(a1 + 272);
                if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_39;
                }

                (*(*a1 + 80))(__p, a1);
                v15 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
                *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
                _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregisterWithConfig: still waiting for transport initialization", &buf, 0x16u);
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_39;
                }

                v16 = __p[0];
                goto LABEL_124;
              }

              v26 = *(a1 + 3872);
              if (v26)
              {
                SipTimerContainer::cancelTimer(v26, (a1 + 3888));
              }

              *(a1 + 3880) = 0;
              *(a1 + 620) = 0;
              *(a1 + 3856) = 0;
              std::string::operator=((a1 + 4128), a3);
              memset(&buf, 0, sizeof(buf));
              if (*(a1 + 2615) < 0)
              {
                std::string::__init_copy_ctor_external(&buf, *(a1 + 2592), *(a1 + 2600));
              }

              else
              {
                buf = *(a1 + 2592);
              }

              size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = buf.__r_.__value_.__l.__size_;
              }

              if (!size)
              {
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  buf.__r_.__value_.__l.__size_ = 7;
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                else
                {
                  *(&buf.__r_.__value_.__s + 23) = 7;
                  p_buf = &buf;
                }

                strcpy(p_buf, "default");
              }

              v29 = *(a1 + 3840);
              if (v29)
              {
                v30 = (*(*v29 + 376))(v29);
                v31 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, v30);
                v32 = *(a1 + 272);
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
                if (v31)
                {
                  if (v33)
                  {
                    (*(*a1 + 80))(v62, a1);
                    if (v65 >= 0)
                    {
                      v34 = v62;
                    }

                    else
                    {
                      v34 = *v62;
                    }

                    v35 = &buf;
                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v35 = buf.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__p[0]) = 141558531;
                    *(__p + 4) = 1752392040;
                    WORD2(__p[1]) = 2081;
                    *(&__p[1] + 6) = v34;
                    HIWORD(__p[2]) = 2080;
                    __p[3] = v35;
                    _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssticking with %s registration policy", __p, 0x20u);
                    if (v65 < 0)
                    {
                      operator delete(*v62);
                    }
                  }

                  if (*(a1 + 2660) == 1)
                  {
                    (*(**(a1 + 3840) + 568))(*(a1 + 3840));
                  }

LABEL_83:
                  (*(**(a1 + 3840) + 280))(*(a1 + 3840), a2);
                  v45 = *(a1 + 3840);
                  v46 = *(v45 + 112);
                  if (v46 == SipRegistrationMode::kModeDisabled)
                  {
                    v47 = *(a1 + 272);
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(__p, a1);
                      v48 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                      *v62 = 141558275;
                      *&v62[4] = 1752392040;
                      v63 = 2081;
                      v64 = v48;
                      _os_log_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sregisterWithConfig: registration is disabled", v62, 0x16u);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    memset(&__p[3], 0, 64);
                    __p[0] = &unk_1F5EBDEF8;
                    __p[1] = &_bambiDomain;
                    LODWORD(__p[2]) = 1073741826;
                    v49 = ImsResult::operator<<<char [25]>(__p, "registration is disabled");
                    SipRegistrationClient::handleRegistrationError(a1, v49, -1, 1, 0);
                    goto LABEL_91;
                  }

                  if (v46 == SipRegistrationMode::kModeDisabledCountry)
                  {
                    v50 = *(a1 + 272);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(__p, a1);
                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v51 = __p;
                      }

                      else
                      {
                        v51 = __p[0];
                      }

                      *v62 = 141558275;
                      *&v62[4] = 1752392040;
                      v63 = 2081;
                      v64 = v51;
                      _os_log_impl(&dword_1E4C3F000, v50, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sregisterWithConfig: registration is in 'disabled country' mode, if the upper level insists on registration anyway - we are clearing that mode and setting it to 'normal'", v62, 0x16u);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v45 = *(a1 + 3840);
                    }

                    SipRegistrationPolicy::setRegistrationMode(v45, &SipRegistrationMode::kModeNormal, 200);
                    v45 = *(a1 + 3840);
                  }

                  if (!(*(*v45 + 360))(v45))
                  {
LABEL_122:
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v16 = buf.__r_.__value_.__r.__words[0];
LABEL_124:
                      operator delete(v16);
                    }

LABEL_39:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
                    goto LABEL_40;
                  }

                  v52 = *(a1 + 272);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 80))(__p, a1);
                    v53 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                    *v62 = 141558275;
                    *&v62[4] = 1752392040;
                    v63 = 2081;
                    v64 = v53;
                    _os_log_impl(&dword_1E4C3F000, v52, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregisterWithConfig: setting to policy SipRegClientRegType::InitialReg", v62, 0x16u);
                    if (SHIBYTE(__p[2]) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  *(*(a1 + 3840) + 2372) = 1;
                  if (SipRegistrationClient::needsUacCheckOnRegistration(a1))
                  {
                    IPTelephonyManager::getBambiClient(__p);
                    v54 = *(__p[0] + 38);
                    if (__p[1])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
                    }

                    if (!v54)
                    {
                      memset(&__p[3], 0, 64);
                      __p[0] = &unk_1F5EBDEF8;
                      __p[1] = &_bambiDomain;
                      LODWORD(__p[2]) = 1073741826;
                      SipRegistrationClient::handleRegistrationError(a1, __p, -1, 1, 0);
                      goto LABEL_91;
                    }

                    if (*(v54 + 8) && *(v54 + 72) == 1)
                    {
                      v55 = *(a1 + 272);
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*a1 + 80))(__p, a1);
                        v56 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                        *v62 = 141558275;
                        *&v62[4] = 1752392040;
                        v63 = 2081;
                        v64 = v56;
                        _os_log_impl(&dword_1E4C3F000, v55, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInitialRegAccessCheck...", v62, 0x16u);
                        if (SHIBYTE(__p[2]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      IMSNasDeviceClient::reportCallStatus(v54, *(v10 + 4372), 0, 64, v10 + 3432, 1, 0, 0);
                      SipRegistrationClient::setClientState(a1, 2);
                      SipRegistrationClient::nasImsRegStart(a1);
                      v57 = *(a1 + 3840);
                      if (v57)
                      {
                        *(v57 + 424) = 0;
                        *(v57 + 432) = 0;
                      }

                      goto LABEL_122;
                    }

                    v58 = *(a1 + 272);
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(__p, a1);
                      v59 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                      *v62 = 141558275;
                      *&v62[4] = 1752392040;
                      v63 = 2081;
                      v64 = v59;
                      _os_log_impl(&dword_1E4C3F000, v58, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo Baseband for architecture or Baseband is currently not available: go straight to initializeTransport", v62, 0x16u);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    memset(__p, 0, 88);
                    SipRegistrationClient::initializeTransport(__p, a1);
                    if (!(*(*__p[1] + 24))(__p[1], LODWORD(__p[2])))
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    memset(__p, 0, 88);
                    SipRegistrationClient::initializeTransport(__p, a1);
                    if (!(*(*__p[1] + 24))(__p[1], LODWORD(__p[2])))
                    {
LABEL_91:
                      ImsResult::~ImsResult(__p);
                      goto LABEL_122;
                    }
                  }

                  SipRegistrationClient::handleRegistrationError(a1, __p, -1, 1, 0);
                  goto LABEL_91;
                }

                if (!v33)
                {
                  goto LABEL_82;
                }

                (*(*a1 + 80))(v62, a1);
                v39 = v65;
                v40 = *v62;
                v41 = (*(**(a1 + 3840) + 376))(*(a1 + 3840));
                v42 = v62;
                if (v39 < 0)
                {
                  v42 = v40;
                }

                if (*(v41 + 23) >= 0)
                {
                  v43 = v41;
                }

                else
                {
                  v43 = *v41;
                }

                v44 = (a2 + 1280);
                if (*(a2 + 1303) < 0)
                {
                  v44 = *(a2 + 1280);
                }

                LODWORD(__p[0]) = 141558787;
                *(__p + 4) = 1752392040;
                WORD2(__p[1]) = 2081;
                *(&__p[1] + 6) = v42;
                HIWORD(__p[2]) = 2080;
                __p[3] = v43;
                LOWORD(__p[4]) = 2080;
                *(&__p[4] + 2) = v44;
                _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration policy changed from %s to '%s'", __p, 0x2Au);
                if ((v65 & 0x80000000) == 0)
                {
LABEL_82:
                  SipRegistrationClient::setPolicy(a1, (a1 + 2592));
                  goto LABEL_83;
                }

                v38 = *v62;
              }

              else
              {
                v36 = *(a1 + 272);
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_82;
                }

                (*(*a1 + 80))(__p, a1);
                v37 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                *v62 = 141558275;
                *&v62[4] = 1752392040;
                v63 = 2081;
                v64 = v37;
                _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno existing registration policy", v62, 0x16u);
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_82;
                }

                v38 = __p[0];
              }

              operator delete(v38);
              goto LABEL_82;
            }

            memset(&__p[3], 0, 64);
            __p[0] = &unk_1F5EBDEF8;
            __p[1] = &_bambiDomain;
            LODWORD(__p[2]) = 1073741825;
            v24 = ImsResult::operator<<<char [55]>(__p, "registerWithConfig: IPSec is enabled but not available");
            SipRegistrationClient::handleRegistrationError(a1, v24, -1, 1, 0);
          }
        }

        else
        {
          memset(&__p[3], 0, 64);
          __p[0] = &unk_1F5EBDEF8;
          __p[1] = &_bambiDomain;
          LODWORD(__p[2]) = 1073741826;
          v18 = ImsResult::operator<<<char [45]>(__p, "registerWithConfig: stack is not initialized");
          SipRegistrationClient::handleRegistrationError(a1, v18, -1, 1, 0);
        }

        ImsResult::~ImsResult(__p);
        goto LABEL_39;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = *(a1 + 272);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(__p, a1);
    v20 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    goto LABEL_39;
  }

LABEL_40:
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1A204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void DeferredDeregistration::perform(DeferredDeregistration *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        SipRegistrationClient::deregister(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipRegistrationClient::deregister(SipRegistrationClient *this)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((*(*this + 288))(this))
  {
    v2 = *(this + 34);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(&__p, this);
      if (v44 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 141558275;
      v51 = 1752392040;
      v52 = 2081;
      v53 = p_p;
      _os_log_error_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sskipping deregistration of emergency client", buf, 0x16u);
      if (v44 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_28;
  }

  v4 = *(this + 63);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 62);
      if (v6)
      {
        if ((*(v6 + 320) & 0xFFFFFFFE) != 2)
        {
          v14 = *(this + 34);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            (*(*this + 80))(&__p, this);
            v33 = v44 >= 0 ? &__p : __p;
            *buf = 141558275;
            v51 = 1752392040;
            v52 = 2081;
            v53 = v33;
            _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sderegister called on uninitialized SIP stack", buf, 0x16u);
            if (v44 < 0)
            {
              operator delete(__p);
            }
          }

          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          __p = &unk_1F5EBDEF8;
          v42 = &_bambiDomain;
          v43 = 1073741826;
          v15 = ImsResult::operator<<<char [26]>(&__p, "SIP stack not initialized");
          SipRegistrationClient::handleRegistrationError(this, v15, -1, 1, 0);
          ImsResult::~ImsResult(&__p);
          goto LABEL_27;
        }

        SipTimerContainer::cancelTimer(this + 35, "RegHysteresisTimer");
        if (*(this + 176) == 1)
        {
          goto LABEL_13;
        }

        if (*(this + 3856) == 1)
        {
          if (*(v6 + 320) == 3)
          {
            v17 = *(this + 31);
            v40[0] = *(this + 30);
            if (!v17)
            {
              v36 = v40;
              goto LABEL_90;
            }

            v18 = std::__shared_weak_count::lock(v17);
            v40[1] = v18;
            if (!v18)
            {
              goto LABEL_91;
            }

            v19 = v18;
            SipRegistrationDeferralManager::deferAction(this + 1060);
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            v10 = *(this + 34);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_27;
            }

            (*(*this + 80))(&__p, this);
            if (v44 >= 0)
            {
              v20 = &__p;
            }

            else
            {
              v20 = __p;
            }

            *buf = 141558275;
            v51 = 1752392040;
            v52 = 2081;
            v53 = v20;
            v12 = "%{private, mask.hash}sdeferring new deregistration request until current deinit/deregistration completes";
          }

          else
          {
            if (*(this + 530))
            {
              v30 = *(this + 31);
              v39[0] = *(this + 30);
              if (v30)
              {
                v31 = std::__shared_weak_count::lock(v30);
                v39[1] = v31;
                if (v31)
                {
                  v32 = v31;
                  SipRegistrationDeferralManager::deferAction(this + 1060);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                  goto LABEL_27;
                }

                goto LABEL_91;
              }

              v36 = v39;
LABEL_90:
              v36[1] = 0;
              goto LABEL_91;
            }

            v10 = *(this + 34);
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_27;
            }

            (*(*this + 80))(&__p, this);
            if (v44 >= 0)
            {
              v34 = &__p;
            }

            else
            {
              v34 = __p;
            }

            *buf = 141558275;
            v51 = 1752392040;
            v52 = 2081;
            v53 = v34;
            v12 = "%{private, mask.hash}sderegister: already have a deregistration in progress, don't need to do it wice";
          }
        }

        else
        {
          SipRegistrationClient::cancelPendingRegistration(this);
          if (*(this + 176) == 5)
          {
LABEL_13:
            if (!SipRegistrationClient::shouldDeferRegistration(this))
            {
              SipRegistrationSubject::actionOnObservers(this + 184, &__block_literal_global_83);
              v22 = *(this + 484);
              if (v22)
              {
                SipTimerContainer::cancelTimer(v22, this + 162);
              }

              *(this + 970) = 0;
              v23 = *(this + 178);
              if (v23 != 3 && v23)
              {
                SipTimerContainer::cancelTimer(this + 35, _MergedGlobals_17);
                *(this + 664) = 0u;
                *(this + 3856) = 1;
                if (*(this + 4151) < 0)
                {
                  **(this + 516) = 0;
                  *(this + 517) = 0;
                }

                else
                {
                  *(this + 4128) = 0;
                  *(this + 4151) = 0;
                }

                v45 = 0uLL;
                v46 = 0uLL;
                v47 = 0uLL;
                v48 = 0uLL;
                __p = &unk_1F5EBDEF8;
                v42 = &_bambiDomain;
                v43 = 0;
                ImsResult::operator=(this + 4368, &__p);
                ImsResult::~ImsResult(&__p);
                *(this + 334) = 0;
                *(this + 792) = 0;
                if (*(this + 2688) == 1)
                {
                  __p = 0;
                  v42 = 0;
                  ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(&__p, *(this + 30), *(this + 31));
                  v35 = v42;
                  if (v42)
                  {
                    atomic_fetch_add_explicit(v42 + 2, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(v35 + 2, 1uLL, memory_order_relaxed);
                  }

                  v49 = 0;
                  operator new();
                }

                SipRegistrationClient::sendInitialRequest(this);
              }

              else
              {
                v24 = *(this + 34);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(&__p, this);
                  v25 = v44 >= 0 ? &__p : __p;
                  *buf = 141558275;
                  v51 = 1752392040;
                  v52 = 2081;
                  v53 = v25;
                  _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sderegister: not registered", buf, 0x16u);
                  if (v44 < 0)
                  {
                    operator delete(__p);
                  }
                }

                LODWORD(__p) = 0;
                SipRegistrationClient::setRegistrationState(this, &__p, 0);
                (*(*this + 176))(this, 3, 0, 0);
                SipRegistrationClient::setClientState(this, 1);
              }

              goto LABEL_27;
            }

            v7 = *(this + 31);
            v37[0] = *(this + 30);
            if (v7)
            {
              v8 = std::__shared_weak_count::lock(v7);
              v37[1] = v8;
              if (v8)
              {
                v9 = v8;
                SipRegistrationDeferralManager::deferAction(this + 1060);
                std::__shared_weak_count::__release_shared[abi:ne200100](v9);
                v10 = *(this + 34);
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(&__p, this);
                  if (v44 >= 0)
                  {
                    v11 = &__p;
                  }

                  else
                  {
                    v11 = __p;
                  }

                  *buf = 141558275;
                  v51 = 1752392040;
                  v52 = 2081;
                  v53 = v11;
                  v12 = "%{private, mask.hash}sdeferring deregistration while in limited connectivity";
                  goto LABEL_78;
                }

LABEL_27:
                std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                goto LABEL_28;
              }

LABEL_91:
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v36 = v37;
            goto LABEL_90;
          }

          v26 = *(this + 31);
          v38[0] = *(this + 30);
          if (!v26)
          {
            v36 = v38;
            goto LABEL_90;
          }

          v27 = std::__shared_weak_count::lock(v26);
          v38[1] = v27;
          if (!v27)
          {
            goto LABEL_91;
          }

          v28 = v27;
          SipRegistrationDeferralManager::deferAction(this + 1060);
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          v10 = *(this + 34);
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          (*(*this + 80))(&__p, this);
          if (v44 >= 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p;
          }

          *buf = 141558275;
          v51 = 1752392040;
          v52 = 2081;
          v53 = v29;
          v12 = "%{private, mask.hash}sdeferring deregistration request until current registration completes";
        }

LABEL_78:
        _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *(this + 34);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(&__p, this);
    v21 = v44 >= 0 ? &__p : __p;
    *buf = 141558275;
    v51 = 1752392040;
    v52 = 2081;
    v53 = v21;
    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v44 < 0)
    {
      operator delete(__p);
    }
  }

  if (v5)
  {
    goto LABEL_27;
  }

LABEL_28:
  v16 = *MEMORY[0x1E69E9840];
}

void DeferredDropRegistration::perform(DeferredDropRegistration *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        (*(*v5 + 176))(v5, *(this + 6), *(this + 4), 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void DeferredSubscription::perform(DeferredSubscription *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        (*(*v5 + 192))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

char **SipRegistrationDeferralManager::deferAction(_DWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = *a1;
  if (result)
  {
    v3 = **result;
    if (result)
    {
      ims::getStaticLoggerFor("sip.defer", &__p);
      v4 = v9;
      ctu::OsLogContext::~OsLogContext(&__p);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        (*(**a1 + 24))(&__p);
        v5 = v10 >= 0 ? &__p : __p;
        *buf = 136315138;
        v12 = v5;
        _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "Canceling deferred action %s", buf, 0xCu);
        if (v10 < 0)
        {
          operator delete(__p);
        }
      }

      result = *a1;
      *a1 = 0;
      if (result)
      {
        result = (*(*result + 1))(result);
      }
    }
  }

  else if (a1[2])
  {
    ims::getStaticLoggerFor("sip.defer", &__p);
    v6 = v9;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "Deferring new deregistration", &__p, 2u);
    }

    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void SipRegistrationDeferralManager::deferAction(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (!v7)
  {
    ims::getStaticLoggerFor("sip.defer", buf);
    v33 = *&v53[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a3 + 24);
      std::string::basic_string[abi:ne200100]<0>(v48, ",");
      BambiServices::namesForServiceMask(v34, v50);
      v35 = SHIBYTE(v51);
      v36 = v50[0];
      ims::AccessNetwork::logStr((a3 + 1008), v46);
      v37 = v50;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v47 >= 0)
      {
        v38 = v46;
      }

      else
      {
        v38 = v46[0];
      }

      if (*(a4 + 23) >= 0)
      {
        v39 = a4;
      }

      else
      {
        v39 = *a4;
      }

      *buf = 136315650;
      *v53 = v37;
      *&v53[8] = 2080;
      *&v53[10] = v38;
      v54 = 2080;
      v55 = v39;
      _os_log_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_DEFAULT, "Deferring new registration (%s, %s) with reason %s", buf, 0x20u);
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }
    }

    operator new();
  }

  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  (*(*v7 + 24))(v50);
  if (*(a3 + 24) != *(a1 + 2))
  {
    goto LABEL_39;
  }

  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a4[1];
  }

  if (v8 == 7)
  {
    v10 = v9 >= 0 ? a4 : *a4;
    v11 = *v10;
    v12 = *(v10 + 3);
    if (v11 == *"Refresh" && v12 == *"resh")
    {
      goto LABEL_39;
    }
  }

  v14 = *(a3 + 1031);
  if (v14 >= 0)
  {
    v15 = *(a3 + 1031);
  }

  else
  {
    v15 = *(a3 + 1016);
  }

  v16 = *(a1 + 39);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = a1[3];
  }

  if (v15 != v16)
  {
    goto LABEL_39;
  }

  v18 = v14 >= 0 ? (a3 + 1008) : *(a3 + 1008);
  v19 = v17 >= 0 ? a1 + 2 : a1[2];
  if (memcmp(v18, v19, v15))
  {
    goto LABEL_39;
  }

  v20 = *(a3 + 1055);
  if (v20 >= 0)
  {
    v21 = *(a3 + 1055);
  }

  else
  {
    v21 = *(a3 + 1040);
  }

  v22 = *(a1 + 63);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = a1[6];
  }

  if (v21 != v22 || (v20 >= 0 ? (v24 = (a3 + 1032)) : (v24 = *(a3 + 1032)), v23 >= 0 ? (v25 = a1 + 5) : (v25 = a1[5]), memcmp(v24, v25, v21)))
  {
LABEL_39:
    ims::getStaticLoggerFor("sip.defer", buf);
    v26 = *&v53[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a3 + 24);
      std::string::basic_string[abi:ne200100]<0>(v46, ",");
      BambiServices::namesForServiceMask(v27, v48);
      v28 = v49;
      v29 = v48[0];
      ims::AccessNetwork::logStr((a3 + 1008), __p);
      v30 = v48;
      if (v28 < 0)
      {
        v30 = v29;
      }

      if (v45 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if (*(a4 + 23) >= 0)
      {
        v32 = a4;
      }

      else
      {
        v32 = *a4;
      }

      *buf = 136315650;
      *v53 = v30;
      *&v53[8] = 2080;
      *&v53[10] = v31;
      v54 = 2080;
      v55 = v32;
      _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "Updating state with new registration (%s, %s) with reason %s", buf, 0x20u);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }
    }

    operator new();
  }

  ims::getStaticLoggerFor("sip.defer", buf);
  v41 = *&v53[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v50;
    if (v51 < 0)
    {
      v42 = v50[0];
    }

    *buf = 136315138;
    *v53 = v42;
    _os_log_impl(&dword_1E4C3F000, v41, OS_LOG_TYPE_DEFAULT, "Canceling deferred action %s", buf, 0xCu);
  }

  v43 = *a1;
  *a1 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1B710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SipRegistrationDeferralManager::deferAction(char ***a1)
{
  v1 = *a1;
  {
    ims::getStaticLoggerFor("sip.defer", v5);
    v4 = v5[1];
    ctu::OsLogContext::~OsLogContext(v5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "Deferring new registration subscription", v5, 2u);
    }

    operator new();
  }

  return result;
}

uint64_t SipRegistrationDeferralManager::cancel(uint64_t this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v1 = this;
    ims::getStaticLoggerFor("sip.defer", __p);
    v2 = __p[1];
    ctu::OsLogContext::~OsLogContext(__p);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(**v1 + 24))(__p);
      v3 = v6 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v8 = v3;
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "canceling %s", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    this = *v1;
    *v1 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

void *SipRegistrationDeferralManager::perform(void *this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = this;
    ims::getStaticLoggerFor("sip.defer", __p);
    v4 = __p[1];
    ctu::OsLogContext::~OsLogContext(__p);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(**v3 + 24))(__p);
      if (v9 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315138;
      v11 = v5;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "performing deferred action %s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *v3;
    *v3 = 0;
    (*(*v6 + 16))(v6, a2);
    this = (*(*v6 + 8))(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void SipRegistrationClient::SipRegistrationClient(uint64_t a1, std::__shared_weak_count **a2)
{
  *a1 = &unk_1F5EBED98;
  *(a1 + 8) = &unk_1F5EC3FF8;
  std::string::basic_string[abi:ne200100]<0>(__p, "sip.reg");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v40, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1 + 16, __p, v40);
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 200) = 0;
  *(a1 + 152) = &unk_1F5EBEEC0;
  *(a1 + 160) = &unk_1F5ED3520;
  *(a1 + 168) = &unk_1F5EBEDE0;
  *(a1 + 176) = &unk_1F5EDE320;
  *(a1 + 184) = &unk_1F5EDE3D0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_1F5EDE3F0;
  *(a1 + 224) = &unk_1F5EDEC70;
  std::string::basic_string[abi:ne200100]<0>(v38, "sip.reg");
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
    std::string::__init_copy_ctor_external(&v36, v7[9].__vftable, v7[9].__shared_owners_);
  }

  else
  {
    v36 = v7[9];
  }

  v37 = v7[10].__vftable;
  ims::getQueue(&v45);
  ClientConfig::getLogTag(&shared_owners, &v44);
  if ((v39 & 0x80u) == 0)
  {
    v8 = v38;
  }

  else
  {
    v8 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = v38[1];
  }

  v10 = std::string::insert(&v44, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v32 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v13 = v45;
  *(a1 + 256) = v45;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 264) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 272), "com.apple.ipTelephony", v12);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 232) = &unk_1F5EDE410;
  if (SHIBYTE(v36.__shared_weak_owners_) < 0)
  {
    operator delete(v36.__vftable);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  *a1 = &unk_1F5EDDBB8;
  *(a1 + 8) = &unk_1F5EDDD08;
  *(a1 + 16) = &unk_1F5EDDD30;
  *(a1 + 152) = &unk_1F5EDDD90;
  *(a1 + 160) = &unk_1F5EDDDC0;
  *(a1 + 168) = &unk_1F5EDDDE8;
  *(a1 + 176) = &unk_1F5EDDE18;
  *(a1 + 184) = &unk_1F5EDDEC8;
  *(a1 + 216) = &unk_1F5EDDEE8;
  *(a1 + 224) = &unk_1F5EDDF08;
  *(a1 + 232) = &unk_1F5EDDF20;
  SipTimerContainer::SipTimerContainer((a1 + 280));
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = *a2;
  v14 = a2[1];
  *(a1 + 504) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = a2[1];
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v14 = *a2;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_43;
    }

    v14 = 0;
  }

  v16 = 0;
LABEL_43:
  if (SHIBYTE(v14[185].__shared_owners_) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 512), v14[184].__shared_weak_owners_, v14[185].__vftable);
  }

  else
  {
    p_shared_weak_owners = &v14[184].__shared_weak_owners_;
    v18 = *p_shared_weak_owners;
    *(a1 + 528) = p_shared_weak_owners[2];
    *(a1 + 512) = v18;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  SipIdString::SipIdString((a1 + 560));
  *(a1 + 560) = &unk_1F5EDEC18;
  *(a1 + 632) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 708) = 0;
  v19 = (a1 + 712);
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 753) = 0u;
  *(a1 + 800) = &unk_1F5ED0580;
  SipUri::SipUri((a1 + 808));
  *(a1 + 1216) = &unk_1F5EBEF50;
  *(a1 + 1232) = 0u;
  *(a1 + 1224) = a1 + 1232;
  *(a1 + 1248) = 256;
  *(a1 + 1272) = 0u;
  *(a1 + 1264) = a1 + 1272;
  *(a1 + 1288) = 0u;
  *(a1 + 1256) = 0;
  SipRegistrationConfig::SipRegistrationConfig((a1 + 1312));
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  SipUri::SipUri((a1 + 3016));
  SipUri::SipUri((a1 + 3424));
  *&v20 = 0;
  *(a1 + 3840) = 0u;
  *(a1 + 3872) = 0;
  *(a1 + 3880) = 0;
  *(a1 + 3888) = 0u;
  *(a1 + 3904) = 0u;
  *(a1 + 3920) = v20;
  *(a1 + 3864) = &unk_1F5EC3598;
  *(a1 + 3944) = 0;
  *(a1 + 3952) = 0;
  *(a1 + 3960) = 0u;
  *(a1 + 3976) = 0u;
  *(a1 + 3992) = 0u;
  *(a1 + 3936) = &unk_1F5EC3598;
  *(a1 + 4008) = 0u;
  *(a1 + 4024) = &unk_1F5EBDEF8;
  *(a1 + 4096) = 0u;
  *(a1 + 4080) = 0u;
  *(a1 + 4064) = 0u;
  *(a1 + 4032) = &_bambiDomain;
  *(a1 + 4040) = 0;
  *(a1 + 4048) = 0u;
  *(a1 + 4114) = 0;
  *(a1 + 4116) = 0;
  *(a1 + 4120) = 0;
  *(a1 + 4180) = 0;
  *(a1 + 4184) = 0;
  *(a1 + 4128) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4160) = 0u;
  *(a1 + 4176) = 0;
  *(a1 + 4240) = 0;
  *(a1 + 4248) = 0;
  *(a1 + 4312) = 0;
  *(a1 + 4320) = 0;
  *(a1 + 4304) = 0;
  *(a1 + 4256) = 0u;
  *(a1 + 4272) = 0u;
  *(a1 + 4288) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4224) = 0;
  *(a1 + 4232) = 0;
  *(a1 + 4208) = 0u;
  ImsUuid::generate(__p);
  ImsUuid::asStringNoDashes(__p, (a1 + 4344));
  __p[0] = &unk_1F5EBEE78;
  if (v33 < 0)
  {
    operator delete(__p[1]);
  }

  *(a1 + 4368) = &unk_1F5EBDEF8;
  *(a1 + 4392) = 0u;
  *(a1 + 4408) = 0u;
  *(a1 + 4424) = 0u;
  *(a1 + 4440) = 0u;
  *(a1 + 4376) = &_bambiDomain;
  *(a1 + 4384) = 0;
  *(a1 + 4456) = 0;
  *(a1 + 4458) = 1;
  *(a1 + 4464) = 0u;
  *(a1 + 4480) = 0;
  *(a1 + 4488) = xpc_null_create();
  v21 = a2[1];
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = *a2;
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

  v24 = v23[8].__shared_owners_;
  *(a1 + 456) = v23[8].__shared_weak_owners_;
  *(a1 + 448) = v24;
  std::string::operator=((a1 + 464), &v23[9]);
  *(a1 + 488) = v23[10].__vftable;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  *(a1 + 616) = 1;
  *(a1 + 624) = 0;
  v25 = a2[1];
  if (v25)
  {
    v26 = std::__shared_weak_count::lock(v25);
    if (v26)
    {
      v27 = *a2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  std::string::operator=((a1 + 328), (a1 + 24));
  v28 = v27[8].__shared_owners_;
  *(a1 + 360) = v27[8].__shared_weak_owners_;
  *(a1 + 352) = v28;
  std::string::operator=((a1 + 368), &v27[9]);
  *(a1 + 392) = v27[10].__vftable;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(a1 + 408) = a1 + 152;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  v29 = *(a1 + 696);
  *(a1 + 696) = 0;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  *(a1 + 704) = 0;
  if (v19 != &SipRegistrationState::kStateUnknown)
  {
    *v19 = 0;
  }

  v30 = *(a1 + 3008);
  *(a1 + 3000) = 0;
  *(a1 + 3008) = 0;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  *(a1 + 3856) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 4192) = 0u;
  *(a1 + 4232) = SipRegistrationMode::kModeNormal;
  operator new();
}

void sub_1E4F1C698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, SipRegistrationMetrics *a9, SipBackoffTimer *a10, SipBackoffTimer *a11, uint64_t a12, uint64_t a13, uint64_t a14, SipContactParam *a15, void *a16, void **a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v48 = *(v44 + 504);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (*(v44 + 487) < 0)
  {
    operator delete(*(v44 + 464));
  }

  SipTimerContainer::~SipTimerContainer((v44 + 280));
  MEMORY[0x1E69225A0](v44 + 272);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v44 + 240));
  *a16 = a13;
  std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(*v46);
  ImsLogContainer::~ImsLogContainer(a17);
  _Unwind_Resume(a1);
}

void xpc::dict::~dict(xpc_object_t *this)
{
  xpc_release(*this);
  *this = 0;
}

{
  xpc_release(*this);
  *this = 0;
}

void SipSessionId::~SipSessionId(void **this)
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

void SipRegistrationClient::initTimers(SipRegistrationClient *this)
{
  v2 = *(this + 31);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(this + 30);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v3 + 224;
  if (!v3)
  {
    v6 = 0;
  }

  v13[0] = v6;
  v13[1] = v4;
  SipSimpleBackoffTimer::initialize(this + 3936, this + 280, v13, "IPSecFailureRetryTimer", 900, 0);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  v7 = *(this + 31);
  if (!v7 || (v8 = *(this + 30), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
LABEL_12:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = v8 + 224;
  if (!v8)
  {
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v9;
  SipSimpleBackoffTimer::initialize(this + 3864, this + 280, v12, "TransportRetryTimer", 600, 0);

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}

void SipRegistrationClient::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipRegistrationClient,std::allocator<SipRegistrationClient>,std::weak_ptr<SipStack> &,0>();
}

void sub_1E4F1CB58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::~SipRegistrationClient(SipRegistrationClient *this)
{
  *this = &unk_1F5EDDBB8;
  *(this + 1) = &unk_1F5EDDD08;
  *(this + 2) = &unk_1F5EDDD30;
  *(this + 19) = &unk_1F5EDDD90;
  *(this + 20) = &unk_1F5EDDDC0;
  *(this + 21) = &unk_1F5EDDDE8;
  *(this + 22) = &unk_1F5EDDE18;
  *(this + 23) = &unk_1F5EDDEC8;
  *(this + 27) = &unk_1F5EDDEE8;
  *(this + 28) = &unk_1F5EDDF08;
  *(this + 29) = &unk_1F5EDDF20;
  SipRegistrationClient::deinitialize(this);
  v2 = *(this + 524);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 525);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 375);
  if (v4)
  {
    v5 = *(v4 + 344);
    *(v4 + 336) = 0;
    *(v4 + 344) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  xpc_release(*(this + 561));
  *(this + 561) = 0;
  v6 = *(this + 559);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ImsResult::~ImsResult((this + 4368));
  if (*(this + 4367) < 0)
  {
    operator delete(*(this + 543));
  }

  v7 = *(this + 542);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  SipRegistrationDeferralManager::~SipRegistrationDeferralManager(this + 530);
  std::unique_ptr<ImsPowerAssertion>::reset[abi:ne200100](this + 528, 0);
  std::unique_ptr<ImsPowerAssertion>::reset[abi:ne200100](this + 527, 0);
  if (*(this + 4175) < 0)
  {
    operator delete(*(this + 519));
  }

  if (*(this + 4151) < 0)
  {
    operator delete(*(this + 516));
  }

  ImsResult::~ImsResult((this + 4024));
  SipBackoffTimer::~SipBackoffTimer((this + 3936));
  SipBackoffTimer::~SipBackoffTimer((this + 3864));
  v8 = *(this + 481);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  SipUri::~SipUri((this + 3424));
  SipUri::~SipUri((this + 3016));
  v9 = *(this + 376);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 374);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  SipRegistrationConfig::~SipRegistrationConfig(this + 164);
  *(this + 100) = &unk_1F5ED0580;
  v11 = *(this + 162);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 1264, *(this + 159));
  *(this + 152) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1224, *(this + 154));
  SipUri::~SipUri((this + 808));
  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  if (*(this + 743) < 0)
  {
    operator delete(*(this + 90));
  }

  v12 = *(this + 87);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 80);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  *(this + 70) = &unk_1F5ED4468;
  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  v14 = *(this + 63);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  SipTimerContainer::~SipTimerContainer((this + 280));
  MEMORY[0x1E69225A0](this + 272);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 30);
  *(this + 23) = &unk_1F5EDE3D0;
  std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(*(this + 25));
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
  SipRegistrationClient::~SipRegistrationClient(this);

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationClient::deinitialize(NSObject **this)
{
  v12 = *MEMORY[0x1E69E9840];
  SipRegistrationClient::cleanUpRegistrationArtifacts(this);
  SipTimerContainer::cancelAllTimers((this + 35));
  v2 = this[480];
  if (v2)
  {
    (*(v2->isa + 34))(v2);
  }

  SipRegistrationDeferralManager::cancel((this + 530));
  LODWORD(__p[0]) = 0;
  SipRegistrationClient::setRegistrationState(this, __p, 0);
  SipRegistrationClient::setClientState(this, 1);
  if (this + 89 != &SipRegistrationState::kStateUnknown)
  {
    *(this + 178) = 0;
  }

  *(this + 326) = 0;
  SipRegistrationClient::clearDeferredNotifications(this);
  SipRegistrationClient::clearDeferredDrop(this);
  if (*(this + 2656) == 1)
  {
    v3 = this[34];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      ((*this)[10].isa)(__p, this);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 141558275;
      v9 = 1752392040;
      v10 = 2081;
      v11 = v4;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sclearing Call-ID on deinitialize", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(this + 559) < 0)
    {
      LOBYTE(this[67]->isa) = 0;
      this[68] = 0;
    }

    else
    {
      *(this + 536) = 0;
      *(this + 559) = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void non-virtual thunk toSipRegistrationClient::~SipRegistrationClient(SipRegistrationClient *this)
{
  SipRegistrationClient::~SipRegistrationClient((this - 8));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 16));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 152));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 160));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 168));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 176));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 184));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 232));
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 160));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 168));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 176));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 184));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationClient::~SipRegistrationClient((this - 232));

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationClient::setClientState(void *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  if (v2 == a2)
  {
    goto LABEL_58;
  }

  v3 = a2;
  *(a1 + 176) = a2;
  v5 = a1[34];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

    v7 = &_MergedGlobals_17[3 * v2];
    v8 = v7 + 15;
    if (*(v7 + 143) < 0)
    {
      v8 = *v8;
    }

    v9 = &_MergedGlobals_17[3 * v3];
    v10 = (v9 + 15);
    if (*(v9 + 143) < 0)
    {
      v10 = v10->__vftable;
    }

    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = p_p;
    *&buf[22] = 2080;
    *&buf[24] = v8;
    LOWORD(v36[0]) = 2080;
    *(v36 + 2) = v10;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sstate transition [%s --> %s]", buf, 0x2Au);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = *(a1 + 176);
  }

  if (v3 <= 1)
  {
    if (v2 - 2 >= 3 && ((v11 = a1[527]) != 0 && *(v11 + 24) || (v11 = a1[528]) != 0 && *(v11 + 24)))
    {
      ImsPowerAssertion::deinitialize(v11);
    }

    goto LABEL_44;
  }

  if (!a1[528] && !a1[527])
  {
    if (*(a1 + 2660))
    {
      v12 = ".rcs";
    }

    else
    {
      v12 = ".ims";
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v12);
    v13 = std::string::insert(&__p, 0, "com.apple.ipTelephony.registration", 0x22uLL);
    *buf = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = buf[23];
    if (buf[23] >= 0)
    {
      v15 = buf[23];
    }

    else
    {
      v15 = *&buf[8];
    }

    memset(&__p, 0, sizeof(__p));
    v16 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v15 + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (v14 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ".wifi");
    operator new();
  }

  if ((*(*a1 + 64))(a1))
  {
    v18 = a1[527];
    if (!*(v18 + 6))
    {
      ImsPowerAssertion::initialize(v18, 300.0, 0, buf);
LABEL_43:
      ImsResult::~ImsResult(buf);
    }
  }

  else
  {
    v19 = a1[528];
    if (!*(v19 + 6))
    {
      ImsPowerAssertion::initialize(v19, 300.0, 1, buf);
      goto LABEL_43;
    }
  }

LABEL_44:
  v20 = a1[80];
  if (v20)
  {
    v21 = std::__shared_weak_count::lock(v20);
    if (v21)
    {
      v22 = a1[79];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (*(a1 + 176) == 1)
  {
    SipRegistrationClient::cleanUpRegistrationArtifacts(a1);
    if (a1[530])
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 0x40000000;
      v33[2] = ___ZN21SipRegistrationClient14setClientStateENS_11ClientStateE_block_invoke;
      v33[3] = &__block_descriptor_tmp_14;
      v33[4] = a1;
      v23 = a1[31];
      if (!v23 || (v24 = a1[30], (v25 = std::__shared_weak_count::lock(v23)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v26 = v25;
      v27 = a1[32];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = ___ZNK3ctu20SharedSynchronizableI21SipRegistrationClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      *&buf[24] = &unk_1F5EDE4D0;
      v36[1] = v24;
      *&v37 = v26;
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v36[0] = v33;
      dispatch_async(v27, buf);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else if (v2 == 10 && v22)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      memset(v38, 0, sizeof(v38));
      v37 = 0u;
      *v36 = 0u;
      memset(buf, 0, sizeof(buf));
      v29 = a1[31];
      v32[0] = a1[30];
      if (!v29 || (v30 = std::__shared_weak_count::lock(v29), (v32[1] = v30) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v31 = v30;
      SipRegistrationErrorNotification::SipRegistrationErrorNotification(buf, v32, -1, (a1 + 501));
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      (*(*v22 + 40))(v22, a1 + 64, buf, 0);
      *buf = &unk_1F5EF8AE0;
      if (SBYTE7(v42) < 0)
      {
        operator delete(v41);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(*(&v39 + 1));
      }

      ImsResult::~ImsResult(v38);
      *buf = &unk_1F5EF8B20;
      if (v36[1])
      {
        std::__shared_weak_count::__release_weak(v36[1]);
      }
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_58:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1DA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24)
{
  MEMORY[0x1E69235B0](v24, 0x1012C405C87E9CELL);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void SipRegistrationClient::cleanUpRegistrationArtifacts(SipRegistrationClient *this)
{
  v2 = (this + 2984);
  v3 = *(this + 86);
  if (v3)
  {
    if (*(v3 + 552) == (this + 160))
    {
      *(v3 + 552) = 0;
    }

    v4 = *(this + 87);
    *(this + 43) = 0u;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = *(this + 374);
  *v2 = 0;
  v2[1] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[2];
  if (v6)
  {
    v7 = *(v6 + 344);
    *(v6 + 336) = 0;
    *(v6 + 344) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(this + 376);
    v2[2] = 0;
    v2[3] = 0;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void SipRegistrationClient::performDeferredAction(SipRegistrationClient *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 530))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 36, "RegHysteresisTimer");
    v3 = *(this + 34);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        (*(*this + 80))(v16, this);
        v5 = v17;
        v6 = v16[0];
        (*(**(this + 530) + 24))(__p);
        v7 = v16;
        if (v5 < 0)
        {
          v7 = v6;
        }

        if (v15 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 141558531;
        v19 = 1752392040;
        v20 = 2081;
        v21 = v7;
        v22 = 2080;
        v23 = v8;
        _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdelaying deferred action during reg hysteresis: %s", buf, 0x20u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }
    }

    else
    {
      if (v4)
      {
        (*(*this + 80))(v16, this);
        v9 = v17;
        v10 = v16[0];
        (*(**(this + 530) + 24))(__p);
        v11 = v16;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 141558531;
        v19 = 1752392040;
        v20 = 2081;
        v21 = v11;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sperforming %s", buf, 0x20u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }

      SipRegistrationDeferralManager::perform(this + 530, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1DEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationErrorNotification::~SipRegistrationErrorNotification(void **this)
{
  *this = &unk_1F5EF8AE0;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  ImsResult::~ImsResult((this + 8));
  *this = &unk_1F5EF8B20;
  v2 = this[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5EF8AE0;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  ImsResult::~ImsResult((this + 8));
  *this = &unk_1F5EF8B20;
  v2 = this[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationClient::setRegistrationState(uint64_t a1, unsigned int *a2, char a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a1 + 716);
  v8 = *(a1 + 272);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 == v7)
  {
    if (v9)
    {
      (*(*a1 + 80))(__p, a1);
      v10 = *(a1 + 716);
      if (v10 > 4)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_1E876B440[v10];
      }

      v15 = __p[0];
      if (v34 >= 0)
      {
        v15 = __p;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v15;
      *&buf[22] = 2080;
      v36 = v11;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sIMS registration state not changed: %s", buf, 0x20u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (v9)
    {
      (*(*a1 + 80))(__p, a1);
      v12 = v34 >= 0 ? __p : __p[0];
      v13 = *(a1 + 716);
      v14 = v13 > 4 ? "???" : off_1E876B440[v13];
      v16 = *a2;
      v17 = v16 > 4 ? "???" : off_1E876B440[v16];
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v36 = v14;
      LOWORD(v37) = 2080;
      *(&v37 + 2) = v17;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sIMS registration state changed from %s to %s", buf, 0x2Au);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = *(a1 + 640);
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 632);
        if (v21)
        {
          if (a3)
          {
            v22 = 0;
          }

          else
          {
            v22 = *(a1 + 2660) ^ 1;
          }

          v23 = *(a1 + 272);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            (*(*a1 + 80))(__p, a1);
            if (v34 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            v25 = " not";
            *&buf[4] = 1752392040;
            *buf = 141558531;
            if (v22)
            {
              v25 = "";
            }

            *&buf[12] = 2081;
            *&buf[14] = v24;
            *&buf[22] = 2080;
            v36 = v25;
            _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sWill%s notify baseband during handleRegistrationStateChanged", buf, 0x20u);
            if (v34 < 0)
            {
              operator delete(__p[0]);
            }
          }

          (*(*v21 + 64))(v21, a1 + 512, a2, v22 & 1);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }

    v26 = *a2;
    if (*a2 == 4)
    {
      v27 = *(a1 + 248);
      if (!v27 || (v28 = *(a1 + 240), (v29 = std::__shared_weak_count::lock(v27)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v30 = v29;
      v31 = *(a1 + 256);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = ___ZNK3ctu20SharedSynchronizableI21SipRegistrationClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      v36 = &unk_1F5EDE4D0;
      *(&v37 + 1) = v28;
      v38 = v30;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v37 = &__block_literal_global_7;
      dispatch_async(v31, buf);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      v26 = *a2;
    }

    *(a1 + 716) = v26;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void ___ZN21SipRegistrationClient20setRegistrationStateERKN3ims17RegistrationStateEb_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v2);
  IMSCallManager::terminateAllLazuliSessions(v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4F1E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRegistrationClient::isWifiAccessNetwork(SipRegistrationClient *this)
{
  v2 = *(this + 63);
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
  v5 = *(this + 62);
  if (v5)
  {
    isWifi = ims::AccessNetwork::isWifi((v5 + 3432));
  }

  else
  {
    isWifi = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return isWifi;
}

void SipRegistrationClient::resetCallIdAndCseq(SipRegistrationClient *this, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(this + 63);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 62);
      if (v6)
      {
        v7 = *(v6 + 248);
        v8 = *(v6 + 256);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v9 = *(this + 559);
          if (v9 < 0)
          {
            v9 = *(this + 68);
          }

          v10 = (this + 536);
          if (v9 && !a2)
          {
            if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
            {
              (*(*this + 80))(v20, this);
              ObfuscatedString::ObfuscatedString(&v18, (this + 536));
              ObfuscatedString::logStr(&v18);
            }

            goto LABEL_46;
          }

          ImsRandomStringGenerator::randomString((v7 + 688), 24, &v18);
          if (*(this + 559) < 0)
          {
            operator delete(*v10);
          }

          *v10 = *&v18.__r_.__value_.__l.__data_;
          *(this + 69) = *(&v18.__r_.__value_.__l + 2);
          if (*(this + 2660) == 1)
          {
            ImsUuid::generate(&v18);
            if (SHIBYTE(v19) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, v18.__r_.__value_.__l.__size_, v18.__r_.__value_.__r.__words[2]);
            }

            else
            {
              *&buf.__r_.__value_.__l.__data_ = *&v18.__r_.__value_.__r.__words[1];
              buf.__r_.__value_.__r.__words[2] = v19;
            }

            if (*(this + 559) < 0)
            {
              operator delete(*v10);
            }

            *v10 = *&buf.__r_.__value_.__l.__data_;
            *(this + 69) = *(&buf.__r_.__value_.__l + 2);
            *(&buf.__r_.__value_.__s + 23) = 0;
            buf.__r_.__value_.__s.__data_[0] = 0;
            v18.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
            if (SHIBYTE(v19) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__size_);
            }
          }

          SipSessionId::generateFromCallId(this + 560, this + 536);
          *(this + 154) = 1;
          v15 = *(this + 34);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            (*(*this + 80))(v20, this);
            ObfuscatedString::ObfuscatedString(&v18, (this + 536));
            ObfuscatedString::logStr(&v18);
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          (*(*this + 80))(&v18, this);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v18;
          }

          else
          {
            v16 = v18.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
          *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
          _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sreset registration CSeq to 1", &buf, 0x16u);
        }

        else
        {
          v12 = *(this + 34);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
LABEL_46:
            if (v8)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            }

LABEL_48:
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            goto LABEL_49;
          }

          (*(*this + 80))(&v18, this);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v18;
          }

          else
          {
            v13 = v18.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
          *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
          _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 34);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(&v18, this);
    v14 = (v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v18 : v18.__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if (v5)
  {
    goto LABEL_48;
  }

LABEL_49:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1EA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::initialize(SipRegistrationClient *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = this + 4096;
  v3 = *(this + 34);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    (*(*this + 80))(__p, this);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v11 = 1752392040;
    v12 = 2081;
    v13 = v4;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sSipRegistrationClient::initialize()", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipRegistrationClient::resetCallIdAndCseq(this, 0);
  v2[17] = (*(*this + 288))(this);
  v5 = *(this + 480);
  if (v5)
  {
    *(this + 1058) = *(v5 + 448);
  }

  SipRegistrationClient::setClientState(this, 1);
  result = TelephonyRadiosGetRadioVendor();
  if (result == 3)
  {
    v2[362] = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void SipRegistrationClient::setPolicy(uint64_t a1, unsigned __int16 *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3840);
  if (v4)
  {
    v5 = *(v4 + 400);
    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(a1 + 3848);
    *(a1 + 3840) = 0u;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v7 = *(a1 + 504);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 496);
      if (v9)
      {
        v10 = *(a2 + 23);
        v11 = *(a2 + 1);
        if ((v10 & 0x80u) == 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = *(a2 + 1);
        }

        if (v12 > 6)
        {
          if (v12 == 7)
          {
            if ((v10 & 0x80u) == 0)
            {
              v31 = a2;
            }

            else
            {
              v31 = *a2;
            }

            v32 = *v31;
            v33 = *(v31 + 3);
            if (v32 == *"RFC5626" && v33 == *"5626")
            {
              v51 = *(a1 + 248);
              if (v51)
              {
                v52 = *(a1 + 240);
                v53 = std::__shared_weak_count::lock(v51);
                if (v53)
                {
                  atomic_fetch_add_explicit(&v53->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
                  operator new();
                }
              }

              std::__throw_bad_weak_ptr[abi:ne200100]();
            }
          }

          else if (v12 == 8)
          {
            v18 = (v10 & 0x80u) == 0 ? a2 : *a2;
            if (*v18 == *"Softbank")
            {
              v19 = *(a1 + 248);
              if (v19)
              {
                v20 = *(a1 + 240);
                v21 = std::__shared_weak_count::lock(v19);
                if (v21)
                {
                  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                  operator new();
                }
              }

              std::__throw_bad_weak_ptr[abi:ne200100]();
            }
          }
        }

        else if (v12 == 3)
        {
          if ((v10 & 0x80u) == 0)
          {
            v22 = a2;
          }

          else
          {
            v22 = *a2;
          }

          if (*v22 == ATTRegistrationPolicy::kPolicyName && *(v22 + 2) == 84)
          {
            v48 = *(a1 + 248);
            if (v48)
            {
              v49 = *(a1 + 240);
              v50 = std::__shared_weak_count::lock(v48);
              if (v50)
              {
                atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          if (*v22 == TMORegistrationPolicy::kPolicyName && *(v22 + 2) == 79)
          {
            ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(buf, *(a1 + 240), *(a1 + 248));
            v54 = *(v9 + 3980) ^ 1;
            std::allocate_shared[abi:ne200100]<TMORegistrationPolicy,std::allocator<TMORegistrationPolicy>,std::weak_ptr<SipRegistrationClient>,BOOL,0>();
          }

          v25 = *v22;
          v26 = *(v22 + 2);
          if (v25 == VZWRegistrationPolicy::kPolicyName && v26 == 87)
          {
            v28 = *(a1 + 248);
            if (v28)
            {
              v29 = *(a1 + 240);
              v30 = std::__shared_weak_count::lock(v28);
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else if (v12 == 4)
        {
          if ((v10 & 0x80u) == 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          if (*v13 == *"KDDI")
          {
            v45 = *(a1 + 248);
            if (v45)
            {
              v46 = *(a1 + 240);
              v47 = std::__shared_weak_count::lock(v45);
              if (v47)
              {
                atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          if (*v13 == *"TTAK")
          {
            v14 = *(a1 + 248);
            if (v14)
            {
              v15 = *(a1 + 240);
              v16 = std::__shared_weak_count::lock(v14);
              if (v16)
              {
                *buf = v15;
                *&buf[8] = v16;
                atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                std::allocate_shared[abi:ne200100]<TTAKRegistrationPolicy,std::allocator<TTAKRegistrationPolicy>,std::weak_ptr<SipRegistrationClient>,0>();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        if ((v10 & 0x80) != 0)
        {
          if (v11 != 6)
          {
LABEL_81:
            if (v11 != 15)
            {
              goto LABEL_91;
            }

            a2 = *a2;
            goto LABEL_83;
          }

          v35 = *a2;
        }

        else
        {
          v35 = a2;
          if (v10 != 6)
          {
            if (v10 != 15)
            {
              goto LABEL_91;
            }

LABEL_83:
            v40 = *a2 == *"LazuliTransient" && *(a2 + 7) == *"ransient";
            if (v40 && *(a1 + 2660) == 1 && *(a1 + 2661) == 1)
            {
              ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(buf, *(a1 + 240), *(a1 + 248));
              std::allocate_shared[abi:ne200100]<LazuliTransientRegistrationPolicy,std::allocator<LazuliTransientRegistrationPolicy>,std::weak_ptr<SipRegistrationClient>,0>();
            }

            goto LABEL_91;
          }
        }

        v36 = *v35;
        v37 = v35[2];
        v38 = v36 == *"Lazuli" && v37 == *"li";
        if (v38 && *(a1 + 2660) == 1)
        {
          ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(buf, *(a1 + 240), *(a1 + 248));
          std::allocate_shared[abi:ne200100]<LazuliRegistrationPolicy,std::allocator<LazuliRegistrationPolicy>,std::weak_ptr<SipRegistrationClient>,0>();
        }

        if ((v10 & 0x80) == 0)
        {
LABEL_91:
          v41 = *(a1 + 248);
          if (v41)
          {
            v42 = *(a1 + 240);
            v43 = std::__shared_weak_count::lock(v41);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_81;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *(a1 + 272);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(__p, a1);
    v39 = v57 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v39;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v44 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::clearDeferredNotifications(SipRegistrationClient *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 524);
  if (v2)
  {
    v3 = *(this + 34);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    (*(*this + 80))(&__p, this);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    v8 = 2081;
    v9 = p_p;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclearing deferred termination notification", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    v2 = *(this + 524);
    if (v2)
    {
LABEL_9:
      (*(*v2 + 16))(v2);
    }

    *(this + 524) = 0;
  }

  v5 = *(this + 525);
  if (v5)
  {
    if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(buf, this);
      ImsResult::logStr((*(this + 525) + 64));
    }

    (*(*v5 + 16))(v5);
    *(this + 525) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4F1FB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::clearDeferredDrop(SipRegistrationClient *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 526);
  if (v2)
  {
    v3 = *(this + 34);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    (*(*this + 80))(__p, this);
    v4 = v7 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v9 = 1752392040;
    v10 = 2081;
    v11 = v4;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclearing deferred drop registration", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = *(this + 526);
    if (v2)
    {
LABEL_9:
      (*(*v2 + 8))(v2);
    }
  }

  *(this + 526) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::handleRegistrationError(SipRegistrationClient *this, uint64_t **a2, uint64_t a3, int a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = *(this + 63);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    v12 = v11;
    if (v11)
    {
      v13 = *(this + 62);
      if (v13)
      {
        if (capabilities::radio::supportsRel16(v11))
        {
          v14 = SipRegistrationClient::nasImsRegInProgress(this);
          if (v14)
          {
            IPTelephonyManager::getBambiClient(__p, v14);
            v15 = *(__p[0] + 38);
            if (__p[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
            }

            if (v15 && *(v15 + 8) && *(v15 + 72) == 1)
            {
              v16 = *(this + 34);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(__p, this);
                v17 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v17 = __p[0];
                }

                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v17;
                _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleRegistrationError: RegAccessCheck done", buf, 0x16u);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              IMSNasDeviceClient::reportCallStatus(v15, *(v13 + 4372), 2, 64, v13 + 3432, 1, 0, 0);
            }

            SipRegistrationClient::nasImsRegStop(this);
          }
        }

        v84 = 0;
        v82 = 0u;
        v83 = 0u;
        v81 = 0u;
        memset(buf, 0, sizeof(buf));
        ImsResult::ImsResult(buf, a2);
        if (*(a2 + 4) == 401 && (*(**(this + 547) + 24))(*(this + 547), *(this + 1096)))
        {
          ImsResult::setCause(buf, (this + 4368));
        }

        ImsResult::operator=(this + 4368, a2);
        SipRegistrationMetrics::registrationAttemptCompleted((this + 4008), buf, 0);
        if (*(v13 + 320) != 2)
        {
          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          *v67 = 0u;
          memset(__p, 0, sizeof(__p));
          v24 = *(this + 31);
          v60 = *(this + 30);
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            v61 = v25;
            if (v25)
            {
              v26 = v25;
              SipRegistrationErrorNotification::SipRegistrationErrorNotification(__p, &v60, -1, this + 4008);
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              SipRegistrationClient::notifyDelegateOfRegistrationError(this, __p, 1, a5);
              *v62 = 0;
              SipRegistrationClient::setRegistrationState(this, v62, 0);
              __p[0] = &unk_1F5EF8AE0;
              if (SBYTE7(v78) < 0)
              {
                operator delete(v77);
              }

              if (SHIBYTE(v76) < 0)
              {
                operator delete(*(&v75 + 1));
              }

              ImsResult::~ImsResult(&v69);
              __p[0] = &unk_1F5EF8B20;
              if (v67[1])
              {
                std::__shared_weak_count::__release_weak(v67[1]);
              }

              goto LABEL_115;
            }
          }

          else
          {
            v61 = 0;
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        if (*(this + 3856))
        {
          goto LABEL_51;
        }

        v18 = *(v13 + 280);
        v19 = *(v13 + 288);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v18 + 1152);
        if (v20 && (*(*v20 + 216))(v20))
        {
          v21 = *(a2 + 4);
          v22 = a2[1];
          if (v21 == 60 && v22 == &_posixDomain)
          {
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

LABEL_121:
            v53 = *(this + 4151);
            v54 = v53;
            if ((v53 & 0x80u) != 0)
            {
              v53 = *(this + 517);
            }

            if (v53 != 8 || (v54 >= 0 ? (v55 = (this + 4128)) : (v55 = *(this + 516)), *v55 != *"Handover" || (*(this + 2658) & 1) != 0))
            {
              v28 = 1;
LABEL_52:
              v29 = *(this + 480);
              if (v29)
              {
                if ((*(*v29 + 536))(v29))
                {
                  if ((*(**(this + 480) + 408))(*(this + 480), 0, *(a2 + 4)))
                  {
                    v30 = *(this + 480);
                    if (0xEF7BDEF7BDEF7BDFLL * ((*(v30 + 58) - *(v30 + 57)) >> 4) != SipRegistrationPolicy::countOfProxiesWithErrors(v30))
                    {
                      a4 = 0;
                      if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*this + 80))(v62, this);
                        ImsResult::logStr(a2);
                      }
                    }
                  }
                }

                v31 = *(this + 480);
                if (v31)
                {
                  if (((*(*v31 + 544))(v31) & 1) == 0)
                  {
                    v32 = *(this + 34);
                    a4 = 0;
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*this + 80))(__p, this);
                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v33 = __p;
                      }

                      else
                      {
                        v33 = __p[0];
                      }

                      *v62 = 141558275;
                      *&v62[4] = 1752392040;
                      v63 = 2081;
                      v64 = v33;
                      _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSuppressing error based on recommendation from policy.", v62, 0x16u);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      a4 = 0;
                    }
                  }
                }
              }

              if (v28)
              {
                v34 = *(this + 34);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(__p, this);
                  v35 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                  *v62 = 141558275;
                  *&v62[4] = 1752392040;
                  v63 = 2081;
                  v64 = v35;
                  _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sregistration over IPSec timed out.  Terminating our existing registration and starting over.", v62, 0x16u);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                (*(*this + 176))(this, 8, 0, 0);
                a4 = 0;
              }

              v36 = *(this + 480);
              v37 = v36 + 112;
              if (!v36)
              {
                v37 = &SipRegistrationMode::kModeNormal;
              }

              if (*v37 == SipRegistrationMode::kModeLimitedAccess)
              {
                if (a4 & (*(*v36 + 560))(v36))
                {
                  v38 = *(this + 34);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                  {
                    (*(*this + 80))(v62, this);
                    v39 = *(this + 480);
                    if (v39)
                    {
                      v40 = (v39 + 448);
                    }

                    else
                    {
                      v40 = &SipRegistrationMode::kModeNormal;
                    }

                    v41 = &registrationModeNames[24 * *v40];
                    v42 = *v62;
                    if (v65 >= 0)
                    {
                      v42 = v62;
                    }

                    if (v41[23] < 0)
                    {
                      v41 = *v41;
                    }

                    LODWORD(__p[0]) = 141558531;
                    *(__p + 4) = 1752392040;
                    WORD2(__p[1]) = 2081;
                    *(&__p[1] + 6) = v42;
                    HIWORD(__p[2]) = 2080;
                    __p[3] = v41;
                    _os_log_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sAllowing notification in %s", __p, 0x20u);
                    if (v65 < 0)
                    {
                      operator delete(*v62);
                    }
                  }

                  goto LABEL_93;
                }

                v36 = *(this + 480);
              }

              v43 = v36 + 112;
              if (!v36)
              {
                v43 = &SipRegistrationMode::kModeNormal;
              }

              if (*v43 != SipRegistrationMode::kModeNormal)
              {
                v47 = *(this + 34);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(v62, this);
                  v48 = *(this + 480);
                  if (v48)
                  {
                    v49 = (v48 + 448);
                  }

                  else
                  {
                    v49 = &SipRegistrationMode::kModeNormal;
                  }

                  v50 = &registrationModeNames[24 * *v49];
                  v51 = *v62;
                  if (v65 >= 0)
                  {
                    v51 = v62;
                  }

                  if (v50[23] < 0)
                  {
                    v50 = *v50;
                  }

                  LODWORD(__p[0]) = 141558531;
                  *(__p + 4) = 1752392040;
                  WORD2(__p[1]) = 2081;
                  *(&__p[1] + 6) = v51;
                  HIWORD(__p[2]) = 2080;
                  __p[3] = v50;
                  _os_log_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRegistration mode is %s, skipping notification to delegate", __p, 0x20u);
                  if (v65 < 0)
                  {
                    operator delete(*v62);
                  }
                }

                goto LABEL_112;
              }

LABEL_93:
              if (a4)
              {
                v79 = 0;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v68 = 0u;
                *v67 = 0u;
                memset(__p, 0, sizeof(__p));
                v44 = *(this + 31);
                v58 = *(this + 30);
                if (v44)
                {
                  v45 = std::__shared_weak_count::lock(v44);
                  v59 = v45;
                  if (v45)
                  {
                    v46 = v45;
                    SipRegistrationErrorNotification::SipRegistrationErrorNotification(__p, &v58, a3, this + 4008);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
                    SipRegistrationClient::notifyDelegateOfRegistrationError(this, __p, 0, a5);
                    __p[0] = &unk_1F5EF8AE0;
                    if (SBYTE7(v78) < 0)
                    {
                      operator delete(v77);
                    }

                    if (SHIBYTE(v76) < 0)
                    {
                      operator delete(*(&v75 + 1));
                    }

                    ImsResult::~ImsResult(&v69);
                    __p[0] = &unk_1F5EF8B20;
                    if (v67[1])
                    {
                      std::__shared_weak_count::__release_weak(v67[1]);
                    }

                    goto LABEL_112;
                  }
                }

                else
                {
                  v59 = 0;
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

LABEL_112:
              SipRegistrationClient::setClientState(this, 1);
              if (*(this + 3856) == 1)
              {
                LODWORD(__p[0]) = 0;
                SipRegistrationClient::setRegistrationState(this, __p, 0);
                (*(*this + 176))(this, 4, 0, 0);
              }

              else
              {
                LODWORD(__p[0]) = 1;
                SipRegistrationClient::setRegistrationState(this, __p, a5);
              }

LABEL_115:
              ImsResult::~ImsResult(buf);
LABEL_116:
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              goto LABEL_117;
            }

            v56 = *(this + 34);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 80))(__p, this);
              v57 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
              *v62 = 141558275;
              *&v62[4] = 1752392040;
              v63 = 2081;
              v64 = v57;
              _os_log_impl(&dword_1E4C3F000, v56, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sregistration timed out on WiFi handover. NOT terminating registration just yet.", v62, 0x16u);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

LABEL_51:
            v28 = 0;
            goto LABEL_52;
          }

          if (v22 == &SipResultDomain::_domain)
          {
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            if (v21 != 408)
            {
              goto LABEL_51;
            }

            goto LABEL_121;
          }
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        goto LABEL_51;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v23 = *(this + 34);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v27 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12)
  {
    goto LABEL_116;
  }

LABEL_117:
  v52 = *MEMORY[0x1E69E9840];
}

void sub_1E4F20A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  ImsResult::~ImsResult((v25 - 192));
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void sub_1E4F20ACC()
{
  if (!v0)
  {
    JUMPOUT(0x1E4F20AC4);
  }

  JUMPOUT(0x1E4F20ABCLL);
}

void SipRegistrationClient::handleThumperAuthFailure(void *a1, const void **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1[34];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 80))(__p, a1);
    v5 = v16 >= 0 ? __p : __p[0];
    v6 = *(a2 + 23) >= 0 ? a2 : *a2;
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v5;
    v18 = 2080;
    v19 = v6;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sReceived Thumper registration error: %s", buf, 0x20u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  IPTelephonyManager::getBambiClient(buf);
  v7 = *buf;
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = qword_1EE2BD218;
  if (byte_1EE2BD227 >= 0)
  {
    v10 = byte_1EE2BD227;
  }

  if (v9 == v10)
  {
    if (v8 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (byte_1EE2BD227 >= 0)
    {
      v12 = &SipRegistrationPolicy::kThumperErrorUnauthorized;
    }

    else
    {
      v12 = SipRegistrationPolicy::kThumperErrorUnauthorized;
    }

    v13 = memcmp(v11, v12, v9) == 0;
  }

  else
  {
    v13 = 0;
  }

  BambiClient::handleThumperAuthFailure(v7, (a1 + 64), v13);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4F20CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationClient::nasImsRegInProgress(SipRegistrationClient *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    (*(*this + 80))(__p, this);
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = "NotInProgress";
    if (*(this + 708))
    {
      v4 = "InProgress";
    }

    *buf = 141558531;
    v10 = 1752392040;
    v11 = 2081;
    v12 = v3;
    v13 = 2080;
    v14 = v4;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}snasImsReg %s", buf, 0x20u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = *(this + 708);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void SipRegistrationClient::nasImsRegStop(SipRegistrationClient *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    (*(*this + 80))(__p, this);
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
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}snasImsReg Stop", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 708) = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::notifyDelegateOfRegistrationError(SipRegistrationClient *this, const SipRegistrationErrorNotification *a2, char a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  ++*(this + 156);
  v5 = *(this + 63);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *(this + 62);
      if (v10)
      {
        v11 = *(this + 480);
        if (v11 && (*(*v11 + 464))(v11) && SipRegistrationNotification::secondsUntilNextRetry(a2) != -1)
        {
          v12 = *(this + 34);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 80))(__p, this);
            v13 = v23 >= 0 ? __p : __p[0];
            *buf = 141558275;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v13;
            _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdropping registration error notification while CSFB mode is enabled", buf, 0x16u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else
        {
          if ((a3 & 1) == 0 && ((*(*this + 288))(this) & 1) == 0 && SipStack::callCount(v10))
          {
            v15 = *(this + 525);
            if (v15)
            {
              (*(*v15 + 16))(v15);
            }

            operator new();
          }

          v16 = *(this + 80);
          if (v16)
          {
            v17 = std::__shared_weak_count::lock(v16);
            if (v17)
            {
              v18 = v17;
              v19 = *(this + 79);
              if (v19)
              {
                (*(*v19 + 40))(v19, this + 512, a2, a4);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }
        }

        if (((*(*this + 288))(this) & 1) == 0)
        {
          SipStack::handleRegistrationError(v10);
        }

LABEL_31:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *(this + 34);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v21 = v23 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v25 = 1752392040;
    v26 = 2081;
    v27 = v21;
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    goto LABEL_31;
  }

LABEL_32:
  v20 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::logReprovisioningError(std::string *this, int a2)
{
  data = this[21].__r_.__value_.__l.__data_;
  if (data)
  {
    v5 = std::__shared_weak_count::lock(data);
    if (v5)
    {
      v6 = v5;
      v7 = this[20].__r_.__value_.__r.__words[2];
      if (v7 && *(v7 + 2817) == 1)
      {
        v8 = this[160].__r_.__value_.__l.__data_;
        v9 = v8 ? (v8 + 448) : &SipRegistrationMode::kModeNormal;
        if (*v9 == SipRegistrationMode::kModeReprovision || a2 != 0)
        {
          std::string::operator=(this + 172, "RcsReprovision");
          if (a2)
          {
            memset(&v20[1] + 8, 0, 64);
            *&v20[0] = &unk_1F5EBDEF8;
            *(&v20[0] + 1) = &_posixDomain;
            LODWORD(v20[1]) = 60;
            v11 = ImsResult::operator<<<char [28]>(v20, "Attestation service timeout");
            ImsResult::operator=(&this[167].__r_.__value_.__r.__words[2], v11);
            ImsResult::~ImsResult(v20);
          }

          else if (LODWORD(this[168].__r_.__value_.__r.__words[1]) != 60)
          {
            std::string::basic_string[abi:ne200100]<0>(&v26, "401 Invalid Opaque Value");
            SipResultDomain::makeResult(403, &v26, v20);
            ImsResult::operator=(&this[167].__r_.__value_.__r.__words[2], v20);
            ImsResult::~ImsResult(v20);
            if (v27 < 0)
            {
              operator delete(v26);
            }
          }

          v25 = 0;
          *__p = 0u;
          v24 = 0u;
          *v21 = 0u;
          v22 = 0u;
          memset(v20, 0, sizeof(v20));
          size = this[10].__r_.__value_.__l.__size_;
          v19[0] = this[10].__r_.__value_.__l.__data_;
          if (!size || (v13 = std::__shared_weak_count::lock(size), (v19[1] = v13) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v14 = v13;
          SipRegistrationErrorNotification::SipRegistrationErrorNotification(v20, v19, -1, &this[167]);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
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
          v18[0] = v7;
          v18[1] = v6;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          IMSMetricsManager::logRegistrationError(v16, v18, v20);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (SHIBYTE(this[172].__r_.__value_.__r.__words[2]) < 0)
          {
            *this[172].__r_.__value_.__l.__data_ = 0;
            this[172].__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            this[172].__r_.__value_.__s.__data_[0] = 0;
            *(&this[172].__r_.__value_.__s + 23) = 0;
          }

          *&v20[0] = &unk_1F5EF8AE0;
          if (SBYTE7(v24) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(v21[1]);
          }

          ImsResult::~ImsResult(&v20[4]);
          *&v20[0] = &unk_1F5EF8B20;
          if (*(&v20[2] + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v20[2] + 1));
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4F2167C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ImsResult::~ImsResult(va);
  if (*(v6 - 73) < 0)
  {
    operator delete(*(v6 - 96));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleErrorResponse(std::string *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  data = a1[160].__r_.__value_.__l.__data_;
  if (!data)
  {
    goto LABEL_4;
  }

  if (a1[160].__r_.__value_.__s.__data_[16] == 1)
  {
    (*(*data + 368))(data);
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    SipResponse::asImsResult(*a2, __p);
    (*(*a1[160].__r_.__value_.__l.__data_ + 440))(a1[160].__r_.__value_.__r.__words[0], __p);
    ImsResult::~ImsResult(__p);
LABEL_4:
    v5 = -1;
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v8 = data[112];
  v9 = *(a2 + 8);
  v13 = *a2;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*data + 288))(data, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  SipRegistrationClient::logReprovisioningError(a1, 0);
  if (v8 == SipRegistrationMode::kModeLimitedAccess)
  {
    goto LABEL_5;
  }

  v10 = a1[160].__r_.__value_.__l.__data_;
  if (v10[112] != SipRegistrationMode::kModeLimitedAccess || !(*(*v10 + 560))(v10))
  {
    goto LABEL_5;
  }

  size = a1[11].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(size, OS_LOG_TYPE_DEFAULT))
  {
    (*(a1->__r_.__value_.__r.__words[0] + 80))(__p, a1);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 141558275;
    v22 = 1752392040;
    v23 = 2081;
    v24 = v12;
    _os_log_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sError response toggled limited access mode!", buf, 0x16u);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = 0;
LABEL_6:
  SipResponse::asImsResult(*a2, __p);
  SipRegistrationClient::handleRegistrationError(a1, __p, v5, v6, 0);
  ImsResult::~ImsResult(__p);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4F219CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleTransactionError(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1[63];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[62];
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          v19 = a1[34];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 80))(buf, a1);
            v22 = v30 >= 0 ? buf : *buf;
            *v25 = 141558275;
            *&v25[4] = 1752392040;
            v26 = 2081;
            v27 = v22;
            _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", v25, 0x16u);
            if (SHIBYTE(v30) < 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_28;
        }

        if (*a3 != a1[375])
        {
          v11 = a1[34];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 80))(v25, a1);
            v12 = v28;
            v13 = *v25;
            (*(*a1[375] + 144))(__p);
            v14 = v25;
            if (v12 < 0)
            {
              v14 = v13;
            }

            if (v24 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v14;
            v30 = 2080;
            v31 = v15;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}signoring error from old transaction %s", buf, 0x20u);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            if (v28 < 0)
            {
              operator delete(*v25);
            }
          }
        }

        v16 = a1[480];
        if (v16)
        {
          if (*(a1 + 3856) != 1)
          {
            if (*(a2 + 8) == &SipResultDomain::_domain && *(a2 + 16) == 408)
            {
              *buf = 0;
              *&buf[8] = 0;
              LODWORD(__p[0]) = 0;
              *v25 = v10 + 384;
              std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
            }

            v17 = (*(*v16 + 296))(v16, a2, 0);
            goto LABEL_22;
          }

          (*(*v16 + 368))(v16);
          (*(*a1[480] + 440))(a1[480], a2);
        }

        v17 = -1;
LABEL_22:
        SipRegistrationClient::handleRegistrationError(a1, a2, v17, 1, 0);
LABEL_28:
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

LABEL_30:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = a1[34];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(buf, a1);
    v21 = v30 >= 0 ? buf : *buf;
    *v25 = 141558275;
    *&v25[4] = 1752392040;
    v26 = 2081;
    v27 = v21;
    _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v25, 0x16u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v7)
  {
    goto LABEL_30;
  }

LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E4F21ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleUnauthorizedResponse(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 272);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 80))(&__p, a1);
    v5 = v53 >= 0 ? &__p : __p;
    *buf = 141558275;
    v57 = 1752392040;
    v58 = 2081;
    v59 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sreceived 401 Unauthorized response to registration request.", buf, 0x16u);
    if (v53 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(a1 + 504);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          v16 = *(a1 + 272);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 80))(&__p, a1);
            v17 = v53 >= 0 ? &__p : __p;
            *buf = 141558275;
            v57 = 1752392040;
            v58 = 2081;
            v59 = v17;
            _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v53 < 0)
            {
              operator delete(__p);
            }
          }

          goto LABEL_79;
        }

        if (*(a1 + 620) >= *(a1 + 2316))
        {
          v18 = *(a1 + 272);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 80))(&__p, a1);
            v32 = v53 >= 0 ? &__p : __p;
            *buf = 141558275;
            v57 = 1752392040;
            v58 = 2081;
            v59 = v32;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}stoo many auth retries.  Giving up.", buf, 0x16u);
            if (v53 < 0)
            {
              operator delete(__p);
            }
          }

          *(a1 + 620) = 0;
          v19 = *(v10 + 46);
          v20 = *(v10 + 47);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v19 + 32))(v19);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v21 = *a2;
          v14 = a2[1];
          v55[0] = v21;
          v55[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipRegistrationClient::handleErrorResponse(a1, v55);
          goto LABEL_56;
        }

        v11 = *(a1 + 688);
        if (v11)
        {
          if ((*(*v11 + 160))(v11))
          {
            v12 = *(a1 + 272);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 80))(&__p, a1);
              v44 = v53 >= 0 ? &__p : __p;
              *buf = 141558275;
              v57 = 1752392040;
              v58 = 2081;
              v59 = v44;
              _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}scan't handle multiple 401 responses for the same SAs", buf, 0x16u);
              if (v53 < 0)
              {
                operator delete(__p);
              }
            }

            v13 = *a2;
            v14 = a2[1];
            v54[0] = v13;
            v54[1] = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::handleErrorResponse(a1, v54);
LABEL_56:
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

LABEL_79:
            if (v9)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }

LABEL_81:
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            goto LABEL_82;
          }

          v23 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Security-Server");
          {
            v28 = 1;
LABEL_49:
            v29 = *(a1 + 272);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 80))(&__p, a1);
              v45 = v53 >= 0 ? &__p : __p;
              *buf = 141558275;
              v57 = 1752392040;
              v58 = 2081;
              v59 = v45;
              _os_log_error_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to initialize IPSec SAs.  Failing registration.", buf, 0x16u);
              if (v53 < 0)
              {
                operator delete(__p);
              }
            }

            if (v28)
            {
              v30 = SipStack::prefs(v8);
              if (ImsPrefs::ResetCallIdOn401WithoutSecurityServer(v30))
              {
                SipRegistrationClient::resetCallIdAndCseq(a1, 1);
              }
            }

            v31 = *a2;
            v14 = a2[1];
            v49[0] = v31;
            v49[1] = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::handleErrorResponse(a1, v49);
            goto LABEL_56;
          }

          SipIPSecTransportGroup::updateFromSecurityServerHeader(*(a1 + 688), v26, &__p);
          v27 = (*(*v51 + 24))(v51, v52);
          ImsResult::~ImsResult(&__p);
          if (v27)
          {
            v28 = 0;
            goto LABEL_49;
          }

          v33 = *(a1 + 688);
          v34 = SipUserAgent::config(v10);
          v35 = SipTimers::timerValue((v34 + 512), &SipTimers::kTimerRegAwaitAuth, 0);
          SipIPSecTransportGroup::updateExpiration(v33, v35 / 0x3E8);
        }

        SipRegistrationClient::setClientState(a1, 7);
        v36 = *(v10 + 46);
        v37 = *(v10 + 47);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = a2[1];
        v47 = *a2;
        v48 = v38;
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = (*(*v36 + 56))(v36, &v47, a1 + 168);
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if ((v39 & 1) == 0)
        {
          v40 = *a2;
          v41 = a2[1];
          v46[0] = v40;
          v46[1] = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipRegistrationClient::handleErrorResponse(a1, v46);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }
        }

        v42 = *(a1 + 3840);
        if (v42)
        {
          (*(*v42 + 352))(v42);
        }

        goto LABEL_79;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *(a1 + 272);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(&__p, a1);
    v22 = v53 >= 0 ? &__p : __p;
    *buf = 141558275;
    v57 = 1752392040;
    v58 = 2081;
    v59 = v22;
    _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v53 < 0)
    {
      operator delete(__p);
    }
  }

  if (v7)
  {
    goto LABEL_81;
  }

LABEL_82:
  v43 = *MEMORY[0x1E69E9840];
}

void sub_1E4F22744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ImsResult::~ImsResult(va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::findContactInResponse(const SipUri *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  if (v4 != v3)
  {
    v27 = a3;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *(v3 + 8 * v7);
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

      if (v10 >= 7)
      {
        v12 = 7;
      }

      else
      {
        v12 = v10;
      }

      v13 = memcmp(v11, "Contact", v12);
      if (v10 == 7 && v13 == 0)
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
        v3 = *(a2 + 48);
        v4 = *(a2 + 56);
      }

      v7 = v8++;
    }

    while (v7 < (v4 - v3) >> 3);
    if (v6)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(8 * v19);
        v21 = *(v20 + 72);
        if (*(v20 + 80) != v21)
        {
          break;
        }

LABEL_26:
        if (++v19 >= (v6 >> 3))
        {
          a3 = v27;
          goto LABEL_32;
        }
      }

      v22 = 0;
      v23 = 0;
      while ((SipUri::equals((v21 + v22 + 8), a1, 0) & 1) == 0)
      {
        ++v23;
        v21 = *(v20 + 72);
        v22 += 504;
        if (v23 >= 0xEFBEFBEFBEFBEFBFLL * ((*(v20 + 80) - v21) >> 3))
        {
          goto LABEL_26;
        }
      }

      return v21 + v22;
    }

    a3 = v27;
  }

  v6 = 0;
LABEL_32:
  if (v6 != 8)
  {
    return 0;
  }

  if (*(MEMORY[0] + 80) - *(MEMORY[0] + 72) == 504)
  {
    v25 = a3;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(MEMORY[0] + 72);
  }

  operator delete(0);
  return v24;
}

void sub_1E4F22A8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationClient::updateServiceMaskForContact(NSObject **this, SipContact *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 126);
  result = SipRegistrationClient::allowedServices(this);
  if (v4 != result)
  {
    result = SipRegistrationClient::allowedServices(this);
    if (result)
    {
      v6 = this[34];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        ((*this)[10].isa)(v21, this);
        if (v22 >= 0)
        {
          v7 = v21;
        }

        else
        {
          v7 = v21[0];
        }

        v8 = *(a2 + 126);
        std::string::basic_string[abi:ne200100]<0>(&v17, ",");
        v9 = v19;
        BambiServices::namesForServiceMask(v8, v19);
        if (v20 < 0)
        {
          v9 = v19[0];
        }

        v10 = SipRegistrationClient::allowedServices(this);
        std::string::basic_string[abi:ne200100]<0>(&v13, ",");
        BambiServices::namesForServiceMask(v10, __p);
        if (v16 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 141558787;
        v24 = 1752392040;
        v25 = 2081;
        v26 = v7;
        v27 = 2080;
        v28 = v9;
        v29 = 2080;
        v30 = v11;
        _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}signoring reported feature tags (%s) and reporting (%s) instead", buf, 0x2Au);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      result = SipRegistrationClient::allowedServices(this);
      *(a2 + 126) = result;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F22CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationClient::allowedServices(SipRegistrationClient *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        v5 = *(this + 334);
        v6 = SipStack::prefs(*(this + 62));
        if (ImsPrefs::RegisterSmsWhenAccessBarringZero(v6) && BambiAccessBarring::isVoiceRegistrationBarred((v4 + 3160)))
        {
          v7 = *(this + 34);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            (*(*this + 80))(__p, this);
            if (v14 >= 0)
            {
              v8 = __p;
            }

            else
            {
              v8 = __p[0];
            }

            *buf = 141558275;
            v16 = 1752392040;
            v17 = 2081;
            v18 = v8;
            _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sVoice service is barred ", buf, 0x16u);
            if (v14 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v5 = v5 & 0xFFFFFFFE;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_17;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = *(this + 34);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v12 = v14 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v12;
    _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = 0;
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

void SipRegistrationClient::updateRegistrationState(std::string *this, const SipRegistrationStateNotification *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  data = this[21].__r_.__value_.__l.__data_;
  if (data)
  {
    v5 = std::__shared_weak_count::lock(data);
    if (v5)
    {
      v6 = this[20].__r_.__value_.__r.__words[2];
      if (v6)
      {
        size = v6[10].__r_.__value_.__l.__size_;
        v8 = v6[10].__r_.__value_.__r.__words[2];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!size)
        {
          v30 = this[11].__r_.__value_.__l.__size_;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
            v31 = v81 >= 0 ? buf : *buf;
            *v89 = 141558275;
            *&v89[4] = 1752392040;
            v90 = 2081;
            v91 = v31;
            _os_log_error_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", v89, 0x16u);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_122;
        }

        v9 = *(*(a2 + 6) + 504);
        if (*(*(*a2 + 48))(a2) != 2)
        {
          v10 = v6[11].__r_.__value_.__r.__words[2];
          v11 = v6[12].__r_.__value_.__l.__data_;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v76 = 0;
          v77 = 0;
          SipTransportLayer::setIPSecTransport(v10, &v76);
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        if ((*(*a2 + 56))(a2) && *(*(*a2 + 48))(a2) == LODWORD(this[29].__r_.__value_.__r.__words[2]) && v9 == LODWORD(this[54].__r_.__value_.__r.__words[1]))
        {
          v65 = this[112].__r_.__value_.__s.__data_[0] ^ 1;
        }

        else
        {
          v65 = 0;
        }

        v13 = **a2;
        v64 = size;
        if (v14)
        {
          v16 = *(v14 + 8);
          v15 = *(v14 + 9);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v16)
          {
            v17 = (*(this->__r_.__value_.__r.__words[2] + 64))(&this->__r_.__value_.__s.__data_[16]);
            (*(this->__r_.__value_.__r.__words[2] + 16))(&this->__r_.__value_.__s.__data_[16], v17);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "not considering termination duplicate for lazuli", 48);
            *(v17 + 17) = 0;
            (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v65 = 0;
            *(v17 + 17) = 0;
          }
        }

        v75 = this[29].__r_.__value_.__r.__words[2];
        v18 = this[54].__r_.__value_.__r.__words[1];
        v19 = (*(*a2 + 48))(a2);
        v20 = &this[29].__r_.__value_.__r.__words[2];
        if (&this[29].__r_.__value_.__r.__words[2] != v19)
        {
          *v20 = *v19;
        }

        LODWORD(this[54].__r_.__value_.__r.__words[1]) = v9;
        v21 = this[11].__r_.__value_.__l.__size_;
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v65)
        {
          if (v22)
          {
            v23 = v89;
            v62 = v8;
            v24 = (*(this->__r_.__value_.__r.__words[0] + 80))(v89, this);
            if (v92 < 0)
            {
              v23 = *v89;
            }

            v26 = &v25[24 * LODWORD(this[29].__r_.__value_.__r.__words[2])];
            if (v26[23] >= 0)
            {
              v27 = &v25[24 * LODWORD(this[29].__r_.__value_.__r.__words[2])];
            }

            else
            {
              v27 = *v26;
            }

            v28 = this[54].__r_.__value_.__r.__words[1];
            std::string::basic_string[abi:ne200100]<0>(v71, ",");
            BambiServices::namesForServiceMask(v28, __p);
            if (v74 >= 0)
            {
              v29 = __p;
            }

            else
            {
              v29 = __p[0];
            }

            *buf = 141558787;
            *&buf[4] = 1752392040;
            v79 = 2081;
            v80 = v23;
            v81 = 2080;
            v82 = v27;
            v83 = 2080;
            v84 = v29;
            _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived duplicate state change to %s (%s)", buf, 0x2Au);
            if (v74 < 0)
            {
              operator delete(__p[0]);
            }

            v8 = v62;
            if (v72 < 0)
            {
              operator delete(v71[0]);
            }

            if (v92 < 0)
            {
              operator delete(*v89);
            }
          }
        }

        else
        {
          if (v22)
          {
            v63 = v8;
            v32 = (*(this->__r_.__value_.__r.__words[0] + 80))(v89, this);
            if (v92 >= 0)
            {
              v33 = v89;
            }

            else
            {
              v33 = *v89;
            }

            if (*(v34 + 23) < 0)
            {
              v34 = *v34;
            }

            v61 = v34;
            std::string::basic_string[abi:ne200100]<0>(v71, ",");
            BambiServices::namesForServiceMask(v18, __p);
            if (v74 >= 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            v60 = v36;
            v38 = &v37[24 * LODWORD(this[29].__r_.__value_.__r.__words[2])];
            if (v38[23] >= 0)
            {
              v39 = &v37[24 * LODWORD(this[29].__r_.__value_.__r.__words[2])];
            }

            else
            {
              v39 = *v38;
            }

            v40 = this[54].__r_.__value_.__r.__words[1];
            std::string::basic_string[abi:ne200100]<0>(&v67, ",");
            BambiServices::namesForServiceMask(v40, v69);
            if (v70 >= 0)
            {
              v41 = v69;
            }

            else
            {
              v41 = v69[0];
            }

            *buf = 141559299;
            *&buf[4] = 1752392040;
            v79 = 2081;
            v80 = v33;
            v81 = 2080;
            v82 = v61;
            v83 = 2080;
            v84 = v60;
            v85 = 2080;
            v86 = v39;
            v87 = 2080;
            v88 = v41;
            _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration state changed from %s (%s) to %s (%s)", buf, 0x3Eu);
            if (v70 < 0)
            {
              operator delete(v69[0]);
            }

            v8 = v63;
            if (v68 < 0)
            {
              operator delete(v67);
            }

            if (v74 < 0)
            {
              operator delete(__p[0]);
            }

            if (v72 < 0)
            {
              operator delete(v71[0]);
            }

            if (v92 < 0)
            {
              operator delete(*v89);
            }
          }

          if (LODWORD(this[29].__r_.__value_.__r.__words[2]) == 2)
          {
            ims::AccessNetwork::set(this + 30, v6 + 143, v6 + 144);
          }

          else
          {
            ims::AccessNetwork::clear(&this[30]);
          }
        }

        Retry = SipRegistrationNotification::secondsUntilNextRetry(a2);
        v44 = this[160].__r_.__value_.__l.__data_;
        if (v44)
        {
          Retry = (*(*v44 + 304))(v44, a2, &v75);
        }

        if (*v20 == 3)
        {
          SipRegistrationClient::terminateRegEvents(this);
          SipUserAgent::clearAssociatedUris(v64);
          (*(**(v64 + 46) + 32))(*(v64 + 46));
          if ((v65 & 1) != 0 && SipRegistrationNotification::secondsUntilNextRetry(a2) <= 0)
          {
            goto LABEL_97;
          }
        }

        else if (*(*(*a2 + 48))(a2) == 2)
        {
          SipRegistrationClient::clearDeferredNotifications(this);
          if (v65 & 1) != 0 || (this[160].__r_.__value_.__s.__data_[16])
          {
            goto LABEL_97;
          }
        }

        if ((*(*a2 + 40))(a2))
        {
          v45 = SipRegistrationNotification::secondsUntilNextRetry(a2);
          v46 = *a2;
          if (Retry == v45)
          {
            (*v46)(a2, 0);
          }

          else
          {
            v55 = v46[3](a2);
            v56 = time(0);
            if ((Retry + 1) >= 2)
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v55[1] = v56;
            v55[2] = v57 + Retry;
            (**v55)(v55, 0);
            (*(*v55 + 16))(v55);
          }

LABEL_122:
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

LABEL_124:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_125;
        }

LABEL_97:
        v47 = this[11].__r_.__value_.__l.__size_;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          (*(this->__r_.__value_.__r.__words[0] + 80))(v89, this);
          v48 = v92;
          v49 = *v89;
          if (this[110].__r_.__value_.__s.__data_[21])
          {
            v50 = "true";
          }

          else
          {
            v50 = "false";
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v50);
          v51 = v89;
          if (v48 < 0)
          {
            v51 = v49;
          }

          if (v74 >= 0)
          {
            v52 = __p;
          }

          else
          {
            v52 = __p[0];
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          v79 = 2081;
          v80 = v51;
          v81 = 2080;
          v82 = v52;
          _os_log_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot notifying delegate of duplicate or suppressed state change (transient=%s)", buf, 0x20u);
          if (v74 < 0)
          {
            operator delete(__p[0]);
          }

          if (v92 < 0)
          {
            operator delete(*v89);
          }
        }

        if (this[110].__r_.__value_.__s.__data_[21] == 1 && *(*(*a2 + 48))(a2) == 3)
        {
          v53 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v54 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global(v53);
          }

          v58 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v66[0] = v6;
          v66[1] = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          IMSMetricsManager::logRegistrationTerminated(v54, v66);
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }
        }

        goto LABEL_122;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = this[11].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    v42 = v81 >= 0 ? buf : *buf;
    *v89 = 141558275;
    *&v89[4] = 1752392040;
    v90 = 2081;
    v91 = v42;
    _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v89, 0x16u);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v5)
  {
    goto LABEL_124;
  }

LABEL_125:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1E4F23B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  _Unwind_Resume(a1);
}

void SipRegistrationTerminatedNotification::~SipRegistrationTerminatedNotification(SipRegistrationTerminatedNotification *this)
{
  *this = &unk_1F5EF8B60;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipRegistrationStateNotification::~SipRegistrationStateNotification(this);
}

{
  *this = &unk_1F5EF8B60;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipRegistrationStateNotification::~SipRegistrationStateNotification(this);

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationActiveNotification::~SipRegistrationActiveNotification(void **this)
{
  *this = &unk_1F5EF8BB0;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  ImsResult::~ImsResult((this + 9));

  SipRegistrationStateNotification::~SipRegistrationStateNotification(this);
}

{
  *this = &unk_1F5EF8BB0;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  ImsResult::~ImsResult((this + 9));
  SipRegistrationStateNotification::~SipRegistrationStateNotification(this);

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationSubject::actionOnObservers(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v5 = v2[4];
      v6 = v2[5];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = 0;
      }

      v10 = v5;
      (*(a2 + 16))(a2, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void sub_1E4F23E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::updateExpirationTimer(SipRegistrationClient *this, const SipContact *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(this + 63);
    if (v3)
    {
      v4 = a2;
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        v6 = *(this + 62);
        if (v6)
        {
          if ((*(*this + 288))(this))
          {
            v7 = SipStack::prefs(v6);
            if (ImsPrefs::EnforceMaximumEmergencyExpirationSeconds(v7))
            {
              v8 = SipStack::prefs(v6);
              if (!ImsPrefs::EmergencyCallBackModeExpirationSeconds(v8))
              {
                v9 = SipStack::prefs(v6);
                v10 = ImsPrefs::EnforceMaximumEmergencyExpirationSeconds(v9);
                if (v10 < v4)
                {
                  v4 = v10;
                }

                v11 = *(this + 34);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(v42, this);
                  v12 = v45 >= 0 ? v42 : *v42;
                  *buf = 141558531;
                  *&buf[4] = 1752392040;
                  v38 = 2081;
                  v39 = v12;
                  v40 = 1024;
                  LODWORD(v41) = v4;
                  _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sforcing emergency registration expiration to %u", buf, 0x1Cu);
                  if (v45 < 0)
                  {
                    operator delete(*v42);
                  }
                }
              }
            }
          }

          *(this + 82) = time(0) + v4;
          v13 = *(v6 + 280);
          v14 = *(v6 + 288);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *(v13 + 1120);
          if (v15)
          {
            SipIPSecTransportGroup::updateExpiration(v15, v4 + 30);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if ((*(*this + 288))(this) || (v16 = *(this + 339), v4 <= 2 * v16))
          {
            v17 = v4 >> 1;
          }

          else
          {
            v17 = v4 - v16;
          }

          v21 = 0;
          v22 = time(0) + v17;
          *(this + 83) = v22;
          *(this + 84) = v22;
          v23 = *(this + 85);
          if (v23 >= 1)
          {
            v24 = __OFSUB__(v22, v23);
            v25 = v22 - v23;
            if (!((v25 < 0) ^ v24 | (v25 == 0)))
            {
              v26 = v25 * *(this + 340);
              if (v26 / 100 >= *(this + 342))
              {
                v21 = *(this + 342);
              }

              else
              {
                v21 = v26 / 100;
              }
            }
          }

          if ((*(this + 1380) & 1) == 0 && v21 + v17 < v4)
          {
            if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 80))(v42, this);
              ims::formatTimeInterval(v21);
            }

            *(this + 84) = v22 + v21;
          }

          v27 = *(this + 31);
          if (v27)
          {
            v28 = *(this + 30);
            v29 = std::__shared_weak_count::lock(v27);
            if (v29)
            {
              v30 = v29;
              p_shared_weak_owners = &v29->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              v32 = *(this + 34);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(v42, this);
                v35 = *(this + 82);
                ims::TimeAndIntervalFromNow::logStr(&v35);
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(v42, this);
                v36[0] = *(this + 84);
                ims::TimeAndIntervalFromNow::logStr(v36);
              }

              atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v36[11] = 0;
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v20 = *(this + 34);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(buf, this);
      v34 = v40 >= 0 ? buf : *buf;
      *v42 = 141558275;
      *&v42[4] = 1752392040;
      v43 = 2081;
      v44 = v34;
      _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v42, 0x16u);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v18 = *(this + 34);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(buf, this);
      v19 = v40 >= 0 ? buf : *buf;
      *v42 = 141558275;
      *&v42[4] = 1752392040;
      v43 = 2081;
      v44 = v19;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sexpiration set to 0.  Clearing registration timers.", v42, 0x16u);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(*buf);
      }
    }

    *(this + 84) = 0;
    *(this + 41) = 0u;
    SipTimerContainer::cancelTimer(this + 35, _MergedGlobals_17);
    SipTimerContainer::cancelTimer(this + 35, &qword_1EE2BC688);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::triggerRegistrationTermination(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 712) == 2)
  {
    if (*(a1 + 2661) == 1)
    {
      LODWORD(__p[0]) = 4;
      SipRegistrationClient::setRegistrationState(a1, __p, 0);
    }

    else if (*(a1 + 2660) == 1)
    {
      operator new();
    }
  }

  else
  {
    v6 = *(a1 + 272);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 80))(__p, a1);
      v7 = (SBYTE7(v23) & 0x80u) == 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v7;
      _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}striggerRegistrationTermination: not registered", buf, 0x16u);
      if (SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 2660) == 1)
    {
      operator new();
    }
  }

  v8 = *(a1 + 4240);
  if (v8)
  {
    v9 = **v8;
    if (v10)
    {
      v11 = v10[1719];
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 213);
      }

      if (v11 == 7)
      {
        if (v12 >= 0)
        {
          v13 = (v10 + 1696);
        }

        else
        {
          v13 = *(v10 + 212);
        }

        v14 = *v13;
        v15 = *(v13 + 3);
        v17 = v14 == 1919313234 && v15 == 1752393074;
      }

      else
      {
        v17 = 0;
      }

      if ((a4 | v17))
      {
        goto LABEL_34;
      }

LABEL_35:
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      memset(v24, 0, sizeof(v24));
      *__p = 0u;
      v23 = 0u;
      SipContact::SipContact(__p, 0);
      SipUri::operator=((v24 + 8), a1 + 808);
      HIDWORD(__p[1]) = 3;
      DWORD2(v25) = 0;
      DWORD2(v28) = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = *(a1 + 248);
      v20 = *(a1 + 240);
      if (v18)
      {
        v21 = std::__shared_weak_count::lock(v18);
        if (v21)
        {
          v19 = *(a1 + 2661);
          SipRegistrationTerminatedNotification::SipRegistrationTerminatedNotification(buf, &v20);
        }
      }

      else
      {
        v21 = 0;
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    if (!a4)
    {
      goto LABEL_35;
    }
  }

  else if ((a4 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  SipRegistrationDeferralManager::cancel(a1 + 4240);
  goto LABEL_35;
}

void sub_1E4F25334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::terminateRegEvents(SipRegistrationClient *this)
{
  SipRegistrationSubject::actionOnObservers(this + 184, &__block_literal_global_60);
  *(this + 792) = 0;
  v2 = *(this + 81);
  if (v2)
  {

    SipEventPackage::terminateWithoutUnsubscribing(v2);
  }
}

void SipRegistrationClient::notifyDelegateOfRegistrationActive(SipRegistrationClient *this, const SipRegistrationActiveNotification *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *(this + 1029) = *(this + 156);
  *(this + 156) = 0;
  v3 = *(this + 63);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 62);
      if (v6)
      {
        if (((*(*this + 288))(this) & 1) != 0 || *(v6 + 320) != 3)
        {
          v7 = *(this + 80);
          if (v7)
          {
            v8 = std::__shared_weak_count::lock(v7);
            if (v8)
            {
              v9 = v8;
              v10 = *(this + 79);
              if (v10)
              {
                (*(*v10 + 16))(v10, this + 512, a2);
                v11 = *(this + 4175);
                v12 = v11;
                if ((v11 & 0x80u) != 0)
                {
                  v11 = *(this + 520);
                }

                if (v11 == 2)
                {
                  v13 = v12 >= 0 ? (this + 4152) : *(this + 519);
                  if (*v13 == SipRegistrationMetrics::kTransientOperationMT)
                  {
                    v17.tv_sec = 0;
                    *&v17.tv_usec = 0;
                    gettimeofday(&v17, 0);
                    *(this + 523) = (LODWORD(v17.tv_sec) - 2085978496);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }
          }

          if (((*(*this + 288))(this) & 1) == 0)
          {
            SipStack::handleRegistrationActive(v6);
          }
        }

LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_24;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *(this + 34);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(&v17, this);
    v16 = v18 >= 0 ? &v17 : v17.tv_sec;
    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2081;
    v22 = v16;
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(v17.tv_sec);
    }
  }

  if (v5)
  {
    goto LABEL_23;
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4F256B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::notifyDelegateOfRegistrationTermination(SipRegistrationClient *this, const SipRegistrationTerminatedNotification *a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(this + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 79);
      if (!v9)
      {
LABEL_30:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_31;
      }

      v10 = *(this + 63);
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = *(this + 62);
          if (v12)
          {
            if (((*(*this + 288))(this) & 1) == 0)
            {
              SipStack::handleRegistrationTerminated(v12);
            }

            v13 = *(this + 480);
            if (v13 && (*(*v13 + 464))(v13) && SipRegistrationNotification::secondsUntilNextRetry(a2) != -1)
            {
              v14 = *(this + 34);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(__p, this);
                if (v21 >= 0)
                {
                  v15 = __p;
                }

                else
                {
                  v15 = __p[0];
                }

                *buf = 141558275;
                v23 = 1752392040;
                v24 = 2081;
                v25 = v15;
                _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdropping registration terminated notification while CSFB mode is enabled", buf, 0x16u);
                if (v21 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            else
            {
              if ((a3 & 1) == 0 && SipStack::callCount(v12))
              {
                v17 = *(this + 524);
                if (v17)
                {
                  (*(*v17 + 16))(v17);
                }

                operator new();
              }

              (*(*v9 + 24))(v9, this + 512, a2, *(this + 530) != 0);
            }

LABEL_29:
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            goto LABEL_30;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      v16 = *(this + 34);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        (*(*this + 80))(__p, this);
        v19 = v21 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2081;
        v25 = v19;
        _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

LABEL_31:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4F25AC0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL SipRegistrationClient::isImsOutageResponse(SipMessage **a1)
{
  v1 = *a1;
  if (*(*a1 + 32) != 503)
  {
    return 0;
  }

  if (*(v1 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(v1 + 17), *(v1 + 18));
  }

  else
  {
    v6 = *(v1 + 136);
  }

  if (isImsOutageText(&v6))
  {
    v3 = 1;
  }

  else
  {
    SipMessage::reasonText(*a1, &__p);
    v3 = isImsOutageText(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1E4F25BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL isImsOutageText(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IMS Outage");
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v14;
  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (!strcasecmp(v2, v4))
  {
    v9 = 1;
    if ((v3 & 0x80) == 0)
    {
      return v9;
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(v11, "Service Unavailable: IMS Core Outage");
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v12;
  v7 = v11[0];
  if (v12 >= 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = v11[0];
  }

  v9 = strcasecmp(v5, v8) == 0;
  if (v6 < 0)
  {
    operator delete(v7);
  }

  if (v14 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

  return v9;
}

void sub_1E4F25CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationClient::isSecurityAgreementError(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 128) == 494)
  {
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sec-agree");
  v2 = SipMessage::requiresOption(v1, __p) && *(*a1 + 128) == 421;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4F25D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationClient::handleResponse(uint64_t a1, SipResponse **a2, uint64_t a3)
{
  v184 = *MEMORY[0x1E69E9840];
  if (*a3 != *(a1 + 3000))
  {
    v5 = *(a1 + 272);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 80))(v136, a1);
      v6 = v136[23];
      v7 = *v136;
      (*(**a3 + 144))(__p);
      v8 = v136;
      if (v6 < 0)
      {
        v8 = v7;
      }

      if (v135 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v8;
      *&buf[22] = 2080;
      *&buf[24] = v9;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}signoring response from old transaction %s", buf, 0x20u);
      if (v135 < 0)
      {
        operator delete(*__p);
      }

      if ((v136[23] & 0x80000000) != 0)
      {
        operator delete(*v136);
      }
    }

    v10 = 1;
    goto LABEL_295;
  }

  v11 = *(a1 + 704);
  if (v11 != 6 && v11 != 9)
  {
    if (v11 != 10)
    {
      v29 = *(a1 + 272);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 80))(v136, a1);
        if (v136[23] >= 0)
        {
          v30 = v136;
        }

        else
        {
          v30 = *v136;
        }

        v31 = &_MergedGlobals_17[3 * *(a1 + 704)];
        v32 = v31 + 15;
        if (*(v31 + 143) < 0)
        {
          v32 = *v32;
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v30;
        *&buf[22] = 2080;
        *&buf[24] = v32;
        _os_log_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived unexpected REGISTER response while in state %s", buf, 0x20u);
        if ((v136[23] & 0x80000000) != 0)
        {
          operator delete(*v136);
        }
      }
    }

    SipRegistrationClient::setClientState(a1, 1);
    v10 = 0;
    goto LABEL_295;
  }

  v13 = *(a1 + 504);
  if (v13)
  {
    v15 = std::__shared_weak_count::lock(v13);
    if (v15)
    {
      v16 = *(a1 + 496);
      if (v16)
      {
        v17 = *a2;
        v18 = *(*a2 + 32);
        if ((v18 - 200) <= 0x63)
        {
          v19 = a2[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(a1 + 504);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = *(a1 + 496);
              if (v22)
              {
                v24 = *(v22 + 248);
                v23 = *(v22 + 256);
                if (v23)
                {
                  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v117 = v23;
                if (!v24)
                {
                  v58 = *(a1 + 272);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    (*(*a1 + 80))(buf, a1);
                    v59 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                    *v136 = 141558275;
                    *&v136[4] = 1752392040;
                    *&v136[12] = 2081;
                    *&v136[14] = v59;
                    _os_log_error_impl(&dword_1E4C3F000, v58, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", v136, 0x16u);
                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  goto LABEL_288;
                }

                if (v19)
                {
                  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                ContactInResponse = SipRegistrationClient::findContactInResponse((a1 + 808), v17, 1);
                v26 = ContactInResponse;
                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }

                if (!v26)
                {
                  v27 = SipStack::prefs(v22);
                  ContactInResponse = ImsPrefs::CheckContactHeaderOnRegisterResponse(v27);
                  if (ContactInResponse)
                  {
                    v28 = *(a1 + 272);
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      (*(*a1 + 80))(buf, a1);
                      v88 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                      *v136 = 141558275;
                      *&v136[4] = 1752392040;
                      *&v136[12] = 2081;
                      *&v136[14] = v88;
                      _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sIncoming 200 response does not contain a recognized contact URI", v136, 0x16u);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    *buf = v17;
                    *&buf[8] = v19;
                    if (v19)
                    {
                      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    SipRegistrationClient::handleErrorResponse(a1, buf);
LABEL_286:
                    if (v19)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                    }

LABEL_288:
                    if (v117)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
                    }

LABEL_290:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
LABEL_291:
                    if (v19)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                    }

                    goto LABEL_293;
                  }
                }

                if (capabilities::radio::supportsRel16(ContactInResponse) && SipRegistrationClient::nasImsRegInProgress(a1))
                {
                  IPTelephonyManager::getBambiClient(buf);
                  v53 = *(*buf + 304);
                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  if (v53 && *(v53 + 8) && *(v53 + 72) == 1)
                  {
                    log = *(a1 + 272);
                    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(buf, a1);
                      v54 = buf;
                      if ((buf[23] & 0x80u) != 0)
                      {
                        v54 = *buf;
                      }

                      *v136 = 141558275;
                      *&v136[4] = 1752392040;
                      *&v136[12] = 2081;
                      *&v136[14] = v54;
                      _os_log_impl(&dword_1E4C3F000, log, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleSuccessResponse: RegAccessCheck done", v136, 0x16u);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    IMSNasDeviceClient::reportCallStatus(v53, *(v22 + 4372), 2, 64, v22 + 3432, 1, 0, 0);
                  }

                  SipRegistrationClient::nasImsRegStop(a1);
                }

                HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(v17);
                if (HeaderWith && (v56 = HeaderWith[8], v56 != HeaderWith[9]) && *v56)
                {
                  v57 = SipViaHop::keep(*v56);
                }

                else
                {
                  v57 = 0;
                }

                SipResponse::asImsResult(v17, buf);
                SipRegistrationMetrics::registrationAttemptCompleted((a1 + 4008), buf, v57);
                ImsResult::~ImsResult(buf);
                if (*(a1 + 3856) != 1)
                {
                  SipUri::operator=((a1 + 3424), a1 + 3016);
                  v68 = *(a1 + 688);
                  if (v68)
                  {
                    if ((*(*v68 + 160))(v68))
                    {
                      v69 = *(v22 + 280);
                      v70 = *(v22 + 288);
                      if (v70)
                      {
                        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v71 = *(a1 + 696);
                      v123 = *(a1 + 688);
                      v124 = v71;
                      if (v71)
                      {
                        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      SipTransportLayer::setIPSecTransport(v69, &v123);
                      if (v124)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v124);
                      }

                      if (v70)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                      }
                    }

                    else
                    {
                      v80 = *(a1 + 272);
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*a1 + 80))(buf, a1);
                        v81 = buf;
                        if ((buf[23] & 0x80u) != 0)
                        {
                          v81 = *buf;
                        }

                        *v136 = 141558275;
                        *&v136[4] = 1752392040;
                        *&v136[12] = 2081;
                        *&v136[14] = v81;
                        _os_log_impl(&dword_1E4C3F000, v80, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived 200 response to REGISTER without a 401 challenge.  Unable to initialize new secure transport.", v136, 0x16u);
                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }
                      }
                    }
                  }

                  *buf = &unk_1F5EF5460;
                  memset(&buf[8], 0, 48);
                  SipResponse::associatedUris(v17, buf);
                  v82 = (*(**(a1 + 3840) + 336))(*(a1 + 3840), buf);
                  SipUserAgent::setAssociatedUris(v24, buf, v82);
                }

                SipRegistrationClient::cleanUpRegistrationArtifacts(a1);
                *(a1 + 620) = 0;
                v90 = *(v22 + 280);
                v89 = *(v22 + 288);
                if (v89)
                {
                  atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (*(a1 + 3856))
                {
                  v91 = "successful deregistration";
                }

                else
                {
                  v91 = "successful registration";
                }

                std::string::basic_string[abi:ne200100]<0>(buf, v91);
                SipTransportLayer::resetTransportErrors(v90, buf);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (v89)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v89);
                }

                if (*(a1 + 3856))
                {
                  v92 = 0;
                }

                else
                {
                  v92 = 2;
                }

                *buf = v92;
                SipRegistrationClient::setRegistrationState(a1, buf, 0);
                SipRegistrationClient::setClientState(a1, 1);
                if (v19)
                {
                  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                  v93 = *(a1 + 3856);
                  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v93 = *(a1 + 3856);
                }

                v94 = SipRegistrationClient::findContactInResponse((a1 + 808), v17, 0);
                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }

                v131 = 0;
                v179 = 0u;
                v178 = 0u;
                v177 = 0u;
                v175 = 0u;
                *v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                v171 = 0u;
                v172 = 0u;
                v169 = 0u;
                v170 = 0u;
                v167 = 0u;
                v168 = 0u;
                v165 = 0u;
                v166 = 0u;
                v163 = 0u;
                v164 = 0u;
                v161 = 0u;
                v162 = 0u;
                v159 = 0u;
                v160 = 0u;
                v157 = 0u;
                v158 = 0u;
                v155 = 0u;
                v156 = 0u;
                v153 = 0u;
                v154 = 0u;
                v152 = 0u;
                memset(buf, 0, sizeof(buf));
                SipContact::SipContact(buf, 0);
                SipMessage::headerValueAsUint32(v17, "Expires", &v131);
                if (v94)
                {
                  v95 = v94 + 432;
                  if (v94 + 432 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v94 + 424, "expires"))
                  {
                    v131 = SipParameterMap::uintParameter(v94 + 416, "expires", 0);
                  }

                  if (v95 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v94 + 424, "pub-gruu"))
                  {
                    v96 = *(a1 + 504);
                    if (v96)
                    {
                      v97 = std::__shared_weak_count::lock(v96);
                      if (v97)
                      {
                        v98 = v97;
                        v99 = *(a1 + 496);
                        if (v99)
                        {
                          v114 = *(v99 + 248);
                          loga = *(v99 + 256);
                          if (loga)
                          {
                            atomic_fetch_add_explicit(&loga->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          if (v114)
                          {
                            v100 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v94 + 424, "pub-gruu");
                            if (v95 == v100)
                            {
                              v101 = &ims::kEmptyString;
                            }

                            else
                            {
                              v101 = (v100 + 56);
                            }

                            ims::removeQuotes(v101, v136);
                            SipUserAgent::setPublicGruu(v114, v136);
                          }

                          if (loga)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](loga);
                          }
                        }

                        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
                      }
                    }
                  }

                  SipUri::operator=(&buf[40], v94 + 8);
                  DWORD2(v179) = *(v94 + 456);
                  SipRegistrationClient::updateServiceMaskForContact(a1, buf);
                }

                else
                {
                  if ((v93 & 1) == 0)
                  {
                    v110 = *(a1 + 272);
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(v136, a1);
                      v111 = v136[23] >= 0 ? v136 : *v136;
                      *v180 = 141558275;
                      *&v180[4] = 1752392040;
                      v181 = 2081;
                      v182 = v111;
                      _os_log_impl(&dword_1E4C3F000, v110, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}scouldn't find my contact in registration response", v180, 0x16u);
                      if ((v136[23] & 0x80000000) != 0)
                      {
                        operator delete(*v136);
                      }
                    }

                    SipContact::~SipContact(buf);
                    goto LABEL_286;
                  }

                  SipUri::operator=(&buf[40], a1 + 808);
                  DWORD2(v179) = 0;
                }

                v102 = v131;
                if ((v93 & (v131 != 0)) == 1)
                {
                  v103 = *(a1 + 272);
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 80))(v180, a1);
                    v104 = v183 >= 0 ? v180 : *v180;
                    *v136 = 141558531;
                    *&v136[4] = 1752392040;
                    *&v136[12] = 2081;
                    *&v136[14] = v104;
                    *&v136[22] = 1024;
                    *&v136[24] = v102;
                    _os_log_impl(&dword_1E4C3F000, v103, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sexpected expiration of 0 but got %u", v136, 0x1Cu);
                    if (v183 < 0)
                    {
                      operator delete(*v180);
                    }
                  }

                  v131 = 0;
                  LODWORD(v176[1]) = 0;
                }

                else
                {
                  LODWORD(v176[1]) = v131;
                  if (v131)
                  {
                    *&buf[12] = 2;
                    v150 = 0;
                    v148 = 0u;
                    v149 = 0u;
                    *v146 = 0u;
                    *v147 = 0u;
                    v144 = 0u;
                    v145 = 0u;
                    v142 = 0u;
                    v143 = 0u;
                    v140 = 0u;
                    v141 = 0u;
                    v138 = 0u;
                    v139 = 0u;
                    v137 = 0u;
                    memset(v136, 0, sizeof(v136));
                    v105 = *(a1 + 248);
                    v125 = *(a1 + 240);
                    if (v105)
                    {
                      if (std::__shared_weak_count::lock(v105))
                      {
                        SipRegistrationActiveNotification::SipRegistrationActiveNotification(v136, &v125);
                      }
                    }

                    std::__throw_bad_weak_ptr[abi:ne200100]();
                  }
                }

                *&buf[12] = 3;
                if ((v93 & 1) == 0)
                {
                  v106 = *(a1 + 272);
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 80))(v136, a1);
                    v107 = v136[23] >= 0 ? v136 : *v136;
                    *v180 = 141558275;
                    *&v180[4] = 1752392040;
                    v181 = 2081;
                    v182 = v107;
                    _os_log_impl(&dword_1E4C3F000, v106, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sgot expires = 0 for a registration. Treating it as a terminated notification.", v180, 0x16u);
                    if ((v136[23] & 0x80000000) != 0)
                    {
                      operator delete(*v136);
                    }
                  }
                }

                *&v140 = 0;
                v138 = 0u;
                v139 = 0u;
                v137 = 0u;
                memset(v136, 0, sizeof(v136));
                v108 = *(a1 + 248);
                v129 = *(a1 + 240);
                if (v108)
                {
                  if (std::__shared_weak_count::lock(v108))
                  {
                    v109 = *(a1 + 2661);
                    v127 = 0;
                    v128 = 0;
                    SipRegistrationTerminatedNotification::SipRegistrationTerminatedNotification(v136, &v129);
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }
            }
          }

          else
          {
            v21 = 0;
          }

          v34 = *(a1 + 272);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 80))(buf, a1);
            v72 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            *v136 = 141558275;
            *&v136[4] = 1752392040;
            *&v136[12] = 2081;
            *&v136[14] = v72;
            _os_log_error_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v136, 0x16u);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          if (!v21)
          {
            goto LABEL_291;
          }

          goto LABEL_290;
        }

        if (v18 == 423)
        {
          *__p = 0;
          if (!SipMessage::headerValueAsUint32(v17, "Min-Expires", __p))
          {
            v40 = *(a1 + 272);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 80))(v136, a1);
              v41 = v136[23] >= 0 ? v136 : *v136;
              v42 = *(a1 + 1348);
              *buf = 141558531;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v41;
              *&buf[22] = 1024;
              *&buf[24] = v42;
              _os_log_impl(&dword_1E4C3F000, v40, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sgot a 423 response with no Min-Expires.  Will throttle and retry with expires = %u", buf, 0x1Cu);
              if ((v136[23] & 0x80000000) != 0)
              {
                operator delete(*v136);
              }
            }

            v43 = *a2;
            v19 = a2[1];
            v121[0] = v43;
            v121[1] = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::handleErrorResponse(a1, v121);
            goto LABEL_291;
          }

          *(a1 + 1348) = *__p;
          SipRegistrationClient::retryRegistrationAfterProceduralError(a1);
        }

        else
        {
          if (v18 == 401)
          {
            v19 = a2[1];
            v122[0] = v17;
            v122[1] = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::handleUnauthorizedResponse(a1, v122);
            goto LABEL_291;
          }

          v36 = a2[1];
          v120[0] = *a2;
          v120[1] = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          isSecurityAgreementError = SipRegistrationClient::isSecurityAgreementError(v120);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (isSecurityAgreementError)
          {
            if (*(v16 + 2166) == 1)
            {
              v38 = *(a1 + 272);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                (*(*a1 + 80))(buf, a1);
                v86 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *v136 = 141558275;
                *&v136[4] = 1752392040;
                *&v136[12] = 2081;
                *&v136[14] = v86;
                _os_log_error_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sReceived security agreement error, but IPSec is enabled", v136, 0x16u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v39 = *a2;
              v19 = a2[1];
              v119[0] = v39;
              v119[1] = v19;
              if (v19)
              {
                atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipRegistrationClient::handleErrorResponse(a1, v119);
              goto LABEL_291;
            }

            v60 = *(v16 + 280);
            v61 = *(v16 + 288);
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            isIPSecAvailable = SipTransportLayer::isIPSecAvailable(v60);
            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
            }

            v63 = *(a1 + 272);
            if (isIPSecAvailable)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 80))(buf, a1);
                v64 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *v136 = 141558275;
                *&v136[4] = 1752392040;
                *&v136[12] = 2081;
                *&v136[14] = v64;
                _os_log_impl(&dword_1E4C3F000, v63, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReceived security agreement error. Enabling IPSec and retrying", v136, 0x16u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v10 = 1;
              *(v16 + 2166) = 1;
              SipRegistrationClient::retryRegistrationAfterProceduralError(a1);
              goto LABEL_294;
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 80))(buf, a1);
              v87 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              *v136 = 141558275;
              *&v136[4] = 1752392040;
              *&v136[12] = 2081;
              *&v136[14] = v87;
              _os_log_error_impl(&dword_1E4C3F000, v63, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sReceived security agreement error and IPSec is unavailable for use", v136, 0x16u);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            SipResponse::asImsResult(*a2, buf);
            SipRegistrationClient::handleRegistrationError(a1, buf, -1, 1, 0);
            goto LABEL_204;
          }

          v44 = *a2;
          v45 = *(*a2 + 32);
          if (v45 == 305)
          {
            *&v153 = 0;
            v152 = 0u;
            memset(buf, 0, sizeof(buf));
            SipResponse::asImsResult(v44, buf);
            v46 = *(a1 + 3840);
            v47 = v46[57];
            if (v47 && v47 != v46[58])
            {
              ImsResult::operator=(v47 + 496 * v46[60] + 408, buf);
              v46 = *(a1 + 3840);
            }

            if (SipRegistrationPolicy::allProxiesHaveError(v46, buf))
            {
              v48 = SipStack::prefs(v16);
              v49 = ImsPrefs::DropRegistrationOn305ToAllProxies(v48);
              v50 = *(a1 + 272);
              v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
              if (v49)
              {
                if (v51)
                {
                  (*(*a1 + 80))(v136, a1);
                  v52 = v136[23] >= 0 ? v136 : *v136;
                  *__p = 141558275;
                  *&__p[4] = 1752392040;
                  v133 = 2081;
                  v134 = v52;
                  _os_log_impl(&dword_1E4C3F000, v50, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived redirects from all proxies. Dropping registration.", __p, 0x16u);
                  if ((v136[23] & 0x80000000) != 0)
                  {
                    operator delete(*v136);
                  }
                }

                (*(*a1 + 176))(a1, 19, -1, 0);
              }

              else
              {
                if (v51)
                {
                  (*(*a1 + 80))(v136, a1);
                  v79 = v136[23] >= 0 ? v136 : *v136;
                  *__p = 141558275;
                  *&__p[4] = 1752392040;
                  v133 = 2081;
                  v134 = v79;
                  _os_log_impl(&dword_1E4C3F000, v50, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sreceived redirects from all proxies. Resetting PDN.", __p, 0x16u);
                  if ((v136[23] & 0x80000000) != 0)
                  {
                    operator delete(*v136);
                  }
                }

                (*(*a1 + 168))(a1);
              }

              goto LABEL_204;
            }

            v73 = SipMessage::header<SipContactHeader>(*a2);
            if (v73)
            {
              v74 = v73[9];
              if (v74)
              {
                if (v74 != v73[10])
                {
                  v75 = (*(*a1 + 208))(a1);
                  v76 = SipHost::equalsWithDefaultPort((v74 + 16), (a1 + 3024), v75);
                  v77 = *(a1 + 272);
                  if (v76)
                  {
                    if (os_log_type_enabled(*(a1 + 272), OS_LOG_TYPE_ERROR))
                    {
                      (*(*a1 + 80))(v136, a1);
                      v78 = v136[23] >= 0 ? v136 : *v136;
                      *__p = 141558275;
                      *&__p[4] = 1752392040;
                      v133 = 2081;
                      v134 = v78;
                      _os_log_error_impl(&dword_1E4C3F000, v77, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sreceived redirect to our current proxy. Let's just skip to the next one.", __p, 0x16u);
                      if ((v136[23] & 0x80000000) != 0)
                      {
                        operator delete(*v136);
                      }
                    }
                  }

                  else
                  {
                    if (os_log_type_enabled(*(a1 + 272), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 80))(__p, a1);
                      SipHop::logStr((v74 + 8));
                    }

                    SipRegistrationPolicy::setProxy(*(a1 + 3840), (v74 + 8), v136);
                    v83 = (*(**&v136[8] + 24))(*&v136[8], *&v136[16]);
                    ImsResult::~ImsResult(v136);
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_203;
                    }

                    if (os_log_type_enabled(*(a1 + 272), OS_LOG_TYPE_ERROR))
                    {
                      (*(*a1 + 80))(__p, a1);
                      SipHop::logStr((v74 + 8));
                    }
                  }
                }
              }
            }

            v84 = *(a1 + 272);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              (*(*a1 + 80))(v136, a1);
              v85 = v136[23] >= 0 ? v136 : *v136;
              *__p = 141558275;
              *&__p[4] = 1752392040;
              v133 = 2081;
              v134 = v85;
              _os_log_impl(&dword_1E4C3F000, v84, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sskipping to next proxy", __p, 0x16u);
              if ((v136[23] & 0x80000000) != 0)
              {
                operator delete(*v136);
              }
            }

            (*(**(a1 + 3840) + 504))(*(a1 + 3840));
LABEL_203:
            SipRegistrationClient::retryRegistrationAfterProceduralError(a1);
LABEL_204:
            ImsResult::~ImsResult(buf);
            goto LABEL_293;
          }

          if (v45 >= 0x12C)
          {
            v65 = *(a1 + 272);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 80))(v136, a1);
              if (v136[23] >= 0)
              {
                v66 = v136;
              }

              else
              {
                v66 = *v136;
              }

              v67 = *(*a2 + 32);
              *buf = 141558787;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v66;
              *&buf[22] = 1024;
              *&buf[24] = v67;
              *&buf[28] = 1024;
              *&buf[30] = v67 / 0x64;
              _os_log_impl(&dword_1E4C3F000, v65, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sgot a non-success response (code = %u, class = %d)", buf, 0x22u);
              if ((v136[23] & 0x80000000) != 0)
              {
                operator delete(*v136);
              }

              v44 = *a2;
            }

            v19 = a2[1];
            v118[0] = v44;
            v118[1] = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::handleErrorResponse(a1, v118);
            goto LABEL_291;
          }
        }

LABEL_293:
        v10 = 1;
LABEL_294:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        goto LABEL_295;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v33 = *(a1 + 272);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(buf, a1);
    v35 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v136 = 141558275;
    *&v136[4] = 1752392040;
    *&v136[12] = 2081;
    *&v136[14] = v35;
    _os_log_error_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v136, 0x16u);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v10 = 0;
  if (v15)
  {
    goto LABEL_294;
  }

LABEL_295:
  v112 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1E4F28408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  SipRouteSet::~SipRouteSet(&STACK[0x240]);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::retryRegistrationAfterProceduralError(SipRegistrationClient *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  SipRegistrationClient::cleanUpRegistrationArtifacts(a1);
  v2 = *(a1 + 34);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 80))(__p, a1);
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
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sthis is where I will cancel throttling", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipRegistrationClient::internalRetryRegistration(a1);
  v4 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::internalRetryRegistration(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (*(*a1[480] + 408))(a1[480]);
  v3 = a1[34];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      (*(*a1 + 80))(v19, a1);
      SipHop::logStr((a1 + 377));
    }

    if (a1[480])
    {
      v5 = a1[34];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 80))(buf, a1);
        if (v23 >= 0)
        {
          v6 = buf;
        }

        else
        {
          v6 = *buf;
        }

        *v19 = 141558275;
        *&v19[4] = 1752392040;
        v20 = 2081;
        v21 = v6;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}scurrent policy info:", v19, 0x16u);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(*buf);
        }

        v5 = a1[34];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 80))(v19, a1);
        SipRegistrationPolicy::logStrForPolicyInfo(a1[480]);
      }
    }

    if (SipRegistrationClient::shouldDeferRegistration(a1))
    {
      v8 = a1[30];
      v7 = a1[31];
      if (*(a1 + 3856) == 1)
      {
        v18[2] = a1[30];
        if (!v7 || (v9 = std::__shared_weak_count::lock(v7), (v18[3] = v9) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v10 = v9;
        SipRegistrationDeferralManager::deferAction(a1 + 1060);
      }

      else
      {
        v18[0] = a1[30];
        if (!v7 || (v15 = std::__shared_weak_count::lock(v7), (v18[1] = v15) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v10 = v15;
        SipRegistrationDeferralManager::deferAction(a1 + 530, v18, (a1 + 164), a1 + 516);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = a1[480];
      if (v12)
      {
        v13 = a1[34];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 80))(buf, a1);
          if (v23 >= 0)
          {
            v14 = buf;
          }

          else
          {
            v14 = *buf;
          }

          *v19 = 141558275;
          *&v19[4] = 1752392040;
          v20 = 2081;
          v21 = v14;
          _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sinternalRetryRegistration: setting to policy SipRegClientRegType::RetryReg", v19, 0x16u);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(*buf);
          }

          v12 = a1[480];
        }

        *(v12 + 2372) = 3;
      }

      SipRegistrationClient::initializeTransport(v17, a1);
      ImsResult::~ImsResult(v17);
    }
  }

  else if (v4)
  {
    (*(*a1 + 80))(buf, a1);
    v11 = v23 >= 0 ? buf : *buf;
    *v19 = 141558275;
    *&v19[4] = 1752392040;
    v20 = 2081;
    v21 = v11;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot retrying emergency registration", v19, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::forceRetry(SipRegistrationClient *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    (*(*this + 80))(__p, this);
    v3 = v7 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v9 = 1752392040;
    v10 = 2081;
    v11 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sretry forced by policy", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = *(this + 375);
  if (v4)
  {
    SipTransaction::abort(v4);
  }

  SipRegistrationClient::cleanUpRegistrationArtifacts(this);
  SipRegistrationClient::internalRetryRegistration(this);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t SipRegistrationClient::shouldDeferRegistration(SipRegistrationClient *this)
{
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        v5 = v4 + 4096;
        if ((*(v4 + 4504) & 1) == 0)
        {
          v6 = SipStack::prefs(v4);
          if (ImsPrefs::EnableSignalingReduction(v6))
          {
            v7 = *(v5 + 280);
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = 0;
LABEL_9:
  v8 = *(this + 480);
  if (v8)
  {
    v9 = (*(*v8 + 456))(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(*this + 288))(this);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v10 ^ 1) & (v7 | v9);
}

void SipRegistrationClient::initializeTransport(SipRegistrationClient *this, void *a2)
{
  SipRegistrationClient::setClientState(a2, 5);
  if (*(a2[480] + 464) == *(a2[480] + 456))
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = &unk_1F5EBDEF8;
    v24 = &_bambiDomain;
    v25 = 1073741826;
    v16 = ImsResult::operator<<<char [40]>(&v23, "initializeTransport: no proxy available");
    v17 = ImsLogContainer::logResult((a2 + 2), v16);
    ImsResult::ImsResult(this, v17);
    ImsResult::~ImsResult(&v23);
    return;
  }

  v4 = a2[63];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = a2[62];
      if (v6)
      {
        v8 = *(v6 + 280);
        v7 = *(v6 + 288);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*a2[480] + 512))(v22);
        v9 = a2[31];
        if (!v9 || (v10 = a2[30], (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v12 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          v14 = v13;
          v15 = v10 + 8;
          if (!v10)
          {
            v15 = 0;
          }

          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v20 = v15;
          v21 = v13;
          std::__shared_weak_count::__release_weak(v12);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          v20 = 0;
          v21 = 0;
          std::__shared_weak_count::__release_weak(v12);
        }

        SipTransportLayer::initializeTransportToProxy(v8, v22, 0, &v20, &v23);
        ImsLogContainer::logResult((a2 + 2), &v23, this);
        ImsResult::~ImsResult(&v23);
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        std::deque<SipUri>::~deque[abi:ne200100](v22);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = &unk_1F5EBDEF8;
  v24 = &_bambiDomain;
  v25 = 1073741826;
  v18 = ImsResult::operator<<<char [12]>(&v23, "no sipstack");
  v19 = ImsLogContainer::logResult((a2 + 2), v18);
  ImsResult::ImsResult(this, v19);
  ImsResult::~ImsResult(&v23);
  if (v5)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4F29378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  ImsResult::~ImsResult(&a18);
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  std::deque<SipUri>::~deque[abi:ne200100](&a12);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::retryRegistration(SipRegistrationClient *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(this + 176) != 1)
  {
    v9 = *(this + 34);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(buf, this);
      if (v26 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v11 = &_MergedGlobals_17[3 * *(this + 176)];
      v12 = v11 + 15;
      if (*(v11 + 143) < 0)
      {
        v12 = *v12;
      }

      *__p = 141558531;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v10;
      v18 = 2080;
      *&v19 = v12;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}signoring retryRegistration request in state %s", __p, 0x20u);
      if (v26 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_40;
  }

  if (SipRegistrationClient::needsUacCheckOnRegistration(this))
  {
    IPTelephonyManager::getBambiClient(__p);
    v2 = *(*__p + 304);
    if (*&__p[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
    }

    if (!v2)
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      *__p = &unk_1F5EBDEF8;
      *&__p[8] = &_bambiDomain;
      *&__p[16] = 1073741826;
      SipRegistrationClient::handleRegistrationError(this, __p, -1, 1, 0);
      ImsResult::~ImsResult(__p);
LABEL_40:
      v16 = *MEMORY[0x1E69E9840];
      return;
    }

    v3 = *(this + 63);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(this + 62);
        if (v5)
        {
          if (*(v2 + 8) && *(v2 + 72) == 1)
          {
            v6 = *(this + 34);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 80))(__p, this);
              if (v18 >= 0)
              {
                v7 = __p;
              }

              else
              {
                v7 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v24 = 2081;
              v25 = v7;
              _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRetryRegAccessCheck...", buf, 0x16u);
              if (SHIBYTE(v18) < 0)
              {
                operator delete(*__p);
              }
            }

            IMSNasDeviceClient::reportCallStatus(v2, *(v5 + 4372), 0, 64, v5 + 3432, 1, 0, 0);
            SipRegistrationClient::setClientState(this, 4);
            SipRegistrationClient::nasImsRegStart(this);
            v8 = *(this + 480);
            if (v8)
            {
              *(v8 + 424) = 0;
              *(v8 + 432) = 0;
            }

LABEL_39:
            std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            goto LABEL_40;
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v14 = *(this + 34);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(__p, this);
      v15 = v18 >= 0 ? __p : *__p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v24 = 2081;
      v25 = v15;
      _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo Baseband for architecture or Baseband is currently not available: go straight to internalRetryRegistration", buf, 0x16u);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }

    SipRegistrationClient::internalRetryRegistration(this);
    if (!v4)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v13 = *MEMORY[0x1E69E9840];

  SipRegistrationClient::internalRetryRegistration(this);
}

BOOL SipRegistrationClient::needsUacCheckOnRegistration(SipRegistrationClient *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        if (!ims::AccessNetwork::isNR((v4 + 3432)) || (*(v4 + 2817) & 1) != 0 || (*(this + 2688) & 1) != 0 || (v5 = (*(*this + 288))(this), (v5 & 1) != 0))
        {
          v6 = 0;
        }

        else
        {
          v6 = (capabilities::radio::supportsRel16(v5) & 1) != 0 || TelephonyRadiosGetRadioVendor() == 3;
        }

LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 34);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v10 = v12 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v10;
    _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = 0;
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void SipRegistrationClient::nasImsRegStart(SipRegistrationClient *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 4458) == 1)
  {
    v2 = *(this + 34);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(__p, this);
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
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}snasImsReg Start", buf, 0x16u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(this + 708) = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::setConnectivityAvailable(SipRegistrationClient *this, int a2, int a3)
{
  if (a3)
  {
    SipRegistrationDeferralManager::cancel(this + 4240);
  }

  v5 = *(this + 63);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      if (a2)
      {
        v8 = *(this + 62);
        if (v8)
        {
          v9 = SipStack::prefs(*(this + 62));
          if (ImsPrefs::DeferReRegOnConnectivityDisable(v9) || (v10 = SipStack::prefs(v8), ImsPrefs::EnableSignalingReduction(v10)) && *(v8 + 4376) == 1)
          {
            SipRegistrationClient::performDeferredAction(this);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void SipRegistrationClient::transactionTerminated(uint64_t a1, void *a2)
{
  if (*a2 == *(a1 + 3000))
  {
    v2 = (a1 + 3000);
    v3 = *(a1 + 3008);
    *v2 = 0;
    v2[1] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

uint64_t SipRegistrationClient::refreshRegistration(std::string *this)
{
  v67 = *MEMORY[0x1E69E9840];
  if (LODWORD(this[29].__r_.__value_.__r.__words[1]) != 1)
  {
    size = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(size, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
    if (v61 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    v15 = &_MergedGlobals_17[3 * LODWORD(this[29].__r_.__value_.__r.__words[1])];
    v16 = v15 + 15;
    if (*(v15 + 143) < 0)
    {
      v16 = *v16;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    v63 = 2081;
    v64 = v14;
    v65 = 2080;
    v66 = v16;
    _os_log_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno registration refresh performed while we're in client state %s", buf, 0x20u);
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    v17 = *__p;
LABEL_27:
    operator delete(v17);
LABEL_68:
    v35 = 0;
    goto LABEL_69;
  }

  if (((*(this->__r_.__value_.__r.__words[0] + 288))(this) & 1) == 0)
  {
    v18 = this[11].__r_.__value_.__l.__size_;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
      v19 = v65 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v59 = 2081;
      v60 = v19;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sshould renew non-emergency registration", __p, 0x16u);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_56;
  }

  data = this[21].__r_.__value_.__l.__data_;
  if (!data)
  {
    v3 = 0;
    goto LABEL_35;
  }

  v3 = std::__shared_weak_count::lock(data);
  if (!v3 || (v4 = this[20].__r_.__value_.__r.__words[2]) == 0)
  {
LABEL_35:
    v20 = this[11].__r_.__value_.__l.__size_;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
      v49 = v65 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v59 = 2081;
      v60 = v49;
      _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    goto LABEL_68;
  }

  v5 = *(v4 + 248);
  v6 = *(v4 + 256);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    v21 = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    if (v65 >= 0)
    {
      v55 = buf;
    }

    else
    {
      v55 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v55;
    _os_log_error_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
    goto LABEL_123;
  }

  v7 = *(v5 + 248);
  v8 = *(v5 + 256);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  active = SipDialogManager::activeDialogCount(v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (active)
  {
    v10 = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    if (v65 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v11;
    v12 = "%{private, mask.hash}sfound active emergency dialogs.  Renewing emergency registration.";
    goto LABEL_52;
  }

  v23 = *(v4 + 264);
  v24 = *(v4 + 272);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = SipTransactionLayer::activeTransactionCount(v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v25)
  {
    v10 = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    if (v65 >= 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v26;
    v12 = "%{private, mask.hash}sfound active emergency transactions. Renewing emergency registration.";
    goto LABEL_52;
  }

  if (*(v4 + 296) != 1 || (v50 = *(v4 + 4512), *(v50 + 5064) < 1) || time(0) >= *(v50 + 5064) || (v51 = SipStack::prefs(v4), !ImsPrefs::RefreshRegistrationDuringECBM(v51)))
  {
    v53 = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    if (v65 >= 0)
    {
      v54 = buf;
    }

    else
    {
      v54 = *buf;
    }

    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v54;
    _os_log_impl(&dword_1E4C3F000, v53, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno need to renew emergency registration", __p, 0x16u);
LABEL_123:
    if (SHIBYTE(v65) < 0)
    {
      operator delete(*buf);
    }

LABEL_39:
    v22 = 0;
    if (v6)
    {
      goto LABEL_55;
    }

LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v22)
    {
      goto LABEL_68;
    }

    goto LABEL_56;
  }

  v10 = this[11].__r_.__value_.__l.__size_;
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_54;
  }

  (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
  if (v65 >= 0)
  {
    v52 = buf;
  }

  else
  {
    v52 = *buf;
  }

  *__p = 141558275;
  *&__p[4] = 1752392040;
  v59 = 2081;
  v60 = v52;
  v12 = "%{private, mask.hash}sECBM is active.  Renewing emergency registration.";
LABEL_52:
  _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, v12, __p, 0x16u);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(*buf);
  }

LABEL_54:
  v22 = 1;
  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_55:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if ((v22 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_56:
  v27 = this[160].__r_.__value_.__l.__data_;
  if (v27 && ((*(*v27 + 360))(v27) & 1) == 0)
  {
    v33 = this[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    v34 = v65 >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v34;
    _os_log_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno registration refresh performed while we're being throttled by RegistrationPolicy", __p, 0x16u);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    v17 = *buf;
    goto LABEL_27;
  }

  v28 = this[21].__r_.__value_.__l.__data_;
  if (v28)
  {
    v29 = std::__shared_weak_count::lock(v28);
    if (v29)
    {
      v30 = this[20].__r_.__value_.__r.__words[2];
      if (v30)
      {
        if ((*(v30 + 4504) & 1) == 0)
        {
          v31 = SipStack::prefs(v30);
          v32 = ImsPrefs::DeferReRegOnConnectivityDisable(v31);
          goto LABEL_72;
        }
      }
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = 0;
LABEL_72:
  v38 = SipRegistrationClient::shouldDeferRegistration(this) | v32;
  if ((v38 & 1) == 0)
  {
    std::string::operator=(this + 172, &SipRegistrationMetrics::kReasonRefresh);
    v44 = this[160].__r_.__value_.__l.__data_;
    if (v44)
    {
      v45 = this[11].__r_.__value_.__l.__size_;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
        if (v65 >= 0)
        {
          v46 = buf;
        }

        else
        {
          v46 = *buf;
        }

        *__p = 141558275;
        *&__p[4] = 1752392040;
        v59 = 2081;
        v60 = v46;
        _os_log_impl(&dword_1E4C3F000, v45, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}srefreshRegistration: setting to policy SipRegClientRegType::RefreshReg", __p, 0x16u);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*buf);
        }

        v44 = this[160].__r_.__value_.__l.__data_;
      }

      *(v44 + 593) = 2;
    }

    if (this[110].__r_.__value_.__s.__data_[21] == 1 && HIDWORD(this[29].__r_.__value_.__r.__words[2]) == 4)
    {
      v47 = this[10].__r_.__value_.__l.__size_;
      if (v47)
      {
        v48 = this[10].__r_.__value_.__l.__data_;
        if (std::__shared_weak_count::lock(v47))
        {
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    SipRegistrationClient::sendInitialRequest(this);
    goto LABEL_97;
  }

  v39 = this[11].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    (*(this->__r_.__value_.__r.__words[0] + 80))(buf, this);
    v40 = v65 >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    v59 = 2081;
    v60 = v40;
    _os_log_impl(&dword_1E4C3F000, v39, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno registration refresh performed while we have no data connectivity -- deferring.", __p, 0x16u);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(*buf);
    }
  }

  v41 = this[10].__r_.__value_.__l.__size_;
  v56 = this[10].__r_.__value_.__l.__data_;
  if (!v41)
  {
    v57 = 0;
LABEL_126:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v42 = std::__shared_weak_count::lock(v41);
  v57 = v42;
  if (!v42)
  {
    goto LABEL_126;
  }

  v43 = v42;
  SipRegistrationDeferralManager::deferAction(&this[176].__r_.__value_.__r.__words[2], &v56, &this[54].__r_.__value_.__r.__words[2], &SipRegistrationMetrics::kReasonRefresh);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
LABEL_97:
  v35 = v38 ^ 1;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

LABEL_69:
  v36 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

void sub_1E4F2A738(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::sendInitialRequest(SipRegistrationClient *this)
{
  v125 = *MEMORY[0x1E69E9840];
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        v6 = *(v4 + 248);
        v5 = *(v4 + 256);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v6)
        {
          v8 = *(this + 34);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && (((*(*this + 80))(__p, this), SHIBYTE(__p[2]) >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 141558275, *&buf[4] = 1752392040, *&buf[12] = 2081, *&buf[14] = v9, _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u), SHIBYTE(__p[2]) < 0))
          {
            operator delete(__p[0]);
            if (!v5)
            {
              goto LABEL_33;
            }
          }

          else if (!v5)
          {
LABEL_33:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            goto LABEL_34;
          }

LABEL_32:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_33;
        }

        if ((*(this + 3856) & 1) == 0)
        {
          v10 = *(this + 337);
        }

        LODWORD(__p[0]) = *(this + 178);
        SipRegistrationMetrics::registrationAttemptStarted(this + 4008, __p);
        if (*(this + 2688) == 1)
        {
          v11 = *(this + 34);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            (*(*this + 80))(__p, this);
            v12 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v12;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sfaking registration", buf, 0x16u);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          SipRegistrationClient::updateContact(v73, this, 0);
          ImsResult::~ImsResult(v73);
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          memset(__p, 0, sizeof(__p));
          SipContact::SipContact(__p, 0);
          SipUri::operator=(&__p[5], this + 808);
          v13 = *(this + 337);
          HIDWORD(__p[1]) = 2;
          DWORD2(v119) = v13;
          DWORD2(v122) = *(this + 334);
          v95 = 0;
          v93 = 0u;
          v94 = 0u;
          *v91 = 0u;
          *v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          memset(buf, 0, sizeof(buf));
          v14 = *(this + 31);
          v80 = *(this + 30);
          if (v14)
          {
            if (std::__shared_weak_count::lock(v14))
            {
              SipRegistrationActiveNotification::SipRegistrationActiveNotification(buf, &v80);
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        SipRegistrationClient::setClientState(this, 6);
        v16 = this + 2984;
        v17 = *(this + 374);
        *(this + 373) = 0;
        *(this + 374) = 0;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v18 = *(this + 480);
        if (v18 && *(v18 + 220) == 1)
        {
          v73[0] = 0;
          v73[1] = 0;
          v19 = *(v6 + 368);
          v20 = *(v6 + 376);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v19 + 40))(v73);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v73[0])
          {
            if (!(*(*v73[0] + 56))(v73[0]))
            {
              goto LABEL_59;
            }

            v21 = (*(*v73[0] + 56))(v73[0]);
            (*(*v21 + 56))(__p);
            memset(&buf[24], 0, 64);
            *buf = &unk_1F5EBDEF8;
            *&buf[8] = &_bambiDomain;
            *&buf[16] = 1073741832;
            v22 = __p[1];
            v23 = __p[2];
            ImsResult::~ImsResult(buf);
            ImsResult::~ImsResult(__p);
            v24 = v22 == &_bambiDomain;
            v16 = this + 2984;
            if (!v24)
            {
              goto LABEL_59;
            }

            if (v23 == 1073741832)
            {
              v25 = *(this + 34);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(__p, this);
                v26 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v26;
                _os_log_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}skeeping auth sync failure info in initial registration", buf, 0x16u);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            else
            {
LABEL_59:
              v28 = *(this + 34);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(__p, this);
                v29 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v29;
                _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclearing auth info for initial registration", buf, 0x16u);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v30 = *(v6 + 368);
              v31 = *(v6 + 376);
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v30 + 32))(v30);
              if (v31)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
              }
            }
          }

          v32 = *(this + 80);
          if (v32)
          {
            v33 = std::__shared_weak_count::lock(v32);
            if (v33)
            {
              v34 = v33;
              v35 = *(this + 79);
              if (v35)
              {
                (*(*v35 + 80))(v35, this + 512);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }
          }

          if (v73[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73[1]);
          }
        }

        v36 = *(this + 63);
        if (v36)
        {
          v37 = std::__shared_weak_count::lock(v36);
          if (v37)
          {
            v38 = *(this + 62);
            if (v38)
            {
              v40 = *(v38 + 248);
              v39 = *(v38 + 256);
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v40)
              {
                v41 = SipStack::prefs(v38);
                if (ImsPrefs::ResetCallIdOnInitialRegistration(v41))
                {
                  v82 = 0;
                  v83 = 0;
                  v42 = *(v40 + 368);
                  v43 = *(v40 + 376);
                  if (v43)
                  {
                    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v42 + 40))(&v82);
                  if (v43)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
                  }

                  if (v82 && (*(*v82 + 72))(v82))
                  {
                    v44 = *(this + 34);
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*this + 80))(__p, this);
                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v45 = __p;
                      }

                      else
                      {
                        v45 = __p[0];
                      }

                      *buf = 141558275;
                      *&buf[4] = 1752392040;
                      *&buf[12] = 2081;
                      *&buf[14] = v45;
                      v46 = "%{private, mask.hash}swe have a pending Auth Sync response, not resetting Call-ID";
                      goto LABEL_123;
                    }

                    goto LABEL_125;
                  }

                  if (SipUri::isValidUri((this + 3424)) && (SipUri::equals((this + 3424), (this + 3016), 1) & 1) == 0)
                  {
                    if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*this + 80))(buf, this);
                      SipHop::logStr((this + 3424));
                    }
                  }

                  else
                  {
                    if (*(this + 178) == 2 && *(*(this + 480) + 220) != 1)
                    {
                      v44 = *(this + 34);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*this + 80))(__p, this);
                        if (SHIBYTE(__p[2]) >= 0)
                        {
                          v53 = __p;
                        }

                        else
                        {
                          v53 = __p[0];
                        }

                        *buf = 141558275;
                        *&buf[4] = 1752392040;
                        *&buf[12] = 2081;
                        *&buf[14] = v53;
                        v46 = "%{private, mask.hash}snot an initial registration. Keeping Call-ID as is";
LABEL_123:
                        _os_log_impl(&dword_1E4C3F000, v44, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
                        if (SHIBYTE(__p[2]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

LABEL_125:
                      v49 = 0;
LABEL_126:
                      if (v83)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                      }

LABEL_128:
                      if (v39)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
                        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                        if ((v49 & 1) == 0)
                        {
                          goto LABEL_133;
                        }
                      }

                      else
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                        if (!v49)
                        {
                          goto LABEL_133;
                        }
                      }

                      SipRegistrationClient::resetCallIdAndCseq(this, 1);
                      goto LABEL_133;
                    }

                    v50 = *(this + 34);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*this + 80))(__p, this);
                      v51 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                      *buf = 141558275;
                      *&buf[4] = 1752392040;
                      *&buf[12] = 2081;
                      *&buf[14] = v51;
                      _os_log_impl(&dword_1E4C3F000, v50, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthis is an initial registration. Resetting Call-ID", buf, 0x16u);
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  v49 = 1;
                  goto LABEL_126;
                }
              }

              else
              {
                v48 = *(this + 34);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  (*(*this + 80))(__p, this);
                  v72 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v72;
                  _os_log_error_impl(&dword_1E4C3F000, v48, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              v49 = 0;
              goto LABEL_128;
            }
          }
        }

        else
        {
          v37 = 0;
        }

        v47 = *(this + 34);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          (*(*this + 80))(__p, this);
          v52 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v52;
          _os_log_error_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

LABEL_133:
        v78 = 0;
        v54 = 0uLL;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *v73 = 0u;
        v55 = *(this + 63);
        if (v55)
        {
          v56 = std::__shared_weak_count::lock(v55);
          if (v56)
          {
            v57 = *(this + 62);
            if (v57)
            {
              v79[0] = 0;
              v79[1] = 0;
              v58 = *(v57 + 248);
              ims::AccessNetwork::isWifi((v57 + 3432));
              v59 = *(v57 + 296);
              SipMessageEncodingMap::createRequestFromTemplate(v58 + 384, v79);
            }
          }

          v54 = 0uLL;
        }

        else
        {
          v56 = 0;
        }

        *&__p[3] = v54;
        *&__p[5] = v54;
        *&__p[7] = v54;
        *&__p[9] = v54;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        LODWORD(__p[2]) = 1073741826;
        v60 = ImsResult::operator<<<char [12]>(__p, "no sipstack");
        ImsResult::ImsResult(v73, v60);
        ImsResult::~ImsResult(__p);
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if ((*(*v73[1] + 24))(v73[1], v74))
        {
          v61 = SipSimpleBackoffTimer::scheduleRetry((this + 3936));
          time(0);
          if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_ERROR))
          {
            (*(*this + 80))(buf, this);
            ImsResult::logStr(v73);
          }

          SipRegistrationClient::handleRegistrationError(this, v73, v61, 1, 0);
          goto LABEL_171;
        }

        v62 = *(this + 493);
        if (v62)
        {
          SipTimerContainer::cancelTimer(v62, this + 165);
        }

        *(this + 988) = 0;
        v16[1192] = 0;
        if (*(this + 3856) == 1)
        {
          LODWORD(__p[0]) = 3;
          SipRegistrationClient::setRegistrationState(this, __p, 0);
          v63 = *(this + 34);
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT) || (((*(*this + 80))(__p, this), SHIBYTE(__p[2]) >= 0) ? (v64 = __p) : (v64 = __p[0]), *buf = 141558275, *&buf[4] = 1752392040, *&buf[12] = 2081, *&buf[14] = v64, _os_log_impl(&dword_1E4C3F000, v63, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sattempting deregistration", buf, 0x16u), (SHIBYTE(__p[2]) & 0x80000000) == 0))
          {
LABEL_169:
            SipRegistrationClient::sendRequest(__p, this);
            v71 = (*(*__p[1] + 24))(__p[1], LODWORD(__p[2]));
            ImsResult::~ImsResult(__p);
            if ((v71 & 1) == 0)
            {
              (*(**(this + 480) + 344))(*(this + 480));
            }

LABEL_171:
            ImsResult::~ImsResult(v73);
            if (!v5)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

          v65 = __p[0];
        }

        else
        {
          LODWORD(__p[0]) = 1;
          SipRegistrationClient::setRegistrationState(this, __p, 0);
          v66 = *(this + 34);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_169;
          }

          (*(*this + 80))(buf, this);
          if ((buf[23] & 0x80u) == 0)
          {
            v67 = buf;
          }

          else
          {
            v67 = *buf;
          }

          v68 = SipRegistrationClient::allowedServices(this);
          std::string::basic_string[abi:ne200100]<0>(&v82, ",");
          BambiServices::namesForServiceMask(v68, v123);
          if (v124 >= 0)
          {
            v69 = v123;
          }

          else
          {
            v69 = *v123;
          }

          v70 = (this + 4128);
          if (v16[1167] < 0)
          {
            v70 = *v70;
          }

          LODWORD(__p[0]) = 141558787;
          *(__p + 4) = 1752392040;
          WORD2(__p[1]) = 2081;
          *(&__p[1] + 6) = v67;
          HIWORD(__p[2]) = 2080;
          __p[3] = v69;
          LOWORD(__p[4]) = 2080;
          *(&__p[4] + 2) = v70;
          _os_log_impl(&dword_1E4C3F000, v66, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sattempting registration for (%s) with reason %s", __p, 0x2Au);
          if (SHIBYTE(v124) < 0)
          {
            operator delete(*v123);
          }

          if (v84 < 0)
          {
            operator delete(v82);
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_169;
          }

          v65 = *buf;
        }

        operator delete(v65);
        goto LABEL_169;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 34);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v27 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    goto LABEL_33;
  }

LABEL_34:
  v15 = *MEMORY[0x1E69E9840];
}