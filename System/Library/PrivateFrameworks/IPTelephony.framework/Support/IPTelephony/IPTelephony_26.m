void sub_1E4E09C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (*(v16 - 201) < 0)
  {
    operator delete(*(v16 - 224));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void SipSession::sendLazuliInvite(uint64_t a1@<X0>, uint64_t a2@<X1>, ImsResult *a3@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1200);
  if (!v5)
  {
    v8 = 0;
LABEL_20:
    memset(&v62[8], 0, 64);
    *&v61 = &unk_1F5EBDEF8;
    *(&v61 + 1) = &_bambiDomain;
    *v62 = 1073741826;
    v19 = ImsResult::operator<<<char [46]>(&v61, "can't send an INVITE without a lazuli session");
    v20 = ImsLogContainer::logResult(a1, v19);
    ImsResult::ImsResult(a3, v20);
    goto LABEL_21;
  }

  v7 = std::__shared_weak_count::lock(v5);
  v8 = v7;
  if (!v7 || !*(a1 + 1192))
  {
    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    memset(&v62[8], 0, 64);
    *&v61 = &unk_1F5EBDEF8;
    *(&v61 + 1) = &_bambiDomain;
    *v62 = 1073741825;
    v22 = ImsResult::operator<<<char [29]>(&v61, "sendInvite: empty inviteType");
    v23 = ImsLogContainer::logResult(a1, v22);
    ImsResult::ImsResult(a3, v23);
    ImsResult::~ImsResult(&v61);
    goto LABEL_23;
  }

  v10 = *(a1 + 240);
  v11 = *(v10 + 232);
  if (v11)
  {
    v8 = std::__shared_weak_count::lock(v11);
    if (v8)
    {
      v12 = *(v10 + 224);
      if (v12)
      {
        v14 = *(v12 + 248);
        v13 = *(v12 + 256);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v14)
        {
          memset(&v62[8], 0, 64);
          *&v61 = &unk_1F5EBDEF8;
          *(&v61 + 1) = &_bambiDomain;
          *v62 = 1073741826;
          v25 = ImsResult::operator<<<char [14]>(&v61, "no user agent");
          ImsResult::ImsResult(a3, v25);
          ImsResult::~ImsResult(&v61);
LABEL_99:
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_22;
        }

        v59 = 0;
        v60 = 0;
        SipDialog::createRequestInDialog(*(a1 + 240), 0, &v59);
        v15 = *(a1 + 1231);
        if (v15 < 0)
        {
          v15 = *(a1 + 1216);
        }

        if (v15)
        {
          v16 = SipMessage::header<SipSubjectHeader>(v59, 1);
          std::string::operator=((v16 + 8), (a1 + 1208));
        }

        v17 = *(a1 + 240);
        if (*(v17 + 2647) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, *(v17 + 2624), *(v17 + 2632));
        }

        else
        {
          v18 = (v17 + 2624);
          v61 = *v18;
          *v62 = *(v18 + 2);
        }

        if ((v62[7] & 0x80000000) != 0)
        {
          v26 = *(&v61 + 1);
          operator delete(v61);
          if (!v26)
          {
            goto LABEL_38;
          }
        }

        else if (!v62[7])
        {
          goto LABEL_38;
        }

        v27 = v59;
        v28 = *(a1 + 240);
        if (*(v28 + 2647) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, *(v28 + 2624), *(v28 + 2632));
        }

        else
        {
          v29 = (v28 + 2624);
          v61 = *v29;
          *v62 = *(v29 + 2);
        }

        SipMessage::addHeader(v27, "MLS-Opaque-Token", &v61, 0);
        if ((v62[7] & 0x80000000) != 0)
        {
          operator delete(v61);
        }

LABEL_38:
        v30 = *(a2 + 23);
        v31 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(a2 + 8);
        }

        if (v30 != 11 || (v31 >= 0 ? (v32 = a2) : (v32 = *a2), (v33 = *v32, v34 = *(v32 + 3), v33 == 0x766E497974706D45) ? (v35 = v34 == 0x657469766E497974) : (v35 = 0), !v35))
        {
          memset(&v58, 0, sizeof(v58));
          SipSessionInterface::stack(a1, &v61);
          v36 = SipStack::prefs(v61);
          if (ImsPrefs::CarrierBased(v36))
          {
            v37 = *(a1 + 1399);
            if (v37 < 0)
            {
              v37 = *(a1 + 1384);
            }

            if (*(&v61 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v61 + 1));
            }

            if (v37)
            {
              std::string::operator=(&v58, (a1 + 1376));
              std::string::append(&v58, "Content-Type: text/plain;charset=UTF-8\n", 0x27uLL);
              std::string::append(&v58, "Content-Length: 0\n", 0x12uLL);
            }
          }

          else if (*(&v61 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v61 + 1));
          }

          memset(v62, 0, sizeof(v62));
          v61 = 0u;
          v38 = v60;
          v57[0] = v59;
          v57[1] = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::addBodyToInvite(&v61, a1, v57, a2);
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          if ((*(**(&v61 + 1) + 24))(*(&v61 + 1), *v62))
          {
            v39 = ImsLogContainer::logResult(a1, &v61);
            ImsResult::ImsResult(a3, v39);
            ImsResult::~ImsResult(&v61);
            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

LABEL_97:
            if (v60)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v60);
            }

            goto LABEL_99;
          }

          ImsResult::~ImsResult(&v61);
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }
        }

        memset(v62, 0, sizeof(v62));
        v61 = 0u;
        v40 = v60;
        v56[0] = v59;
        v56[1] = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::sendInvite(&v61, a1, v56, a2);
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        v41.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        *(a1 + 1456) = v41;
        IPTelephonyManager::getBambiClient(&v54, v41.__d_.__rep_);
        *&v58.__r_.__value_.__l.__data_ = 0uLL;
        v42 = BambiClient::callCountExcludingCall(v54, &v58);
        v43 = SipUserAgent::config(v14);
        v44 = 24;
        if (v42 > 1)
        {
          v44 = 28;
        }

        v45 = *(v43 + v44);
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v58, (a1 + 152));
        size = v58.__r_.__value_.__l.__size_;
        if (v58.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v58.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (v45)
        {
          v47 = *(a2 + 23);
          v48 = v47;
          if ((v47 & 0x80u) != 0)
          {
            v47 = *(a2 + 8);
          }

          if (v47 == 10)
          {
            v49 = v48 >= 0 ? a2 : *a2;
            v50 = *v49;
            v51 = *(v49 + 8);
            if (v50 == 0x69766E49646C6F48 && v51 == 25972)
            {
              if (size)
              {
                atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v64 = 0;
              operator new();
            }
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ResumeInvite"))
          {
            if (size)
            {
              atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v63 = 0;
            operator new();
          }
        }

        v53 = ImsLogContainer::logResult(a1, &v61);
        ImsResult::ImsResult(a3, v53);
        if (size)
        {
          std::__shared_weak_count::__release_weak(size);
          std::__shared_weak_count::__release_weak(size);
        }

        ImsResult::~ImsResult(&v61);
        goto LABEL_97;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  memset(&v62[8], 0, 64);
  *&v61 = &unk_1F5EBDEF8;
  *(&v61 + 1) = &_bambiDomain;
  *v62 = 1073741826;
  v24 = ImsResult::operator<<<char [12]>(&v61, "no sipstack");
  ImsResult::ImsResult(a3, v24);
LABEL_21:
  ImsResult::~ImsResult(&v61);
  if (v8)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E4E0A610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v32 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  ImsResult::~ImsResult(&__p);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void SipSession::startLocalQosTimerMO(SipSession *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 30);
  if (*(v2 + 2960) != 1)
  {
    v4 = 0;
LABEL_8:
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No fork for MO call to set QoS!", 31);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_9;
  }

  v3 = *(v2 + 2944);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if ((*(*this + 304))(this, v5 + 264))
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "local QoS is already established. Don't need to start QoS timer.", 64);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_9:
    *(v6 + 17) = 0;
    goto LABEL_10;
  }

  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "local QoS is already active", 27);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_9;
  }

  v8 = *(this + 30);
  v9 = *(v8 + 232);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = *(v8 + 224);
      if (v11)
      {
        v12 = *(v11 + 248);
        v13 = *(v11 + 256);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          v14 = *(SipUserAgent::config(v12) + 16);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 19);
          v15 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          if (v14 && SipPreconditions::preconditionsEnabled(*(this + 192), (v5 + 264)))
          {
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v23 = 0;
            operator new();
          }

          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
            std::__shared_weak_count::__release_weak(v15);
          }
        }

        else
        {
          v17 = *(this + 23);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 18) + 16))(&__p, this + 144);
            v19 = v22 >= 0 ? &__p : __p;
            *buf = 141558275;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v19;
            _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v22 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

LABEL_37:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *(this + 23);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 18) + 16))(&__p, this + 144);
    v18 = v22 >= 0 ? &__p : __p;
    *buf = 141558275;
    v25 = 1752392040;
    v26 = 2081;
    v27 = v18;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p);
    }
  }

  if (v10)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4E0AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [45]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [65]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL SipOfferAnswer::remoteAnswerPending(SipOfferAnswer *this)
{
  v1 = *(this + 27);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = SipOfferAnswerExchange::remoteAnswerPending(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    return v4;
  }

  else
  {

    return SipOfferAnswerExchange::remoteAnswerPending(v2);
  }
}

uint64_t ImsResult::operator<<<char [52]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

BOOL SipOfferAnswer::localAnswerPending(SipOfferAnswer *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = SipOfferAnswerExchange::localAnswerPending(this);
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
    return v4;
  }

  else
  {

    return SipOfferAnswerExchange::localAnswerPending(this);
  }
}

const void **SipMessage::header<SipPEarlyMediaHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "P-Early-Media", 1);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void ctu::SharedSynchronizable<SipSessionInterface>::execute(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5ED2980;
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

void ___ZN10SipSession10sendInviteENSt3__110shared_ptrI10SipRequestEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Faking local QoS notification for MO Call", 41);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v3, &__p, 1);
  SipSession::handleQualityOfServiceEstablished(v1, 0xFFFFFFFFLL, 1, &__p, 1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E4E0B290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleQualityOfServiceEstablished(int8x8_t *a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  a1[198].i8[0] = a3;
  v10 = a1[192];
  v11 = *(*&v10 + 96);
  v12 = *(*&v10 + 112);
  if (v11)
  {
    v13 = v12 == 5;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 == 5;
    }

    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a3)
    {
      SipSession::handleLocalQoSEstablished(a1);
    }

    else
    {
      SipSession::handleRemoteQoSEstablished(a1, a2, 0, a4, a5);
    }

    v15 = a1[30];
    v16 = &__block_literal_global_2;
    goto LABEL_17;
  }

  if (SipPreconditions::preconditionsActiveInAnyFork(*&v10))
  {
    goto LABEL_10;
  }

LABEL_13:
  SipSession::updateBearerForPorts(a1, a2, a3, a4, a5);
  if (!SipSession::requireQosBeforeRinging(a1))
  {
    goto LABEL_18;
  }

  v15 = a1[30];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZN10SipSession33handleQualityOfServiceEstablishedEjbRKNSt3__16vectorItNS0_9allocatorItEEEEb_block_invoke_2;
  v17[3] = &__block_descriptor_tmp_371;
  v17[4] = a1;
  v16 = v17;
LABEL_17:
  SipDialog::performBlockOnForks(v15, v16);
LABEL_18:
  if (a3)
  {
    a1[193].i32[0] = a2;
    if (&a1[194] != a4)
    {
      std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&a1[194], *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 1);
    }

    a1[197].i8[0] = 1;
    a1[193].i32[1] = 2;
  }
}

uint64_t SipTypedStateMachine<SipSessionState>::currentState@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void SipSession::sendRingingNotification(int8x8_t *this@<X0>, ImsResult *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  if (SipSession::confirmed(this))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = &unk_1F5EBDEF8;
    v27 = &_bambiDomain;
    v28 = 1073741826;
    v4 = ImsResult::operator<<<char [53]>(&v26, "sendRingingNotification called on a confirmed dialog");
    v5 = ImsLogContainer::logResult(this, v4);
    ImsResult::ImsResult(a2, v5);
LABEL_30:
    ImsResult::~ImsResult(&v26);
    goto LABEL_31;
  }

  if (*(*&this[30] + 2816) == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = &unk_1F5EBDEF8;
    v27 = &_bambiDomain;
    v28 = 1073741825;
    v6 = ImsResult::operator<<<char [46]>(&v26, "sendRingingNotification called on a MO dialog");
    v7 = ImsLogContainer::logResult(this, v6);
    ImsResult::ImsResult(a2, v7);
    goto LABEL_30;
  }

  if ((this[187].i8[0] & 1) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = &unk_1F5EBDEF8;
    v27 = &_bambiDomain;
    v28 = 1073741826;
    operator new();
  }

  v24 = 0;
  v25 = 0;
  SipSession::serverInviteTransaction(this, &v24);
  v8 = v24;
  if (v24)
  {
    if ((*(*&this[30] + 2816) & 1) == 0)
    {
      SipTimerContainer::cancelTimer(this + 33, "WaitForRingingTimer");
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, &this[19]);
      v9 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27 + 2, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = this[30];
      v11 = *(*&v10 + 232);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(*&v10 + 224);
          if (v14)
          {
            v16 = *(v14 + 248);
            v15 = *(v14 + 256);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v16 && *SipUserAgent::config(v16) && !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[34], "RingingTimer"))
            {
              v17 = (*(*this + 64))(this);
              (*(*this + 16))(this, v17);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "starting ringing timer", 22);
              *(v17 + 17) = 0;
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v17 + 17) = 0;
              if (v9)
              {
                atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              *&v29 = 0;
              operator new();
            }

            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    v23[0] = 0;
    v23[1] = 0;
    v18 = *(v8 + 272);
    v22 = *(v8 + 264);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(180, v23);
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = &unk_1F5EBDEF8;
  v27 = &_bambiDomain;
  v28 = 1073741826;
  v20 = ImsResult::operator<<<char [54]>(&v26, "sendRingingNotification: no server INVITE transaction");
  v21 = ImsLogContainer::logResult(this, v20);
  ImsResult::ImsResult(a2, v21);
  ImsResult::~ImsResult(&v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4E0BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void SipSession::sendResponseToInviteOrUpdateRequest(ImsResult *a1, SipSession *a2, uint64_t *a3, void *a4)
{
  v8 = *(*a4 + 264);
  v9 = *(*a4 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipMessage::header<SipFromHeader>(v8);
  if (v10)
  {
    v11 = SipUriHeader::tag(v10);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = &ims::kEmptyString;
  if (v9)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_6:
  v12 = *(a2 + 30);
  v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v12 + 2944, v11);
  if (v12 + 2952 == v13)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = *(v13 + 56);
    v14 = *(v13 + 64);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v16 = *(*a4 + 264);
  v17 = *(*a4 + 272);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = (*(*v16 + 120))(v16);
  v19 = *(v18 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 8);
  }

  if (v19 != 6)
  {
    v118 = 0;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = *v18;
  }

  v22 = *v21;
  v23 = *(v21 + 4);
  v24 = v22 == *"INVITE" && v23 == *"TE";
  v25 = v24;
  v118 = v25;
  if (v17)
  {
LABEL_29:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

LABEL_30:
  if (v15)
  {
    v26 = *(*a4 + 264);
    v27 = *(*a4 + 272);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "100rel");
    v28 = SipMessage::supportsOption(v26, __p);
    if (SHIBYTE(v129[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v29 = *(*a3 + 128);
    v30 = (v29 - 200) < 0xFFFFFF9C || v28;
    v31 = (v29 - 200) <= 0x63 || v29 == 183;
    if (!v31 || !v30)
    {
      goto LABEL_82;
    }

    v32 = SipMessage::body<SipSdpBody>(*a3);
    if (v32)
    {
      v33 = v32[1];
      v34 = v32[2];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v33)
      {
        v35 = 0;
LABEL_61:
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v35)
        {
          v40 = (*(*a2 + 64))(a2);
          (*(*a2 + 16))(a2, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "adding SDP ", 11);
          *(v40 + 17) = 0;
          v41 = *(v15 + 768);
          v42 = *(v15 + 776);
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = SipOfferAnswer::localAnswerPending(*(*(v41 + 216) + 16), *(*(v41 + 216) + 24));
          if (v43)
          {
            v44 = "answer";
          }

          else
          {
            v44 = "offer";
          }

          if (v43)
          {
            v45 = 6;
          }

          else
          {
            v45 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), v44, v45);
          *(v40 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), " to ", 4);
          *(v40 + 17) = 0;
          MEMORY[0x1E6923350](*(v40 + 8), *(*a3 + 128));
          *(v40 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), " response", 9);
          *(v40 + 17) = 0;
          (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v40 + 17) = 0;
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          v46 = *a3;
          v47 = a3[1];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = *(a2 + 104);
          v113 = v46;
          v114 = v14;
          if (v48)
          {
            v48 = std::__shared_weak_count::lock(v48);
            if (v48)
            {
              v49 = *(a2 + 103);
            }
          }

          v115 = v48;
          v57 = *(v15 + 768);
          v58 = *(v15 + 776);
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v116 = v47;
          v59 = a1;
          v60 = *(v57 + 216);
          v62 = *(v60 + 16);
          v61 = *(v60 + 24);
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v63 = *(v62 + 40);
          v64 = *(v62 + 48);
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          if (v63)
          {
            v65 = *(v57 + 216);
            v67 = *(v65 + 16);
            v66 = *(v65 + 24);
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = *(v67 + 40);
            v69 = *(v67 + 48);
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            v71 = *v68;
            v70 = v68[1];
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v117 = v70;
            v72 = v59;
            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v69);
            }

            v73 = v71;
          }

          else
          {
            v73 = 0;
            v117 = 0;
            v72 = v59;
          }

          v14 = v114;
          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }

          __p[0] = 0;
          __p[1] = 0;
          if (v73)
          {
            v74 = 0;
          }

          else
          {
            v74 = v118;
          }

          if (*(a2 + 1448) == 1)
          {
            v75 = v117;
            if (v74)
            {
              SipSession::localLazuliTemplateSdp(&v126, a2);
            }

            else
            {
              SipSession::localLazuliSdp(&v126, a2);
            }
          }

          else
          {
            v75 = v117;
            if (v74)
            {
              SipSession::localTemplateSdp(a2, &v126);
            }

            else
            {
              (*(*a2 + 128))(&v126, a2);
            }
          }

          v79 = v126;
          v78 = v127;
          if (v127)
          {
            atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = __p[1];
          __p[0] = v79;
          __p[1] = v78;
          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (__p[0])
          {
            v126 = 0;
            v127 = 0;
            std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> &,0>();
          }

          *(v113 + 128) = 500;
          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }

          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
          }

          if (v115)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v115);
          }

          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          if (v116)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v116);
          }

          memset(&v129[1], 0, 64);
          __p[0] = &unk_1F5EBDEF8;
          __p[1] = &_bambiDomain;
          LODWORD(v129[0]) = 0x40000000;
          v92 = ImsResult::operator<<<char [39]>(__p, "unable to add SDP to outgoing response");
          ImsResult::ImsResult(v72, v92);
          goto LABEL_229;
        }

        v29 = *(*a3 + 128);
LABEL_82:
        v24 = v29 == 180;
        v50 = !v28;
        if (!v24)
        {
          v50 = 1;
        }

        if ((v50 & 1) == 0)
        {
          v51 = *(v15 + 768);
          v52 = *(v15 + 776);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = *(v51 + 216);
          v54 = *(v53 + 16);
          v55 = *(v53 + 24);
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v56 = SipOfferAnswerExchange::empty(v54);
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            if (!v56)
            {
              goto LABEL_160;
            }
          }

          else if (!v56)
          {
            goto LABEL_160;
          }

          __p[0] = 0;
          __p[1] = 0;
          SipSession::localTemplateSdp(a2, &v126);
          if (v126)
          {
            SipSession::localTemplateSdp(a2, __p);
          }

          else
          {
            (*(*a2 + 128))(__p, a2);
          }

          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (__p[0])
          {
            v76 = (*(*a2 + 64))(a2);
            (*(*a2 + 16))(a2, v76);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "adding SDP to RINGING", 21);
            *(v76 + 17) = 0;
            (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v76 + 17) = 0;
            v77 = *a3;
            v134 = __p[0];
            v135 = __p[1];
            if (__p[1])
            {
              atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
            }

            SipMessage::setSdp();
          }

          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }
        }

