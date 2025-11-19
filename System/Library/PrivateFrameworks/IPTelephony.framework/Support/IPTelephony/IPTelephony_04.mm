void std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC0838;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC0838;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIK24BambiConferenceCallStateEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIK24BambiConferenceCallStateEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AVCRTTSession::AVCRTTSession(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, ImsPrefs *a5, uint64_t *a6, __int128 *a7, NSObject **a8)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable((a1 + 520));
  v16 = a2[1];
  v31 = *a2;
  v32 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a4[1];
  v29 = *a4;
  v30 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a6[1];
  v27 = *a6;
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AVCRTPSession<AVCTextStream>::AVCRTPSession(a1, &off_1F5EC0B10, &v31, a3, &v29, a5, &v27, a7, a8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  *a1 = &unk_1F5EC08F8;
  *(a1 + 520) = &unk_1F5EC0AF0;
  *(a1 + 8) = &unk_1F5EC09A8;
  *(a1 + 96) = &unk_1F5EC0AB0;
  *(a1 + 425) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  std::string::basic_string[abi:ne200100]<0>(v25, "avc.rtt.session");
  v21[0] = 0;
  v24 = 0;
  v19 = ims::debug(v25, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "AVCRTTSession", 13);
  *(v19 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [sessionId=", 12);
  *(v19 + 17) = 0;
  MEMORY[0x1E69233B0](*(v19 + 8), *(a1 + 32));
  *(v19 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  ++RTPManager::kRTTSessionCount;
  *(a1 + 88) = 0;
  return a1;
}

void sub_1E4C88E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (*(v30 + 479) < 0)
  {
    operator delete(*(v30 + 456));
  }

  AVCRTPSession<AVCTextStream>::~AVCRTPSession(v30, &off_1F5EC0B10);
  MEMORY[0x1E69225A0](v30 + 560);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v30 + 528));
  _Unwind_Resume(a1);
}

void AVCRTTSession::~AVCRTTSession(AVCRTTSession *this)
{
  *this = &unk_1F5EC08F8;
  *(this + 65) = &unk_1F5EC0AF0;
  *(this + 1) = &unk_1F5EC09A8;
  *(this + 12) = &unk_1F5EC0AB0;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "avc.rtt.session");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~AVCRTTSession", 14);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
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

  --RTPManager::kRTTSessionCount;
  if ([*(this + 45) delegate])
  {

    [*(this + 45) setDelegate:0];
  }

  nw_release(*(this + 54));
  nw_release(*(this + 55));
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  AVCRTPSession<AVCTextStream>::~AVCRTPSession(this, &off_1F5EC0B10);
  MEMORY[0x1E69225A0](this + 560);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 66);
}

{
  AVCRTTSession::~AVCRTTSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toAVCRTTSession::~AVCRTTSession(AVCRTTSession *this)
{
  AVCRTTSession::~AVCRTTSession((this - 8));
}

{
  AVCRTTSession::~AVCRTTSession((this - 96));
}

{
  AVCRTTSession::~AVCRTTSession((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  AVCRTTSession::~AVCRTTSession((this - 96));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toAVCRTTSession::~AVCRTTSession(AVCRTTSession *this)
{
  AVCRTTSession::~AVCRTTSession((this + *(*this - 24)));
}

{
  AVCRTTSession::~AVCRTTSession((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void AVCRTTSession::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const std::string *a5, uint64_t a6, uint64_t *a7)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
  v128[0] = 0;
  v131 = 0;
  v11 = ims::debug(&__p, v128);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "initialize", 10);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
  *(v11 + 17) = 0;
  MEMORY[0x1E69233B0](*(v11 + 8), *(a1 + 32));
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " isMO=", 6);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923320](*(v11 + 8), a3);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v131 == 1 && v130 < 0)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v112) < 0)
  {
    operator delete(__p);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a7[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = *(v15 + 128);
        if (v16)
        {
          v16 = std::__shared_weak_count::lock(v16);
          v17 = v16;
          if (v16)
          {
            v16 = *(v15 + 120);
          }
        }

        else
        {
          v17 = 0;
        }

        v19 = SipStack::prefs(v16);
        v20 = ImsPrefs::EnableAPOnlyMode(v19);
        if (v20)
        {
          LOBYTE(v20) = _os_feature_enabled_impl();
        }

        *(a1 + 425) = v20;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v21 = (*(*a1 + 144))(a1);
        if (v21 == 2)
        {
          if (*(v15 + 584))
          {
            goto LABEL_32;
          }
        }

        else if (v21 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          goto LABEL_32;
        }

        if ((*(v15 + 1328) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v120[0] = 0;
          v123 = 0;
          v34 = ims::error(&__p, v120);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "No media settings", 17);
          *(v34 + 17) = 0;
          (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v34 + 17) = 0;
          if (v123 == 1 && v122 < 0)
          {
            operator delete(v121);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(__p);
          }

          v35 = *(a1 + 24);
          if (!v35)
          {
            goto LABEL_19;
          }

          v36 = std::__shared_weak_count::lock(v35);
          if (!v36)
          {
            goto LABEL_19;
          }

          v27 = v36;
          v37 = *(a1 + 16);
          if (!v37)
          {
            goto LABEL_73;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v118);
          (**v37)(v37, &v118, 9);
          v29 = v119;
          if (!v119)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

LABEL_32:
        if (*(a1 + 425) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v114[0] = 0;
          v117 = 0;
          v22 = ims::debug(&__p, v114);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Use skywalk channels instead of sockets", 39);
          *(v22 + 17) = 0;
          (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v22 + 17) = 0;
          if (v117 == 1 && v116 < 0)
          {
            operator delete(v115);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(__p);
          }

          *(a1 + 448) = 1;
          std::string::operator=((a1 + 456), a5);
          v108 = v15;
          v109 = v14;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          (*(*a1 + 48))(&__p, a1, &v108);
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v101 = &unk_1F5EBDEF8;
          v102 = &_bambiDomain;
          v103 = 0;
          v24 = p_p == &_bambiDomain && v112 == 0;
          ImsResult::~ImsResult(&v101);
          ImsResult::~ImsResult(&__p);
          if (v109)
          {
            std::__shared_weak_count::__release_weak(v109);
          }

          v25 = *(a1 + 24);
          if (v24)
          {
            if (!v25)
            {
              goto LABEL_19;
            }

            v26 = std::__shared_weak_count::lock(v25);
            if (!v26)
            {
              goto LABEL_19;
            }

            v27 = v26;
            v28 = *(a1 + 16);
            if (!v28)
            {
              goto LABEL_73;
            }

            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v99);
            (*(*v28 + 16))(v28, &v99, 0);
            v29 = v100;
            if (!v100)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (!v25)
            {
              goto LABEL_19;
            }

            v38 = std::__shared_weak_count::lock(v25);
            if (!v38)
            {
              goto LABEL_19;
            }

            v27 = v38;
            v39 = *(a1 + 16);
            if (!v39)
            {
              goto LABEL_73;
            }

            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v97);
            (**v39)(v39, &v97, 0);
            v29 = v98;
            if (!v98)
            {
              goto LABEL_73;
            }
          }

LABEL_72:
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_73:
          v40 = v27;
LABEL_157:
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
LABEL_19:
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          goto LABEL_20;
        }

        v101 = 0;
        v102 = 0;
        RTPTransportManager::getTransport(*(a1 + 32), *(v15 + 142), &v101);
        v95 = 0;
        v96 = 0;
        RTPTransportManager::getTransport(*(a1 + 32), (*(v15 + 142) + 1), &v95);
        v30 = v101;
        if (v101)
        {
          if (v95)
          {
            goto LABEL_102;
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v85[0] = 0;
          v88 = 0;
          v31 = ims::error(&__p, v85);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "No RTCP socket associated with port ", 36);
          *(v31 + 17) = 0;
          v32 = (*(*a1 + 144))(a1);
          if (v32 == 2)
          {
            if (*(v15 + 584))
            {
              v33 = v15 + 152;
              goto LABEL_96;
            }
          }

          else if (v32 == 6 && (*(v15 + 1856) & 1) != 0)
          {
            v33 = v15 + 1496;
            goto LABEL_96;
          }

          v33 = v15 + 1032;
          if (!*(v15 + 1328))
          {
            v33 = 0;
          }

LABEL_96:
          MEMORY[0x1E6923340](*(v31 + 8), *(v33 + 24) + 1);
          *(v31 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " for session ", 13);
          *(v31 + 17) = 0;
          MEMORY[0x1E69233B0](*(v31 + 8), *(a1 + 32));
          *(v31 + 17) = 0;
          (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v31 + 17) = 0;
          if (v88 == 1 && v87 < 0)
          {
            operator delete(v86);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(__p);
          }

          v30 = v101;
          if (!v101)
          {
            v50 = v95;
            if (v95)
            {
              v49 = -1;
              goto LABEL_103;
            }

LABEL_118:
            v52 = 1;
LABEL_119:
            std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
            v81[0] = 0;
            v84 = 0;
            v57 = ims::error(&__p, v81);
            v58 = ImsOutStream::operator<<(v57, "Didn't find valid RTP transport for session ");
            MEMORY[0x1E69233B0](*(v58 + 8), *(a1 + 32));
            *(v58 + 17) = 0;
            (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v58 + 17) = 0;
            if (v84 == 1 && v83 < 0)
            {
              operator delete(v82);
            }

            if (SHIBYTE(v112) < 0)
            {
              operator delete(__p);
            }

            if (!v52)
            {
LABEL_130:
              v60 = *(a1 + 24);
              if (!v60)
              {
                goto LABEL_154;
              }

              v61 = std::__shared_weak_count::lock(v60);
              if (!v61)
              {
                goto LABEL_154;
              }

              v46 = v61;
              v62 = *(a1 + 16);
              if (v62)
              {
                RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v75);
                (**v62)(v62, &v75, 4);
                v48 = v76;
                if (v76)
                {
LABEL_134:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                }
              }

LABEL_135:
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              goto LABEL_154;
            }

LABEL_125:
            std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
            v77[0] = 0;
            v80 = 0;
            v59 = ims::error(&__p, v77);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "Didn't find valid RTCP transport for session ", 45);
            *(v59 + 17) = 0;
            MEMORY[0x1E69233B0](*(v59 + 8), *(a1 + 32));
            *(v59 + 17) = 0;
            (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v59 + 17) = 0;
            if (v80 == 1 && v79 < 0)
            {
              operator delete(v78);
            }

            if (SHIBYTE(v112) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_130;
          }

LABEL_102:
          v49 = (*(*v30 + 88))(v30);
          v50 = v95;
          if (v95)
          {
LABEL_103:
            v51 = (*(*v50 + 88))(v50);
            v52 = v51 == -1;
            if (v49 != -1 && v51 != -1)
            {
              __p = 0;
              p_p = &__p;
              v112 = 0x2020000000;
              v113 = 0;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3321888768;
              aBlock[2] = ___ZN13AVCRTTSession10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke;
              aBlock[3] = &unk_1F5EC0B40;
              aBlock[5] = a1;
              aBlock[6] = v101;
              v68 = v102;
              if (v102)
              {
                atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v69 = v95;
              v70 = v96;
              if (v96)
              {
                atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v73 = v49;
              v74 = v51;
              aBlock[4] = &__p;
              v71 = v15;
              v72 = v14;
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              v53 = _Block_copy(aBlock);
              v54 = v53;
              v55 = v101;
              if (v53)
              {
                v56 = _Block_copy(v53);
              }

              else
              {
                v56 = 0;
              }

              v66 = v56;
              (*(*v55 + 104))(v55, &v66);
              if (v66)
              {
                _Block_release(v66);
              }

              v63 = v95;
              if (v95)
              {
                v64 = v54 ? _Block_copy(v54) : 0;
                v65 = v64;
                (*(*v63 + 104))(v63, &v65);
                if (v65)
                {
                  _Block_release(v65);
                }
              }

              if (v54)
              {
                _Block_release(v54);
              }

              if (v72)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v72);
              }

              if (v70)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v70);
              }

              if (v68)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              }

              _Block_object_dispose(&__p, 8);
              goto LABEL_154;
            }

            if (v49 != -1)
            {
              if (v51 != -1)
              {
                goto LABEL_130;
              }

              goto LABEL_125;
            }

            goto LABEL_119;
          }

          if (v49 != -1)
          {
            goto LABEL_125;
          }

          goto LABEL_118;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
        v91[0] = 0;
        v94 = 0;
        v41 = ims::error(&__p, v91);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "No RTP socket associated with port ", 35);
        *(v41 + 17) = 0;
        v42 = (*(*a1 + 144))(a1);
        if (v42 == 2)
        {
          if (*(v15 + 584))
          {
            v43 = v15 + 152;
            goto LABEL_82;
          }
        }

        else if (v42 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          v43 = v15 + 1496;
          goto LABEL_82;
        }

        v43 = v15 + 1032;
        if (!*(v15 + 1328))
        {
          v43 = 0;
        }

LABEL_82:
        MEMORY[0x1E6923390](*(v41 + 8), *(v43 + 24));
        *(v41 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), " for session ", 13);
        *(v41 + 17) = 0;
        MEMORY[0x1E69233B0](*(v41 + 8), *(a1 + 32));
        *(v41 + 17) = 0;
        (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v41 + 17) = 0;
        if (v94 == 1 && v93 < 0)
        {
          operator delete(v92);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p);
        }

        v44 = *(a1 + 24);
        if (!v44 || (v45 = std::__shared_weak_count::lock(v44)) == 0)
        {
LABEL_154:
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          v40 = v102;
          if (!v102)
          {
            goto LABEL_19;
          }

          goto LABEL_157;
        }

        v46 = v45;
        v47 = *(a1 + 16);
        if (v47)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v89);
          (**v47)(v47, &v89, 9);
          v48 = v90;
          if (v90)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_135;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
  v124[0] = 0;
  v127 = 0;
  v18 = ims::error(&__p, v124);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPSession expired", 18);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v127 == 1 && v126 < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v112) < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    goto LABEL_19;
  }

LABEL_20:
  objc_autoreleasePoolPop(v12);
}

