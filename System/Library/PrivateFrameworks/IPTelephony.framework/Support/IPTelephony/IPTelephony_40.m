void sub_1E4F2C8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  SipUri::~SipUri(&a67);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::coalesceLazuliRegistrationRefresh(SipRegistrationClient *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 2660) == 1)
  {
    v2 = time(0);
    v3 = *(this + 85);
    if (v3 < 1 || (v4 = *(this + 83), v5 = __OFSUB__(v4, v3), v6 = v4 - v3, (v6 < 0) ^ v5 | (v6 == 0)))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 * *(this + 341) / 100;
    }

    v8 = *(this + 31);
    if (!v8 || (v9 = *(this + 30), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(v19, this);
      v18[0] = *(this + 84);
      ims::TimeAndIntervalFromNow::logStr(v18);
    }

    v13 = *(this + 84);
    if (v13 >= 1 && v2 >= v13 - v7)
    {
      v14 = *(this + 34);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        (*(*this + 80))(buf, this);
        v15 = v23 >= 0 ? buf : *buf;
        *v19 = 141558275;
        *&v19[4] = 1752392040;
        v20 = 2081;
        v21 = v15;
        _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sCoalescing Lazuli registration with IMS", v19, 0x16u);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(*buf);
        }
      }

      SipTimerContainer::cancelTimer(this + 35, &qword_1EE2BC688);
      SipTimerContainer::cancelTimer(this + 35, _MergedGlobals_17);
      if ((SipRegistrationClient::refreshRegistration(this) & 1) == 0)
      {
        v16 = *(this + 82);
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18[7] = 0;
        operator new();
      }
    }

    std::__shared_weak_count::__release_weak(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4F2D050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a20);
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_weak(v29);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::handleHysteresisTimer(SipRegistrationClient *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 178) == 2)
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
          if (ims::AccessNetwork::isLTE((v4 + 3432)))
          {
            v5 = *(this + 530);
            if (v5)
            {
              v6 = **v5;
              if (v7)
              {
                v8 = *(this + 34);
                if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(v29, this);
                  v9 = v32;
                  v10 = *v29;
                  (*(*v7 + 24))(__p, v7);
                  v11 = v29;
                  if (v9 < 0)
                  {
                    v11 = v10;
                  }

                  if (v28 >= 0)
                  {
                    v12 = __p;
                  }

                  else
                  {
                    v12 = __p[0];
                  }

                  *buf = 141558531;
                  *&buf[4] = 1752392040;
                  v34 = 2081;
                  v35 = v11;
                  v36 = 2080;
                  v37 = v12;
                  _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shysteresis timer fired with deferred action: %s", buf, 0x20u);
                  if (v28 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v32 < 0)
                  {
                    operator delete(*v29);
                  }
                }

                if ((*(v7 + 48) & 1) == 0)
                {
                  v13 = *(this + 34);
                  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_51;
                  }

                  (*(*this + 80))(buf, this);
                  if (v36 >= 0)
                  {
                    v14 = buf;
                  }

                  else
                  {
                    v14 = *buf;
                  }

                  *v29 = 141558275;
                  *&v29[4] = 1752392040;
                  v30 = 2081;
                  v31 = v14;
                  v15 = "#I %{private, mask.hash}snew registration wasn't for voice";
                  goto LABEL_49;
                }

                isVoiceRegistrationBarred = BambiAccessBarring::isVoiceRegistrationBarred((v4 + 3160));
                v13 = *(this + 34);
                if (isVoiceRegistrationBarred)
                {
                  if (!os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_51;
                  }

                  (*(*this + 80))(buf, this);
                  if (v36 >= 0)
                  {
                    v23 = buf;
                  }

                  else
                  {
                    v23 = *buf;
                  }

                  *v29 = 141558275;
                  *&v29[4] = 1752392040;
                  v30 = 2081;
                  v31 = v23;
                  v15 = "#I %{private, mask.hash}shysteresis timer fired while Access Barring is in effect";
LABEL_49:
                  _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_INFO, v15, v29, 0x16u);
                  if (SHIBYTE(v36) < 0)
                  {
                    operator delete(*buf);
                  }

LABEL_51:
                  v24 = *(this + 34);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*this + 80))(buf, this);
                    if (v36 >= 0)
                    {
                      v25 = buf;
                    }

                    else
                    {
                      v25 = *buf;
                    }

                    *v29 = 141558275;
                    *&v29[4] = 1752392040;
                    v30 = 2081;
                    v31 = v25;
                    _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}signoring deferred registration action and telling delegate about our current registration", v29, 0x16u);
                    if (SHIBYTE(v36) < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  SipRegistrationClient::notifyDelegateOfCurrentRegistration(this);
                }

                if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(buf, this);
                  v26 = v36 >= 0 ? buf : *buf;
                  *v29 = 141558275;
                  *&v29[4] = 1752392040;
                  v30 = 2081;
                  v31 = v26;
                  _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sperforming deferred registration on hysteresis timeout", v29, 0x16u);
                  if (SHIBYTE(v36) < 0)
                  {
                    operator delete(*buf);
                  }
                }

                v7 = 1;
                SipRegistrationDeferralManager::perform(this + 530, 1);
              }

              goto LABEL_36;
            }
          }

          else
          {
            v17 = *(this + 34);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 80))(buf, this);
              v18 = v36 >= 0 ? buf : *buf;
              *v29 = 141558275;
              *&v29[4] = 1752392040;
              v30 = 2081;
              v31 = v18;
              _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sHysteresis timer fired while not on LTE network, ignoring.", v29, 0x16u);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(*buf);
              }
            }
          }

          v7 = 0;