LABEL_160:
        v81 = SipMessage::body<SipSdpBody>(*a3);
        if (v81)
        {
          v82 = v81[1];
          v83 = v81[2];
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!v82)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
              goto LABEL_191;
            }
          }

          else if (!v82)
          {
            goto LABEL_191;
          }

          v84 = *(*a4 + 264);
          v85 = *(*a4 + 272);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          hasPreconditions = SipMessage::hasPreconditions(v84);
          if (!hasPreconditions && (v118 & 1) != 0)
          {
            v87 = *(*a4 + 264);
            v88 = *(*a4 + 272);
            if (v88)
            {
              atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v89 = SipMessage::body<SipSdpBody>(v87);
            if (v89)
            {
              v91 = v89[1];
              v90 = v89[2];
              if (v90)
              {
                atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v90);
              }
            }

            else
            {
              v91 = 0;
            }

            hasPreconditions = v91 == 0;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v88);
            }
          }

          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            if (!hasPreconditions)
            {
              goto LABEL_191;
            }
          }

          else if (!hasPreconditions)
          {
            goto LABEL_191;
          }

          v93 = *(a2 + 192);
          v94 = *(*a4 + 272);
          v132 = *(*a4 + 264);
          v133 = v94;
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v95 = a3[1];
          v130 = *a3;
          v131 = v95;
          if (v95)
          {
            atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v96 = SipPreconditions::addPreconditionsToOutgoingResponse(v93, v15 + 264, &v132, &v130);
          if (v131)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v131);
          }

          if (v133)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v133);
          }

          if ((v96 & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v126, "InternalError");
            SipSessionInterface::terminationReason(a2);
          }
        }

LABEL_191:
        *__p = 0u;
        memset(v129, 0, sizeof(v129));
        v97 = *(v15 + 768);
        v98 = *(v15 + 776);
        if (v98)
        {
          atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v99 = a3[1];
        v125[0] = *a3;
        v125[1] = v99;
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipOfferAnswer::updateWithOutgoingResponse(v97, v125, *a4 + 312, __p);
        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }

        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        }

        if ((*(*__p[1] + 24))(__p[1], LODWORD(v129[0])))
        {
          SipResponse::setStatusFromImsResult(*a3, __p);
          ImsResult::ImsResult(a1, __p);
        }

        else
        {
          if (v118)
          {
            v100 = *(a2 + 30);
            v101 = *(v100 + 232);
            if (v101)
            {
              v102 = std::__shared_weak_count::lock(v101);
              if (v102)
              {
                v103 = v102;
                v104 = *(v100 + 224);
                if (v104)
                {
                  v105 = *(v104 + 248);
                  v106 = *(v104 + 256);
                  if (v106)
                  {
                    atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v105)
                  {
                    v107 = SipUserAgent::config(v105);
                    if (SipResponseCodeMap::containsResponseCodeForMethod(v107 + 992, "INVITE", *(*a3 + 128), 0))
                    {
                      v108 = a3[1];
                      v124[0] = *a3;
                      v124[1] = v108;
                      if (v108)
                      {
                        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      SipSession::addLocationToMessage(a2, v124);
                      if (v108)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
                      }
                    }
                  }

                  if (v106)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v103);
              }
            }
          }

          v109 = *(a2 + 185);
          v110 = a3[1];
          v123[0] = *a3;
          v123[1] = v110;
          if (v110)
          {
            atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSessionTimer::updateFromOutgoingResponse(v109, v123);
          if (v110)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v110);
          }

          v111 = a3[1];
          v121 = *a3;
          v122 = v111;
          if (v111)
          {
            atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v112 = a4[1];
          v119 = *a4;
          v120 = v112;
          if (v112)
          {
            atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a2 + 240))(a2, &v121, &v119);
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

          if (v122)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v122);
          }
        }

        goto LABEL_229;
      }
    }

    else
    {
      v34 = 0;
    }

    v38 = *(v15 + 768);
    v39 = *(v15 + 776);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = SipOfferAnswer::localSdpPending(*(*(v38 + 216) + 16), *(*(v38 + 216) + 24));
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    goto LABEL_61;
  }

  v36 = (*(*a2 + 56))(a2);
  (*(*a2 + 16))(a2, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "sendResponseToInviteOrUpdateRequest: couldn't find appropriate fork for remote tag ", 83);
  *(v36 + 17) = 0;
  ObfuscatedString::ObfuscatedString(__p, v11);
  (*(*v36 + 56))(v36, __p);
  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v36 + 17) = 0;
  if (SHIBYTE(v129[3]) < 0)
  {
    operator delete(v129[1]);
  }

  if (SHIBYTE(v129[0]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v129[1], 0, 64);
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_bambiDomain;
  LODWORD(v129[0]) = 0x40000000;
  v37 = ImsResult::operator<<<char [20]>(__p, "missing dialog fork");
  ImsResult::ImsResult(a1, v37);
LABEL_229:
  ImsResult::~ImsResult(__p);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E4E0CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  ImsResult::~ImsResult(&a32);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [56]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::acceptInvitation(SipSession *this@<X0>, ImsResult *a2@<X8>)
{
  if ((*(this + 1496) & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = &unk_1F5EBDEF8;
    v23 = &_bambiDomain;
    LODWORD(v24) = 1073741826;
    operator new();
  }

  v4 = *(this + 104);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 103);
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

  if (*(this + 1448) == 1)
  {
    v7 = *(this + 150);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      v9 = v8;
      if (v8 && *(this + 149))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = &unk_1F5EBDEF8;
    v23 = &_bambiDomain;
    LODWORD(v24) = 1073741826;
    v11 = ImsResult::operator<<<char [43]>(&v22, "acceptInvitation: no lazuli session object");
    v12 = ImsLogContainer::logResult(this, v11);
    ImsResult::ImsResult(a2, v12);
    ImsResult::~ImsResult(&v22);
    if (!v9)
    {
      goto LABEL_24;
    }

    v13 = v9;
    goto LABEL_23;
  }

  if (!v6)
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = &unk_1F5EBDEF8;
    v23 = &_bambiDomain;
    LODWORD(v24) = 1073741826;
    v14 = ImsResult::operator<<<char [33]>(&v22, "acceptInvitation: no call object");
    v15 = ImsLogContainer::logResult(this, v14);
    ImsResult::ImsResult(a2, v15);
    ImsResult::~ImsResult(&v22);
    goto LABEL_24;
  }

LABEL_14:
  v20 = 0;
  v21 = 0;
  SipSession::serverInviteTransaction(this, &v20);
  if (v20)
  {
    v19[0] = 0;
    v19[1] = 0;
    v10 = *(v20 + 272);
    v18 = *(v20 + 264);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(200, v19);
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = &unk_1F5EBDEF8;
  v23 = &_bambiDomain;
  LODWORD(v24) = 1073741826;
  v16 = ImsResult::operator<<<char [55]>(&v22, "acceptInvitation: no current server INVITE transaction");
  v17 = ImsLogContainer::logResult(this, v16);
  ImsResult::ImsResult(a2, v17);
  ImsResult::~ImsResult(&v22);
  v13 = v21;
  if (v21)
  {
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_24:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E0D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  ImsResult::~ImsResult(&__p);
  ImsResult::~ImsResult((v35 - 152));
  v37 = *(v35 - 208);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v35 - 176);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v35 - 160);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [43]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [55]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [66]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<BambiCall *>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923310](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

void SipSession::handleSessionConfirmed(SipSession *this)
{
  *(this + 444) = 0;
  v11 = 0u;
  *v12 = 0u;
  block = 0;
  v14 = 0;
  BambiCallEvent::BambiCallEvent(&v11, 9, &block);
  *&v11 = &unk_1F5ED07B8;
  SipSession::fireCallEvent(this, &v11);
  v2 = *(this + 104);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 103);
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

  if (*(*(this + 30) + 2816) == 1 && *(this + 924) == 1 && v4 && *(v4 + 484) == 4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN10SipSession22handleSessionConfirmedEv_block_invoke;
    v10[3] = &__block_descriptor_tmp_125;
    v10[4] = this;
    v5 = *(this + 20);
    if (!v5 || (v6 = *(this + 19), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = *(this + 21);
    block = MEMORY[0x1E69E9820];
    v14 = 1174405120;
    v15 = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    v16 = &unk_1F5ED2980;
    v18 = v6;
    v19 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = v10;
    dispatch_async(v9, &block);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *&v11 = &unk_1F5EC4090;
  if (v12[1])
  {
    std::__shared_weak_count::__release_weak(v12[1]);
  }
}

void sub_1E4E0DA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10SipSession22handleSessionConfirmedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v1 + 103);
      if (v5)
      {
        if (SipSession::confirmed(v1))
        {
          if (SipSession::terminating(v1) || (*(*v1 + 264))(v1))
          {
            v6 = (*(*v1 + 64))(v1);
            (*(*v1 + 16))(v1, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: don't need to re-INVITE a terminating session", 59);
            *(v6 + 17) = 0;
            (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            if (*(v5 + 484) == 4)
            {
              SipSession::clientInviteTransaction(v1, &v21);
              if (v21)
              {
                v8 = 1;
              }

              else
              {
                SipSession::serverInviteTransaction(v1, &v23);
                v8 = v23 != 0;
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                }
              }

              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

              if (v8)
              {
                v9 = (*(*v1 + 64))(v1);
                (*(*v1 + 16))(v1, v9);
                v10 = ImsOutStream::operator<<(v9, "sendReInvite: already have an active INVITE transaction");
                (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v10[17] = 0;
              }

              else
              {
                v11 = *(v1 + 30);
                v12 = *(v11 + 2968);
                v13 = *(v11 + 2976);
                if (v13)
                {
                  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (!v12)
                {
                  goto LABEL_33;
                }

                v14 = *(v12 + 768);
                v15 = *(v12 + 776);
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v16 = SipOfferAnswer::satisfied(v14);
                if (v15)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                }

                if (v16)
                {
                  v17 = (*(*v2 + 64))(v2);
                  (*(*v2 + 16))(v2, v17);
                  v18 = ImsOutStream::operator<<(v17, "sending re-INVITE to change media from inactive to sendrecv");
                  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v18[17] = 0;
                  SipSession::sendInvite(v2, "SendRecvInvite", &v21);
                  ImsResult::~ImsResult(&v21);
                }

                else
                {
LABEL_33:
                  v19 = (*(*v2 + 64))(v2);
                  (*(*v2 + 16))(v2, v19);
                  v20 = ImsOutStream::operator<<(v19, "sendReInvite: offer/answer is not satisfied");
                  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v20[17] = 0;
                }

                if (v13)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                }
              }

              goto LABEL_13;
            }

            v6 = (*(*v1 + 64))(v1);
            (*(*v1 + 16))(v1, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: media is no longer inactive", 41);
            *(v6 + 17) = 0;
            (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }
        }

        else
        {
          v6 = (*(*v1 + 64))(v1);
          (*(*v1 + 16))(v1, v6);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendReInvite: can't re-INVITE an unconfirmed session", 52);
          *(v6 + 17) = 0;
          (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        *(v6 + 17) = 0;
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendReInvite: no call", 21);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v4)
  {
    goto LABEL_13;
  }
}

void sub_1E4E0E088(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL SipSession::terminating(SipSession *this)
{
  v2 = *(this + 96);
  v3 = *(this + 97);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(this + 96);
    v5 = *(this + 97);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v4 + 48))(v4) == 13)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(this + 96);
      v8 = *(this + 97);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = (*(*v7 + 48))(v7) > 7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_1E4E0E1E8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

BOOL SipOfferAnswer::satisfied(SipOfferAnswer *this)
{
  v1 = *(this + 27);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*(v3 + 40))
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = *(v3 + 56) != 0;
  if (v2)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

uint64_t SipSession::handleAck(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipSession::handleAck", 21);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *(a2 + 8);
  v78 = *a2;
  v79 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = SipSessionInterface::handleAck(a1, &v78);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v6)
  {
    *(a1 + 1585) = 1;
    memset(&v77, 0, sizeof(v77));
    SipMessage::transactionId(*a2, &v77);
    v7 = 0;
    v8 = *(a1 + 240);
    if (*(v8 + 2960) != 1)
    {
      goto LABEL_38;
    }

    v9 = *(v8 + 2944);
    v10 = *(v9 + 56);
    v7 = *(v9 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
LABEL_38:
      v33 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "handleAck: dialog has no fork", 29);
      *(v33 + 17) = 0;
      (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v33 + 17) = 0;
      if (*(a1 + 1448) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
        SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E1u);
        if (SBYTE7(v74) < 0)
        {
          operator delete(__p);
        }
      }

      v32 = 0;
      goto LABEL_105;
    }

    v11 = *(a1 + 240);
    v12 = *(v11 + 232);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = *(v11 + 224);
        if (v14)
        {
          v75 = 0;
          v76 = 0;
          SipSession::clientInviteTransaction(a1, &v75);
          v15 = v75;
          if (v75)
          {
            v16 = *(v10 + 768);
            v17 = *(v10 + 776);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = *(v16 + 216);
            v20 = *(v18 + 16);
            v19 = *(v18 + 24);
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            v21 = *(v15 + 335);
            if (v21 >= 0)
            {
              v22 = *(v15 + 335);
            }

            else
            {
              v22 = *(v15 + 320);
            }

            v23 = *(v20 + 95);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v20 + 80);
            }

            if (v22 == v23)
            {
              if (v21 >= 0)
              {
                v25 = (v15 + 312);
              }

              else
              {
                v25 = *(v15 + 312);
              }

              v28 = *(v20 + 72);
              v27 = (v20 + 72);
              v26 = v28;
              if (v24 >= 0)
              {
                v29 = v27;
              }

              else
              {
                v29 = v26;
              }

              v30 = memcmp(v25, v29, v22);
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              if (!v30)
              {
                v31 = (*(*a1 + 64))(a1);
                (*(*a1 + 16))(a1, v31);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleAck: received ack for session inside client transaction, ignoring", 71);
                *(v31 + 17) = 0;
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                goto LABEL_86;
              }
            }

            else if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }
          }

          v35 = *(v10 + 768);
          v36 = *(v10 + 776);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = SipOfferAnswer::remoteAnswerPending(v35);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          v38 = *a2;
          if (v37)
          {
            v39 = SipMessage::header<SipCSeqHeader>(v38);
            if (v39)
            {
              v40 = v39[15];
            }

            else
            {
              v40 = 0;
            }

            v44 = *(v10 + 768);
            v45 = *(v10 + 776);
            if (v45)
            {
              atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v46 = *(v44 + 216);
            v48 = *(v46 + 16);
            v47 = *(v46 + 24);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              v49 = *(v48 + 96);
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            }

            else
            {
              v49 = *(v48 + 96);
            }

            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            if (v40 == v49)
            {
              v50 = SipMessage::body<SipSdpBody>(*a2);
              if (!v50)
              {
                goto LABEL_110;
              }

              v52 = v50[1];
              v51 = v50[2];
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
              }

              if (!v52)
              {
LABEL_110:
                v65 = SipMessage::body<SipSdpBody>(*a2);
                if (!v65 || (v65[6] & 1) != 0)
                {
                  v66 = (*(*a1 + 48))(a1);
                  (*(*a1 + 16))(a1, v66);
                  v67 = ImsOutStream::operator<<(v66, "expected SDP answer in ACK.  Terminating session.");
                  (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v67[17] = 0;
                  if (*(a1 + 1448) == 1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "MissingSdp");
                    SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x25Eu);
                    if (SBYTE7(v74) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__p, "MissingSdp");
                  SipSession::bye(a1);
                }

                if (*(a1 + 1448) == 1)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                  SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E8u);
                  if (SBYTE7(v74) < 0)
                  {
                    operator delete(__p);
                  }
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                SipSession::bye(a1);
              }

              v53 = *(v10 + 768);
              v54 = *(v10 + 776);
              if (v54)
              {
                atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v55 = *(a2 + 8);
              v71 = *a2;
              v72 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v56 = SipStack::prefs(v14);
              SipOfferAnswer::updateWithIncomingRequest(v53, &v71, &v77, v56, &__p);
              v57 = (*(**(&__p + 1) + 24))(*(&__p + 1), v74);
              ImsResult::~ImsResult(&__p);
              if (v72)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v72);
              }

              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              if (v57)
              {
                v58 = (*(*a1 + 48))(a1);
                (*(*a1 + 16))(a1, v58);
                v59 = ImsOutStream::operator<<(v58, "invalid SDP answer in ACK.  Terminating session.");
                (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v59[17] = 0;
                if (*(a1 + 1448) == 1)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                  SipSession::logLazuliMessageSessionSetup(a1, &__p, 0x1E8u);
                  if (SBYTE7(v74) < 0)
                  {
                    operator delete(__p);
                  }
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "InvalidSdp");
                SipSession::bye(a1);
              }

              goto LABEL_87;
            }

            v31 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v31);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleAck: received ack for differnt CSeq, ignoring", 51);
            *(v31 + 17) = 0;
            (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            v41 = SipMessage::body<SipSdpBody>(v38);
            if (!v41)
            {
              goto LABEL_87;
            }

            v43 = v41[1];
            v42 = v41[2];
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            if (!v43)
            {
              goto LABEL_87;
            }

            v31 = (*(*a1 + 48))(a1);
            (*(*a1 + 16))(a1, v31);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "incoming ACK contains SDP, but we aren't expecting any.  Ignoring it.", 69);
            *(v31 + 17) = 0;
            (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

LABEL_86:
          *(v31 + 17) = 0;
LABEL_87:
          v60 = *(a1 + 768);
          v61 = *(a1 + 776);
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = *(a2 + 8);
          v69 = *a2;
          v70 = v62;
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v60 + 104))(v60, &v69);
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          if (SipSession::confirmed(a1))
          {
            v63 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "call confirmed, send session acknowledged", 41);
            *(v63 + 17) = 0;
            (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v63 + 17) = 0;
            if (*(a1 + 1448) == 1)
            {
              __p = 0uLL;
              *&v74 = 0;
              SipSession::logLazuliMessageSessionSetup(a1, &__p, 0xC8u);
              if (SBYTE7(v74) < 0)
              {
                operator delete(__p);
              }
            }

            __p = 0u;
            v74 = 0u;
            v68[0] = 0;
            v68[1] = 0;
            BambiCallEvent::BambiCallEvent(&__p, 30, v68);
            SipSession::fireCallEvent(a1, &__p);
            *&__p = &unk_1F5EC4090;
            if (*(&v74 + 1))
            {
              std::__shared_weak_count::__release_weak(*(&v74 + 1));
            }
          }

          if (v76)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v76);
          }

          v32 = 1;
LABEL_104:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_105:
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v77.__r_.__value_.__l.__data_);
          }

          return v32;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v34 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "no sipstack", 11);
    *(v34 + 17) = 0;
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v32 = 0;
    *(v34 + 17) = 0;
    if (!v13)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (*(a1 + 1448) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
    SipSession::logLazuliMessageSessionSetup(a1, &__p, 0xC8u);
    if (SBYTE7(v74) < 0)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_1E4E0EEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::__shared_weak_count *a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
  }

  _Unwind_Resume(a1);
}