void sub_1E4C89FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *aBlock, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  if (a58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a58);
  }

  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a64);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTTSession10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(**(a1 + 48) + 112))(*(a1 + 48)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v127[0] = 0;
    v130 = 0;
    v3 = ims::debug(&__p, v127);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "RTP socket still attached to dispatch source [sessionId=", 56);
    *(v3 + 17) = 0;
    MEMORY[0x1E69233B0](*(v3 + 8), *(v2 + 32));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v130 != 1 || (v129 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v4 = v128;
LABEL_9:
    operator delete(v4);
LABEL_10:
    if (v80 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  if ((*(**(a1 + 64) + 112))(*(a1 + 64)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v123[0] = 0;
    v126 = 0;
    v5 = ims::debug(&__p, v123);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "RTCP socket still attached to dispatch source [sessionId=", 57);
    *(v5 + 17) = 0;
    MEMORY[0x1E69233B0](*(v5 + 8), *(v2 + 32));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v126 != 1 || (v125 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v4 = v124;
    goto LABEL_9;
  }

  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    return;
  }

  *(v6 + 24) = 1;
  if (*(v2 + 360))
  {
LABEL_14:
    v7 = *(a1 + 88);
    v75 = *(a1 + 80);
    v76 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 48))(&__p, v2, &v75);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v69[0] = &unk_1F5EBDEF8;
    v69[1] = &_bambiDomain;
    v70 = 0;
    v9 = cf == &_bambiDomain && v79 == 0;
    ImsResult::~ImsResult(v69);
    ImsResult::~ImsResult(&__p);
    if (v76)
    {
      std::__shared_weak_count::__release_weak(v76);
    }

    v10 = *(v2 + 24);
    if (v9)
    {
      if (!v10)
      {
        goto LABEL_52;
      }

      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = v11;
      v13 = *(v2 + 16);
      if (!v13 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v67), (*(*v13 + 16))(v13, &v67, 0), (v14 = v68) == 0))
      {
LABEL_51:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_52:
        __p = 0;
        cf = 0;
        ims::CFNumber::CFNumber(&__p, [*(v2 + 360) streamToken]);
        v31 = v2 + 32;
        v29 = *(v2 + 32);
        v30 = *(v31 + 8);
        v64[0] = &unk_1F5EF3658;
        v64[1] = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v64[0] = &unk_1F5EF3708;
        RTPManager::handleTextStreamToken(v30, v29, v64);
        ims::CFType::~CFType(v64);
        ims::CFType::~CFType(&__p);
        return;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_52;
      }

      v27 = std::__shared_weak_count::lock(v10);
      if (!v27)
      {
        goto LABEL_52;
      }

      v12 = v27;
      v28 = *(v2 + 16);
      if (!v28)
      {
        goto LABEL_51;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v65);
      (**v28)(v28, &v65, 0);
      v14 = v66;
      if (!v66)
      {
        goto LABEL_51;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_51;
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v15, *MEMORY[0x1E69865F8], *(a1 + 96));
  if (*(a1 + 64))
  {
    xpc_dictionary_set_fd(v15, *MEMORY[0x1E69865F0], *(a1 + 100));
  }

  v69[0] = 0;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = (v2 + 456);
  if (*(v2 + 479) < 0)
  {
    v17 = *v17;
  }

  v18 = [v16 initWithUTF8String:v17];
  *(v2 + 360) = [objc_alloc(MEMORY[0x1E69865D8]) initWithNetworkSockets:v15 callID:v18 error:v69];

  xpc_release(v15);
  if (!v69[0])
  {
    v32 = *(v2 + 360);
    if (v32)
    {
      v33 = [v32 capabilities];
      if (v33)
      {
        v34 = v33;
        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
        v107[0] = 0;
        v110 = 0;
        v35 = ims::debug(&__p, v107);
        v36 = ImsOutStream::operator<<(v35, "capabilities dict: ");
        ImsOutStream::operator<<(v36, [objc_msgSend(v34 "description")]);
        if (v110 == 1 && v109 < 0)
        {
          operator delete(v108);
        }

        if (v80 < 0)
        {
          operator delete(__p);
        }

        v37 = [v34 objectForKeyedSubscript:@"avcKeySupportedCodecs"];
        if (v37)
        {
          v38 = v37;
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v91[0] = 0;
          v94 = 0;
          v39 = ims::debug(&__p, v91);
          v40 = ImsOutStream::operator<<(v39, "Got supported codecs");
          ImsOutStream::operator<<(v40, [objc_msgSend(v38 "description")]);
          if (v94 == 1 && v93 < 0)
          {
            operator delete(v92);
          }

          if (v80 < 0)
          {
            operator delete(__p);
          }

          v41 = [AVCRTTSessionDelegate alloc];
          RTPSharedPointerBase::getShared<AVCRTTSession>(&v89, v2);
          v42 = *(v2 + 392);
          v87 = *(v2 + 384);
          v88 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = [(AVCRTTSessionDelegate *)v41 initWithOwner:&v89 andStackController:&v87];
          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }

          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
          }

          if (v43)
          {
            [*(v2 + 360) setDelegate:v43];
            goto LABEL_14;
          }

          *(v2 + 360) = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v83[0] = 0;
          v86 = 0;
          v59 = ims::error(&__p, v83);
          v60 = ImsOutStream::operator<<(v59, "Unable to create AVC media stream delegate");
          (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v60[17] = 0;
          if (v86 == 1 && v85 < 0)
          {
            operator delete(v84);
          }

          if (v80 < 0)
          {
            operator delete(__p);
          }

          v61 = *(v2 + 24);
          if (!v61)
          {
            return;
          }

          v62 = std::__shared_weak_count::lock(v61);
          if (!v62)
          {
            return;
          }

          v24 = v62;
          v63 = *(v2 + 16);
          if (!v63)
          {
            goto LABEL_45;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v81);
          (**v63)(v63, &v81, 9);
          v26 = v82;
          if (!v82)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v2 + 360) = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v97[0] = 0;
          v100 = 0;
          v54 = ims::debug(&__p, v97);
          v55 = ImsOutStream::operator<<(v54, "No supported codecs");
          (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v55[17] = 0;
          if (v100 == 1 && v99 < 0)
          {
            operator delete(v98);
          }

          if (v80 < 0)
          {
            operator delete(__p);
          }

          v56 = *(v2 + 24);
          if (!v56)
          {
            return;
          }

          v57 = std::__shared_weak_count::lock(v56);
          if (!v57)
          {
            return;
          }

          v24 = v57;
          v58 = *(v2 + 16);
          if (!v58)
          {
            goto LABEL_45;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v95);
          (**v58)(v58, &v95, 9);
          v26 = v96;
          if (!v96)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        *(v2 + 360) = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
        v103[0] = 0;
        v106 = 0;
        v49 = ims::error(&__p, v103);
        v50 = ImsOutStream::operator<<(v49, "AVC session doesn't have a capabilities dict");
        (*(*v50 + 64))(v50, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v50[17] = 0;
        if (v106 == 1 && v105 < 0)
        {
          operator delete(v104);
        }

        if (v80 < 0)
        {
          operator delete(__p);
        }

        v51 = *(v2 + 24);
        if (!v51)
        {
          return;
        }

        v52 = std::__shared_weak_count::lock(v51);
        if (!v52)
        {
          return;
        }

        v24 = v52;
        v53 = *(v2 + 16);
        if (!v53)
        {
          goto LABEL_45;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v101);
        (**v53)(v53, &v101, 9);
        v26 = v102;
        if (!v102)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
      v113[0] = 0;
      v116 = 0;
      v44 = ims::error(&__p, v113);
      v45 = ImsOutStream::operator<<(v44, "No AVC session");
      (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v45[17] = 0;
      if (v116 == 1 && v115 < 0)
      {
        operator delete(v114);
      }

      if (v80 < 0)
      {
        operator delete(__p);
      }

      v46 = *(v2 + 24);
      if (!v46)
      {
        return;
      }

      v47 = std::__shared_weak_count::lock(v46);
      if (!v47)
      {
        return;
      }

      v24 = v47;
      v48 = *(v2 + 16);
      if (!v48)
      {
        goto LABEL_45;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v111);
      (**v48)(v48, &v111, 9);
      v26 = v112;
      if (!v112)
      {
        goto LABEL_45;
      }
    }

LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    return;
  }

  *(v2 + 360) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
  v119[0] = 0;
  v122 = 0;
  v19 = ims::error(&__p, v119);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Session init error: ", 20);
  *(v19 + 17) = 0;
  v20 = [objc_msgSend(v69[0] "description")];
  v21 = strlen(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v20, v21);
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v122 == 1 && v121 < 0)
  {
    operator delete(v120);
  }

  if (v80 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v2 + 24);
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = v23;
      v25 = *(v2 + 16);
      if (!v25)
      {
        goto LABEL_45;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v117);
      (**v25)(v25, &v117, 9);
      v26 = v118;
      if (!v118)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }
}

void sub_1E4C8AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<AVCRTTSession>(void **p_lpsrc, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a2 + *(*a2 - 24) + 8));
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v7;
      *p_lpsrc = v4;
      p_lpsrc[1] = v5;
      p_lpsrc = &lpsrc;
    }
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void AVCRTTSession::setConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
  v69[0] = 0;
  v72 = 0;
  v6 = ims::debug(&__p, v69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "setConfiguration", 16);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 32));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  if (v60 < 0)
  {
    operator delete(__p);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = a2[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *a2;
      if (*a2)
      {
        if (*(a1 + 360) || *(a1 + 425) != 1 || *(a1 + 448) != 1)
        {
          goto LABEL_48;
        }

        v11 = a2[1];
        v56[0] = *a2;
        v56[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        AVCRTTSession::createNwPath(&__p, a1, v56);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = &unk_1F5EBDEF8;
        v50 = &_bambiDomain;
        v51 = 0;
        v13 = v58 != &_bambiDomain || v59 != 0;
        ImsResult::~ImsResult(&v49);
        ImsResult::~ImsResult(&__p);
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v13)
        {
          goto LABEL_34;
        }

        v14 = a2[1];
        v48[0] = *a2;
        v48[1] = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        AVCRTTSession::createNwPath(&__p, a1, v48);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = &unk_1F5EBDEF8;
        v50 = &_bambiDomain;
        v51 = 0;
        v16 = v58 != &_bambiDomain || v59 != 0;
        ImsResult::~ImsResult(&v49);
        ImsResult::~ImsResult(&__p);
        if (v14)
        {
          std::__shared_weak_count::__release_weak(v14);
        }

        if (v16)
        {
          goto LABEL_34;
        }

        AVCRTTSession::initializeWithSkywalk(&__p, a1);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = &unk_1F5EBDEF8;
        v50 = &_bambiDomain;
        v51 = 0;
        v19 = v58;
        v20 = v59;
        ImsResult::~ImsResult(&v49);
        ImsResult::~ImsResult(&__p);
        if (v19 != &_bambiDomain)
        {
          goto LABEL_34;
        }

        if (v20)
        {
          goto LABEL_34;
        }

        AVCRTTSession::completeInit(&__p, a1);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = &unk_1F5EBDEF8;
        v50 = &_bambiDomain;
        v51 = 0;
        v21 = v58;
        v22 = v59;
        ImsResult::~ImsResult(&v49);
        ImsResult::~ImsResult(&__p);
        if (v21 != &_bambiDomain || v22)
        {
LABEL_34:
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *a3 = &unk_1F5EBDEF8;
          *(a3 + 8) = &_bambiDomain;
          v17 = 0x40000000;
        }

        else
        {
LABEL_48:
          if (*(v10 + 1328) == 1 && ((*(*(v10 + 1032) + 24))() & 1) != 0)
          {
            v23 = *(a1 + 368);
            if (v23)
            {
            }

            v24 = objc_opt_new();
            *(a1 + 368) = v24;
            [v24 setTxPayloadType:*(v10 + 1062)];
            [*(a1 + 368) setRxPayloadType:*(v10 + 1060)];
            v25 = *(a1 + 104) != 1 || *(a1 + 304) != 0;
            [*(a1 + 368) setRtcpEnabled:v25];
            LODWORD(v27) = *(a1 + 304);
            [*(a1 + 368) setRtcpSendInterval:v27];
            [objc_msgSend(*(a1 + 368) "text")];
            if (*(v10 + 1320) != 255 && *(v10 + 1322) != 255)
            {
              [objc_msgSend(*(a1 + 368) "text")];
              [objc_msgSend(*(a1 + 368) "text")];
              [objc_msgSend(*(a1 + 368) "text")];
              v28 = [*(a1 + 368) text];
              LODWORD(v29) = 1050253722;
              [v28 setTxIntervalMin:v29];
              std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
              v40[0] = 0;
              v43 = 0;
              v30 = ims::debug(&__p, v40);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "txIntervalMin was set", 21);
              *(v30 + 17) = 0;
              (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v30 + 17) = 0;
              if (v43 == 1 && v42 < 0)
              {
                operator delete(v41);
              }

              if (v60 < 0)
              {
                operator delete(__p);
              }
            }

            [objc_msgSend(*(a1 + 368) "audio")];
            *(a3 + 80) = 0;
            *(a3 + 48) = 0u;
            *(a3 + 64) = 0u;
            *(a3 + 16) = 0u;
            *(a3 + 32) = 0u;
            *a3 = 0u;
            v31 = a2[1];
            v38 = *a2;
            v39 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            AVCRTPSession<AVCTextStream>::setConfiguration(a1, &v38, a3);
            if (v39)
            {
              std::__shared_weak_count::__release_weak(v39);
            }

            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            __p = &unk_1F5EBDEF8;
            v58 = &_bambiDomain;
            v59 = 0;
            if (*(a3 + 8) != &_bambiDomain || *(a3 + 16))
            {
              goto LABEL_83;
            }

            v32 = [*(a1 + 368) isValidTextConfig];
            ImsResult::~ImsResult(&__p);
            if ((v32 & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
              v34[0] = 0;
              v37 = 0;
              v33 = ims::warn(&__p, v34);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Invalid RTT config", 18);
              *(v33 + 17) = 0;
              (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v33 + 17) = 0;
              if (v37 == 1 && v36 < 0)
              {
                operator delete(v35);
              }

              if (v60 < 0)
              {
                operator delete(__p);
              }

              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              __p = &unk_1F5EBDEF8;
              v58 = &_bambiDomain;
              v59 = 1073741835;
              ImsResult::operator=(a3, &__p);
LABEL_83:
              ImsResult::~ImsResult(&__p);
            }

LABEL_60:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            goto LABEL_61;
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
          v44[0] = 0;
          v47 = 0;
          v26 = ims::error(&__p, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "TTY media information missing.", 30);
          *(v26 + 17) = 0;
          (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v26 + 17) = 0;
          if (v47 == 1 && v46 < 0)
          {
            operator delete(v45);
          }

          if (v60 < 0)
          {
            operator delete(__p);
          }

          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *a3 = &unk_1F5EBDEF8;
          *(a3 + 8) = &_bambiDomain;
          v17 = 1073741825;
        }

        *(a3 + 16) = v17;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.rtt.session");
  v65[0] = 0;
  v68 = 0;
  v18 = ims::error(&__p, v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPSession expired", 18);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v68 == 1 && v67 < 0)
  {
    operator delete(v66);
  }

  if (v60 < 0)
  {
    operator delete(__p);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741825;
  if (v9)
  {
    goto LABEL_60;
  }

LABEL_61:
  objc_autoreleasePoolPop(v7);
}

void AVCRTTSession::createNwPath(uint64_t a1, uint64_t a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
  v82[0] = 0;
  v85 = 0;
  v7 = ims::debug(v6, v82);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "createNwPath", 12);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v85 == 1 && v84 < 0)
  {
    operator delete(v83);
  }

  if (out[23] < 0)
  {
    operator delete(*out);
  }

  v8 = a3[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *a3;
      if (*a3)
      {
        v77 = 0;
        v76 = 0;
        v11 = *(a2 + 32);
        v12 = (*(*a2 + 144))(a2);
        if (v12 == 2)
        {
          if (v10[584])
          {
            v13 = v10 + 152;
            goto LABEL_25;
          }
        }

        else if (v12 == 6 && (v10[1856] & 1) != 0)
        {
          v13 = v10 + 1496;
          goto LABEL_25;
        }

        v13 = v10 + 1032;
        if (!v10[1328])
        {
          v13 = 0;
        }

LABEL_25:
        RTPTransportManager::getNwTransport(v11, *(v13 + 12), &v76);
        v75 = 0;
        v74 = 0;
        v16 = *(a2 + 32);
        v17 = (*(*a2 + 144))(a2);
        if (v17 == 2)
        {
          if (v10[584])
          {
            v18 = v10 + 152;
            goto LABEL_33;
          }
        }

        else if (v17 == 6 && (v10[1856] & 1) != 0)
        {
          v18 = v10 + 1496;
          goto LABEL_33;
        }

        v18 = v10 + 1032;
        if (!v10[1328])
        {
          v18 = 0;
        }

LABEL_33:
        RTPTransportManager::getNwTransport(v16, (*(v18 + 12) + 1), &v74);
        v19 = v76;
        if (v76)
        {
          v20 = v74;
          if (v74)
          {
            v21 = (*(*a2 + 144))(a2);
            if (v21 == 2)
            {
              if (v10[584])
              {
                v22 = v10 + 152;
                goto LABEL_49;
              }
            }

            else if (v21 == 6 && (v10[1856] & 1) != 0)
            {
              v22 = v10 + 1496;
              goto LABEL_49;
            }

            if (v10[1328])
            {
              v22 = v10 + 1032;
LABEL_49:
              v29 = *(v22 + 1);
              v28 = *(v22 + 2);
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v46 = v28;
              if (v29)
              {
                goto LABEL_88;
              }

              v30 = *(a2 + 423);
              if (v30 < 0)
              {
                v30 = *(a2 + 408);
              }

              if (v30)
              {
LABEL_88:
                if (*(v22 + 13))
                {
                  AVCRTPStackController::getClientUniquePID(*(a2 + 384));
                  v31 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
                  v50[0] = 0;
                  v53 = 0;
                  v32 = ims::debug(v31, v50);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "nw_path local RTP endpoint port=", 32);
                  *(v32 + 17) = 0;
                  port = nw_endpoint_get_port(*(v19 + 56));
                  MEMORY[0x1E6923390](*(v32 + 8), port);
                  *(v32 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " RTCP port=", 11);
                  *(v32 + 17) = 0;
                  v34 = nw_endpoint_get_port(*(v20 + 56));
                  MEMORY[0x1E6923390](*(v32 + 8), v34);
                  *(v32 + 17) = 0;
                  (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v32 + 17) = 0;
                  if (v53 == 1 && v52 < 0)
                  {
                    operator delete(__p);
                  }

                  if (out[23] < 0)
                  {
                    operator delete(*out);
                  }

                  v35 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
                  v48[0] = 0;
                  v49 = 0;
                  v36 = ims::debug(v35, v48);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "nw_path remote endpoint address=", 32);
                  *(v36 + 17) = 0;
                  IpAddress::asString(&v47);
                }

                v40 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
                v54[0] = 0;
                v57 = 0;
                v41 = ims::warn(v40, v54);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Remote endpoint has an invalid port", 35);
                *(v41 + 17) = 0;
                (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v41 + 17) = 0;
                if (v57 != 1 || (v56 & 0x80000000) == 0)
                {
                  goto LABEL_82;
                }

                v42 = v55;
              }

              else
              {
                v43 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
                v58[0] = 0;
                v61 = 0;
                v44 = ims::warn(v43, v58);
                v45 = ImsOutStream::operator<<(v44, "No remote connection found for session");
                (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v45[17] = 0;
                if (v61 != 1 || (v60 & 0x80000000) == 0)
                {
                  goto LABEL_82;
                }

                v42 = v59;
              }

              operator delete(v42);
LABEL_82:
              if (out[23] < 0)
              {
                operator delete(*out);
              }

              *(a1 + 24) = 0u;
              *(a1 + 40) = 0u;
              *(a1 + 56) = 0u;
              *(a1 + 72) = 0u;
              *a1 = &unk_1F5EBDEF8;
              *(a1 + 8) = &_bambiDomain;
              *(a1 + 16) = 1073741825;
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

LABEL_69:
              if (v75)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v75);
              }

              if (v77)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v77);
              }

LABEL_73:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              goto LABEL_74;
            }

            v37 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
            v62[0] = 0;
            v65 = 0;
            v38 = ims::warn(v37, v62);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Not enough information to configure with", 40);
            *(v38 + 17) = 0;
            (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v38 + 17) = 0;
            if (v65 != 1 || (v64 & 0x80000000) == 0)
            {
LABEL_66:
              if (out[23] < 0)
              {
                operator delete(*out);
              }

              *(a1 + 24) = 0u;
              *(a1 + 40) = 0u;
              *(a1 + 56) = 0u;
              *(a1 + 72) = 0u;
              *a1 = &unk_1F5EBDEF8;
              *(a1 + 8) = &_bambiDomain;
              *(a1 + 16) = 1073741825;
              goto LABEL_69;
            }

            v25 = v63;
          }

          else
          {
            v26 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
            v66[0] = 0;
            v69 = 0;
            v27 = ims::error(v26, v66);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "RTCP Transport is null", 22);
            *(v27 + 17) = 0;
            (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v27 + 17) = 0;
            if (v69 != 1 || (v68 & 0x80000000) == 0)
            {
              goto LABEL_66;
            }

            v25 = v67;
          }
        }

        else
        {
          v23 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
          v70[0] = 0;
          v73 = 0;
          v24 = ims::error(v23, v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "RTP Transport is null", 21);
          *(v24 + 17) = 0;
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          if (v73 != 1 || (v72 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v25 = v71;
        }

        operator delete(v25);
        goto LABEL_66;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(out, "avc.rtt.session");
  v78[0] = 0;
  v81 = 0;
  v15 = ims::error(v14, v78);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "SDPSession expired in AVCRTTSession::setConfiguration", 53);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v81 == 1 && v80 < 0)
  {
    operator delete(v79);
  }

  if (out[23] < 0)
  {
    operator delete(*out);
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741825;
  if (v9)
  {
    goto LABEL_73;
  }

LABEL_74:
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1E4C8C980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9)
{
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (STACK[0x2A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2A8]);
  }

  if (STACK[0x2B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2B8]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void AVCRTTSession::initializeWithSkywalk(AVCRTTSession *this, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v51 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 480];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 496];
  v7 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.rtt.session");
  v44[0] = 0;
  v47 = 0;
  v8 = ims::debug(v7, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Session initialize request [sessionId=", 38);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), *(a2 + 32));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " rtpUuid=", 9);
  *(v8 + 17) = 0;
  v9 = [objc_msgSend(v5 "UUIDString")];
  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " rtcpUuid=", 10);
  *(v8 + 17) = 0;
  v11 = [objc_msgSend(v6 "UUIDString")];
  v12 = strlen(v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v48);
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = (a2 + 456);
  if (*(a2 + 479) < 0)
  {
    v14 = *v14;
  }

  v15 = [v13 initWithUTF8String:v14];
  v16 = *MEMORY[0x1E6986610];
  v52[0] = *MEMORY[0x1E6986600];
  v52[1] = v16;
  v17 = &unk_1F5EFC980;
  if (!*(a2 + 448))
  {
    v17 = &unk_1F5EFC998;
  }

  v53[0] = v15;
  v53[1] = v17;
  v52[2] = *MEMORY[0x1E6986608];
  v53[2] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
  *(a2 + 360) = [objc_alloc(MEMORY[0x1E69865D8]) initWithRTPNWConnectionClientID:v5 rtcpNWConnectionClientID:v6 options:v18 error:&v51];
  if (v51)
  {
    *(a2 + 360) = 0;
    v19 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.rtt.session");
    v40[0] = 0;
    v43 = 0;
    v20 = ims::error(v19, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Session init error: ", 20);
    *(v20 + 17) = 0;
    if (v51)
    {
      v21 = [objc_msgSend(v51 "description")];
    }

    else
    {
      v21 = " returned error is nil";
    }

    v27 = strlen(v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), v21, v27);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v50 < 0)
    {
      operator delete(v48);
    }

    v28 = *(a2 + 24);
    if (v28)
    {
      v29 = std::__shared_weak_count::lock(v28);
      if (v29)
      {
        v30 = v29;
        v31 = *(a2 + 16);
        if (v31)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v38);
          (*(*v31 + 40))(v31, &v38, 4);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 1073741825;
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    v22 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.rtt.session");
    v34[0] = 0;
    v37 = 0;
    v23 = ims::debug(v22, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Session initialize success  [sessionId=", 39);
    *(v23 + 17) = 0;
    MEMORY[0x1E69233B0](*(v23 + 8), *(a2 + 32));
    *(v23 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "]", 1);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v50 < 0)
    {
      operator delete(v48);
    }

    v48 = 0;
    v49 = 0;
    ims::CFNumber::CFNumber(&v48, [*(a2 + 360) streamToken]);
    v26 = a2 + 32;
    v24 = *(a2 + 32);
    v25 = *(v26 + 8);
    v33[0] = &unk_1F5EF3658;
    v33[1] = v49;
    if (v49)
    {
      CFRetain(v49);
    }

    v33[0] = &unk_1F5EF3708;
    RTPManager::handleTextStreamToken(v25, v24, v33);
    ims::CFType::~CFType(v33);
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
    ims::CFType::~CFType(&v48);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4C8D28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

double AVCRTTSession::completeInit(AVCRTTSession *this, uint64_t a2)
{
  v4 = [*(a2 + 360) capabilities];
  if (!v4)
  {
    *(a2 + 360) = 0;
    v20 = std::string::basic_string[abi:ne200100]<0>(v68, "avc.rtt.session");
    v60[0] = 0;
    v63 = 0;
    v21 = ims::error(v20, v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "AVC session doesn't have a capabilities dict", 44);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v63 == 1 && v62 < 0)
    {
      operator delete(v61);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    v22 = *(a2 + 24);
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
    v25 = *(a2 + 16);
    if (!v25)
    {
      goto LABEL_51;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v58);
    (**v25)(v25, &v58, 9);
    v26 = v59;
    if (!v59)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v5 = v4;
  v6 = std::string::basic_string[abi:ne200100]<0>(v68, "avc.rtt.session");
  v64[0] = 0;
  v67 = 0;
  v7 = ims::debug(v6, v64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "capabilities dict: ", 19);
  *(v7 + 17) = 0;
  v8 = [objc_msgSend(v5 "description")];
  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v10 = [v5 objectForKeyedSubscript:@"avcKeySupportedCodecs"];
  if (!v10)
  {
    *(a2 + 360) = 0;
    v27 = std::string::basic_string[abi:ne200100]<0>(v68, "avc.rtt.session");
    v54[0] = 0;
    v57 = 0;
    v28 = ims::debug(v27, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "No supported codecs", 19);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    v29 = *(a2 + 24);
    if (!v29)
    {
      goto LABEL_52;
    }

    v30 = std::__shared_weak_count::lock(v29);
    if (!v30)
    {
      goto LABEL_52;
    }

    v24 = v30;
    v31 = *(a2 + 16);
    if (!v31)
    {
      goto LABEL_51;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v52);
    (**v31)(v31, &v52, 9);
    v26 = v53;
    if (!v53)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v11 = v10;
  v12 = std::string::basic_string[abi:ne200100]<0>(v68, "avc.rtt.session");
  v48[0] = 0;
  v51 = 0;
  v13 = ims::debug(v12, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Got supported codecs", 20);
  *(v13 + 17) = 0;
  v14 = [objc_msgSend(v11 "description")];
  v15 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, v15);
  *(v13 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(__p);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v16 = [AVCRTTSessionDelegate alloc];
  RTPSharedPointerBase::getShared<AVCRTTSession>(&v46, a2);
  v17 = *(a2 + 392);
  v44 = *(a2 + 384);
  v45 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = [(AVCRTTSessionDelegate *)v16 initWithOwner:&v46 andStackController:&v44];
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (!v18)
  {
    *(a2 + 360) = 0;
    v32 = std::string::basic_string[abi:ne200100]<0>(v68, "avc.rtt.session");
    v40[0] = 0;
    v43 = 0;
    v33 = ims::error(v32, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Unable to create AVC media stream delegate", 42);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    v34 = *(a2 + 24);
    if (!v34)
    {
      goto LABEL_52;
    }

    v35 = std::__shared_weak_count::lock(v34);
    if (!v35)
    {
      goto LABEL_52;
    }

    v24 = v35;
    v36 = *(a2 + 16);
    if (!v36 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v38), (**v36)(v36, &v38, 9), (v26 = v39) == 0))
    {
LABEL_51:
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_52:
      v19 = 0x40000000;
      goto LABEL_53;
    }

LABEL_50:
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    goto LABEL_51;
  }

  [*(a2 + 360) setDelegate:v18];
  v19 = 0;
LABEL_53:
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5EBDEF8;
  *(this + 1) = &_bambiDomain;
  *(this + 4) = v19;
  return result;
}

void sub_1E4C8D8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  _Unwind_Resume(a1);
}

void *AVCRTTSession::configureRemoteRTCP(AVCRTTSession *this, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "avc.rtt.session");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(this + 4));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " enabled=", 9);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923320](*(v6 + 8), a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " interval=", 10);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923390](*(v6 + 8), a3);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
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

  if (*(this + 353) == 1)
  {
    [*(this + 45) setRtcpEnabled:a2];
    [*(this + 45) setRtcpSendIntervalSec:a3];
  }

  result = *(this + 46);
  if (result)
  {
    [result setRtcpEnabled:a2];
    return [*(this + 46) setRtcpSendInterval:a3];
  }

  return result;
}