LABEL_36:
          std::__shared_weak_count::__release_shared[abi:ne200100](v3);
          goto LABEL_37;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v16 = *(this + 34);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(buf, this);
      v21 = v36 >= 0 ? buf : *buf;
      *v29 = 141558275;
      *&v29[4] = 1752392040;
      v30 = 2081;
      v31 = v21;
      _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v29, 0x16u);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(*buf);
      }
    }

    v7 = 0;
    if (v3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_37:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

void SipRegistrationClient::notifyDelegateOfCurrentRegistration(SipRegistrationClient *this)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  SipContact::SipContact(v15, 0);
  SipUri::operator=((&v15[2] + 8), this + 808);
  v2 = *(this + 326);
  HIDWORD(v15[0]) = 2;
  DWORD2(v19) = v2;
  v3 = time(0);
  v4 = *(this + 82);
  if (v4 >= v3)
  {
    v5 = v4 - v3;
  }

  else
  {
    v5 = 0;
  }

  DWORD2(v16) = v5;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = *(this + 31);
  v7 = *(this + 30);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      SipRegistrationActiveNotification::SipRegistrationActiveNotification(v9, &v7);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4F2D8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  SipRegistrationActiveNotification::~SipRegistrationActiveNotification(&a11);
  SipContact::~SipContact(&a43);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleTimer(atomic_uint *a1, uint64_t **a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 63);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 62);
      if (v6)
      {
        v7 = *(a2 + 23);
        if (v7 >= 0)
        {
          v8 = *(a2 + 23);
        }

        else
        {
          v8 = a2[1];
        }

        v9 = qword_1EE2BC678;
        if (byte_1EE2BC687 >= 0)
        {
          v9 = byte_1EE2BC687;
        }

        if (v8 == v9 && (v7 >= 0 ? (v10 = a2) : (v10 = *a2), byte_1EE2BC687 >= 0 ? (v11 = _MergedGlobals_17) : (v11 = _MergedGlobals_17[0]), !memcmp(v10, v11, v8)))
        {
          if ((*(v6 + 2817) & 1) == 0)
          {
            v47 = *(a1 + 34);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 80))(__p, a1);
              v48 = (SBYTE7(v69[0]) & 0x80u) == 0 ? __p : __p[0];
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v48;
              _os_log_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCheck if we need to coalesce registration refresh on other stacks", buf, 0x16u);
              if (SBYTE7(v69[0]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            IPTelephonyManager::getBambiClient(__p);
            BambiClient::coalesceLazuliRegistrationRefresh(__p[0], *(v6 + 4372));
            if (__p[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
            }
          }

          if (!SipRegistrationClient::shouldDeferRegistration(a1) || (v49 = SipStack::prefs(v6), !ImsPrefs::LimitedConnectivityHysteresisFromRegistration(v49)))
          {
            if (SipRegistrationClient::needsUacCheckOnRegistration(a1))
            {
              IPTelephonyManager::getBambiClient(__p);
              v50 = *(__p[0] + 38);
              if (__p[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
              }

              if (!v50)
              {
                memset(v69 + 8, 0, 64);
                __p[0] = &unk_1F5EBDEF8;
                __p[1] = &_bambiDomain;
                LODWORD(v69[0]) = 1073741826;
                SipRegistrationClient::handleRegistrationError(a1, __p, -1, 1, 0);
LABEL_158:
                v61 = __p;
                goto LABEL_159;
              }

              if (*(v50 + 8) && *(v50 + 72) == 1)
              {
                v51 = *(a1 + 34);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*a1 + 80))(__p, a1);
                  v52 = (SBYTE7(v69[0]) & 0x80u) == 0 ? __p : __p[0];
                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v52;
                  _os_log_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRefreshRegAccessCheck...", buf, 0x16u);
                  if (SBYTE7(v69[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                IMSNasDeviceClient::reportCallStatus(v50, *(v6 + 4372), 0, 64, v6 + 3432, 1, 0, 0);
                SipRegistrationClient::setClientState(a1, 3);
                SipRegistrationClient::nasImsRegStart(a1);
                v53 = *(a1 + 480);
                if (v53)
                {
                  *(v53 + 424) = 0;
                  *(v53 + 432) = 0;
                }

                goto LABEL_43;
              }

              v63 = *(a1 + 34);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 80))(__p, a1);
                v64 = (SBYTE7(v69[0]) & 0x80u) == 0 ? __p : __p[0];
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v64;
                _os_log_impl(&dword_1E4C3F000, v63, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo Baseband for architecture or Baseband is currently not available: go straight to refreshRegistration", buf, 0x16u);
                if (SBYTE7(v69[0]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            SipRegistrationClient::refreshRegistration(a1);
LABEL_43:
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            goto LABEL_44;
          }
        }

        else
        {
          v12 = qword_1EE2BC690;
          if (byte_1EE2BC69F >= 0)
          {
            v12 = byte_1EE2BC69F;
          }

          if (v8 != v12 || (v7 >= 0 ? (v13 = a2) : (v13 = *a2), byte_1EE2BC69F >= 0 ? (v14 = &qword_1EE2BC688) : (v14 = qword_1EE2BC688), memcmp(v13, v14, v8)))
          {
            if (v8 == 19)
            {
              v23 = *a2;
              if (v7 >= 0)
              {
                v23 = a2;
              }

              v24 = *v23;
              v25 = v23[1];
              v26 = *(v23 + 11);
              if (v24 == 0x726F70736E617254 && v25 == 0x6954797274655274 && v26 == 0x72656D6954797274)
              {
                if (a1[176] == 1)
                {
                  SipRegistrationClient::initializeTransport(v67, a1);
                  v61 = v67;
LABEL_159:
                  ImsResult::~ImsResult(v61);
                  goto LABEL_43;
                }

                goto LABEL_43;
              }
            }

            else if (v8 == 22)
            {
              v15 = *a2;
              if (v7 >= 0)
              {
                v15 = a2;
              }

              v16 = *v15;
              v17 = v15[1];
              v18 = *(v15 + 14);
              v19 = v16 == 0x6961466365535049 && v17 == 0x727465526572756CLL;
              if (v19 && v18 == 0x72656D6954797274)
              {
                (*(*a1 + 136))(a1);
                goto LABEL_43;
              }
            }

            v29 = qword_1EE2BC6A8;
            if (byte_1EE2BC6B7 >= 0)
            {
              v29 = byte_1EE2BC6B7;
            }

            if (v8 != v29 || (v7 >= 0 ? (v30 = a2) : (v30 = *a2), byte_1EE2BC6B7 >= 0 ? (v31 = &qword_1EE2BC6A0) : (v31 = qword_1EE2BC6A0), memcmp(v30, v31, v8)))
            {
              if (v8 != 18)
              {
                goto LABEL_74;
              }

              v32 = *a2;
              if (v7 >= 0)
              {
                v32 = a2;
              }

              v33 = *v32;
              v34 = v32[1];
              v35 = *(v32 + 8);
              v36 = v33 == 0x6574737948676552 && v34 == 0x6D69547369736572;
              if (v36 && v35 == 29285)
              {
                SipRegistrationClient::handleHysteresisTimer(a1);
              }

              else
              {
LABEL_74:
                v38 = qword_1EE2BC6C0;
                if (byte_1EE2BC6CF >= 0)
                {
                  v38 = byte_1EE2BC6CF;
                }

                if (v8 != v38 || (v7 >= 0 ? (v39 = a2) : (v39 = *a2), byte_1EE2BC6CF >= 0 ? (v40 = &qword_1EE2BC6B8) : (v40 = qword_1EE2BC6B8), memcmp(v39, v40, v8)))
                {
                  v41 = qword_1EE2BC6D8;
                  if (byte_1EE2BC6E7 >= 0)
                  {
                    v41 = byte_1EE2BC6E7;
                  }

                  if (v8 == v41)
                  {
                    if (v7 >= 0)
                    {
                      v42 = a2;
                    }

                    else
                    {
                      v42 = *a2;
                    }

                    if (byte_1EE2BC6E7 >= 0)
                    {
                      v43 = &qword_1EE2BC6D0;
                    }

                    else
                    {
                      v43 = qword_1EE2BC6D0;
                    }

                    if (!memcmp(v42, v43, v8))
                    {
                      SipRegistrationClient::logReprovisioningError(a1, 1);
                      add = atomic_fetch_add(a1 + 1120, 1u);
                      v45 = (*(*(a1 + 2) + 56))(a1 + 2);
                      (*(*(a1 + 2) + 16))(a1 + 2, v45);
                      v46 = ImsOutStream::operator<<(v45, "AttestationServiceHelperSigningTimer expired. continueSendRequest with no opaque. seqCnt=");
                      MEMORY[0x1E6923350](*(v46 + 8), add + 1);
                      *(v46 + 17) = 0;
                      (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v46 + 17) = 0;
                      std::string::basic_string[abi:ne200100]<0>(__p, "");
                      SipRegistrationClient::continueSendRequest(a1, __p, add + 1, v65);
                      ImsResult::~ImsResult(v65);
                      if (SBYTE7(v69[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  goto LABEL_43;
                }

                if (a1[176] == 8)
                {
                  memset(v69, 0, 72);
                  *__p = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  *buf = &unk_1F5EBDEF8;
                  *&buf[8] = &_bambiDomain;
                  *&buf[16] = 1073741830;
                  v62 = ImsResult::operator<<<char [41]>(buf, "timed out waiting for nw path evaluation");
                  ImsResult::ImsResult(__p, v62);
                  ImsResult::~ImsResult(buf);
                  if (os_log_type_enabled(*(a1 + 34), OS_LOG_TYPE_ERROR))
                  {
                    (*(*a1 + 80))(&v66, a1);
                    ImsResult::logStr(__p);
                  }

                  ImsNetworkPathManager::abort(*(a1 + 541), (a1 + 1086));
                  SipRegistrationClient::handleRegistrationError(a1, __p, -1, 1, 0);
                  SipRegistrationClient::setClientState(a1, 1);
                  goto LABEL_158;
                }
              }

              goto LABEL_43;
            }

            v59 = *(a1 + 34);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              (*(*a1 + 80))(__p, a1);
              if ((SBYTE7(v69[0]) & 0x80u) == 0)
              {
                v60 = __p;
              }

              else
              {
                v60 = __p[0];
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v60;
              _os_log_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sfaking registration termination", buf, 0x16u);
              if (SBYTE7(v69[0]) < 0)
              {
                operator delete(__p[0]);
              }

              v57 = 0;
            }

            else
            {
              v57 = 0;
            }

            v58 = 3;
LABEL_149:
            (*(*a1 + 176))(a1, v58, v57, 0);
            goto LABEL_43;
          }

          LODWORD(__p[0]) = 0;
          SipRegistrationClient::setRegistrationState(a1, __p, 0);
          if (!SipRegistrationClient::shouldDeferRegistration(a1) || (v55 = SipStack::prefs(v6), !ImsPrefs::LimitedConnectivityHysteresisFromRegistration(v55)))
          {
            v56 = *(a1 + 480);
            if (v56 && ((*(*v56 + 456))(v56) & 1) != 0)
            {
              v57 = -1;
              v58 = 22;
            }

            else
            {
              v58 = 0;
              v57 = 0;
            }

            goto LABEL_149;
          }
        }

        SipStack::handleConnectivityHysteresisTimeout(v6);
        goto LABEL_43;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v21 = *(a1 + 34);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(__p, a1);
    v54 = (SBYTE7(v69[0]) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v54;
    _os_log_error_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SBYTE7(v69[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    goto LABEL_43;
  }

LABEL_44:
  v22 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::continueSendRequest(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = atomic_load((a1 + 4480));
  if (v7 != a3)
  {
    v43 = (a1 + 16);
    v44 = (*(*(a1 + 16) + 64))(a1 + 16);
    (*(*v43 + 16))(v43, v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "continueSendRequest(): callback seqCnt=", 39);
    *(v44 + 17) = 0;
    MEMORY[0x1E6923350](*(v44 + 8), a3);
    *(v44 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), " != my seqCnt=", 14);
    *(v44 + 17) = 0;
    v45 = atomic_load(v43 + 1116);
    MEMORY[0x1E6923350](*(v44 + 8), v45);
    *(v44 + 17) = 0;
    v46 = *(v44 + 8);
    v47 = ": callback is old. no op";
    v48 = 24;
LABEL_43:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
    *(v44 + 17) = 0;
    (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v44 + 17) = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    return;
  }

  if (!*(a1 + 2984))
  {
    v49 = a1 + 16;
    v44 = (*(*(a1 + 16) + 64))(a1 + 16);
    (*(*v49 + 16))(v49, v44);
    v46 = *(v44 + 8);
    v47 = "continueSendRequest(): _request is gone. no op";
    v48 = 46;
    goto LABEL_43;
  }

  v8 = *(a1 + 504);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_45;
  }

  v10 = std::__shared_weak_count::lock(v8);
  if (!v10 || (v11 = *(a1 + 496)) == 0)
  {
LABEL_45:
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    *&v56 = &unk_1F5EBDEF8;
    *(&v56 + 1) = &_bambiDomain;
    v57 = 1073741826;
    v50 = ImsResult::operator<<<char [12]>(&v56, "no sipstack");
    ImsResult::ImsResult(a4, v50);
    ImsResult::~ImsResult(&v56);
    if (!v10)
    {
      return;
    }

    goto LABEL_46;
  }

  v12 = *(a2 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12)
  {
    v13 = a1 + 16;
    v14 = (*(*(a1 + 16) + 64))(a1 + 16);
    (*(*(a1 + 16) + 16))(a1 + 16, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "continueSendRequest(): cancel AttestationServiceHelperSigningTimer, if it is still running", 90);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    SipTimerContainer::cancelTimer((a1 + 280), &qword_1EE2BC6D0);
    v15 = SipRequest::headerWithAuthScheme(*(a1 + 2984), "Digest");
    if (v15)
    {
      v16 = *(v15 + 64);
      if (v16)
      {
        v17 = **v16;
        if (v18)
        {
          v19 = v18;
          v20 = (*(*v13 + 64))(a1 + 16);
          (*(*v13 + 16))(a1 + 16, v20);
          v21 = ImsOutStream::operator<<(v20, "continueSendRequest(): set opaque=");
          (*(*v21 + 32))(v21, a2);
          (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v21[17] = 0;
          v22 = (*(*v19 + 24))(v19);
          SipSignedDigestAuthScheme::setOpaque(v22, a2);
        }
      }
    }
  }

  v23 = *(a1 + 2984);
  v24 = *(a1 + 616);
  *(a1 + 616) = v24 + 1;
  SipRequest::setCSeq(v23, v24);
  *(a1 + 4114) = *(a1 + 620);
  v25 = *(a1 + 3000);
  if (v25)
  {
    v26 = *(v25 + 344);
    *(v25 + 336) = 0;
    *(v25 + 344) = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v27 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*(a1 + 16) + 16))(a1 + 16, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "continueSendRequest(): seqCnt=", 30);
  *(v27 + 17) = 0;
  MEMORY[0x1E6923350](*(v27 + 8), a3);
  *(v27 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), ", sendRequest...", 16);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  v29 = *(v11 + 264);
  v28 = *(v11 + 272);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(a1 + 2992);
  v54 = *(a1 + 2984);
  v55 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(a1 + 248);
  if (!v31 || (v32 = *(a1 + 240), (v33 = std::__shared_weak_count::lock(v31)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v53 = v33;
  v34 = *(a1 + 4472);
  v51 = *(a1 + 4464);
  v52 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionLayer::sendRequest(v29, &v54, &v56);
  v35 = v56;
  v56 = 0uLL;
  v36 = *(a1 + 3008);
  *(a1 + 3000) = v35;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    if (*(&v56 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
    }
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v37 = *(a1 + 3840);
  if (v37)
  {
    v38 = *(a1 + 3000);
    *(v38 + 352) = (*(*v37 + 416))(v37);
  }

  *(a1 + 4120) = *(a1 + 3856);
  v39 = *(a1 + 640);
  if (v39)
  {
    v40 = std::__shared_weak_count::lock(v39);
    if (v40)
    {
      v41 = v40;
      v42 = *(a1 + 632);
      if (v42)
      {
        (*(*v42 + 48))(v42, a1 + 512, a1 + 4008);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }
  }

  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
LABEL_46:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}

void sub_1E4F2ED68(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::subscribeToRegEvents(SipRegistrationClient *this)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(this + 1345))
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
          if (*(v4 + 320) != 2)
          {
            v14 = *(this + 34);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              (*(*this + 80))(__p, this);
              if (v53 >= 0)
              {
                v15 = __p;
              }

              else
              {
                v15 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v47 = 2081;
              v48 = v15;
              v16 = "#I %{private, mask.hash}sstack is not initialized.  Skipping reg subscription.";
              goto LABEL_67;
            }

            goto LABEL_26;
          }

          if (*(this + 178) != 2)
          {
            v14 = *(this + 34);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              (*(*this + 80))(__p, this);
              if (v53 >= 0)
              {
                v17 = __p;
              }

              else
              {
                v17 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v47 = 2081;
              v48 = v17;
              v16 = "#I %{private, mask.hash}swe aren't registered. Not auto-renewing subscription.";
              goto LABEL_67;
            }

            goto LABEL_26;
          }

          if (*(this + 176) != 1)
          {
            v14 = *(this + 34);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              (*(*this + 80))(__p, this);
              if (v53 >= 0)
              {
                v19 = __p;
              }

              else
              {
                v19 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v47 = 2081;
              v48 = v19;
              v16 = "#I %{private, mask.hash}swe're in the middle of a registration. Not auto-renewing subscription.";
              goto LABEL_67;
            }

            goto LABEL_26;
          }

          v5 = *(this + 81);
          if (!v5)
          {
            goto LABEL_61;
          }

          if (SipUri::equals((v5 + 56), (this + 3016), 1))
          {
            if (*(*(this + 480) + 216))
            {
              v6 = SipStack::prefs(v4);
              if (ImsPrefs::NewSubscriptionOnReRegistration(v6))
              {
                v7 = *(this + 34);
                if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(__p, this);
                  if (v53 >= 0)
                  {
                    v8 = __p;
                  }

                  else
                  {
                    v8 = *__p;
                  }

                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  v47 = 2081;
                  v48 = v8;
                  v9 = "#I %{private, mask.hash}sterminating old reg subscription and starting a new one";
                  goto LABEL_58;
                }

LABEL_60:
                SipRegistrationClient::terminateRegEvents(this);
                goto LABEL_61;
              }

              v32 = *(this + 2538);
              v14 = *(this + 34);
              v33 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
              if (v32 != 1)
              {
                if (v33)
                {
                  (*(*this + 80))(__p, this);
                  if (v53 >= 0)
                  {
                    v38 = __p;
                  }

                  else
                  {
                    v38 = *__p;
                  }

                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  v47 = 2081;
                  v48 = v38;
                  v16 = "#I %{private, mask.hash}ssubscribeToRegEvents: already have an active subscription";
                  goto LABEL_67;
                }

LABEL_26:
                std::__shared_weak_count::__release_shared[abi:ne200100](v3);
                goto LABEL_27;
              }

              if (v33)
              {
                (*(*this + 80))(__p, this);
                v34 = v53 >= 0 ? __p : *__p;
                *buf = 141558275;
                *&buf[4] = 1752392040;
                v47 = 2081;
                v48 = v34;
                _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sre-subscribe on re-registration enabled", buf, 0x16u);
                if (SHIBYTE(v53) < 0)
                {
                  operator delete(*__p);
                }
              }

LABEL_61:
              if ((*(*this + 288))(this))
              {
                v14 = *(this + 34);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(__p, this);
                  if (v53 >= 0)
                  {
                    v22 = __p;
                  }

                  else
                  {
                    v22 = *__p;
                  }

                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  v47 = 2081;
                  v48 = v22;
                  v16 = "#I %{private, mask.hash}sskipping reg event subscription for emergency registration";
LABEL_67:
                  _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);
                  if (SHIBYTE(v53) < 0)
                  {
                    operator delete(*__p);
                  }

                  goto LABEL_26;
                }

                goto LABEL_26;
              }

              if (SipRegistrationClient::shouldDeferRegistration(this))
              {
                v23 = *(this + 34);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(__p, this);
                  v24 = v53 >= 0 ? __p : *__p;
                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  v47 = 2081;
                  v48 = v24;
                  _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}ssubscribeToRegEvents: shouldDeferRegistration first", buf, 0x16u);
                  if (SHIBYTE(v53) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                v25 = *(this + 31);
                v45 = *(this + 30);
                if (!v25 || (v26 = std::__shared_weak_count::lock(v25)) == 0)
                {
                  std::__throw_bad_weak_ptr[abi:ne200100]();
                }

                v27 = v26;
                SipRegistrationDeferralManager::deferAction(this + 530);
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
                goto LABEL_26;
              }

              v28 = *(this + 338);
              if (v28)
              {
                v29 = *(this + 34);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(buf, this);
                  if (v49 >= 0)
                  {
                    v30 = buf;
                  }

                  else
                  {
                    v30 = *buf;
                  }

                  *__p = 141558531;
                  *&__p[4] = 1752392040;
                  v51 = 2081;
                  v52 = v30;
                  v53 = 1024;
                  v54 = v28;
                  v31 = "#I %{private, mask.hash}susing subscription expiration %u from config";
                  goto LABEL_98;
                }
              }

              else
              {
                v35 = *(this + 82);
                v36 = time(0);
                if (v35 <= v36 + 161)
                {
                  v39 = *(this + 34);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    (*(*this + 80))(__p, this);
                    v40 = v53 >= 0 ? __p : *__p;
                    *buf = 141558275;
                    *&buf[4] = 1752392040;
                    v47 = 2081;
                    v48 = v40;
                    _os_log_impl(&dword_1E4C3F000, v39, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}susing default subscription expiration", buf, 0x16u);
                    if (SHIBYTE(v53) < 0)
                    {
                      operator delete(*__p);
                    }
                  }

                  v28 = 0;
                  goto LABEL_112;
                }

                v28 = v35 - v36 + 161;
                v29 = *(this + 34);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(buf, this);
                  if (v49 >= 0)
                  {
                    v37 = buf;
                  }

                  else
                  {
                    v37 = *buf;
                  }

                  *__p = 141558531;
                  *&__p[4] = 1752392040;
                  v51 = 2081;
                  v52 = v37;
                  v53 = 1024;
                  v54 = v28;
                  v31 = "#I %{private, mask.hash}scalculated subscription expiration %u from registration expiration";
LABEL_98:
                  _os_log_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_INFO, v31, __p, 0x1Cu);
                  if (v49 < 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

LABEL_112:
              v41 = *(this + 81);
              if (!v41)
              {
                operator new();
              }

              if (!SipRegistrationEventPackage::subscribe(v41, v28))
              {
                v42 = *(this + 34);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(__p, this);
                  v43 = v53 >= 0 ? __p : *__p;
                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  v47 = 2081;
                  v48 = v43;
                  _os_log_impl(&dword_1E4C3F000, v42, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sunable to subscribe to reg events", buf, 0x16u);
                  if (SHIBYTE(v53) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                v44 = *(this + 81);
                if (v44)
                {
                  (*(*v44 + 8))(v44);
                }

                *(this + 81) = 0;
              }

              goto LABEL_26;
            }

            v7 = *(this + 34);
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              goto LABEL_60;
            }

            (*(*this + 80))(__p, this);
            if (v53 >= 0)
            {
              v21 = __p;
            }

            else
            {
              v21 = *__p;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            v47 = 2081;
            v48 = v21;
            v9 = "#I %{private, mask.hash}sinitial registration - terminating old reg subscription and starting a new one";
          }

          else
          {
            v7 = *(this + 34);
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              goto LABEL_60;
            }

            (*(*this + 80))(__p, this);
            if (v53 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = *__p;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            v47 = 2081;
            v48 = v20;
            v9 = "#I %{private, mask.hash}sproxy changed - terminating old reg subscription and starting a new one";
          }

LABEL_58:
          _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_INFO, v9, buf, 0x16u);
          if (SHIBYTE(v53) < 0)
          {
            operator delete(*__p);
          }

          goto LABEL_60;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v12 = *(this + 34);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(__p, this);
      v18 = v53 >= 0 ? __p : *__p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v47 = 2081;
      v48 = v18;
      _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(*__p);
      }
    }

    if (v3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = *(this + 34);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(__p, this);
      v11 = v53 >= 0 ? __p : *__p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v47 = 2081;
      v48 = v11;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sregistration subscription is disabled", buf, 0x16u);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t SipRegistrationClient::regEventSubscriptionFailed(SipRegistrationClient *this, SipRegistrationEventPackage *a2, uint64_t **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 81) != a2)
  {
    v5 = *(this + 34);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(__p, this);
      v6 = v14 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v6;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}signoring subscriptionFailed for unknown subscription", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *(this + 34);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v8 = v14 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v8;
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration event subscription failed", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 81) = 0;
  if (a3[1] == &SipResultDomain::_domain && *(a3 + 4) == 489)
  {
    v9 = *(this + 34);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(__p, this);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v10;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived 489 response to SUBSCRIBE.  Disabling registration subscription.", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(this + 1345) = 0;
  }

  SipRegistrationSubject::actionOnObservers(this + 184, &__block_literal_global_63);
  result = (*(**(this + 480) + 392))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void SipRegistrationClient::regEventSubscriptionTerminated(SipRegistrationClient *this, SipRegistrationEventPackage *a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(this + 34);
  if (*(this + 81) != a2)
  {
    if (!os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    (*(*this + 80))(__p, this);
    if (v26 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    *v19 = 141558275;
    *&v19[4] = 1752392040;
    v20 = 2081;
    v21 = v5;
    v6 = "#I %{private, mask.hash}signoring subscriptionTerminated for unknown subscription";
    goto LABEL_28;
  }

  if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v8 = v26 >= 0 ? __p : *__p;
    *v19 = 141558275;
    *&v19[4] = 1752392040;
    v20 = 2081;
    v21 = v8;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration event subscription terminated", v19, 0x16u);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*__p);
    }
  }

  *(this + 81) = 0;
  if (*(this + 178) != 2)
  {
    v4 = *(this + 34);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    (*(*this + 80))(__p, this);
    if (v26 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    *v19 = 141558275;
    *&v19[4] = 1752392040;
    v20 = 2081;
    v21 = v11;
    v6 = "#I %{private, mask.hash}swe aren't registered. Not auto-renewing subscription.";
LABEL_28:
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_INFO, v6, v19, 0x16u);
    if (SHIBYTE(v26) < 0)
    {
      v12 = *__p;
LABEL_30:
      operator delete(v12);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  if (*(this + 176) == 1)
  {
    SipRegistrationSubject::actionOnObservers(this + 184, &__block_literal_global_70);
    if (a3 && *(this + 2537) == 1)
    {
      v9 = *(this + 34);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        (*(*this + 80))(__p, this);
        v10 = v26 >= 0 ? __p : *__p;
        *v19 = 141558275;
        *&v19[4] = 1752392040;
        v20 = 2081;
        v21 = v10;
        _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sassuming our registration was terminated as well", v19, 0x16u);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*__p);
        }
      }

      (*(*this + 176))(this, 1, 0, 0);
    }

    else if (*(this + 792) == 1)
    {
      v16 = *(this + 34);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        (*(*this + 80))(__p, this);
        v17 = v26 >= 0 ? __p : *__p;
        *v19 = 141558275;
        *&v19[4] = 1752392040;
        v20 = 2081;
        v21 = v17;
        _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sauto-renewing registration event subscription", v19, 0x16u);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*__p);
        }
      }

      (*(*this + 192))(this);
    }
  }

  else
  {
    v13 = *(this + 34);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(v19, this);
      if (v22 >= 0)
      {
        v14 = v19;
      }

      else
      {
        v14 = *v19;
      }

      v15 = "";
      if (*(this + 3856))
      {
        v15 = "de";
      }

      *__p = 141558531;
      *&__p[4] = 1752392040;
      v24 = 2081;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}swe're in the middle of a %sregistration. Not auto-renewing subscription.", __p, 0x20u);
      if (v22 < 0)
      {
        v12 = *v19;
        goto LABEL_30;
      }
    }
  }

LABEL_48:
  v18 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::updateServiceMask(int *a1, int a2, int a3, std::string *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 34);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!a2 && (a3 & 1) == 0)
  {
    if (v11)
    {
      (*(*a1 + 80))(__p, a1);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v12;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdateServiceMask: new mask is 0. Resending current state to delegate.", buf, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipRegistrationClient::notifyDelegateOfCurrentRegistration(a1);
  }

  if (!a3)
  {
    if (v11)
    {
      (*(*a1 + 80))(buf, a1);
      if ((buf[23] & 0x80u) == 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      v21 = a1[334];
      std::string::basic_string[abi:ne200100]<0>(v37, ",");
      BambiServices::namesForServiceMask(v21, v39);
      if (v40 >= 0)
      {
        v22 = v39;
      }

      else
      {
        v22 = v39[0];
      }

      std::string::basic_string[abi:ne200100]<0>(v33, ",");
      BambiServices::namesForServiceMask(a2, v35);
      if (v36 >= 0)
      {
        v23 = v35;
      }

      else
      {
        v23 = v35[0];
      }

      LODWORD(__p[0]) = 141558787;
      *(__p + 4) = 1752392040;
      WORD2(__p[1]) = 2081;
      *(&__p[1] + 6) = v20;
      HIWORD(__p[2]) = 2080;
      __p[3] = v22;
      LOWORD(__p[4]) = 2080;
      *(&__p[4] + 2) = v23;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snot reregistering, but updating service mask from (%s) to (%s)", __p, 0x2Au);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    a1[334] = a2;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    memset(__p, 0, sizeof(__p));
    SipContact::SipContact(__p, 0);
    SipUri::operator=(&__p[5], (a1 + 202));
    HIDWORD(__p[1]) = 2;
    DWORD2(v60) = a2;
    v24 = time(0);
    v25 = *(a1 + 82);
    if (v25 >= v24)
    {
      v26 = v25 - v24;
    }

    else
    {
      v26 = 0;
    }

    DWORD2(v57) = v26;
    v55 = 0;
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
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    v27 = *(a1 + 31);
    v29 = *(a1 + 30);
    if (v27)
    {
      if (std::__shared_weak_count::lock(v27))
      {
        SipRegistrationActiveNotification::SipRegistrationActiveNotification(buf, &v29);
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  if (v11)
  {
    v13 = buf;
    (*(*a1 + 80))(buf, a1);
    if ((buf[23] & 0x80u) != 0)
    {
      v13 = *buf;
    }

    std::string::basic_string[abi:ne200100]<0>(v37, ",");
    BambiServices::namesForServiceMask(a2, v39);
    if (v40 >= 0)
    {
      v14 = v39;
    }

    else
    {
      v14 = v39[0];
    }

    LODWORD(__p[0]) = 141558531;
    *(__p + 4) = 1752392040;
    WORD2(__p[1]) = 2081;
    *(&__p[1] + 6) = v13;
    HIWORD(__p[2]) = 2080;
    __p[3] = v14;
    _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreregistering for services (%s)", __p, 0x20u);
    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  if (a2)
  {
    bzero(__p, 0x688uLL);
    SipRegistrationConfig::SipRegistrationConfig(__p, (a1 + 328));
    if (a5)
    {
      v15 = *(a1 + 34);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 80))(v39, a1);
        if (v40 >= 0)
        {
          v16 = v39;
        }

        else
        {
          v16 = v39[0];
        }

        v17 = a1[334];
        std::string::basic_string[abi:ne200100]<0>(v35, ",");
        BambiServices::namesForServiceMask(v17, v37);
        if (v38 >= 0)
        {
          v18 = v37;
        }

        else
        {
          v18 = v37[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v31, ",");
        BambiServices::namesForServiceMask(a2, v33);
        if (v34 >= 0)
        {
          v19 = v33;
        }

        else
        {
          v19 = v33[0];
        }

        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v16;
        *&buf[22] = 2080;
        *&buf[24] = v18;
        LOWORD(v42) = 2080;
        *(&v42 + 2) = v19;
        _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating configured services mask from (%s) to (%s)", buf, 0x2Au);
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        if (v40 < 0)
        {
          operator delete(v39[0]);
        }
      }

      LODWORD(__p[3]) = a2;
    }

    SipRegistrationClient::registerWithConfig(a1, __p, a4, 0);
    SipRegistrationConfig::~SipRegistrationConfig(__p);
  }

  else
  {
    (*(*a1 + 176))(a1, 3, 0, 0);
    LODWORD(__p[0]) = 0;
    SipRegistrationClient::setRegistrationState(a1, __p, 0);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4F30AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  SipRegistrationConfig::~SipRegistrationConfig(&a71);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::checkForRegHysteresis(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 504);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        if (!*(a1 + 2972) || (v8[2816] & 1) == 0)
        {
          goto LABEL_100;
        }

        v9 = *(a1 + 272);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 80))(__p, a1);
          if (v51 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = *__p;
          }

          *buf = 141558275;
          *&buf[4] = 1752392040;
          v47 = 2081;
          v48 = v10;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sseeing if we need to start reg hysteresis timer", buf, 0x16u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(*__p);
          }

          v9 = *(a1 + 272);
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 80))(buf, a1);
          if (v49 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          v12 = *(a1 + 1304);
          std::string::basic_string[abi:ne200100]<0>(v41, ",");
          BambiServices::namesForServiceMask(v12, v43);
          if (v44 >= 0)
          {
            v13 = v43;
          }

          else
          {
            v13 = v43[0];
          }

          *__p = 141558531;
          *&__p[4] = 1752392040;
          *&__p[12] = 2081;
          *&__p[14] = v11;
          v51 = 2080;
          v52 = v13;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sregistered services = %s", __p, 0x20u);
          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          if (v42 < 0)
          {
            operator delete(v41[0]);
          }

          if (v49 < 0)
          {
            operator delete(*buf);
          }

          v9 = *(a1 + 272);
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 80))(buf, a1);
          if (v49 >= 0)
          {
            v14 = buf;
          }

          else
          {
            v14 = *buf;
          }

          v15 = *(a2 + 24);
          std::string::basic_string[abi:ne200100]<0>(v41, ",");
          BambiServices::namesForServiceMask(v15, v43);
          if (v44 >= 0)
          {
            v16 = v43;
          }

          else
          {
            v16 = v43[0];
          }

          *__p = 141558531;
          *&__p[4] = 1752392040;
          *&__p[12] = 2081;
          *&__p[14] = v14;
          v51 = 2080;
          v52 = v16;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}snew services = %s", __p, 0x20u);
          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          if (v42 < 0)
          {
            operator delete(v41[0]);
          }

          if (v49 < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a2 + 24))
        {
          v24 = (v8 + 3432);
          if (!ims::AccessNetwork::isLTE((v8 + 3432)))
          {
            v31 = *(a1 + 272);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_100;
            }

            (*(*a1 + 80))(buf, a1);
            if (v49 >= 0)
            {
              v32 = buf;
            }

            else
            {
              v32 = *buf;
            }

            if (v8[3455] < 0)
            {
              v24 = *v24;
            }

            *__p = 141558531;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v32;
            v51 = 2080;
            v52 = v24;
            _os_log_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdon't need reg hysteresis on %s", __p, 0x20u);
            if ((v49 & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            v33 = *buf;
            goto LABEL_99;
          }

          if (*(a1 + 712) == 2 && *(a1 + 1304) == 4 && ims::AccessNetwork::isLTE((a1 + 720)))
          {
            v25 = *(a1 + 272);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 80))(__p, a1);
              v26 = v51 >= 0 ? __p : *__p;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              v47 = 2081;
              v48 = v26;
              _os_log_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdeferring new registration while registered SMS-only", buf, 0x16u);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(*__p);
              }
            }

            v27 = *(a1 + 248);
            v39 = *(a1 + 240);
            if (v27)
            {
              v28 = std::__shared_weak_count::lock(v27);
              v40 = v28;
              if (v28)
              {
                v29 = v28;
                SipRegistrationDeferralManager::deferAction((a1 + 4240), &v39, a2, a3);
                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                *__p = 0;
                *&__p[8] = 0;
                ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(__p, *(a1 + 240), *(a1 + 248));
                v30 = *&__p[8];
                if (*&__p[8])
                {
                  atomic_fetch_add_explicit((*&__p[8] + 16), 1uLL, memory_order_relaxed);
                }

                if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 288), "RegHysteresisTimer"))
                {
                  if (v30)
                  {
                    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  v45 = 0;
                  operator new();
                }

                if (v30)
                {
                  std::__shared_weak_count::__release_weak(v30);
                  std::__shared_weak_count::__release_weak(v30);
                }

                goto LABEL_49;
              }
            }

            else
            {
              v40 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v18 = *(a1 + 272);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
LABEL_100:
            v21 = 0;
            goto LABEL_101;
          }

          (*(*a1 + 80))(__p, a1);
          if (v51 >= 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = *__p;
          }

          *buf = 141558275;
          *&buf[4] = 1752392040;
          v47 = 2081;
          v48 = v34;
          v35 = "%{private, mask.hash}snot registered SMS-only on LTE";
        }

        else
        {
          v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 288), "RegHysteresisTimer");
          v18 = *(a1 + 272);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              (*(*a1 + 80))(__p, a1);
              if (v51 >= 0)
              {
                v20 = __p;
              }

              else
              {
                v20 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v47 = 2081;
              v48 = v20;
              _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snew registration is SMS-only. Canceling pending hysteresis timer and any deferred registration.", buf, 0x16u);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(*__p);
              }
            }

            SipTimerContainer::cancelTimer((a1 + 280), "RegHysteresisTimer");
            SipRegistrationDeferralManager::cancel(a1 + 4240);