void SipSession::logLazuliMessageSessionSetup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24 = 0;
  v25 = 0;
  SipSessionInterface::stack(a1, &v24);
  v6 = *(a1 + 1200);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      if (v24)
      {
        v8 = *(a1 + 1192);
        if (v8)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          memset(v18, 0, sizeof(v18));
          v17 = 0u;
          v9 = *(a2 + 23);
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(a2 + 8);
          }

          LOBYTE(v17) = v9 == 0;
          if (*(v8 + 1072) == 1)
          {
            v10 = ((std::chrono::steady_clock::now().__d_.__rep_ - *(a1 + 1456)) / 1000000.0);
          }

          else
          {
            LODWORD(v10) = 0;
          }

          *(&v17 + 4) = __PAIR64__(a3, v10);
          std::string::operator=(v18, a2);
          if (*(v8 + 1072))
          {
            v11 = "MO";
          }

          else
          {
            v11 = "MT";
          }

          std::string::__assign_external(&v18[1], v11);
          v12 = &v19;
          if (SBYTE7(v20) < 0)
          {
            *(&v19 + 1) = 3;
            v13 = v19;
          }

          else
          {
            BYTE7(v20) = 3;
            v13 = &v19;
          }

          *v13 = 5255760;
          v14 = *(a1 + 1351);
          if (*(a1 + 1432) == *(a1 + 1424))
          {
            if ((v14 & 0x80) != 0)
            {
              v14 = *(a1 + 1336);
            }

            if (!v14)
            {
LABEL_36:
              bzero(v16, 0xA20uLL);
              SipStackConfig::SipStackConfig(v16, (v24 + 328));
            }

            if (SBYTE7(v20) < 0)
            {
              *(&v19 + 1) = 15;
              v12 = v19;
            }

            else
            {
              BYTE7(v20) = 15;
            }

            qmemcpy(v12, "GroupChatCreate", 15);
            v15 = v12 + 15;
          }

          else
          {
            if ((v14 & 0x80) != 0)
            {
              v14 = *(a1 + 1336);
            }

            if (v14)
            {
              if (SBYTE7(v20) < 0)
              {
                *(&v19 + 1) = 14;
                v12 = v19;
              }

              else
              {
                BYTE7(v20) = 14;
              }

              qmemcpy(v12, "MLSGroupCreate", 14);
              v15 = v12 + 14;
            }

            else
            {
              if (SBYTE7(v20) < 0)
              {
                *(&v19 + 1) = 12;
                v12 = v19;
              }

              else
              {
                BYTE7(v20) = 12;
              }

              *(v12 + 2) = 1702125925;
              *v12 = *"MLSP2PCreate";
              v15 = v12 + 12;
            }
          }

          *v15 = 0;
          goto LABEL_36;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1E4E0F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  SipStackConfig::~SipStackConfig(&a9);
  ims::analytics::RCSSessionSetupInfo::~RCSSessionSetupInfo((v10 - 240));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v12 = *(v10 - 88);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E0F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void SipSession::handlePrack(void *a1, uint64_t *a2, uint64_t *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = SipMessage::header<SipRAckHeader>(*a2);
  if (!v6)
  {
    v18 = (*(*a1 + 32))(a1);
    (*(*a1 + 16))(a1, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "no RAck header found in PRACK request", 37);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    v19 = a1[30];
    v20 = *a3;
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&__p, "Missing RAck header");
    SipDialog::sendResponse(v19, v89);
    v17 = v89;
LABEL_12:
    ImsResult::~ImsResult(v17);
    if (v86 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = a1[87];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v6[16];
  v10 = a1 + 87;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= v9;
    v13 = v11 < v9;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == a1 + 87 || v9 < *(v10 + 8))
  {
LABEL_10:
    v14 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "no provisional response found with CSeq ", 40);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), v7[16]);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    v15 = a1[30];
    v16 = *a3;
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&__p, "Invalid CSeq");
    SipDialog::sendResponse(v15, v88);
    v17 = v88;
    goto LABEL_12;
  }

  v22 = a1[30];
  if (*(v22 + 2960) != 1)
  {
    v24 = 0;
LABEL_27:
    v33 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "handlePrack: MT dialog doesn't have a fork", 42);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    v34 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v34, v87);
    ImsResult::~ImsResult(v87);
    if (v86 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_96;
  }

  v23 = *(v22 + 2944);
  v25 = *(v23 + 56);
  v24 = *(v23 + 64);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = a1[30];
  v27 = *(v26 + 232);
  if (!v27)
  {
    v28 = 0;
LABEL_30:
    v35 = a1[23];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(&__p, a1 + 18);
      v63 = v86 >= 0 ? &__p : __p;
      *buf = 141558275;
      v91 = 1752392040;
      v92 = 2081;
      v93 = v63;
      _os_log_error_impl(&dword_1E4C3F000, v35, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v86 < 0)
      {
        operator delete(__p);
      }
    }

    if (!v28)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v28 = std::__shared_weak_count::lock(v27);
  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = *(v26 + 224);
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = SipMessage::body<SipSdpBody>(*a2);
  if (!v30)
  {
    goto LABEL_57;
  }

  v32 = v30[1];
  v31 = v30[2];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else if (!v32)
  {
LABEL_58:
    v47 = 0;
    goto LABEL_59;
  }

  data = v25[32].__r_.__value_.__l.__data_;
  size = v25[32].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = a2[1];
  v81 = *a2;
  v82 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = *a3;
  v39 = SipStack::prefs(v29);
  SipOfferAnswer::updateWithIncomingRequest(data, &v81, v38 + 312, v39, &__p);
  v40 = (v84->__get_deleter)(v84, v85);
  ImsResult::~ImsResult(&__p);
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v82);
  }

  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  if (v40)
  {
    v41 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v41, v80);
    ImsResult::~ImsResult(v80);
    if (v86 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_95;
  }

  v42 = a1[192];
  v43 = a2[1];
  v78 = *a2;
  v79 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipPreconditions::updateFromIncomingMessage(v42, v25 + 11, &v78);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  v44 = v25[32].__r_.__value_.__l.__data_;
  v45 = v25[32].__r_.__value_.__l.__size_;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = SipOfferAnswer::localAnswerPending(*(*(v44 + 27) + 16), *(*(v44 + 27) + 24));
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (!v46)
  {
LABEL_57:
    v32 = 0;
    goto LABEL_58;
  }

  SipDialogFork::createSdpToSend(v25, 0, 1, &__p);
  v47 = __p;
  v32 = v84;
  if (!__p)
  {
    v48 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v48);
    v49 = ImsOutStream::operator<<(v48, "no local SDP to send in PRACK response");
    (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v49[17] = 0;
    v50 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipServerTransaction::sendResponse(v50, v77);
    ImsResult::~ImsResult(v77);
    if (v86 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_93;
  }

LABEL_59:
  v51 = v10[5];
  v52 = v10[6];
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = a2[1];
  v75 = *a2;
  v76 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = a3[1];
  v73 = *a3;
  v74 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = v25;
  v72 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v69 = v47;
  v70 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipPrackHandler::handlePrack(v51, &v75, &v73);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v55 = a1[104];
  if (v55)
  {
    v56 = std::__shared_weak_count::lock(v55);
    if (v56)
    {
      v57 = v56;
      v58 = a1[103];
      if (v58)
      {
        v59 = *(v58 + 448);
        if (v59)
        {
          v60 = *(v58 + 440);
          atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v61 = std::__shared_weak_count::lock(v59);
          std::__shared_weak_count::__release_weak(v59);
          if (v61)
          {
            if (v60)
            {
              v62 = a2[1];
              v67 = *a2;
              v68 = v62;
              if (v62)
              {
                atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v65 = v58;
              v66 = v57;
              atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              (*(*v60 + 16))(v60, &v67, &v65);
              if (v66)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v66);
              }

              if (v68)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

LABEL_93:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

LABEL_95:
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
LABEL_96:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E4E0FF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

void *SipMessage::header<SipRAckHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "RAck");
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

void SipSession::handleCancel(uint64_t *a1, uint64_t a2, const std::string **a3)
{
  v36 = 0;
  v37 = 0;
  SipDialog::serverTransactionWithIdAndMethod(a1[30], &(*a3)[13], "INVITE", &v36);
  v6 = v36;
  if (v36)
  {
    v7 = a1[30];
    v8 = *a3;
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(&v33, &str_24_0);
    SipDialog::sendResponse(v7, v31);
    ImsResult::~ImsResult(v31);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v9 = v6[33];
    v10 = v6[34];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 120))(v9);
    v12 = *(v11 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 == 6)
    {
      if (v13 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      v15 = *v14;
      v16 = *(v14 + 4);
      v18 = v15 == *"INVITE" && v16 == *"TE";
      if (!v10)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = 0;
      if (!v10)
      {
LABEL_27:
        if (v18)
        {
          if (*(a1 + 1780) == 1)
          {
            v22 = (*(*a1 + 32))(a1);
            (*(*a1 + 16))(a1, v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "received CANCEL in a confirmed session. Terminating.", 52);
            *(v22 + 17) = 0;
            (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v22 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&v33, "RemoteCancel");
            SipSession::bye(a1);
          }

          if ((*(*v6 + 136))(v6))
          {
            v27 = (*(*a1 + 32))(a1);
            (*(*a1 + 16))(a1, v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "received CANCEL for a completed INVITE. Terminating.", 52);
            *(v27 + 17) = 0;
            (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v27 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&v33, "RemoteCancel");
            SipSession::bye(a1);
          }

          v28 = a1[104];
          if (v28 && std::__shared_weak_count::lock(v28))
          {
            v29 = a1[103];
          }

          v30 = a1[201];
          if (v30)
          {
            (*(*v30 + 8))(v30);
          }

          operator new();
        }

        v23 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "remote end tried to cancel a ", 29);
        *(v23 + 17) = 0;
        v24 = v6[33];
        v25 = v6[34];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = (*(*v24 + 120))(v24);
        LoggableString::LoggableString(&v33, v26);
        (*(*v23 + 40))(v23, &v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " request. Ignoring", 18);
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        goto LABEL_46;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_27;
  }

  v19 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received CANCEL for unknown transaction ", 40);
  *(v19 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v33, *a3 + 13);
  (*(*v19 + 56))(v19, &v33);
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v20 = a1[30];
  v21 = *a3;
  (*(**a2 + 120))();
  std::string::basic_string[abi:ne200100]<0>(&v33, &str_24_0);
  SipDialog::sendResponse(v20, v32);
  ImsResult::~ImsResult(v32);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

void sub_1E4E10C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v46 = *(v44 - 72);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleSessionProgressResponse(SipSession *a1, uint64_t *a2)
{
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    v4 = *(a1 + 30);
    v5 = SipMessage::header<SipToHeader>(*a2);
    if (v5)
    {
      v6 = SipUriHeader::tag(v5);
    }

    else
    {
      v6 = &ims::kEmptyString;
    }

    v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v4 + 2944, v6);
    if (v4 + 2952 == v7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v10 = *(a1 + 192);
        v11 = a2[1];
        v13 = *a2;
        v14 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipPreconditions::updateFromIncomingMessage(v10, v8 + 11, &v13);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        goto LABEL_15;
      }
    }

    v12 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "no fork for 183 response", 24);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
LABEL_15:
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4E10F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t SipSession::schedulePendingInvite(std::string *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 368, "InviteType");
  if (a2 + 376 == v4)
  {
    v5 = &ims::kEmptyString;
  }

  else
  {
    v5 = (v4 + 56);
  }

  std::string::operator=(a1 + 73, v5);
  if ((SHIBYTE(a1[73].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (a1[73].__r_.__value_.__l.__size_)
    {
LABEL_6:
      v6 = *(a1[10].__r_.__value_.__r.__words[0] + 2816);
      v7 = random();
      if (v6 == 1)
      {
        v8 = (10 * (v7 % 190) + 2100);
      }

      else
      {
        v8 = (10 * (v7 % 200));
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, &a1[6].__r_.__value_.__l.__size_);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
      (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "will re-attempt outgoing ", 25);
      *(v10 + 17) = 0;
      LoggableString::LoggableString(&__p, a1 + 73);
      (*(*v10 + 40))(v10, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " in ", 4);
      *(v10 + 17) = 0;
      MEMORY[0x1E6923350](*(v10 + 8), v8);
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ms", 2);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = 0;
      operator new();
    }
  }

  else if (*(&a1[73].__r_.__value_.__s + 23))
  {
    goto LABEL_6;
  }

  v11 = (*(a1->__r_.__value_.__r.__words[0] + 32))(a1);
  (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "INVITE transaction doesn't have an InviteType tag. Can't schedule a retry.", 74);
  *(v11 + 17) = 0;
  result = (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4E11360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t SipSession::schedulePendingReinviteForTTY(const std::string *this)
{
  v20 = *MEMORY[0x1E69E9840];
  data = this[10].__r_.__value_.__l.__data_;
  if (data[2816] != 1)
  {
    v7 = *(data + 29);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(data + 28);
        if (v10)
        {
          v11 = *(v10 + 248);
          v12 = *(v10 + 256);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v13 = *(SipUserAgent::config(v11) + 820);
            if (!v12)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v13 = 0;
            if (!v12)
            {
LABEL_11:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              if (v13)
              {
                std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, &this[6].__r_.__value_.__l.__size_);
                size = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
                  std::__shared_weak_count::__release_shared[abi:ne200100](size);
                  atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v15 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
                (*(this->__r_.__value_.__r.__words[0] + 16))(this, v15);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "will attempt outgoing ", 22);
                *(v15 + 17) = 0;
                LoggableString::LoggableString(&__p, this + 73);
                (*(*v15 + 40))(v15, &__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " in ", 4);
                *(v15 + 17) = 0;
                MEMORY[0x1E6923350](*(v15 + 8), v13);
                *(v15 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ms", 2);
                *(v15 + 17) = 0;
                (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v15 + 17) = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (size)
                {
                  atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v19 = 0;
                operator new();
              }

              goto LABEL_20;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          goto LABEL_11;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

LABEL_20:
    v3 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v3);
    v4 = *(v3 + 8);
    v5 = "Not scheduling Reinvite for TTY, since timeout value is configured to 0";
    v6 = 71;
    goto LABEL_21;
  }

  v3 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
  (*(this->__r_.__value_.__r.__words[0] + 16))(this, v3);
  v4 = *(v3 + 8);
  v5 = "Not scheduling Reinvite for TTY for MO call";
  v6 = 43;
LABEL_21:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  *(v3 + 17) = 0;
  result = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4E117A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void SipSession::upgradeToRtt(std::string *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  data = this[32].__r_.__value_.__l.__data_;
  if (!data || (*(*data + 48))(data) != 7)
  {
    if (!a2)
    {
      v7 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
      (*(this->__r_.__value_.__r.__words[0] + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Skipping reINVITE for existing text session.", 44);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
      return;
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    SipSession::sendInvite(this, "InviteTypeTTYReinvite", &v17);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = &unk_1F5EBDEF8;
    v11 = &_bambiDomain;
    v12 = 0;
    if (*(&v17 + 1) == &_bambiDomain)
    {
      v8 = v18;
      ImsResult::~ImsResult(&v10);
      if (!v8)
      {
        ImsResult::ImsResult(a3, &v17);
        ImsResult::~ImsResult(&v17);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(&v10);
    }

    v9 = (*(this->__r_.__value_.__r.__words[0] + 48))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "unable to send RTT re-INVITE: ", 30);
    *(v9 + 17) = 0;
    (*(v17 + 16))(&v17, v9);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    SipSession::schedulePendingReinviteForTTY(this);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = &unk_1F5EBDEF8;
    v11 = &_bambiDomain;
    v12 = 1073741838;
    ims::result::resultWithCause(&v10, &v17, a3);
  }

  SipSession::answerRttUpgradeRequest(this, a3);
}

void sub_1E4E11B70(_Unwind_Exception *a1, uint64_t a2, ...)
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

void SipSession::answerRttUpgradeRequest(SipSession *this@<X0>, ImsResult *a2@<X8>)
{
  v4 = *(this + 104);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && *(this + 103))
    {
      v6 = *(this + 96);
      v7 = *(this + 97);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v6 + 48))(v6);
      v9 = this + 712;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v8 == 7)
      {
        v26[0] = 0;
        v26[1] = 0;
        SipSession::serverInviteTransaction(this, v26);
        v10 = v26[0];
        if (v26[0])
        {
          v25[0] = 0;
          v25[1] = 0;
          (*(*this + 128))(v25, this);
          if (v25[0])
          {
            *&v27.__r_.__value_.__l.__data_ = 0uLL;
            v11 = *(v10 + 272);
            v18 = *(v10 + 264);
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
            }

            SipResponse::create(200, &v27);
          }

          std::string::basic_string[abi:ne200100]<0>(&v27, "InternalError");
          SipSessionInterface::terminationReason(this);
        }

        (*(*v9 + 32))(this + 712, 6);
        v21 = 0u;
        *v22 = 0u;
        v23 = 0u;
        *__p_8 = 0u;
        v19[0] = &unk_1F5EBDEF8;
        v19[1] = &_bambiDomain;
        v20 = 1073741826;
        operator new();
      }

      v21 = 0u;
      *v22 = 0u;
      v23 = 0u;
      *__p_8 = 0u;
      v19[0] = &unk_1F5EBDEF8;
      v19[1] = &_bambiDomain;
      v20 = 1073741826;
      ImsResult::operator<<<char [66]>(v19, "answerRttUpgradeRequest: RTT upgrade response attempted in state ");
      v14 = (*(*v9 + 24))(this + 712);
      v15 = (*(*v9 + 16))(this + 712, v14);
      LoggableString::LoggableString(&v27, v15);
      v16 = ImsResult::operator<<<LoggableString>(v19, &v27);
      v17 = ImsLogContainer::logResult(this, v16);
      ImsResult::ImsResult(a2, v17);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      ImsResult::~ImsResult(v19);
      goto LABEL_22;
    }
  }

  else
  {
    v5 = 0;
  }

  v21 = 0u;
  *v22 = 0u;
  v23 = 0u;
  *__p_8 = 0u;
  v19[0] = &unk_1F5EBDEF8;
  v19[1] = &_bambiDomain;
  v20 = 1073741826;
  v12 = ImsResult::operator<<<char [40]>(v19, "answerRttUpgradeRequest: no call object");
  v13 = ImsLogContainer::logResult(this, v12);
  ImsResult::ImsResult(a2, v13);
  ImsResult::~ImsResult(v19);
  if (v5)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E121F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x1E69235B0](v16, 0x10A1C407D4E1E9DLL);
  ImsResult::~ImsResult(va);
  v19 = *(v17 - 128);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(v17 - 112);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

double SipSession::hangUp@<D0>(SipSession *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SipSession::terminating(a1);
  v5 = *a1;
  if (v4)
  {
    v6 = (*(v5 + 64))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 8);
    v8 = "hangUp: already terminating";
    v9 = 27;
  }

  else
  {
    if (!(*(v5 + 264))(a1))
    {
      v11 = *(a1 + 200);
      if (v11)
      {
        v12 = *(v11 + 120);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v13 = *(v11 + 104);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (*(v11 + 95) < 0)
        {
          operator delete(*(v11 + 72));
        }

        if (*(v11 + 55) < 0)
        {
          operator delete(*(v11 + 32));
        }

        if (*(v11 + 31) < 0)
        {
          operator delete(*(v11 + 8));
        }

        MEMORY[0x1E69235B0](v11, 0x1032C40D4AF1F8FLL);
      }

      operator new();
    }

    v6 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 8);
    v8 = "hangUp: already terminated";
    v9 = 26;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
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

void sub_1E4E128EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::generateResponseForInviteOrUpdateRequest(void *a1, uint64_t *a2, uint64_t *a3, SipMessage **a4)
{
  v169 = *MEMORY[0x1E69E9840];
  v8 = a1[104];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = a1[103];
      if (v10)
      {
        v11 = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (a1[181])
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v14 = (*(**a2 + 120))();
    v15 = *(v14 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15 != 6)
    {
      goto LABEL_22;
    }

    v17 = v16 >= 0 ? v14 : *v14;
    v18 = *v17;
    v19 = *(v17 + 4);
    if (v18 != *"UPDATE" || v19 != *"TE")
    {
      goto LABEL_22;
    }

    v30 = SipMessage::body<SipSdpBody>(*a2);
    if (v30)
    {
      v32 = v30[1];
      v31 = v30[2];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v32)
      {
LABEL_22:
        v21 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "handleInviteOrUpdateRequest: no call", 36);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
        SipSessionInterface::terminationReason(a1);
      }
    }

    v33 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "handleInviteOrUpdateRequest: allowing empty UPDATE in headless state", 68);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v11 = 0;
    v10 = 0;
    *(v33 + 17) = 0;
  }

LABEL_8:
  v12 = a1[150];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13 && a1[149])
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 1448) == 1)
  {
    v22 = (*(**a2 + 120))();
    v23 = *(v22 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 != 6)
    {
      goto LABEL_35;
    }

    v25 = v24 >= 0 ? v22 : *v22;
    v26 = *v25;
    v27 = *(v25 + 4);
    if (v26 != *"UPDATE" || v27 != *"TE")
    {
      goto LABEL_35;
    }

    v34 = SipMessage::body<SipSdpBody>(*a2);
    if (v34)
    {
      v36 = v34[1];
      v35 = v34[2];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v36)
      {
LABEL_35:
        v29 = (*(*a1 + 48))(a1);
        (*(*a1 + 16))(a1, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "handleInviteOrUpdateRequest: no lazuli session", 46);
        *(v29 + 17) = 0;
        (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v29 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
        SipSessionInterface::terminationReason(a1);
      }
    }

    v37 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "handleInviteOrUpdateRequest: allowing empty UPDATE in headless state", 68);
    *(v37 + 17) = 0;
    (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v37 + 17) = 0;
  }