void sub_1E4C8DB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

double AVCRTTSession::startSendingDTMF@<D0>(AVCRTTSession *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 1073741834;
  return result;
}

double AVCRTTSession::stopSendingDTMF@<D0>(AVCRTTSession *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 1073741834;
  return result;
}

double AVCRTTSession::sendDTMFDigits@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741834;
  return result;
}

double non-virtual thunk toAVCRTTSession::startSendingDTMF@<D0>(AVCRTTSession *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 1073741834;
  return result;
}

double non-virtual thunk toAVCRTTSession::stopSendingDTMF@<D0>(AVCRTTSession *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 1073741834;
  return result;
}

double non-virtual thunk toAVCRTTSession::sendDTMFDigits@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741834;
  return result;
}

void IMSRegistrationManager::IMSRegistrationManager(IMSRegistrationManager *this)
{
  ims::getQueue(object);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = object[0];
  *(this + 3) = object[0];
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 4) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 40), "com.apple.ipTelephony", "reg");
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_1F5EC0EF0;
  *(this + 6) = &unk_1F5EC0F28;
  std::string::basic_string[abi:ne200100]<0>(object, "reg");
  v3[0] = 0;
  v6 = 0;
  ImsLogContainer::ImsLogContainer(this + 56, object, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(object[0]);
  }

  *this = &unk_1F5EC0CD8;
  *(this + 6) = &unk_1F5EC0D48;
  *(this + 7) = &unk_1F5EC0DB0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 26) = this + 216;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 29) = this + 240;
}

void sub_1E4C8DF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  MEMORY[0x1E69225A0](v24 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v25);
  _Unwind_Resume(a1);
}

void IMSRegistrationManager::~IMSRegistrationManager(IMSRegistrationManager *this)
{
  *this = &unk_1F5EC0CD8;
  *(this + 6) = &unk_1F5EC0D48;
  *(this + 7) = &unk_1F5EC0DB0;
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 30));
  std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::destroy(*(this + 27));
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *(this + 7) = &unk_1F5ED7318;
  if (*(this + 136) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  IMSRegistrationManager::~IMSRegistrationManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSRegistrationManager::~IMSRegistrationManager(IMSRegistrationManager *this)
{
  IMSRegistrationManager::~IMSRegistrationManager((this - 48));
}

{
  IMSRegistrationManager::~IMSRegistrationManager((this - 56));
}

{
  IMSRegistrationManager::~IMSRegistrationManager((this - 48));

  JUMPOUT(0x1E69235B0);
}

{
  IMSRegistrationManager::~IMSRegistrationManager((this - 56));

  JUMPOUT(0x1E69235B0);
}

void IMSRegistrationManager::startRegistration(uint64_t a1, void **a2)
{
  v4 = a1 + 216;
  v5 = *(a1 + 216);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = a1 + 216;
  do
  {
    v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 32), a2);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v5 = *(v5 + ((v7 >> 4) & 8));
  }

  while (v5);
  if (v6 == v4 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v6 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v11 = *(a1 + 56);
    v10 = a1 + 56;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Unable to find configuration for ", 33);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
  }

  else
  {
    IPTelephonyManager::getBambiClient(&v13);
    v8 = v13;
    v15 = a2;
    v9 = std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4 - 8, a2);
    BambiClient::startRegistration(v8, a2, v9 + 56);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1E4C8E320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipRegistrationConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<SipUri>::__assign_with_size[abi:ne200100]<SipUri*,SipUri*>(a1, *a2, *(a2 + 8), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 8) - *a2) >> 3));
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  SipUri::operator=((a1 + 72), a2 + 72);
  SipUri::operator=((a1 + 480), a2 + 480);
  std::string::operator=((a1 + 888), (a2 + 888));
  std::string::operator=((a1 + 912), (a2 + 912));
  std::string::operator=((a1 + 936), (a2 + 936));
  if (a1 != a2)
  {
    std::vector<SipRetryInfo>::__assign_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>((a1 + 960), *(a2 + 960), *(a2 + 968), (*(a2 + 968) - *(a2 + 960)) >> 4);
  }

  v6 = *(a2 + 984);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 984) = v6;
  std::string::operator=((a1 + 1008), (a2 + 1008));
  std::string::operator=((a1 + 1032), (a2 + 1032));
  v7 = *(a2 + 1072);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = v7;
  std::string::operator=((a1 + 1080), (a2 + 1080));
  std::string::operator=((a1 + 1104), (a2 + 1104));
  v8 = *(a2 + 1144);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1144) = v8;
  std::string::operator=((a1 + 1152), (a2 + 1152));
  std::string::operator=((a1 + 1176), (a2 + 1176));
  v9 = *(a2 + 1200);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1200) = v9;
  v10 = *(a2 + 1226);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1226) = v10;
  if (a1 != a2)
  {
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((a1 + 1232), *(a2 + 1232), (a2 + 1240));
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((a1 + 1256), *(a2 + 1256), (a2 + 1264));
  }

  std::string::operator=((a1 + 1280), (a2 + 1280));
  *(a1 + 1304) = *(a2 + 1304);
  std::string::operator=((a1 + 1312), (a2 + 1312));
  v11 = *(a2 + 1363);
  v12 = *(a2 + 1352);
  *(a1 + 1336) = *(a2 + 1336);
  *(a1 + 1352) = v12;
  *(a1 + 1363) = v11;
  if (a1 != a2)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1392), *(a2 + 1392), (a2 + 1400));
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1424), *(a2 + 1424), (a2 + 1432));
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1456), *(a2 + 1456), (a2 + 1464));
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1488), *(a2 + 1488), (a2 + 1496));
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((a1 + 1520), *(a2 + 1520), (a2 + 1528));
  }

  *(a1 + 1544) = *(a2 + 1544);
  std::string::operator=((a1 + 1552), (a2 + 1552));
  std::string::operator=((a1 + 1576), (a2 + 1576));
  std::string::operator=((a1 + 1600), (a2 + 1600));
  *(a1 + 1624) = *(a2 + 1624);
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1632), *(a2 + 1632), *(a2 + 1640), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1640) - *(a2 + 1632)) >> 3));
  }

  v13 = *(a2 + 1656);
  *(a1 + 1664) = *(a2 + 1664);
  *(a1 + 1656) = v13;
  return a1;
}

uint64_t *IMSRegistrationManager::sipStackInvalidated(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 232, a2);
  if ((a1 + 240) != result)
  {

    return std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::erase((a1 + 232), result);
  }

  return result;
}

void IMSRegistrationManager::setRegistrationTerminated(uint64_t a1, void **a2, int a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v29 = a4;
  v31 = 0;
  v32 = a3;
  v30 = 200;
  BYTE4(v30) = a5;
  *(&v30 + 5) = a4 != -1;
  v27 = 0;
  v28 = 0;
  IPTelephonyManager::getBambiClient(&v27);
  v25 = 0;
  v26 = 0;
  (*(*v27 + 184))(&v25);
  if (v25 && *(v25 + 2817) == 1 && (a3 == 11 || a3 == 4))
  {
    LODWORD(v30) = a7;
    v13 = (*(*(a1 + 56) + 64))(a1 + 56);
    (*(*(a1 + 56) + 16))(a1 + 56, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Lazuli overwrites info.responseCode to ", 39);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), a7);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
  }

  v14 = (*(*(a1 + 56) + 64))(a1 + 56);
  (*(*(a1 + 56) + 16))(a1 + 56, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "send registration terminated due to ", 36);
  *(v14 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, off_1E8769768[a3]);
  (*(*v14 + 32))(v14, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " ", 1);
  *(v14 + 17) = 0;
  if (a4 == -1)
  {
    v15 = "will NOT retry";
  }

  else
  {
    v15 = "will retry";
  }

  if (a4 == -1)
  {
    v16 = 14;
  }

  else
  {
    v16 = 10;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15, v16);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if ((IMSRegistrationManager::getRegistrationState(a1, a2) & a6) == 1)
  {
    v17 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v18 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v17);
    }

    v19 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    IPTelephonyManager::getBambiClient(__p);
    (*(*__p[0] + 184))(&v21);
    IMSMetricsManager::logRegistrationTerminated(v18, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  v20 = IMSClientManager::delegateForStack(a2);
  (*(*(v20 + 8) + 32))();
  __p[0] = a2;
  *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 232, a2) + 56) = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_1E4C8EA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t IMSRegistrationManager::getRegistrationState(uint64_t a1, void **a2)
{
  if (a1 + 240 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 232, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 232, a2) + 56);
  }

  return v4 & 1;
}

uint64_t IMSRegistrationManager::setRegistrationError(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v14 = 0;
  v15 = 0;
  *(&v14 + 1) = a3 != -1;
  v16 = 1;
  v12 = a3;
  v13 = a4;
  v5 = a1 + 56;
  v6 = *(a1 + 56) + 64;
  if (a3 == -1)
  {
    v7 = "will NOT retry";
  }

  else
  {
    v7 = "will retry";
  }

  if (a3 == -1)
  {
    v8 = 14;
  }

  else
  {
    v8 = 10;
  }

  v9 = (*(*(a1 + 56) + 64))(v5);
  (*(*v5 + 16))(v5, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "sending registration terminated due to sip registration error ", 62);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v7, v8);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v10 = IMSClientManager::delegateForStack(a2);
  return (*(*(v10 + 8) + 32))();
}

uint64_t IMSRegistrationManager::getImsRegistrationState(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  IPTelephonyManager::getBambiClient(&v15);
  v13 = 0;
  v14 = 0;
  (*(*v15 + 184))(&v13);
  if (v13)
  {
    v5 = *(v13 + 248);
    v4 = *(v13 + 256);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(v5 + 336);
    v7 = *(v5 + 344);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v8 = *(v6 + 716);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v10 = *(a1 + 56);
    v9 = a1 + 56;
    v11 = (*(v10 + 56))(v9);
    (*(*v9 + 16))(v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Returning deregistered state for stale stack ", 45);
    *(v11 + 17) = 0;
    (*(*v11 + 32))(v11, a2);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v8 = 0;
    *(v11 + 17) = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v8;
}

void sub_1E4C8EEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSRegistrationManager::handleRegistrationStateChanged(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v7 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v6);
    }

    v8 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    IPTelephonyManager::getBambiClient(&v13);
    (*(*v13 + 184))(&v11);
    IMSMetricsManager::logRegistrationStateChange(v7, &v11, a3);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v9 = IMSClientManager::delegateForStack(a2);
  return (*(*(v9 + 8) + 16))();
}