LABEL_49:
            v21 = 1;
LABEL_101:
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            goto LABEL_102;
          }

          if (!v19)
          {
            goto LABEL_100;
          }

          (*(*a1 + 80))(__p, a1);
          if (v51 >= 0)
          {
            v36 = __p;
          }

          else
          {
            v36 = *__p;
          }

          *buf = 141558275;
          *&buf[4] = 1752392040;
          v47 = 2081;
          v48 = v36;
          v35 = "%{private, mask.hash}snew registration is SMS-only, but hysteresis timer isn't running. Continuing with normal registration.";
        }

        _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
        if (SHIBYTE(v51) < 0)
        {
          v33 = *__p;
LABEL_99:
          operator delete(v33);
          goto LABEL_100;
        }

        goto LABEL_100;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v22 = *(a1 + 272);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 80))(__p, a1);
    v23 = v51 >= 0 ? __p : *__p;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v47 = 2081;
    v48 = v23;
    _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*__p);
    }
  }

  v21 = 0;
  if (v7)
  {
    goto LABEL_101;
  }

LABEL_102:
  v37 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1E4F31518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a20);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleAccessCheck(std::string *this, const ImsResult *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  size = this[11].__r_.__value_.__l.__size_;
  v7 = os_log_type_enabled(size, OS_LOG_TYPE_INFO);
  if (v7)
  {
    (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
    v8 = v28 >= 0 ? __p : __p[0];
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    _os_log_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}shandleAccessCheck (barringDurationInSeconds=%ld) ...", buf, 0x20u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((LODWORD(this[29].__r_.__value_.__r.__words[1]) - 2) < 3)
  {
    if (!capabilities::radio::supportsRel16(v7))
    {
      goto LABEL_58;
    }

    v9 = (*(**(a2 + 1) + 24))(*(a2 + 1), *(a2 + 4)) ^ 1;
    if (!a3)
    {
      LOBYTE(v9) = 1;
    }

    if ((v9 & 1) == 0 && (v10 = this[160].__r_.__value_.__l.__data_) != 0)
    {
      v11 = time(0);
      *(v10 + 53) = a3;
      *(v10 + 54) = v11;
      v12 = (*(*this[160].__r_.__value_.__l.__data_ + 296))(this[160].__r_.__value_.__r.__words[0], a2, 1);
      v13 = this[11].__r_.__value_.__l.__size_;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
        if (v28 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        *&buf[24] = v12;
        v15 = "%{private, mask.hash}sMAV: updated secondsUntilNextRetry to %ld";
        goto LABEL_36;
      }
    }

    else
    {
LABEL_58:
      if (TelephonyRadiosGetRadioVendor() != 3 || !(*(**(a2 + 1) + 24))(*(a2 + 1), *(a2 + 4)) || (data = this[160].__r_.__value_.__l.__data_) == 0)
      {
        v23 = this[11].__r_.__value_.__l.__size_;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
          v24 = v28 >= 0 ? __p : __p[0];
          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v24;
          *&buf[22] = 2048;
          *&buf[24] = -1;
          _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNeither r16MAV nor INT: set secondsUntilNextRetry to %ld", buf, 0x20u);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v12 = -1;
        goto LABEL_45;
      }

      if (!a3)
      {
        a3 = 5;
      }

      v21 = time(0);
      *(data + 53) = a3;
      *(data + 54) = v21;
      v12 = (*(*this[160].__r_.__value_.__l.__data_ + 296))(this[160].__r_.__value_.__r.__words[0], a2, 1);
      v13 = this[11].__r_.__value_.__l.__size_;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
        if (v28 >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        *&buf[24] = v12;
        v15 = "%{private, mask.hash}sINT: updated secondsUntilNextRetry to %ld";
LABEL_36:
        _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

LABEL_45:
    if ((*(**(a2 + 1) + 24))(*(a2 + 1), *(a2 + 4)))
    {
      SipRegistrationClient::handleRegistrationError(this, a2, v12, 1, 1);
    }

    else
    {
      v25 = this[29].__r_.__value_.__r.__words[1];
      switch(v25)
      {
        case 4:
          SipRegistrationClient::setClientState(this, 1);
          SipRegistrationClient::internalRetryRegistration(this);
          break;
        case 3:
          SipRegistrationClient::setClientState(this, 1);
          SipRegistrationClient::refreshRegistration(this);
          break;
        case 2:
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
          memset(buf, 0, sizeof(buf));
          SipRegistrationClient::initializeTransport(buf, this);
          if ((*(**&buf[8] + 24))(*&buf[8], *&buf[16]))
          {
            SipRegistrationClient::handleRegistrationError(this, buf, -1, 1, 0);
          }

          ImsResult::~ImsResult(buf);
          break;
      }
    }

    goto LABEL_55;
  }

  v16 = this[11].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
    if (v28 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v18 = &_MergedGlobals_17[3 * LODWORD(this[29].__r_.__value_.__r.__words[1])];
    v19 = v18 + 15;
    if (*(v18 + 143) < 0)
    {
      v19 = *v19;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v17;
    *&buf[22] = 2080;
    *&buf[24] = v19;
    _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}saccess check response triggered from unexpected state %s", buf, 0x20u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_55:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4F31C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handleAccessCongested(SipRegistrationClient *this, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((capabilities::radio::supportsRel16(this) & 1) == 0)
  {
    v21 = *(this + 34);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    (*(*this + 80))(v28, this);
    v22 = v29 >= 0 ? v28 : *v28;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v35 = 2081;
    v36 = v22;
    _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleAccessCongested: not a Rel16CapableMavRadio. Indication ignored.", buf, 0x16u);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v23 = *v28;
LABEL_33:
    operator delete(v23);
    goto LABEL_36;
  }

  v4 = *(this + 176) - 5;
  v5 = *(this + 34);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 < 5)
  {
    if (v6)
    {
      (*(*this + 80))(buf, this);
      if (v37 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      v8 = &_MergedGlobals_17[3 * *(this + 176)];
      v9 = v8 + 15;
      if (*(v8 + 143) < 0)
      {
        v9 = *v9;
      }

      *v28 = 141558787;
      *&v28[4] = 1752392040;
      *&v28[12] = 2081;
      *&v28[14] = v7;
      v29 = 2048;
      v30 = a2;
      LOWORD(v31[0]) = 2080;
      *(v31 + 2) = v9;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleAccessCongested (congestionDurationInSeconds=%ld) while in state %s ...", v28, 0x2Au);
      if (v37 < 0)
      {
        operator delete(*buf);
      }
    }

    (*(**(this + 375) + 32))(*(this + 375), 7);
    if (a2 && (v10 = *(this + 480)) != 0)
    {
      v11 = time(0);
      *(v10 + 424) = a2;
      *(v10 + 432) = v11;
      v12 = *(this + 480);
      v32 = 0u;
      v33 = 0u;
      *v28 = &unk_1F5EBDEF8;
      *&v28[8] = &_bambiDomain;
      *&v28[16] = 0x40000000;
      v30 = 0;
      memset(v31, 0, sizeof(v31));
      v18 = (*(*v12 + 296))(v12, v28, 0, v13, v14, v15, v16, v17);
      ImsResult::~ImsResult(v28);
      v19 = *(this + 34);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(buf, this);
        if (v37 >= 0)
        {
          v20 = buf;
        }

        else
        {
          v20 = *buf;
        }

        *v28 = 141558531;
        *&v28[4] = 1752392040;
        *&v28[12] = 2081;
        *&v28[14] = v20;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdated secondsUntilNextRetry to %ld", v28, 0x20u);
        if (v37 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v18 = -1;
    }

    v32 = 0u;
    v33 = 0u;
    *v28 = &unk_1F5EBDEF8;
    *&v28[8] = &_bambiDomain;
    *&v28[16] = 0x40000000;
    v30 = 0;
    memset(v31, 0, sizeof(v31));
    SipRegistrationClient::handleRegistrationError(this, v28, v18, 1, 0);
    ImsResult::~ImsResult(v28);
    goto LABEL_36;
  }

  if (v6)
  {
    (*(*this + 80))(buf, this);
    if (v37 >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    v25 = &_MergedGlobals_17[3 * *(this + 176)];
    v26 = v25 + 15;
    if (*(v25 + 143) < 0)
    {
      v26 = *v26;
    }

    *v28 = 141558531;
    *&v28[4] = 1752392040;
    *&v28[12] = 2081;
    *&v28[14] = v24;
    v29 = 2080;
    v30 = v26;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleAccessCongested: current state is %s: Indication ignored.", v28, 0x20u);
    if (v37 < 0)
    {
      v23 = *buf;
      goto LABEL_33;
    }
  }

LABEL_36:
  v27 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::handleBarringAccessAlleviated(SipRegistrationClient *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  if (*(this + 176) == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      (*(*this + 80))(__p, this);
      v3 = v16 >= 0 ? __p : *__p;
      *v9 = 141558275;
      *&v9[4] = 1752392040;
      v10 = 2081;
      v11 = v3;
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}shandleBarringAccessAlleviated...", v9, 0x16u);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(*__p);
      }
    }

    v4 = *(this + 480);
    if (v4)
    {
      SipRegistrationPolicy::handleBarringAccessAlleviated(v4);
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v9, this);
    if (v12 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = *v9;
    }

    v6 = &_MergedGlobals_17[3 * *(this + 176)];
    v7 = v6 + 15;
    if (*(v6 + 143) < 0)
    {
      v7 = *v7;
    }

    *__p = 141558531;
    *&__p[4] = 1752392040;
    v14 = 2081;
    v15 = v5;
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandleBarringAccessAlleviated: current state is %s: Indication ignored.", __p, 0x20u);
    if (v12 < 0)
    {
      operator delete(*v9);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::cancelPendingRegistration(SipRegistrationClient *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        v5 = *(this + 34);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 80))(__p, this);
          v6 = v15 >= 0 ? __p : __p[0];
          *buf = 141558275;
          v17 = 1752392040;
          v18 = 2081;
          v19 = v6;
          _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scanceling in-progress registration", buf, 0x16u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = *(this + 480);
        if (v7)
        {
          (*(*v7 + 368))(v7);
        }

        v8 = *(this + 176);
        if ((v8 - 6) < 2)
        {
          goto LABEL_15;
        }

        if (v8 == 5)
        {
          v11 = *(v4 + 280);
          v12 = *(v4 + 288);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipTransportLayer::cancelTransportInit(v11);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          goto LABEL_20;
        }

        if (v8 == 9)
        {
LABEL_15:
          if (*(this + 2689) == 1)
          {
            SipRegistrationClient::setClientState(this, 10);
          }
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_21;
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
    v13 = v15 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v13;
    _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}scancelPendingRegistration: no sipstack", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4F325BC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::transportInitializedToProxy(os_log_t *this, const SipUri *a2, const ImsResult *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(**(a3 + 1) + 24))(*(a3 + 1), *(a3 + 4)))
  {
    if (os_log_type_enabled(this[34], OS_LOG_TYPE_ERROR))
    {
      ((*this)[10].isa)(v25, this);
      ImsResult::logStr(a3);
    }

    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741842;
    if (*(a3 + 1) == &_bambiDomain)
    {
      v12 = *(a3 + 4);
      ImsResult::~ImsResult(buf);
      if (v12 == 1073741842)
      {
        v13 = this[34];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          ((*this)[10].isa)(buf, this);
          v17 = v20 >= 0 ? buf : *buf;
          *v25 = 141558275;
          *&v25[4] = 1752392040;
          v26 = 2081;
          v27 = v17;
          _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sA network error occured while trying to initialize transport layer.  We will not retry registration.", v25, 0x16u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(this + 2660) == 1)
        {
          v14 = this[34];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            ((*this)[10].isa)(buf, this);
            if (v20 >= 0)
            {
              v18 = buf;
            }

            else
            {
              v18 = *buf;
            }

            *v25 = 141558275;
            *&v25[4] = 1752392040;
            v26 = 2081;
            v27 = v18;
            _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSkipping to next proxy for lazuli stack.", v25, 0x16u);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(*buf);
            }
          }

          (*(this[480]->isa + 63))(this[480]);
        }

        SipRegistrationClient::handleRegistrationError(this, a3, -1, 1, 0);
        goto LABEL_27;
      }
    }

    else
    {
      ImsResult::~ImsResult(buf);
    }

    v15 = SipSimpleBackoffTimer::scheduleRetry((this + 483));
    SipRegistrationClient::handleRegistrationError(this, a3, v15, 1, 0);
LABEL_27:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  (*(this[480]->isa + 60))(this[480], a2);
  SipUri::operator=((this + 377), a2);
  v6 = this[484];
  if (v6)
  {
    SipTimerContainer::cancelTimer(v6, this + 162);
  }

  *(this + 970) = 0;
  if (*(this + 176) != 5)
  {
    v8 = this[34];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      ((*this)[10].isa)(v25, this);
      if (v28 >= 0)
      {
        v9 = v25;
      }

      else
      {
        v9 = *v25;
      }

      v10 = &_MergedGlobals_17[3 * *(this + 176)];
      v11 = v10 + 15;
      if (*(v10 + 143) < 0)
      {
        v11 = *v11;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      v20 = 2080;
      *&v21 = v11;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}stransport initialize callback triggered from unexpected state %s", buf, 0x20u);
      if (v28 < 0)
      {
        operator delete(*v25);
      }
    }

    SipRegistrationClient::setClientState(this, 1);
    goto LABEL_27;
  }

  v7 = *MEMORY[0x1E69E9840];

  SipRegistrationClient::sendInitialRequest(this);
}

void sub_1E4F32B5C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::sendRequest(SipRegistrationClient *this, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2984))
  {
    v4 = *(a2 + 504);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a2 + 496);
        if (v6)
        {
          v8 = *(v6 + 248);
          v7 = *(v6 + 256);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v8)
          {
            memset(&v74[1] + 8, 0, 64);
            *&v74[0] = &unk_1F5EBDEF8;
            *(&v74[0] + 1) = &_bambiDomain;
            LODWORD(v74[1]) = 1073741826;
            v14 = ImsResult::operator<<<char [12]>(v74, "no sipstack");
            ImsResult::ImsResult(this, v14);
            goto LABEL_114;
          }

          if (*(a2 + 704) == 9 && (v9 = *(a2 + 688)) != 0)
          {
            v10 = (*(*v9 + 160))(v9);
          }

          else
          {
            v10 = 0;
          }

          memset(v74, 0, 88);
          SipRegistrationClient::updateContact(v74, a2, v10);
          if ((*(**(&v74[0] + 1) + 24))(*(&v74[0] + 1), LODWORD(v74[1])))
          {
            if (os_log_type_enabled(*(a2 + 272), OS_LOG_TYPE_ERROR))
            {
              (*(*a2 + 80))(buf, a2);
              ImsResult::logStr(v74);
            }

            SipRegistrationClient::handleRegistrationError(a2, v74, -1, 1, 0);
            ImsResult::ImsResult(this, v74);
            goto LABEL_114;
          }

          if (v10)
          {
            v15 = *(a2 + 272);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a2 + 80))(v79, a2);
              v16 = (v79[23] & 0x80u) == 0 ? v79 : *v79;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              v77 = 2081;
              v78 = v16;
              _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssending request through pending SA", buf, 0x16u);
              if (v79[23] < 0)
              {
                operator delete(*v79);
              }
            }

            v17 = *(a2 + 688);
            v18 = *(a2 + 696);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            goto LABEL_49;
          }

          v19 = *(a2 + 3840);
          if (!v19 || *(v19 + 220) != 1)
          {
            v18 = 0;
            v17 = 0;
            goto LABEL_49;
          }

          v20 = *(a2 + 272);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a2 + 80))(v79, a2);
            v21 = (v79[23] & 0x80u) == 0 ? v79 : *v79;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            v77 = 2081;
            v78 = v21;
            _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sthis is an initial registration. Sending request through default transport, and do not drop incoming message on default SIP port", buf, 0x16u);
            if (v79[23] < 0)
            {
              operator delete(*v79);
            }
          }

          v23 = *(v6 + 280);
          v22 = *(v6 + 288);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = *(v23 + 1104);
          v18 = *(v23 + 1112);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v25 = *(v6 + 280);
          v24 = *(v6 + 288);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            *(v25 + 2129) = 0;
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          else
          {
            *(v25 + 2129) = 0;
          }

          if (v17)
          {
LABEL_49:
            if (*(v6 + 2817) == 1)
            {
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *(a2 + 4464) = v17;
              v26 = *(a2 + 4472);
              *(a2 + 4472) = v18;
              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              }
            }

            v27 = *(a2 + 248);
            if (!v27 || (v66 = *(a2 + 240), (v28 = std::__shared_weak_count::lock(v27)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v67 = v28;
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            if (*(a2 + 2661) == 1 && MEMORY[0x1E6924740](*(a2 + 4488)) == MEMORY[0x1E69E9E80])
            {
              SipRegistrationClient::setClientState(a2, 7);
              *v79 = 0;
              xpc::dict::dict(v79, *(a2 + 4488));
              *buf = xpc_null_create();
              xpc::dict::operator=((a2 + 4488), buf);
              xpc_release(*buf);
              *(this + 10) = 0;
              *(this + 3) = 0u;
              *(this + 4) = 0u;
              *(this + 1) = 0u;
              *(this + 2) = 0u;
              *this = 0u;
              v33 = *(v8 + 368);
              v32 = *(v8 + 376);
              if (v32)
              {
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              xpc::dict::dict(&object, *v79);
              (*(*v33 + 64))(v33, &object, a2 + 168);
              xpc_release(object);
              object = 0;
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              }

              atomic_fetch_add_explicit(&v67->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v83 = 0;
              operator new();
            }

            v29 = *(v8 + 368);
            v30 = *(v8 + 376);
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v31 = *(a2 + 2992);
            v71 = *(a2 + 2984);
            v72 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v29 + 48))(v79);
            ImsResult::operator=(v74, v79);
            ImsResult::~ImsResult(v79);
            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            if (*(a2 + 2660) == 1 && *(a2 + 2661) == 1)
            {
              *&v79[24] = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              *v79 = &unk_1F5EBDEF8;
              *&v79[8] = &_bambiDomain;
              *&v79[16] = 1073741834;
              if (*(&v74[0] + 1) == &_bambiDomain)
              {
                v34 = v74[1];
                ImsResult::~ImsResult(v79);
                if (v34 == 1073741834)
                {
                  memset(v79, 0, sizeof(v79));
                  ImsStringOutStream::ImsStringOutStream(v35);
                }
              }

              else
              {
                ImsResult::~ImsResult(v79);
              }
            }

            if ((*(**(&v74[0] + 1) + 24))(*(&v74[0] + 1), LODWORD(v74[1])))
            {
              SipRegistrationClient::handleRegistrationError(a2, v74, -1, 1, 0);
              ImsResult::ImsResult(this, v74);
            }

            else
            {
              if (*(v6 + 2817) == 1)
              {
                v36 = SipRequest::headerWithAuthScheme(*(a2 + 2984), "Digest");
                if (v36)
                {
                  v37 = *(v36 + 64);
                  if (v37)
                  {
                    v38 = **v37;
                    {
                      atomic_fetch_add_explicit(&v67->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v75 = 0;
                      operator new();
                    }
                  }
                }
              }

              v39 = *(a2 + 2984);
              v40 = *(a2 + 616);
              *(a2 + 616) = v40 + 1;
              SipRequest::setCSeq(v39, v40);
              *(a2 + 4114) = *(a2 + 620);
              v41 = *(a2 + 3000);
              if (v41)
              {
                v42 = *(v41 + 344);
                *(v41 + 336) = 0;
                *(v41 + 344) = 0;
                if (v42)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
                }
              }

              v44 = *(v6 + 264);
              v43 = *(v6 + 272);
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v45 = *(a2 + 2992);
              v69 = *(a2 + 2984);
              v70 = v45;
              if (v45)
              {
                atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v46 = *(a2 + 248);
              if (!v46 || (v47 = *(a2 + 240), (v48 = std::__shared_weak_count::lock(v46)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v68 = v48;
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransactionLayer::sendRequest(v44, &v69, v79);
              v49 = *v79;
              *v79 = 0uLL;
              v50 = *(a2 + 3008);
              *(a2 + 3000) = v49;
              if (v50)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                if (*&v79[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v79[8]);
                }
              }

              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              if (v70)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v70);
              }

              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v43);
              }

              v51 = *(a2 + 3840);
              if (v51)
              {
                v52 = *(a2 + 3000);
                *(v52 + 352) = (*(*v51 + 416))(v51);
              }

              *(a2 + 4120) = *(a2 + 3856);
              v53 = *(a2 + 640);
              if (v53)
              {
                v54 = std::__shared_weak_count::lock(v53);
                if (v54)
                {
                  v55 = v54;
                  v56 = *(a2 + 632);
                  if (v56)
                  {
                    (*(*v56 + 48))(v56, a2 + 512, a2 + 4008);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                }
              }

              *(this + 24) = 0u;
              *(this + 40) = 0u;
              *(this + 56) = 0u;
              *(this + 72) = 0u;
              *this = &unk_1F5EBDEF8;
              *(this + 1) = &_bambiDomain;
              *(this + 4) = 0;
            }

            std::__shared_weak_count::__release_weak(v67);
            if (!v18)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          }

          v65 = v18;
          v58 = *(v6 + 280);
          v59 = *(v6 + 288);
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = *(v58 + 1152);
          v60 = *(v58 + 1160);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            if (v17)
            {
LABEL_124:
              v61 = *(a2 + 272);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a2 + 80))(v79, a2);
                v62 = (v79[23] & 0x80u) == 0 ? v79 : *v79;
                *buf = 141558275;
                *&buf[4] = 1752392040;
                v77 = 2081;
                v78 = v62;
                _os_log_impl(&dword_1E4C3F000, v61, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sdefault transport has been removed, resetting transports and reinitializing", buf, 0x16u);
                if (v79[23] < 0)
                {
                  operator delete(*v79);
                }
              }

              v63 = *(v6 + 280);
              v64 = *(v6 + 288);
              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipTransportLayer::closeTransports(v63);
              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v64);
              }

              SipRegistrationClient::initializeTransport(this, a2);
              v18 = v65;
              if (!v65)
              {
                goto LABEL_114;
              }