LABEL_46:
  v38 = a1[30];
  v39 = SipMessage::header<SipFromHeader>(*a2);
  if (v39)
  {
    v40 = SipUriHeader::tag(v39);
  }

  else
  {
    v40 = &ims::kEmptyString;
  }

  v41 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v38 + 2944, v40);
  if (v38 + 2952 == v41)
  {
    goto LABEL_82;
  }

  v43 = *(v41 + 56);
  v42 = *(v41 + 64);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v43)
  {
LABEL_82:
    v60 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "handleInviteOrUpdateRequest: couldn't find appropriate fork for remote tag ", 75);
    *(v60 + 17) = 0;
    v61 = SipMessage::header<SipFromHeader>(*a2);
    if (v61)
    {
      v62 = SipUriHeader::tag(v61);
    }

    else
    {
      v62 = &ims::kEmptyString;
    }

    ObfuscatedString::ObfuscatedString(v167, v62);
    (*(*v60 + 56))(v60, v167);
    (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v60 + 17) = 0;
    if ((v167[47] & 0x80000000) != 0)
    {
      operator delete(*&v167[24]);
    }

    if ((v167[23] & 0x80000000) != 0)
    {
      operator delete(*v167);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "InternalError");
    SipSessionInterface::terminationReason(a1);
  }

  v44 = (*(**a2 + 120))();
  v45 = *(v44 + 23);
  v46 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(v44 + 8);
  }

  v134 = v43;
  v135 = v11;
  if (v45 == 6)
  {
    v47 = v46 >= 0 ? v44 : *v44;
    v48 = *v47;
    v49 = *(v47 + 4);
    if (v48 == *"INVITE" && v49 == *"TE")
    {
      v63 = SipSession::confirmed(a1);
      v65 = *a4;
      v64 = a4[1];
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v137 = v63;
      v132 = v64;
      v67 = *a3;
      v66 = a3[1];
      if (v66)
      {
        atomic_fetch_add_explicit(v66 + 1, 1uLL, memory_order_relaxed);
      }

      v130 = v66;
      *v167 = 0uLL;
      SipSession::serverInviteTransaction(a1, v167);
      if (!*v167 || *v167 == v67)
      {
        SipSession::clientInviteTransaction(a1, buf);
        v73 = *buf;
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (!v73)
        {
          v75 = 1;
LABEL_103:
          if (*&v167[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v167[8]);
          }

          v136 = v137 ^ 1;
          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v130);
          }

          if (v132)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v132);
          }

          v51 = v136;
          if ((v75 & 1) == 0)
          {
            goto LABEL_242;
          }

          goto LABEL_64;
        }

        *(v65 + 32) = 491;
        v74 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v74);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v74 + 8), "received an incoming INVITE while we're waiting for a response to our INVITE", 76);
        *(v74 + 17) = 0;
        v72 = (v74 + 17);
        (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        *(v65 + 32) = 500;
        v68 = random();
        v69 = SipMessage::headerWithName(v65, "Retry-After", 1);
        v70 = **v69;
        v71 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v71);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v71 + 8), "received an incoming INVITE while we're already processing another one", 70);
        *(v71 + 17) = 0;
        v72 = (v71 + 17);
        (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      v75 = 0;
      *v72 = 0;
      goto LABEL_103;
    }
  }

  v136 = 0;
  v51 = 1;
LABEL_64:
  v52 = a1[185];
  v53 = a2[1];
  v165 = *a2;
  v166 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = a4[1];
  v163 = *a4;
  v164 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = SipSessionTimer::validateIncomingRequestAndUpdateResponse(v52, &v165, &v163);
  if (v164)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v164);
  }

  if (v166)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v166);
  }

  if (updated)
  {
    v56 = SipMessage::body<SipSdpBody>(*a2);
    if (v56 && (v56[6] & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "InvalidSdp");
      SipSessionInterface::terminationReason(a1);
    }

    if (v136)
    {
      v57 = SipMessage::body<SipSdpBody>(*a2);
      if (!v57)
      {
        goto LABEL_80;
      }

      v59 = v57[1];
      v58 = v57[2];
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      }

      if (!v59)
      {
LABEL_80:
        memset(&v167[24], 0, 64);
        *v167 = &unk_1F5EBDEF8;
        *&v167[8] = &_bambiDomain;
        *&v167[16] = 0x40000000;
        if (v135)
        {
          v161 = 0;
          v162 = 0;
          BambiCall::initializeMediaForMTSession(v10, &v161, buf);
        }

        else
        {
          v157 = 0uLL;
          v158 = 0uLL;
          v159 = 0uLL;
          v160 = 0uLL;
          v155[0] = &unk_1F5EBDEF8;
          v155[1] = &_bambiDomain;
          v156 = 0x40000000;
          v76 = ImsResult::operator<<<char [8]>(v155, "no call");
          ImsResult::ImsResult(buf, v76);
        }

        ImsResult::operator=(v167, buf);
        ImsResult::~ImsResult(buf);
        if (v135)
        {
          if (v162)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v162);
          }
        }

        else
        {
          ImsResult::~ImsResult(v155);
        }

        if ((*(**&v167[8] + 24))(*&v167[8], *&v167[16]))
        {
          v77 = *a4;
          v78 = a4[1];
          v154[0] = v77;
          v154[1] = v78;
          if (v78)
          {
            atomic_fetch_add_explicit(v78 + 1, 1uLL, memory_order_relaxed);
          }

          SipSession::generateTerminationResponse(a1, v167, v154);
          if (v78)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          ImsResult::~ImsResult(v167);
          goto LABEL_242;
        }

        ImsResult::~ImsResult(v167);
      }
    }

    v79 = a1[30];
    v80 = *(v79 + 232);
    if (v80 && (v133 = std::__shared_weak_count::lock(v80)) != 0)
    {
      v81 = *(v79 + 224);
      if (v81)
      {
        v131 = *(v81 + 248);
        v128 = *(v79 + 224);
        v82 = *(v128 + 32);
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v129 = v82;
        if (!v131)
        {
          v89 = a1[23];
          v87 = v133;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            (*(a1[18] + 16))(v167, a1 + 18);
            v90 = v167[23] >= 0 ? v167 : *v167;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v90;
            _os_log_error_impl(&dword_1E4C3F000, v89, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if ((v167[23] & 0x80000000) != 0)
            {
              operator delete(*v167);
            }
          }

          goto LABEL_239;
        }

        if (v51)
        {
LABEL_161:
          v152 = 0;
          v153 = 0;
          IPTelephonyManager::getBambiClient(&v152);
          v94 = v152;
          v150 = v10;
          v151 = v9;
          v87 = v133;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (BambiClient::callCountExcludingCall(v94, &v150) && (*(v94 + 720) & v136 & 1) != 0)
          {
            v95 = *(SipUserAgent::config(v131) + 1155);
            if (v151)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v151);
            }

            if (v95)
            {
              v96 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v96);
              v97 = ImsOutStream::operator<<(v96, "Got INVITE, but in a call and call waiting is disabled");
              (*(*v97 + 64))(v97, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v97[17] = 0;
              std::string::basic_string[abi:ne200100]<0>(buf, "CallWaitingDisabled");
              SipSessionInterface::terminationReason(a1);
            }
          }

          else if (v151)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v151);
          }

          if (v136)
          {
            v98 = a1[192];
            v99 = a2[1];
            v148 = *a2;
            v149 = v99;
            if (v99)
            {
              atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
            }

            SipPreconditions::initializeMobileTerminated(v98, (a1 + 892), &v148);
            v100 = v149;
            if (!v149)
            {
              goto LABEL_182;
            }
          }

          else
          {
            if (SipSession::confirmed(a1) && *(a1 + 913) != 1)
            {
              goto LABEL_182;
            }

            v101 = a1[192];
            v102 = a2[1];
            v146 = *a2;
            v147 = v102;
            if (v102)
            {
              atomic_fetch_add_explicit((v102 + 8), 1uLL, memory_order_relaxed);
            }

            SipSession::confirmed(a1);
            SipPreconditions::updateFromIncomingMessage(v101, v134 + 11, &v146);
            v100 = v147;
            if (!v147)
            {
LABEL_182:
              memset(v167, 0, sizeof(v167));
              data = v134[32].__r_.__value_.__l.__data_;
              size = v134[32].__r_.__value_.__l.__size_;
              if (size)
              {
                atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v105 = a2[1];
              v144 = *a2;
              v145 = v105;
              if (v105)
              {
                atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v106 = *a3;
              v107 = SipStack::prefs(v128);
              SipOfferAnswer::updateWithIncomingRequest(data, &v144, v106 + 312, v107, v167);
              if (v145)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v145);
              }

              if (size)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](size);
              }

              if ((*(**&v167[8] + 24))(*&v167[8], *&v167[16]))
              {
                v108 = *a4;
                v109 = a4[1];
                v143[0] = v108;
                v143[1] = v109;
                if (v109)
                {
                  atomic_fetch_add_explicit(v109 + 1, 1uLL, memory_order_relaxed);
                }

                SipSession::generateTerminationResponse(a1, v167, v143);
                if (v109)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v109);
                }

LABEL_237:
                ImsResult::~ImsResult(v167);
                if (v153)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v153);
                }

LABEL_239:
                if (v129)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v129);
                }

LABEL_241:
                std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                goto LABEL_242;
              }

              if (!v136)
              {
                if ((*(*a4 + 32) - 200) > 0x63)
                {
LABEL_232:
                  v125 = *(a1 + 1535);
                  if (v125 < 0)
                  {
                    v125 = a1[190];
                  }

                  if (!v125)
                  {
                    v126 = SipMessage::header<SipPBambiCallIdHeader>(*a2);
                    if (v126)
                    {
                      std::string::operator=(a1 + 63, (v126 + 64));
                    }
                  }

                  goto LABEL_237;
                }

                goto LABEL_228;
              }

              v110 = a2[1];
              v142[0] = *a2;
              v142[1] = v110;
              if (v110)
              {
                atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialogFork::updateRouteSet(v134, v142);
              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v110);
              }

              v112 = *(v131 + 42);
              v111 = *(v131 + 43);
              if (v111)
              {
                atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
                v113 = *(v112 + 4456);
                std::__shared_weak_count::__release_shared[abi:ne200100](v111);
                if (v113 != 1)
                {
                  goto LABEL_220;
                }
              }

              else if ((*(v112 + 4456) & 1) == 0)
              {
                goto LABEL_220;
              }

              v114 = a2[1];
              v141[0] = *a2;
              v141[1] = v114;
              if (v114)
              {
                atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::parseVerstatParams(a1, v141);
              if (v114)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v114);
              }

              SipSessionInterface::stack(a1, buf);
              v115 = SipStack::prefs(*buf);
              if (ImsPrefs::EnableBrandedCalling(v115))
              {
                v116 = *(a1 + 417);
                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                if (v116 != 1)
                {
                  goto LABEL_220;
                }

                v117 = *a2;
                v118 = a2[1];
                if (v118)
                {
                  atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipSession::parseBrandedCallingHeaders(a1, v117);
                if (!v118)
                {
                  goto LABEL_220;
                }

                v119 = v118;
                goto LABEL_219;
              }

              v119 = *&buf[8];
              if (*&buf[8])
              {
LABEL_219:
                std::__shared_weak_count::__release_shared[abi:ne200100](v119);
              }

LABEL_220:
              v121 = *(v131 + 42);
              v120 = *(v131 + 43);
              if (v120)
              {
                atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
                v122 = *(v121 + 4457);
                std::__shared_weak_count::__release_shared[abi:ne200100](v120);
                if (v122 != 1)
                {
                  goto LABEL_228;
                }

LABEL_224:
                v123 = a2[1];
                v140[0] = *a2;
                v140[1] = v123;
                if (v123)
                {
                  atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipSession::parseSpamHeaders(a1, v140);
                if (v123)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v123);
                }

                goto LABEL_228;
              }

              if (*(v121 + 4457))
              {
                goto LABEL_224;
              }

LABEL_228:
              v124 = a2[1];
              v138 = *a2;
              v139 = v124;
              if (v124)
              {
                atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialogFork::handleTargetRefresh(v134, &v138);
              if (v139)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v139);
              }

              goto LABEL_232;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          goto LABEL_182;
        }

        v83 = SipMessage::body<SipSdpBody>(*a2);
        if (v83)
        {
          v84 = v83[1];
          v85 = v83[2];
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v84)
          {
            v86 = 0;
LABEL_156:
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v85);
            }

            if (v86)
            {
              v92 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v92);
              v93 = ImsOutStream::operator<<(v92, "Got an empty INVITE, trying to resume the call");
              (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v93[17] = 0;
              if (v135)
              {
                BambiCall::handleEmptyInvite(v10);
              }
            }

            goto LABEL_161;
          }
        }

        else
        {
          v85 = 0;
        }

        if (*(SipUserAgent::config(v131) + 816))
        {
          v86 = 1;
        }

        else
        {
          v86 = SipSession::confirmed(a1);
        }

        goto LABEL_156;
      }

      v87 = v133;
    }

    else
    {
      v87 = 0;
    }

    v88 = a1[23];
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(v167, a1 + 18);
      v91 = v167[23] >= 0 ? v167 : *v167;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v91;
      _os_log_error_impl(&dword_1E4C3F000, v88, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if ((v167[23] & 0x80000000) != 0)
      {
        operator delete(*v167);
      }
    }

    if (v87)
    {
      goto LABEL_241;
    }
  }

LABEL_242:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v127 = *MEMORY[0x1E69E9840];
}

void sub_1E4E13FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  ImsResult::~ImsResult(&__p);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(a1);
}

void SipSession::handleInviteOrUpdateRequest(void *a1, uint64_t *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    v4 = (*(**a2 + 120))();
    v5 = *(v4 + 23);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 8);
    }

    if (v5 == 6)
    {
      v7 = v6 >= 0 ? v4 : *v4;
      v8 = *v7;
      v9 = *(v7 + 4);
      if (v8 == *"INVITE" && v9 == *"TE")
      {
        v41 = *a2;
        std::string::basic_string[abi:ne200100]<0>(&block, "100rel");
        v42 = SipMessage::supportsOption(v41, &block);
        v43 = v42;
        if (v63 < 0)
        {
          operator delete(block);
          if (v43)
          {
            goto LABEL_22;
          }
        }

        else if (v42)
        {
          goto LABEL_22;
        }

        v56 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Incoming INVITE doesn't support 100rel", 38);
        *(v56 + 17) = 0;
        (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v56 + 17) = 0;
        *(a1 + 1781) = 0;
        goto LABEL_22;
      }
    }
  }

  v11 = (*(**a2 + 120))();
  v12 = *(v11 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12 != 6 || (v13 >= 0 ? (v14 = v11) : (v14 = *v11), (v15 = *v14, v16 = *(v14 + 4), v15 == *"INVITE") ? (v17 = v16 == *"TE") : (v17 = 0), !v17))
  {
LABEL_22:
    v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Allow");
    if (v18)
    {
      v19 = v18[5];
      if (v19)
      {
        v20 = **v19;
        if (v21)
        {
          if (v21 + 64 != (a1[30] + 2792))
          {
            std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1[30] + 2792), *(v21 + 8), v21 + 9);
          }
        }
      }
    }

    v23 = *a2;
    v22 = a2[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SipSession::confirmed(a1))
    {
LABEL_74:
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v60[0] = 0;
      v60[1] = 0;
      v50 = a2[1];
      v59 = *a2;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      SipResponse::create(200, v60);
    }

    v24 = (*(*v23 + 120))(v23);
    v25 = *(v24 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v24 + 8);
    }

    if (v25 == 5)
    {
      if (v26 >= 0)
      {
        v36 = v24;
      }

      else
      {
        v36 = *v24;
      }

      v29 = *v36;
      v30 = *"PRACK";
      v31 = *(v36 + 4);
      v32 = SipRequest::kMethodPrack[4];
    }

    else
    {
      if (v25 != 6)
      {
        goto LABEL_74;
      }

      if (v26 >= 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = *v24;
      }

      if (*v27 == *"INVITE" && *(v27 + 4) == *"TE")
      {
        goto LABEL_54;
      }

      v29 = *v27;
      v30 = *"UPDATE";
      v31 = *(v27 + 4);
      v32 = *"TE";
    }

    if (v29 != v30 || v31 != v32)
    {
      goto LABEL_74;
    }