void IMSRegistrationManager::handleRegistrationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v7 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v6);
  }

  v8 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  IPTelephonyManager::getBambiClient(&v15);
  (*(*v15 + 184))(&v13);
  IMSMetricsManager::logRegistrationRequest(v7, &v13, a3);
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

  v9 = *(a1 + 200);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 192);
      if (v12)
      {
        (*(*v12 + 48))(v12, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void IMSRegistrationManager::handleRegistrationActive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 48) + 504);
  v53 = 0;
  v54 = 0;
  IPTelephonyManager::getBambiClient(__str);
  (*(**__str + 184))(&v53);
  if (*&__str[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__str[8]);
  }

  memset(&v52, 0, sizeof(v52));
  memset(&v51, 0, sizeof(v51));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
  }

  else
  {
    v51 = *a2;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (v53)
  {
    v8 = *(v53 + 248);
    v7 = *(v53 + 256);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(v8 + 632);
    if (!v9)
    {
      v9 = *(v8 + 640);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v9)
    {
      memset(__str, 0, 24);
      SipUri::asString(v9, __str);
      v10 = __str[23];
      v11 = __str[23];
      if (__str[23] < 0)
      {
        v10 = *&__str[8];
      }

      if (v10)
      {
        std::string::operator=(&v52, __str);
        v11 = __str[23];
      }

      if (v11 < 0)
      {
        operator delete(*__str);
      }
    }

    v13 = *(v53 + 248);
    v12 = *(v53 + 256);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (*(v13 + 584) != *(v13 + 592))
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      SipRouteSet::allHops(v13 + 576, &v45);
      v14 = v45;
      v15 = v46;
      if (v45 != v46)
      {
        do
        {
          v16 = *v14;
          memset(__str, 0, 24);
          SipUri::asString(v16, __str);
          v17 = v49;
          if (v49 >= v50)
          {
            v19 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v48, __str);
          }

          else
          {
            if ((__str[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v49, *__str, *&__str[8]);
            }

            else
            {
              v18 = *__str;
              v49->__r_.__value_.__r.__words[2] = *&__str[16];
              *&v17->__r_.__value_.__l.__data_ = v18;
            }

            v19 = v17 + 1;
          }

          v49 = v19;
          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }

          ++v14;
        }

        while (v14 != v15);
        v14 = v45;
      }

      if (v14)
      {
        v46 = v14;
        operator delete(v14);
      }
    }
  }

  v20 = *(v53 + 248);
  v21 = *(v53 + 256);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(v20 + 336);
  v23 = *(v20 + 344);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(v22 + 656);
  v25 = time(0);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v44 = 0;
  *__p = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(__str, 0, sizeof(__str));
  *__str = v6;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str[8], v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__str[8] = v52;
  }

  *__p = 0u;
  v43 = 0u;
  v41 = 0u;
  std::string::operator=(&__p[1], &v51);
  LODWORD(v44) = v24 - v25;
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v41, v48, v49, 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  v26 = IMSClientManager::delegateForStack(a2);
  (*(*(v26 + 8) + 24))();
  v45 = a2;
  *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 232, a2) + 56) = 1;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[1]);
  }

  v45 = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  if ((__str[31] & 0x80000000) != 0)
  {
    operator delete(*&__str[8]);
  }

  *__str = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__str);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v27 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v28 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v27);
  }

  v29 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  IPTelephonyManager::getBambiClient(__str);
  (*(**__str + 184))(&v38);
  IMSMetricsManager::logRegistrationSuccess(v28, &v38, a3);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (*&__str[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__str[8]);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if ((*(a3 + 160) & 1) == 0)
  {
    *__str = 0uLL;
    IPTelephonyManager::getBambiClient(&v52);
    (*(*v52.__r_.__value_.__l.__data_ + 184))(__str);
    if (v52.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52.__r_.__value_.__l.__size_);
    }

    if (*__str)
    {
      v30 = *(*__str + 248);
      v31 = *(*__str + 256);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v30)
      {
        v33 = *(v30 + 296);
        v32 = *(v30 + 304);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v33)
        {
          *(v33 + 264) = 0;
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    if (*&__str[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__str[8]);
    }
  }

  v34 = *(a1 + 200);
  if (v34)
  {
    v35 = std::__shared_weak_count::lock(v34);
    if (v35)
    {
      v36 = v35;
      v37 = *(a1 + 192);
      if (v37)
      {
        (*(*v37 + 16))(v37, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }
}

void IMSRegistrationManager::handleRegistrationTerminated(void *a1, void **a2, unsigned int *a3, int a4)
{
  v8 = a1 + 7;
  v9 = (*(a1[7] + 64))(a1 + 7);
  (*(*v8 + 16))(v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Registration terminated due to ", 31);
  *(v9 + 17) = 0;
  v10 = a3[14];
  if (0xAAAAAAAAAAAAAAABLL * ((*algn_1EE2BD548 - _terminationReasonStrings) >> 3) <= v10)
  {
    v11 = "Unknown";
  }

  else
  {
    v11 = (_terminationReasonStrings + 24 * v10);
  }

  LoggableString::LoggableString(&__p, v11);
  (*(*v9 + 40))(v9, &__p);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = (*(*v8 + 64))(v8);
  (*(*v8 + 16))(v8, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Network is ", 11);
  *(v12 + 17) = 0;
  v13 = a3[14] - 4;
  if (v13 > 0xD)
  {
    v15 = 0;
    v14 = "";
  }

  else
  {
    v14 = off_1E87697C8[v13];
    v15 = qword_1E5166058[v13];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), v14, v15);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "aware of our deregistration", 27);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  v16 = (*(*v8 + 64))(v8);
  (*(*v8 + 16))(v8, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Network ", 8);
  *(v16 + 17) = 0;
  v17 = (*(*a3 + 56))(a3);
  if (v17)
  {
    v18 = "initiated";
  }

  else
  {
    v18 = "didn't initiate";
  }

  if (v17)
  {
    v19 = 9;
  }

  else
  {
    v19 = 15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v18, v19);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " our deregistration", 19);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  Retry = SipRegistrationNotification::secondsUntilNextRetry(a3);
  if (a4)
  {
    v21 = (*(*v8 + 64))(v8);
    (*(*v8 + 16))(v8, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "hasDeferredRegistration: set retryAfter = 1 instead of ", 55);
    *(v21 + 17) = 0;
    MEMORY[0x1E6923360](*(v21 + 8), Retry);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    Retry = 1;
  }

  v22 = a3[14];
  if (v22 > 17)
  {
    if (v22 <= 20)
    {
      if (v22 != 18)
      {
        if (v22 == 19)
        {
          v23 = 9;
          goto LABEL_42;
        }

        goto LABEL_38;
      }
    }

    else if (v22 != 21)
    {
      if (v22 == 22)
      {
        v23 = 10;
        goto LABEL_42;
      }

      if (v22 == 26)
      {
        v23 = 11;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    v23 = 8;
  }

  else
  {
    if (v22 > 9)
    {
      switch(v22)
      {
        case 10:
          v23 = 3;
          goto LABEL_42;
        case 11:
          v23 = 4;
          goto LABEL_42;
        case 13:
          v23 = 6;
          goto LABEL_42;
      }

      goto LABEL_38;
    }

    v23 = 2;
    if ((v22 - 5) >= 2 && v22 != 9)
    {
LABEL_38:
      v23 = 0;
    }
  }

  if (v22 <= 0x11 && ((1 << v22) & 0x351F0) != 0)
  {
    v24 = 0;
    goto LABEL_43;
  }

LABEL_42:
  v24 = 1;
LABEL_43:
  v25 = *(a3 + 8);
  v26 = *(a3 + 9);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSRegistrationManager::setRegistrationTerminated(a1, a2, v23, Retry, v24, v25 == 0, 200);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if ((*(*a3 + 56))(a3))
  {
    goto LABEL_51;
  }

  v28 = *(a3 + 8);
  v27 = *(a3 + 9);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v28)
  {
LABEL_51:
    v29 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v30 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v29);
    }

    v31 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    IPTelephonyManager::getBambiClient(&__p);
    (*(*__p.__r_.__value_.__l.__data_ + 184))(&v36);
    IMSMetricsManager::logRegistrationTerminated(v30, &v36, a3);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v32 = a1[25];
  if (v32)
  {
    v33 = std::__shared_weak_count::lock(v32);
    if (v33)
    {
      v34 = v33;
      v35 = a1[24];
      if (v35)
      {
        (*(*v35 + 24))(v35, a2, a3, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }
}

void IMSRegistrationManager::handleRegistrationError(void *a1, void **a2, SipRegistrationNotification *this, int a4)
{
  Retry = SipRegistrationNotification::secondsUntilNextRetry(this);
  v9 = a1 + 7;
  v10 = (*(a1[7] + 64))(a1 + 7);
  (*(a1[7] + 16))(a1 + 7, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Registration error = ", 21);
  *(v10 + 17) = 0;
  (*(*(this + 8) + 16))(this + 64, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ".  Next retry in ", 17);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923360](*(v10 + 8), Retry);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " seconds", 8);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (*(this + 9) == &SipResultDomain::_domain)
  {
    v11 = *(this + 20);
  }

  else
  {
    v11 = 0;
  }

  if (IMSRegistrationManager::getRegistrationState(a1, a2))
  {
    v36 = 0;
    *&v37 = 0;
    v34 = &unk_1F5EF3C38;
    v35 = &v36;
    v45 = 0;
    v46 = 0;
    IPTelephonyManager::getBambiClient(&v42);
    (*(*v42 + 184))(&v45);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (!v45)
    {
      v21 = (*(*v9 + 64))(a1 + 7);
      (*(*v9 + 16))(a1 + 7, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "sipStack is null: will not report.", 34);
      *(v21 + 17) = 0;
      v22 = (v21 + 17);
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      goto LABEL_27;
    }

    std::string::basic_string[abi:ne200100]<0>(&v42, "all");
    v12 = SipStack::prefs(v45);
    ImsPrefs::IgnoreReregistrationErrorCodes(v12, &__p);
    SipResponseCodeMap::addResponseCodesForMethodFromString(&v34, &v42, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v44 < 0)
    {
      operator delete(v42);
    }

    v13 = SipStack::prefs(v45);
    v14 = ImsPrefs::ReportSipErrorsDuringReRegistration(v13);
    if (v11)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "all");
      v16 = SipResponseCodeMap::containsResponseCodeForMethod(&v34, &v42, v11, 0);
      v17 = v16;
      if (v44 < 0)
      {
        operator delete(v42);
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else if (v16)
      {
        goto LABEL_18;
      }

      v24 = (*(*v9 + 64))(a1 + 7);
      (*(*v9 + 16))(a1 + 7, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Response ", 9);
      *(v24 + 17) = 0;
      MEMORY[0x1E6923350](*(v24 + 8), v11);
      *(v24 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " should be reported as RegistrationTerminated", 45);
      *(v24 + 17) = 0;
      (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v24 + 17) = 0;
      IMSRegistrationManager::setRegistrationTerminated(a1, a2, 0, Retry, 1, 1, 200);
      goto LABEL_30;
    }

LABEL_18:
    v18 = *(*v9 + 64);
    if (a4)
    {
      v19 = v18(a1 + 7);
      (*(*v9 + 16))(a1 + 7, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "causedByUAC. Will report.", 25);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      IMSRegistrationManager::setRegistrationError(a1, a2, Retry, v11);
LABEL_30:
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      v34 = &unk_1F5EF3C38;
      std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(&v35, v36);
      goto LABEL_33;
    }

    v23 = v18(a1 + 7);
    (*(*v9 + 16))(a1 + 7, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Will not report.", 16);
    *(v23 + 17) = 0;
    v22 = (v23 + 17);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_27:
    *v22 = 0;
    goto LABEL_30;
  }

  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = &unk_1F5EBDEF8;
  v35 = &_bambiDomain;
  LODWORD(v36) = 1073741848;
  if (*(this + 9) == &_bambiDomain)
  {
    v20 = *(this + 20);
    ImsResult::~ImsResult(&v34);
    if (v20 == 1073741848)
    {
      IMSRegistrationManager::setRegistrationTerminated(a1, a2, 7, -1, 0, 1, 200);
      goto LABEL_33;
    }
  }

  else
  {
    ImsResult::~ImsResult(&v34);
  }

  IMSRegistrationManager::setRegistrationError(a1, a2, Retry, v11);
LABEL_33:
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
  IPTelephonyManager::getBambiClient(&v34);
  (*(*v34 + 184))(&v32);
  IMSMetricsManager::logRegistrationError(v26, &v32, this);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = a1[25];
  if (v28)
  {
    v29 = std::__shared_weak_count::lock(v28);
    if (v29)
    {
      v30 = v29;
      v31 = a1[24];
      if (v31)
      {
        (*(*v31 + 40))(v31, a2, this, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }
}

void sub_1E4C908B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 96);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v33 + 8, a13);
  _Unwind_Resume(a1);
}

void IMSRegistrationManager::handleRegistrationModeChange(void *a1, void **a2, unsigned int *a3, uint64_t a4)
{
  v8 = a1 + 7;
  v9 = (*(a1[7] + 64))(a1 + 7);
  (*(*v8 + 16))(v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Registration mode changed to ", 29);
  *(v9 + 17) = 0;
  v10 = operator<<(v9, a3);
  (*(*v9 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v11 = *a3;
  if (*a3 == SipRegistrationMode::kModeDisabled)
  {
    IMSRegistrationManager::setRegistrationTerminated(a1, a2, 4, -1, 1, 1, a4);
    v11 = *a3;
  }

  if (v11 == SipRegistrationMode::kModeDisabledCountry)
  {
    IMSRegistrationManager::setRegistrationTerminated(a1, a2, 6, -1, 1, 1, 200);
    v11 = *a3;
  }

  if (v11 == SipRegistrationMode::kModeLimitedAccess)
  {
    IMSRegistrationManager::setRegistrationTerminated(a1, a2, 3, -1, 1, 1, 200);
    v11 = *a3;
  }

  if (v11 == SipRegistrationMode::kModeNormal)
  {
    v12 = IMSClientManager::delegateForStack(a2);
    (*(*(v12 + 8) + 104))();
    v11 = *a3;
  }

  if (v11 == SipRegistrationMode::kModeReprovision)
  {
    IMSRegistrationManager::setRegistrationTerminated(a1, a2, 11, -1, 1, 1, a4);
  }

  v13 = a1[25];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = a1[24];
      if (v16)
      {
        (*(*v16 + 32))(v16, a2, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

uint64_t IMSRegistrationManager::handleRegistrationIdentities(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 8) + 120);

  return v2();
}

uint64_t non-virtual thunk toIMSRegistrationManager::handleRegistrationIdentities(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 8) + 120);

  return v2();
}

uint64_t IMSRegistrationManager::handleNewInitialRegistration(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 8) + 128);

  return v2();
}

uint64_t non-virtual thunk toIMSRegistrationManager::handleNewInitialRegistration(uint64_t a1, void **a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 8) + 128);

  return v2();
}

void *IMSRegistrationManager::logPrefix(IMSRegistrationManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RegistrationManager: ", 21);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toIMSRegistrationManager::logPrefix(IMSRegistrationManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RegistrationManager: ", 21);
  *(a2 + 17) = 0;
  return result;
}

SipUri *std::vector<SipUri>::__assign_with_size[abi:ne200100]<SipUri*,SipUri*>(SipUri *result, SipUri *a2, SipUri *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xFAFAFAFAFAFAFAFBLL * ((*(result + 2) - *result) >> 3) < a4)
  {
    std::vector<SipUri>::__vdeallocate(result);
    if (a4 <= 0xA0A0A0A0A0A0A0)
    {
      v9 = 0xF5F5F5F5F5F5F5F6 * ((*(v7 + 2) - *v7) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xFAFAFAFAFAFAFAFBLL * ((*(v7 + 2) - *v7) >> 3) >= 0x50505050505050)
      {
        v10 = 0xA0A0A0A0A0A0A0;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SipUri>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(result + 1);
  v12 = v11 - v8;
  if (0xFAFAFAFAFAFAFAFBLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = SipUri::operator=(v8, v6);
        v6 += 408;
        v8 = (v8 + 408);
      }

      while (v6 != a3);
      v11 = *(v7 + 1);
    }

    if (v11 != v8)
    {
      v15 = v11 - 408;
      v16 = (v11 - 408);
      do
      {
        result = (**v16)(v16);
        v15 -= 408;
        v17 = v16 == v8;
        v16 = (v16 - 408);
      }

      while (!v17);
    }

    *(v7 + 1) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        SipUri::operator=(v8, v14);
        v14 += 408;
        v8 = (v8 + 408);
        v13 -= 408;
      }

      while (v13);
      v11 = *(v7 + 1);
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipUri>,SipUri*,SipUri*,SipUri*>(v7, (v6 + v12), a3, v11);
    *(v7 + 1) = result;
  }

  return result;
}

void std::vector<SipUri>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 51;
      v6 = v3 - 51;
      do
      {
        (**v6)(v6);
        v5 -= 51;
        v7 = v6 == v1;
        v6 -= 51;
      }

      while (!v7);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<SipUri>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

SipUri *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipUri>,SipUri*,SipUri*,SipUri*>(int a1, SipUri *a2, SipUri *a3, SipUri *this)
{
  v4 = this;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = this - 408;
    do
    {
      SipUri::SipUri(v4, v6);
      v6 = (v6 + 408);
      v4 = (v4 + 408);
      v7 -= 408;
      v8 += 408;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1E4C91140(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 408);
    do
    {
      (**v5)(v5);
      v5 -= 51;
      v3 -= 408;
      v2 += 408;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<SipRetryInfo>::__assign_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SipRetryInfo>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 4);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 4);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 4);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<SipRetryInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t **std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<unsigned int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<unsigned int>::__emplace_multi<unsigned int const&>();
  }

  return result;
}

void sub_1E4C91448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<unsigned int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<unsigned int>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<unsigned int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<unsigned int>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::set<unsigned int> &>::operator=[abi:ne200100]<std::string const,std::set<unsigned int>,0>(v16, (v9 + 4));
          v16[0] = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__emplace_multi<std::pair<std::string const,std::set<unsigned int>> const&>();
  }

  return result;
}

void sub_1E4C91744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::set<unsigned int> &>::operator=[abi:ne200100]<std::string const,std::set<unsigned int>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(uint64_t a1)
{
  std::__tree<unsigned int>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__emplace_multi<std::pair<std::string const,std::set<unsigned int>> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__construct_node<std::pair<std::string const,std::set<unsigned int>> const&>();
}