LABEL_113:
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
LABEL_114:
              ImsResult::~ImsResult(v74);
              if (v7)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              }

LABEL_116:
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              goto LABEL_117;
            }
          }

          else if (v17)
          {
            goto LABEL_124;
          }

          v18 = v65;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    memset(&v74[1] + 8, 0, 64);
    *&v74[0] = &unk_1F5EBDEF8;
    *(&v74[0] + 1) = &_bambiDomain;
    LODWORD(v74[1]) = 1073741826;
    v13 = ImsResult::operator<<<char [12]>(v74, "no sipstack");
    ImsResult::ImsResult(this, v13);
    ImsResult::~ImsResult(v74);
    if (!v5)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  memset(&v74[1] + 8, 0, 64);
  *&v74[0] = &unk_1F5EBDEF8;
  *(&v74[0] + 1) = &_bambiDomain;
  LODWORD(v74[1]) = 1073741826;
  v11 = ImsResult::operator<<<char [28]>(v74, "no REGISTER request to send");
  v12 = ImsLogContainer::logResult(a2 + 16, v11);
  ImsResult::ImsResult(this, v12);
  ImsResult::~ImsResult(v74);
LABEL_117:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1E4F33B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t object, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ImsResult::~ImsResult(&a32);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::updateContact(SipRegistrationClient *this, uint64_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  SipContactParam::clear((a2 + 800));
  v6 = *(a2 + 504);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7 || (v8 = *(a2 + 496)) == 0)
  {
LABEL_17:
    memset(&__p[24], 0, 32);
    v42 = 0u;
    v43 = 0u;
    *__p = &unk_1F5EBDEF8;
    *&__p[8] = &_bambiDomain;
    *&__p[16] = 1073741826;
    v17 = ImsResult::operator<<<char [12]>(__p, "no sipstack");
    ImsResult::ImsResult(this, v17);
    ImsResult::~ImsResult(__p);
    if (!v7)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v10 = *(v8 + 248);
  v9 = *(v8 + 256);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v35 = 0;
    cf = 0;
    v11 = SipStack::prefs(v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "AdditionalFeatureTags");
    ImsPrefs::dictValue(v11, __p, &v35);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (cf)
    {
      SipContactParam::setAdditionalFeatureTags((a2 + 800), cf);
    }

    v12 = SipRegistrationClient::allowedServices(a2);
    v13 = SipStack::prefs(v8);
    v14 = ImsPrefs::TTYOverImsSupported(v13);
    v15 = v12 & 0xFFFFFFDF;
    *(this + 10) = 0;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    if (v14)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    *(this + 1) = 0uLL;
    *(this + 2) = 0uLL;
    *this = 0uLL;
    SipUserAgent::fillContactForServicesAndMethod(v10, a2 + 800, v16 | v15, "REGISTER", 0, this);
    if ((*(**(this + 1) + 24))(*(this + 1), *(this + 4)))
    {
      ImsResult::operator<<<char [33]>(this, "Contact Header generation failed");
    }

    else
    {
      if (a3 && *(a2 + 688))
      {
        memset(__p, 0, sizeof(__p));
        SipHost::SipHost(__p, a2 + 816);
        (*(**(a2 + 688) + 176))(&__str);
        SipHost::setAddress(__p, &__str);
        if (__str.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
        }

        (*(*(a2 + 808) + 32))(a2 + 808, __p);
        v19 = *(a2 + 272);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          (*(*a2 + 80))(&__str, a2);
          v20 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v38 = 2081;
          v39 = v20;
          _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}susing secure server port for contact", buf, 0x16u);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        SipHost::~SipHost(__p);
      }

      if (*(v8 + 2167) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "transport");
        std::string::basic_string[abi:ne200100]<0>(&__str, "tcp");
        *buf = __p;
        v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 880, __p);
        std::string::operator=((v21 + 56), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (*(v8 + 2169) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "transport");
        std::string::basic_string[abi:ne200100]<0>(&__str, "tls");
        *buf = __p;
        v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 880, __p);
        std::string::operator=((v22 + 56), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if ((*(*a2 + 288))(a2))
      {
        v23 = *(a2 + 2647);
        if (v23 < 0)
        {
          v23 = *(a2 + 2632);
        }

        if (v23)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          __str.__r_.__value_.__r.__words[0] = a2 + 2624;
          v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 880, (a2 + 2624));
          std::string::operator=((v24 + 56), __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

      v25 = *(a2 + 2984);
      if (v25)
      {
        SipMessage::setContact(v25, (a2 + 800));
      }

      v26 = *(a2 + 3856);
      v27 = *(a2 + 272);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v26 == 1)
      {
        if (v28)
        {
          (*(*a2 + 80))(&__str, a2);
          SipContactParam::logStr((a2 + 800));
        }
      }

      else
      {
        if (v28)
        {
          (*(*a2 + 80))(&__str, a2);
          SipContactParam::logStr((a2 + 800));
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a2 + 80))(&__str, a2);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          std::string::basic_string[abi:ne200100]<0>(&v32, ",");
          BambiServices::namesForServiceMask(v16 | v15, buf);
          if (v40 >= 0)
          {
            v30 = buf;
          }

          else
          {
            v30 = *buf;
          }

          *__p = 141558531;
          *&__p[4] = 1752392040;
          *&__p[12] = 2081;
          *&__p[14] = p_str;
          *&__p[22] = 2080;
          *&__p[24] = v30;
          _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sbased on services: %s", __p, 0x20u);
          if (v40 < 0)
          {
            operator delete(*buf);
          }

          if (v33 < 0)
          {
            operator delete(v32);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    ims::CFType::~CFType(&v35);
    if (!v9)
    {
      goto LABEL_70;
    }
  }

  else
  {
    memset(&__p[24], 0, 32);
    v42 = 0u;
    v43 = 0u;
    *__p = &unk_1F5EBDEF8;
    *&__p[8] = &_bambiDomain;
    *&__p[16] = 1073741826;
    v18 = ImsResult::operator<<<char [14]>(__p, "no user agent");
    ImsResult::ImsResult(this, v18);
    ImsResult::~ImsResult(__p);
    if (!v9)
    {
      goto LABEL_70;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_70:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_71:
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1E4F34644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  SipHost::~SipHost(&a27);
  ImsResult::~ImsResult(v34);
  ims::CFType::~CFType(&a21);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

xpc::dict *xpc::dict::dict(xpc::dict *this, xpc_object_t object)
{
  *this = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

{
  *this = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

void **xpc::dict::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void SipRegistrationClient::sendAuthorizedRequest(SipRegistrationClient *this)
{
  ++*(this + 155);
  SipRegistrationClient::setClientState(this, 9);
  *(this + 4176) = 1;
  SipRegistrationClient::sendRequest(v2, this);
  ImsResult::~ImsResult(v2);
}

void SipRegistrationClient::handleRegistrationNotification(SipRegistrationClient *this, const SipRegistrationInfo *a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = *(this + 63);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 62);
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
          (*(**(this + 480) + 400))(*(this + 480));
          v10 = *(a2 + 2);
          v9 = *(a2 + 3);
          if (v9 != v10)
          {
            v82 = v5;
            v83 = v7;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v11 = v8[73];
            v81 = v8;
            v12 = v8[74];
            if (v11 == v12)
            {
              v16 = 0;
            }

            else
            {
              do
              {
                v13 = *v11;
                v14 = *(a2 + 2);
                v15 = *(a2 + 3);
                while (v14 != v15)
                {
                  v16 = *v14;
                  if (SipUri::equals((*v14 + 8), v13, 1))
                  {
                    if (v16)
                    {
                      goto LABEL_18;
                    }

                    break;
                  }

                  v14 += 8;
                }

                if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(v95, this);
                  SipHop::logStr(v13);
                }

                ++v11;
              }

              while (v11 != v12);
              v16 = 0;
LABEL_18:
              v10 = *(a2 + 2);
              v9 = *(a2 + 3);
            }

            if (v9 != v10)
            {
              v24 = 0;
              do
              {
                if (v24 >= (v9 - v10) >> 3)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = *(v10 + 8 * v24);
                }

                SipUri::asString(v25 + 8, v95);
                v26 = *(v25 + 440);
                if ((v26 - 1) >= 3)
                {
                  v26 = 4 * (v26 == 4);
                }

                *&v95[24] = v26;
                v27 = v90;
                if (v90 >= v91)
                {
                  v29 = (v90 - v89) >> 5;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 59)
                  {
                    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
                  }

                  v31 = v91 - v89;
                  if ((v91 - v89) >> 4 > v30)
                  {
                    v30 = v31 >> 4;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v32 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<ims::RegistrationIdentity>>(&v89, v32);
                  }

                  v33 = 32 * v29;
                  v34 = *v95;
                  *(v33 + 16) = *&v95[16];
                  *v33 = v34;
                  memset(v95, 0, 24);
                  *(v33 + 24) = *&v95[24];
                  v36 = v89;
                  v35 = v90;
                  *&buf = &v89;
                  *(&buf + 1) = &v88;
                  *&v111 = __p;
                  *(&v111 + 1) = 0;
                  v37 = v89;
                  v38 = (v33 + v89 - v90);
                  *__p = v38;
                  v88 = v38;
                  v39 = v38;
                  if (v89 == v90)
                  {
                    BYTE8(v111) = 1;
                  }

                  else
                  {
                    do
                    {
                      v40 = *v37;
                      *(v39 + 2) = *(v37 + 2);
                      *v39 = v40;
                      *(v37 + 1) = 0;
                      *(v37 + 2) = 0;
                      *v37 = 0;
                      *(v39 + 6) = *(v37 + 6);
                      v37 += 32;
                      v39 += 32;
                    }

                    while (v37 != v35);
                    *__p = v39;
                    BYTE8(v111) = 1;
                    do
                    {
                      if (*(v36 + 23) < 0)
                      {
                        operator delete(*v36);
                      }

                      v36 += 4;
                    }

                    while (v36 != v35);
                  }

                  v41 = (v33 + 32);
                  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ims::RegistrationIdentity>,ims::RegistrationIdentity*>>::~__exception_guard_exceptions[abi:ne200100](&buf);
                  v42 = v89;
                  v89 = v38;
                  v90 = v41;
                  v91 = 0;
                  if (v42)
                  {
                    operator delete(v42);
                  }

                  v90 = v41;
                  if (v95[23] < 0)
                  {
                    operator delete(*v95);
                  }
                }

                else
                {
                  v28 = *v95;
                  *(v90 + 2) = *&v95[16];
                  *v27 = v28;
                  memset(v95, 0, 24);
                  *(v27 + 6) = *&v95[24];
                  v90 = v27 + 32;
                }

                ++v24;
                v10 = *(a2 + 2);
                v9 = *(a2 + 3);
              }

              while (v24 < (v9 - v10) >> 3);
            }

            if (v89 != v90)
            {
              v43 = *(this + 80);
              if (v43)
              {
                v44 = std::__shared_weak_count::lock(v43);
                if (v44)
                {
                  v45 = v44;
                  v46 = *(this + 79);
                  if (v46)
                  {
                    (*(*v46 + 72))(v46, this + 512, &v89);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                }
              }
            }

            if (!v16)
            {
              v50 = *(a2 + 2);
              v51 = *(a2 + 3);
              while (1)
              {
                if (v50 == v51)
                {
                  goto LABEL_159;
                }

                v16 = *v50;
                if (SipUri::equals((*v50 + 8), (this + 1384), 1))
                {
                  break;
                }

                v50 += 8;
              }

              if (!v16)
              {
LABEL_159:
                v74 = *(this + 34);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(v95, this);
                  SipHop::logStr((this + 1384));
                }

                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(&buf, this);
                  v75 = (SBYTE7(v111) & 0x80u) == 0 ? &buf : buf;
                  *v95 = 141558275;
                  *&v95[4] = 1752392040;
                  *&v95[12] = 2081;
                  *&v95[14] = v75;
                  _os_log_impl(&dword_1E4C3F000, v74, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sexisting registration entries are:", v95, 0x16u);
                  if (SBYTE7(v111) < 0)
                  {
                    operator delete(buf);
                  }
                }

                v77 = *(a2 + 2);
                v76 = *(a2 + 3);
                if (v76 != v77)
                {
                  v78 = 0;
                  do
                  {
                    v79 = (v76 - v77) >> 3;
                    if (v79 <= v78)
                    {
                      v80 = 0;
                    }

                    else
                    {
                      v80 = *(v77 + 8 * v78);
                    }

                    if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*this + 80))(v95, this);
                      SipHop::logStr((v80 + 8));
                    }

                    ++v78;
                  }

                  while (v78 < v79);
                }

                goto LABEL_175;
              }
            }

            v47 = v16[56];
            v48 = v16[57];
            while (1)
            {
              if (v47 == v48)
              {
                goto LABEL_95;
              }

              v49 = *v47;
              if (SipUri::equals((*v47 + 40), (this + 808), 0))
              {
                break;
              }

              ++v47;
            }

            if (v49)
            {
              v52 = *(this + 34);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                (*(*this + 80))(&buf, this);
                v53 = (SBYTE7(v111) & 0x80u) == 0 ? &buf : buf;
                *v95 = 141558275;
                *&v95[4] = 1752392040;
                *&v95[12] = 2081;
                *&v95[14] = v53;
                _os_log_impl(&dword_1E4C3F000, v52, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sfound matching URI in NOTIFY body", v95, 0x16u);
                if (SBYTE7(v111) < 0)
                {
                  operator delete(buf);
                }
              }

              v54 = v81;
            }

            else
            {
LABEL_95:
              memset(v95, 0, 24);
              v54 = v81;
              SipUserAgent::makeSipInstance(v81, v95, &buf);
              v55 = (*(**(&buf + 1) + 24))(*(&buf + 1), v111);
              ImsResult::~ImsResult(&buf);
              if (v55)
              {
                v49 = 0;
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "+sip.instance");
                v49 = SipRegistration::contactForParam(v16, &buf, v95);
                if (SBYTE7(v111) < 0)
                {
                  operator delete(buf);
                }

                if (v49)
                {
                  v56 = *(this + 34);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    (*(*this + 80))(&buf, this);
                    v57 = (SBYTE7(v111) & 0x80u) == 0 ? &buf : buf;
                    *__p = 141558275;
                    *&__p[4] = 1752392040;
                    v93 = 2081;
                    v94 = v57;
                    _os_log_impl(&dword_1E4C3F000, v56, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sfound matching sip.instance in NOTIFY body", __p, 0x16u);
                    if (SBYTE7(v111) < 0)
                    {
                      operator delete(buf);
                    }
                  }
                }
              }

              if (v95[23] < 0)
              {
                operator delete(*v95);
              }

              if (!v49)
              {
                v61 = v16[56];
                if (v16[57] - v61 != 8 || *(this + 2536) != 1)
                {
                  goto LABEL_128;
                }

                v49 = *v61;
                if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
                {
                  (*(*this + 80))(v95, this);
                  SipContact::logStr(v49);
                }

                if (!v49)
                {
LABEL_128:
                  v62 = *(this + 34);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*this + 80))(v95, this);
                    SipHop::logStr((v16 + 1));
                  }

                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*this + 80))(&buf, this);
                    v63 = (SBYTE7(v111) & 0x80u) == 0 ? &buf : buf;
                    *v95 = 141558275;
                    *&v95[4] = 1752392040;
                    *&v95[12] = 2081;
                    *&v95[14] = v63;
                    _os_log_impl(&dword_1E4C3F000, v62, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sexisting contacts are:", v95, 0x16u);
                    if (SBYTE7(v111) < 0)
                    {
                      operator delete(buf);
                    }
                  }

                  v65 = v16[56];
                  v64 = v16[57];
                  if (v64 != v65)
                  {
                    v66 = 0;
                    do
                    {
                      v67 = (v64 - v65) >> 3;
                      if (v67 <= v66)
                      {
                        v68 = 0;
                      }

                      else
                      {
                        v68 = *(v65 + 8 * v66);
                      }

                      if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*this + 80))(v95, this);
                        SipHop::logStr((v68 + 40));
                      }

                      ++v66;
                    }

                    while (v66 < v67);
                  }