LABEL_54:
    v38 = SipMessage::header<SipPEarlyMediaHeader>(v23);
    v39 = SipMessage::header<SipFromHeader>(v23);
    if (v39)
    {
      v40 = SipUriHeader::tag(v39);
    }

    else
    {
      v40 = &ims::kEmptyString;
    }

    SipSession::processEarlyMediaHeader(a1, v38, v40);
    goto LABEL_74;
  }

  v33 = SipMessage::body<SipSdpBody>(*a2);
  if (v33)
  {
    v35 = v33[1];
    v34 = v33[2];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v44 = a1[104];
  if (!v44 || (v45 = std::__shared_weak_count::lock(v44)) == 0)
  {
    v48 = 0;
    if (!v34)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  v46 = v45;
  v47 = a1[103];
  if (!v47)
  {
    goto LABEL_79;
  }

  v48 = 0;
  if ((*(v47 + 785) & 1) == 0 && v35)
  {
    for (i = *(v35 + 56); i != *(v35 + 57); i += 200)
    {
      if (*(i + 12) == 4)
      {
        SipSessionInterface::stack(a1, &block);
        v58 = SipStack::prefs(block);
        v48 = ImsPrefs::RTTUpgradeResponseTimeoutMilliseconds(v58) > 0;
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        goto LABEL_80;
      }
    }

LABEL_79:
    v48 = 0;
  }

LABEL_80:
  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  if (!v34)
  {
LABEL_81:
    if (!v48)
    {
      goto LABEL_22;
    }

    goto LABEL_82;
  }

LABEL_70:
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v48)
  {
    goto LABEL_22;
  }

LABEL_82:
  v51 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Handling RTT upgrade request", 28);
  *(v51 + 17) = 0;
  (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v51 + 17) = 0;
  SipTypedStateMachine<SipSessionState>::transitionToState(a1 + 89, 7);
  v52 = a1[104];
  if (v52)
  {
    v53 = std::__shared_weak_count::lock(v52);
    if (v53)
    {
      v54 = v53;
      v55 = a1[103];
      if (v55)
      {
        BambiCall::textSessionDetected(v55);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

void sub_1E4E15488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(a1);
}

void ___ZN10SipSession27handleInviteOrUpdateRequestENSt3__110shared_ptrIK10SipRequestEENS1_I20SipServerTransactionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Faking local QoS notification for MT Call", 41);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v3, &__p, 1);
  SipSession::handleQualityOfServiceEstablished(v1, 0xFFFFFFFFLL, 1, &__p, 1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E4E15734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipOfferAnswer::localSdpPending(SipOfferAnswer *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SipOfferAnswerExchange::empty(this))
  {
    v4 = 1;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = SipOfferAnswerExchange::localAnswerPending(this);
  if (a2)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v4;
}

void sub_1E4E157B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *SipSession::generateTerminationResponse(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    *(a3 + 128) = *(a2 + 60);
    std::string::operator=((a3 + 136), (a2 + 32));
    v5 = (*(*v4 + 64))(v4);
    (*(*v4 + 16))(v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Generating response from call termination reason: ", 50);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a2 + 8);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v6 = v4[200];
    if (v6)
    {
      v7 = *(v6 + 120);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = *(v6 + 104);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (*(v6 + 95) < 0)
      {
        operator delete(*(v6 + 72));
      }

      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      MEMORY[0x1E69235B0](v6, 0x1032C40D4AF1F8FLL);
    }

    operator new();
  }

  return result;
}

void SipSession::generateTerminationResponse(uint64_t a1, const ImsResult *a2, SipResponse **a3)
{
  v6 = *(a2 + 7);
  if (v6)
  {
    v7 = **v6;
    {
      SipSessionInterface::terminationReason(a1);
    }
  }

  if (*a3)
  {
    v8 = (*(*a1 + 48))(a1);
    (*(*a1 + 16))(a1, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Unable to generate call termination reason from result, using ", 62);
    *(v8 + 17) = 0;
    (*(*a2 + 16))(a2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " directly.", 10);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    v9 = *a3;

    SipResponse::setStatusFromImsResult(v9, a2);
  }
}

void sub_1E4E15BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [8]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::parseVerstatParams(uint64_t a1, uint64_t *a2)
{
  memset(&v32, 0, sizeof(v32));
  v4 = SipMessage::header<SipPAssertedIdentityHeader>(*a2);
  if (v4)
  {
    v5 = v4;
    if (v4[9] != v4[10])
    {
      __p = 0;
      v30 = 0;
      v31 = 0;
      SipRouteSet::allParams((v4 + 8), &__p);
      SipSessionInterface::stack(a1, &v28);
      v6 = SipStack::prefs(v28.__r_.__value_.__l.__data_);
      v7 = ImsPrefs::EnableBrandedCalling(v6);
      if (v28.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
      }

      if (v7)
      {
        ims::removeQuotes(*v5[9] + 200, &v28);
        v8 = (a1 + 1728);
        if (*(a1 + 1751) < 0)
        {
          operator delete(*v8);
        }

        *v8 = *&v28.__r_.__value_.__l.__data_;
        *(a1 + 1744) = *(&v28.__r_.__value_.__l + 2);
      }

      v9 = __p;
      v10 = v30;
      if (__p != v30)
      {
        do
        {
          v11 = *v9;
          if (*v9 && v11 + 16 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 8, "verstat"))
          {
            v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v11 + 8, "verstat");
            if (v11 + 16 == v24)
            {
              v25 = &ims::kEmptyString;
            }

            else
            {
              v25 = (v24 + 56);
            }

            SipSession::setVerstatValueFrom(a1, v25, "P-Asserted-Identity");
            goto LABEL_47;
          }

          ++v9;
        }

        while (v9 != v10);
      }

      memset(&v28, 0, sizeof(v28));
      SipRouteSet::allHops((v5 + 8), &v28);
      size = v28.__r_.__value_.__l.__size_;
      v12 = v28.__r_.__value_.__r.__words[0];
      if (v28.__r_.__value_.__r.__words[0] != v28.__r_.__value_.__l.__size_)
      {
        while (1)
        {
          v14 = *v12;
          if (*v12)
          {
            if ((v14 + 80) != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v14 + 72, "verstat"))
            {
              v26 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v14 + 72, "verstat");
              if ((v14 + 80) == v26)
              {
                v27 = &ims::kEmptyString;
              }

              else
              {
                v27 = (v26 + 56);
              }

LABEL_45:
              SipSession::setVerstatValueFrom(a1, v27, "P-Asserted-Identity");
              if (v28.__r_.__value_.__r.__words[0])
              {
                v28.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
                operator delete(v28.__r_.__value_.__l.__data_);
              }

LABEL_47:
              v23 = __p;
              if (__p)
              {
                v30 = __p;
LABEL_49:
                operator delete(v23);
              }

              return;
            }

            v15 = SipUri::verstatLevel(v14);
            v16 = *(v15 + 23);
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(v15 + 1);
            }

            if (v16)
            {
              v27 = SipUri::verstatLevel(v14);
              goto LABEL_45;
            }
          }

          if (++v12 == size)
          {
            v12 = v28.__r_.__value_.__r.__words[0];
            break;
          }
        }
      }

      if (v12)
      {
        v28.__r_.__value_.__l.__size_ = v12;
        operator delete(v12);
      }

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }
  }

  v17 = SipMessage::header<SipFromHeader>(*a2);
  v18 = v17;
  if (v17)
  {
    if (v17 + 80 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v17 + 72), "verstat"))
    {
      v20 = SipUri::verstatLevel((v18 + 104));
    }

    else
    {
      v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v18 + 72), "verstat");
      if (v18 + 80 == v19)
      {
        v20 = &ims::kEmptyString;
      }

      else
      {
        v20 = (v19 + 56);
      }
    }

    std::string::operator=(&v32, v20);
    v21 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v32.__r_.__value_.__l.__size_;
    }

    if (v21)
    {
      SipSession::setVerstatValueFrom(a1, &v32, "From");
      v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    if (v22 < 0)
    {
      v23 = v32.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }
  }
}

void sub_1E4E15F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *SipSession::parseBrandedCallingHeaders(std::string *a1, uint64_t a2)
{
  result = SipMessage::header<SipCallInfoHeader>(a2);
  if (result)
  {
    v4 = result;
    v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((result + 72), "purpose");
    if (v4 + 80 == v5)
    {
      v6 = &ims::kEmptyString;
    }

    else
    {
      v6 = (v5 + 56);
    }

    v7 = *(v6 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 1);
    }

    if (v7 == 4)
    {
      if (v8 < 0)
      {
        v6 = *v6;
      }

      if (*v6 == *"icon")
      {
        (*(*v4 + 40))(v4, a1 + 71);
        ims::chomp(a1 + 71, "<>", 3);
      }
    }

    v9 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
    (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Call-Info Branded Calling header received [imageUrl=", 52);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1 + 71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " companyName=", 13);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
    *(v9 + 17) = 0;
    result = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
  }

  return result;
}

void SipSession::parseSpamHeaders(uint64_t a1, uint64_t *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), &SipHeader::kHeaderPComNameIdReputation);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = **v5;
      if (v7)
      {
        v8 = v7;
        v9 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "P-Com SPAM header received", 26);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        v10 = v8 + 80;
        if (v8 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), "ccat"))
        {
          v11 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), "ccat");
          if (v10 == v11)
          {
            v12 = &ims::kEmptyString;
          }

          else
          {
            v12 = (v11 + 56);
          }

          std::string::operator=(&v50, v12);
        }

        if (v10 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), "urep"))
        {
          v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), "urep");
          if (v10 == v13)
          {
            v14 = &ims::kEmptyString;
          }

          else
          {
            v14 = (v13 + 56);
          }

          std::string::operator=(&v49, v14);
        }
      }
    }
  }

  v15 = SipMessage::header<SipCallInfoHeader>(*a2);
  if (v15)
  {
    v16 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Call-Info SPAM header received", 30);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    v17 = v15 + 80;
    if (v15 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "type"))
    {
      v18 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "type");
      if (v17 == v18)
      {
        v19 = &ims::kEmptyString;
      }

      else
      {
        v19 = (v18 + 56);
      }

      std::string::operator=(&v50, v19);
    }

    if (v17 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "confidence"))
    {
      v20 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "confidence");
      if (v17 == v20)
      {
        v21 = &ims::kEmptyString;
      }

      else
      {
        v21 = (v20 + 56);
      }

      std::string::operator=(&v49, v21);
    }
  }

  v22 = *(a1 + 240);
  v23 = *(v22 + 232);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = *(v22 + 224);
      if (v25)
      {
        v27 = *(v25 + 248);
        v26 = *(v25 + 256);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v27)
        {
          v38 = *(a1 + 184);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            (*(*(a1 + 144) + 16))(&__p, a1 + 144);
            v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            v52 = 1752392040;
            v53 = 2081;
            v54 = v39;
            _os_log_error_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_69;
        }

        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v50.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v29 = SipUserAgent::config(v27);
          *(a1 + 1672) = SpamCategoryMap::categoryForString(v29 + 1248, &v50);
          v30 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Found spam category ", 20);
          *(v30 + 17) = 0;
          (*(*v30 + 32))(v30, &v50);
          *(v30 + 17) = 0;
          ims::toString<ims::SpamCategory>((a1 + 1672), &__p);
          (*(*v30 + 32))(v30, &__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "')", 2);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v31 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v49.__r_.__value_.__l.__size_;
        }

        if (v31)
        {
          v32 = SipUserAgent::config(v27);
          __p.__r_.__value_.__r.__words[0] = 0;
          v33 = ims::strToLong(&v49, &__p) ? LODWORD(__p.__r_.__value_.__l.__data_) : 0;
          *(a1 + 1676) = SpamRiskMap::classifyRisk((v32 + 1272), v33);
          v34 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v34);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "Found spam risk ", 16);
          *(v34 + 17) = 0;
          (*(*v34 + 32))(v34, &v49);
          *(v34 + 17) = 0;
          v35 = *(a1 + 1676) - 1;
          v36 = v35 > 2 ? "none" : off_1E876A0C0[v35];
          std::string::basic_string[abi:ne200100]<0>(&__p, v36);
          (*(*v34 + 32))(v34, &__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "')", 2);
          *(v34 + 17) = 0;
          (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v34 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v41 = *(a1 + 240);
        v40 = *(a1 + 248);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          if (v41)
          {
            v41 = *(a1 + 240);
            v42 = *(a1 + 248);
            if (v42)
            {
              v43 = 0;
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_64:
              SipDialog::dialogId(v41, &__p);
              v44 = (a1 + 1680);
              if (*(a1 + 1703) < 0)
              {
                operator delete(*v44);
              }

              *v44 = *&__p.__r_.__value_.__l.__data_;
              *(a1 + 1696) = *(&__p.__r_.__value_.__l + 2);
              *(&__p.__r_.__value_.__s + 23) = 0;
              __p.__r_.__value_.__s.__data_[0] = 0;
              if ((v43 & 1) == 0)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v42);
              }

              v45 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v45);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "Using dialog-id ", 16);
              *(v45 + 17) = 0;
              (*(*v45 + 32))(v45, a1 + 1680);
              (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v45 + 17) = 0;
              goto LABEL_69;
            }

LABEL_63:
            v43 = 1;
            goto LABEL_64;
          }
        }

        else if (v41)
        {
          v42 = 0;
          goto LABEL_63;
        }

LABEL_69:
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

LABEL_71:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v37 = *(a1 + 184);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 144) + 16))(&__p, a1 + 144);
    v47 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v52 = 1752392040;
    v53 = 2081;
    v54 = v47;
    _os_log_error_impl(&dword_1E4C3F000, v37, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v24)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v46 = *MEMORY[0x1E69E9840];
}

void sub_1E4E16BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *SipMessage::header<SipPBambiCallIdHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Bambi-Call-ID");
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

void SipSession::setVerstatValueFrom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "found verstat parameter '", 25);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "' in ", 5);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " header", 7);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  *(a1 + 1664) = 1;
  std::string::basic_string[abi:ne200100]<0>(v26, "TN-Validation-Passed");
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = v27;
  v9 = v26[0];
  if (v27 >= 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v26[0];
  }

  v11 = strcasecmp(v7, v10);
  v12 = v11;
  if ((v8 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_27:
    v25 = 1;
LABEL_30:
    *(a1 + 1668) = v25;
    return;
  }

  operator delete(v9);
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(v26, "TN-Validation-Failed");
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = v27;
  v15 = v26[0];
  if (v27 >= 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v26[0];
  }

  v17 = strcasecmp(v13, v16);
  v18 = v17;
  if (v14 < 0)
  {
    operator delete(v15);
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  if (!v17)
  {
LABEL_29:
    v25 = 2;
    goto LABEL_30;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(v26, "No-TN-Validation");
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  v20 = v27;
  v21 = v26[0];
  if (v27 >= 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v26[0];
  }

  v23 = strcasecmp(v19, v22);
  v24 = v23;
  if (v20 < 0)
  {
    operator delete(v21);
    if (v24)
    {
      goto LABEL_25;
    }
  }

  else if (v23)
  {
LABEL_25:
    *(a1 + 1664) = 0;
    return;
  }

  *(a1 + 1668) = 0;
}

void *SipMessage::header<SipCallInfoHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Call-Info");
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

void *SipMessage::header<SipFromHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "From");
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

void SipSession::sendUpdate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v21 = 1073741826;
    v6 = ImsResult::operator<<<char [45]>(__p, "can't send an UPDATE in a terminated session");
    v7 = ImsLogContainer::logResult(a1, v6);
    ImsResult::ImsResult(a3, v7);
    ImsResult::~ImsResult(__p);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (byte_1EE2BD497 >= 0)
    {
      v9 = &SipSession::kUpdateTypeEmergencyLocationUpdate;
    }

    else
    {
      v9 = SipSession::kUpdateTypeEmergencyLocationUpdate;
    }

    v10 = strcasecmp(v8, v9);
    v18 = 0;
    v19 = 0;
    SipDialog::createRequestInDialog(*(a1 + 240), v10 == 0, &v18);
    if (!v10)
    {
      v11 = v19;
      v17[0] = v18;
      v17[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::addLocationToMessage(a1, v17);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    v15 = 0;
    v16 = 0;
    v12 = v19;
    v14[0] = v18;
    v14[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipSession::sendRequest(&v15, a1, v14, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v15)
    {
      __p[0] = "UpdateType";
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15 + 368, "UpdateType");
      std::string::operator=((v13 + 56), a2);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void sub_1E4E172CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleSessionMovedResponse(uint64_t a1, SipSession *a2, uint64_t *a3, uint64_t a4)
{
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  SipUri::SipUri(a1);
  v8 = *(*a4 + 264);
  v9 = *(*a4 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*v8 + 120))(v8);
  v11 = *(v10 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v10 + 8);
  }

  if (v11 != 6)
  {
    v17 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = *v10;
  }

  v14 = *v13;
  v15 = *(v13 + 4);
  v17 = v14 == *"INVITE" && v15 == *"TE";
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v17 && (SipSession::confirmed(a2) & 1) == 0)
  {
    v25 = 0;
    SipMessage::headerValueAsUint32(*a3, "Expires", &v25);
    v18 = SipMessage::header<SipContactHeader>(*a3);
    if (v18)
    {
      v19 = v18[9];
      if (v19)
      {
        if (v19 != v18[10])
        {
          v20 = v25;
          if (!v25)
          {
            v20 = SipParameterMap::uintParameter(v19 + 416, "expires", 0);
          }

          SipUri::operator=(a1, v19 + 8);
          memset(v24, 0, sizeof(v24));
          v22 = 0u;
          *v23 = 0u;
          v21 = time(0);
          BambiCallSessionMovedEvent::BambiCallSessionMovedEvent(&v22, (v19 + 8), v20 + v21);
          SipSession::fireCallEvent(a2, &v22);
          *&v22 = &unk_1F5ED0A18;
          SipUri::~SipUri(v24);
          *&v22 = &unk_1F5EC4090;
          if (v23[1])
          {
            std::__shared_weak_count::__release_weak(v23[1]);
          }
        }
      }
    }
  }
}

void sub_1E4E17574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  BambiCallSessionMovedEvent::~BambiCallSessionMovedEvent(&a9);
  SipUri::~SipUri(v9);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipContactHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Contact");
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

void SDPSession::applyOnStreams<SipSession::handleInviteOrUpdateErrorResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>,std::shared_ptr<SipDialogFork>)::$_0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  v3 = *(a2 + 1904);
  v4 = (a2 + 1912);
  if (v3 != (a2 + 1912))
  {
    while (1)
    {
      v7 = v3[5];
      v8 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "ReInviteUpgradeFailure");
      BambiCall::activateMediaSessionIfAppropriate(v8, v7, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = &unk_1F5EBDEF8;
      v14 = &_bambiDomain;
      v15 = 0;
      ImsResult::operator=(a1, &v13);
      ImsResult::~ImsResult(&v13);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = &unk_1F5EBDEF8;
      v14 = &_bambiDomain;
      v15 = 0;
      if (*(a1 + 8) != &_bambiDomain)
      {
        break;
      }

      v9 = *(a1 + 16);
      ImsResult::~ImsResult(&v13);
      if (!v9)
      {
        v10 = v3[1];
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
            v11 = v3[2];
            v12 = *v11 == v3;
            v3 = v11;
          }

          while (!v12);
        }

        v3 = v11;
        if (v11 != v4)
        {
          continue;
        }
      }

      return;
    }

    ImsResult::~ImsResult(&v13);
  }
}

void sub_1E4E177F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ImsResult::~ImsResult(&a9);
  ImsResult::~ImsResult(v25);
  _Unwind_Resume(a1);
}

void SipSession::handleInviteResponseToCancel(void *a1, void *a2, uint64_t a3)
{
  v23 = 0;
  *&v24.__r_.__value_.__r.__words[1] = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  *&v26[16] = 0u;
  v27 = 0u;
  v25 = 0u;
  *v26 = 0u;
  *(&v24.__r_.__value_.__s + 23) = 13;
  qmemcpy(&v24, "InternalError", 13);
  *&v26[12] = 0xA000001F4;
  v4 = *a2;
  if ((*(*a2 + 128) - 200) <= 0x63)
  {
    v5 = *(a3 + 8);
    v21 = *a3;
    v22 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *a2;
    }

    v6 = a2[1];
    v19 = v4;
    v20 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionInterface::addAckRetransmitHandlerForClientTransaction(a1, &v21, &v19, 0);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  v7 = a1[200];
  if (v7)
  {
    LODWORD(v23) = *v7;
    std::string::operator=(&v24, (v7 + 8));
    std::string::operator=(&v25, (v7 + 32));
    v8 = *(v7 + 56);
    *&v26[16] = *(v7 + 64);
    *&v26[8] = v8;
    std::string::operator=(&v26[24], (v7 + 72));
    v10 = *(v7 + 96);
    v9 = *(v7 + 104);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v28 + 1);
    *&v28 = v10;
    *(&v28 + 1) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v13 = *(v7 + 112);
    v12 = *(v7 + 120);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(&v29 + 1);
    *&v29 = v13;
    *(&v29 + 1) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v15 = *(v7 + 128);
    *(&v30 + 3) = *(v7 + 131);
    LODWORD(v30) = v15;
  }

  v16 = 0;
  v17 = 0;
  (*(*a1 + 120))(v18, a1, &v23, 0, &v16);
  ImsResult::~ImsResult(v18);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v29 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(*&v26[24]);
  }

  if ((v26[7] & 0x80000000) != 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E17A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, char a27)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(&a27);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipPEarlyMediaHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Early-Media");
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

void SipSession::processEarlyMediaHeader(uint64_t a1, uint64_t a2, std::string *a3)
{
  if (!a2)
  {
    return;
  }

  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Processing early media header", 29);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "sendrecv");
  if (a2 + 72 != v7)
  {
    v8 = 1;
LABEL_13:
    v16 = 2;
    goto LABEL_14;
  }

  v9 = v7;
  if (v7 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "sendonly"))
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (v9 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 64, "inactive"))
  {
    return;
  }

  v10 = *(a1 + 832);
  if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
  {
    v12 = v11;
    v13 = *(a1 + 824);
    if (!v13)
    {
      goto LABEL_59;
    }

    v14 = *(v13 + 384);
    if (v14)
    {
      v14 = std::__shared_weak_count::lock(v14);
      v15 = v14;
      if (v14)
      {
        v14 = *(v13 + 376);
      }
    }

    else
    {
      v15 = 0;
    }

    v28 = SipStack::prefs(v14);
    v29 = ImsPrefs::EnforceEarlyMediaInactiveDirection(v28);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v29)
    {
      v16 = 2;
    }

    else
    {
LABEL_59:
      v16 = 1;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v8 = 4;
  }

  else
  {
    v8 = 4;
    v16 = 1;
  }