void sub_1E4C91920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::set<unsigned int>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1E4C91A54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, v5 + 1, v4 + 7);
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

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void ims::RegistrationActiveInfo::~RegistrationActiveInfo(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t ims::SharedLoggable<IMSRegistrationManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<IMSRegistrationManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipRegistrationConfig>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipRegistrationConfig>,0>(uint64_t a1)
{
  SipRegistrationConfig::~SipRegistrationConfig((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void SipRegistrationConfig::~SipRegistrationConfig(void **this)
{
  v3 = this + 204;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 1623) < 0)
  {
    operator delete(this[200]);
  }

  if (*(this + 1599) < 0)
  {
    operator delete(this[197]);
  }

  if (*(this + 1575) < 0)
  {
    operator delete(this[194]);
  }

  this[189] = &unk_1F5EE5038;
  std::__tree<unsigned int>::destroy((this + 190), this[191]);
  this[185] = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy((this + 186), this[187]);
  this[181] = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy((this + 182), this[183]);
  this[177] = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy((this + 178), this[179]);
  this[173] = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy((this + 174), this[175]);
  if (*(this + 1335) < 0)
  {
    operator delete(this[164]);
  }

  if (*(this + 1303) < 0)
  {
    operator delete(this[160]);
  }

  std::__tree<unsigned int>::destroy((this + 157), this[158]);
  std::__tree<unsigned int>::destroy((this + 154), this[155]);
  if (*(this + 1199) < 0)
  {
    operator delete(this[147]);
  }

  if (*(this + 1175) < 0)
  {
    operator delete(this[144]);
  }

  if (*(this + 1127) < 0)
  {
    operator delete(this[138]);
  }

  if (*(this + 1103) < 0)
  {
    operator delete(this[135]);
  }

  if (*(this + 1055) < 0)
  {
    operator delete(this[129]);
  }

  if (*(this + 1031) < 0)
  {
    operator delete(this[126]);
  }

  v2 = this[120];
  if (v2)
  {
    this[121] = v2;
    operator delete(v2);
  }

  if (*(this + 959) < 0)
  {
    operator delete(this[117]);
  }

  if (*(this + 935) < 0)
  {
    operator delete(this[114]);
  }

  if (*(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  SipUri::~SipUri((this + 60));
  SipUri::~SipUri((this + 9));
  v3 = this;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void ims::AccessNetworks::~AccessNetworks(void **this)
{
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
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

void std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,SipRegistrationConfig>,std::__map_value_compare<std::string,std::__value_type<std::string,SipRegistrationConfig>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipRegistrationConfig>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,SipRegistrationConfig>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,SipRegistrationConfig>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipRegistrationConfig>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE21SipRegistrationConfigEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  bzero(&this[1], 0x688uLL);
  SipRegistrationConfig::SipRegistrationConfig(&this[1]);
  return this;
}

void sub_1E4C92748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationConfig::SipRegistrationConfig(SipRegistrationConfig *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 16777473;
  *(this + 36) = xmmword_1E5165ED0;
  *(this + 52) = xmmword_1E5165EE0;
  *(this + 68) = 1;
  SipUri::SipUri((this + 72));
  SipUri::SipUri((this + 480));
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 123) = 60;
  *(this + 124) = 30;
  *(this + 125) = 0x200000001;
  *(this + 133) = 0;
  *(this + 1072) = 0;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 65) = 0u;
  *(this + 1056) = 0;
  *(this + 142) = 0;
  *(this + 1144) = 0;
  *(this + 1128) = 0;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1080) = 0u;
  *(this + 151) = 0;
  *(this + 1216) = 0;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 74) = 0u;
  *(this + 1200) = 0;
  *(this + 612) = 1;
  *(this + 1226) = 0;
  *(this + 1240) = 0u;
  *(this + 154) = this + 1240;
  *(this + 79) = 0u;
  *(this + 157) = this + 1264;
  *(this + 162) = 0;
  *(this + 80) = 0u;
  *(this + 163) = 0x300000003;
  std::string::basic_string[abi:ne200100]<0>(this + 1312, "sos");
  *(this + 167) = 0x100000002;
  *(this + 336) = 16842752;
  *(this + 674) = 0;
  *(this + 1352) = xmmword_1E5165EF0;
  *(this + 171) = 900;
  *(this + 688) = 256;
  *(this + 1378) = 1;
  *(this + 173) = &unk_1F5EF3C38;
  *(this + 1400) = 0u;
  *(this + 174) = this + 1400;
  *(this + 177) = &unk_1F5EF3C38;
  *(this + 1432) = 0u;
  *(this + 178) = this + 1432;
  *(this + 181) = &unk_1F5EF3C38;
  *(this + 1464) = 0u;
  *(this + 182) = this + 1464;
  *(this + 185) = &unk_1F5EF3C38;
  *(this + 1496) = 0u;
  *(this + 186) = this + 1496;
  *(this + 189) = &unk_1F5EE5038;
  *(this + 1528) = 0u;
  *(this + 190) = this + 1528;
  *(this + 1544) = 0;
  *(this + 97) = 0u;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 100) = 0u;
  *(this + 202) = 0;
  *(this + 206) = 0;
  *(this + 102) = 0u;
  *(this + 828) = 256;
  *(this + 415) = 0;
  *(this + 832) = 1;
}

void sub_1E4C929E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 1303) < 0)
  {
    operator delete(*v12);
  }

  std::__tree<unsigned int>::destroy(v10 + 1256, *(v10 + 1264));
  std::__tree<unsigned int>::destroy(v10 + 1232, *(v10 + 1240));
  ims::AccessNetworks::~AccessNetworks((v10 + 1008));
  v14 = *(v10 + 960);
  if (v14)
  {
    *(v10 + 968) = v14;
    operator delete(v14);
  }

  if (*(v10 + 959) < 0)
  {
    operator delete(*(v10 + 936));
  }

  if (*(v10 + 935) < 0)
  {
    operator delete(*(v10 + 912));
  }

  if (*(v10 + 911) < 0)
  {
    operator delete(*v11);
  }

  SipUri::~SipUri((v10 + 480));
  SipUri::~SipUri((v10 + 72));
  a10 = v10;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4C92C14(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

const char *toString(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "kCFStreamEventCanAcceptBytes";
    }

    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return "kCFStreamEventEndEncountered";
      }

      return "Unknown event";
    }

    return "kCFStreamEventErrorOccurred";
  }

  else
  {
    if (!a1)
    {
      return "kCFStreamEventNone";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "kCFStreamEventHasBytesAvailable";
      }

      return "Unknown event";
    }

    return "kCFStreamEventOpenCompleted";
  }
}

void sub_1E4C92E48(_Unwind_Exception *a1)
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