LABEL_175:
                  *&buf = &v89;
                  std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](&buf);
                  v5 = v82;
LABEL_176:
                  v7 = v83;
LABEL_177:
                  if (v7)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
                  }

                  goto LABEL_21;
                }
              }
            }

            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            buf = 0u;
            v111 = 0u;
            SipContact::SipContact(&buf, v49, 0);
            v58 = DWORD2(v138);
            if (!DWORD2(v138))
            {
              if (HIDWORD(buf) == 2 && (*(SipUserAgent::config(v54) + 859) & 1) == 0)
              {
                v59 = *(this + 34);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(v95, this);
                  v60 = (v95[23] & 0x80u) == 0 ? v95 : *v95;
                  *__p = 141558275;
                  *&__p[4] = 1752392040;
                  v93 = 2081;
                  v94 = v60;
                  _os_log_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreceived reg NOTIFY with state = active and expires = 0.  Treating it as a termination.", __p, 0x16u);
                  if (v95[23] < 0)
                  {
                    operator delete(*v95);
                  }
                }

                HIDWORD(buf) = 3;
              }

              v58 = DWORD2(v138);
            }

            if (v58 == -1)
            {
              v69 = *(this + 34);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                (*(*this + 80))(v95, this);
                v70 = (v95[23] & 0x80u) == 0 ? v95 : *v95;
                *__p = 141558275;
                *&__p[4] = 1752392040;
                v93 = 2081;
                v94 = v70;
                _os_log_impl(&dword_1E4C3F000, v69, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}smy contact in NOTIFY doesn't have an expires attribute. Not updating expiration timers.", __p, 0x16u);
                if (v95[23] < 0)
                {
                  operator delete(*v95);
                }
              }
            }

            else if ((*(SipUserAgent::config(v54) + 859) & 1) == 0)
            {
              SipRegistrationClient::updateExpirationTimer(this, DWORD2(v138));
            }

            if (HIDWORD(buf) == 2)
            {
              SipRegistrationClient::updateServiceMaskForContact(this, &buf);
              v109 = 0;
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
              v96 = 0u;
              memset(v95, 0, sizeof(v95));
              v71 = *(this + 31);
              v86 = *(this + 30);
              if (v71)
              {
                v87 = std::__shared_weak_count::lock(v71);
                if (v87)
                {
                  SipRegistrationActiveNotification::SipRegistrationActiveNotification(v95, &v86);
                }
              }

              else
              {
                v87 = 0;
              }

              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            DWORD2(v141) = 0;
            *&v99 = 0;
            v97 = 0u;
            v98 = 0u;
            v96 = 0u;
            memset(v95, 0, sizeof(v95));
            v72 = *(this + 31);
            v84 = *(this + 30);
            if (v72)
            {
              v85 = std::__shared_weak_count::lock(v72);
              if (v85)
              {
                v73 = *(this + 2661);
                SipRegistrationTerminatedNotification::SipRegistrationTerminatedNotification(v95, &v84);
              }
            }

            else
            {
              v85 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v21 = *(this + 34);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_177;
          }

          v83 = v7;
          (*(*this + 80))(&buf, this);
          if ((SBYTE7(v111) & 0x80u) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          *v95 = 141558275;
          *&v95[4] = 1752392040;
          *&v95[12] = 2081;
          *&v95[14] = p_buf;
          _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno registration info in notification", v95, 0x16u);
        }

        else
        {
          v19 = *(this + 34);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_177;
          }

          v83 = v7;
          (*(*this + 80))(&buf, this);
          if ((SBYTE7(v111) & 0x80u) == 0)
          {
            v20 = &buf;
          }

          else
          {
            v20 = buf;
          }

          *v95 = 141558275;
          *&v95[4] = 1752392040;
          *&v95[12] = 2081;
          *&v95[14] = v20;
          _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", v95, 0x16u);
        }

        if (SBYTE7(v111) < 0)
        {
          operator delete(buf);
        }

        goto LABEL_176;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = *(this + 34);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(&buf, this);
    v23 = (SBYTE7(v111) & 0x80u) == 0 ? &buf : buf;
    *v95 = 141558275;
    *&v95[4] = 1752392040;
    *&v95[12] = 2081;
    *&v95[14] = v23;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v95, 0x16u);
    if (SBYTE7(v111) < 0)
    {
      operator delete(buf);
    }
  }

LABEL_21:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4F35DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  SipContact::~SipContact(&a69);
  a69 = &a30;
  std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](&a69);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

BOOL ims::contains<std::string>(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == a2)
      {
        v4 = a2;
        return v4 != a2;
      }
    }
  }

  return v4 != a2;
}

void SipRegistrationClient::handleAuthChallengeResponse(SipRegistrationClient *this, const SipAuthInfoInterface *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(this + 63);
  if (!v3)
  {
    v5 = 0;
LABEL_20:
    v14 = *(this + 34);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 80))(buf, this);
      v19 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v19;
      _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_21;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(this + 62);
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *(v6 + 248);
  v7 = *(v6 + 256);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    v9 = *(this + 176);
    if ((v9 - 7) >= 2)
    {
      if (v9 == 1 || v9 == 10)
      {
        v10 = *(this + 34);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 80))(__p, this);
          if (v48 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = &_MergedGlobals_17[3 * *(this + 176)];
          v13 = v12 + 15;
          if (*(v12 + 143) < 0)
          {
            v13 = *v13;
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v11;
          *&buf[22] = 2080;
          *&buf[24] = v13;
          _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}signoring auth response in state %s", buf, 0x20u);
LABEL_17:
          if (v48 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      else
      {
        v20 = *(this + 34);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          (*(*this + 80))(__p, this);
          if (v48 >= 0)
          {
            v37 = __p;
          }

          else
          {
            v37 = *__p;
          }

          v38 = &_MergedGlobals_17[3 * *(this + 176)];
          v39 = v38 + 15;
          if (*(v38 + 143) < 0)
          {
            v39 = *v39;
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v37;
          *&buf[22] = 2080;
          *&buf[24] = v39;
          _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sreceived auth response in unexpected state %s", buf, 0x20u);
          goto LABEL_17;
        }
      }

      SipRegistrationClient::setClientState(this, 1);
      goto LABEL_41;
    }

    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    v18 = (*(*a2 + 56))(a2);
    (*(*v18 + 56))(buf);
    if ((*(**&buf[8] + 24))(*&buf[8], *&buf[16]))
    {
      ++*(this + 155);
      SipRegistrationClient::setClientState(this, 1);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      *__p = &unk_1F5EBDEF8;
      *&__p[8] = &_bambiDomain;
      *&__p[16] = 1073741832;
      if (*&buf[8] != &_bambiDomain)
      {
        ImsResult::~ImsResult(__p);
LABEL_59:
        if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 80))(&v43, this);
          ImsResult::logStr(buf);
        }

        v30 = (*(*this + 288))(this);
        v31 = **(this + 480);
        if (v30)
        {
          v32 = (*(v31 + 296))();
          SipRegistrationClient::handleRegistrationError(this, buf, v32, 1, 0);
        }

        else if ((*(v31 + 312))())
        {
          SipRegistrationClient::internalRetryRegistration(this);
        }

        goto LABEL_76;
      }

      v27 = *&buf[16];
      ImsResult::~ImsResult(__p);
      if (v27 != 1073741832)
      {
        goto LABEL_59;
      }

      v28 = *(this + 34);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(__p, this);
        v29 = v48 >= 0 ? __p : *__p;
        v43 = 141558275;
        v44 = 1752392040;
        v45 = 2081;
        v46 = v29;
        _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sauth sync failure.  Retrying initial registration.", &v43, 0x16u);
        if (v48 < 0)
        {
          operator delete(*__p);
        }
      }

      SipRegistrationClient::sendInitialRequest(this);