LABEL_14:
  v17 = *(a1 + 832);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(a1 + 824);
      if (v19)
      {
        if (v8 == 3)
        {
          v20 = 2;
        }

        else
        {
          v20 = v8;
        }

        *(v19 + 488) = v20;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = *(a1 + 240);
  v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v21 + 2944, &a3->__r_.__value_.__l.__data_);
  if (v21 + 2952 == v22)
  {
    v24 = 0;
LABEL_29:
    v25 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "processEarlyMediaHeader: Fork not found. Fork tag: ", 51);
    *(v25 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v30, a3);
    (*(*v25 + 56))(v25, &v30);
    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_35;
  }

  v23 = *(v22 + 56);
  v24 = *(v22 + 64);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v23)
  {
    goto LABEL_29;
  }

  if (v8 == 3)
  {
    v8 = 2;
  }

  *(v23 + 984) = v8;
LABEL_35:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(a1 + 1500) != v16)
  {
    v26 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Setting early media support level to: ", 38);
    *(v26 + 17) = 0;
    if (v16 == 1)
    {
      v27 = "kEarlyMediaSupportInactive";
    }

    else
    {
      v27 = "kEarlyMediaSupportEnforced";
    }

    std::string::basic_string[abi:ne200100]<0>(&v35, v27);
    LoggableString::LoggableString(&v30, &v35);
    (*(*v26 + 40))(v26, &v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " was: ", 6);
    *(v26 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v33, off_1E876A0D8[*(a1 + 1500)]);
    LoggableString::LoggableString(&v34, &v33);
    (*(*v26 + 40))(v26, &v34);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    *(a1 + 1500) = v16;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E4E18034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

uint64_t SipSession::handleInviteOrUpdateResponse(int8x8_t *a1, uint64_t *a2, uint64_t *a3)
{
  v286 = *MEMORY[0x1E69E9840];
  v6 = a1[30];
  v7 = SipMessage::header<SipToHeader>(*a2);
  v8 = &ims::kEmptyString;
  if (v7)
  {
    v8 = SipUriHeader::tag(v7);
  }

  v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*&v6 + 2944, v8);
  if (*&v6 + 2952 == v9)
  {
    v10 = 0;
LABEL_26:
    v24 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "handleInviteOrUpdateResponse: no fork with remote tag ", 54);
    *(v24 + 17) = 0;
    v25 = SipMessage::header<SipToHeader>(*a2);
    if (v25)
    {
      v26 = SipUriHeader::tag(v25);
    }

    else
    {
      v26 = &ims::kEmptyString;
    }

    ObfuscatedString::ObfuscatedString(&v252, v26);
    (*(*v24 + 56))(v24, &v252);
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (SHIBYTE(v254) < 0)
    {
      operator delete(*(&v253 + 1));
    }

    if (SBYTE7(v253) < 0)
    {
      operator delete(v252);
    }

    if (a1[181].i8[0] == 1)
    {
      v27 = *a2;
      if (*(*a2 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&v252, *(v27 + 136), *(v27 + 144));
        v27 = *a2;
      }

      else
      {
        v252 = *(v27 + 136);
        *&v253 = *(v27 + 152);
      }

      SipSession::logLazuliMessageSessionSetup(a1, &v252, *(v27 + 128));
      if (SBYTE7(v253) < 0)
      {
        operator delete(v252);
      }
    }

    goto LABEL_211;
  }

  v11 = *(v9 + 56);
  v10 = *(v9 + 64);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  data = v11[32].__r_.__value_.__l.__data_;
  size = v11[32].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(*a3 + 264);
  v15 = *(*a3 + 272);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v235 = size;
  v16 = (*(*v14 + 120))(v14);
  v17 = *(v16 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17 != 6)
  {
    v23 = 0;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = *v16;
  }

  v20 = *v19;
  v21 = *(v19 + 4);
  v23 = v20 == *"INVITE" && v21 == *"TE";
  if (v15)
  {
LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_38:
  if (!v23)
  {
    goto LABEL_75;
  }

  if ((*(*a2 + 128) - 200) <= 0xFFFFFF9B)
  {
    v28 = *a3;
    v29 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "InviteType");
    v30 = &ims::kEmptyString;
    if (v28 + 376 != v29)
    {
      v30 = (v29 + 56);
    }

    v31 = *(v30 + 23);
    v32 = v31;
    if ((v31 & 0x80u) != 0)
    {
      v31 = *(v30 + 1);
    }

    if (v31 != 10)
    {
      goto LABEL_51;
    }

    if (v32 < 0)
    {
      v30 = *v30;
    }

    v33 = *v30;
    v34 = *(v30 + 4);
    if (v33 == 0x69766E49646C6F48 && v34 == 25972)
    {
      v44 = "HoldTimer";
    }

    else
    {
LABEL_51:
      v36 = *a3;
      v37 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "InviteType");
      v38 = &ims::kEmptyString;
      if (v36 + 376 != v37)
      {
        v38 = (v37 + 56);
      }

      v39 = *(v38 + 23);
      v40 = v39;
      if ((v39 & 0x80u) != 0)
      {
        v39 = *(v38 + 1);
      }

      if (v39 != 12)
      {
        goto LABEL_70;
      }

      if (v40 < 0)
      {
        v38 = *v38;
      }

      v41 = *v38;
      v42 = *(v38 + 2);
      if (v41 != 0x6E49656D75736552 || v42 != 1702127990)
      {
        goto LABEL_70;
      }

      v44 = "ResumeTimer";
    }

    SipTimerContainer::cancelTimer(a1 + 33, v44);
  }

LABEL_70:
  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    if (SipSession::emergency(a1))
    {
      if ((*(*a2 + 128) - 300) >= 0xFFFFFF39)
      {
        SipSessionInterface::stack(a1, &v252);
        SipTimerContainer::cancelTimer((*(v252 + 4512) + 5072), &kEmergencySessionSetupTimer);
        if (*(&v252 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v252 + 1));
        }
      }
    }
  }

LABEL_75:
  v45 = a2[1];
  v236 = *a2;
  if (*(*a2 + 128) < 0x12Cu)
  {
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = *(*a3 + 264);
    v55 = *(*a3 + 272);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = (*(*v54 + 120))(v54);
    if ((SipSession::confirmed(a1) & 1) == 0)
    {
      v57 = *(v236 + 128);
      if ((v57 - 180) > 9)
      {
        if ((v57 - 200) > 0x63)
        {
          goto LABEL_234;
        }

        v62 = *(v56 + 23);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = *(v56 + 8);
        }

        if (v62 != 6)
        {
          if (v62 != 5)
          {
            goto LABEL_234;
          }

          if (v63 >= 0)
          {
            v64 = v56;
          }

          else
          {
            v64 = *v56;
          }

          v65 = *v64;
          v66 = *"PRACK";
          v67 = *(v64 + 4);
          v68 = SipRequest::kMethodPrack[4];
          goto LABEL_219;
        }

        if (v63 >= 0)
        {
          v60 = v56;
        }

        else
        {
          v60 = *v56;
        }

        v61 = "UPDATE";
LABEL_218:
        v65 = *v60;
        v66 = *v61;
        v67 = *(v60 + 4);
        v68 = *(v61 + 2);
LABEL_219:
        if (v65 == v66 && v67 == v68)
        {
          v111 = SipMessage::header<SipPEarlyMediaHeader>(v236);
          v112 = SipMessage::header<SipToHeader>(v236);
          if (v112)
          {
            v113 = SipUriHeader::tag(v112);
          }

          else
          {
            v113 = &ims::kEmptyString;
          }

          SipSession::processEarlyMediaHeader(a1, v111, v113);
        }

        goto LABEL_234;
      }

      v58 = *(v56 + 23);
      v59 = v58;
      if ((v58 & 0x80u) != 0)
      {
        v58 = *(v56 + 8);
      }

      if (v58 == 6)
      {
        if (v59 >= 0)
        {
          v60 = v56;
        }

        else
        {
          v60 = *v56;
        }

        v61 = "INVITE";
        goto LABEL_218;
      }
    }

LABEL_234:
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    *buf = 0;
    *&buf[8] = 0;
    SipSessionInterface::stack(a1, buf);
    if (*buf)
    {
      if (*(*buf + 2817) == 1)
      {
        v116 = SipMessage::header<SipContactHeader>(*a2);
        if (v116)
        {
          v117 = v116[9];
          if (v117)
          {
            if (v117 != v116[10] && SipUri::isValidUri((v117 + 8)))
            {
              v118 = a1[30];
              std::string::basic_string[abi:ne200100]<0>(&v252, "+g.gsma.rcs.isbot");
              *(*&v118 + 2688) = v117 + 432 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v117 + 424, &v252);
              if (SBYTE7(v253) < 0)
              {
                operator delete(v252);
              }

              SipUri::operator=((*&a1[30] + 1936), v117 + 8);
            }
          }
        }
      }
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v119 = a2[1];
    v249 = *a2;
    v250 = v119;
    if (v119)
    {
      atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v120 = *a3;
    v121 = a1[31];
    v247 = a1[30];
    v248 = v121;
    if (v121)
    {
      atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipOfferAnswer::updateWithIncomingResponse(data, &v249, (v120 + 312), &v252);
    v122 = (*(**(&v252 + 1) + 24))(*(&v252 + 1), v253);
    ImsResult::~ImsResult(&v252);
    if (v248)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v248);
    }

    if (v250)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v250);
    }

    v123 = a2[1];
    v245 = *a2;
    v246 = v123;
    if (v123)
    {
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialogFork::handleTargetRefresh(v11, &v245);
    if (v246)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v246);
    }

    if (v23)
    {
      v124 = *a2;
      if ((*(*a2 + 128) - 200) <= 0x63)
      {
        v125 = a3[1];
        v243 = *a3;
        v244 = v125;
        if (v125)
        {
          atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
          v124 = *a2;
        }

        v126 = a2[1];
        v241 = v124;
        v242 = v126;
        if (v126)
        {
          atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v127 = SipOfferAnswer::localAnswerPending(*(*(data + 27) + 16), *(*(data + 27) + 24));
        SipSessionInterface::addAckRetransmitHandlerForClientTransaction(a1, &v243, &v241, v127);
        if (v242)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v242);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }
      }
    }

    if (v122)
    {
      if (*(*a2 + 128) - 200) >= 0x64 || !v23 || (SipSession::confirmed(a1))
      {
        *&v260 = 0;
        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        std::string::basic_string[abi:ne200100]<0>(buf, "InvalidSdp");
        SipSessionInterface::terminationReason(a1);
      }

      if (a1[181].i8[0] == 1)
      {
        v133 = qword_1EE2BD560;
        if (qword_1EE2BD560)
        {
          v134 = &qword_1EE2BD560;
          do
          {
            v135 = *(v133 + 32);
            v136 = v135 >= 0x25E;
            v137 = v135 < 0x25E;
            if (v136)
            {
              v134 = v133;
            }

            v133 = *(v133 + 8 * v137);
          }

          while (v133);
          v138 = &ims::kEmptyString;
          if (v134 != &qword_1EE2BD560)
          {
            v139 = *(v134 + 8);
            v140 = (v134 + 5);
            if (v139 <= 0x25E)
            {
              v138 = v140;
            }
          }
        }

        else
        {
          v138 = &ims::kEmptyString;
        }

        SipSession::logLazuliMessageSessionSetup(a1, v138, 0x25Eu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v252, "ReceivedRejectSdp");
      SipSession::bye(a1);
    }

    v128 = a1[185];
    v129 = a2[1];
    v240[0] = *a2;
    v240[1] = v129;
    if (v129)
    {
      atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v107 = v235;
    SipSessionTimer::updateFromIncomingResponse(v128, v240);
    if (v129)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    if (!SipSession::confirmed(a1) || a1[114].i8[1] == 1)
    {
      v130 = a1[192];
      v131 = a2[1];
      v238 = *a2;
      v239 = v131;
      if (v131)
      {
        atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::confirmed(a1);
      SipPreconditions::updateFromIncomingMessage(v130, v11 + 11, &v238);
      if (v239)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v239);
      }
    }

    if (v23 && (SipSession::confirmed(a1) & 1) == 0 && *(*a2 + 128) == 183)
    {
      SipSession::startLocalQosTimerMO(a1);
    }

    if (SipResponse::requiresPrack(*a2))
    {
      v132 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v132);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v132 + 8), "waiting for PRACK to complete before sending precondition update", 64);
      *(v132 + 17) = 0;
      (*(*v132 + 64))(v132, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v132 + 17) = 0;
    }

    else if (!v23 || (*(*a2 + 128) - 200) >= 0xFFFFFF9C)
    {
      SipDialogFork::sendPreconditionUpdate(v11, 1, v237);
      ImsResult::~ImsResult(v237);
    }

    if (v235)
    {
      goto LABEL_210;
    }

    goto LABEL_211;
  }

  v46 = a2[1];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *a3;
  v47 = a3[1];
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = *(v48 + 264);
  v50 = *(v48 + 272);
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v233 = v49;
  v234 = v50;
  v51 = SipMessage::body<SipSdpBody>(v49);
  if (v51)
  {
    v52 = v51[1];
    v53 = v51[2];
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        goto LABEL_122;
      }
    }

    else if (!v52)
    {
      goto LABEL_122;
    }

    v69 = v11[32].__r_.__value_.__l.__data_;
    v70 = v11[32].__r_.__value_.__l.__size_;
    if (v70)
    {
      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = SipOfferAnswer::remoteAnswerPending(v69);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      if (!v71)
      {
        goto LABEL_122;
      }
    }

    else if (!v71)
    {
      goto LABEL_122;
    }

    v72 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "reverting offer/answer state after failed session renegotiation", 63);
    *(v72 + 17) = 0;
    (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v72 + 17) = 0;
    v73 = v11[32].__r_.__value_.__l.__data_;
    v74 = v11[32].__r_.__value_.__l.__size_;
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    SipOfferAnswer::revert(v73);
  }