uint64_t HttpStreamPair::HttpStreamPair(uint64_t a1, void *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EC0F90;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v5;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_1E4C92EFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void HttpStreamPair::~HttpStreamPair(HttpStreamPair *this)
{
  *this = &unk_1F5EC0F90;
  if (*(this + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, kXcapLoggingFacility);
    v6[0] = 0;
    v9 = 0;
    v2 = ims::debug(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ": ", 2);
    *(v2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Cleaning up read stream: ", 25);
    *(v2 + 17) = 0;
    MEMORY[0x1E6923310](*(v2 + 8), *(this + 8));
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    CFReadStreamSetClient(*(this + 8), 0, 0, 0);
    CFReadStreamClose(*(this + 8));
    CFRelease(*(this + 8));
    *(this + 8) = 0;
  }

  if (*(this + 9))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, kXcapLoggingFacility);
    v6[0] = 0;
    v9 = 0;
    v3 = ims::debug(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Cleaning up write stream: ", 26);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923310](*(v3 + 8), *(this + 9));
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    CFWriteStreamSetClient(*(this + 9), 0, 0, 0);
    CFWriteStreamClose(*(this + 9));
    CFRelease(*(this + 9));
    *(this + 9) = 0;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  HttpStreamPair::~HttpStreamPair(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4C93194(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  __clang_call_terminate(a1);
}

BOOL HttpStreamPair::initialize(CFReadStreamRef *a1, const char *a2, UInt32 a3)
{
  v5 = *MEMORY[0x1E695E480];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9[0] = &unk_1F5EF36B0;
  v9[1] = v6;
  CFStreamCreatePairWithSocketToHost(v5, v6, a3, a1 + 8, a1 + 9);
  v7 = HttpStreamPair::_initiateReadStream(a1) && (HttpStreamPair::_initiateWriteStream(a1) & 1) != 0;
  ims::CFType::~CFType(v9);
  return v7;
}

uint64_t HttpStreamPair::_initiateReadStream(HttpStreamPair *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 1174405120;
  v65[2] = ___ZN14HttpStreamPair19_initiateReadStreamEv_block_invoke;
  v65[3] = &__block_descriptor_tmp_31;
  v65[4] = v3;
  v66 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  clientContext.version = 0;
  clientContext.info = v65;
  clientContext.retain = xcap_block_retain;
  clientContext.release = xcap_block_release;
  clientContext.copyDescription = 0;
  if (CFReadStreamSetClient(*(this + 8), 0x1BuLL, HttpStreamPair::_handleReadStreamCallback, &clientContext))
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v62, kXcapLoggingFacility);
    v58[0] = 0;
    v61 = 0;
    v8 = ims::info(v7, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Set xcap queue for read stream", 30);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    v9 = *(this + 8);
    xcap::getQueue(&v62);
    v10 = v62;
    MEMORY[0x1E6921E30](v9, v62);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v62 = 0uLL;
  v63 = 0;
  v11 = *(this + 4);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(this + 3);
      if (v14)
      {
        (**v14)(&v56);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62);
        }

        v62 = v56;
        v63 = v57;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v54 = 0;
  v55 = 0;
  v15 = *MEMORY[0x1E695E480];
  if (v63 >= 0)
  {
    v16 = &v62;
  }

  else
  {
    v16 = v62;
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x600u);
  v54 = &unk_1F5EF36B0;
  v55 = v17;
  if (CFReadStreamSetProperty(*(this + 8), *MEMORY[0x1E695AE48], v17))
  {
    if (*(this + 63) < 0)
    {
      if (*(this + 6))
      {
        v48 = 0;
        propertyValue = 0;
        v18 = *(this + 5);
LABEL_30:
        v48 = &unk_1F5EF36B0;
        propertyValue = CFStringCreateWithCString(v15, v18, 0x600u);
        v22 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
        v44[0] = 0;
        v47 = 0;
        v23 = ims::debug(v22, v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
        *(v23 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Setting account ID property to carrier ID: ", 43);
        *(v23 + 17) = 0;
        (*(*v23 + 32))(v23, this + 40);
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v47 == 1 && v46 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56);
        }

        if (!CFReadStreamSetProperty(*(this + 8), *MEMORY[0x1E695AE10], propertyValue))
        {
          v29 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
          v40[0] = 0;
          v43 = 0;
          v30 = ims::error(v29, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ": ", 2);
          *(v30 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Failed to set stream property on read stream: kCFStreamPropertyAccountIdentifier", 80);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (v43 == 1 && v42 < 0)
          {
            operator delete(v41);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          ims::CFType::~CFType(&v48);
          goto LABEL_56;
        }

        ims::CFType::~CFType(&v48);
        goto LABEL_42;
      }
    }

    else if (*(this + 63))
    {
      v48 = 0;
      propertyValue = 0;
      v18 = this + 40;
      goto LABEL_30;
    }

    v24 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
    v36[0] = 0;
    v39 = 0;
    v25 = ims::error(v24, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ": ", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "No network ID given for carrier ", 32);
    *(v25 + 17) = 0;
    (*(*v25 + 32))(v25, this + 40);
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

LABEL_42:
    if (CFReadStreamOpen(*(this + 8)))
    {
      v26 = 1;
      goto LABEL_57;
    }

    v27 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
    v32[0] = 0;
    v35 = 0;
    v28 = ims::error(v27, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": ", 2);
    *(v28 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Failed to open read stream", 26);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v35 != 1 || (v34 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v21 = v33;
    goto LABEL_47;
  }

  v19 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
  v50[0] = 0;
  v53 = 0;
  v20 = ims::error(v19, v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ": ", 2);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Failed to set stream property on read stream: kCFStreamPropertyDataConnectionServiceType", 88);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v53 == 1 && v52 < 0)
  {
    v21 = v51;
LABEL_47:
    operator delete(v21);
  }

LABEL_48:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

LABEL_56:
  v26 = 0;
LABEL_57:
  ims::CFType::~CFType(&v54);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__shared_weak_count::__release_weak(v5);
  return v26;
}

void sub_1E4C93A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38)
{
  ims::CFType::~CFType(&a38);
  ims::CFType::~CFType((v39 - 256));
  if (*(v39 - 137) < 0)
  {
    operator delete(*(v39 - 160));
  }

  v41 = *(v39 - 56);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

void sub_1E4C93BC4()
{
  if (*(v0 - 168) == 1 && *(v0 - 177) < 0)
  {
    operator delete(*(v0 - 200));
  }

  JUMPOUT(0x1E4C93B98);
}

uint64_t HttpStreamPair::_initiateWriteStream(HttpStreamPair *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 1174405120;
  v65[2] = ___ZN14HttpStreamPair20_initiateWriteStreamEv_block_invoke;
  v65[3] = &__block_descriptor_tmp_18_2;
  v65[4] = v3;
  v66 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  clientContext.version = 0;
  clientContext.info = v65;
  clientContext.retain = xcap_block_retain;
  clientContext.release = xcap_block_release;
  clientContext.copyDescription = 0;
  if (CFWriteStreamSetClient(*(this + 9), 0x1DuLL, HttpStreamPair::_handleWriteStreamCallback, &clientContext))
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v62, kXcapLoggingFacility);
    v58[0] = 0;
    v61 = 0;
    v8 = ims::info(v7, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Set xcap queue for write stream", 31);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    v9 = *(this + 9);
    xcap::getQueue(&v62);
    v10 = v62;
    MEMORY[0x1E6921FD0](v9, v62);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v62 = 0uLL;
  v63 = 0;
  v11 = *(this + 4);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(this + 3);
      if (v14)
      {
        (**v14)(&v56);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62);
        }

        v62 = v56;
        v63 = v57;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v54 = 0;
  v55 = 0;
  v15 = *MEMORY[0x1E695E480];
  if (v63 >= 0)
  {
    v16 = &v62;
  }

  else
  {
    v16 = v62;
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x600u);
  v54 = &unk_1F5EF36B0;
  v55 = v17;
  if (CFWriteStreamSetProperty(*(this + 9), *MEMORY[0x1E695AE48], v17))
  {
    if (*(this + 63) < 0)
    {
      if (*(this + 6))
      {
        v48 = 0;
        propertyValue = 0;
        v18 = *(this + 5);
LABEL_30:
        v48 = &unk_1F5EF36B0;
        propertyValue = CFStringCreateWithCString(v15, v18, 0x600u);
        v22 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
        v44[0] = 0;
        v47 = 0;
        v23 = ims::debug(v22, v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
        *(v23 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Setting account ID property to carrier ID: ", 43);
        *(v23 + 17) = 0;
        (*(*v23 + 32))(v23, this + 40);
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v47 == 1 && v46 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56);
        }

        if (!CFWriteStreamSetProperty(*(this + 9), *MEMORY[0x1E695AE10], propertyValue))
        {
          v29 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
          v40[0] = 0;
          v43 = 0;
          v30 = ims::error(v29, v40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ": ", 2);
          *(v30 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Failed to set stream property on write stream: kCFStreamPropertyAccountIdentifier", 81);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (v43 == 1 && v42 < 0)
          {
            operator delete(v41);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          ims::CFType::~CFType(&v48);
          goto LABEL_56;
        }

        ims::CFType::~CFType(&v48);
        goto LABEL_42;
      }
    }

    else if (*(this + 63))
    {
      v48 = 0;
      propertyValue = 0;
      v18 = this + 40;
      goto LABEL_30;
    }

    v24 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
    v36[0] = 0;
    v39 = 0;
    v25 = ims::error(v24, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ": ", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "No network ID given for carrier ", 32);
    *(v25 + 17) = 0;
    (*(*v25 + 32))(v25, this + 40);
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

LABEL_42:
    if (CFWriteStreamOpen(*(this + 9)))
    {
      v26 = 1;
      goto LABEL_57;
    }

    v27 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
    v32[0] = 0;
    v35 = 0;
    v28 = ims::error(v27, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": ", 2);
    *(v28 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Failed to open write stream", 27);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v35 != 1 || (v34 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v21 = v33;
    goto LABEL_47;
  }

  v19 = std::string::basic_string[abi:ne200100]<0>(&v56, kXcapLoggingFacility);
  v50[0] = 0;
  v53 = 0;
  v20 = ims::error(v19, v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ": ", 2);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Failed to set stream property on write stream: kCFStreamPropertyDataConnectionServiceType)", 90);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v53 == 1 && v52 < 0)
  {
    v21 = v51;
LABEL_47:
    operator delete(v21);
  }

LABEL_48:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

LABEL_56:
  v26 = 0;
LABEL_57:
  ims::CFType::~CFType(&v54);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__shared_weak_count::__release_weak(v5);
  return v26;
}

void sub_1E4C9435C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38)
{
  ims::CFType::~CFType(&a38);
  ims::CFType::~CFType((v39 - 256));
  if (*(v39 - 137) < 0)
  {
    operator delete(*(v39 - 160));
  }

  v41 = *(v39 - 56);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

void sub_1E4C944BC()
{
  if (*(v0 - 168) == 1 && *(v0 - 177) < 0)
  {
    operator delete(*(v0 - 200));
  }

  JUMPOUT(0x1E4C94490);
}

void ___ZN14HttpStreamPair19_initiateReadStreamEv_block_invoke(uint64_t a1, __CFReadStream *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, kXcapLoggingFacility);
    v25[0] = 0;
    v28 = 0;
    v10 = ims::info(v19, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Handling read stream callback with event '", 42);
    *(v10 + 17) = 0;
    v11 = toString(a3);
    v12 = strlen(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, v12);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "'", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    v13 = *(v9 + 32);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(v9 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (a3 > 7)
    {
      if (a3 == 8)
      {
        v18 = CFReadStreamCopyError(a2);
        if (v15)
        {
          (*(*v15 + 24))(v15, 0, v18);
        }

        CFRelease(v18);
        goto LABEL_32;
      }

      if (a3 == 16)
      {
        if (v15)
        {
          (*(*v15 + 32))(v15, 0);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (a3 == 1)
      {
LABEL_32:
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        goto LABEL_34;
      }

      if (a3 == 2)
      {
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        goto LABEL_32;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v23, kXcapLoggingFacility);
    LOBYTE(v19[0]) = 0;
    v22 = 0;
    v16 = ims::warn(v23, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), ": ", 2);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Not handling CFStreamEventType - ", 33);
    *(v16 + 17) = 0;
    v17 = strlen(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v11, v17);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    goto LABEL_32;
  }

LABEL_34:

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_1E4C94860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrI14HttpStreamPairEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrI14HttpStreamPairEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN14HttpStreamPair20_initiateWriteStreamEv_block_invoke(uint64_t a1, __CFWriteStream *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, kXcapLoggingFacility);
    v25[0] = 0;
    v28 = 0;
    v10 = ims::info(v19, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Handling write stream callback with event '", 43);
    *(v10 + 17) = 0;
    v11 = toString(a3);
    v12 = strlen(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, v12);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "'", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    v13 = *(v9 + 32);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(v9 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (a3 > 7)
    {
      if (a3 == 8)
      {
        v18 = CFWriteStreamCopyError(a2);
        if (v15)
        {
          (*(*v15 + 24))(v15, 1, v18);
        }

        CFRelease(v18);
        goto LABEL_32;
      }

      if (a3 == 16)
      {
        if (v15)
        {
          (*(*v15 + 32))(v15, 1);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (a3 == 1)
      {
LABEL_32:
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        goto LABEL_34;
      }

      if (a3 == 4)
      {
        if (v15)
        {
          (*(*v15 + 16))(v15);
        }

        goto LABEL_32;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v23, kXcapLoggingFacility);
    LOBYTE(v19[0]) = 0;
    v22 = 0;
    v16 = ims::warn(v23, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), ": ", 2);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Not handling CFStreamEventType - ", 33);
    *(v16 + 17) = 0;
    v17 = strlen(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v11, v17);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    goto LABEL_32;
  }

LABEL_34:

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_1E4C94CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

uint64_t HttpStreamPair::readData(HttpStreamPair *this, void *a2, unint64_t *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    if (CFReadStreamHasBytesAvailable(v5))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      std::vector<unsigned char>::vector[abi:ne200100](&v38, *a3);
      v7 = CFReadStreamRead(*(this + 8), v38, *a3);
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v32, kXcapLoggingFacility);
        v24[0] = 0;
        v27 = 0;
        v9 = ims::debug(v8, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "readData: Length - Expected = ", 30);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923370](*(v9 + 8), *a3);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ", Actual = ", 11);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923360](*(v9 + 8), v7);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        v10 = v38;
        memcpy(a2, v38, v7);
        if (v7 == *a3)
        {
          v11 = 0;
        }

        else
        {
          v11 = 4294957493;
        }

        *a3 = v7;
        if (!v10)
        {
          return v11;
        }

LABEL_32:
        v39 = v10;
        operator delete(v10);
        return v11;
      }

      v16 = *&CFReadStreamGetError(*(this + 64)).error;
      v17 = std::string::basic_string[abi:ne200100]<0>(v32, kXcapLoggingFacility);
      v28[0] = 0;
      v31 = 0;
      v18 = ims::error(v17, v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ": ", 2);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Failure to read data from stream. Errorcode: ", 45);
      *(v18 + 17) = 0;
      MEMORY[0x1E6923340](*(v18 + 8), v16);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v31 == 1 && v30 < 0)
      {
        operator delete(v29);
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      v11 = 4294957496;
      v10 = v38;
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v14 = std::string::basic_string[abi:ne200100]<0>(&v38, kXcapLoggingFacility);
      v20[0] = 0;
      v23 = 0;
      v15 = ims::debug(v14, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
      *(v15 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "readData: No bytes available to be read", 39);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v38);
      }

      *a3 = 0;
      return 4294957493;
    }
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v38, kXcapLoggingFacility);
    v34[0] = 0;
    v37 = 0;
    v13 = ims::error(v12, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": ", 2);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Stream not open for reading: ", 29);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    *a3 = 0;
    return 4294957496;
  }

  return v11;
}

void sub_1E4C951A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  v40 = *(v38 - 72);
  if (v40)
  {
    *(v38 - 64) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HttpStreamPair::writeData(HttpStreamPair *this, const UInt8 *a2, CFIndex *a3)
{
  v5 = *(this + 9);
  if (!v5)
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v28, kXcapLoggingFacility);
    v24[0] = 0;
    v27 = 0;
    v12 = ims::error(v11, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": ", 2);
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Stream not open for writing: ", 29);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    *a3 = 0;
    return 4294957496;
  }

  v6 = CFWriteStreamWrite(v5, a2, *a3);
  if (v6 < 0)
  {
    v13 = *&CFWriteStreamGetError(*(this + 72)).error;
    v14 = std::string::basic_string[abi:ne200100]<0>(v28, kXcapLoggingFacility);
    v20[0] = 0;
    v23 = 0;
    v15 = ims::error(v14, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Failed to write data to stream. Errorcode: ", 43);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923340](*(v15 + 8), v13);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    return 4294957496;
  }

  v7 = v6;
  v8 = std::string::basic_string[abi:ne200100]<0>(v28, kXcapLoggingFacility);
  v16[0] = 0;
  v19 = 0;
  v9 = ims::debug(v8, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "writeData: Length - Max = ", 26);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923370](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ", Actual = ", 11);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923360](*(v9 + 8), v7);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  result = 0;
  *a3 = v7;
  return result;
}

void sub_1E4C95558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 33) < 0)
  {
    operator delete(*(v38 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *HttpStreamPair::_hostPortInfo(void *this, int (*a2)(int, sockaddr *, unsigned int *), unsigned int (*a3)(void, sockaddr *, int *))
{
  v3 = this;
  v58 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 8))
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
    goto LABEL_42;
  }

  v48 = 0;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  __src = 0u;
  v40 = 0u;
  v41 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  v38 = 0;
  v39 = 0;
  v6 = CFReadStreamCopyProperty(*(a2 + 8), *MEMORY[0x1E695E948]);
  v38 = &unk_1F5EE1298;
  v39 = v6;
  if (!v6)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&__s, kXcapLoggingFacility);
    v22[0] = 0;
    v25 = 0;
    v11 = ims::warn(v10, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ": ", 2);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Cannot fetch transport name/ip - CFReadStreamCopyProperty() failed ", 67);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v25 != 1 || (v24 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v9 = __p;
    goto LABEL_11;
  }

  *buffer = 0;
  v59.location = 0;
  v59.length = 4;
  CFDataGetBytes(v6, v59, buffer);
  *&v57.sa_len = 0;
  *&v57.sa_data[6] = 0;
  v36 = 16;
  if (a3(*buffer, &v57, &v36))
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&__s, kXcapLoggingFacility);
    v26[0] = 0;
    v29 = 0;
    v8 = ims::warn(v7, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Cannot fetch transport name/ip - getsockname() failed ", 54);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v29 != 1 || (v28 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v9 = v27;
LABEL_11:
    operator delete(v9);
LABEL_12:
    if ((SBYTE7(v50) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v12 = __s;
    goto LABEL_14;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  __s = 0u;
  v50 = 0u;
  if (getnameinfo(&v57, 0x10u, &__s, 0x80u, 0, 0, 10))
  {
    std::string::basic_string[abi:ne200100]<0>(v34, kXcapLoggingFacility);
    v30[0] = 0;
    v33 = 0;
    v13 = ims::warn(v34, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": ", 2);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Cannot fetch transport name/ip - getnameinfo() failed ", 54);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v35 < 0)
    {
      v12 = v34[0];
LABEL_14:
      operator delete(v12);
    }
  }

  else
  {
    if (v57.sa_family == 30 || v57.sa_family == 2)
    {
      v14 = bswap32(*v57.sa_data) >> 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = strlen(&__s);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, &__s, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ":", 1);
    MEMORY[0x1E6923390](v17, v14);
  }

LABEL_26:
  if ((BYTE8(v46) & 0x10) != 0)
  {
    v19 = v46;
    if (v46 < *(&__src + 1))
    {
      *&v46 = *(&__src + 1);
      v19 = *(&__src + 1);
    }

    v20 = __src;
    goto LABEL_33;
  }

  if ((BYTE8(v46) & 8) != 0)
  {
    v20 = *(&v41 + 1);
    v19 = *(&v42 + 1);
LABEL_33:
    v18 = v19 - v20;
    if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v3[23] = v18;
    if (v18)
    {
      memmove(v3, v20, v18);
    }

    goto LABEL_39;
  }

  v18 = 0;
  v3[23] = 0;
LABEL_39:
  v3[v18] = 0;
  ims::CFType::~CFType(&v38);
  *&v40 = *MEMORY[0x1E69E54E8];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v40 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(*(&v44 + 1));
  }

  *(&v40 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v41);
  std::ostream::~ostream();
  this = MEMORY[0x1E6923510](v47);
LABEL_42:
  v21 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1E4C95B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ims::CFType::~CFType(&a47);
  std::ostringstream::~ostringstream(&a49, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a63);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1E4C95CDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<HttpStreamPair::create(std::weak_ptr<HttpStreamPairDelegate>,std::string const&)::make_shared_enabler,std::allocator<HttpStreamPair::create(std::weak_ptr<HttpStreamPairDelegate>,std::string const&)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void HttpStreamPair::create(std::weak_ptr<HttpStreamPairDelegate>,std::string const&)::make_shared_enabler::~make_shared_enabler(HttpStreamPair *a1)
{
  HttpStreamPair::~HttpStreamPair(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t BambiCallMediaStream::BambiCallMediaStream(uint64_t a1, void *a2, int a3)
{
  if (*a2)
  {
    v6 = *a2 + 8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = &unk_1F5ED7128;
  *(a1 + 8) = v6;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.ipTelephony", "bambi.call.media");
  *a1 = &unk_1F5EC10D0;
  *(a1 + 16) = &unk_1F5EC1130;
  v7 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a3;
  *(a1 + 68) = 2;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0u;
  return a1;
}

void BambiCallMediaStream::~BambiCallMediaStream(BambiCallMediaStream *this)
{
  *this = &unk_1F5EC10D0;
  *(this + 2) = &unk_1F5EC1130;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 24);
}

{
  BambiCallMediaStream::~BambiCallMediaStream(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallMediaStream::~BambiCallMediaStream(BambiCallMediaStream *this)
{
  BambiCallMediaStream::~BambiCallMediaStream((this - 16));
}

{
  BambiCallMediaStream::~BambiCallMediaStream((this - 16));

  JUMPOUT(0x1E69235B0);
}

void *BambiCallMediaStream::setMediaSessionId(void *this, uint64_t a2)
{
  if (this[6] != a2)
  {
    v3 = this;
    this[6] = a2;
    v4 = (*(*this + 64))(this);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setMediaSessionId to ", 21);
    *(v4 + 17) = 0;
    MEMORY[0x1E69233B0](*(v4 + 8), a2);
    *(v4 + 17) = 0;
    this = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
  }

  return this;
}

void *BambiCallMediaStream::logPrefix(BambiCallMediaStream *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "BambiCallMediaStream: ", 22);
  *(a2 + 17) = 0;
  return result;
}

void SipUssdDataBody::SipUssdDataBody(SipUssdDataBody *this, const SipUssdData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F5EC11C8;
  SipUssdData::SipUssdData((this + 32), a2);
}

void sub_1E4C96140(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5ED9B90;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void SipUssdData::~SipUssdData(SipUssdData *this)
{
  *this = &unk_1F5ED18C0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED1938;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  *this = &unk_1F5ED18C0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED1938;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);

  JUMPOUT(0x1E69235B0);
}

void SipUssdDataBody::generateXml(SipUssdDataBody *this@<X0>, std::string *a2@<X8>)
{
  v7 = 0;
  *__p = 0u;
  v6 = 0u;
  *v4 = 0u;
  memset(v3, 0, sizeof(v3));
  SipUssdData::SipUssdData(v3, (this + 32));
  bambi::XmlTreeItem::encode((v3 + 8), 0, 1, a2);
  *&v3[0] = &unk_1F5ED18C0;
  *(&v3[0] + 1) = &unk_1F5ED1938;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v4[0]);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v3 + 1);
}

void SipUssdDataBody::~SipUssdDataBody(SipUssdDataBody *this)
{
  *this = &unk_1F5EC11C8;
  *(this + 4) = &unk_1F5ED18C0;
  v2 = (this + 40);
  *(this + 5) = &unk_1F5ED1938;
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5EC11C8;
  *(this + 4) = &unk_1F5ED18C0;
  v2 = (this + 40);
  *(this + 5) = &unk_1F5ED1938;
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4C96534(_Unwind_Exception *a1)
{
  *v2 = &unk_1F5ED9B90;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void SipIPSecTransportGroup::SipTransportPair::deletePair(SipIPSecTransportGroup::SipTransportPair *this)
{
  v2 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t SipIPSecTransportGroup::SipIPSecTransportGroup(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::SipTransportGroup(a1, &v14);
  v5 = (a1 + 264);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *a1 = &unk_1F5EC1268;
  *(a1 + 8) = &unk_1F5EC13C0;
  *(a1 + 192) = &unk_1F5EC1420;
  *(a1 + 256) = &unk_1F5EC1448;
  *v5 = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 384));
  *(a1 + 564) = 0;
  v6 = *(a1 + 272);
  *v5 = 0;
  *(a1 + 272) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 288);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 304);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 376) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 512) = a1;
  (*(**a2 + 16))(&v10);
  std::string::operator=((a1 + 432), (a1 + 16));
  *(a1 + 456) = v10;
  *(a1 + 464) = v11;
  std::string::operator=((a1 + 472), &__p);
  *(a1 + 496) = v13;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E4C96838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  SipTimerContainer::~SipTimerContainer((v19 + 48));
  v21 = v19[40];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = v19[38];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = v19[36];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = v19[34];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  SipTransportGroup::~SipTransportGroup(v19);
  _Unwind_Resume(a1);
}

void SipIPSecTransportGroup::~SipIPSecTransportGroup(int8x8_t *this)
{
  *this = &unk_1F5EC1268;
  this[1] = &unk_1F5EC13C0;
  this[24] = &unk_1F5EC1420;
  this[32] = &unk_1F5EC1448;
  v2 = this[35];
  if (v2)
  {
    (*(**&v2 + 48))(v2);
    v3 = this[36];
    this[35] = 0;
    this[36] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = this[34];
  this[33] = 0;
  this[34] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[38];
  this[37] = 0;
  this[38] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[42];
  if (v6)
  {
    (*(**&v6 + 8))(v6);
  }

  this[42] = 0;
  v7 = this[43];
  if (v7)
  {
    (*(**&v7 + 8))(v7);
  }

  this[43] = 0;
  v8 = this[41];
  if (v8)
  {
    (*(**&v8 + 8))(v8);
  }

  v9 = this[40];
  this[39] = 0;
  this[40] = 0;
  this[41] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = this[44];
  if (v10)
  {
    (*(**&v10 + 8))(v10);
  }

  this[44] = 0;
  v11 = this[45];
  if (v11)
  {
    (*(**&v11 + 8))(v11);
  }

  this[45] = 0;
  v12 = this[46];
  if (v12)
  {
    (*(**&v12 + 8))(v12);
  }

  this[46] = 0;
  SipTimerContainer::cancelTimer(this + 48, "SALifetime");
  SipTimerContainer::~SipTimerContainer(&this[48]);
  v13 = this[40];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[38];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[36];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = this[34];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  SipTransportGroup::~SipTransportGroup(this);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipIPSecTransportGroup::~SipIPSecTransportGroup(int8x8_t *this)
{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 1);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 24);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 32);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 1);

  JUMPOUT(0x1E69235B0);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 24);

  JUMPOUT(0x1E69235B0);
}

{
  SipIPSecTransportGroup::~SipIPSecTransportGroup(this - 32);

  JUMPOUT(0x1E69235B0);
}