LABEL_76:
      ImsResult::~ImsResult(buf);
      if (!v7)
      {
        goto LABEL_21;
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      goto LABEL_21;
    }

    v21 = *(this + 86);
    if (v21)
    {
      v22 = (*(*a2 + 56))(a2);
      SipIPSecTransportGroup::updateKeysFromAuthResponse(v21, v22, __p);
      ImsResult::operator=(buf, __p);
      ImsResult::~ImsResult(__p);
      if ((*(**&buf[8] + 24))(*&buf[8], *&buf[16]))
      {
        v23 = SipUserAgent::config(v8);
        v24 = SipTimers::timerValue((v23 + 512), &SipTimers::kTimerRegAwaitAuth, 0) / 0x3E8uLL;
        if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_ERROR))
        {
          (*(*this + 80))(&v43, this);
          ImsResult::logStr(buf);
        }

        v25 = *(v8 + 46);
        v26 = *(v8 + 47);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v25 + 32))(v25);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        (*(**(this + 480) + 488))(*(this + 480), buf, v24, 0);
        SipRegistrationClient::handleRegistrationError(this, buf, v24, 1, 0);
        goto LABEL_76;
      }

      v33 = SipStack::prefs(v6);
      if (ImsPrefs::IPSecBringupUseNetworkPath(v33))
      {
        v34 = *(this + 34);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 80))(__p, this);
          v35 = v48 >= 0 ? __p : *__p;
          v43 = 141558275;
          v44 = 1752392040;
          v45 = 2081;
          v46 = v35;
          _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWaiting for network paths to become available", &v43, 0x16u);
          if (v48 < 0)
          {
            operator delete(*__p);
          }
        }

        SipRegistrationClient::setClientState(this, 8);
        v40 = 0;
        v41 = 0;
        ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(&v40, *(this + 30), *(this + 31));
        v36 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v36 + 16), 1uLL, memory_order_relaxed);
        }

        v42 = 0;
        operator new();
      }
    }

    SipRegistrationClient::sendAuthorizedRequest(this);
    goto LABEL_76;
  }

  v16 = *(this + 34);
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR) || (((*(*this + 80))(buf, this), (buf[23] & 0x80u) == 0) ? (v17 = buf) : (v17 = *buf), *__p = 141558275, *&__p[4] = 1752392040, *&__p[12] = 2081, *&__p[14] = v17, _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u), (buf[23] & 0x80000000) == 0))
  {
LABEL_41:
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  operator delete(*buf);
  if (v7)
  {
    goto LABEL_42;
  }

LABEL_21:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4F36C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, std::__shared_weak_count *a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  ImsResult::~ImsResult((v34 - 192));
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::handleAuthChallengeTimeout(uint64_t this, const SipAuthInfoInterface *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 704) == 7)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = &unk_1F5EBDEF8;
    v10 = &_bambiDomain;
    v11 = 1073741830;
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1E4F37040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a18);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::handlePathSatisfied(int8x8_t *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (this[88].i32[0] == 8)
  {
    v2 = this[34];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInterface network paths satisfied", buf, 0x16u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipTimerContainer::cancelTimer(this + 35, &qword_1EE2BC6B8);
    SipRegistrationClient::sendAuthorizedRequest(this);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void SipRegistrationClient::handlePathFailed(_DWORD *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1[176] == 8)
  {
    v3 = *(a1 + 86);
    if (v3)
    {
      v4 = a2;
      v5 = *(v3 + 336);
      v6 = *(v5 + 87);
      v7 = v6 >= 0 ? *(v5 + 87) : *(v5 + 72);
      v8 = *(a2 + 23);
      v9 = v8 >= 0 ? *(a2 + 23) : a2[1];
      if (v7 == v9)
      {
        v12 = *(v5 + 64);
        v10 = (v5 + 64);
        v11 = v12;
        if (v6 >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = v11;
        }

        v14 = *a2;
        if (v8 < 0)
        {
          a2 = *a2;
        }

        if (!memcmp(v13, a2, v7))
        {
          goto LABEL_26;
        }
      }

      v15 = *(v3 + 344);
      v16 = *(v15 + 87);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 72);
      }

      if (v16 == v9)
      {
        v20 = *(v15 + 64);
        v18 = v15 + 64;
        v19 = v20;
        v21 = (v17 >= 0 ? v18 : v19);
        v22 = *v4;
        v23 = v8 >= 0 ? v4 : *v4;
        if (!memcmp(v21, v23, v9))
        {
LABEL_26:
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          *buf = &unk_1F5EBDEF8;
          v31 = &_bambiDomain;
          v32 = 1073741842;
          v24 = ImsResult::operator<<<char [46]>(buf, "Interface network path evaluation failed for ");
          v25 = ImsResult::operator<<<std::string>(v24, v4);
          ImsResult::ImsResult(v28, v25);
          ImsResult::~ImsResult(buf);
          SipTimerContainer::cancelTimer(a1 + 35, &qword_1EE2BC6B8);
          if (os_log_type_enabled(*(a1 + 34), OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 80))(&v27, a1);
            ImsResult::logStr(v28);
          }

          SipRegistrationClient::handleRegistrationError(a1, v28, -1, 1, 0);
          SipRegistrationClient::setClientState(a1, 1);
          ImsResult::~ImsResult(v28);
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4F374A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a18);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::printRegistrationInfo(SipRegistrationClient *this, ImsOutStream *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  ims::getStaticLoggerFor("state", buf);
  v3 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_INFO, "#I Registration:", buf, 2u);
  }

  ims::getStaticLoggerFor("state", buf);
  v4 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    SipRegistrationState::logStr((this + 712));
  }

  ims::getStaticLoggerFor("state", buf);
  v5 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(this + 179);
    if (v6 > 4)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_1E876B440[v6];
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_INFO, "#I     API State:           %s", buf, 0xCu);
  }

  if (*(this + 178) == 2)
  {
    ims::getStaticLoggerFor("state", buf);
    v8 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v28 = *(this + 82);
      ims::TimeAndIntervalFromNow::logStr(v28);
    }

    ims::getStaticLoggerFor("state", buf);
    v9 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(this + 334);
      std::string::basic_string[abi:ne200100]<0>(__p, ",");
      BambiServices::namesForServiceMask(v10, buf);
      if ((SBYTE7(v30) & 0x80u) == 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      *v28 = 136315138;
      *&v28[4] = v11;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I     Configured Services: %s", v28, 0xCu);
      if (SBYTE7(v30) < 0)
      {
        operator delete(*buf);
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    ims::getStaticLoggerFor("state", buf);
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(this + 326);
      std::string::basic_string[abi:ne200100]<0>(__p, ",");
      BambiServices::namesForServiceMask(v13, buf);
      if ((SBYTE7(v30) & 0x80u) == 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      *v28 = 136315138;
      *&v28[4] = v14;
      _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_INFO, "#I     Registered Services: %s", v28, 0xCu);
      if (SBYTE7(v30) < 0)
      {
        operator delete(*buf);
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    ims::getStaticLoggerFor("state", buf);
    v15 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = SipRegistrationClient::allowedServices(this);
      std::string::basic_string[abi:ne200100]<0>(__p, ",");
      BambiServices::namesForServiceMask(v16, buf);
      if ((SBYTE7(v30) & 0x80u) == 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      *v28 = 136315138;
      *&v28[4] = v17;
      _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_INFO, "#I      Allowed   Services: %s", v28, 0xCu);
      if (SBYTE7(v30) < 0)
      {
        operator delete(*buf);
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ims::getStaticLoggerFor("state", buf);
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = &_MergedGlobals_17[3 * *(this + 176)];
    v20 = v19 + 15;
    if (*(v19 + 143) < 0)
    {
      v20 = *v20;
    }

    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_INFO, "#I     Client state:        %s", buf, 0xCu);
  }

  if (*(this + 86))
  {
    ims::getStaticLoggerFor("state", buf);
    v21 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_INFO, "#I     Pending SA:          ", buf, 2u);
    }

    ims::getStaticLoggerFor("state", buf);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(this + 86);
      v31 = 0;
      *buf = 0u;
      v30 = 0u;
      ImsStringOutStream::ImsStringOutStream(buf);
    }
  }

  if (*(this + 480))
  {
    ims::getStaticLoggerFor("state", buf);
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      SipRegistrationPolicy::logStrForPolicyInfo(*(this + 480));
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E4F37C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::registrationDomain(SipRegistrationClient *this@<X0>, std::string *a2@<X8>)
{
  v2 = (this + 2200);
  if ((*(this + 2223) & 0x80000000) == 0)
  {
    if (*(this + 2223))
    {
      *&a2->__r_.__value_.__l.__data_ = *v2;
      a2->__r_.__value_.__r.__words[2] = *(this + 277);
      return;
    }

LABEL_6:
    SipHost::toString((this + 1392));
  }

  v3 = *(this + 276);
  if (!v3)
  {
    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(a2, *v2, v3);
}

void SipRegistrationClient::loggableName(SipRegistrationClient *this@<X0>, LoggableString *a2@<X8>)
{
  if ((*(*this + 288))(this))
  {
    v3 = "RegistrationClient(EMERGENCY)";
  }

  else
  {
    v3 = "RegistrationClient";
  }

  LoggableString::LoggableString(a2, v3);
}

void non-virtual thunk toSipRegistrationClient::loggableName(SipRegistrationClient *this@<X0>, LoggableString *a2@<X8>)
{
  if ((*(*(this - 19) + 288))())
  {
    v3 = "RegistrationClient(EMERGENCY)";
  }

  else
  {
    v3 = "RegistrationClient";
  }

  LoggableString::LoggableString(a2, v3);
}

void SipRegistrationClient::logPrefix(SipRegistrationClient *this, ImsOutStream *a2)
{
  v4 = *(this + 63);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 62);
      if (v6)
      {
        (*(*v6 + 112))(__p);
        (*(*a2 + 40))(a2, __p);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [", 2);
        *(a2 + 17) = 0;
        (*(*this + 88))(__p, this);
        (*(*a2 + 40))(a2, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*this + 88))(__p, this);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    goto LABEL_12;
  }
}

void SipRegistrationClient::logPrefixStr(SipRegistrationClient *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4F38114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipRegistrationClient::isEmergency(SipRegistrationClient *this)
{
  v2 = *(this + 63);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = *(this + 62);
    if (v4)
    {
      v5 = *(v4 + 296);
    }

    else
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void SipRegistrationClient::handleEmergencyStateExited(SipRegistrationClient *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (((*(*this + 288))(this) & 1) == 0)
  {
    v5 = *(this + 34);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(__p, this);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v11 = 1752392040;
      v12 = 2081;
      v13 = v6;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sExit emergency state call on normal registration client, ignoring", buf, 0x16u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_12;
  }

  v2 = *(this + 480);
  if (!v2)
  {
LABEL_12:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *(*v2 + 448);
  v4 = *MEMORY[0x1E69E9840];

  v3();
}

void SipRegistrationClient::ipsecTransportExpired(uint64_t a1, SipTransportInterface **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a2 != *(a1 + 688) && os_log_type_enabled(*(a1 + 272), OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(v8, a1);
    SipTransportInterface::logStr(*a2);
  }

  v4 = *(a1 + 272);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(buf, a1);
    v5 = v12 >= 0 ? buf : *buf;
    *v8 = 141558275;
    *&v8[4] = 1752392040;
    v9 = 2081;
    v10 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}spending SA expired prior to successful registration", v8, 0x16u);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*buf);
    }
  }

  v6 = *(a1 + 696);
  *(a1 + 688) = 0u;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4F38594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::dropRegistrationWhenCallsEnd(SipRegistrationClient *a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 34);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(__p, a1);
    v5 = (_terminationReasonStrings + 24 * a2);
    if (0xAAAAAAAAAAAAAAABLL * ((*algn_1EE2BD548 - _terminationReasonStrings) >> 3) <= a2)
    {
      v5 = "Unknown";
    }

    v6 = __p[0];
    if (v10 >= 0)
    {
      v6 = __p;
    }

    v7 = *v5;
    *&buf[1] = 1752392040;
    v8 = v5[23];
    buf[0] = 141558531;
    v12 = 2081;
    if (v8 < 0)
    {
      v5 = v7;
    }

    v13 = v6;
    v14 = 32;
    v15 = 8;
    v16 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDeferring drop registration with reason %s", buf, 0x20u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipRegistrationClient::clearDeferredDrop(a1);
  operator new();
}

void SipRegistrationClient::allCallsEnded(SipRegistrationClient *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 524);
  if (!v2)
  {
LABEL_6:
    v4 = *(this + 525);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = *(this + 525);
  if (!v3 || *(v3 + 8) >= *(v2 + 8))
  {
    (**v2)(v2, 1);
    goto LABEL_6;
  }

  (**v3)(*(this + 525), 1);
  v4 = *(this + 524);
LABEL_7:
  (**v4)(v4, 1);
LABEL_8:
  SipRegistrationClient::clearDeferredNotifications(this);
  v5 = *(this + 526);
  if (v5)
  {
    v6 = *(this + 34);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(&__p, this);
      if (v14 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      v11 = 2081;
      v12 = p_p;
      _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRegistration drop has been deferred, dropping registration now.", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p);
      }

      v5 = *(this + 526);
    }

    (*(*v5 + 16))(v5, 0);
  }

  SipRegistrationClient::clearDeferredDrop(this);
  v8 = *(this + 480);
  if (v8)
  {
    if (v8[112] != *(this + 1058))
    {
      if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(buf, this);
        SipRegistrationMode::logStr((this + 4232));
      }

      (*(*this + 144))(this, v8 + 112, 200);
      v8 = *(this + 480);
    }

    (*(*v8 + 432))(v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4F38BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::checkTimers(SipRegistrationClient *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = time(0);
  v3 = *(this + 480);
  if (!v3 || (SipRegistrationPolicy::checkTimers(v3, v2), v4 = *(this + 480), !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v4 + 232), "ThrottleTimer")) || *(v4 + 408) <= 0)
  {
    if (!SipTimerContainer::timerPastDue(this + 280, "RegHysteresisTimer") || (SipTimerContainer::cancelTimer(this + 35, "RegHysteresisTimer"), (SipRegistrationClient::handleHysteresisTimer(this) & 1) == 0))
    {
      if (*(this + 178) == 2)
      {
        SipTimerContainer::cancelTimer(this + 35, &qword_1EE2BC688);
        SipTimerContainer::cancelTimer(this + 35, _MergedGlobals_17);
        v5 = *(this + 85);
        if (v5 < 1 || (v6 = *(this + 83), v7 = __OFSUB__(v6, v5), v8 = v6 - v5, (v8 < 0) ^ v7 | (v8 == 0)))
        {
          v10 = 0;
        }

        else
        {
          v9 = v8 * *(this + 340);
          if (v9 / 100 >= *(this + 342))
          {
            v10 = *(this + 342);
          }

          else
          {
            v10 = v9 / 100;
          }
        }

        if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_INFO))
        {
          (*(*this + 80))(v20, this);
          ims::formatTimeInterval(v10);
        }

        v11 = *(this + 31);
        if (!v11 || (v12 = *(this + 30), (v13 = std::__shared_weak_count::lock(v11)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v14 = v13;
        p_shared_weak_owners = &v13->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        if (*(this + 82) <= v2)
        {
          if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 80))(v20, this);
            v19 = *(this + 82);
            ims::TimeAndIntervalFromNow::logStr(&v19);
          }

          *buf = 0;
          SipRegistrationClient::setRegistrationState(this, buf, 0);
          (*(*this + 176))(this, 0, 0, 0);
        }

        else
        {
          v16 = *(this + 84);
          if (v16 < 1 || v2 < v16 - v10)
          {
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v20[10] = 0;
            operator new();
          }

          if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 80))(v20, this);
            v19 = *(this + 84);
            ims::TimeAndIntervalFromNow::logStr(&v19);
          }

          if ((SipRegistrationClient::refreshRegistration(this) & 1) == 0)
          {
            v17 = *(this + 82);
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v20[14] = 0;
            operator new();
          }
        }

        std::__shared_weak_count::__release_weak(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4F39254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a28);
  std::__shared_weak_count::__release_weak(v28);
  std::__shared_weak_count::__release_weak(v28);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::systemClockDidChange(std::string *this)
{
  v19 = *MEMORY[0x1E69E9840];
  data = this[160].__r_.__value_.__l.__data_;
  if (data)
  {
    SipRegistrationPolicy::systemClockDidChange(data);
  }

  if (LODWORD(this[29].__r_.__value_.__r.__words[2]) == 2)
  {
    goto LABEL_10;
  }

  v3 = this[21].__r_.__value_.__l.__data_;
  if (!v3 || (v4 = std::__shared_weak_count::lock(v3)) == 0)
  {
LABEL_9:
    v8 = (*(this->__r_.__value_.__r.__words[2] + 64))(&this->__r_.__value_.__s.__data_[16]);
    (*(this->__r_.__value_.__r.__words[2] + 16))(&this->__r_.__value_.__s.__data_[16], v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "systemClockDidChange, device not registered: keep checking registration refresh timer ", 86);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
LABEL_10:
    if (this[28].__r_.__value_.__l.__size_ > time(0) && LODWORD(this[29].__r_.__value_.__r.__words[1]) == 1)
    {
      size = this[11].__r_.__value_.__l.__size_;
      if (os_log_type_enabled(size, OS_LOG_TYPE_DEFAULT))
      {
        (*(this->__r_.__value_.__r.__words[0] + 80))(__p, this);
        if (v14 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 141558275;
        v16 = 1752392040;
        v17 = 2081;
        v18 = v10;
        _os_log_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sour last registration was from the future! Re-registering just to be safe.", buf, 0x16u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      SipRegistrationClient::refreshRegistration(this);
    }

    SipRegistrationClient::checkTimers(this);
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = v4;
  v6 = this[20].__r_.__value_.__r.__words[2];
  if (!v6 || (v7 = SipStack::prefs(v6), ImsPrefs::AlwaysCheckRegistrationRefreshTimerAfterSystemClockChange(v7)))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void SipRegistrationClient::handleRegistrationModeChange(os_log_t *this, const SipRegistrationMode *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a2 == *(this + 1058))
  {
    if (os_log_type_enabled(this[34], OS_LOG_TYPE_DEFAULT))
    {
      ((*this)[10].isa)(v18, this);
      SipRegistrationMode::logStr(a2);
    }

    goto LABEL_24;
  }

  v6 = this[63];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = this[62];
      if (v9 && *a2 != SipRegistrationMode::kModeNormal && SipStack::callCount(v9))
      {
        v10 = this[34];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          ((*this)[10].isa)(buf, this);
          if (v22 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          *v18 = 141558275;
          *&v18[4] = 1752392040;
          v19 = 2081;
          v20 = v11;
          _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdelaying registration mode change notification until all calls have ended", v18, 0x16u);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(*buf);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_24;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  SipTimerContainer::cancelTimer(this + 35, "RegHysteresisTimer");
  *(this + 1058) = *a2;
  v12 = this[80];
  if (!v12 || (v13 = std::__shared_weak_count::lock(v12)) == 0)
  {
LABEL_24:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = v13;
  v15 = this[79];
  if (v15)
  {
    (*(v15->isa + 4))(v15, this + 512, a2, a3);
  }

  v16 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
}

void SipRegistrationClient::handleProxyChange(SipRegistrationClient *this, const SipUri *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 34);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    (*(*this + 80))(__p, this);
    v5 = v19 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v21 = 1752392040;
    v22 = 2081;
    v23 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sproxy changed, clearing auth info", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipUri::operator=((this + 3016), a2);
  v6 = *(this + 63);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 62);
      if (v8)
      {
        v9 = *(v8 + 248);
        v10 = *(v8 + 256);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v11 = *(v9 + 368);
          v12 = *(v9 + 376);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v11 + 32))(v11);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        else
        {
          v14 = *(this + 34);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            (*(*this + 80))(__p, this);
            v17 = v19 >= 0 ? __p : __p[0];
            *buf = 141558275;
            v21 = 1752392040;
            v22 = 2081;
            v23 = v17;
            _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

LABEL_24:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_25;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *(this + 34);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v16 = v19 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v21 = 1752392040;
    v22 = 2081;
    v23 = v16;
    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v7)
  {
    goto LABEL_24;
  }

LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4F39BEC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipRegistrationClient::requestNetworkReset(SipRegistrationClient *this)
{
  IPTelephonyManager::getBambiClient(&v3);
  BambiClient::requestNetworkReset(v3, this + 512);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4F39CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationClient::handleRegistrationThrottled(SipRegistrationClient *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 79);
      if (v9)
      {
        (*(*v9 + 56))(v9, this + 512, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

uint64_t SipRegistrationClient::defaultProxyPort(SipRegistrationClient *this)
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
        v5 = *(v4 + 2162);
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        v7 = v5;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *(this + 34);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 141558275;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v10;
    _os_log_error_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = 0;
  v7 = 0;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E4F39ECC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRegistrationClient::hasActiveCalls(SipRegistrationClient *this)
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
        v5 = (*(*this + 288))(this);
        v6 = SipStack::activeCallCount(v4, v5) != 0;
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        result = v6;
        goto LABEL_9;
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
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

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
  result = 0;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SipRegistrationClient::disableIfInWrongCountry(void *a1, uint64_t *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a1[480];
  v7 = a1[34];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      (*(*a1 + 80))(__p, a1);
      if (v21 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      v23 = 2081;
      v24 = v9;
      v25 = 2080;
      v26 = v10;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCheck if registration needs to be disabled due to : %s", buf, 0x20u);
      if (v21 < 0)
      {
        operator delete(*__p);
      }

      v6 = a1[480];
    }

    v11 = a2[1];
    v16 = *a2;
    v17 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = (*(*v6 + 552))(v6, &v16, a3);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    if (v8)
    {
      (*(*a1 + 80))(buf, a1);
      v13 = v25 >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      v19 = 2081;
      v20 = v13;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo policy present, can't disable registration for wrong country.", __p, 0x16u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t SipRegistrationClient::networkInterfaceChanged(SipRegistrationClient *this)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *(this + 63);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 62);
      if (v4)
      {
        v6 = *(v4 + 280);
        v5 = *(v4 + 288);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = *(v6 + 1184);
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          if (v7)
          {
LABEL_6:
            memset(&v31, 0, sizeof(v31));
            if (*(v4 + 1751) < 0)
            {
              std::string::__init_copy_ctor_external(&v31, *(v4 + 1728), *(v4 + 1736));
            }

            else
            {
              v31 = *(v4 + 1728);
            }

            IPTelephonyManager::getBambiClient(__p);
            v14 = *(__p[0] + 85);
            v15 = *(__p[0] + 86);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v16 = (*(*v14 + 40))(v14, &v31);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            if (__p[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
            }

            if (v16)
            {
              v58 = 0;
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
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v35 = 0u;
              memset(__p, 0, sizeof(__p));
              v17 = *(v4 + 280);
              v18 = *(v4 + 288);
              if (v18)
              {
                atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipUri::SipUri(__p, (v17 + 1640));
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }

              if (!SipUri::isValidUri(__p))
              {
                goto LABEL_68;
              }

              SipHost::ipAddress(&__p[1], buf);
              v19 = v16[1];
              v20 = v16[2];
              if (v19 == v20)
              {
                v23 = 0;
              }

              else
              {
                v21 = v19 + 16;
                do
                {
                  v22 = (*(**(v21 - 16) + 104))(*(v21 - 16), buf, 0);
                  v23 = v22;
                  if (v21 == v20)
                  {
                    v24 = 1;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  v21 += 16;
                }

                while (v24 != 1);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              if (v23)
              {
                v9 = 0;
              }

              else
              {
LABEL_68:
                if (os_log_type_enabled(*(this + 34), OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 80))(&v30, this);
                  SipHost::ipAddress(&__p[1], &v29);
                  IpAddress::logStr(v29);
                }

                v9 = 1;
              }

              (*(*v16 + 8))(v16);
              SipUri::~SipUri(__p);
            }

            else
            {
              v25 = *(this + 34);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 80))(buf, this);
                if (v33 >= 0)
                {
                  v26 = buf;
                }

                else
                {
                  v26 = *buf;
                }

                v27 = &v31;
                if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v27 = v31.__r_.__value_.__r.__words[0];
                }

                LODWORD(__p[0]) = 141558531;
                *(__p + 4) = 1752392040;
                WORD2(__p[1]) = 2081;
                *(&__p[1] + 6) = v26;
                HIWORD(__p[2]) = 2080;
                __p[3] = v27;
                _os_log_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo interface named %s", __p, 0x20u);
                if (v33 < 0)
                {
                  operator delete(*buf);
                }
              }

              v9 = 1;
            }

            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }

LABEL_11:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            goto LABEL_12;
          }
        }

        else if (*(v6 + 1184))
        {
          goto LABEL_6;
        }

        v12 = *(this + 34);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 80))(__p, this);
          v13 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v13;
          _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNo old interface, assuming the interface changed", buf, 0x16u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v9 = 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 34);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 80))(__p, this);
    v28 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v28;
    _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = 0;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1E4F3A8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationClient::handleImsOutageResponse(int8x8_t *this)
{
  v2 = this[480];
  if (v2)
  {
    (*(**&v2 + 528))(v2);
  }

  v3 = this[525];
  if (v3)
  {
    (*(**&v3 + 16))(v3);
  }

  this[525] = 0;
  SipTimerContainer::cancelTimer(this + 35, _MergedGlobals_17);
  v4 = *(*this + 176);

  return v4(this, 9, 0, 0);
}

void SipRegistrationClient::skipUnauthorizedRegister(std::string *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = xpc_null_create();
  v5 = xpc_null_create();
  data = a1[187].__r_.__value_.__l.__data_;
  a1[187].__r_.__value_.__r.__words[0] = v4;
  xpc_release(data);
  xpc_release(v5);
  v7 = MEMORY[0x1E6924740](*a2);
  v8 = MEMORY[0x1E69E9E80];
  if (v7 != MEMORY[0x1E69E9E80])
  {
    size = a1[11].__r_.__value_.__l.__size_;
    if (!os_log_type_enabled(size, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    (*(a1->__r_.__value_.__r.__words[0] + 80))(&__p, a1);
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
    _os_log_error_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sInvalid auth params provided. Unable to skip unauthorized REGISTER", buf, 0x16u);
    goto LABEL_7;
  }

  if (xpc_dictionary_get_value(*a2, "kReason"))
  {
    memset(&__p, 0, sizeof(__p));
    v37 = a2;
    v38 = "kReason";
    xpc::dict::object_proxy::operator xpc::object(&v37, &object);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    std::string::operator=(a1 + 173, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (MEMORY[0x1E6924740](*a2) == v8 && xpc_dictionary_get_value(*a2, "kDigestNonce") && xpc_dictionary_get_value(*a2, "kDigestRealm") && xpc_dictionary_get_value(*a2, "kDigestAlgorithm") && xpc_dictionary_get_value(*a2, "kPatChallenge") && xpc_dictionary_get_value(*a2, "kAthmSpamTokenResponse"))
  {
    memset(&__p, 0, sizeof(__p));
    v37 = a2;
    v38 = "kDigestNonce";
    xpc::dict::object_proxy::operator xpc::object(&v37, &object);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    memset(buf, 0, sizeof(buf));
    object = a2;
    v35 = "kDigestRealm";
    xpc::dict::object_proxy::operator xpc::object(&object, &v31);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }

    xpc_release(v31);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v31 = a2;
    v32 = "kDigestAlgorithm";
    xpc::dict::object_proxy::operator xpc::object(&v31, &v27);
    object = 0;
    v35 = 0;
    v36 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v36) < 0)
    {
      operator delete(object);
    }

    xpc_release(v27);
    object = 0;
    v35 = 0;
    v36 = 0;
    v27 = a2;
    v28 = "kPatChallenge";
    xpc::dict::object_proxy::operator xpc::object(&v27, v41);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    xpc_release(*v41);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    *v41 = a2;
    *&v41[8] = "kAthmSpamTokenResponse";
    xpc::dict::object_proxy::operator xpc::object(v41, &v30);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }

    xpc_release(v30);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    if (v12)
    {
      v13 = buf[23];
      if ((buf[23] & 0x80u) != 0)
      {
        v13 = *&buf[8];
      }

      if (v13)
      {
        v14 = HIBYTE(v39);
        if (v39 < 0)
        {
          v14 = v38;
        }

        if (v14)
        {
          v15 = HIBYTE(v36);
          if (v36 < 0)
          {
            v15 = v35;
          }

          if (v15)
          {
            v16 = HIBYTE(v33);
            if (v33 < 0)
            {
              v16 = v32;
            }

            v17 = a1[11].__r_.__value_.__l.__size_;
            if (v16)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
                v18 = v29 >= 0 ? &v27 : v27;
                *v41 = 141558275;
                *&v41[4] = 1752392040;
                *&v41[12] = 2081;
                *&v41[14] = v18;
                _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sAttempting to skip next unauthorized REGISTER", v41, 0x16u);
                if (SHIBYTE(v29) < 0)
                {
                  operator delete(v27);
                }
              }

              xpc::dict::operator=(&a1[187].__r_.__value_.__l.__data_, *a2);
              goto LABEL_77;
            }

            if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
LABEL_77:
              if (SHIBYTE(v33) < 0)
              {
                operator delete(v31);
              }

              if (SHIBYTE(v36) < 0)
              {
                operator delete(object);
              }

              if (SHIBYTE(v39) < 0)
              {
                operator delete(v37);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

LABEL_7:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_15;
            }

            (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
            if (v29 >= 0)
            {
              v26 = &v27;
            }

            else
            {
              v26 = v27;
            }

            *v41 = 141558275;
            *&v41[4] = 1752392040;
            *&v41[12] = 2081;
            *&v41[14] = v26;
            v21 = "#E %{private, mask.hash}sInvalid ATHM Spam TokenResponse in push. Unable to skip unauthorized REGISTER";
            v25 = v17;
LABEL_74:
            _os_log_error_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_ERROR, v21, v41, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(v27);
            }

            goto LABEL_77;
          }

          v19 = a1[11].__r_.__value_.__l.__size_;
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
          if (v29 >= 0)
          {
            v24 = &v27;
          }

          else
          {
            v24 = v27;
          }

          *v41 = 141558275;
          *&v41[4] = 1752392040;
          *&v41[12] = 2081;
          *&v41[14] = v24;
          v21 = "#E %{private, mask.hash}sInvalid PAT challenge in push. Unable to skip unauthorized REGISTER";
        }

        else
        {
          v19 = a1[11].__r_.__value_.__l.__size_;
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
          if (v29 >= 0)
          {
            v23 = &v27;
          }

          else
          {
            v23 = v27;
          }

          *v41 = 141558275;
          *&v41[4] = 1752392040;
          *&v41[12] = 2081;
          *&v41[14] = v23;
          v21 = "#E %{private, mask.hash}sInvalid digest algorithm in push. Unable to skip unauthorized REGISTER";
        }
      }

      else
      {
        v19 = a1[11].__r_.__value_.__l.__size_;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
        if (v29 >= 0)
        {
          v22 = &v27;
        }

        else
        {
          v22 = v27;
        }

        *v41 = 141558275;
        *&v41[4] = 1752392040;
        *&v41[12] = 2081;
        *&v41[14] = v22;
        v21 = "#E %{private, mask.hash}sInvalid digest realm in push. Unable to skip unauthorized REGISTER";
      }
    }

    else
    {
      v19 = a1[11].__r_.__value_.__l.__size_;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      (*(a1->__r_.__value_.__r.__words[0] + 80))(&v27, a1);
      if (v29 >= 0)
      {
        v20 = &v27;
      }

      else
      {
        v20 = v27;
      }

      *v41 = 141558275;
      *&v41[4] = 1752392040;
      *&v41[12] = 2081;
      *&v41[14] = v20;
      v21 = "#E %{private, mask.hash}sInvalid digest nonce in push. Unable to skip unauthorized REGISTER";
    }

    v25 = v19;
    goto LABEL_74;
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4F3B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, xpc_object_t a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void **xpc::dict::operator=(void **a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void DeferredRegistration::~DeferredRegistration(void **this)
{
  *this = &unk_1F5EDE048;
  if (*(this + 1719) < 0)
  {
    operator delete(this[212]);
  }

  SipRegistrationConfig::~SipRegistrationConfig(this + 3);
  *this = &unk_1F5EDE2E8;
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5EDE048;
  if (*(this + 1719) < 0)
  {
    operator delete(this[212]);
  }

  SipRegistrationConfig::~SipRegistrationConfig(this + 3);
  *this = &unk_1F5EDE2E8;
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void DeferredDeregistration::~DeferredDeregistration(DeferredDeregistration *this)
{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void DeferredDropRegistration::~DeferredDropRegistration(DeferredDropRegistration *this)
{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void DeferredSubscription::~DeferredSubscription(DeferredSubscription *this)
{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EDE2E8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationClient::stackId(SipRegistrationClient *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 535) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 64), *(this + 65));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 32);
    a2->__r_.__value_.__r.__words[2] = *(this + 66);
  }
}

std::__shared_weak_count *SipRegistrationClient::stackPtr@<X0>(SipRegistrationClient *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 63);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(this + 62);
    }
  }

  return result;
}

void SipRegistrationClient::clientConfig(SipRegistrationClient *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 56);
  *(a2 + 8) = *(this + 114);
  if (*(this + 487) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(this + 58), *(this + 59));
  }

  else
  {
    *(a2 + 16) = *(this + 29);
    *(a2 + 32) = *(this + 60);
  }

  *(a2 + 40) = *(this + 488);
}