LABEL_122:
  v75 = *(v236 + 128);
  if (v75 == 302)
  {
    *buf = v236;
    *&buf[8] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v278.__r_.__value_.__r.__words[0] = v48;
    v278.__r_.__value_.__l.__size_ = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSession::handleSessionMovedResponse(&v252, a1, buf, &v278);
    SipUri::~SipUri(&v252);
LABEL_188:
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    v89 = v46;
    if (v46)
    {
      goto LABEL_191;
    }

    goto LABEL_192;
  }

  if (v75 == 422)
  {
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = *(v48 + 264);
    v77 = *(v48 + 272);
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = (*(*v76 + 120))(v76);
    v79 = *(v78 + 23);
    v80 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v79 = *(v78 + 8);
    }

    if (v79 == 6)
    {
      if (v80 >= 0)
      {
        v81 = v78;
      }

      else
      {
        v81 = *v78;
      }

      v82 = *v81;
      v83 = *(v81 + 4);
      v85 = v82 == *"INVITE" && v83 == *"TE";
    }

    else
    {
      v85 = 0;
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v85 && (SipSession::confirmed(a1) & 1) == 0)
    {
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      *buf = v236;
      *&buf[8] = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BambiCallSessionIntervalTooSmallEvent::BambiCallSessionIntervalTooSmallEvent(&v252, buf);
    }

    v95 = a1[185];
    *buf = v236;
    *&buf[8] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v278.__r_.__value_.__r.__words[0] = v48;
    v278.__r_.__value_.__l.__size_ = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v96 = SipSessionTimer::handleIntervalTooSmallResponse(v95, buf, &v278);
    if (v278.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v278.__r_.__value_.__l.__size_);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v96)
    {
      v97 = v48 + 376;
      if (v85)
      {
        v98 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
        if (v97 == v98)
        {
          v99 = &ims::kEmptyString;
        }

        else
        {
          v99 = (v98 + 56);
        }

        SipSession::sendInvite(a1, v99, &v252);
      }

      else
      {
        v101 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "UpdateType");
        if (v97 == v101)
        {
          v102 = &ims::kEmptyString;
        }

        else
        {
          v102 = (v101 + 56);
        }

        SipSession::sendUpdate(a1, v102, &v252);
      }

      ImsResult::~ImsResult(&v252);
    }

    goto LABEL_188;
  }

  v86 = a1[30];
  v87 = *(*&v86 + 232);
  if (v87)
  {
    v88 = std::__shared_weak_count::lock(v87);
    v89 = v88;
    if (v88)
    {
      v90 = *(*&v86 + 224);
      if (v90)
      {
        v91 = *(v90 + 256);
        v231 = *(v90 + 248);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v229 = v91;
        v230 = v88;
        if (!v231)
        {
          v114 = a1[23];
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            v227 = v47;
            (*(*&a1[18] + 16))(&v252);
            if ((SBYTE7(v253) & 0x80u) == 0)
            {
              v115 = &v252;
            }

            else
            {
              v115 = v252;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v115;
            _os_log_error_impl(&dword_1E4C3F000, v114, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SBYTE7(v253) < 0)
            {
              operator delete(v252);
            }

LABEL_435:
            v47 = v227;
          }

LABEL_436:
          if (v229)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v229);
          }

          v89 = v230;
          goto LABEL_191;
        }

        if (*(v236 + 128) == 301)
        {
          v92 = a1[104];
          if (v92)
          {
            v93 = std::__shared_weak_count::lock(v92);
            if (v93)
            {
              v94 = a1[103];
LABEL_358:
              v277 = 0;
              v275 = 0u;
              v276 = 0u;
              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              v267 = 0u;
              v268 = 0u;
              v265 = 0u;
              v266 = 0u;
              v263 = 0u;
              v264 = 0u;
              v261 = 0u;
              v262 = 0u;
              v259 = 0u;
              v260 = 0u;
              v257 = 0u;
              v258 = 0u;
              v255 = 0u;
              v256 = 0u;
              v253 = 0u;
              v254 = 0u;
              v252 = 0u;
              *buf = v236;
              *&buf[8] = v46;
              if (v46)
              {
                atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v278.__r_.__value_.__r.__words[0] = v48;
              v278.__r_.__value_.__l.__size_ = v47;
              if (v47)
              {
                atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleSessionMovedResponse(&v252, a1, buf, &v278);
              if (v47)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v47);
              }

              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              if (*&v94 && (*(**&v94 + 80))(v94) && SipUri::isValidUri(&v252))
              {
                v163 = HIBYTE(v259);
                if (v259 < 0)
                {
                  v163 = v259;
                }

                if (v163)
                {
                  v164 = (*(*a1 + 64))(a1);
                  (*(*a1 + 16))(a1, v164);
                  v165 = ImsOutStream::operator<<(v164, "Updating conference server URI to ");
                  (*(v252 + 40))(&v252, v165);
                  (*(*v165 + 64))(v165, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v165[17] = 0;
                  v166 = SipUserAgent::config(v231);
                  SipUri::operator=((v166 + 48), &v252);
                }
              }

              SipUri::~SipUri(&v252);
              if (!v93)
              {
                goto LABEL_436;
              }

              v145 = v93;
              goto LABEL_375;
            }
          }

          else
          {
            v93 = 0;
          }

          v94 = 0;
          goto LABEL_358;
        }

        SipSessionInterface::stack(a1, &v252);
        if (*(v252 + 2775) == 1 && (SipSession::confirmed(a1) & 1) == 0 && *(v236 + 128) == 486 && (v141 = (*(*v233 + 120))(v233), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v141, "INVITE")))
        {
          v142 = SipMessage::body<SipCallWaitingInfoBody>(v233);
          if (v142)
          {
            v143 = *(v142 + 96);
          }

          else
          {
            v143 = 0;
          }

          if (*(&v252 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v252 + 1));
          }

          if ((v143 & 1) == 0)
          {
            v200 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v200);
            v201 = ImsOutStream::operator<<(v200, "Faking network based call waiting");
            (*(*v201 + 64))(v201, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v201[17] = 0;
            v202 = a1[104];
            if (!v202)
            {
              goto LABEL_436;
            }

            v203 = std::__shared_weak_count::lock(v202);
            if (!v203)
            {
              goto LABEL_436;
            }

            v204 = v203;
            v227 = v47;
            v205 = a1[103];
            if (v205)
            {
              BambiCall::fakeNetworkBasedCallWaiting(v205);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v204);
            goto LABEL_435;
          }
        }

        else if (*(&v252 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v252 + 1));
        }

        if (*(v236 + 128) == 491)
        {
          if (!SipSession::confirmed(a1))
          {
            goto LABEL_436;
          }

          v144 = (*(*v233 + 120))(v233);
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "INVITE"))
          {
            goto LABEL_436;
          }

          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::schedulePendingInvite(a1, v48);
          if (!v47)
          {
            goto LABEL_436;
          }

          v145 = v47;
          goto LABEL_375;
        }

        if (*(*&a1[30] + 2960) > 1uLL)
        {
          v147 = (*(*v233 + 120))(v233);
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v147, "UPDATE"))
          {
            v148 = SipUserAgent::config(v231);
            if (SipResponseCodeMap::containsResponseCodeForMethod(v148 + 824, "UPDATE", *(v236 + 128), 0))
            {
              v149 = (*(*a1 + 32))(a1);
              (*(*a1 + 16))(a1, v149);
              v150 = ImsOutStream::operator<<(v149, "killing fork, but not terminating call");
              (*(*v150 + 64))(v150, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v150[17] = 0;
              v151 = *(v236 + 128);
              if (v151 == 481 || v151 == 408)
              {
                v152 = a1[30];
                *buf = v11;
                *&buf[8] = v10;
                if (v10)
                {
                  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v252, "Received 481 response to UPDATE");
                SipDialog::terminateForkWithBye(v152, buf, &v252);
                if (SBYTE7(v253) < 0)
                {
                  operator delete(v252);
                }

                v145 = *&buf[8];
                if (!*&buf[8])
                {
                  goto LABEL_436;
                }
              }

              else
              {
                v206 = a1[30];
                if (v10)
                {
                  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipDialog::removeForkWithRemoteTag(v206, v11 + 11);
                if (!v10)
                {
                  goto LABEL_436;
                }

                v145 = v10;
              }

LABEL_375:
              std::__shared_weak_count::__release_shared[abi:ne200100](v145);
              goto LABEL_436;
            }
          }
        }

        v153 = (*(*v233 + 120))(v233);
        v154 = *(v153 + 23);
        v155 = v154;
        if ((v154 & 0x80u) != 0)
        {
          v154 = *(v153 + 8);
        }

        if (v154 == 6)
        {
          v156 = v155 >= 0 ? v153 : *v153;
          v157 = *v156;
          v158 = *(v156 + 4);
          if (v157 == *"UPDATE" && v158 == *"TE")
          {
            v252 = 0uLL;
            *&v253 = 0;
            v196 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "UpdateType");
            v197 = &ims::kEmptyString;
            if (v48 + 376 != v196)
            {
              v197 = (v196 + 56);
            }

            if (*(v197 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v252, *v197, *(v197 + 1));
            }

            else
            {
              v252 = *v197;
              *&v253 = *(v197 + 2);
            }

            if (ims::caseInsensitiveStringCompare(&v252, &SipSession::kUpdateTypeEmergencyLocationUpdate))
            {
              v198 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v198);
              v199 = ImsOutStream::operator<<(v198, "ignoring emergency location update error response");
              (*(*v199 + 64))(v199, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v199[17] = 0;
              if (SBYTE7(v253) < 0)
              {
                operator delete(v252);
              }

              goto LABEL_436;
            }

            if (SBYTE7(v253) < 0)
            {
              operator delete(v252);
            }
          }
        }

        v160 = v48 + 376;
        if (v48 + 376 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "SessionRefresh") && *(SipUserAgent::config(v231) + 1152) == 1)
        {
          v161 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v161);
          v162 = ImsOutStream::operator<<(v161, "ignoring session refresh error response");
          (*(*v162 + 64))(v162, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v162[17] = 0;
          goto LABEL_436;
        }

        v279 = 0u;
        v280 = 0u;
        v167 = SipUserAgent::config(v231);
        *&v279 = &unk_1F5EF3C38;
        std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](&v279 + 1, v167 + 1096);
        if ((*(SipUserAgent::config(v231) + 915) & 1) == 0)
        {
          v252 = 0uLL;
          *&v253 = 0;
          ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
        }

        v168 = a1[104];
        if (!v168)
        {
          v169 = 0;
LABEL_390:
          if (SipSession::confirmed(a1))
          {
            goto LABEL_396;
          }

          v175 = *(v48 + 264);
          v176 = *(v48 + 272);
          if (v176)
          {
            atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v177 = (*(*v175 + 120))(v175);
          v178 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v177, "INVITE");
          if (v176)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v176);
          }

          if (!v178)
          {
LABEL_396:
            v179 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v179);
            v180 = ImsOutStream::operator<<(v179, "ending session due to ");
            MEMORY[0x1E6923350](*(v180 + 8), *(v236 + 128));
            *(v180 + 17) = 0;
            v181 = ImsOutStream::operator<<(v180, " response to ");
            v182 = *(v48 + 264);
            v183 = *(v48 + 272);
            if (v183)
            {
              atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v184 = (*(*v182 + 120))(v182);
            LoggableString::LoggableString(&v252, v184);
            (*(*v181 + 40))(v181, &v252);
            v185 = ImsOutStream::operator<<(v181, " request");
            (*(*v185 + 64))(v185, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v185[17] = 0;
            if (SBYTE7(v253) < 0)
            {
              operator delete(v252);
            }

            if (v183)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v183);
            }

            *&v268 = 0;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            std::ostringstream::basic_ostringstream[abi:ne200100](&v252);
            v186 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v252, "Remote end rejected ", 20);
            v187 = *(v48 + 264);
            v188 = *(v48 + 272);
            if (v188)
            {
              atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v189 = (*(*v187 + 120))(v187);
            v190 = *(v189 + 23);
            if (v190 >= 0)
            {
              v191 = v189;
            }

            else
            {
              v191 = *v189;
            }

            if (v190 >= 0)
            {
              v192 = *(v189 + 23);
            }

            else
            {
              v192 = *(v189 + 8);
            }

            v193 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v186, v191, v192);
            v194 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v193, " request ", 9);
            v195 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v194, " with response ", 15);
            MEMORY[0x1E6923350](v195, *(v236 + 128));
            if (v188)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v188);
            }

            v285 = 0;
            v283 = 0u;
            v284 = 0u;
            memset(v282, 0, sizeof(v282));
            memset(buf, 0, sizeof(buf));
            std::string::basic_string[abi:ne200100]<0>(&v278, "NetworkError");
            SipSessionInterface::terminationReason(a1);
          }

          if (!v169)
          {
            goto LABEL_415;
          }

          goto LABEL_414;
        }

        v169 = std::__shared_weak_count::lock(v168);
        if (!v169)
        {
          goto LABEL_390;
        }

        v232 = a1[103];
        if (!v232)
        {
          goto LABEL_390;
        }

        if (!SipSession::confirmed(a1))
        {
          goto LABEL_390;
        }

        v170 = SipMessage::body<SipSdpBody>(v233);
        if (!v170)
        {
          goto LABEL_390;
        }

        v228 = v47;
        v171 = v170[1];
        v172 = v170[2];
        if (v172)
        {
          atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v171 && (v173 = (*(*v233 + 120))(v233), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v173, "INVITE")))
        {
          IPTelephonyManager::getBambiClient(buf);
          v252 = 0uLL;
          v174 = BambiClient::callCountExcludingCall(*buf, &v252) == 1;
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }
        }

        else
        {
          v174 = 0;
        }

        if (v172)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v172);
          if (!v174)
          {
            goto LABEL_464;
          }
        }

        else if (!v174)
        {
LABEL_464:
          v47 = v228;
          goto LABEL_390;
        }

        v207 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
        if (v160 == v207)
        {
          v208 = &ims::kEmptyString;
        }

        else
        {
          v208 = (v207 + 56);
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v208, "HoldInvite"))
        {
          v209 = 1;
        }

        else
        {
          v210 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v48 + 368, "InviteType");
          if (v160 == v210)
          {
            v211 = &ims::kEmptyString;
          }

          else
          {
            v211 = (v210 + 56);
          }

          v209 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v211, "ResumeInvite");
        }

        std::string::basic_string[abi:ne200100]<0>(&v252, "INVITE");
        v212 = SipResponseCodeMap::containsResponseCodeForMethod(&v279, &v252, *(v236 + 128), 0);
        if (SBYTE7(v253) < 0)
        {
          operator delete(v252);
        }

        if (v212)
        {
          v213 = *(*a1 + 64);
          if (v209)
          {
            v214 = v213(a1);
            (*(*a1 + 16))(a1, v214);
            v215 = ImsOutStream::operator<<(v214, "received ");
            MEMORY[0x1E6923350](*(v215 + 8), *(v236 + 128));
            *(v215 + 17) = 0;
            v216 = ImsOutStream::operator<<(v215, " response to hold/resume reINVITE; falling back to original call setup");
            (*(*v216 + 64))(v216, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v216[17] = 0;
            v217 = SipMessage::body<SipSdpBody>(v233);
            v218 = v217;
            if (v217)
            {
              v219 = v217[1];
              v220 = v218[2];
              if (v220)
              {
                atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v219 = 0;
              v220 = 0;
            }

            isHeld = SDPModel::isHeld(v219);
            if (v220)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v220);
            }

            if (isHeld)
            {
              BambiCall::localHoldFailed(v232);
            }

            else
            {
              BambiCall::localResumeFailed(v232);
            }
          }

          else
          {
            v221 = v213(a1);
            (*(*a1 + 16))(a1, v221);
            v222 = ImsOutStream::operator<<(v221, "received ");
            MEMORY[0x1E6923350](*(v222 + 8), *(v236 + 128));
            *(v222 + 17) = 0;
            v223 = ImsOutStream::operator<<(v222, " to reINVITE; fall back to original call setup");
            (*(*v223 + 64))(v223, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v223[17] = 0;
            v224 = *(v232 + 24);
            v225 = *(v232 + 25);
            if (v225)
            {
              atomic_fetch_add_explicit(&v225->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *buf = v232;
            *&buf[8] = v169;
            atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
            SDPSession::applyOnStreams<SipSession::handleInviteOrUpdateErrorResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>,std::shared_ptr<SipDialogFork>)::$_0>(&v252, v224, buf);
            ImsResult::~ImsResult(&v252);
            std::__shared_weak_count::__release_shared[abi:ne200100](v169);
            if (v225)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v225);
            }
          }

          v47 = v228;
LABEL_414:
          std::__shared_weak_count::__release_shared[abi:ne200100](v169);
LABEL_415:
          *&v279 = &unk_1F5EF3C38;
          std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(&v279 + 8, v280);
          goto LABEL_436;
        }

        goto LABEL_464;
      }
    }
  }

  else
  {
    v89 = 0;
  }

  v100 = a1[23];
  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    (*(*&a1[18] + 16))(&v252);
    if ((SBYTE7(v253) & 0x80u) == 0)
    {
      v146 = &v252;
    }

    else
    {
      v146 = v252;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v146;
    _os_log_error_impl(&dword_1E4C3F000, v100, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SBYTE7(v253) < 0)
    {
      operator delete(v252);
    }

    if (v89)
    {
      goto LABEL_191;
    }
  }

  else if (v89)
  {
LABEL_191:
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

LABEL_192:
  if (v234)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v234);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v103 = a1[30];
  v104 = std::__shared_weak_count::lock(*(*&v103 + 232));
  if (*(*(*&v103 + 224) + 2817) == 1)
  {
    v105 = *a2;
    if (*(*a2 + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v252, *(v105 + 136), *(v105 + 144));
      v105 = *a2;
    }

    else
    {
      v252 = *(v105 + 136);
      *&v253 = *(v105 + 152);
    }

    SipSession::logLazuliMessageSessionSetup(a1, &v252, *(v105 + 128));
    if (SBYTE7(v253) < 0)
    {
      operator delete(v252);
    }

    bzero(&v252, 0x250uLL);
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 0;
    *&buf[24] = 0;
    memset(v282, 0, 56);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(&v252, 15, buf);
    *&v252 = &unk_1F5EC4038;
    ImsResult::~ImsResult(buf);
    LODWORD(v263) = *(*a2 + 128);
    SipUri::operator=((&v263 + 8), *&a1[30] + 240);
    v106 = a2[1];
    v251[0] = *a2;
    v251[1] = v106;
    if (v106)
    {
      atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
    }

    BambiCallSessionTerminationBaseEvent::setResponse(&v252, v251);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  v107 = v235;
  if (v235)
  {
LABEL_210:
    std::__shared_weak_count::__release_shared[abi:ne200100](v107);
  }

LABEL_211:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v108 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4E1A648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  STACK[0x4B0] = a11;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(&STACK[0x4B8], STACK[0x4C0]);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void SipSession::handleBye(std::__shared_weak_count *a1, SipMessage **a2, uint64_t *a3)
{
  if (SipSession::established(a1))
  {
    v6 = a1[10].__vftable;
    v7 = *a3;
    (*(**a2 + 120))();
    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipDialog::sendResponse(v6, v25);
    ImsResult::~ImsResult(v25);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    shared_weak_owners = a1[34].__shared_weak_owners_;
    if (shared_weak_owners && (v9 = std::__shared_weak_count::lock(shared_weak_owners)) != 0)
    {
      v10 = v9;
      shared_owners = a1[34].__shared_owners_;
      bzero(__p, 0x250uLL);
      v12 = 0;
      v21 = shared_owners;
      v22 = v10;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      bzero(__p, 0x250uLL);
      v10 = 0;
      v21 = 0;
      v22 = 0;
      v12 = 1;
    }

    BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(__p, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v13 = a2[1];
    v19 = *a2;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionInterface::stack(a1, &v17);
    BambiCallSessionTerminationBaseEvent::setReasonFromIncomingByeOrCancelRequest(__p, &v19, v17 + 319);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v14 = *a2;
    v15 = a2[1];
    v16[0] = v14;
    v16[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    BambiCallSessionTerminationBaseEvent::setReferrerFromIncomingByeRequest(__p, v16);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    SipSession::terminateWithEvent(a1, __p, 13);
    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(__p);
    if ((v12 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E1AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  JUMPOUT(0x1E4E1AEF4);
}

void sub_1E4E1AF1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E4E1AF00);
}

uint64_t SipSession::established(SipSession *this)
{
  v2 = *(this + 96);
  v3 = *(this + 97);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v6 = 0;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v4 = *(this + 96);
  v5 = *(this + 97);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 136))(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_1E4E1AFE0(_Unwind_Exception *exception_object)
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

void SipSession::handleOptions(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  SipResponse::create(200, v5);
}

void sub_1E4E1B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char a27)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SipUri::~SipUri(&a27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  v32 = *(v30 - 152);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v30 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1B758()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x1E4E1B750);
  }

  JUMPOUT(0x1E4E1B74CLL);
}

void SipSession::handleInfo(std::__shared_weak_count *a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  SipSessionInterface::stack(a1, &v17);
  if (v17 && *(v17 + 2817) == 1)
  {
    v5 = *(v17 + 31);
    v6 = *(v17 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *(v5 + 264);
      v8 = *(v5 + 272);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = a2[1];
      v15 = *a2;
      v16 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 40))(v7, &v15, &v13);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      LODWORD(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = 1;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v11 = a2[1];
    v12 = *a2;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(200, &v17);
  }
}

void sub_1E4E1B9DC(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  v6 = *(v4 - 56);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E1BA70()
{
  if (!*(v0 - 104))
  {
    JUMPOUT(0x1E4E1BA68);
  }

  JUMPOUT(0x1E4E1BA64);
}

uint64_t SipSession::handleRequest(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handling ", 9);
  *(v6 + 17) = 0;
  v7 = (*(**a2 + 120))();
  LoggableString::LoggableString(__p, v7);
  (*(*v6 + 40))(v6, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " request in state ", 18);
  *(v6 + 17) = 0;
  v8 = (*(*(a1 + 712) + 24))(a1 + 712);
  v9 = (*(*(a1 + 712) + 16))(a1 + 712, v8);
  LoggableString::LoggableString(&v42, v9);
  (*(*v6 + 40))(v6, &v42);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = SipMessage::header<SipFromHeader>(*a2);
  if (v10)
  {
    v11 = SipUriHeader::tag(v10);
  }

  else
  {
    v11 = &ims::kEmptyString;
  }

  std::string::operator=((a1 + 1640), v11);
  v12 = (*(**a2 + 120))();
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13 != 6 || (v14 >= 0 ? (v15 = v12) : (v15 = *v12), (v16 = *v15, v17 = *(v15 + 4), v16 == *"INVITE") ? (v18 = v17 == *"TE") : (v18 = 0), !v18 || !*(a1 + 1464)))
  {
    v19 = *(a1 + 768);
    v20 = *(a1 + 776);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (!v19)
      {
        goto LABEL_37;
      }

      v21 = *(a1 + 776);
      v19 = *(a1 + 768);
      if (v21)
      {
        v22 = 0;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_25;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_37;
      }

      v21 = 0;
    }

    v22 = 1;
LABEL_25:
    v23 = a2[1];
    v35 = *a2;
    v36 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = a3[1];
    v33 = *a3;
    v34 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (*(*v19 + 88))(v19, &v35, &v33);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if ((v22 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v25)
    {
      return 1;
    }

LABEL_37:
    *&v42.__r_.__value_.__l.__data_ = 0uLL;
    v27 = a2[1];
    v32 = *a2;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    SipResponse::create(405, &v42);
  }

  v29 = *(a1 + 1472);
  v39 = *(a1 + 1464);
  v40 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = a3[1];
  v37 = *a3;
  v38 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 240))(__p, a1, &v39, &v37);
  v31 = (*(*__p[0].__r_.__value_.__l.__size_ + 24))(__p[0].__r_.__value_.__l.__size_, LODWORD(__p[0].__r_.__value_.__r.__words[2]));
  ImsResult::~ImsResult(__p);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v26 = v31 ^ 1u;
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  return v26;
}