void SipIPSecTransportGroup::securityDelegate(SipIPSecTransportGroup *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3 && (atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed), v6 = std::__shared_weak_count::lock(a3), std::__shared_weak_count::__release_weak(a3), v6))
  {
    if (a2)
    {
      (*(*a2 + 104))(a2);
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

uint64_t ImsResult::operator<<<char [39]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [12]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [28]>(uint64_t a1, char *__s)
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

void SipIPSecTransportGroup::initialize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X4>, ImsResult *a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  SipIPSecTransportGroup::securityDelegate(v95, *(a1 + 240), *(a1 + 248));
  if (!*&v95[8])
  {
    v8 = 0;
LABEL_48:
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    *v95 = &unk_1F5EBDEF8;
    *&v95[8] = &_bambiDomain;
    LODWORD(v96) = 1073741827;
    v29 = ImsResult::operator<<<char [25]>(v95, "no security delegate set");
    ImsResult::ImsResult(a4, v29);
    ImsResult::~ImsResult(v95);
    goto LABEL_81;
  }

  v8 = std::__shared_weak_count::lock(*&v95[8]);
  v9 = *v95;
  if (!v8)
  {
    v9 = 0;
  }

  v67 = v9;
  if (*&v95[8])
  {
    std::__shared_weak_count::__release_weak(*&v95[8]);
  }

  if (!v67)
  {
    goto LABEL_48;
  }

  v10 = *(a1 + 248);
  if (v10)
  {
    v11 = *(a1 + 240);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = std::__shared_weak_count::lock(v10);
    v13 = v10;
    v10 = v12;
    std::__shared_weak_count::__release_weak(v13);
    if (v10)
    {
      if (v11)
      {
        (*(*v11 + 128))(v95, v11);
        if (*&v95[8])
        {
          v66 = std::__shared_weak_count::lock(*&v95[8]);
          if (v66)
          {
            v14 = *v95;
          }

          else
          {
            v14 = 0;
          }

          if (*&v95[8])
          {
            std::__shared_weak_count::__release_weak(*&v95[8]);
          }

          if (v14)
          {
            v15 = *(a1 + 232);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 144))(v95, a1);
              v16 = v96 >= 0 ? v95 : *v95;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v16;
              _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipIPSecTransportGroup::initialize()", buf, 0x16u);
              if (SHIBYTE(v96) < 0)
              {
                operator delete(*v95);
              }
            }

            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            memset(v68, 0, 88);
            v17 = a3[1];
            v63 = *a3;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v65 = v17;
            v18 = *(a1 + 248);
            if (v18)
            {
              v19 = v10;
              v20 = *(a1 + 240);
              atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v21 = std::__shared_weak_count::lock(v18);
              std::__shared_weak_count::__release_weak(v18);
              v62 = v21;
              if (v21)
              {
                if (v20)
                {
                  v61 = v20;
                  (*(*v20 + 128))(v95, v20);
                  v10 = v19;
                  if (*&v95[8])
                  {
                    v59 = std::__shared_weak_count::lock(*&v95[8]);
                    v22 = *v95;
                    if (!v59)
                    {
                      v22 = 0;
                    }

                    v60 = v22;
                    if (*&v95[8])
                    {
                      std::__shared_weak_count::__release_weak(*&v95[8]);
                    }

                    if (v60)
                    {
                      v90[1] = 0;
                      v90[0] = 0;
                      v91 = 0;
                      std::string::basic_string[abi:ne200100]<0>(v90, "67A03811-DB0A-594E-C2AE-8B0517EDF26F");
                      v23 = *(a1 + 248);
                      if (!v23)
                      {
                        goto LABEL_94;
                      }

                      v24 = *(a1 + 240);
                      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v25 = std::__shared_weak_count::lock(v23);
                      std::__shared_weak_count::__release_weak(v23);
                      if (!v25)
                      {
                        goto LABEL_94;
                      }

                      if (v24)
                      {
                        (*(*v24 + 128))(v95, v24);
                        if (*&v95[8])
                        {
                          v26 = std::__shared_weak_count::lock(*&v95[8]);
                          if (v26)
                          {
                            v27 = *v95;
                          }

                          else
                          {
                            v27 = 0;
                          }

                          if (*&v95[8])
                          {
                            std::__shared_weak_count::__release_weak(*&v95[8]);
                          }

                          if (v27)
                          {
                            v28 = *(v27 + 2817);
                            if (v26)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                              if ((v28 & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                              if (!v28)
                              {
                                goto LABEL_94;
                              }
                            }

                            SipStackConfig::getRcsNetworkBundleId((v60 + 328), v95);
                            if (SHIBYTE(v91) < 0)
                            {
                              operator delete(v90[0]);
                            }

                            *v90 = *v95;
                            v91 = v96;
LABEL_94:
                            v89 = 0;
                            v88 = 0;
                            (*(**a2 + 32))(&v88);
                            v10 = v19;
                            (*(*v61 + 144))(v95, v61);
                            v40 = SipStack::prefs(v60);
                            ImsPrefs::UseEphemeralRangeForIPSec(v40);
                            v41 = SipStack::prefs(v60);
                            v42 = ImsPrefs::DefaultIPSecPort(v41);
                            v87 = 0;
                            v86 = 0;
                            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(v95, (a1 + 200));
                            {
                              v86 = v44;
                              v87 = *&v95[8];
                              v45 = v95;
                            }

                            else
                            {
                              v45 = &v86;
                            }

                            *v45 = 0;
                            *(v45 + 1) = 0;
                            if (*&v95[8])
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](*&v95[8]);
                            }

                            (*(*v61 + 120))(v95, v61);
                            if (*v95)
                            {
                              v46 = v86;
                              if (*&v95[8])
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](*&v95[8]);
                              }

                              if (v46)
                              {
                                (*(*v61 + 120))(buf);
                                v47 = *buf;
                                object[1] = v46;
                                v85 = v87;
                                if (v87)
                                {
                                  atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
                                }

                                v32 = v62;
                                (*(*v47 + 88))(v95);
                                v48 = *v95;
                                memset(v95, 0, sizeof(v95));
                                v64 = v48;
                                v69 = v48;
                                v49 = v42;
                                if (v85)
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](v85);
                                }

                                if (*&buf[8])
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                                }

                                goto LABEL_114;
                              }
                            }

                            else if (*&v95[8])
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](*&v95[8]);
                            }

                            v64 = 0;
                            v32 = v62;
                            v49 = v42;
LABEL_114:
                            v50 = SipStack::prefs(v60);
                            v51 = ImsPrefs::MaxIPSecTransportRetries(v50);
                            if (v51 >= 100)
                            {
                              v52 = 100;
                            }

                            else
                            {
                              v52 = v51;
                            }

                            v96 = 0x40000000;
                            v97 = 0u;
                            v98 = 0u;
                            v99 = 0u;
                            v100 = 0u;
                            *v95 = &unk_1F5EBDEF8;
                            *&v95[8] = &_bambiDomain;
                            if (v51 >= 1)
                            {
                              do
                              {
                                if (!(*(**&v95[8] + 24))(*&v95[8], v96))
                                {
                                  break;
                                }

                                (*(*v88 + 64))();
                                if (v64)
                                {
                                  ims::getQueue(object);
                                  v83[1] = 0;
                                  v83[0] = &unk_1F5EBE6A8;
                                  std::string::basic_string[abi:ne200100]<0>(&v81, "");
                                  (*(*v64 + 16))(buf);
                                }

                                else
                                {
                                  v77 = 0u;
                                  v78 = 0u;
                                  v79 = 0u;
                                  v80 = 0u;
                                  v75[0] = &unk_1F5EBDEF8;
                                  v75[1] = &_bambiDomain;
                                  v76 = 0x40000000;
                                  v53 = ImsResult::operator<<<char [28]>(v75, "NetworkManager no available");
                                  ImsResult::ImsResult(buf, v53);
                                }

                                ImsResult::operator=(v95, buf);
                                ImsResult::~ImsResult(buf);
                                if (v64)
                                {
                                  if (v82 < 0)
                                  {
                                    operator delete(v81);
                                  }

                                  ims::CFType::~CFType(v83);
                                  if (object[0])
                                  {
                                    dispatch_release(object[0]);
                                  }
                                }

                                else
                                {
                                  ImsResult::~ImsResult(v75);
                                }

                                if (((*(**&v95[8] + 24))(*&v95[8], v96) & 1) == 0)
                                {
                                  v54 = v88;
                                  (*(*v64 + 72))(buf);
                                  v55 = (*(**buf + 56))(*buf);
                                  (*(*v54 + 64))(v54, v55);
                                  if (*&buf[8])
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                                  }

                                  if (v63)
                                  {
                                    (*(*v63 + 112))(buf);
                                    if (*buf)
                                    {
                                      (*(*v63 + 120))(__p);
                                      v56 = *__p != 0;
                                      if (*&__p[8])
                                      {
                                        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
                                      }
                                    }

                                    else
                                    {
                                      v56 = 0;
                                    }

                                    if (*&buf[8])
                                    {
                                      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                                    }

                                    if (v56)
                                    {
                                      v57 = *(a1 + 232);
                                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                                      {
                                        (*(*a1 + 144))(buf, a1);
                                        if (v94 >= 0)
                                        {
                                          v58 = buf;
                                        }

                                        else
                                        {
                                          v58 = *buf;
                                        }

                                        *__p = 141558275;
                                        *&__p[4] = 1752392040;
                                        *&__p[12] = 2081;
                                        *&__p[14] = v58;
                                        _os_log_impl(&dword_1E4C3F000, v57, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}susing existing transport for IPSec initialization", __p, 0x16u);
                                        if (v94 < 0)
                                        {
                                          operator delete(*buf);
                                        }
                                      }

                                      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v72, (a1 + 200));
                                      (*(*v61 + 16))(buf, v61);
                                      v73 = (*(*v61 + 80))(v61);
                                      std::allocate_shared[abi:ne200100]<SipUdpTransport,std::allocator<SipUdpTransport>,std::shared_ptr<SipTransportGroup>,ClientConfig const,SipMessageEncodingMap *,0>();
                                    }
                                  }

                                  (*(*v88 + 64))();
                                  v73 = 0;
                                  v74 = 0;
                                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, (a1 + 200));
                                  (*(*v61 + 16))(buf, v61);
                                  v72.__r_.__value_.__r.__words[0] = (*(*v61 + 80))(v61);
                                  std::allocate_shared[abi:ne200100]<SipUdpTransport,std::allocator<SipUdpTransport>,std::shared_ptr<SipTransportGroup>,ClientConfig const,SipMessageEncodingMap *,0>();
                                }

                                ++v49;
                                --v52;
                              }

                              while (v52);
                            }

                            memset(&v68[1] + 8, 0, 64);
                            *&v68[0] = &unk_1F5EBDEF8;
                            *(&v68[0] + 1) = &_bambiDomain;
                            LODWORD(v68[1]) = 0x40000000;
                            ImsResult::~ImsResult(v95);
                            if (v87)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                            }

                            if (v89)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v89);
                            }

                            if (SHIBYTE(v91) < 0)
                            {
                              operator delete(v90[0]);
                            }

                            goto LABEL_147;
                          }

                          if (v26)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                          }
                        }
                      }

                      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  *v95 = &unk_1F5EBDEF8;
                  *&v95[8] = &_bambiDomain;
                  LODWORD(v96) = 1073741826;
                  v32 = v21;
                  v38 = ImsResult::operator<<<char [12]>(v95, "no sipstack");
                  ImsResult::ImsResult(v68, v38);
                  ImsResult::~ImsResult(v95);
LABEL_147:
                  if (v59)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
                  }

LABEL_59:
                  if (v32)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                  }

                  if (v65)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
                  }

                  if (!(*(**(&v68[0] + 1) + 24))(*(&v68[0] + 1), LODWORD(v68[1])))
                  {
                    v35 = *(a1 + 232);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 144))(v95, a1);
                      v36 = v96 >= 0 ? v95 : *v95;
                      *buf = 141558275;
                      *&buf[4] = 1752392040;
                      *&buf[12] = 2081;
                      *&buf[14] = v36;
                      _os_log_impl(&dword_1E4C3F000, v35, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}screating temporary inbound SA for local client port", buf, 0x16u);
                      if (SHIBYTE(v96) < 0)
                      {
                        operator delete(*v95);
                      }
                    }

                    operator new();
                  }

                  SipIPSecTransportGroup::SipTransportPair::deletePair(&v69);
                  ImsResult::ImsResult(a4, v68);
                  ImsResult::~ImsResult(v68);
                  if (*(&v71 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
                  }

                  if (*(&v70 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
                  }

                  if (*(&v69 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v69 + 1));
                  }

                  goto LABEL_78;
                }

                v32 = v21;
              }

              else
              {
                v32 = 0;
              }

              v10 = v19;
            }

            else
            {
              v32 = 0;
            }

            v33 = *(a1 + 232);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 144))(v95, a1);
              v39 = v96 >= 0 ? v95 : *v95;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v39;
              _os_log_error_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo Transport Layer to setup transports", buf, 0x16u);
              if (SHIBYTE(v96) < 0)
              {
                operator delete(*v95);
              }
            }

            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            *v95 = &unk_1F5EBDEF8;
            *&v95[8] = &_bambiDomain;
            LODWORD(v96) = 0x40000000;
            v34 = ImsResult::operator<<<char [39]>(v95, "No Transport Layer to setup transports");
            ImsResult::ImsResult(v68, v34);
            ImsResult::~ImsResult(v95);
            goto LABEL_59;
          }
        }

        else
        {
          v66 = 0;
        }

        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        *v95 = &unk_1F5EBDEF8;
        *&v95[8] = &_bambiDomain;
        LODWORD(v96) = 1073741826;
        v31 = ImsResult::operator<<<char [12]>(v95, "no sipstack");
        ImsResult::ImsResult(a4, v31);
        ImsResult::~ImsResult(v95);
LABEL_78:
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        goto LABEL_80;
      }
    }
  }

  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  *v95 = &unk_1F5EBDEF8;
  *&v95[8] = &_bambiDomain;
  LODWORD(v96) = 0x40000000;
  v30 = ImsResult::operator<<<char [19]>(v95, "no transport layer");
  ImsResult::ImsResult(a4, v30);
  ImsResult::~ImsResult(v95);
  if (v10)
  {
LABEL_80:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_81:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1E4C98FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a64);
  }

  ImsResult::~ImsResult((v65 - 192));
  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  SipIPSecTransportGroup::SipTransportPair::~SipTransportPair(&a51);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [25]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [19]>(uint64_t a1, char *__s)
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