uint64_t SipRegistrationClient::stack@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 504);
  *a2 = *(this + 496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void non-virtual thunk toSipRegistrationClient::stackId(SipRegistrationClient *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 359) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 42), *(this + 43));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 21);
    a2->__r_.__value_.__r.__words[2] = *(this + 44);
  }
}

std::__shared_weak_count *non-virtual thunk toSipRegistrationClient::stackPtr@<X0>(SipRegistrationClient *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 41);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(this + 40);
    }
  }

  return result;
}

void *DeferredAction::DeferredAction(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EDE2E8;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v3;
    a1[2] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    a1[1] = v3;
    a1[2] = 0;
  }

  return a1;
}

void *DeferredRegistration::DeferredRegistration(void *a1, uint64_t a2, std::__shared_weak_count *a3, const SipRegistrationConfig *a4, __int128 *a5)
{
  v12[0] = a2;
  v12[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    DeferredAction::DeferredAction(a1, v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  else
  {
    DeferredAction::DeferredAction(a1, v12);
  }

  *a1 = &unk_1F5EDE048;
  SipRegistrationConfig::SipRegistrationConfig((a1 + 3), a4);
  v9 = (a1 + 212);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    a1[214] = *(a5 + 2);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  return a1;
}

void sub_1E4F3BB30(_Unwind_Exception *a1)
{
  SipRegistrationConfig::~SipRegistrationConfig(v2);
  *v1 = &unk_1F5EDE2E8;
  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void SipRegistrationSubject::~SipRegistrationSubject(SipRegistrationSubject *this)
{
  *this = &unk_1F5EDE3D0;
  std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(*(this + 2));
}

{
  *this = &unk_1F5EDE3D0;
  std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(*(this + 2));

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationDeferralManager::~SipRegistrationDeferralManager(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void SipRegistrationMetrics::~SipRegistrationMetrics(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  ImsResult::~ImsResult((this + 2));
}

void std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(*a1);
    std::__tree<std::shared_ptr<SipRegistrationObserver>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void SipContact::~SipContact(SipContact *this)
{
  *this = &unk_1F5EF7968;
  *(this + 58) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 472, *(this + 60));
  SipUri::~SipUri((this + 40));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  SipContact::~SipContact(this);

  JUMPOUT(0x1E69235B0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ims::RegistrationIdentity>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ims::RegistrationIdentity>,ims::RegistrationIdentity*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ims::RegistrationIdentity>,ims::RegistrationIdentity*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ims::RegistrationIdentity>,ims::RegistrationIdentity*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ims::RegistrationIdentity>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ims::RegistrationIdentity>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t ims::SharedLoggable<SipRegistrationClient>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipRegistrationClient>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsNetworkPathManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipRegistrationClient>::__shared_ptr_emplace[abi:ne200100]<std::weak_ptr<SipStack> &,std::allocator<SipRegistrationClient>,0>(void *a1, std::__shared_weak_count **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EDE488;
  std::construct_at[abi:ne200100]<SipRegistrationClient,std::weak_ptr<SipStack> &,SipRegistrationClient*>((a1 + 3), a2);
}

void std::__shared_ptr_emplace<SipRegistrationClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<SipRegistrationClient,std::weak_ptr<SipStack> &,SipRegistrationClient*>(uint64_t a1, std::__shared_weak_count **a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::SipRegistrationClient(a1, v3);
}

void sub_1E4F3C35C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::SharedSynchronizable<SipRegistrationClient>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21SipRegistrationClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDE4D0;
  block[5] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21SipRegistrationClientEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21SipRegistrationClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<ATTRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<KDDIRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<Rfc5626RegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4F3C7DC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TTAKRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4F3CA2C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TMORegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SoftbankRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<VZWRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4F3CDAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4F3CFF4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliTransientRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<DefaultRegistrationPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliRegistrationMetrics>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDE848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliRegistrationMetrics>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void *std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE898;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE898;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDE898;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0,std::allocator<SipRegistrationClient::updateExpirationTimer(SipContact const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipRegistrationClient>::execute_wrapped<SipRegistrationClient::refreshRegistration(void)::$_0>(SipRegistrationClient::refreshRegistration(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipRegistrationClient::refreshRegistration(void)::$_0,dispatch_queue_s *::default_delete<SipRegistrationClient::refreshRegistration(void)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  IPTelephonyManager::instance(&v7, a1);
  v3 = v7;
  object = xpc_null_create();
  IPTelephonyManager::initializeTransient(v3, v2 + 512, &object);
  xpc_release(object);
  object = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  MEMORY[0x1E69235B0](v1, 0x20C4093837F09);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1E4F3D570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(object);
  object = 0;
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1E69235B0](v12, 0x20C4093837F09);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE918;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE918;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDE918;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0,std::allocator<SipRegistrationClient::coalesceLazuliRegistrationRefresh(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE998;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDE998;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDE998;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0,std::allocator<SipRegistrationClient::checkForRegHysteresis(SipRegistrationConfig const&,std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEA18;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEA18;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDEA18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::deregister(void)::$_0,std::allocator<SipRegistrationClient::deregister(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEA98;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEA98;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDEA98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::sendRequest(void)::$_0,std::allocator<SipRegistrationClient::sendRequest(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEB18;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEB18;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDEB18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0,std::allocator<SipRegistrationClient::handleAuthChallengeResponse(SipAuthInfoInterface const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::weak_ptr<ImsNetworkPathDelegate>::weak_ptr<SipRegistrationClient,0>(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = v5;
    if (v5)
    {
      if (*a2)
      {
        v7 = *a2 + 216;
      }

      else
      {
        v7 = 0;
      }

      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = 0;
    }

    v8 = a1[1];
    *a1 = v7;
    a1[1] = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return a1;
}

void *std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEB98;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDEB98;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDEB98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipRegistrationClient::checkTimers(void)::$_0,std::allocator<SipRegistrationClient::checkTimers(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void __cxx_global_array_dtor_3()
{
  v0 = &byte_1EE2BC7EF;
  v1 = -264;
  v2 = &byte_1EE2BC7EF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

uint64_t __cxx_global_var_init_117()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_SipRegistrationClient_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_17, "RegistrationRefreshTimer");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], _MergedGlobals_17, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC688, "RegistrationExpirationTimer");
  __cxa_atexit(v0, &qword_1EE2BC688, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC6A0, "FakeDeregistrationTimer");
  __cxa_atexit(v0, &qword_1EE2BC6A0, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC6B8, "IPSecInterfaceBringupTimer");
  __cxa_atexit(v0, &qword_1EE2BC6B8, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC6D0, "AttestationServiceHelperSigningTimer");
  __cxa_atexit(v0, &qword_1EE2BC6D0, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC6E8, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(&byte_1EE2BC6E8[24], "Idle");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC718, "InitialRegAccessCheck");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC730, "RefreshRegAccessCheck");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC748, "RetryRegAccessCheck");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC760, "InitializingTransport");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC778, "SendingInitialRequest");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC790, "WaitingForAuth");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC7A8, "WaitingForInterface");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC7C0, "SendingAuthorizedRequest");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC7D8, "Cancel");

  return __cxa_atexit(__cxx_global_array_dtor_3, 0, &dword_1E4C3F000);
}

void sub_1E4F3E944(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == byte_1EE2BC6E8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ImsOutStream::~ImsOutStream(ImsOutStream *this)
{
  *this = &unk_1F5EDED18;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }
}

{
  *this = &unk_1F5EDED18;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t ObfuscatedString::ObfuscatedString(uint64_t a1, const std::string *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=((a1 + 24), a2);
  return a1;
}

void sub_1E4F3EA20(_Unwind_Exception *exception_object)
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

ObfuscatedString *ObfuscatedString::str(ObfuscatedString *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (*(this + 1))
    {
      return this;
    }
  }

  else if (*(this + 23))
  {
    return this;
  }

  v2 = *(this + 47);
  if (v2 < 0)
  {
    v2 = *(this + 4);
  }

  if (v2)
  {
    v3 = ims::logger(this);
    ImsLogger::obfuscate(v3, this + 3, &v5);
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v5;
  }

  return this;
}

void ObfuscatedString::logStr(ObfuscatedString *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4F3EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void ImsStringOutStream::~ImsStringOutStream(ImsStringOutStream *this)
{
  *this = &unk_1F5EDED18;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }
}

{
  *this = &unk_1F5EDED18;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  JUMPOUT(0x1E69235B0);
}

void *ImsOutStream::putRedactedString(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = result[1];
    if (v3 < 0)
    {
      a2 = *a2;
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v4);
    *(v2 + 17) = 0;
  }

  else
  {
    if ((*(result + 17) & 1) == 0)
    {
      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result[1], "xXx", 3);
    }

    *(v2 + 17) = 1;
  }

  return result;
}

void *ImsOutStream::putObfuscatedString(ImsOutStream *this, const ObfuscatedString *a2)
{
  if (ImsOutStream::isRedacting(this))
  {
    ObfuscatedString::str(a2);
    v4 = 8;
    v5 = 23;
    v6 = a2;
  }

  else
  {
    v6 = (a2 + 24);
    v4 = 32;
    v5 = 47;
  }

  v7 = *(a2 + v5);
  v8 = *(a2 + v4);
  if ((v7 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  if ((v7 & 0x80u) == 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 1), v9, v10);
  *(this + 17) = 0;
  return result;
}

void ImsOutStream::putStringStream(ImsOutStream *this, const ImsStringOutStream *a2)
{
  if (ImsOutStream::isRedacting(this) && !ImsOutStream::isRedacting(a2))
  {
    std::ostringstream::str[abi:ne200100](*(a2 + 3), __p);
    std::string::basic_string[abi:ne200100]<0>(v6, "");
    ImsOutStream::putRedactedString(this, v6);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }
  }

  else
  {
    std::ostringstream::str[abi:ne200100](*(a2 + 3), __p);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 1), v4, v5);
    *(this + 17) = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4F3EE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1E4F3EF28(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EDED18;
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4F3F1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v16;
  if (*(v15 + 16) == 1)
  {
    v18 = *(v15 + 8);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_ImsStream_cpp()
{
  word_1EE2BC800 = 0;
  byte_1EE2BC802 = 0;
  _MergedGlobals_18 = &unk_1F5EDED18;
  *algn_1EE2BC7F8 = MEMORY[0x1E69E5310];
  __cxa_atexit(ImsOutStream::~ImsOutStream, &_MergedGlobals_18, &dword_1E4C3F000);
  word_1EE2BC818 = 0;
  byte_1EE2BC81A = 0;
  qword_1EE2BC808 = &unk_1F5EDED18;
  unk_1EE2BC810 = MEMORY[0x1E69E5300];

  return __cxa_atexit(ImsOutStream::~ImsOutStream, &qword_1EE2BC808, &dword_1E4C3F000);
}

SipHeader *SipAuthenticateHeader::SipAuthenticateHeader(SipHeader *a1, const SipHeader *a2)
{
  SipHeader::SipHeader(a1, a2);
  *v4 = &unk_1F5EDED80;
  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = (*(*v5 + 16))(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

void SipAuthenticateHeader::~SipAuthenticateHeader(SipAuthenticateHeader *this)
{
  *this = &unk_1F5EDED80;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  SipHeader::~SipHeader(this);
}

BOOL SipAuthenticateHeader::encodeValue(SipAuthenticateHeader *this, ImsOutStream *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v4 = (*(*v2 + 32))(*(this + 8));
    (*(*v4 + 48))(v4, a2, 0);
  }

  return v2 != 0;
}

BOOL SipAuthenticateHeader::setValueFromString(uint64_t a1, uint64_t a2)
{
  v3 = SipAuthScheme::createFromString(a2);
  if (v3)
  {
    v3 = (*(*v3 + 64))(v3);
  }

  *(a1 + 64) = v3;
  return v3 != 0;
}

void SipMessageDecoder::~SipMessageDecoder(SipMessageDecoder *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t SipMessageDecoder::clearAndReturn@<X0>(SipMessageDecoder *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "sip.decode");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Resetting decoder state", 23);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v6 = *(this + 4);
  v5 = (this + 24);
  *a2 = *(this + 3);
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(this + 4);
    *v5 = 0;
    *(this + 4) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    *v5 = 0;
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  result = *(this + 7);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 7) = 0;
  *(this + 12) = 0;
  return result;
}

void sub_1E4F3F82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void SipMessageDecoder::decode(std::string *this@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  if (!v6)
  {
    if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!this->__r_.__value_.__l.__size_)
      {
        goto LABEL_239;
      }
    }

    else if (!*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_239;
    }
  }

  if (!this[2].__r_.__value_.__r.__words[2])
  {
    std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
    v162[0] = 0;
    v165 = 0;
    v60 = ims::error(v166, v162);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "No message encoding specified.", 30);
    *(v60 + 17) = 0;
    (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v60 + 17) = 0;
    if (v165 != 1 || (v164 & 0x80000000) == 0)
    {
      goto LABEL_314;
    }

    v61 = v163;
LABEL_313:
    operator delete(v61);
    goto LABEL_314;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  std::string::append(this, a2, v6);
  if (this[1].__r_.__value_.__r.__words[0])
  {
    goto LABEL_13;
  }

  v62 = std::string::find(this, 10, 0);
  if (v62 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
    v158[0] = 0;
    v161 = 0;
    v86 = ims::debug(v166, v158);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v86 + 8), "Not enough data in decodeStartLine", 34);
    *(v86 + 17) = 0;
    (*(*v86 + 64))(v86, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v86 + 17) = 0;
    if (v161 != 1 || (v160 & 0x80000000) == 0)
    {
      goto LABEL_237;
    }

    v83 = v159;
    goto LABEL_236;
  }

  v63 = v62;
  memset(&v191, 0, sizeof(v191));
  std::string::basic_string(&v191, this, 0, v62, v166);
  std::string::basic_string(v166, this, v63 + 1, 0xFFFFFFFFFFFFFFFFLL, &v211);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(this->__r_.__value_.__l.__data_);
  }

  *&this->__r_.__value_.__l.__data_ = *v166;
  this->__r_.__value_.__r.__words[2] = *&v166[16];
  ims::chomp(&v191, "\r\n\t ", 3);
  size = HIBYTE(v191.__r_.__value_.__r.__words[2]);
  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v191.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(&v205, 0, sizeof(v205));
    v166[23] = 1;
    strcpy(v166, " ");
    v65 = ims::nextToken(&v191, 0, &v205, v166);
    if (v65 == -1)
    {
      v102 = std::string::basic_string[abi:ne200100]<0>(&v211, "sip.decode");
      v166[0] = 0;
      LOBYTE(v168) = 0;
      v103 = ims::error(v102, v166);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v103 + 8), "SipMessageDecoder: no tokens in start line", 42);
      *(v103 + 17) = 0;
      (*(*v103 + 64))(v103, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v103 + 17) = 0;
      if (v168 == 1 && SBYTE7(v167) < 0)
      {
        operator delete(*&v166[16]);
      }

      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
      }

      v104 = 0uLL;
      goto LABEL_301;
    }

    if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v205.__r_.__value_.__l.__size_ != 7)
      {
        goto LABEL_252;
      }

      v66 = v205.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) != 7)
      {
        goto LABEL_252;
      }

      v66 = &v205;
    }

    data = v66->__r_.__value_.__l.__data_;
    v108 = *(v66->__r_.__value_.__r.__words + 3);
    if (data == 793790803 && v108 == 808333871)
    {
      memset(&v211, 0, sizeof(v211));
      v166[23] = 1;
      strcpy(v166, " ");
      v115 = ims::nextToken(&v191, v65, &v211, v166);
      if (v115 != -1)
      {
        if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v116 = &v211;
        }

        else
        {
          v116 = v211.__r_.__value_.__r.__words[0];
        }

        strtoul(v116, 0, 10);
        memset(v166, 0, 24);
        std::string::basic_string(v166, &v191, v115, 0xFFFFFFFFFFFFFFFFLL, &v201);
        v117 = this[2].__r_.__value_.__r.__words[2];
        SipResponse::create(&v201);
      }

      std::string::basic_string[abi:ne200100]<0>(&v201, "sip.decode");
      v166[0] = 0;
      LOBYTE(v168) = 0;
      v119 = ims::error(&v201, v166);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), "SipMessageDecoder: no status code in response: ", 47);
      *(v119 + 17) = 0;
      (*(*v119 + 32))(v119, &v191);
      (*(*v119 + 64))(v119, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v119 + 17) = 0;
      if (v168 == 1 && SBYTE7(v167) < 0)
      {
        operator delete(*&v166[16]);
      }

      if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v201.__r_.__value_.__l.__data_);
      }

      v104 = 0uLL;
      if ((SHIBYTE(v211.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_301;
      }

      v120 = v211.__r_.__value_.__r.__words[0];
      goto LABEL_300;
    }

LABEL_252:
    memset(&v201, 0, sizeof(v201));
    v166[23] = 1;
    strcpy(v166, " ");
    v110 = ims::nextToken(&v191, v65, &v201, v166);
    if (v110 == -1)
    {
      v112 = std::string::basic_string[abi:ne200100]<0>(&v211, "sip.decode");
      v166[0] = 0;
      LOBYTE(v168) = 0;
      v113 = ims::error(v112, v166);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v113 + 8), "SipMessageDecoder: no Request-URI in start line: ", 49);
      *(v113 + 17) = 0;
      (*(*v113 + 32))(v113, &v191);
      (*(*v113 + 64))(v113, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v113 + 17) = 0;
      if (v168 == 1 && SBYTE7(v167) < 0)
      {
        operator delete(*&v166[16]);
      }

      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
      }

      v104 = 0uLL;
      goto LABEL_298;
    }

    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v167 = 0u;
    memset(v166, 0, sizeof(v166));
    SipUri::SipUri(v166);
    if ((SipUri::fromString(v166, &v201) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v198, "sip.decode");
      v211.__r_.__value_.__s.__data_[0] = 0;
      v213 = 0;
      v114 = ims::error(&v198, &v211);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v114 + 8), "SipMessageDecoder: invalid Request-URI in start line: ", 54);
      *(v114 + 17) = 0;
      (*(*v114 + 32))(v114, &v191);
      (*(*v114 + 64))(v114, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v114 + 17) = 0;
      if (v213 == 1 && v212 < 0)
      {
        operator delete(v211.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v198.__r_.__value_.__l.__data_);
      }

      v127 = 0u;
      goto LABEL_297;
    }

    memset(&v198, 0, sizeof(v198));
    *(&v211.__r_.__value_.__s + 23) = 1;
    LOWORD(v211.__r_.__value_.__l.__data_) = 32;
    if (ims::nextToken(&v191, v110, &v198, &v211) == -1)
    {
      std::string::basic_string[abi:ne200100]<0>(v194, "sip.decode");
      v211.__r_.__value_.__s.__data_[0] = 0;
      v213 = 0;
      v118 = ims::error(v194, &v211);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v118 + 8), "SipMessageDecoder: no version in start line: ", 45);
      *(v118 + 17) = 0;
      (*(*v118 + 32))(v118, &v191);
      (*(*v118 + 64))(v118, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      goto LABEL_290;
    }

    if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v198.__r_.__value_.__l.__size_ == 7)
      {
        v111 = v198.__r_.__value_.__r.__words[0];
LABEL_285:
        v121 = v111->__r_.__value_.__l.__data_;
        v122 = *(v111->__r_.__value_.__r.__words + 3);
        if (v121 == 793790803 && v122 == 808333871)
        {
          *&v211.__r_.__value_.__l.__data_ = 0uLL;
          v194[0] = this[2].__r_.__value_.__r.__words[2];
          std::allocate_shared[abi:ne200100]<SipRequest,std::allocator<SipRequest>,SipRequest::EnforcePrivateConstructor,std::string const&,SipMessageEncodingMap const*&,0>();
        }
      }
    }

    else if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) == 7)
    {
      v111 = &v198;
      goto LABEL_285;
    }

    std::string::basic_string[abi:ne200100]<0>(v194, "sip.decode");
    v211.__r_.__value_.__s.__data_[0] = 0;
    v213 = 0;
    v118 = ims::error(v194, &v211);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v118 + 8), "SipMessageDecoder: invalid SIP version in request start line: ", 62);
    *(v118 + 17) = 0;
    (*(*v118 + 32))(v118, &v191);
    (*(*v118 + 64))(v118, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_290:
    *(v118 + 17) = 0;
    if (v213 == 1 && v212 < 0)
    {
      operator delete(v211.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v195) < 0)
    {
      operator delete(v194[0]);
    }

    v127 = 0u;
    if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v198.__r_.__value_.__l.__data_);
    }