void sub_1E4E1BFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  ImsResult::~ImsResult(&__p);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t SipSession::handleResponse(SipSession *a1, uint64_t *a2, char ***a3)
{
  v191[8] = *MEMORY[0x1E69E9840];
  v6 = SipMessage::header<SipToHeader>(*a2);
  if (v6)
  {
    v7 = SipUriHeader::tag(v6);
  }

  else
  {
    v7 = &ims::kEmptyString;
  }

  std::string::operator=((a1 + 1640), v7);
  v8 = a2[1];
  v181[0] = *a2;
  v181[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  v180[0] = *a3;
  v180[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipSessionInterface::handleResponse(a1, v181, v180);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v10)
  {
    v11 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "handling ", 9);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923350](*(v11 + 8), *(*a2 + 128));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " response to ", 13);
    *(v11 + 17) = 0;
    v12 = (*a3)[33];
    v13 = (*a3)[34];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (*(*v12 + 120))(v12);
    LoggableString::LoggableString(&__str, v14);
    (*(*v11 + 40))(v11, &__str);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " request in state ", 18);
    *(v11 + 17) = 0;
    v15 = (*(*(a1 + 89) + 24))(a1 + 89);
    v16 = (*(*(a1 + 89) + 16))(a1 + 89, v15);
    LoggableString::LoggableString(&__p, v16);
    (*(*v11 + 40))(v11, &__p);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v17 = *(a1 + 30);
    v18 = SipMessage::header<SipToHeader>(*a2);
    if (v18)
    {
      v19 = SipUriHeader::tag(v18);
    }

    else
    {
      v19 = &ims::kEmptyString;
    }

    v20 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v17 + 2944, v19);
    if (v17 + 2952 == v20)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v22 = *(v20 + 56);
      v21 = *(v20 + 64);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v23 = (*a3)[33];
    v24 = (*a3)[34];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (*(*v23 + 120))(v23);
    v26 = *(v25 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v25 + 8);
    }

    if (v26 == 5)
    {
      if (v27 >= 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = *v25;
      }

      v29 = *v28;
      v30 = *(v28 + 4);
      v32 = v29 == *"PRACK" && v30 == SipRequest::kMethodPrack[4];
      if (!v24)
      {
LABEL_46:
        if (v32)
        {
          if ((*(*a2 + 128) - 200) <= 0x63)
          {
            if (!v22)
            {
              goto LABEL_310;
            }

            v33 = SipMessage::body<SipSdpBody>(*a2);
            if (!v33)
            {
              goto LABEL_310;
            }

            v35 = v33[1];
            v34 = v33[2];
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            if (!v35)
            {
              goto LABEL_310;
            }

            data = v22[32].__r_.__value_.__l.__data_;
            size = v22[32].__r_.__value_.__l.__size_;
            if (size)
            {
              atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = a2[1];
            v177 = *a2;
            v178 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v39 = *a3;
            v40 = *(a1 + 31);
            v175 = *(a1 + 30);
            v176 = v40;
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipOfferAnswer::updateWithIncomingResponse(data, &v177, v39 + 39, &__str);
            v41 = (*(*__str.__r_.__value_.__l.__size_ + 24))(__str.__r_.__value_.__l.__size_, LODWORD(__str.__r_.__value_.__r.__words[2]));
            ImsResult::~ImsResult(&__str);
            if (v176)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v176);
            }

            if (v178)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v178);
            }

            if (size)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](size);
            }

            if (v41)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "InvalidSdp");
              SipSession::hangUp(a1);
            }

            if (SipSession::confirmed(a1) && *(a1 + 913) != 1)
            {
              goto LABEL_310;
            }

            v71 = *(a1 + 192);
            v72 = a2[1];
            v173 = *a2;
            v174 = v72;
            if (v72)
            {
              atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
            }

            SipSession::confirmed(a1);
            SipPreconditions::updateFromIncomingMessage(v71, v22 + 11, &v173);
            v73 = v174;
            if (!v174)
            {
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          v52 = *(a1 + 104);
          if (v52)
          {
            v53 = std::__shared_weak_count::lock(v52);
            if (v53)
            {
              v54 = v53;
              v55 = *(a1 + 103);
              if (v55)
              {
                v56 = *(v55 + 448);
                if (v56)
                {
                  v57 = *(v55 + 440);
                  atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v58 = std::__shared_weak_count::lock(v56);
                  std::__shared_weak_count::__release_weak(v56);
                  if (v58)
                  {
                    if (v57)
                    {
                      v59 = a2[1];
                      v171 = *a2;
                      v172 = v59;
                      if (v59)
                      {
                        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v169 = v55;
                      v170 = v54;
                      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
                      (*(*v57 + 24))(v57, &v171, &v169);
                      if (v170)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
                      }

                      if (v172)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v172);
                      }
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__str, a1 + 19);
          v60 = __str.__r_.__value_.__l.__size_;
          if (__str.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
            atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(a1 + 30);
          v62 = *(v61 + 232);
          if (v62 && (v63 = std::__shared_weak_count::lock(v62)) != 0)
          {
            v64 = v63;
            v65 = *(v61 + 224);
            if (v65)
            {
              v66 = *(v65 + 248);
              v67 = *(v65 + 256);
              if (v67)
              {
                atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v66)
              {
                v68 = *(SipUserAgent::config(v66) + 860);
              }

              else
              {
                v68 = 0;
              }

              if (v67)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v67);
              }
            }

            else
            {
              v68 = 0;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          else
          {
            v68 = 0;
          }

          v98 = (*a3)[33];
          v99 = (*a3)[34];
          if (v99)
          {
            atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v100 = SipMessage::body<SipSdpBody>(v98);
          if (v100)
          {
            v102 = v100[1];
            v101 = v100[2];
            if (v101)
            {
              atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
              if (v102)
              {
                v103 = 1;
              }

              else
              {
                v103 = v68 == 0;
              }

              v104 = v103;
              std::__shared_weak_count::__release_shared[abi:ne200100](v101);
              goto LABEL_191;
            }
          }

          else
          {
            v102 = 0;
          }

          if (v102)
          {
            v105 = 1;
          }

          else
          {
            v105 = v68 == 0;
          }

          v104 = v105;
LABEL_191:
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
          }

          v106 = *(*a2 + 128);
          if ((v104 & 1) == 0)
          {
            *(a1 + 444) = v106;
            if (v60)
            {
              atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v191[7] = 0;
            operator new();
          }

          if (v106 == 481)
          {
            SipSessionInterface::stack(a1, &__str);
            v107 = SipStack::prefs(__str.__r_.__value_.__l.__data_);
            v108 = ImsPrefs::RemoveForkOnTransactionDoesNotExist(v107);
            if (__str.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
            }

            if (v108)
            {
              v109 = *(a1 + 30);
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v22)
              {
                SipDialog::removeForkWithRemoteTag(v109, v22 + 11);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }

              goto LABEL_209;
            }

            v106 = *(*a2 + 128);
          }

          SipSession::handlePrackErrorResponse(a1, v106);
LABEL_209:
          if (v60)
          {
            std::__shared_weak_count::__release_weak(v60);
            std::__shared_weak_count::__release_weak(v60);
          }

          goto LABEL_310;
        }

        v42 = (*a3)[33];
        v43 = (*a3)[34];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = (*(*v42 + 120))(v42);
        v45 = *(v44 + 23);
        v46 = v45;
        if ((v45 & 0x80u) != 0)
        {
          v45 = *(v44 + 8);
        }

        if (v45 == 6)
        {
          if (v46 >= 0)
          {
            v47 = v44;
          }

          else
          {
            v47 = *v44;
          }

          v48 = *v47;
          v49 = *(v47 + 4);
          v51 = v48 == *"INVITE" && v49 == *"TE";
          if (!v43)
          {
LABEL_108:
            if (!v51)
            {
              goto LABEL_140;
            }

            memset(&__str, 0, sizeof(__str));
            if (!SipMessage::headerValueAsString(*a2, "MLS-Opaque-Token"))
            {
              goto LABEL_130;
            }

            v69 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v69 = __str.__r_.__value_.__l.__size_;
            }

            if (!v69)
            {
LABEL_130:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              v79 = SipMessage::header<SipContactHeader>(*a2);
              if (v79)
              {
                v80 = v79[9] == v79[10] ? 0 : v79[9];
                if (*(a1 + 1448) == 1 && v80 && (SipUri::matches((v80 + 8), (*(a1 + 30) + 240)) & 1) == 0)
                {
                  v81 = (*(*a1 + 64))(a1);
                  (*(*a1 + 16))(a1, v81);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v81 + 8), "Updating URI for dialog from remote", 35);
                  *(v81 + 17) = 0;
                  (*(*v81 + 64))(v81, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v81 + 17) = 0;
                  SipDialog::updateRemoteUri(*(a1 + 30), (v80 + 8));
                }
              }

LABEL_140:
              v82 = *(a1 + 96);
              v83 = *(a1 + 97);
              if (v83)
              {
                atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                if (!v82)
                {
                  goto LABEL_157;
                }

                v84 = *(a1 + 97);
                v82 = *(a1 + 96);
                if (v84)
                {
                  v85 = 0;
                  atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_147:
                  v86 = a2[1];
                  v167 = *a2;
                  v168 = v86;
                  if (v86)
                  {
                    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v87 = a3[1];
                  v165 = *a3;
                  v166 = v87;
                  if (v87)
                  {
                    atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v82 + 96))(v82, &v167, &v165);
                  if (v166)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v166);
                  }

                  if (v168)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v168);
                  }

                  if ((v85 & 1) == 0)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
                  }

LABEL_157:
                  {
LABEL_310:
                    if (v21)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                    }

                    goto LABEL_312;
                  }

                  v91 = v90;
                  v92 = a3[1];
                  if (v92)
                  {
                    atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v94 = *a2;
                  v93 = a2[1];
                  if (v93)
                  {
                    atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v92)
                  {
                    atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (!SipResponse::requiresPrack(v94))
                  {
                    goto LABEL_303;
                  }

                  v95 = *(a1 + 30);
                  v96 = SipMessage::header<SipToHeader>(v94);
                  if (v96)
                  {
                    v97 = SipUriHeader::tag(v96);
                  }

                  else
                  {
                    v97 = &ims::kEmptyString;
                  }

                  v110 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v95 + 2944, v97);
                  if (v95 + 2952 == v110)
                  {
                    v112 = 0;
                  }

                  else
                  {
                    v111 = *(v110 + 56);
                    v112 = *(v110 + 64);
                    if (v112)
                    {
                      atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v111)
                    {
                      v113 = SipMessage::header<SipRSeqHeader>(v94);
                      if (v113)
                      {
                        v164 = v113[15];
                      }

                      else
                      {
                        v164 = 0;
                      }

                      v117 = (v91 + 312);
                      v118 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v111 + 784, v117);
                      if (v111 + 792 != v118)
                      {
                        v119 = *(v118 + 56);
                        if (v119)
                        {
                          if (v164 <= v119)
                          {
                            v121 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v121);
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v121 + 8), "ignoring duplicate response rseq=", 33);
                            *(v121 + 17) = 0;
                            MEMORY[0x1E6923350](*(v121 + 8), v164);
                            *(v121 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v121 + 8), ", cseq=", 7);
                            *(v121 + 17) = 0;
                            v127 = SipMessage::header<SipCSeqHeader>(v94);
                            if (v127)
                            {
                              v128 = v127[15];
                            }

                            else
                            {
                              v128 = 0;
                            }

                            MEMORY[0x1E6923350](*(v121 + 8), v128);
                            *(v121 + 17) = 0;
                            (*(*v121 + 64))(v121, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                            goto LABEL_270;
                          }

                          v120 = v119 + 1;
                          if (v164 > v120)
                          {
                            v121 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v121);
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v121 + 8), "received out-of-order response (rseq=", 37);
                            *(v121 + 17) = 0;
                            MEMORY[0x1E6923350](*(v121 + 8), v164);
                            *(v121 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v121 + 8), ", expecting ", 12);
                            *(v121 + 17) = 0;
                            MEMORY[0x1E6923350](*(v121 + 8), v120);
                            *(v121 + 17) = 0;
                            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v121 + 8), ")", 1);
                            *(v121 + 17) = 0;
                            (*(*v121 + 64))(v121, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_270:
                            *(v121 + 17) = 0;
LABEL_301:
                            if (v112)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v112);
                            }

LABEL_303:
                            if (v92)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v92);
                            }

                            if (v93)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v93);
                            }

                            if (!v92)
                            {
                              goto LABEL_310;
                            }

                            v73 = v92;
LABEL_309:
                            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
                            goto LABEL_310;
                          }
                        }
                      }

                      v163 = v117;
                      *&__p.__r_.__value_.__l.__data_ = 0uLL;
                      SipDialog::createRequestInDialog(*(a1 + 30), 0, &__p);
                      v122 = __p.__r_.__value_.__r.__words[0];
                      v123 = SipMessageEncodingMap::headerPrototypeWithName(*(__p.__r_.__value_.__r.__words[0] + 120), "RAck");
                      if (v123)
                      {
                        v124 = **v123;
                        if (v123)
                        {
                          v125 = (*(*v123 + 4))(v123);
                          if (v125)
                          {
                            v123 = SipMessage::addHeader(v122, v125, 0);
                            if (v123)
                            {
                              v126 = **v123;
                            }
                          }

                          else
                          {
                            v123 = 0;
                          }
                        }
                      }

                      v191[0] = v94;
                      v191[1] = v93;
                      if (v93)
                      {
                        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v129 = SipRAckHeader::fromResponse(v123, v191);
                      if (v93)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v93);
                      }

                      if ((v129 & 1) == 0)
                      {
                        v137 = (*(*a1 + 32))(a1);
                        (*(*a1 + 16))(a1, v137);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v137 + 8), "unable to initialize PRACK from response (missing RSeq or CSeq)", 63);
                        *(v137 + 17) = 0;
                        (*(*v137 + 64))(v137, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v137 + 17) = 0;
LABEL_299:
                        if (__p.__r_.__value_.__l.__size_)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                        }

                        goto LABEL_301;
                      }

                      v162 = v112;
                      v130 = *(v111 + 768);
                      v131 = *(v111 + 776);
                      if (v131)
                      {
                        atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v132 = SipOfferAnswer::localAnswerPending(*(*(v130 + 216) + 16), *(*(v130 + 216) + 24));
                      if (v131)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v131);
                      }

                      if (v132)
                      {
                        v112 = v162;
                        v133 = (*(*a1 + 64))(a1);
                        (*(*a1 + 16))(a1, v133);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v133 + 8), "we need to send an SDP answer", 29);
                        *(v133 + 17) = 0;
                        (*(*v133 + 64))(v133, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v133 + 17) = 0;
                        (*(*a1 + 128))(&__str, a1);
                        v134 = __str.__r_.__value_.__r.__words[0];
                        if (__str.__r_.__value_.__l.__size_)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
                        }

                        if (v134)
                        {
                          (*(*a1 + 128))(&v189, a1);
                          operator new();
                        }

                        v144 = (*(*a1 + 56))(a1);
                        (*(*a1 + 16))(a1, v144);
                        v143 = ImsOutStream::operator<<(v144, "no local SDP available");
                        (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      }

                      else
                      {
                        v112 = v162;
                        if (SipPreconditions::needToSendUpdateInFork(*(a1 + 192), (v111 + 264)))
                        {
                          if (*(a1 + 914) == 1)
                          {
                            v138 = *(v111 + 768);
                            v139 = *(v111 + 776);
                            if (v139)
                            {
                              atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v140 = SipOfferAnswer::localSdpPending(*(*(v138 + 216) + 16), *(*(v138 + 216) + 24));
                            if (v139)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v139);
                            }

                            v141 = *(*a1 + 64);
                            if (!v140)
                            {
                              v112 = v162;
                              v159 = v141(a1);
                              (*(*a1 + 16))(a1, v159);
                              v160 = ImsOutStream::operator<<(v159, "need to update preconditions, so let's send it in our PRACK");
                              (*(*v160 + 64))(v160, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                              v160[17] = 0;
                              SipDialogFork::createSdpOffer(v111, "PRACK", &SipSession::kUpdateTypePreconditions, &__str);
                              v135 = __str.__r_.__value_.__l.__size_;
                              if (__str.__r_.__value_.__r.__words[0])
                              {
                                v161 = *&__str.__r_.__value_.__l.__data_;
                                v136 = (*(*a1 + 64))(a1);
                                (*(*a1 + 16))(a1, v136);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v136 + 8), "adding SDP to prack", 19);
                                *(v136 + 17) = 0;
                                (*(*v136 + 64))(v136, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                                *(v136 + 17) = 0;
                                v190 = v161;
                                if (v135)
                                {
                                  atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
                                }

                                SipMessage::setSdp();
                              }

                              goto LABEL_274;
                            }

                            v112 = v162;
                            v142 = v141(a1);
                            (*(*a1 + 16))(a1, v142);
                            v143 = ImsOutStream::operator<<(v142, "need to update preconditions, but we already have an outstanding offer");
                            (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          }

                          else
                          {
                            v145 = (*(*a1 + 64))(a1);
                            (*(*a1 + 16))(a1, v145);
                            v143 = ImsOutStream::operator<<(v145, "sending preconditions in PRACK is not enabled");
                            (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          }
                        }

                        else
                        {
                          v143 = (*(*a1 + 64))(a1);
                          (*(*a1 + 16))(a1, v143);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v143 + 8), "We neither have a local SDP answer pending nor do we need to update preconditions.", 82);
                          *(v143 + 17) = 0;
                          (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        }
                      }

                      v135 = 0;
                      *(v143 + 17) = 0;
LABEL_274:
                      v146 = (*(*a1 + 64))(a1);
                      (*(*a1 + 16))(a1, v146);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v146 + 8), "PRACK doesn't need SDP", 22);
                      *(v146 + 17) = 0;
                      (*(*v146 + 64))(v146, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v146 + 17) = 0;
                      v187 = 0;
                      v188 = 0;
                      v147 = __p.__r_.__value_.__l.__size_;
                      v186 = *&__p.__r_.__value_.__l.__data_;
                      if (__p.__r_.__value_.__l.__size_)
                      {
                        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                      }

                      v148 = SipMessage::header<SipToHeader>(v94);
                      if (v148)
                      {
                        v149 = SipUriHeader::tag(v148);
                      }

                      else
                      {
                        v149 = &ims::kEmptyString;
                      }

                      SipSession::sendRequest(&v187, a1, &v186, v149);
                      if (v147)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v147);
                      }

                      v150 = v187;
                      if (v187)
                      {
                        v151 = SipMessage::body<SipSdpBody>(__p.__r_.__value_.__l.__data_);
                        if (v151)
                        {
                          v153 = v151[1];
                          v152 = v151[2];
                          if (v152)
                          {
                            atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                            std::__shared_weak_count::__release_shared[abi:ne200100](v152);
                          }

                          if (v153)
                          {
                            v154 = *(v111 + 768);
                            v155 = *(v111 + 776);
                            if (v155)
                            {
                              atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v156 = __p.__r_.__value_.__l.__size_;
                            v182 = *&__p.__r_.__value_.__l.__data_;
                            if (__p.__r_.__value_.__l.__size_)
                            {
                              atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
                            }

                            SipOfferAnswer::updateWithOutgoingRequest(v154, &v182, v150 + 312, &__str);
                            ImsResult::~ImsResult(&__str);
                            if (v156)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v156);
                            }

                            if (v155)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v155);
                            }
                          }
                        }

                        v191[3] = v163;
                        *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v111 + 784, v163) + 56) = v164;
                      }

                      if (v188)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v188);
                      }

                      if (v135)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
                      }

                      goto LABEL_299;
                    }
                  }

                  v114 = (*(*a1 + 56))(a1);
                  (*(*a1 + 16))(a1, v114);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v114 + 8), "sendPrack: no fork with remote tag ", 35);
                  *(v114 + 17) = 0;
                  v115 = SipMessage::header<SipToHeader>(v94);
                  if (v115)
                  {
                    v116 = SipUriHeader::tag(v115);
                  }

                  else
                  {
                    v116 = &ims::kEmptyString;
                  }

                  ObfuscatedString::ObfuscatedString(&__str, v116);
                  (*(*v114 + 56))(v114, &__str);
                  (*(*v114 + 64))(v114, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v114 + 17) = 0;
                  if (v185 < 0)
                  {
                    operator delete(v184);
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_301;
                }
              }

              else
              {
                if (!v82)
                {
                  goto LABEL_157;
                }

                v84 = 0;
              }

              v85 = 1;
              goto LABEL_147;
            }

            v70 = *(a1 + 30);
            if (*(v70 + 2647) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v70 + 2624), *(v70 + 2632));
            }

            else
            {
              __p = *(v70 + 2624);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v76 = __p.__r_.__value_.__l.__size_;
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v76)
              {
                goto LABEL_126;
              }
            }

            else if (*(&__p.__r_.__value_.__s + 23))
            {
LABEL_126:
              v74 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v74);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v74 + 8), "Overriding MLS opaque token with server response value", 54);
              *(v74 + 17) = 0;
              v75 = (v74 + 17);
              (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_129:
              *v75 = 0;
              std::string::operator=((*(a1 + 30) + 2624), &__str);
              goto LABEL_130;
            }

            v77 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v77);
            v78 = ImsOutStream::operator<<(v77, "Updating MLS opaque token value from server response");
            (*(*v78 + 64))(v78, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v75 = (v78 + 17);
            goto LABEL_129;
          }
        }

        else
        {
          v51 = 0;
          if (!v43)
          {
            goto LABEL_108;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        goto LABEL_108;
      }
    }

    else
    {
      v32 = 0;
      if (!v24)
      {
        goto LABEL_46;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    goto LABEL_46;
  }

LABEL_312:
  v157 = *MEMORY[0x1E69E9840];
  return 1;
}