void SipIPSecTransportGroup::initializeSecurityClientHeader(SipIPSecTransportGroup *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 45);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    v4 = *(this + 30);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
      if (v4)
      {
        (*(*v4 + 128))(buf, v4);
        if (v10)
        {
          v6 = std::__shared_weak_count::lock(v10);
          if (v6)
          {
            v7 = *buf;
          }

          else
          {
            v7 = 0;
          }

          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          if (v7)
          {
            operator new();
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4C99D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  _Unwind_Resume(a1);
}

void SipVectorHeader<SipSecurityMechanism *>::addItem(void *a1, void *a2)
{
  v5 = a1[9];
  v4 = a1[10];
  if (v5 >= v4)
  {
    v7 = a1[8];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>((a1 + 8), v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v6 = 8 * v8 + 8;
    v13 = a1[8];
    v14 = a1[9] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[8];
    a1[8] = v15;
    a1[9] = v6;
    a1[10] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[9] = v6;
}

uint64_t SipIPSecTransportGroup::remotePort(SipIPSecTransportGroup *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

void SipIPSecTransportGroup::updateServiceClass(SipIPSecTransportGroup *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    v3 = *(this + 30);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v4 && v3)
    {
      (*(*v3 + 144))(&v8, v3);
      v5 = v8;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 104;
LABEL_7:
  v6 = *(this + 35);
  if (v6)
  {
    (*(*v6 + 120))(v6, v5);
  }

  v7 = *(this + 37);
  if (v7)
  {
    (*(*v7 + 40))(v7, v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void SipIPSecTransportGroup::updateCrlfKeepAliveInterval(SipIPSecTransportGroup *this, __int32 a2)
{
  v2 = *(this + 37);
  if (v2)
  {
    SipTcpTransport::updateCrlfKeepAliveInterval(v2, a2);
  }
}

void SipIPSecTransportGroup::updateCrlfKeepAliveNetwork(SipIPSecTransportGroup *this)
{
  v1 = *(this + 37);
  if (v1)
  {
    SipTcpTransport::updateCrlfKeepAliveNetwork(v1);
  }
}

SipTcpTransport *SipIPSecTransportGroup::handleKeepAliveWake(SipIPSecTransportGroup *this)
{
  result = *(this + 37);
  if (result)
  {
    return SipTcpTransport::handleKeepAliveWake(result);
  }

  return result;
}

SipTcpTransport *SipIPSecTransportGroup::handleTcpIdleExtend(SipIPSecTransportGroup *this)
{
  result = *(this + 37);
  if (result)
  {
    return SipTcpTransport::handleTcpIdleExtend(result);
  }

  return result;
}

void SipIPSecTransportGroup::updateFromSecurityServerHeader(SipIPSecTransportGroup *this@<X0>, const SipSecurityServerHeader *a2@<X1>, ImsResult *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2 || *(a2 + 9) == *(a2 + 8))
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = &unk_1F5EBDEF8;
    v28 = &_bambiDomain;
    v29 = 1073741825;
    v17 = ImsResult::operator<<<char [57]>(buf, "no security mechanism specified in SecurityServer header");
    v18 = ImsLogContainer::logResult(this + 8, v17);
    ImsResult::ImsResult(a3, v18);
  }

  else
  {
    v5 = SipSecurityServerHeader::bestMatchingMechanism(a2, *(this + 45));
    if (v5)
    {
      v6 = v5;
      v7 = **v5;
      if (v8)
      {
        v9 = (*(*v8 + 32))(v8);
        *(this + 44) = v9;
        v10 = *(this + 42);
        *(v10 + 12) = SipParameterMap::uintParameter(v9 + 32, "spi-s", 0);
        v11 = *(this + 43);
        *(v11 + 12) = SipParameterMap::uintParameter(*(this + 44) + 32, "spi-c", 0);
        v12 = SipParameterMap::uintParameter(*(this + 44) + 32, "port-s", 0);
        v13 = SipParameterMap::uintParameter(*(this + 44) + 32, "port-c", 0);
        if (*(this + 39))
        {
          v14 = v13;
          v15 = *(this + 41);
          if (v15)
          {
            SipHop::setHostPort(v15, v12);
            (*(**(this + 39) + 64))(*(this + 39), v14);
            SipUdpTransport::setRemoteOutboundAddress(*(this + 33), this + 39, buf);
            ImsResult::~ImsResult(buf);
            SipTcpTransport::setRemoteOutboundAddress(*(this + 37), this + 39, v26);
            ImsResult::~ImsResult(v26);
          }
        }

        if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 144))(v26, this);
          SipSecurityMechanism::logStr(*(this + 44));
        }

        v16 = *(this + 46);
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        operator new();
      }

      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buf = &unk_1F5EBDEF8;
      v28 = &_bambiDomain;
      v29 = 0x40000000;
      v22 = ImsResult::operator<<<char [20]>(buf, "Security mechanism ");
      v23 = *(v22 + 24);
      if (!v23)
      {
        operator new();
      }

      (*(*v6 + 16))(v6, v23);
      v24 = ImsResult::operator<<<char [19]>(v22, "has the wrong type");
      v25 = ImsLogContainer::logResult(this + 8, v24);
      ImsResult::ImsResult(a3, v25);
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buf = &unk_1F5EBDEF8;
      v28 = &_bambiDomain;
      v29 = 1073741825;
      v20 = ImsResult::operator<<<char [59]>(buf, "No acceptable security mechanism in Security-Server header");
      v21 = ImsLogContainer::logResult(this + 8, v20);
      ImsResult::ImsResult(a3, v21);
    }
  }

  ImsResult::~ImsResult(buf);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4C9A614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  MEMORY[0x1E69235B0](v26, 0x10A1C407D4E1E9DLL);
  ImsResult::~ImsResult(&a26);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [57]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [59]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [20]>(uint64_t a1, char *__s)
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

void SipIPSecTransportGroup::addTransportSpecificHeaders(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v17 = *a2;
  v18 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::addAccessNetworkInfoHeader(a1, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v5 = *(a2 + 8);
  v15 = *a2;
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::addRoutableLocalAddressHeader(a1, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = **v6;
    if (v8)
    {
      v9 = v8;
      v10 = *(a2 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipMessage::removeHeadersWithName(v8, "Security-Verify");
      v11 = a1[46];
      if (v11)
      {
        v12 = (*(*v11 + 32))(v11);
        SipMessage::addHeader(v9, v12, 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "sec-agree");
        SipMessage::addRequiredOption(v9, __p);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "sec-agree");
        SipMessage::addProxyRequiredOption(v9, __p);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }
}

void sub_1E4C9AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::operator<<<char [53]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [21]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [40]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [22]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [31]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [32]>(uint64_t a1, char *__s)
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

void SipIPSecTransportGroup::updateKeysFromAuthResponse(SipIPSecTransportGroup *this@<X0>, char **lpsrc@<X1>, uint64_t a3@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = **lpsrc;
  if (v6)
  {
    v7 = v6;
    (*(*v6 + 32))(v6);
    (*(*v7 + 32))(v7);
    v8 = *(this + 29);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 144))(__p, this);
      v9 = (SBYTE7(v49[0]) & 0x80u) == 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating with keys from AKA response", buf, 0x16u);
      if (SBYTE7(v49[0]) < 0)
      {
LABEL_13:
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = *(this + 29);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 144))(__p, this);
      v11 = (SBYTE7(v49[0]) & 0x80u) == 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v11;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sauth mechanism wasn't AKA; trying to update with NULL keys", buf, 0x16u);
      if (SBYTE7(v49[0]) < 0)
      {
        goto LABEL_13;
      }
    }
  }

  if (!*(this + 42) || !*(this + 43))
  {
    memset(v49 + 8, 0, 64);
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    LODWORD(v49[0]) = 1073741826;
    v21 = ImsResult::operator<<<char [53]>(__p, "updateKeys called on an uninitalized transport group");
    v22 = ImsLogContainer::logResult(this + 8, v21);
    ImsResult::ImsResult(a3, v22);
    ImsResult::~ImsResult(__p);
    goto LABEL_53;
  }

  SipIPSecTransportGroup::securityDelegate(__p, *(this + 30), *(this + 31));
  if (__p[1])
  {
    v12 = std::__shared_weak_count::lock(__p[1]);
    if (v12)
    {
      v13 = __p[0];
    }

    else
    {
      v13 = 0;
    }

    if (__p[1])
    {
      std::__shared_weak_count::__release_weak(__p[1]);
    }

    if (v13)
    {
      v14 = *(this + 39);
      if (v14 && *(this + 41))
      {
        if (!(*(*v14 + 56))(v14))
        {
          goto LABEL_49;
        }

        (*(**(this + 41) + 48))(__p);
        v15 = (*(*__p[0] + 56))(__p[0]);
        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }

        if (v15)
        {
          v16 = *(this + 42);
          if (v16 && *(v16 + 8) && *(v16 + 12))
          {
            v17 = *(this + 43);
            if (v17 && *(v17 + 8) && *(v17 + 12))
            {
              if (*(this + 44))
              {
                v18 = *(this + 29);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 144))(__p, this);
                  if ((SBYTE7(v49[0]) & 0x80u) == 0)
                  {
                    v19 = __p;
                  }

                  else
                  {
                    v19 = __p[0];
                  }

                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v19;
                  _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating SA pair for local client port <-> remote server port", buf, 0x16u);
                  if (SBYTE7(v49[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v16 = *(this + 42);
                }

                memset(v49, 0, 72);
                *__p = 0u;
                (*(*this + 168))(buf, this);
                v20 = *(this + 41);
                if (v20)
                {
                  (*(*v20 + 48))(v50);
                }

                else
                {
                  *v50 = 0;
                  *&v50[8] = 0;
                }

                v36 = *(this + 44);
                SipSecurityAssociationPair::update(v16, buf, v50, __p);
                if (*&v50[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[8]);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                if ((*(*__p[1] + 24))(__p[1], LODWORD(v49[0])))
                {
                  v53 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  *buf = &unk_1F5EBDEF8;
                  *&buf[8] = &_bambiDomain;
                  *&buf[16] = 0x40000000;
                  v37 = ImsResult::operator<<<char [32]>(buf, "unable to update client SA pair");
                  ims::result::resultWithCause(v37, __p, a3);
                }

                v38 = *(this + 29);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 144))(buf, this);
                  v39 = v52 >= 0 ? buf : *buf;
                  *v50 = 141558275;
                  *&v50[4] = 1752392040;
                  *&v50[12] = 2081;
                  *&v50[14] = v39;
                  _os_log_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating SA pair for local server port <-> remote client port", v50, 0x16u);
                  if (v52 < 0)
                  {
                    operator delete(*buf);
                  }
                }

                v40 = *(this + 43);
                (*(*this + 176))(v50, this);
                v41 = *(this + 40);
                v46 = *(this + 39);
                v47 = v41;
                if (v41)
                {
                  atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v42 = *(this + 44);
                SipSecurityAssociationPair::update(v40, v50, &v46, buf);
                ImsResult::operator=(__p, buf);
                ImsResult::~ImsResult(buf);
                if (v47)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                }

                if (*&v50[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&v50[8]);
                }

                if ((*(*__p[1] + 24))(__p[1], LODWORD(v49[0])))
                {
                  v53 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  *buf = &unk_1F5EBDEF8;
                  *&buf[8] = &_bambiDomain;
                  *&buf[16] = 0x40000000;
                  v43 = ImsResult::operator<<<char [32]>(buf, "unable to update server SA pair");
                  ims::result::resultWithCause(v43, __p, a3);
                }

                (*(*v13 + 48))(v13);
                v44 = *(this + 29);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 144))(buf, this);
                  if (v52 >= 0)
                  {
                    v45 = buf;
                  }

                  else
                  {
                    v45 = *buf;
                  }

                  *v50 = 141558275;
                  *&v50[4] = 1752392040;
                  *&v50[12] = 2081;
                  *&v50[14] = v45;
                  _os_log_impl(&dword_1E4C3F000, v44, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinitialized successfully", v50, 0x16u);
                  if (v52 < 0)
                  {
                    operator delete(*buf);
                  }

                  v44 = *(this + 29);
                }

                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 144))(v50, this);
                  SipSecurityAssociationPair::logStr(*(this + 42));
                }

                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*this + 144))(v50, this);
                  SipSecurityAssociationPair::logStr(*(this + 43));
                }

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
                memset(v49 + 8, 0, 64);
                __p[0] = &unk_1F5EBDEF8;
                __p[1] = &_bambiDomain;
                LODWORD(v49[0]) = 1073741827;
                v34 = ImsResult::operator<<<char [22]>(__p, "No Security Mechanism");
                v35 = ImsLogContainer::logResult(this + 8, v34);
                ImsResult::ImsResult(a3, v35);
              }
            }

            else
            {
              memset(v49 + 8, 0, 64);
              __p[0] = &unk_1F5EBDEF8;
              __p[1] = &_bambiDomain;
              LODWORD(v49[0]) = 1073741827;
              v32 = ImsResult::operator<<<char [31]>(__p, "server SA pair not initialized");
              v33 = ImsLogContainer::logResult(this + 8, v32);
              ImsResult::ImsResult(a3, v33);
            }
          }

          else
          {
            memset(v49 + 8, 0, 64);
            __p[0] = &unk_1F5EBDEF8;
            __p[1] = &_bambiDomain;
            LODWORD(v49[0]) = 1073741827;
            v29 = ImsResult::operator<<<char [31]>(__p, "client SA pair not initialized");
            v30 = ImsLogContainer::logResult(this + 8, v29);
            ImsResult::ImsResult(a3, v30);
          }
        }

        else
        {
LABEL_49:
          memset(v49 + 8, 0, 64);
          __p[0] = &unk_1F5EBDEF8;
          __p[1] = &_bambiDomain;
          LODWORD(v49[0]) = 1073741827;
          v27 = ImsResult::operator<<<char [22]>(__p, "ports not initialized");
          v28 = ImsLogContainer::logResult(this + 8, v27);
          ImsResult::ImsResult(a3, v28);
        }
      }

      else
      {
        memset(v49 + 8, 0, 64);
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        LODWORD(v49[0]) = 1073741827;
        v25 = ImsResult::operator<<<char [40]>(__p, "client/server addresses not initialized");
        v26 = ImsLogContainer::logResult(this + 8, v25);
        ImsResult::ImsResult(a3, v26);
      }

      goto LABEL_51;
    }
  }

  else
  {
    v12 = 0;
  }

  memset(v49 + 8, 0, 64);
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_bambiDomain;
  LODWORD(v49[0]) = 1073741827;
  v23 = ImsResult::operator<<<char [21]>(__p, "no security delegate");
  v24 = ImsLogContainer::logResult(this + 8, v23);
  ImsResult::ImsResult(a3, v24);
LABEL_51:
  ImsResult::~ImsResult(__p);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_53:
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1E4C9BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a13);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

void SipIPSecTransportGroup::processMessageFromTransport(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, IpAddress **a5, uint64_t a6, uint64_t *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 160))(a1) & 1) == 0 && os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 144))(&v30, a1);
    IpAddress::logStr(*a5);
  }

  if (*(a1 + 312))
  {
    v13 = *(a1 + 248);
    if (v13)
    {
      v14 = *(a1 + 240);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = std::__shared_weak_count::lock(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (v15 && v14)
      {
        v16 = *a5;
        v17 = *(a1 + 320);
        *buf = *(a1 + 312);
        v33 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v16 + 104))(v16, buf, 1))
        {
          v18 = 0;
        }

        else if (*a7)
        {
          v20 = *a5;
          v21 = *(a1 + 328);
          if (v21)
          {
            (*(*v21 + 48))(&v30);
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          v18 = (*(*v20 + 104))(v20, &v30, 1) ^ 1;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        else
        {
          v18 = 1;
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v18)
        {
          if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_INFO))
          {
            (*(*a1 + 144))(&v30, a1);
            IpAddress::logStr(*a5);
          }
        }

        else
        {
          ++*(a1 + 560);
          v22 = a2[1];
          v28 = *a2;
          v29 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, (a1 + 200));
          v23 = a7[1];
          v24 = *a7;
          v25 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v14 + 96))(v14, &v28, a3, a4, a5, &v26, &v24);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }
        }

LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = 0;
    }

    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(&v30, a1);
      IpAddress::logStr(*a5);
    }

    if (v15)
    {
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 144))(&v30, a1);
    IpAddress::logStr(*a5);
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4C9C3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  _Unwind_Resume(a1);
}

BOOL SipIPSecTransportGroup::processDataFromSocket(os_log_t *a1, uint64_t a2, uint64_t a3, IpAddress **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = os_log_type_enabled(a1[29], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    ((*a1)[18].isa)(&v8, a1);
    IpAddress::logStr(*a4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C9C638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipIPSecTransportGroup::sendData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, ImsResult *a7@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 160))(a1) & 1) == 0)
  {
    memset(&buf[24], 0, 64);
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741827;
    v16 = ImsResult::operator<<<char [38]>(buf, "sendData() called on uninitialized SA");
    v17 = ImsLogContainer::logResult(a1 + 8, v16);
    ImsResult::ImsResult(a7, v17);
LABEL_41:
    ImsResult::~ImsResult(buf);
    goto LABEL_42;
  }

  v14 = *a5;
  v15 = *(a1 + 328);
  if (v15)
  {
    (*(*v15 + 48))(buf);
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  if ((*(*v14 + 104))(v14, buf, 1))
  {
    v18 = 0;
  }

  else if (a6)
  {
    v19 = *a5;
    v20 = *(a1 + 320);
    __p = *(a1 + 312);
    v73 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = (*(*v19 + 104))(v19, &__p, 1) ^ 1;
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }
  }

  else
  {
    v18 = 1;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v18)
  {
    memset(&buf[24], 0, 64);
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741825;
    v21 = ImsResult::operator<<<char [49]>(buf, "remote address for sendData does not match (got ");
    v22 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v21, a5);
    v23 = ImsResult::operator<<<char [12]>(v22, ", expected ");
    v24 = *(a1 + 328);
    if (v24)
    {
      (*(*v24 + 48))(&__p);
    }

    else
    {
      __p = 0;
      v73 = 0;
    }

    v35 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v23, &__p);
    v36 = ImsResult::operator<<<char [23]>(v35, " or TCP connection to ");
    v37 = *(a1 + 320);
    *v80 = *(a1 + 312);
    *&v80[8] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v36, v80);
    v39 = ImsLogContainer::logResult(a1 + 8, v38);
    ImsResult::ImsResult(a7, v39);
    if (*&v80[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v80[8]);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    goto LABEL_41;
  }

  v25 = *(a4 + 23);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a4 + 8);
  }

  if (v25 != 3)
  {
    goto LABEL_33;
  }

  if (v26 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  if (*v27 == SipTransport::kTransportUDP && *(v27 + 2) == 80)
  {
    if (a6 && *a6)
    {
      memset(&buf[24], 0, 64);
      *buf = &unk_1F5EBDEF8;
      *&buf[8] = &_bambiDomain;
      *&buf[16] = 1073741825;
      v41 = ImsResult::operator<<<char [53]>(buf, "UDP transport specified, but TCP connection provided");
      v42 = ImsLogContainer::logResult(a1 + 8, v41);
      ImsResult::ImsResult(a7, v42);
    }

    else
    {
      v51 = *(a1 + 232);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 144))(&__p, a1);
        v52 = v75 >= 0 ? &__p : __p;
        v53 = *(*(a1 + 336) + 12);
        *buf = 141558787;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v52;
        *&buf[22] = 1024;
        *&buf[24] = v53;
        *&buf[28] = 1024;
        *&buf[30] = v53;
        _os_log_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssending data with client outbound SPI %u (%x)", buf, 0x22u);
        if (v75 < 0)
        {
          operator delete(__p);
        }
      }

      memset(buf, 0, sizeof(buf));
      v54 = *(a1 + 280);
      (*(**(a1 + 328) + 48))(&__p);
      (*(*v54 + 40))(buf, v54, a2, a3, &__p);
      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

      v55 = *(a1 + 248);
      if (v55)
      {
        v56 = *(a1 + 240);
        atomic_fetch_add_explicit(&v55->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v57 = std::__shared_weak_count::lock(v55);
        std::__shared_weak_count::__release_weak(v55);
        if (v57)
        {
          if (v56)
          {
            (*(*v56 + 128))(&__p, v56);
            if (v73)
            {
              v58 = std::__shared_weak_count::lock(v73);
              if (v58)
              {
                v59 = __p;
              }

              else
              {
                v59 = 0;
              }

              if (v73)
              {
                std::__shared_weak_count::__release_weak(v73);
              }

              if (v59)
              {
                if (*&buf[16] == 51 && *&buf[8] == &_posixDomain)
                {
                  v60 = SipStack::prefs(v59);
                  if (ImsPrefs::IgnoreNetworkUnreachableErrors(v60))
                  {
                    v61 = *(a1 + 232);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                    {
                      (*(*a1 + 144))(&__p, a1);
                      v62 = v75 >= 0 ? &__p : __p;
                      *v80 = 141558275;
                      *&v80[4] = 1752392040;
                      *&v80[12] = 2081;
                      *&v80[14] = v62;
                      _os_log_impl(&dword_1E4C3F000, v61, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sIgnoring network unreachable error", v80, 0x16u);
                      if (v75 < 0)
                      {
                        operator delete(__p);
                      }
                    }

                    v76 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v79 = 0u;
                    __p = &unk_1F5EBDEF8;
                    v73 = &_bambiDomain;
                    v74 = 0;
                    ImsResult::operator=(buf, &__p);
                    ImsResult::~ImsResult(&__p);
                  }
                }
              }

              if (v58)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v58);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }

      v63 = ImsLogContainer::logResult(a1 + 8, buf);
      ImsResult::ImsResult(a7, v63);
    }

    goto LABEL_41;
  }

  v29 = *v27;
  v30 = *(v27 + 2);
  if (v29 != SipTransport::kTransportTCP || v30 != 80)
  {
LABEL_33:
    memset(&buf[24], 0, 64);
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741825;
    v32 = ImsResult::operator<<<char [24]>(buf, "unknown transport type ");
    v33 = ImsResult::operator<<<std::string>(v32, a4);
    v34 = ImsLogContainer::logResult(a1 + 8, v33);
    ImsResult::ImsResult(a7, v34);
    goto LABEL_41;
  }

  if (!a6 || (v43 = *a6) == 0)
  {
    v64 = *(a1 + 232);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 144))(&__p, a1);
      v65 = v75 >= 0 ? &__p : __p;
      v66 = *(*(a1 + 336) + 12);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v65;
      *&buf[22] = 1024;
      *&buf[24] = v66;
      *&buf[28] = 1024;
      *&buf[30] = v66;
      _os_log_impl(&dword_1E4C3F000, v64, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssending data with client outbound SPI %u (%x)", buf, 0x22u);
      if (v75 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_113;
  }

  v44 = a6[1];
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(v43 + 32) + 144))(buf);
  v45 = (*(**buf + 56))(*buf);
  (*(*a1 + 168))(&__p, a1);
  v46 = (*(*__p + 56))(__p);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v45 == v46)
  {
    v47 = *(a1 + 232);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 144))(&__p, a1);
      if (v75 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v49 = *(*(a1 + 336) + 12);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = p_p;
      *&buf[22] = 1024;
      *&buf[24] = v49;
      *&buf[28] = 1024;
      *&buf[30] = v49;
      v50 = "%{private, mask.hash}ssending data with existing connection using client outbound SPI %u (%x)";
      goto LABEL_108;
    }
  }

  else
  {
    (*(**(v43 + 32) + 144))(buf);
    v67 = (*(**buf + 56))(*buf);
    (*(*a1 + 176))(&__p, a1);
    v68 = (*(*__p + 56))(__p);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v47 = *(a1 + 232);
    if (v67 != v68)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        (*(*a1 + 144))(&__p, a1);
        SipTcpConnection::logStr(*a6);
      }

      goto LABEL_111;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 144))(&__p, a1);
      if (v75 >= 0)
      {
        v69 = &__p;
      }

      else
      {
        v69 = __p;
      }

      v70 = *(*(a1 + 344) + 12);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v69;
      *&buf[22] = 1024;
      *&buf[24] = v70;
      *&buf[28] = 1024;
      *&buf[30] = v70;
      v50 = "%{private, mask.hash}ssending data with existing connection using server outbound SPI %u (%x)";
LABEL_108:
      _os_log_impl(&dword_1E4C3F000, v47, OS_LOG_TYPE_DEFAULT, v50, buf, 0x22u);
      if (v75 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_111:
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

LABEL_113:
  v71 = *(a1 + 296);
  (*(**(a1 + 328) + 48))(&__p);
  (*(*v71 + 32))(buf, v71, a2, a3, &__p, a6);
  ImsLogContainer::logResult(a1 + 8, buf, a7);
  ImsResult::~ImsResult(buf);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

LABEL_42:
  v40 = *MEMORY[0x1E69E9840];
}