LABEL_297:
    SipUri::~SipUri(v166);
    v104 = v127;
LABEL_298:
    if ((SHIBYTE(v201.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_301:
      if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
      {
        v129 = v104;
        operator delete(v205.__r_.__value_.__l.__data_);
        v104 = v129;
      }

      v124 = this[1].__r_.__value_.__l.__size_;
      *&this[1].__r_.__value_.__l.__data_ = v104;
      if (v124)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        v125 = this[1].__r_.__value_.__l.__data_;
      }

      else
      {
        v125 = v104;
      }

      v91 = v125 == 0;
      goto LABEL_307;
    }

    v120 = v201.__r_.__value_.__r.__words[0];
LABEL_300:
    v128 = v104;
    operator delete(v120);
    v104 = v128;
    goto LABEL_301;
  }

  std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
  __str.__r_.__value_.__s.__data_[0] = 0;
  v210 = 0;
  v90 = ims::error(v166, &__str);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v90 + 8), "start line empty", 16);
  *(v90 + 17) = 0;
  (*(*v90 + 64))(v90, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v90 + 17) = 0;
  if (v210 == 1 && v209 < 0)
  {
    operator delete(__str.__r_.__value_.__r.__words[2]);
  }

  if ((v166[23] & 0x80000000) != 0)
  {
    operator delete(*v166);
  }

  v91 = 1;
LABEL_307:
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__r_.__value_.__l.__data_);
  }

  if (v91)
  {
    std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
    v154[0] = 0;
    v157 = 0;
    v126 = ims::error(v166, v154);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v126 + 8), "decode failure on start line", 28);
    *(v126 + 17) = 0;
    (*(*v126 + 64))(v126, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v126 + 17) = 0;
    if (v157 != 1 || (v156 & 0x80000000) == 0)
    {
      goto LABEL_314;
    }

    v61 = v155;
    goto LABEL_313;
  }

LABEL_13:
  if (this[1].__r_.__value_.__r.__words[2])
  {
    goto LABEL_14;
  }

  v67 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v67 < 0)
  {
    v68 = this->__r_.__value_.__r.__words[0];
    v67 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v68 = this;
  }

  if (v67 < 4)
  {
    goto LABEL_233;
  }

  v87 = v68 + v67;
  v88 = v68;
  while (1)
  {
    v89 = memchr(v88, 13, v67 - 3);
    if (!v89)
    {
      goto LABEL_233;
    }

    if (*v89 == 168626701)
    {
      break;
    }

    v88 = (v89 + 1);
    v67 = v87 - v88;
    if (v87 - v88 < 4)
    {
      goto LABEL_233;
    }
  }

  if (v89 == v87 || v89 - v68 == -1)
  {
LABEL_233:
    std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
    v150[0] = 0;
    v153 = 0;
    v105 = ims::debug(v166, v150);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v105 + 8), "still waiting for headers", 25);
    *(v105 + 17) = 0;
    (*(*v105 + 64))(v105, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v105 + 17) = 0;
    if (v153 != 1 || (v152 & 0x80000000) == 0)
    {
      goto LABEL_237;
    }

    v83 = v151;
LABEL_236:
    operator delete(v83);
LABEL_237:
    if ((v166[23] & 0x80000000) != 0)
    {
      operator delete(*v166);
    }

LABEL_239:
    *a3 = 0;
    *(a3 + 8) = 0;
LABEL_240:
    *(a3 + 16) = 1;
    return;
  }

LABEL_14:
  while (!this[1].__r_.__value_.__r.__words[2])
  {
    v7 = 0;
    memset(&__str, 0, sizeof(__str));
    memset(&v211, 0, sizeof(v211));
LABEL_16:
    v211.__r_.__value_.__s.__data_[0] = 0;
    *(&v211.__r_.__value_.__s + 23) = 0;
    while (1)
    {
      v8 = std::string::find(this, 10, v7);
      if (v8 == -1)
      {
LABEL_46:
        v21 = 1;
        goto LABEL_50;
      }

      v9 = v8;
      std::string::basic_string(v166, this, v7, v8 - v7, &v205);
      if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v211.__r_.__value_.__l.__data_);
      }

      v211 = *v166;
      ims::chomp(&v211, "\r\n\t ", 3);
      v7 = v9 + 1;
      v10 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
      v11 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
      v12 = v211.__r_.__value_.__l.__size_;
      if (!((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v211.__r_.__value_.__r.__words[2]) : v211.__r_.__value_.__l.__size_))
      {
        break;
      }

      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = __str.__r_.__value_.__l.__size_;
      }

      if (v14)
      {
        std::string::push_back(&__str, 32);
        v10 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
        v12 = v211.__r_.__value_.__l.__size_;
        v11 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
      }

      if (v11 >= 0)
      {
        v15 = &v211;
      }

      else
      {
        v15 = v211.__r_.__value_.__r.__words[0];
      }

      if (v11 >= 0)
      {
        v16 = v10;
      }

      else
      {
        v16 = v12;
      }

      std::string::append(&__str, v15, v16);
      v17 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (v17 < 0)
      {
        v18 = this->__r_.__value_.__l.__size_;
      }

      else
      {
        v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      }

      if (v7 >= v18)
      {
        goto LABEL_46;
      }

      v19 = this;
      if ((v17 & 0x80000000) != 0)
      {
        v19 = this->__r_.__value_.__r.__words[0];
      }

      if (v19->__r_.__value_.__s.__data_[v7] != 32)
      {
        v20 = this;
        if ((v17 & 0x80000000) != 0)
        {
          v20 = this->__r_.__value_.__r.__words[0];
        }

        if (v20->__r_.__value_.__s.__data_[v7] != 9)
        {
          break;
        }
      }

      if ((*(&v211.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_16;
      }

      *v211.__r_.__value_.__l.__data_ = 0;
      v211.__r_.__value_.__l.__size_ = 0;
    }

    std::string::basic_string(v166, this, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v205);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    v21 = 0;
    *&this->__r_.__value_.__l.__data_ = *v166;
    this->__r_.__value_.__r.__words[2] = *&v166[16];
LABEL_50:
    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v211.__r_.__value_.__l.__data_);
      if ((v21 & 1) == 0)
      {
LABEL_54:
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __str.__r_.__value_.__l.__size_;
        }

        if (v23)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v25 = memchr(p_str, 58, v23);
          v26 = v25 - p_str;
          if (v25)
          {
            v27 = v26 == -1;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            goto LABEL_103;
          }

          if (v23 <= v26 + 1)
          {
            v28 = v26 + 1;
          }

          else
          {
            v28 = v23;
          }

          v29 = &p_str->__r_.__value_.__s.__data_[1];
          v30 = v25 - p_str;
          while (1)
          {
            v31 = v30 + 1;
            if (v30 + 1 >= v23)
            {
              break;
            }

            v32 = v29[v30++];
            if (v32 != 32)
            {
              goto LABEL_76;
            }
          }

          v31 = v28;
LABEL_76:
          v36 = this[2].__r_.__value_.__r.__words[2];
          std::string::basic_string(v166, &__str, 0, v26, &v211);
          std::string::basic_string(&v211, &__str, v31, 0xFFFFFFFFFFFFFFFFLL, &v205);
          Header = SipMessageEncodingMap::createHeader(v36, v166, &v211);
          if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v211.__r_.__value_.__l.__data_);
          }

          if ((v166[23] & 0x80000000) != 0)
          {
            operator delete(*v166);
            if (!Header)
            {
LABEL_103:
              v22 = 2;
              goto LABEL_112;
            }
          }

          else if (!Header)
          {
            goto LABEL_103;
          }

          v41 = (Header + 8);
          v42 = *(Header + 31);
          v43 = v42;
          if (v42 < 0)
          {
            v42 = *(Header + 2);
          }

          if (v42 == 12)
          {
            if (v43 < 0)
            {
              v41 = *v41;
            }

            v50 = *v41;
            v51 = *(v41 + 2);
            if (v50 != *"Content-Type" || v51 != *"Type")
            {
LABEL_110:
              SipMessage::addHeader(this[1].__r_.__value_.__l.__data_, Header, 0);
              goto LABEL_111;
            }

            v53 = *Header;
            v54 = **Header;
            if (v55)
            {
              this[2].__r_.__value_.__l.__size_ = v55;
              goto LABEL_111;
            }

            v53[1](Header);
            v58 = std::string::basic_string[abi:ne200100]<0>(&v211, "sip.decode");
            v166[0] = 0;
            LOBYTE(v168) = 0;
            v59 = ims::error(v58, v166);
            v205.__r_.__value_.__r.__words[0] = "Content-Type header isn't a parameter string";
            v57 = ImsOutStream::putStreamable<char const*&>(v59, &v205.__r_.__value_.__l.__data_);
            (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            if (v42 != 14)
            {
              goto LABEL_110;
            }

            if (v43 < 0)
            {
              v41 = *v41;
            }

            v44 = *v41;
            v45 = *(v41 + 6);
            if (v44 != *"Content-Length" || v45 != *"t-Length")
            {
              goto LABEL_110;
            }

            v47 = *Header;
            v48 = **Header;
            if (v49)
            {
              LODWORD(this[2].__r_.__value_.__l.__data_) = v49[15];
              v47[1](Header);
LABEL_111:
              v22 = 1;
              goto LABEL_112;
            }

            v47[1](Header);
            v56 = std::string::basic_string[abi:ne200100]<0>(&v211, "sip.decode");
            v166[0] = 0;
            LOBYTE(v168) = 0;
            v57 = ims::error(v56, v166);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "Content-Length header isn't a uint32", 36);
            *(v57 + 17) = 0;
            (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          *(v57 + 17) = 0;
        }

        else
        {
          v33 = this[2].__r_.__value_.__l.__size_;
          v34 = this[2].__r_.__value_.__r.__words[2];
          if (v33)
          {
            Body = SipMessageEncodingMap::createBody(this[2].__r_.__value_.__r.__words[2], v33);
            this[1].__r_.__value_.__r.__words[2] = Body;
            if (Body)
            {
              goto LABEL_111;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v166, "");
            v38 = SipMessageEncodingMap::createBody(v34, v166);
            this[1].__r_.__value_.__r.__words[2] = v38;
            if ((v166[23] & 0x80000000) != 0)
            {
              operator delete(*v166);
              if (this[1].__r_.__value_.__r.__words[2])
              {
                goto LABEL_111;
              }
            }

            else if (v38)
            {
              goto LABEL_111;
            }
          }

          v39 = std::string::basic_string[abi:ne200100]<0>(&v211, "sip.decode");
          v166[0] = 0;
          LOBYTE(v168) = 0;
          v40 = ims::error(v39, v166);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "Couldn't create message body of type: ", 38);
          *(v40 + 17) = 0;
          (*(*v40 + 32))(v40, this[2].__r_.__value_.__l.__size_ + 104);
          (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v40 + 17) = 0;
        }

        if (v168 == 1 && SBYTE7(v167) < 0)
        {
          operator delete(*&v166[16]);
        }

        if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v211.__r_.__value_.__l.__data_);
        }

        goto LABEL_103;
      }
    }

    else if ((v21 & 1) == 0)
    {
      goto LABEL_54;
    }

    v22 = 0;
LABEL_112:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v22 == 2)
    {
      SipMessageDecoder::clearAndReturn(this, &v144);
      if (v145)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v145);
      }

      std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
      v140[0] = 0;
      v143 = 0;
      v84 = ims::error(v166, v140);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v84 + 8), "decode failure on headers", 25);
      *(v84 + 17) = 0;
      (*(*v84 + 64))(v84, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v84 + 17) = 0;
      if (v143 == 1 && v142 < 0)
      {
        v61 = v141;
        goto LABEL_313;
      }

      goto LABEL_314;
    }

    if (!v22)
    {
      std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
      v146[0] = 0;
      v149 = 0;
      v85 = ims::debug(v166, v146);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v85 + 8), "not enough data in decodeHeader", 31);
      *(v85 + 17) = 0;
      (*(*v85 + 64))(v85, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v85 + 17) = 0;
      if (v149 == 1 && v148 < 0)
      {
        v83 = v147;
        goto LABEL_236;
      }

      goto LABEL_237;
    }
  }

  v69 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v69 & 0x8000000000000000) != 0)
  {
    v69 = this->__r_.__value_.__l.__size_;
  }

  data_low = LODWORD(this[2].__r_.__value_.__l.__data_);
  if (v69 < data_low)
  {
    v71 = std::string::basic_string[abi:ne200100]<0>(&v214, "sip.decode");
    v166[0] = 0;
    LOBYTE(v168) = 0;
    v72 = ims::debug(v71, v166);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "Still waiting for ", 18);
    *(v72 + 17) = 0;
    v73 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v73 & 0x8000000000000000) != 0)
    {
      v73 = this->__r_.__value_.__l.__size_;
    }

    MEMORY[0x1E6923370](*(v72 + 8), LODWORD(this[2].__r_.__value_.__l.__data_) - v73);
    *(v72 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), " body bytes", 11);
    *(v72 + 17) = 0;
    (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v72 + 17) = 0;
    if (v168 == 1 && SBYTE7(v167) < 0)
    {
      operator delete(*&v166[16]);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (this[1].__r_.__value_.__r.__words[0])
    {
      v74 = std::string::basic_string[abi:ne200100]<0>(&v214, "sip.decode");
      v211.__r_.__value_.__s.__data_[0] = 0;
      v213 = 0;
      v75 = ims::spam(v74, &v211);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v75 + 8), "Message so far:", 15);
      *(v75 + 17) = 0;
      (*(*v75 + 64))(v75, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v75 + 17) = 0;
      if (v213 == 1 && v212 < 0)
      {
        operator delete(v211.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v214.__r_.__value_.__l.__data_);
      }

      v76 = this[1].__r_.__value_.__l.__data_;
      v77 = std::string::basic_string[abi:ne200100]<0>(&v214, "sip.decode");
      __str.__r_.__value_.__s.__data_[0] = 0;
      v210 = 0;
      v78 = ims::spam(v77, &__str);
      (*(*v76 + 104))(v76, v78);
      if (v210 == 1 && v209 < 0)
      {
        operator delete(__str.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v214.__r_.__value_.__l.__data_);
      }
    }

    v79 = std::string::basic_string[abi:ne200100]<0>(&v214, "sip.decode");
    v205.__r_.__value_.__s.__data_[0] = 0;
    v207 = 0;
    v80 = ims::spam(v79, &v205);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v80 + 8), "Current buf (", 13);
    *(v80 + 17) = 0;
    v81 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v81 & 0x8000000000000000) != 0)
    {
      v81 = this->__r_.__value_.__l.__size_;
    }

    MEMORY[0x1E6923370](*(v80 + 8), v81);
    *(v80 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v80 + 8), " bytes): '", 10);
    *(v80 + 17) = 0;
    (*(*v80 + 32))(v80, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v80 + 8), "'", 1);
    *(v80 + 17) = 0;
    (*(*v80 + 64))(v80, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v80 + 17) = 0;
    if (v207 == 1 && v206 < 0)
    {
      operator delete(v205.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
    v136[0] = 0;
    v139 = 0;
    v82 = ims::debug(v166, v136);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v82 + 8), "Not enough data in decodeBody", 29);
    *(v82 + 17) = 0;
    (*(*v82 + 64))(v82, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v82 + 17) = 0;
    if (v139 == 1 && v138 < 0)
    {
      v83 = v137;
      goto LABEL_236;
    }

    goto LABEL_237;
  }

  memset(&v214, 0, sizeof(v214));
  std::string::basic_string(&v214, this, 0, data_low, &v204);
  std::string::basic_string(&v204, this, LODWORD(this[2].__r_.__value_.__l.__data_), 0xFFFFFFFFFFFFFFFFLL, v215);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(this->__r_.__value_.__l.__data_);
  }

  *this = v204;
  v92 = (*(*this[1].__r_.__value_.__r.__words[2] + 88))(this[1].__r_.__value_.__r.__words[2], &v214, this[2].__r_.__value_.__r.__words[2]);
  if ((v92 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v204, "sip.decode");
    v201.__r_.__value_.__s.__data_[0] = 0;
    v203 = 0;
    v93 = ims::error(&v204, &v201);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v93 + 8), "failed to decode body of type ", 30);
    *(v93 + 17) = 0;
    v94 = (*(*this[1].__r_.__value_.__r.__words[2] + 40))(this[1].__r_.__value_.__r.__words[2]);
    (*(*v93 + 32))(v93, v94);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v93 + 8), ":", 1);
    *(v93 + 17) = 0;
    (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v93 + 17) = 0;
    if (v203 == 1 && v202 < 0)
    {
      operator delete(v201.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "sip.decode");
    v198.__r_.__value_.__s.__data_[0] = 0;
    v200 = 0;
    v95 = ims::error(&v204, &v198);
    (*(*v95 + 32))(v95, &v214);
    (*(*v95 + 64))(v95, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v95[17] = 0;
    if (v200 == 1 && v199 < 0)
    {
      operator delete(v198.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "sip.decode");
    LOBYTE(v194[0]) = 0;
    v197 = 0;
    v96 = ims::error(&v204, v194);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v96 + 8), "Message so far:", 15);
    *(v96 + 17) = 0;
    (*(*v96 + 64))(v96, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v96 + 17) = 0;
    if (v197 == 1 && v196 < 0)
    {
      operator delete(v195);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    v97 = this[1].__r_.__value_.__l.__data_;
    std::string::basic_string[abi:ne200100]<0>(&v204, "sip.decode");
    v191.__r_.__value_.__s.__data_[0] = 0;
    v193 = 0;
    v98 = ims::error(&v204, &v191);
    (*(*v97 + 104))(v97, v98);
    if (v193 == 1 && v192 < 0)
    {
      operator delete(v191.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  if (v92)
  {
    v99 = this[1].__r_.__value_.__l.__data_;
    v100 = this[1].__r_.__value_.__r.__words[2];
    v101 = *(v99 + 14);
    if (v101 != v100)
    {
      if (v101)
      {
        (*(*v101 + 8))(v101);
      }

      *(v99 + 14) = v100;
    }

    SipMessageDecoder::clearAndReturn(this, v166);
    *a3 = *v166;
    goto LABEL_240;
  }

  SipMessageDecoder::clearAndReturn(this, &v134);
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v135);
  }

  std::string::basic_string[abi:ne200100]<0>(v166, "sip.decode");
  v130[0] = 0;
  v133 = 0;
  v106 = ims::error(v166, v130);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v106 + 8), "decode failure on body", 22);
  *(v106 + 17) = 0;
  (*(*v106 + 64))(v106, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v106 + 17) = 0;
  if (v133 == 1 && v132 < 0)
  {
    v61 = v131;
    goto LABEL_313;
  }

LABEL_314:
  if ((v166[23] & 0x80000000) != 0)
  {
    operator delete(*v166);
  }

  *a3 = 0;
  *(a3 + 16) = 0;
}