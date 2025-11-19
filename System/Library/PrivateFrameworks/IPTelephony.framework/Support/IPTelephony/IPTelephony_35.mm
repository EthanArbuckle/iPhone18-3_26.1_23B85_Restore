void sub_1E4ECBB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 279) < 0)
  {
    operator delete(*(v2 + 256));
  }

  if (*(v2 + 255) < 0)
  {
    operator delete(*(v2 + 232));
  }

  if (*(v2 + 223) < 0)
  {
    operator delete(*(v2 + 200));
  }

  if (*(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<XcapSession::create(std::weak_ptr<XcapSessionDelegate>,XcapConfig const&,std::string const&)::make_shared_enabler,std::allocator<XcapSession::create(std::weak_ptr<XcapSessionDelegate>,XcapConfig const&,std::string const&)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED8030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void XcapSession::create(std::weak_ptr<XcapSessionDelegate>,XcapConfig const&,std::string const&)::make_shared_enabler::~make_shared_enabler(XcapSession *a1)
{
  XcapSession::~XcapSession(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapSession::create(std::weak_ptr<XcapSessionDelegate>,XcapConfig const&,std::string const&)::make_shared_enabler::~make_shared_enabler(uint64_t a1)
{
  XcapSession::~XcapSession((a1 - 8));
}

{
  XcapSession::~XcapSession((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipTimerContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED8148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED8198;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED8198;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED8198;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0,std::allocator<XcapSession::_sendRequest(BOOL,XcapUri const&,std::string const&,void({block_pointer})(ImsResult const&,std::string const&))::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_XcapSession_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&XcapSession::kRequestTimeoutTimerId, "XcapTimerId_RequestTimeout");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &XcapSession::kRequestTimeoutTimerId, &dword_1E4C3F000);
}

void IBIMediaSessionConfig_s::~IBIMediaSessionConfig_s(IBIMediaSessionConfig_s *this)
{
  v2 = *(this + 57);
  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    *(this + 54) = v3;
    operator delete(v3);
  }

  v4 = *(this + 49);
  if (v4)
  {
    *(this + 50) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void IBISession::IBISession(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, ImsPrefs *a5, uint64_t a6, char a7, __int128 *a8, NSObject **a9)
{
  v22 = *MEMORY[0x1E69E9840];
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable((a1 + 936));
  *a1 = &unk_1F5ED84D8;
  *(a1 + 936) = &unk_1F5ED8508;
  v16 = a2[1];
  v20 = *a2;
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a4[1];
  v18 = *a4;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::MediaSessionDriver(a1 + 8, &v20, a3, &v18, a5, a8, a9);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  *a1 = &unk_1F5ED8220;
  *(a1 + 936) = &unk_1F5ED8448;
  *(a1 + 8) = &unk_1F5ED8300;
  *(a1 + 96) = &unk_1F5ED8408;
  *(a1 + 360) = a7;
  *(a1 + 368) = a1 + 368;
  *(a1 + 376) = a1 + 368;
  *(a1 + 384) = 0;
  IBIMediaSessionConfig_s::IBIMediaSessionConfig_s((a1 + 408));
}

void sub_1E4ECC68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, MediaSessionDriver *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v33 = v29[116];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = v29[114];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  IBIMediaSessionConfig_s::~IBIMediaSessionConfig_s(v31);
  std::__list_imp<unsigned long long>::clear(v30);
  MediaSessionDriver::~MediaSessionDriver(a9);
  MEMORY[0x1E69225A0](v29 + 122);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v29 + 118);
  _Unwind_Resume(a1);
}

void IBISession::~IBISession(IBISession *this)
{
  *this = &unk_1F5ED8220;
  *(this + 117) = &unk_1F5ED8448;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED8300;
  *(this + 12) = &unk_1F5ED8408;
  std::string::basic_string[abi:ne200100]<0>(v15, "ibi.session");
  v11[0] = 0;
  v14 = 0;
  v3 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~IBISession", 11);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  std::__list_imp<unsigned long long>::clear(this + 46);
  v4 = *(this + 116);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 114);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 108);
  if (v6)
  {
    *(this + 109) = v6;
    operator delete(v6);
  }

  v7 = *(this + 104);
  if (v7)
  {
    *(this + 105) = v7;
    operator delete(v7);
  }

  v8 = *(this + 100);
  if (v8)
  {
    *(this + 101) = v8;
    operator delete(v8);
  }

  v9 = *(this + 57);
  if (v9)
  {
    *(this + 58) = v9;
    operator delete(v9);
  }

  v10 = *(this + 53);
  if (v10)
  {
    *(this + 54) = v10;
    operator delete(v10);
  }

  std::__list_imp<unsigned long long>::clear(this + 46);
  MediaSessionDriver::~MediaSessionDriver(v2);
  MEMORY[0x1E69225A0](this + 976);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 118);
}

{
  IBISession::~IBISession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIBISession::~IBISession(IBISession *this)
{
  IBISession::~IBISession((this - 8));
}

{
  IBISession::~IBISession((this - 96));
}

{
  IBISession::~IBISession((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IBISession::~IBISession((this - 96));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toIBISession::~IBISession(IBISession *this)
{
  IBISession::~IBISession((this + *(*this - 24)));
}

{
  IBISession::~IBISession((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void IBISession::initialize(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
  v124[0] = 0;
  v127 = 0;
  v12 = ims::debug(&__p, v124);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v13 = v12;
  v14 = *(*(*a1 - 8) + 8);
  v15 = *(v12 + 8);
  v16 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v14 & 0x7FFFFFFFFFFFFFFFLL, v16);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "initialize", 10);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [sessionId=", 12);
  *(v13 + 17) = 0;
  MEMORY[0x1E69233B0](*(v13 + 8), *(a1 + 32));
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "]", 1);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v127 == 1 && v126 < 0)
  {
    operator delete(v125);
  }

  if (v97 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 396) = a3;
  if (!*(a1 + 904))
  {
    RTPSharedPointerBase::getShared<IBISession>(&__p, a1);
    operator new();
  }

  v17 = a7[1];
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *a7;
      if (v19)
      {
        if ((*(v19 + 584) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v116[0] = 0;
          v119 = 0;
          v24 = ims::error(&__p, v116);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "SDPSession doesn't contain audio settings", 41);
          *(v24 + 17) = 0;
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          if (v119 == 1 && v118 < 0)
          {
            operator delete(v117);
          }

          if (v97 < 0)
          {
            operator delete(__p);
          }

          v25 = *(a1 + 24);
          if (!v25)
          {
            goto LABEL_132;
          }

          v26 = std::__shared_weak_count::lock(v25);
          if (!v26)
          {
            goto LABEL_132;
          }

          v27 = v26;
          v28 = *(a1 + 16);
          if (v28)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v114);
            (**v28)(v28, &v114, 9);
            if (v115)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v115);
            }
          }

          v29 = v27;
          goto LABEL_131;
        }

        *(a1 + 104) = a6;
        v113 = 0;
        v112 = 0;
        RTPTransportManager::getTransport(*(a1 + 32), *(v19 + 176), &v112);
        if (!v112)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v108[0] = 0;
          v111 = 0;
          v30 = ims::error(&__p, v108);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Missing RTP transport", 21);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (v111 == 1 && v110 < 0)
          {
            operator delete(v109);
          }

          if (v97 < 0)
          {
            operator delete(__p);
          }

          v31 = *(a1 + 24);
          if (!v31 || (v32 = std::__shared_weak_count::lock(v31)) == 0)
          {
LABEL_130:
            v29 = v113;
            if (!v113)
            {
LABEL_132:
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              return;
            }

LABEL_131:
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            goto LABEL_132;
          }

          v33 = v32;
          v34 = *(a1 + 16);
          if (v34)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v106);
            (**v34)(v34, &v106, 9);
            if (v107)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v107);
            }
          }

          v35 = v33;
LABEL_129:
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          goto LABEL_130;
        }

        v105 = 0;
        v104 = 0;
        __p = 0;
        v95 = 0;
        v20 = *(a1 + 24);
        if (v20)
        {
          v95 = std::__shared_weak_count::lock(v20);
          if (v95)
          {
            __p = *(a1 + 16);
          }
        }

        std::dynamic_pointer_cast[abi:ne200100]<MediaSessionStateMachine,MediaSessionDelegate>(&__p, &v104);
        if (v95)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        if (!v104)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v100[0] = 0;
          v103 = 0;
          v36 = ims::error(&__p, v100);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Delegate is not a MediaSessionStateMachine", 42);
          *(v36 + 17) = 0;
          (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v36 + 17) = 0;
          if (v103 == 1 && v102 < 0)
          {
            operator delete(v101);
          }

          if (v97 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_128;
        }

        if (a3)
        {
          v21 = *(v19 + 128);
          if (v21)
          {
            v21 = std::__shared_weak_count::lock(v21);
            v22 = v21;
            if (v21)
            {
              v21 = *(v19 + 120);
            }
          }

          else
          {
            v22 = 0;
          }

          v37 = SipStack::prefs(v21);
          if (ImsPrefs::UseRTPDetectionAutoStart(v37))
          {
            v38 = *(v104 + 300);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v38)
            {
              goto LABEL_74;
            }

            __p = 0;
            v95 = 0;
            RTPTransportManager::getTransport(*(a1 + 32), (*(v19 + 176) + 1), &__p);
            object = 0;
            (*(*v112 + 96))(v112, &object);
            if (object)
            {
              dispatch_release(object);
            }

            if (__p)
            {
              v98 = 0;
              (*(*__p + 96))(__p, &v98);
              if (v98)
              {
                dispatch_release(v98);
              }
            }

            v39 = v95;
            if (!v95)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (!v22)
            {
              goto LABEL_74;
            }

            v39 = v22;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

LABEL_74:
        v92 = v19;
        v93 = v18;
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        (*(*a1 + 200))(&__p, a1, &v92);
        v40 = (v95->__get_deleter)(v95, v96);
        ImsResult::~ImsResult(&__p);
        if (v93)
        {
          std::__shared_weak_count::__release_weak(v93);
        }

        if (v40)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v88[0] = 0;
          v91 = 0;
          v41 = ims::error(&__p, v88);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Failed to generated session config", 34);
          *(v41 + 17) = 0;
          (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v41 + 17) = 0;
          if (v91 == 1 && v90 < 0)
          {
            operator delete(v89);
          }

          if (v97 < 0)
          {
            operator delete(__p);
          }

          v42 = *(a1 + 24);
          if (v42)
          {
            v43 = std::__shared_weak_count::lock(v42);
            if (v43)
            {
              v44 = v43;
              v45 = *(a1 + 16);
              if (!v45)
              {
                goto LABEL_109;
              }

              RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v86);
              (**v45)(v45, &v86, 9);
              v46 = v87;
              if (!v87)
              {
                goto LABEL_109;
              }

              goto LABEL_108;
            }
          }
        }

        else
        {
          *(a1 + 422) = (*(**a2 + 224))(*a2, *(a1 + 424), *(a1 + 432) - *(a1 + 424));
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v82[0] = 0;
          v85 = 0;
          v47 = ims::debug(&__p, v82);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "Generated session config", 24);
          *(v47 + 17) = 0;
          (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v47 + 17) = 0;
          if (v85 == 1 && v84 < 0)
          {
            operator delete(v83);
          }

          if (v97 < 0)
          {
            operator delete(__p);
          }

          v48 = *(a1 + 920);
          RTPSharedPointerBase::getShared<IBISession>(&v80, a1);
          v49 = v80;
          v50 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v51 = *(v48 + 152);
          *(v48 + 144) = v49;
          *(v48 + 152) = v50;
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          IBISessionHelper::sendCreateMediaRequest(*(a1 + 904), &__p);
          v52 = (v95->__get_deleter)(v95, v96);
          ImsResult::~ImsResult(&__p);
          if (v52)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
            v76[0] = 0;
            v79 = 0;
            v53 = ims::error(&__p, v76);
            v54 = ImsOutStream::operator<<(v53, "Failed to send CreateMedia request");
            (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v54[17] = 0;
            if (v79 == 1 && v78 < 0)
            {
              operator delete(v77);
            }

            if (v97 < 0)
            {
              operator delete(__p);
            }

            v55 = *(a1 + 24);
            if (v55)
            {
              v56 = std::__shared_weak_count::lock(v55);
              if (v56)
              {
                v44 = v56;
                v57 = *(a1 + 16);
                if (!v57)
                {
                  goto LABEL_109;
                }

                RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
                (**v57)(v57, &v74, 9);
                v46 = v75;
                if (!v75)
                {
                  goto LABEL_109;
                }

LABEL_108:
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
LABEL_109:
                std::__shared_weak_count::__release_shared[abi:ne200100](v44);
              }
            }
          }

          else
          {
            RTPSharedPointerBase::getShared<IBISession>(&__p, a1);
            if (__p)
            {
              v58 = __p + 8;
            }

            else
            {
              v58 = 0;
            }

            v72 = v58;
            v73 = v95;
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 0x40000000;
            v71[2] = ___ZN10IBISession10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke;
            v71[3] = &__block_descriptor_tmp_12;
            v71[4] = a1;
            MediaSessionDriver::startTimerForRequest((a1 + 8), 74565, &v72, v71);
            if (v73)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v73);
            }

            ++IBISession::_count;
            std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
            v67[0] = 0;
            v70 = 0;
            v59 = ims::debug(&__p, v67);
            v60 = ImsOutStream::operator<<(v59, "Number of sessions = ");
            MEMORY[0x1E6923350](*(v60 + 8), IBISession::_count);
            *(v60 + 17) = 0;
            (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v60 + 17) = 0;
            if (v70 == 1 && v69 < 0)
            {
              operator delete(v68);
            }

            if (v97 < 0)
            {
              operator delete(__p);
            }

            if ((IBISession::_activeAudio & 1) == 0 && (*(a1 + 396) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
              v63[0] = 0;
              v66 = 0;
              v61 = ims::debug(&__p, v63);
              v62 = ImsOutStream::operator<<(v61, "Setup audio device for MT call");
              (*(*v62 + 64))(v62, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v62[17] = 0;
              if (v66 == 1 && v65 < 0)
              {
                operator delete(v64);
              }

              if (v97 < 0)
              {
                operator delete(__p);
              }

              IBIRTPStackController::sendAudioCallEvent(*(a1 + 920), 2);
            }
          }
        }

LABEL_128:
        v35 = v105;
        if (!v105)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
  v120[0] = 0;
  v123 = 0;
  v23 = ims::error(&__p, v120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "sdpSession is null", 18);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v123 == 1 && v122 < 0)
  {
    operator delete(v121);
  }

  if (v97 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    goto LABEL_132;
  }
}

void sub_1E4ECD8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43)
{
  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x298]);
  }

  if (STACK[0x2F0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2F0]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<MediaSessionStateMachine,MediaSessionDelegate>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

uint64_t IBISession::supportedBandwidths(unsigned int a1)
{
  if (a1 > 5)
  {
    return 15;
  }

  else
  {
    return word_1E51726B4[a1];
  }
}

void IBISession::generateSessionConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  if (!v5)
  {
    v7 = 0;
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
    v244[0] = 0;
    v247 = 0;
    v17 = ims::error(&__p, v244);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "SDPSession expired in IBISession::generateSessionConfiguration", 62);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v247 == 1 && v246 < 0)
    {
      operator delete(v245);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741825;
LABEL_24:
    if (!v7)
    {
      return;
    }

    goto LABEL_25;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  v9 = v8 + 152;
  if (*(v8 + 584))
  {
    v10 = v8 + 152;
  }

  else
  {
    v10 = 0;
  }

  if (*(v8 + 584))
  {
    v11 = *(v8 + 1024);
    v13 = *(v8 + 160);
    v12 = *(v8 + 168);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(v8 + 182) != 255 && v13 == 0;
    if (v14)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
      v236[0] = 0;
      v239 = 0;
      v19 = ims::error(&__p, v236);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Remote connection information not found", 39);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v239 == 1 && v238 < 0)
      {
        v20 = v237;
LABEL_129:
        operator delete(v20);
      }

LABEL_130:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_132;
    }

    v15 = *(v8 + 128);
    if (v15 && (v16 = std::__shared_weak_count::lock(v15)) != 0)
    {
      *(a1 + 408) = *(*(v8 + 120) + 4372);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      *(a1 + 408) = MEMORY[0x1114];
    }

    v21 = *(v8 + 128);
    if (v21)
    {
      v21 = std::__shared_weak_count::lock(v21);
      v22 = v21;
      if (v21)
      {
        v21 = *(v8 + 120);
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = SipStack::prefs(v21);
    *(a1 + 896) = ImsPrefs::EnableIncomingDTMF(v23);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v24 = *(v8 + 178);
    *(a1 + 480) = v24;
    *(a1 + 756) = v24 + 1;
    if (*(v8 + 180) == 255)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
      v232[0] = 0;
      v235 = 0;
      v25 = ims::error(&__p, v232);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "No compatible media pair available", 34);
      *(v25 + 17) = 0;
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (v235 == 1 && v234 < 0)
      {
        operator delete(v233);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      RTPManager::logRTPError(*(a1 + 40), 25);
LABEL_132:
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 1073741825;
LABEL_133:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      goto LABEL_24;
    }

    v157 = v12;
    if (*(v8 + 455) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v8 + 432), *(v8 + 440));
    }

    else
    {
      __p = *(v8 + 432);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ != 3)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_77:
        if (*(v8 + 455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v8 + 432), *(v8 + 440));
        }

        else
        {
          __p = *(v8 + 432);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ != 6)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
LABEL_105:
            if (*(v8 + 455) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v8 + 432), *(v8 + 440));
            }

            else
            {
              __p = *(v8 + 432);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ != 3)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                goto LABEL_126;
              }

              v37 = *__p.__r_.__value_.__l.__data_ != 22085 || *(__p.__r_.__value_.__r.__words[0] + 2) != 83;
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v37)
              {
LABEL_126:
                std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
                v228[0] = 0;
                v231 = 0;
                v12 = v157;
                v38 = ims::error(&__p, v228);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Unsupported encoding name given", 31);
                *(v38 + 17) = 0;
                (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v38 + 17) = 0;
                if (v231 == 1 && v230 < 0)
                {
                  v20 = v229;
                  goto LABEL_129;
                }

                goto LABEL_130;
              }
            }

            else
            {
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
              {
                goto LABEL_126;
              }

              if (LOWORD(__p.__r_.__value_.__l.__data_) != 22085 || __p.__r_.__value_.__s.__data_[2] != 83)
              {
                goto LABEL_126;
              }
            }

            v154 = 0;
            v155 = v10;
            v34 = 0;
            v149 = 0;
            v151 = 1;
            v30 = v8 + 152;
            v153 = v8 + 152;
            goto LABEL_138;
          }

          v33 = *__p.__r_.__value_.__l.__data_ != 760368449 || *(__p.__r_.__value_.__r.__words[0] + 4) != 16983;
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v33)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 6)
          {
            goto LABEL_105;
          }

          if (LODWORD(__p.__r_.__value_.__l.__data_) != 760368449 || WORD2(__p.__r_.__value_.__r.__words[0]) != 16983)
          {
            goto LABEL_105;
          }
        }

        v155 = v10;
        if (!v11)
        {
          v34 = 0;
          v153 = 0;
          v154 = v8 + 152;
          v149 = 1;
          v151 = 0;
          v30 = v8 + 152;
LABEL_138:
          v9 = 0;
          goto LABEL_139;
        }

        v153 = 0;
        v154 = v8 + 152;
        v30 = v8 + 152;
        if (*(v8 + 622) == 255)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8 + 592;
        }

        if (*(v8 + 898) == 255)
        {
          v34 = 0;
        }

        else
        {
          v34 = v8 + 592;
        }

        v149 = 1;
        v151 = 0;
LABEL_139:
        v12 = v157;
        if (v13)
        {
          *(a1 + 448) = (*(*v13 + 224))(v13, *(a1 + 456), *(a1 + 464) - *(a1 + 456));
        }

        *(a1 + 412) = *(a1 + 104);
        v39 = *(v8 + 128);
        if (v39)
        {
          v39 = std::__shared_weak_count::lock(v39);
          v40 = v39;
          if (v39)
          {
            v39 = *(v8 + 120);
          }
        }

        else
        {
          v40 = 0;
        }

        v41 = SipStack::prefs(v39);
        *(a1 + 416) = ImsPrefs::PacketizationTime(v41);
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        v42 = *(v8 + 128);
        if (v42)
        {
          v42 = std::__shared_weak_count::lock(v42);
          v43 = v42;
          if (v42)
          {
            v42 = *(v8 + 120);
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = SipStack::prefs(v42);
        *(a1 + 418) = ImsPrefs::MaxPacketizationTime(v44);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        memset(&v227, 0, sizeof(v227));
        if (*(v8 + 247) < 0)
        {
          std::string::__init_copy_ctor_external(&v227, *(v8 + 224), *(v8 + 232));
        }

        else
        {
          v227 = *(v8 + 224);
        }

        LOBYTE(v45) = *(&v227.__r_.__value_.__s + 23);
        v46 = SHIBYTE(v227.__r_.__value_.__r.__words[2]);
        if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          LOBYTE(v45) = v227.__r_.__value_.__s.__data_[8];
        }

        *(a1 + 496) = v45;
        v45 = v45;
        if (v45)
        {
          v47 = (a1 + 497);
          v48 = v46 < 0;
          v49 = &v227;
          if (v48)
          {
            v49 = v227.__r_.__value_.__r.__words[0];
          }

          do
          {
            v50 = v49->__r_.__value_.__s.__data_[0];
            v49 = (v49 + 1);
            *v47++ = v50;
            --v45;
          }

          while (v45);
        }

        v51 = *(a1 + 104);
        if (v51 == 2)
        {
          v52 = (a1 + 320);
          v53 = *(a1 + 343);
          if (*(a1 + 343) < 0)
          {
            v54 = *(a1 + 328);
            if (v54 != 3)
            {
              goto LABEL_177;
            }

            v52 = *v52;
          }

          else if (v53 != 3)
          {
LABEL_174:
            if (v53 != 4)
            {
              goto LABEL_180;
            }

            goto LABEL_179;
          }

          v55 = *v52;
          v56 = *(v52 + 2);
          if (v55 == 21586 && v56 == 80)
          {
            *(a1 + 484) = *(a1 + 316);
            *(a1 + 488) = -1;
            *(a1 + 768) = 0;
            v64 = 308;
            goto LABEL_191;
          }
        }

        else
        {
          v53 = *(a1 + 343);
        }

        v52 = (a1 + 320);
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_174;
        }

        v54 = *(a1 + 328);
LABEL_177:
        if (v54 != 4)
        {
          goto LABEL_180;
        }

        v52 = *v52;
LABEL_179:
        if (*v52 == 1346589778)
        {
          *(a1 + 484) = -1;
          v61 = *(a1 + 318);
          *(a1 + 488) = v61;
          v62 = *(a1 + 316);
          if (v61 < v62)
          {
            *(a1 + 488) = v62;
          }

          v63 = *(a1 + 888);
          *(a1 + 772) = (v63 * 37.5);
          v59 = (v63 * 12.5);
          goto LABEL_189;
        }

LABEL_180:
        v58 = *(a1 + 316);
        *(a1 + 484) = v58;
        if (*(a1 + 318) > v58)
        {
          v58 = *(a1 + 318);
        }

        *(a1 + 488) = v58;
        if (v51 == 1 && (LODWORD(v59) = *(a1 + 304), !v59))
        {
          *(a1 + 772) = 0;
        }

        else
        {
          v60 = *(a1 + 888);
          *(a1 + 772) = (v60 * 37.5);
          v59 = (v60 * 12.5);
        }

LABEL_189:
        *(a1 + 768) = v59;
        v14 = v51 == 1;
        v64 = 308;
        if (v14)
        {
          v64 = 304;
        }

LABEL_191:
        *(a1 + 760) = *(a1 + v64);
        v65 = *(v155 + 24);
        *(a1 + 482) = v65;
        *(a1 + 754) = v65 + 1;
        if (v9)
        {
          v66 = *(a1 + 800);
          *v66 = 3;
          *(v66 + 40) = *(v9 + 28);
          *(v66 + 41) = *(v9 + 30);
          *(v66 + 44) = *(v9 + 308);
          v67 = *(v9 + 344);
          *&__p.__r_.__value_.__r.__words[1] = *(v9 + 328);
          __p.__r_.__value_.__r.__words[0] = &unk_1F5EBE678;
          v222 = v67;
          if (v151)
          {
            RTPManager::logCodec(*(a1 + 40), v149, SWORD1(__p.__r_.__value_.__r.__words[1]));
            v66 = *(a1 + 800);
          }

          *(v66 + 20) = __p.__r_.__value_.__s.__data_[8] ^ 1;
          *(v66 + 28) = HIWORD(__p.__r_.__value_.__r.__words[1]);
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v215[0] = 0;
          v218 = 0;
          v68 = ims::debug(v219, v215);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v68 + 8), "codec[codecsIndex] max_redundancy_duration : ", 45);
          *(v68 + 17) = 0;
          MEMORY[0x1E6923390](*(v68 + 8), HIWORD(__p.__r_.__value_.__r.__words[1]));
          *(v68 + 17) = 0;
          (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v68 + 17) = 0;
          if (v218 == 1 && v217 < 0)
          {
            operator delete(v216);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          *(*(a1 + 800) + 26) = 2 * WORD2(__p.__r_.__value_.__r.__words[1]);
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v211[0] = 0;
          v214 = 0;
          v69 = ims::debug(v219, v211);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v69 + 8), "codec[codecsIndex] mode_set = ", 30);
          *(v69 + 17) = 0;
          MEMORY[0x1E6923390](*(v69 + 8), *(*(a1 + 800) + 26));
          *(v69 + 17) = 0;
          (*(*v69 + 64))(v69, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v69 + 17) = 0;
          if (v214 == 1 && v213 < 0)
          {
            operator delete(v212);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          *(*(a1 + 800) + 36) = __p.__r_.__value_.__s.__data_[10];
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v207[0] = 0;
          v210 = 0;
          v70 = ims::debug(v219, v207);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v70 + 8), "codec[codecsIndex] start_mode_ul = ", 35);
          *(v70 + 17) = 0;
          MEMORY[0x1E6923340](*(v70 + 8), *(*(a1 + 800) + 36));
          *(v70 + 17) = 0;
          (*(*v70 + 64))(v70, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v70 + 17) = 0;
          if (v210 == 1 && v209 < 0)
          {
            operator delete(v208);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          v71 = *(a1 + 800);
          *(v71 + 8) = WORD2(__p.__r_.__value_.__r.__words[2]);
          *(v71 + 4) = LOWORD(__p.__r_.__value_.__r.__words[2]);
          *(v71 + 24) = __p.__r_.__value_.__s.__data_[18];
          v72 = *(v8 + 128);
          if (v72)
          {
            v72 = std::__shared_weak_count::lock(v72);
            v73 = v72;
            if (v72)
            {
              v72 = *(v8 + 120);
            }
          }

          else
          {
            v73 = 0;
          }

          v76 = SipStack::prefs(v72);
          v77 = ImsPrefs::EnableDTX(v76);
          v78 = *(a1 + 800);
          *(v78 + 32) = v77;
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
            v78 = *(a1 + 800);
          }

          v75 = v154;
          v79 = *(v78 + 40);
          v80 = *(v78 + 41);
          if (v79 == 255)
          {
            *(v78 + 40) = v80;
            LOBYTE(v79) = v80;
          }

          if (v80 == 255)
          {
            *(v78 + 41) = v79;
          }

          v158 = 1;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v223[0] = 0;
          v226 = 0;
          v74 = ims::debug(&__p, v223);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v74 + 8), "NB codec not present in SDP Media format", 40);
          *(v74 + 17) = 0;
          (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v74 + 17) = 0;
          if (v226 == 1 && v225 < 0)
          {
            operator delete(v224);
          }

          v75 = v154;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v158 = 0;
        }

        if (v75)
        {
          v81 = *(a1 + 800);
          v82 = v81 + 48 * v158;
          *v82 = 4;
          *(v82 + 40) = *(v75 + 28);
          *(v82 + 41) = *(v75 + 30);
          *(v82 + 44) = *(v75 + 308);
          v83 = *(v75 + 344);
          *&__p.__r_.__value_.__r.__words[1] = *(v75 + 328);
          __p.__r_.__value_.__r.__words[0] = &unk_1F5EBE678;
          v222 = v83;
          if ((v151 & 1) == 0)
          {
            RTPManager::logCodec(*(a1 + 40), v149, SWORD1(__p.__r_.__value_.__r.__words[1]));
            v81 = *(a1 + 800);
          }

          v84 = v81 + 48 * v158;
          *(v84 + 20) = __p.__r_.__value_.__s.__data_[8] ^ 1;
          *(v84 + 28) = HIWORD(__p.__r_.__value_.__r.__words[1]);
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v199[0] = 0;
          v202 = 0;
          v85 = ims::debug(v219, v199);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v85 + 8), "codec[codecsIndex] max_redundancy_duration : ", 45);
          *(v85 + 17) = 0;
          MEMORY[0x1E6923390](*(v85 + 8), HIWORD(__p.__r_.__value_.__r.__words[1]));
          *(v85 + 17) = 0;
          (*(*v85 + 64))(v85, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v85 + 17) = 0;
          if (v202 == 1 && v201 < 0)
          {
            operator delete(v200);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          *(*(a1 + 800) + 48 * v158 + 26) = 2 * WORD2(__p.__r_.__value_.__r.__words[1]);
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v195[0] = 0;
          v198 = 0;
          v86 = ims::debug(v219, v195);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v86 + 8), "codec[codecsIndex] mode_set = ", 30);
          *(v86 + 17) = 0;
          MEMORY[0x1E6923390](*(v86 + 8), *(*(a1 + 800) + 48 * v158 + 26));
          *(v86 + 17) = 0;
          (*(*v86 + 64))(v86, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v86 + 17) = 0;
          if (v198 == 1 && v197 < 0)
          {
            operator delete(v196);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          *(*(a1 + 800) + 48 * v158 + 36) = __p.__r_.__value_.__s.__data_[10];
          std::string::basic_string[abi:ne200100]<0>(v219, "ibi.session");
          v191[0] = 0;
          v194 = 0;
          v87 = ims::debug(v219, v191);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v87 + 8), "codec[codecsIndex] start_mode_ul = ", 35);
          *(v87 + 17) = 0;
          MEMORY[0x1E6923340](*(v87 + 8), *(*(a1 + 800) + 48 * v158 + 36));
          *(v87 + 17) = 0;
          (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v87 + 17) = 0;
          if (v194 == 1 && v193 < 0)
          {
            operator delete(v192);
          }

          if (v220 < 0)
          {
            operator delete(v219[0]);
          }

          v88 = *(a1 + 800) + 48 * v158;
          *(v88 + 8) = WORD2(__p.__r_.__value_.__r.__words[2]);
          *(v88 + 4) = LOWORD(__p.__r_.__value_.__r.__words[2]);
          *(v88 + 24) = __p.__r_.__value_.__s.__data_[18];
          v89 = *(v8 + 128);
          if (v89)
          {
            v89 = std::__shared_weak_count::lock(v89);
            v90 = v89;
            if (v89)
            {
              v89 = *(v8 + 120);
            }
          }

          else
          {
            v90 = 0;
          }

          v92 = SipStack::prefs(v89);
          v93 = ImsPrefs::EnableDTX(v92);
          v94 = *(a1 + 800);
          *(v94 + 48 * v158 + 32) = v93;
          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
            v94 = *(a1 + 800);
          }

          v95 = v94 + 48 * v158;
          v96 = *(v95 + 40);
          v97 = *(v95 + 41);
          if (v96 == 255)
          {
            *(v95 + 40) = v97;
            LOBYTE(v96) = v97;
          }

          v75 = v154;
          if (v97 == 255)
          {
            *(v95 + 41) = v96;
          }

          ++v158;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v203[0] = 0;
          v206 = 0;
          v91 = ims::debug(&__p, v203);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v91 + 8), "WB codec not present in SDP Media format", 40);
          *(v91 + 17) = 0;
          (*(*v91 + 64))(v91, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v91 + 17) = 0;
          if (v206 == 1 && v205 < 0)
          {
            operator delete(v204);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (v34)
        {
          v98 = *(a1 + 800) + 48 * v158;
          *v98 = 5;
          *(v98 + 40) = *(v34 + 304);
          *(v98 + 41) = *(v34 + 306);
          *(v98 + 44) = *(v34 + 310);
          ++v158;
          v99 = v155;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v187[0] = 0;
          v190 = 0;
          v99 = v155;
          v100 = ims::debug(&__p, v187);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v100 + 8), "DTMF codec for NB not present in SDP Media format", 49);
          *(v100 + 17) = 0;
          (*(*v100 + 64))(v100, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v100 + 17) = 0;
          if (v190 == 1 && v189 < 0)
          {
            operator delete(v188);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (v30)
        {
          v101 = *(a1 + 800) + 48 * v158;
          *v101 = 5;
          *(v101 + 40) = *(v30 + 304);
          *(v101 + 41) = *(v30 + 306);
          *(v101 + 44) = *(v30 + 310);
          ++v158;
          v102 = v153;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v183[0] = 0;
          v186 = 0;
          v102 = v153;
          v103 = ims::debug(&__p, v183);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v103 + 8), "DTMF codec for WB not present in SDP Media format", 49);
          *(v103 + 17) = 0;
          (*(*v103 + 64))(v103, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v103 + 17) = 0;
          if (v186 == 1 && v185 < 0)
          {
            operator delete(v184);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (!v102)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v179[0] = 0;
          v182 = 0;
          v119 = ims::debug(&__p, v179);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v119 + 8), "EVS codec not present in SDP media format", 41);
          *(v119 + 17) = 0;
          (*(*v119 + 64))(v119, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v119 + 17) = 0;
          if (v182 == 1 && v181 < 0)
          {
            operator delete(v180);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v120 = 0;
          goto LABEL_315;
        }

        v156 = v99;
        v104 = *(v102 + 360);
        v105 = *(v102 + 368);
        v106 = *(v102 + 370);
        v107 = *(v102 + 374);
        v108 = *(v102 + 376);
        v141 = *(v102 + 380);
        v142 = *(v102 + 388);
        v143 = *(v102 + 379);
        v109 = v102;
        v110 = *(v102 + 392);
        v144 = *(v109 + 396);
        v150 = v105;
        v152 = *(v109 + 400);
        v146 = *(v109 + 418);
        v147 = *(v109 + 416);
        v145 = *(v109 + 420);
        if (v110 < 3)
        {
          v111 = 4;
        }

        else
        {
          v111 = 5;
        }

        v148 = v106;
        RTPManager::logCodec(*(a1 + 40), v111, v106);
        v112 = *(a1 + 832);
        if (v108)
        {
          *v112 = 2;
          *(v112 + 44) = 1;
          *(v112 + 52) = v107;
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v171[0] = 0;
          v174 = 0;
          v12 = v157;
          v102 = v153;
          v113 = ims::debug(&__p, v171);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v113 + 8), "codec[codecsIndex] max_redundancy_duration : ", 45);
          *(v113 + 17) = 0;
          MEMORY[0x1E6923390](*(v113 + 8), v107);
          *(v113 + 17) = 0;
          (*(*v113 + 64))(v113, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v113 + 17) = 0;
          if (v174 == 1 && v173 < 0)
          {
            operator delete(v172);
          }

          v99 = v156;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          *(*(a1 + 832) + 50) = 2 * v150;
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v167[0] = 0;
          v170 = 0;
          v114 = ims::debug(&__p, v167);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v114 + 8), "codec[codecsIndex] mode_set = ", 30);
          *(v114 + 17) = 0;
          MEMORY[0x1E6923390](*(v114 + 8), *(*(a1 + 832) + 50));
          *(v114 + 17) = 0;
          (*(*v114 + 64))(v114, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v114 + 17) = 0;
          if (v170 == 1 && v169 < 0)
          {
            operator delete(v168);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          *(*(a1 + 832) + 60) = v148;
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v163[0] = 0;
          v166 = 0;
          v115 = ims::debug(&__p, v163);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v115 + 8), "codec[codecsIndex] start_mode_ul = ", 35);
          *(v115 + 17) = 0;
          MEMORY[0x1E6923340](*(v115 + 8), *(*(a1 + 832) + 60));
          *(v115 + 17) = 0;
          (*(*v115 + 64))(v115, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v115 + 17) = 0;
          if (v166 == 1 && v165 < 0)
          {
            operator delete(v164);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v116 = *(a1 + 832);
          *(v116 + 28) = v147;
          *(v116 + 32) = v145;
          *(v116 + 48) = v146;
          v117 = *(v8 + 128);
          if (v117)
          {
            v117 = std::__shared_weak_count::lock(v117);
            v118 = v117;
            if (v117)
            {
              v117 = *(v8 + 120);
            }
          }

          else
          {
            v118 = 0;
          }

          v125 = SipStack::prefs(v117);
          v126 = ImsPrefs::EnableDTX(v125);
          v127 = *(a1 + 832);
          *(v127 + 56) = v126;
          v128 = 1;
          if (!v118)
          {
            goto LABEL_310;
          }
        }

        else
        {
          *v112 = 3;
          *(v112 + 50) = 1023;
          *(v112 + 4) = v104 >> 9;
          v121 = *(a1 + 400);
          v122 = IBISession::supportedBandwidths(v110);
          if (v121 == 1)
          {
            v122 &= IBISession::supportedBandwidths(v144);
          }

          *(v112 + 10) = v122;
          v12 = v157;
          std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
          v99 = v156;
          v175[0] = 0;
          v178 = 0;
          v123 = ims::debug(&__p, v175);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v123 + 8), "bw= ", 4);
          *(v123 + 17) = 0;
          MEMORY[0x1E6923390](*(v123 + 8), *(*(a1 + 832) + 10));
          *(v123 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v123 + 8), ", ", 2);
          *(v123 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v123 + 8), "tx= ", 4);
          *(v123 + 17) = 0;
          if (v110 > 5)
          {
            v124 = 15;
          }

          else
          {
            v124 = word_1E51726B4[v110];
          }

          MEMORY[0x1E6923390](*(v123 + 8), v124);
          *(v123 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v123 + 8), ", ", 2);
          *(v123 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v123 + 8), "rx= ", 4);
          *(v123 + 17) = 0;
          if (v144 > 5)
          {
            v135 = 15;
          }

          else
          {
            v135 = word_1E51726B4[v144];
          }

          MEMORY[0x1E6923390](*(v123 + 8), v135);
          *(v123 + 17) = 0;
          (*(*v123 + 64))(v123, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v123 + 17) = 0;
          if (v178 == 1 && v177 < 0)
          {
            operator delete(v176);
          }

          v102 = v153;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v136 = *(a1 + 832);
          *(v136 + 16) = v141 & (v141 << 23 >> 31);
          v137 = v143;
          if (!v142)
          {
            v137 = -1;
          }

          *(v136 + 19) = v137;
          v138 = *(v8 + 128);
          if (v138)
          {
            v138 = std::__shared_weak_count::lock(v138);
            v118 = v138;
            if (v138)
            {
              v138 = *(v8 + 120);
            }
          }

          else
          {
            v118 = 0;
          }

          v139 = SipStack::prefs(v138);
          v140 = ImsPrefs::EnableDTX(v139);
          v128 = 0;
          v127 = *(a1 + 832);
          *(v127 + 20) = v140;
          if (!v118)
          {
            goto LABEL_310;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v118);
        v127 = *(a1 + 832);
LABEL_310:
        *(v127 + 64) = v128;
        *(v127 + 68) = v152;
        *(v127 + 72) = *(v102 + 28);
        *(v127 + 73) = *(v102 + 30);
        *(v127 + 76) = *(v102 + 308);
        v129 = *(a1 + 800) + 48 * v158;
        v130 = *(v129 + 40);
        v131 = *(v129 + 41);
        if (v130 == 255)
        {
          *(v129 + 40) = v131;
          LOBYTE(v130) = v131;
        }

        v75 = v154;
        if (v131 == 255)
        {
          *(v129 + 41) = v130;
        }

        v120 = 1;
LABEL_315:
        v132 = *(v99 + 306);
        if (v132 != 255)
        {
          *(a1 + 421) = v132;
        }

        *(a1 + 420) = *(v8 + 182);
        *(a1 + 492) = 1;
        *(a1 + 792) = v158;
        *(a1 + 824) = v120;
        if (v102)
        {
          v133 = *(v99 + 408);
        }

        else if (v75 | v9)
        {
          v133 = *(v99 + 352);
        }

        else
        {
          v133 = *(v99 + 48);
        }

        *(a1 + 888) = v133;
        std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
        v159[0] = 0;
        v162 = 0;
        v134 = ims::debug(&__p, v159);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v134 + 8), "Saving AS Bandwidth from SDP Media format : ", 44);
        *(v134 + 17) = 0;
        MEMORY[0x1E69233B0](*(v134 + 8), *(a1 + 888));
        *(v134 + 17) = 0;
        (*(*v134 + 64))(v134, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v134 + 17) = 0;
        if (v162 == 1 && v161 < 0)
        {
          operator delete(v160);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *a3 = &unk_1F5EBDEF8;
        *(a3 + 8) = &_bambiDomain;
        *(a3 + 16) = 0;
        if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v227.__r_.__value_.__l.__data_);
        }

        goto LABEL_133;
      }

      v28 = *__p.__r_.__value_.__l.__data_ != 19777 || *(__p.__r_.__value_.__r.__words[0] + 2) != 82;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v28)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_77;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) != 19777 || __p.__r_.__value_.__s.__data_[2] != 82)
      {
        goto LABEL_77;
      }
    }

    v155 = v10;
    if (v11)
    {
      v149 = 0;
      if (*(v8 + 622) == 255)
      {
        v29 = 0;
      }

      else
      {
        v29 = v8 + 592;
      }

      v153 = 0;
      v154 = v29;
      if (*(v8 + 898) == 255)
      {
        v30 = 0;
      }

      else
      {
        v30 = v8 + 592;
      }
    }

    else
    {
      v149 = 0;
      v30 = 0;
      v153 = 0;
      v154 = 0;
    }

    v151 = 1;
    v34 = v8 + 152;
    goto LABEL_139;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.session");
  v240[0] = 0;
  v243 = 0;
  v18 = ims::error(&__p, v240);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Insufficient information to generate session configuration", 58);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v243 == 1 && v242 < 0)
  {
    operator delete(v241);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  RTPManager::logRTPError(*(a1 + 40), 25);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741825;
LABEL_25:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1E4ECF96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void IBISession::setConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v4 = a2[1];
  v12 = *a2;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 200))(a1, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (((*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16)) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "ibi.session");
    v6[0] = 0;
    v9 = 0;
    v5 = ims::debug(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Generated configuration successfully", 36);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void IBISession::internalConfigure(IBISession *this, char a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v15, "ibi.session");
  v11[0] = 0;
  v14 = 0;
  v5 = ims::debug(v4, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sending Configuration request", 29);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  *(this + 392) = a2;
  IBISessionHelper::sendConfigureRequest(*(this + 113), v10);
  ImsResult::~ImsResult(v10);
  RTPSharedPointerBase::getShared<IBISession>(v15, this);
  if (v15[0])
  {
    v6 = v15[0] + 8;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = v15[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN10IBISession17internalConfigureEb_block_invoke;
  v7[3] = &__block_descriptor_tmp_47;
  v7[4] = this;
  MediaSessionDriver::startTimerForRequest(this + 1, 74566, &v8, v7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4ED0148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void IBISession::configureMediaLinkMonitor(IBISession *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "ibi.session");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "configureLinkMonitor is a No-Op for IBI session", 47);
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

void sub_1E4ED028C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void IBISession::configureRemoteRTCP(IBISession *this, int a2)
{
  if (a2)
  {
    if (*(this + 352))
    {
      v3 = 1;
      goto LABEL_10;
    }

    v4 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.session");
    v22[0] = 0;
    v25 = 0;
    v5 = ims::debug(v4, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "RTCP reports are not allowed.", 29);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  v3 = 0;
LABEL_10:
  if (*(this + 399) == v3)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.session");
    v18[0] = 0;
    v21 = 0;
    v7 = ims::debug(v6, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "RTCP reports are already", 24);
    *(v7 + 17) = 0;
    if (v3)
    {
      v8 = "Enabled";
    }

    else
    {
      v8 = "Disabled";
    }

    if (v3)
    {
      v9 = 7;
    }

    else
    {
      v9 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  else
  {
    *(this + 399) = v3;
    v10 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.session");
    v14[0] = 0;
    v17 = 0;
    v11 = ims::debug(v10, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "RTCP reports: ", 14);
    *(v11 + 17) = 0;
    if (v3)
    {
      v12 = "Enabled";
    }

    else
    {
      v12 = "Disabled";
    }

    if (v3)
    {
      v13 = 7;
    }

    else
    {
      v13 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12, v13);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (*(this + 394))
    {
      (*(*this + 72))(this, 0);
    }
  }
}

void sub_1E4ED05A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a38 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 33) < 0)
  {
    operator delete(*(v38 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBISession::terminate(IBISessionHelper **this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "ibi.session");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Sending TerminateMedia request", 30);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  IBISessionHelper::sendTerminateRequest(this[113], v9);
  ImsResult::~ImsResult(v9);
  std::__list_imp<unsigned long long>::clear(this + 46);
  RTPSharedPointerBase::getShared<IBISession>(v14, this);
  if (v14[0])
  {
    v4 = v14[0] + 8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = v14[1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN10IBISession9terminateEb_block_invoke;
  v6[3] = &__block_descriptor_tmp_55;
  v6[4] = this;
  MediaSessionDriver::startTimerForRequest(this + 1, 74569, &v7, v6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return 1;
}

void sub_1E4ED07A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBISession::start(IBISessionHelper **this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "ibi.session");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Sending StartMedia request", 26);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  IBISessionHelper::sendStartRequest(this[113], v9);
  ImsResult::~ImsResult(v9);
  RTPSharedPointerBase::getShared<IBISession>(v14, this);
  if (v14[0])
  {
    v4 = v14[0] + 8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = v14[1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN10IBISession5startEb_block_invoke;
  v6[3] = &__block_descriptor_tmp_57_0;
  v6[4] = this;
  MediaSessionDriver::startTimerForRequest(this + 1, 74567, &v7, v6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(this + 197) = 257;
  return 1;
}

void sub_1E4ED09C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBISession::stop(IBISessionHelper **this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "ibi.session");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Sending StopMedia request", 25);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  IBISessionHelper::sendStopRequest(this[113], v9);
  ImsResult::~ImsResult(v9);
  std::__list_imp<unsigned long long>::clear(this + 46);
  RTPSharedPointerBase::getShared<IBISession>(v14, this);
  if (v14[0])
  {
    v4 = v14[0] + 8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = v14[1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN10IBISession4stopEb_block_invoke;
  v6[3] = &__block_descriptor_tmp_59_0;
  v6[4] = this;
  MediaSessionDriver::startTimerForRequest(this + 1, 74568, &v7, v6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((*(this + 393) & 1) == 0)
  {
    *(this + 394) = 0;
  }

  *(this + 395) = 0;
  return 1;
}

void sub_1E4ED0BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBISession::setDirection(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 394))
  {
    v4 = (a1 + 104);
    if (*(a1 + 104) == *a2)
    {
      v5 = std::string::basic_string[abi:ne200100]<0>(v58, "ibi.session");
      v46[0] = 0;
      v49 = 0;
      v6 = ims::debug(v5, v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No change to current direction (", 32);
      *(v6 + 17) = 0;
      ims::toString<MediaDirection>(a2, v52);
      (*(*v6 + 32))(v6, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ")", 1);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (v49 == 1 && v48 < 0)
      {
        operator delete(__p);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(a1 + 16);
          if (!v10)
          {
            goto LABEL_27;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v44);
          (*(*v10 + 24))(v10, &v44, 0);
          v11 = v45;
          if (!v45)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      return 1;
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(v58, "ibi.session");
    v40[0] = 0;
    v43 = 0;
    v18 = ims::debug(v17, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Updating direction from ", 24);
    *(v18 + 17) = 0;
    ims::toString<MediaDirection>((a1 + 104), v52);
    (*(*v18 + 32))(v18, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " to ", 4);
    *(v18 + 17) = 0;
    ims::toString<MediaDirection>(a2, v38);
    (*(*v18 + 32))(v18, v38);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v19 = *a2;
    *v4 = *a2;
    if (v19 == 1)
    {
      v22 = 0;
    }

    else
    {
      if (v19 != 3)
      {
        v22 = 1;
        *(a1 + 393) = 1;
        if (v19 == 2)
        {
          v23 = (a1 + 320);
          v24 = *(a1 + 343);
          if (*(a1 + 343) < 0)
          {
            v25 = *(a1 + 328);
            if (v25 != 3)
            {
              v19 = 2;
              goto LABEL_56;
            }

            v23 = *v23;
          }

          else if (v24 != 3)
          {
            v19 = 2;
            goto LABEL_53;
          }

          if (*v23 == 21586 && *(v23 + 2) == 80)
          {
            LODWORD(v28) = 0;
            *(a1 + 484) = *(a1 + 316);
            *(a1 + 488) = -1;
            *(a1 + 772) = 0;
            v19 = 2;
            goto LABEL_63;
          }

          v22 = 1;
          v19 = 2;
LABEL_52:
          v23 = (a1 + 320);
          if ((v24 & 0x80) == 0)
          {
LABEL_53:
            if (v24 != 4)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          v25 = *(a1 + 328);
LABEL_56:
          if (v25 != 4)
          {
            goto LABEL_59;
          }

          v23 = *v23;
LABEL_58:
          if (*v23 == 1346589778)
          {
            *(a1 + 484) = -1;
            v30 = *(a1 + 318);
            *(a1 + 488) = v30;
            v31 = *(a1 + 316);
            if (v30 < v31)
            {
              *(a1 + 488) = v31;
            }

            *(a1 + 768) = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(xmmword_1E5172650, *(a1 + 888))));
            if (v22)
            {
              goto LABEL_64;
            }

            goto LABEL_72;
          }

LABEL_59:
          v26 = *(a1 + 316);
          *(a1 + 484) = v26;
          if (*(a1 + 318) > v26)
          {
            v26 = *(a1 + 318);
          }

          *(a1 + 488) = v26;
          if (v22)
          {
            v27 = *(a1 + 888);
            *(a1 + 772) = (v27 * 37.5);
            v28 = (v27 * 12.5);
LABEL_63:
            *(a1 + 768) = v28;
LABEL_64:
            v29 = 308;
LABEL_73:
            *(a1 + 760) = *(a1 + v29);
            *(a1 + 412) = v19;
            (*(*a1 + 72))(a1, 0);
            return 1;
          }

          if (*(a1 + 304))
          {
            *(a1 + 768) = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(xmmword_1E5172650, *(a1 + 888))));
          }

          else
          {
            *(a1 + 768) = 0;
          }

LABEL_72:
          v29 = 304;
          goto LABEL_73;
        }

LABEL_51:
        v24 = *(a1 + 343);
        goto LABEL_52;
      }

      v20 = std::string::basic_string[abi:ne200100]<0>(v58, "ibi.session");
      v34[0] = 0;
      v37 = 0;
      v21 = ims::warn(v20, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "We don't support send only, defaulting to inactive", 50);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v37 == 1 && v36 < 0)
      {
        operator delete(v35);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      v19 = 4;
      *v4 = 4;
      v22 = 1;
    }

    *(a1 + 393) = v22;
    goto LABEL_51;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v58, "ibi.session");
  v54[0] = 0;
  v57 = 0;
  v13 = ims::debug(v12, v54);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Setting initial direction to ", 29);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>(a2, v52);
  (*(*v13 + 32))(v13, v52);
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v57 == 1 && v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  *(a1 + 104) = *a2;
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v9 = v15;
      v16 = *(a1 + 16);
      if (!v16)
      {
        goto LABEL_27;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v50);
      (*(*v16 + 32))(v16, &v50, 0);
      v11 = v51;
      if (!v51)
      {
        goto LABEL_27;
      }

LABEL_26:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_27:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return 1;
}

void sub_1E4ED13AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  _Unwind_Resume(a1);
}

void IBISession::startSendingDTMF(IBISession *this, uint64_t a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "ibi.session");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "startSendingDTMF: queuing up digit ", 35);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923340](*(v4 + 8), a2);
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

  operator new();
}

void sub_1E4ED1690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a30 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

void IBISession::startDTMFDigit(IBISession *this, uint64_t a2)
{
  if (*(a2 + 384))
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(v30, "ibi.session");
    v22[0] = 0;
    v25 = 0;
    v5 = ims::debug(v4, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sending DTMF digit : ", 21);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923340](*(v5 + 8), *(*(a2 + 376) + 16));
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(__p);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    *(this + 10) = 0;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
    v6 = *(*(a2 + 376) + 16);
    IBISessionHelper::sendStartDTMFDigitRequest(*(a2 + 904), this);
    v7 = *(a2 + 376);
    v9 = *v7;
    v8 = v7[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    --*(a2 + 384);
    operator delete(v7);
    if ((*(**(this + 1) + 24))(*(this + 1), *(this + 4)))
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(v30, "ibi.session");
      v15[0] = 0;
      v18 = 0;
      v11 = ims::error(v10, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Failed to send digit", 20);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v18 == 1 && v17 < 0)
      {
        operator delete(v16);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      std::__list_imp<unsigned long long>::clear((a2 + 368));
    }

    else
    {
      RTPSharedPointerBase::getShared<IBISession>(v30, a2);
      if (v30[0])
      {
        v14 = v30[0] + 8;
      }

      else
      {
        v14 = 0;
      }

      v20 = v14;
      v21 = v30[1];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZN10IBISession14startDTMFDigitEv_block_invoke;
      v19[3] = &__block_descriptor_tmp_69;
      v19[4] = a2;
      MediaSessionDriver::startTimerForRequest((a2 + 8), 74570, &v20, v19);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      *(a2 + 361) = 1;
    }
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v30, "ibi.session");
    v26[0] = 0;
    v29 = 0;
    v13 = ims::debug(v12, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "DTMF queue is empty, nothing to send", 36);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
  }
}

void sub_1E4ED1A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  ImsResult::~ImsResult(v36);
  _Unwind_Resume(a1);
}

double IBISession::stopSendingDTMF@<D0>(uint64_t a1@<X8>)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v10, "ibi.session");
  v6[0] = 0;
  v9 = 0;
  v4 = ims::debug(v3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stopSendingDTMF is a No-Op", 26);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

void sub_1E4ED1C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

double IBISession::sendDTMFDigits@<D0>(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = *v4++;
      (*(*a1 + 128))(v9, a1, v7);
      ImsResult::~ImsResult(v9);
    }

    while (v4 != v5);
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

void IBISession::handleMediaError(IBISession *this, int a2, int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v37, "ibi.session");
  v33[0] = 0;
  v36 = 0;
  v7 = ims::debug(v6, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Media timeout for session(", 26);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *(this + 89));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ") : ", 4);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "RTP: ", 5);
  *(v7 + 17) = 0;
  if (a2)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  if (a2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", RTCP: ", 8);
  *(v7 + 17) = 0;
  if (a3)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  if (a3)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v10, v11);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v37, "ibi.session");
  v29[0] = 0;
  v32 = 0;
  v13 = ims::debug(v12, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Session direction is ", 21);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>(this + 26, v27);
  (*(*v13 + 32))(v13, v27);
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v14 = *(this + 26);
  if (v14 == 1 && a2)
  {
    v15 = *(this + 3);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = v16;
        v18 = *(this + 2);
        if (!v18)
        {
          goto LABEL_39;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v25);
        (*(*v18 + 40))(v18, &v25, 5);
        v19 = v26;
        if (!v26)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }
  }

  else if (v14 != 1)
  {
    if (a3)
    {
      v20 = *(this + 3);
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v17 = v21;
          v22 = *(this + 2);
          if (!v22)
          {
            goto LABEL_39;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v23);
          (*(*v22 + 40))(v22, &v23, 6);
          v19 = v24;
          if (!v24)
          {
            goto LABEL_39;
          }

LABEL_38:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_39:
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }
    }
  }
}

void sub_1E4ED20E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  _Unwind_Resume(a1);
}

void IBISession::handleStartMediaResponse(RTPManager **this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 1), 74567);
  if (a2 || *(this + 89) != a3)
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v36, "ibi.session");
    v22[0] = 0;
    v25 = 0;
    v15 = ims::error(v14, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Failed to start media session : ", 32);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), a2);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    RTPManager::logRTPError(this[5], 7);
    v16 = this[3];
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = v17;
        v19 = this[2];
        if (v19)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v20);
          (*(*v19 + 24))(v19, &v20, 9);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v36, "ibi.session");
    v32[0] = 0;
    v35 = 0;
    v7 = ims::debug(v6, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Media session started successfully, session id : ", 49);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), a3);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v8 = this[3];
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = this[2];
        if (v11)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v30);
          (*(*v11 + 24))(v11, &v30, 0);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    if (*(this + 26) == 4 && *(this + 395) == 1)
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(v36, "ibi.session");
      v26[0] = 0;
      v29 = 0;
      v13 = ims::debug(v12, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Direction is inactive, a held call getting handed over. De-activate media", 73);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(__p);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      *(this + 397) = 1;
      (*(*this + 5))(this, 0);
    }
  }
}

void sub_1E4ED252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

void IBISession::handleStopMediaResponse(IBISession *this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 8), 74568);
  if (a2 || *(this + 89) != a3)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v48, "ibi.session");
    v32[0] = 0;
    v35 = 0;
    v9 = ims::error(v8, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Failed to stop media session : ", 31);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923350](*(v9 + 8), a2);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    v10 = *(this + 5);
    if (*(this + 393) == 1)
    {
      RTPManager::logRTPError(v10, 9);
      v11 = *(this + 3);
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = v12;
      v14 = *(this + 2);
      if (!v14)
      {
        goto LABEL_21;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v30);
      (*(*v14 + 24))(v14, &v30, 9);
      v15 = v31;
      if (!v31)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    RTPManager::logRTPError(v10, 8);
    v16 = *(this + 3);
    if (!v16)
    {
      return;
    }

    v17 = std::__shared_weak_count::lock(v16);
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = *(this + 2);
    if (!v19 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v28), (*(*v19 + 32))(v19, &v28, 9), (v20 = v29) == 0))
    {
LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      return;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_28;
  }

  if (*(this + 397) != 1)
  {
    v21 = std::string::basic_string[abi:ne200100]<0>(v48, "ibi.session");
    v40[0] = 0;
    v43 = 0;
    v22 = ims::debug(v21, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Media session stopped successfully, session id : ", 49);
    *(v22 + 17) = 0;
    MEMORY[0x1E6923350](*(v22 + 8), a3);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    v23 = *(this + 3);
    if (*(this + 393) == 1)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = std::__shared_weak_count::lock(v23);
      if (!v24)
      {
        goto LABEL_22;
      }

      v13 = v24;
      v25 = *(this + 2);
      if (!v25 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v38), (*(*v25 + 24))(v25, &v38, 0), (v15 = v39) == 0))
      {
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_22:
        *(this + 393) = 0;
        return;
      }

LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_21;
    }

    if (!v23)
    {
      return;
    }

    v26 = std::__shared_weak_count::lock(v23);
    if (!v26)
    {
      return;
    }

    v18 = v26;
    v27 = *(this + 2);
    if (!v27)
    {
      goto LABEL_28;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v36);
    (*(*v27 + 32))(v27, &v36, 0);
    v20 = v37;
    if (!v37)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v48, "ibi.session");
  v44[0] = 0;
  v47 = 0;
  v7 = ims::debug(v6, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Held session handover complete. Media stopped, but not reporting it to state machine. Session ID : ", 99);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  *(this + 397) = 0;
}

void sub_1E4ED2A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

void IBISession::handleTerminateMediaSessionResponse(IBISession *this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 8), 74569);
  if (a2 || *(this + 89) != a3)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v30, "ibi.session");
    v20[0] = 0;
    v23 = 0;
    v14 = ims::error(v13, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Failed to terminate media session : ", 36);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), a2);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    RTPManager::logRTPError(*(this + 5), 5);
    v15 = *(this + 3);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v10 = v16;
        v17 = *(this + 2);
        if (!v17)
        {
          goto LABEL_23;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v18);
        (*(*v17 + 8))(v17, &v18, 9);
        v12 = v19;
        if (!v19)
        {
          goto LABEL_23;
        }

LABEL_22:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v30, "ibi.session");
    v26[0] = 0;
    v29 = 0;
    v7 = ims::debug(v6, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Media session terminated successfully, session id : ", 52);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), a3);
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

    v8 = *(this + 3);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(this + 2);
        if (!v11)
        {
          goto LABEL_23;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v24);
        (*(*v11 + 8))(v11, &v24, 0);
        v12 = v25;
        if (!v25)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }
  }

  IBIRTPStackController::removeSession(*(this + 115), *(this + 89));
  IBISession::cleanup(this, 0);
}

void sub_1E4ED2DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  _Unwind_Resume(a1);
}

void IBISession::cleanup(IBISession *this, int a2)
{
  if (*(this + 398) == 1)
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.session");
    v24[0] = 0;
    v27 = 0;
    v3 = ims::debug(v2, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Session already cleaned up.", 27);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    return;
  }

  *(this + 398) = 1;
  v6 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.session");
  v20[0] = 0;
  v23 = 0;
  v7 = ims::debug(v6, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Cancelling all timers and clearing dtmf queue.", 46);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a2)
  {
LABEL_12:
    (*(*this + 24))(this, 0);
  }

LABEL_13:
  MediaSessionDriver::cancelAllTimers((this + 8));
  std::__list_imp<unsigned long long>::clear(this + 46);
  if (!IBISession::_count)
  {
    goto LABEL_21;
  }

  --IBISession::_count;
  v8 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.session");
  v16[0] = 0;
  v19 = 0;
  v9 = ims::debug(v8, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Session cleaned up. Number of sessions = ", 41);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), IBISession::_count);
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

  if (!IBISession::_count)
  {
LABEL_21:
    if ((IBISession::_activeAudio & 1) != 0 || (*(this + 396) & 1) == 0)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.session");
      v12[0] = 0;
      v15 = 0;
      v11 = ims::debug(v10, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Send CallEnd event to Audio device", 34);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v15 == 1 && v14 < 0)
      {
        operator delete(v13);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      IBIRTPStackController::sendAudioCallEvent(*(this + 115), 1);
    }
  }
}

void sub_1E4ED31C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 33) < 0)
  {
    operator delete(*(v39 - 56));
  }

  _Unwind_Resume(exception_object);
}

void IBISession::handleStartDTMFCodeResponse(IBISession *this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 8), 74570);
  if (a2 || *(this + 89) != a3)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v24, "ibi.session");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::error(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Failed to start DTMF digit send : ", 34);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), a2);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    RTPManager::logRTPError(*(this + 5), 15);
    std::__list_imp<unsigned long long>::clear(this + 46);
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v24, "ibi.session");
    v20[0] = 0;
    v23 = 0;
    v7 = ims::debug(v6, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Started sending DTMF digit, session id : ", 41);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), a3);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    RTPSharedPointerBase::getShared<IBISession>(&v24, this);
    v9 = v24;
    v8 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = dispatch_time(0, 1000000 * *(this + 345));
    v11 = *(this + 7);
    if (v11)
    {
      dispatch_retain(*(this + 7));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN10IBISession27handleStartDTMFCodeResponseEjj_block_invoke;
    block[3] = &__block_descriptor_tmp_90;
    block[4] = this;
    block[5] = v9;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_after(v10, v11, block);
    if (v11)
    {
      dispatch_release(v11);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_1E4ED3520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a35 == 1 && a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10IBISession27handleStartDTMFCodeResponseEjj_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ibi.session");
        v25[0] = 0;
        v28 = 0;
        v6 = ims::debug(__p, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "stopDTMFDigit", 13);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0;
        IBISessionHelper::sendStopDTMFDigitRequest(*(v3 + 904), &v10);
        if ((*(**(&v10 + 1) + 24))(*(&v10 + 1), v11))
        {
          v7 = std::string::basic_string[abi:ne200100]<0>(&v21, "ibi.session");
          LOBYTE(__p[0]) = 0;
          v20 = 0;
          v8 = ims::error(v7, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Failed to send digit", 20);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          if (v20 == 1 && SHIBYTE(v19) < 0)
          {
            operator delete(v17);
          }

          if (v23 < 0)
          {
            operator delete(v21);
          }

          std::__list_imp<unsigned long long>::clear((v3 + 368));
        }

        else
        {
          RTPSharedPointerBase::getShared<IBISession>(v24, v3);
          if (v24[0])
          {
            v9 = v24[0] + 8;
          }

          else
          {
            v9 = 0;
          }

          v21 = v9;
          v22 = v24[1];
          __p[0] = MEMORY[0x1E69E9820];
          __p[1] = 0x40000000;
          v17 = ___ZN10IBISession13stopDTMFDigitEv_block_invoke;
          v18 = &__block_descriptor_tmp_73;
          v19 = v3;
          MediaSessionDriver::startTimerForRequest((v3 + 8), 74571, &v21, __p);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        ImsResult::~ImsResult(&v10);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4ED380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  v32 = *(v30 - 120);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10IBISessionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10IBISessionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IBISession::handleStopDTMFCodeResponse(IBISession *this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 8), 74571);
  if (a2 || *(this + 89) != a3)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v24, "ibi.session");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::error(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Failed to stop DTMF digit : ", 28);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), a2);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    RTPManager::logRTPError(*(this + 5), 16);
    std::__list_imp<unsigned long long>::clear(this + 46);
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v24, "ibi.session");
    v20[0] = 0;
    v23 = 0;
    v7 = ims::debug(v6, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Stopped sending DTMF digit, session id : ", 41);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), a3);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    RTPSharedPointerBase::getShared<IBISession>(&v24, this);
    v9 = v24;
    v8 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = dispatch_time(0, 1000000 * *(this + 87));
    v11 = *(this + 7);
    if (v11)
    {
      dispatch_retain(*(this + 7));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN10IBISession26handleStopDTMFCodeResponseEjj_block_invoke;
    block[3] = &__block_descriptor_tmp_95;
    block[4] = this;
    block[5] = v9;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_after(v10, v11, block);
    if (v11)
    {
      dispatch_release(v11);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_1E4ED3BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a35 == 1 && a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10IBISession26handleStopDTMFCodeResponseEjj_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        *(v3 + 361) = 0;
        IBISession::startDTMFDigit(v6, v3);
        ImsResult::~ImsResult(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void IBISession::handleCreateAudioMediaSessionResponse(IBISession *this, uint64_t a2, uint64_t a3)
{
  MediaSessionDriver::cancelTimerForRequest((this + 8), 74565);
  if (!a2)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v51, "ibi.session");
    v47[0] = 0;
    v50 = 0;
    v14 = ims::debug(v13, v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Created media session successfully, session id : ", 49);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), a3);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v50 == 1 && v49 < 0)
    {
      operator delete(v48);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    *(this + 89) = a3;
    if ((IBISession::_activeAudio & 1) == 0)
    {
      v15 = std::string::basic_string[abi:ne200100]<0>(v51, "ibi.session");
      v43[0] = 0;
      v46 = 0;
      v16 = ims::debug(v15, v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Send event to Audio device", 26);
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      if (*(this + 396) == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 3;
      }

      IBIRTPStackController::sendAudioCallEvent(*(this + 115), v17);
    }

    v18 = *(this + 115);
    RTPSharedPointerBase::getShared<IBISession>(&v41, this);
    IBIRTPStackController::addSession(v18, a3, &v41);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (*(this + 448))
    {
      v19 = std::string::basic_string[abi:ne200100]<0>(v51, "ibi.session");
      v37[0] = 0;
      v40 = 0;
      v20 = ims::debug(v19, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "We have both local and remote SDP, send MediaConfigured", 55);
      *(v20 + 17) = 0;
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      v21 = *(this + 3);
      if (!v21)
      {
        return;
      }

      v22 = std::__shared_weak_count::lock(v21);
      if (!v22)
      {
        return;
      }

      v10 = v22;
      v23 = *(this + 2);
      if (!v23)
      {
        goto LABEL_45;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v35);
      (*(*v23 + 16))(v23, &v35, 0);
      v12 = v36;
      if (!v36)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v24 = *(this + 3);
      if (!v24)
      {
        return;
      }

      v25 = std::__shared_weak_count::lock(v24);
      if (!v25)
      {
        return;
      }

      v10 = v25;
      v26 = *(this + 2);
      if (!v26)
      {
        goto LABEL_45;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v33);
      (**v26)(v26, &v33, 0);
      v12 = v34;
      if (!v34)
      {
        goto LABEL_45;
      }
    }

LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    return;
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v51, "ibi.session");
  v29[0] = 0;
  v32 = 0;
  v7 = ims::error(v6, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Failed to create media session : ", 33);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  RTPManager::logRTPError(*(this + 5), 4);
  IBISession::cleanup(this, 0);
  v8 = *(this + 3);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 2);
      if (!v11)
      {
        goto LABEL_45;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v27);
      (**v11)(v11, &v27, 8);
      v12 = v28;
      if (!v28)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }
}

void sub_1E4ED4144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void IBISession::handleConfigureAudioMediaSessionResponse(RTPManager **this, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
  v91[0] = 0;
  v94 = 0;
  v7 = ims::debug(v6, v91);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleConfigureAudioMediaSessionResponse [_mediaSessionId=", 58);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *(this + 89));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " sessionId=", 11);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " result=", 8);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v94 == 1 && v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  MediaSessionDriver::cancelTimerForRequest((this + 1), 74566);
  if (a2 || *(this + 89) != a3)
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
    v45[0] = 0;
    v48 = 0;
    v18 = ims::error(v17, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Failed to configure media session : ", 36);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), a2);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v48 == 1 && v47 < 0)
    {
      operator delete(__p);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    RTPManager::logRTPError(this[5], 6);
    v19 = this[3];
    if (!v19)
    {
      return;
    }

    v20 = std::__shared_weak_count::lock(v19);
    if (!v20)
    {
      return;
    }

    v14 = v20;
    v21 = this[2];
    if (!v21)
    {
      goto LABEL_34;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v43);
    (*(*v21 + 16))(v21, &v43, 9);
    v16 = v44;
    if (!v44)
    {
      goto LABEL_34;
    }

LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_34:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    return;
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
  v87[0] = 0;
  v90 = 0;
  v9 = ims::debug(v8, v87);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Session id : ", 13);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), *(this + 89));
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v90 == 1 && v89 < 0)
  {
    operator delete(v88);
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  if (*(this + 392) != 1)
  {
    v22 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
    v77[0] = 0;
    v80 = 0;
    v23 = ims::debug(v22, v77);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " Configured Media", 17);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v80 == 1 && v79 < 0)
    {
      operator delete(v78);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if (*(this + 26) == 4)
    {
      if (*(this + 395) == 1)
      {
        v24 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
        v73[0] = 0;
        v76 = 0;
        v25 = ims::debug(v24, v73);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " for Local hold, now de-activate media", 38);
        *(v25 + 17) = 0;
        (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v25 + 17) = 0;
        if (v76 == 1 && v75 < 0)
        {
          operator delete(v74);
        }

        if (v96 < 0)
        {
          operator delete(v95[0]);
        }

        (*(*this + 5))(this, 0);
      }

      v26 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
      v69[0] = 0;
      v72 = 0;
      v27 = ims::debug(v26, v69);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Inform delegate", 15);
      *(v27 + 17) = 0;
      (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v27 + 17) = 0;
      if (v72 == 1 && v71 < 0)
      {
        operator delete(v70);
      }

      if (v96 < 0)
      {
        operator delete(v95[0]);
      }

      v28 = this[3];
      if (!v28)
      {
        return;
      }

      v29 = std::__shared_weak_count::lock(v28);
      if (!v29)
      {
        return;
      }

      v14 = v29;
      v30 = this[2];
      if (!v30)
      {
        goto LABEL_34;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v67);
      (*(*v30 + 16))(v30, &v67, 0);
      v16 = v68;
      if (!v68)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (*(this + 393) == 1)
    {
      v31 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
      v63[0] = 0;
      v66 = 0;
      v32 = ims::debug(v31, v63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " for remote hold, ", 18);
      *(v32 + 17) = 0;
      if (v66 != 1 || (v65 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      v33 = v64;
    }

    else
    {
      v34 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
      v59[0] = 0;
      v62 = 0;
      v35 = ims::debug(v34, v59);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), " for call resume, ", 18);
      *(v35 + 17) = 0;
      if (v62 != 1 || (v61 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      v33 = v60;
    }

    operator delete(v33);
LABEL_67:
    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if ((*(this + 395) & 1) == 0)
    {
      v41 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
      v55[0] = 0;
      v58 = 0;
      v42 = ims::debug(v41, v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "now activate media", 18);
      *(v42 + 17) = 0;
      (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v42 + 17) = 0;
      if (v58 == 1 && v57 < 0)
      {
        operator delete(v56);
      }

      if (v96 < 0)
      {
        operator delete(v95[0]);
      }

      (*(*this + 4))(this, 0);
      return;
    }

    v36 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
    v51[0] = 0;
    v54 = 0;
    v37 = ims::debug(v36, v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "media is already active", 23);
    *(v37 + 17) = 0;
    (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v37 + 17) = 0;
    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    v38 = this[3];
    if (!v38)
    {
      return;
    }

    v39 = std::__shared_weak_count::lock(v38);
    if (!v39)
    {
      return;
    }

    v14 = v39;
    v40 = this[2];
    if (!v40)
    {
      goto LABEL_34;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v49);
    (*(*v40 + 24))(v40, &v49, 0);
    v16 = v50;
    if (!v50)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  *(this + 392) = 0;
  v10 = std::string::basic_string[abi:ne200100]<0>(v95, "ibi.session");
  v83[0] = 0;
  v86 = 0;
  v11 = ims::debug(v10, v83);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " Configured media session successfully, inform delegate", 55);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v86 == 1 && v85 < 0)
  {
    operator delete(v84);
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  v12 = this[3];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = this[2];
      if (!v15)
      {
        goto LABEL_34;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v81);
      (*(*v15 + 16))(v15, &v81, 0);
      v16 = v82;
      if (!v82)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }
}

void sub_1E4ED4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void IBISession::handleRequestTimeout(uint64_t a1, int a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v45, "ibi.session");
  v41[0] = 0;
  v44 = 0;
  v5 = ims::error(v4, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Request (", 9);
  *(v5 + 17) = 0;
  v6 = a2 - 74565;
  if ((a2 - 74565) > 6)
  {
    v7 = "Error";
    v8 = 5;
  }

  else
  {
    v7 = off_1E876A8A0[v6];
    v8 = qword_1E51726C0[v6];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v7, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ") timed out waiting for response from BB", 40);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  IBISession::cleanup(a1, 0);
  if ((a2 - 74566) > 5)
  {
    if (a2 != 74565)
    {
      return;
    }

    v18 = *(a1 + 920);
    v19 = *(v18 + 152);
    *(v18 + 144) = 0;
    *(v18 + 152) = 0;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    goto LABEL_11;
  }

  if (((1 << (a2 - 70)) & 0x33) != 0)
  {
LABEL_11:
    v9 = std::string::basic_string[abi:ne200100]<0>(v45, "ibi.session");
    v37[0] = 0;
    v40 = 0;
    v10 = ims::error(v9, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Treat it as catastrophic error and end session.", 47);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v40 == 1 && v39 < 0)
    {
      operator delete(__p);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    RTPManager::logRTPError(*(a1 + 40), 23);
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 16);
        if (!v14)
        {
          goto LABEL_21;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v35);
        (*(*v14 + 40))(v14, &v35, 9);
        v15 = v36;
        if (!v36)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    return;
  }

  if (a2 == 74568)
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(v45, "ibi.session");
    v31[0] = 0;
    v34 = 0;
    v17 = ims::debug(v16, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Call terminate to clean out baseband session.", 45);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    (*(*a1 + 24))(a1, 0);
  }

  else
  {
    v20 = std::string::basic_string[abi:ne200100]<0>(v45, "ibi.session");
    v27[0] = 0;
    v30 = 0;
    v21 = ims::debug(v20, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Terminate session and ignore the timeout.", 41);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    IBIRTPStackController::removeSession(*(a1 + 920), *(a1 + 356));
    IBISession::cleanup(a1, 0);
    v22 = *(a1 + 24);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      if (v23)
      {
        v13 = v23;
        v24 = *(a1 + 16);
        if (!v24)
        {
          goto LABEL_21;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v25);
        (*(*v24 + 8))(v24, &v25, 9);
        v15 = v26;
        if (!v26)
        {
          goto LABEL_21;
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }
}

void sub_1E4ED5258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  _Unwind_Resume(a1);
}

_BYTE *IBISession::toTimerIdString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 <= 74567)
  {
    switch(a1)
    {
      case 74565:
        v3 = "SESSION_INITIALIZE";
        goto LABEL_17;
      case 74566:
        v3 = "SESSION_CONFIGURE";
        goto LABEL_17;
      case 74567:
        v3 = "SESSION_START";
        goto LABEL_17;
    }

LABEL_13:
    ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
  }

  if (a1 > 74569)
  {
    if (a1 == 74570)
    {
      v3 = "SESSION_START_DTMF";
      goto LABEL_17;
    }

    if (a1 == 74571)
    {
      v3 = "SESSION_STOP_DTMF";
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a1 == 74568)
  {
    v3 = "SESSION_STOP";
  }

  else
  {
    v3 = "SESSION_UNINITIALIZE";
  }

LABEL_17:

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void non-virtual thunk toIBISession::loggableName(LoggableString *a1@<X8>)
{
  LoggableString::LoggableString(a1, "IBISession");
}

{
  LoggableString::LoggableString(a1, "IBISession");
}

void IBIMediaSessionConfig_s::IBIMediaSessionConfig_s(IBIMediaSessionConfig_s *this)
{
  std::vector<unsigned char>::vector[abi:ne200100](this + 2, 16);
  std::vector<unsigned char>::vector[abi:ne200100](this + 6, 16);
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  operator new();
}

void sub_1E4ED5678(_Unwind_Exception *exception_object)
{
  v3 = v1[57];
  if (v3)
  {
    v1[58] = v3;
    operator delete(v3);
  }

  v4 = v1[53];
  if (v4)
  {
    v1[54] = v4;
    operator delete(v4);
  }

  v5 = v1[49];
  if (v5)
  {
    v1[50] = v5;
    operator delete(v5);
  }

  v6 = v1[6];
  if (v6)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIImsMEAudioCodec>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IBIImsMEAudioCodec>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IBIImsMEAudioCodec>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<IBIImsMEAudioEVSCodec>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IBIImsMEAudioEVSCodec>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IBIImsMEAudioEVSCodec>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void RTPSharedPointerBase::getShared<IBISession>(void **p_lpsrc, void *a2)
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

void std::__shared_ptr_emplace<IBISessionHelper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED8530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipPCalledPartyIdHeader::~SipPCalledPartyIdHeader(SipPCalledPartyIdHeader *this)
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

void SipAcceptContactValue::SipAcceptContactValue(SipAcceptContactValue *this, int a2, const SipParameterMap *a3)
{
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *this = &unk_1F5EBEF50;
  *(this + 3) = 0;
  *(this + 16) = 256;
  v5 = 0;
  v6 = 0;
  BambiServices::addServiceParameters(a2, this, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  SipParameterMap::addParameters(this, a3);
}

void sub_1E4ED5BF8(_Unwind_Exception *a1)
{
  *v1 = v2;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *(v1 + 16));
  _Unwind_Resume(a1);
}

void SipVectorHeader<SipAcceptContactValue *>::addItem(void *a1, void *a2)
{
  v5 = a1[9];
  v4 = a1[10];
  if (v5 >= v4)
  {
    v7 = a1[8];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<SipAcceptContactValue *>::__throw_length_error[abi:ne200100]();
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

void SipAcceptContactHeader::~SipAcceptContactHeader(SipAcceptContactHeader *this)
{
  SipPointerVectorHeader<SipAcceptContactValue>::~SipPointerVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipVectorHeader<SipAcceptContactValue *>::encodeValue(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (a1[9] != v4)
  {
    v12 = v2;
    v13 = v3;
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = *(a2 + 8);
        v11 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v11, 1);
        *(a2 + 17) = 0;
        v4 = a1[8];
      }

      (*(*a1 + 112))(a1, v4 + v7, a2);
      ++v8;
      v4 = a1[8];
      v7 += 8;
    }

    while (v8 < (a1[9] - v4) >> 3);
  }

  return 1;
}

BOOL SipVectorHeader<SipAcceptContactValue *>::setValueFromString(void *a1, uint64_t a2)
{
  v4 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  while (1)
  {
    v4 = (*(*a1 + 128))(a1, a2, v4, __p, 44);
    if (v4 == -1)
    {
      break;
    }

    v6 = 0;
    if (((*(*a1 + 120))(a1, __p, &v6) & 1) == 0)
    {
      break;
    }

    SipVectorHeader<SipAcceptContactValue *>::addItem(a1, &v6);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 == -1;
}

void sub_1E4ED6238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipPointerVectorHeader<SipAcceptContactValue>::mergeHeader(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (v3 && v3[9] != v3[8])
  {
    operator new();
  }

  return v3 != 0;
}

ImsOutStream *SipPointerVectorHeader<SipAcceptContactValue>::itemToStream(uint64_t a1, SipParameterMap **a2, uint64_t a3)
{
  v4 = *a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a3 + 8), "*", 1);
  *(a3 + 17) = 0;

  return SipParameterMap::toStream(v4, a3, 0, 0, 0, 0);
}

BOOL SipVectorHeader<SipAcceptContactValue *>::mergeHeader(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    v7 = v4[9];
    while (v6 != v7)
    {
      SipVectorHeader<SipAcceptContactValue *>::addItem(a1, v6++);
    }
  }

  return v5 != 0;
}

void SipVectorHeader<SipAcceptContactValue *>::~SipVectorHeader(SipHeader *this)
{
  *this = &unk_1F5ED8788;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void SipPointerVectorHeader<SipAcceptContactValue>::~SipPointerVectorHeader(SipHeader *this)
{
  *this = &unk_1F5ED86F0;
  v4 = this + 64;
  v2 = *(this + 8);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        *v6 = &unk_1F5EBEF50;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v6 + 8, *(v6 + 16));
        MEMORY[0x1E69235B0](v6, 0x10A0C40297E69CFLL);
        v2 = *(this + 8);
        v3 = *(this + 9);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *this = &unk_1F5ED8788;
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void ImsTlsSocket::ImsTlsSocket(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  ImsTcpSocket::ImsTcpSocket(a1);
}

void sub_1E4ED682C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsTlsSocket::~ImsTlsSocket(ImsTlsSocket *this)
{
  *this = &unk_1F5ED8820;
  *(this + 13) = &unk_1F5ED8990;
  *(this + 25) = &unk_1F5ED8A78;
  ImsTlsSocket::close(this);
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  ImsTcpSocket::~ImsTcpSocket(this);
}

{
  ImsTlsSocket::~ImsTlsSocket(this);
}

uint64_t ImsTlsSocket::close(ImsTlsSocket *this)
{
  *(this + 27) = *(this + 26);
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 88))(v2);
    v3 = *(this + 30);
    *(this + 29) = 0;
    *(this + 30) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return ImsTcpSocket::close(this);
}

void non-virtual thunk toImsTlsSocket::~ImsTlsSocket(ImsTlsSocket *this)
{
  ImsTlsSocket::~ImsTlsSocket((this - 104));
}

{
  ImsTlsSocket::~ImsTlsSocket((this - 200));
}

{
  ImsTlsSocket::~ImsTlsSocket((this - 104));
}

{
  ImsTlsSocket::~ImsTlsSocket((this - 200));
}

void ImsTlsSocket::_handleDataAvailable(ImsTlsSocket *this)
{
  memset(&v92, 0, sizeof(v92));
  v2 = ImsTcpSocket::readFromSocket(**(this + 8), &v92);
  v3 = *(this + 22);
  if (v3 && (v4 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v47 = v4;
    v5 = *(this + 21);
  }

  else
  {
    v5 = 0;
    v47 = 0;
  }

  size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v92.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v88[0] = 0;
    v91 = 0;
    v7 = ims::spam(__p, v88);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ImsTlsSocket : _handleDataAvailable: read ", 42);
    *(v7 + 17) = 0;
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v92.__r_.__value_.__l.__size_;
    }

    MEMORY[0x1E6923370](*(v7 + 8), v8);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "bytes", 5);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v91 == 1 && v90 < 0)
    {
      operator delete(v89);
    }

    v45 = v2;
    v46 = v5;
    if (SBYTE7(v87[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v92;
    }

    else
    {
      v9 = v92.__r_.__value_.__r.__words[0];
    }

    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = v92.__r_.__value_.__l.__size_;
    }

    if (v10)
    {
      v11 = *(this + 27);
      do
      {
        v12 = v9->__r_.__value_.__s.__data_[0];
        v13 = *(this + 28);
        if (v11 >= v13)
        {
          v14 = *(this + 26);
          v15 = (v11 - v14);
          v16 = v11 - v14 + 1;
          if (v16 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v13 - v14;
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            operator new();
          }

          v19 = v11 - v14;
          *v15 = v12;
          v11 = v15 + 1;
          memcpy(0, v14, v19);
          *(this + 26) = 0;
          *(this + 27) = v15 + 1;
          *(this + 28) = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v11++ = v12;
        }

        *(this + 27) = v11;
        v9 = (v9 + 1);
        --v10;
      }

      while (v10);
    }

    v20 = ImsTlsSocket::_handshakeDone(this, __p);
    v5 = v46;
    v2 = v45;
    v21 = (*(*__p[1] + 24))(__p[1], LODWORD(v87[0]), v20);
    ImsResult::~ImsResult(__p);
    if (v21)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "net");
      v82[0] = 0;
      v85 = 0;
      v22 = ims::debug(__p, v82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Waiting on SSL handshake", 24);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      v23 = v47;
      if (v85 == 1 && v84 < 0)
      {
        operator delete(v83);
      }

      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_125;
    }

    while (*(this + 26) != *(this + 27))
    {
      __p[1] = 0;
      __p[0] = 0;
      *&v87[0] = 0;
      v24 = (*(**(this + 29) + 128))(*(this + 29), __p);
      v25 = v24;
      if (v24 != -9805 && v24 != 0 && v24 != -9803)
      {
        std::string::basic_string[abi:ne200100]<0>(v80, "net");
        v64[0] = 0;
        v67 = 0;
        v33 = ims::error(v80, v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "ImsTlsSocket: Failed to read App data from transport. Error: ", 61);
        *(v33 + 17) = 0;
        MEMORY[0x1E6923340](*(v33 + 8), v25);
        *(v33 + 17) = 0;
        (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v33 + 17) = 0;
        if (v67 == 1 && v66 < 0)
        {
          operator delete(v65);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        v34 = 0;
        goto LABEL_90;
      }

      v28 = BYTE7(v87[0]);
      if (SBYTE7(v87[0]) < 0)
      {
        v28 = __p[1];
      }

      if (v28)
      {
        if (*(this + 96))
        {
          std::string::basic_string[abi:ne200100]<0>(v80, "net");
          v76[0] = 0;
          v79 = 0;
          v35 = ims::warn(v80, v76);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "ImsTlsSocket: kDebugDropIncoming set.  Dropping incoming packet.", 64);
          *(v35 + 17) = 0;
          (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v35 + 17) = 0;
          if (v79 == 1 && v78 < 0)
          {
            v36 = v77;
            goto LABEL_86;
          }

LABEL_87:
          if (v81 < 0)
          {
            operator delete(v80[0]);
          }

          goto LABEL_89;
        }

        if (!v46)
        {
          std::string::basic_string[abi:ne200100]<0>(v80, "net");
          v68[0] = 0;
          v71 = 0;
          v37 = ims::debug(v80, v68);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "ImsTlsSocket: No delegate to handle incoming packet from ", 57);
          *(v37 + 17) = 0;
          v38 = *(this + 14);
          if (v38)
          {
            (*(*v38 + 40))(v38, v37);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), ". Discarding packet", 19);
          *(v37 + 17) = 0;
          (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v37 + 17) = 0;
          if (v71 == 1 && v70 < 0)
          {
            v36 = v69;
LABEL_86:
            operator delete(v36);
          }

          goto LABEL_87;
        }

        std::string::basic_string[abi:ne200100]<0>(v80, "net");
        v72[0] = 0;
        v75 = 0;
        v29 = ims::spam(v80, v72);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "ImsTlsSocket : process data, len = ", 35);
        *(v29 + 17) = 0;
        if ((SBYTE7(v87[0]) & 0x80u) == 0)
        {
          v30 = BYTE7(v87[0]);
        }

        else
        {
          v30 = __p[1];
        }

        MEMORY[0x1E6923370](*(v29 + 8), v30);
        *(v29 + 17) = 0;
        (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v29 + 17) = 0;
        if (v75 == 1 && v74 < 0)
        {
          operator delete(v73);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if ((SBYTE7(v87[0]) & 0x80u) == 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        if ((SBYTE7(v87[0]) & 0x80u) == 0)
        {
          v32 = BYTE7(v87[0]);
        }

        else
        {
          v32 = __p[1];
        }

        (*(*v46 + 48))(v46, v31, v32, this + 112);
      }

LABEL_89:
      v34 = 1;
LABEL_90:
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p[0]);
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      else if ((v34 & 1) == 0)
      {
        break;
      }
    }
  }

  v23 = v47;
  if (!v2)
  {
    goto LABEL_125;
  }

  if (v2 != -1)
  {
    memset(v87, 0, 72);
    *__p = 0u;
    v40 = *__error();
    memset(v87 + 8, 0, 64);
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_posixDomain;
    LODWORD(v87[0]) = v40;
    std::string::basic_string[abi:ne200100]<0>(v80, "net");
    v52[0] = 0;
    v55 = 0;
    v41 = ims::error(v80, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "ImsTlsSocket: handle error ", 27);
    *(v41 + 17) = 0;
    (*(__p[0] + 2))(__p, v41);
    (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v41 + 17) = 0;
    if (v55 == 1 && v54 < 0)
    {
      operator delete(v53);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
      if (v5)
      {
LABEL_108:
        v42 = *v5;
        if (LODWORD(v87[0]) == 54)
        {
          (*(v42 + 24))(v5);
        }

        else
        {
          (*(v42 + 40))(v5, __p);
        }

LABEL_124:
        ImsResult::~ImsResult(__p);
        goto LABEL_125;
      }
    }

    else if (v5)
    {
      goto LABEL_108;
    }

    std::string::basic_string[abi:ne200100]<0>(v80, "net");
    v48[0] = 0;
    v51 = 0;
    v44 = ims::debug(v80, v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "ImsTlsSocket: no delegate to handle error, closing myself", 57);
    *(v44 + 17) = 0;
    (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v44 + 17) = 0;
    if (v51 == 1 && v50 < 0)
    {
      operator delete(v49);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    ImsTlsSocket::close(this);
    goto LABEL_124;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "net");
  v60[0] = 0;
  v63 = 0;
  v39 = ims::warn(__p, v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "ImsTlsSocket: remote end closed connection", 42);
  *(v39 + 17) = 0;
  (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v39 + 17) = 0;
  if (v63 == 1 && v62 < 0)
  {
    operator delete(v61);
  }

  if (SBYTE7(v87[0]) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 160) = 1;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v56[0] = 0;
    v59 = 0;
    v43 = ims::debug(__p, v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "ImsTlsSocket: no delegate to handle, closing myself", 51);
    *(v43 + 17) = 0;
    (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v43 + 17) = 0;
    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (SBYTE7(v87[0]) < 0)
    {
      operator delete(__p[0]);
    }

    ImsTlsSocket::close(this);
  }

LABEL_125:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }
}

void sub_1E4ED75CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  ImsResult::~ImsResult(&STACK[0x230]);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v12 - 97) < 0)
  {
    operator delete(*(v12 - 120));
  }

  _Unwind_Resume(a1);
}

double ImsTlsSocket::_handshakeDone@<D0>(ImsTlsSocket *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(**(this + 29) + 104))(*(this + 29)))
  {
LABEL_2:
    v4 = std::string::basic_string[abi:ne200100]<0>(v25, "net");
    v13[0] = 0;
    v16 = 0;
    v5 = ims::debug(v4, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SSL/TLS handshake done", 22);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v6 = 0;
    goto LABEL_15;
  }

  if (!(*(**(this + 29) + 112))(*(this + 29)))
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v25, "net");
    v17[0] = 0;
    v20 = 0;
    v11 = ims::debug(v10, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Negotiated Cipher :", 19);
    *(v11 + 17) = 0;
    v12 = (*(**(this + 29) + 120))(*(this + 29));
    MEMORY[0x1E6923390](*(v11 + 8), v12);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    goto LABEL_2;
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(v25, "net");
  v21[0] = 0;
  v24 = 0;
  v8 = ims::debug(v7, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Continue SSL/TLS handshake", 26);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v6 = 0x40000000;
LABEL_15:
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

void sub_1E4ED7ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
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

void ImsTlsSocket::initializeSocket(ImsTlsSocket *this, ImsTcpSocketInterface::TcpTlsInitParams *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (*a2)
  {
    IpAddress::asString(__p);
  }

  if (*(a2 + 2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v5, "<--");
    v3 = *(a2 + 2);
    IpAddress::asString(&v4);
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, this + 1);
  std::dynamic_pointer_cast[abi:ne200100]<ImsSSLContextDelegate,ImsSocket>(&v5, &v4);
  std::allocate_shared[abi:ne200100]<ImsSSLContext,std::allocator<ImsSSLContext>,std::shared_ptr<ImsSSLContextDelegate>,std::string &,0>();
}

void sub_1E4ED7E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(exception_object);
}

char **std::dynamic_pointer_cast[abi:ne200100]<ImsSSLContextDelegate,ImsSocket>(char ***a1, char ***a2)
{
  result = *a2;
  {
    v6 = v4[1];
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void ImsTlsSocket::initializeSocket(void *a1@<X0>, ImsSocket *a2@<X1>, uint64_t *a3@<X2>, dispatch_queue_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, int a8)
{
  if (!a1[29])
  {
    memset(&v19, 0, sizeof(v19));
    if (*a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v18, "auto<--");
      v14 = *a3;
      IpAddress::asString(&__p);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, a1 + 1);
    std::dynamic_pointer_cast[abi:ne200100]<ImsSSLContextDelegate,ImsSocket>(&v18, &__p);
    std::allocate_shared[abi:ne200100]<ImsSSLContext,std::allocator<ImsSSLContext>,std::shared_ptr<ImsSSLContextDelegate>,std::string &,0>();
  }

  v13 = *(a6 + 8);
  v16[0] = &unk_1F5EF3658;
  v16[1] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v16[0] = &unk_1F5EBE6A8;
  ImsTcpSocket::initializeSocket(a1, a2, a3, a4, a5, a7, a8);
  ims::CFType::~CFType(v16);
}

void sub_1E4ED8378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 97) < 0)
  {
    operator delete(*(v40 - 120));
  }

  _Unwind_Resume(exception_object);
}

double ImsTlsSocket::_writeToSocket@<D0>(ImsTlsSocket *this@<X0>, const unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  if ((*(**(this + 29) + 144))(*(this + 29), a2, &v20))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "net");
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12[0] = &unk_1F5EBDEF8;
    v12[1] = &_bambiDomain;
    v13 = 0x40000000;
    v6 = ImsResult::operator<<<char [30]>(v12, "ImsTlsSocket: Could not send ");
    v7 = ImsResult::operator<<<unsigned long>(v6, &v20);
    v8 = ImsResult::operator<<<char [11]>(v7, " bytes to ");
    v9 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v8, this + 14);
    v10 = ims::result::log(v18, v9);
    ImsResult::ImsResult(a4, v10);
    ImsResult::~ImsResult(v12);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    result = 0.0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_1E4ED85B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

double ImsTlsSocket::shutdown@<D0>(uint64_t a1@<X8>)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v10, "net");
  v6[0] = 0;
  v9 = 0;
  v4 = ims::debug(v3, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "ImsTlsSocket: Shutdown not supported on a tls socket", 52);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

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

void sub_1E4ED86E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void ImsTlsSocket::reset(ImsTlsSocket *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "net");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "ImsTlsSocket: Reset not supported on a tls socket", 49);
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

void sub_1E4ED87E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t ImsTlsSocket::readDataFromStream(ImsTlsSocket *this, void *a2, unint64_t *a3)
{
  if (*(this + 27) - *(this + 26) >= *a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = *(this + 27) - *(this + 26);
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(v29, "net");
  v25[0] = 0;
  v28 = 0;
  v8 = ims::debug(v7, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "readDataFromStream : expected: ", 31);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923370](*(v8 + 8), *a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", Available : ", 14);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923370](*(v8 + 8), v6);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v6)
  {
    memcpy(a2, *(this + 26), v6);
    v10 = *(this + 26);
    v9 = *(this + 27);
    v11 = v9 - (v10 + v6);
    if (v9 != v10 + v6)
    {
      memmove(*(this + 26), (v10 + v6), v9 - (v10 + v6));
    }

    *(this + 27) = v10 + v11;
  }

  if (*a3 == v6)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v29, "net");
    v21[0] = 0;
    v24 = 0;
    v13 = ims::spam(v12, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "ImsTlsSocket : readDataFromStream errSecSuccess", 47);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    return 0;
  }

  else
  {
    *a3 = v6;
    v15 = std::string::basic_string[abi:ne200100]<0>(v29, "net");
    v17[0] = 0;
    v20 = 0;
    v16 = ims::spam(v15, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "ImsTlsSocket : readDataFromStream errSSLWouldBlock ", 51);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    return 4294957493;
  }
}

void sub_1E4ED8AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsTlsSocket::writeDataToStream(ImsTlsSocket *this, const void *a2, unint64_t *a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "net");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "writeDataToStream : expected: ", 30);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923370](*(v7 + 8), *a3);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v8 = send(**(this + 8), a2, *a3, 0);
  v9 = std::string::basic_string[abi:ne200100]<0>(v26, "net");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v9, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "expected : ", 11);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923370](*(v10 + 8), *a3);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " Sent data : ", 13);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923360](*(v10 + 8), v8);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v8 < 1)
  {
    return 4294957496;
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(v26, "net");
  v14[0] = 0;
  v17 = 0;
  v12 = ims::debug(v11, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "writeDataToStream : success: ", 29);
  *(v12 + 17) = 0;
  MEMORY[0x1E6923370](*(v12 + 8), *a3);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  return 0;
}

void sub_1E4ED8E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 33) < 0)
  {
    operator delete(*(v38 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsTlsSocket::isConnected(ImsTlsSocket *this)
{
  if (*(this + 128) == 1)
  {
    return (*(**(this + 29) + 104))();
  }

  else
  {
    return 0;
  }
}

void sub_1E4ED8FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsSSLContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED8AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *ImsSSLContext::ImsSSLContext(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ImsSSLContextBase::ImsSSLContextBase(a1, &v6, a3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_1F5EC7910;
  a1[17] = &unk_1F5EC79B8;
  a1[26] = 0;
  return a1;
}

void sub_1E4ED911C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsSSLContextBase::ImsSSLContextBase(uint64_t a1, void *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "ImsSSL");
  v9[0] = 0;
  v12 = 0;
  ImsLogContainer::ImsLogContainer(a1, v13, v9);
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 144), "com.apple.ipTelephony", "ImsSSL");
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *a1 = &unk_1F5EC77B0;
  *(a1 + 136) = &unk_1F5EC7858;
  v6 = a2[1];
  *(a1 + 168) = *a2;
  *(a1 + 176) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 200) = *(a3 + 2);
    *(a1 + 184) = v7;
  }

  return a1;
}

void sub_1E4ED925C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 + 176);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(v24 + 160);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  MEMORY[0x1E69225A0](v24 + 144);
  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void SipConferenceInfoBody::SipConferenceInfoBody(SipConferenceInfoBody *this, const SipConferenceInfoBody *a2)
{
  v3 = SipXmlBody::SipXmlBody(this, a2);
  *v3 = &unk_1F5ED5BA0;
  SipConferenceInfo::SipConferenceInfo((v3 + 4), (a2 + 32));
}

void sub_1E4ED931C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5ED9B90;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_SipConferenceInfoBody_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&SipConferenceInfoBody::kContentType, "application/conference-info+xml");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &SipConferenceInfoBody::kContentType, &dword_1E4C3F000);
}

void SipAllowEventsHeader::~SipAllowEventsHeader(char **this)
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

BOOL MsrpTransportConfig::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[31];
  if (v2 >= 0)
  {
    v3 = a1[31];
  }

  else
  {
    v3 = *(a1 + 2);
  }

  v4 = a2[31];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 2);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 1);
  v6 = a1 + 8;
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void SipAcceptEncodingHeader::~SipAcceptEncodingHeader(char **this)
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

_BYTE *SDPConnection::networkTypeLookup(SDPConnection *this)
{
  {
    ctu::NeverDestroyed<std::array<std::string,2ul>>::NeverDestroyed<char const(&)[1],char const(&)[3]>(SDPConnection::networkTypeLookup(void)::lookup, &str_21, "IN");
  }

  return SDPConnection::networkTypeLookup(void)::lookup;
}

uint64_t *SDPConnection::addressTypeLookup(SDPConnection *this)
{
  {
    ctu::NeverDestroyed<std::array<std::string,3ul>>::NeverDestroyed<char const(&)[1],char const(&)[4],char const(&)[4]>(&SDPConnection::addressTypeLookup(void)::lookup, &str_21, "IP4", "IP6");
  }

  return &SDPConnection::addressTypeLookup(void)::lookup;
}

void SDPConnection::toStream(std::string *this, ImsOutStream *a2)
{
  v4 = *(a2 + 1);
  v6 = 99;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v6, 1);
  *(a2 + 17) = 0;
  v5 = *(a2 + 1);
  v7 = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  *(a2 + 17) = 0;
  SDPConnection::valueToStream(this, a2);
}

void SDPConnection::valueToStream(std::string *this, ImsOutStream *a2)
{
  v3 = this;
  memset(&v10, 0, sizeof(v10));
  if (SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, this[1].__r_.__value_.__l.__data_, this[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = this[1];
  }

  if (*(a2 + 18) == 1)
  {
    v4 = &IpAddress::kAnonymousIPv6;
    if (LODWORD(v3->__r_.__value_.__r.__words[2]) != 2)
    {
      v4 = &IpAddress::kAnonymousIPv4;
    }

    this = std::string::__assign_external(&v10, *v4);
  }

  SDPConnection::networkTypeLookup(this);
  LoggableString::LoggableString(&v9, &SDPConnection::networkTypeLookup(void)::lookup[24 * HIDWORD(v3->__r_.__value_.__r.__words[1])]);
  (*(*a2 + 40))(a2, &v9);
  v5 = *(a2 + 1);
  __p.__r_.__value_.__s.__data_[0] = 32;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &__p, 1);
  *(a2 + 17) = 0;
  SDPConnection::addressTypeLookup(v6);
  LoggableString::LoggableString(&__p, &SDPConnection::addressTypeLookup(void)::lookup[3 * LODWORD(v3->__r_.__value_.__r.__words[2])]);
  (*(*a2 + 40))(a2, &__p);
  v7 = *(a2 + 1);
  v11 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v11, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1E4ED9A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPConnection::valid(const std::string *this)
{
  if (this->__r_.__value_.__s.__data_[8] != 1 || !HIDWORD(this->__r_.__value_.__r.__words[1]) || !LODWORD(this->__r_.__value_.__r.__words[2]))
  {
    return 0;
  }

  if (this[2].__r_.__value_.__s.__data_[0])
  {
    goto LABEL_11;
  }

  v2 = &this[1];
  v3 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    if (this[1].__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_11;
    }

    v2 = v2->__words[0];
LABEL_10:
    if (LOWORD(v2->__words[0]) != 14906)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (IpAddress::isAddress(&this[1]))
  {
    return 1;
  }

  LODWORD(size) = this->__r_.__value_.__r.__words[2];
  if (size != 2)
  {
    goto LABEL_22;
  }

  size = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (size > 7)
    {
      goto LABEL_18;
    }

LABEL_22:
    v8 = 0;
LABEL_23:
    if (this[2].__r_.__value_.__s.__data_[1] == 1 && ((SHIBYTE(this[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || this[1].__r_.__value_.__l.__size_ <= 0xFF))
    {
      v4 = std::string::find(this + 1, 46, 0) != -1;
      if (!v8)
      {
        return v4;
      }

      LOBYTE(size) = *(&__p.__r_.__value_.__s + 23);
    }

    else
    {
      v4 = 0;
      if (!v8)
      {
        return v4;
      }
    }

    goto LABEL_30;
  }

  size = this[1].__r_.__value_.__l.__size_;
  if (size <= 7)
  {
    goto LABEL_22;
  }

LABEL_18:
  std::string::basic_string(&__p, this + 1, size - 8, 0xFFFFFFFFFFFFFFFFLL, &v10);
  LOBYTE(size) = *(&__p.__r_.__value_.__s + 23);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 8)
    {
      p_p = &__p;
      goto LABEL_34;
    }

LABEL_36:
    v8 = 1;
    goto LABEL_23;
  }

  if (__p.__r_.__value_.__l.__size_ != 8)
  {
    goto LABEL_36;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_34:
  v8 = 1;
  v4 = 1;
  if (p_p->__r_.__value_.__r.__words[0] != 0x64696C61766E692ELL)
  {
    goto LABEL_23;
  }

LABEL_30:
  if ((size & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t *SDPConnection::setAddressTypeFromString(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  for (i = &SDPConnection::addressTypeLookup(void)::lookup; ; i += 3)
  {
    result = SDPConnection::addressTypeLookup(result);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = *(i + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = i[1];
    }

    if (v7 == v8)
    {
      v10 = v6 >= 0 ? a2 : *a2;
      v11 = *i;
      v12 = v9 >= 0 ? i : *i;
      result = memcmp(v10, v12, v7);
      if (!result)
      {
        break;
      }
    }

    if (++v4 == 3)
    {
      return result;
    }
  }

  *(v3 + 4) = v4;
  return result;
}

void SDPConnection::~SDPConnection(void **this)
{
  *this = &unk_1F5ED8C78;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_1F5ED8C78;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x1E69235B0);
}

_BYTE *ctu::NeverDestroyed<std::array<std::string,2ul>>::NeverDestroyed<char const(&)[1],char const(&)[3]>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1E4ED9DC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *ctu::NeverDestroyed<std::array<std::string,3ul>>::NeverDestroyed<char const(&)[1],char const(&)[4],char const(&)[4]>(_BYTE *a1, char *a2, char *a3, char *a4)
{
  v7 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v7 + 24, a3);
  std::string::basic_string[abi:ne200100]<0>(a1 + 48, a4);
  return a1;
}

void sub_1E4ED9E3C(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void IMSClientRecord::IMSClientRecord(uint64_t a1, __int128 *a2, NSObject **a3)
{
  ims::getQueue(&object);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = object;
  *(a1 + 24) = object;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 40), "com.apple.ipTelephony", "default");
  if (v6)
  {
    dispatch_release(v6);
  }

  *a1 = &unk_1F5ED8CC0;
  v7 = *a3;
  *(a1 + 48) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v8;
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  operator new();
}

void sub_1E4EDA100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v13 = *(v11 + 48);
  if (v13)
  {
    dispatch_release(v13);
  }

  MEMORY[0x1E69225A0](v11 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a11);
  _Unwind_Resume(a1);
}

uint64_t IMSClientRecord::createLazuliWrapper(uint64_t this)
{
  if (!*(this + 96))
  {
    operator new();
  }

  return this;
}

void sub_1E4EDA288(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void IMSClientRecord::~IMSClientRecord(IMSClientRecord *this)
{
  *this = &unk_1F5ED8CC0;
  std::string::basic_string[abi:ne200100]<0>(v12, "cli.dtor");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Destroy record for ", 19);
  *(v2 + 17) = 0;
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 7), *(this + 8));
  }

  else
  {
    __p = *(this + 56);
  }

  (*(*v2 + 32))(v2, &__p);
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v3 = *(this + 10);
  if (v3)
  {
    IMSWrapperDelegate::~IMSWrapperDelegate(v3);
    MEMORY[0x1E69235B0]();
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 8));
    *v4 = v4 + 8;
    *(v4 + 16) = 0;
    *(v4 + 8) = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 32));
    *(v4 + 24) = v4 + 32;
    *(v4 + 40) = 0;
    *(v4 + 32) = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 56));
    *(v4 + 48) = v4 + 56;
    *(v4 + 64) = 0;
    *(v4 + 56) = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 80));
    *(v4 + 72) = v4 + 80;
    *(v4 + 88) = 0;
    *(v4 + 80) = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 104));
    *(v4 + 96) = v4 + 104;
    *(v4 + 112) = 0;
    *(v4 + 104) = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 80));
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 56));
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 32));
    std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v4 + 8));
    MEMORY[0x1E69235B0](v4, 0x1020C40D858BDA1);
  }

  v5 = *(this + 13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v6 = *(this + 6);
  if (v6)
  {
    dispatch_release(v6);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  IMSClientRecord::~IMSClientRecord(this);

  JUMPOUT(0x1E69235B0);
}

void IMSClientRecord::updateQueue(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

void IMSClientManager::IMSClientManager(IMSClientManager *this)
{
  v1 = ims::SharedLoggable<IMSClientManager>::SharedLoggable(this);
  *v1 = &unk_1F5ED8CE8;
  v1[9] = 0;
  v1[10] = 0;
  v1[8] = 0;
  v1[7] = v1 + 8;
}

{
  v1 = ims::SharedLoggable<IMSClientManager>::SharedLoggable(this);
  *v1 = &unk_1F5ED8CE8;
  v1[9] = 0;
  v1[10] = 0;
  v1[8] = 0;
  v1[7] = v1 + 8;
}

void *ims::SharedLoggable<IMSClientManager>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<IMSClientManager,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5ED93A0;
  return a1;
}

void sub_1E4EDA670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void IMSClientManager::init(IMSClientManager *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "cli.ctor");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Adding record for emergency", 27);
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

  operator new();
}

void IMSClientManager::~IMSClientManager(IMSClientManager *this)
{
  *this = &unk_1F5ED8CE8;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "cli.dtor");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Removing ", 9);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923370](*(v3 + 8), *(this + 9));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " records", 8);
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

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 8));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = this + 64;
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 8));
  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  IMSClientManager::~IMSClientManager(this);

  JUMPOUT(0x1E69235B0);
}

void IMSClientManager::updateImsEmergencyClient(NSObject **a1)
{
  v8 = 0;
  ImsLock::set(&v8, &IMSClientManager::_mutex, __p);
  ImsResult::~ImsResult(__p);
  IMSClientManager::instance(&v6);
  v2 = v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  v11 = __p;
  v3 = *(std::__tree<std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p) + 56);
  v4 = *a1;
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    IMSClientRecord::updateQueue(v3, &v5);
    dispatch_release(v4);
  }

  else
  {
    IMSClientRecord::updateQueue(v3, &v5);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN3ims15EmergencyClientENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void IMSClientManager::createImsClient(void **a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v21 = 0;
  ImsLock::set(&v21, &IMSClientManager::_mutex, &v22);
  ImsResult::~ImsResult(&v22);
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
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

  ClientConfig::initFromConfig(&v22, &object);
  xpc_release(object);
  object = 0;
  IMSClientManager::instance(&v13);
  IMSClientManager::getClientForStack(v13, a1, &v25);
  v7 = v25.__r_.__value_.__r.__words[0];
  if (v25.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25.__r_.__value_.__l.__size_);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v7)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(&v25, "cli.create");
    v16[0] = 0;
    v19 = 0;
    v9 = ims::debug(v8, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Creating record for [", 21);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "], for ", 7);
    *(v9 + 17) = 0;
    ims::asString(DWORD1(v22), &v13);
    (*(*v9 + 32))(v9, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ", on slot ", 10);
    *(v9 + 17) = 0;
    if ((v22 - 1) > 2)
    {
      v10 = "0";
    }

    else
    {
      v10 = off_1E876A8D8[(v22 - 1)];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v10);
    (*(*v9 + 32))(v9, &__p);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v13);
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (SBYTE7(v24) < 0)
  {
    operator delete(v23);
  }

  ImsLock::~ImsLock(&v21);
}

void sub_1E4EDB348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, std::__shared_weak_count *a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49, xpc_object_t object, pthread_mutex_t *a51)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](v52 - 112);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  if (*(v52 - 169) < 0)
  {
    operator delete(*(v52 - 192));
  }

  ImsLock::~ImsLock(&a51);
  _Unwind_Resume(a1);
}

void IMSClientManager::getClientForStack(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE2BC5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC5F8))
  {
    _MergedGlobals_14 = *(a1 + 72);
    __cxa_guard_release(&qword_1EE2BC5F8);
  }

  if (_MergedGlobals_14 != *(a1 + 72))
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "cli.getrec");
    v13[0] = 0;
    v16 = 0;
    v6 = ims::debug(v17, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Client record count was ", 24);
    *(v6 + 17) = 0;
    MEMORY[0x1E69233B0](*(v6 + 8), _MergedGlobals_14);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " and is now ", 12);
    *(v6 + 17) = 0;
    MEMORY[0x1E6923370](*(v6 + 8), *(a1 + 72));
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    _MergedGlobals_14 = *(a1 + 72);
  }

  v9 = *(a1 + 64);
  v7 = a1 + 64;
  v8 = v9;
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v7;
  do
  {
    v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v8 + 32), a2);
    if ((v11 & 0x80u) == 0)
    {
      v10 = v8;
    }

    v8 = *(v8 + ((v11 >> 4) & 8));
  }

  while (v8);
  if (v10 == v7 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v10 + 32)) & 0x80) != 0)
  {
LABEL_18:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v12 = *(v10 + 64);
    *a3 = *(v10 + 56);
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_1E4EDB68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void ___ZN16IMSClientManager15createImsClientERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5queueEN3xpc4dictE_block_invoke()
{
  v2 = 0;
  v3 = 0;
  IPTelephonyManager::getBambiClient(&v2);
  if (v2)
  {
    BambiClient::createNewStack(v2, &v0);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4EDB72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c18_ZTS12ClientConfig(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v5;
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

  *(a1 + 96) = *(a2 + 96);
}

void sub_1E4EDB7D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c18_ZTS12ClientConfig(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void IMSClientManager::removeClient(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  ImsLock::set(&v20, &IMSClientManager::_mutex, &v21);
  ImsResult::~ImsResult(&v21);
  IMSClientManager::instance(&v21);
  v2 = (v21 + 64);
  v3 = *(v21 + 8);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (v21 + 64);
  do
  {
    v5 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a1);
    if ((v5 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v3 = *&v3[(v5 >> 4) & 8];
  }

  while (v3);
  if (v4 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v4 + 4) & 0x80) != 0)
  {
LABEL_8:
    v4 = v2;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  IMSClientManager::instance(&v21);
  v6 = (v21 + 64);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v6 != v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "cli.rm");
    v16[0] = 0;
    v19 = 0;
    v7 = ims::debug(&v21, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Removing record for ", 20);
    *(v7 + 17) = 0;
    (*(*v7 + 32))(v7, a1);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }

    IMSClientManager::instance(&v21);
    v8 = v21;
    v9 = v4[1];
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
      v11 = v4;
      do
      {
        v10 = v11[2];
        v12 = *v10 == v11;
        v11 = v10;
      }

      while (!v12);
    }

    if (*(v21 + 7) == v4)
    {
      *(v21 + 7) = v10;
    }

    v13 = *(v8 + 8);
    --*(v8 + 9);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v13, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v4 + 4));
    operator delete(v4);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *a1, *(a1 + 8));
    }

    else
    {
      v15 = *a1;
    }

    v24 = 0;
    operator new();
  }

  ImsLock::~ImsLock(&v20);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4EDBB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, pthread_mutex_t *a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  operator delete(v33);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ImsLock::~ImsLock(&a27);
  _Unwind_Resume(a1);
}

uint64_t IMSClientManager::callOnImsQueue(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  ims::getQueue(&queue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN16IMSClientManager14callOnImsQueueENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_42_2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a1);
  v2 = queue;
  dispatch_async(queue, block);
  if (v2)
  {
    dispatch_release(v2);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4EDBCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void IMSClientManager::updateCallDelegate(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v24, "ims.client");
  v20[0] = 0;
  v23 = 0;
  v9 = ims::debug(v8, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will update call delegate ", 26);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " for stack ", 11);
  *(v9 + 17) = 0;
  LoggableString::LoggableString(&__p, a1);
  (*(*v9 + 40))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16IMSClientManager18updateCallDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims17CallEventDelegateEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_24_1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v11;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v24;
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  IMSClientManager::callOnImsQueue(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EDC154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
    if (v42)
    {
      goto LABEL_9;
    }
  }

  else if (v42)
  {
LABEL_9:
    dispatch_release(v42);
    if (!v41)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_14:
    _Unwind_Resume(a1);
  }

  if (!v41)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void ___ZN16IMSClientManager18updateCallDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims17CallEventDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v28 = 0;
  ImsLock::set(&v28, &IMSClientManager::_mutex, &v29);
  ImsResult::~ImsResult(&v29);
  IMSClientManager::instance(&v16);
  IMSClientManager::getClientForStack(v16.__r_.__value_.__l.__data_, (a1 + 32), &v29);
  v2 = *&v29.__r_.__value_.__l.__data_;
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v28);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = **v3;
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
        v24[0] = 0;
        v27 = 0;
        v5 = ims::debug(&v29, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "holding ", 8);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, a1 + 72);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v6 = *(v2 + 88);
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v29 = *(a1 + 72);
        }

        v30 = v8;
        v31 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = (v6 + 32);
        v9 = *(v6 + 32);
        if (!v9)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v11 = v9;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, (v9 + 32)) & 0x80) == 0)
            {
              break;
            }

            v9 = *v11;
            v10 = v11;
            if (!*v11)
            {
              goto LABEL_25;
            }
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11 + 4, &v29.__r_.__value_.__l.__data_) & 0x80) == 0)
          {
            break;
          }

          v10 = v11 + 1;
          v9 = v11[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (!*v10)
        {
LABEL_25:
          operator new();
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v12 = *(v2 + 80);
      v13 = *(a1 + 96);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      v14 = *(a1 + 64);
      v21 = *(a1 + 56);
      v22 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSWrapperDelegate::addCallDelegate(v12, (a1 + 72), &object, &v21);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      IMSWrapperDelegate::removeCallDelegate(*(v2 + 80), (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
    v17[0] = 0;
    v20 = 0;
    v15 = ims::debug(&v29, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updated call delegate ", 22);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for stack ", 11);
    *(v15 + 17) = 0;
    LoggableString::LoggableString(&v16, (a1 + 32));
    (*(*v15 + 40))(v15, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " to ", 4);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), *(a1 + 56));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v2 + 1));
  }
}

void sub_1E4EDC710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, dispatch_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c51_ZTSNSt3__110shared_ptrIN3ims17CallEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDC8C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c51_ZTSNSt3__110shared_ptrIN3ims17CallEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void IMSClientManager::updateStackDelegate(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v24, "ims.client");
  v20[0] = 0;
  v23 = 0;
  v9 = ims::debug(v8, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will update stack delegate ", 27);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " for stack ", 11);
  *(v9 + 17) = 0;
  LoggableString::LoggableString(&__p, a1);
  (*(*v9 + 40))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16IMSClientManager19updateStackDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims18StackEventDelegateEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_27_0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v11;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v24;
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  IMSClientManager::callOnImsQueue(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EDCCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
    if (v42)
    {
      goto LABEL_9;
    }
  }

  else if (v42)
  {
LABEL_9:
    dispatch_release(v42);
    if (!v41)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_14:
    _Unwind_Resume(a1);
  }

  if (!v41)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void ___ZN16IMSClientManager19updateStackDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims18StackEventDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v28 = 0;
  ImsLock::set(&v28, &IMSClientManager::_mutex, &v29);
  ImsResult::~ImsResult(&v29);
  IMSClientManager::instance(&v16);
  IMSClientManager::getClientForStack(v16.__r_.__value_.__l.__data_, (a1 + 32), &v29);
  v2 = *&v29.__r_.__value_.__l.__data_;
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v28);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = **v3;
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
        v24[0] = 0;
        v27 = 0;
        v5 = ims::debug(&v29, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "holding ", 8);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, a1 + 72);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v6 = *(v2 + 88);
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v29 = *(a1 + 72);
        }

        v30 = v8;
        v31 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = (v6 + 8);
        v9 = *(v6 + 8);
        if (!v9)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v11 = v9;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, (v9 + 32)) & 0x80) == 0)
            {
              break;
            }

            v9 = *v11;
            v10 = v11;
            if (!*v11)
            {
              goto LABEL_25;
            }
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11 + 4, &v29.__r_.__value_.__l.__data_) & 0x80) == 0)
          {
            break;
          }

          v10 = v11 + 1;
          v9 = v11[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (!*v10)
        {
LABEL_25:
          operator new();
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v12 = *(v2 + 80);
      v13 = *(a1 + 96);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      v14 = *(a1 + 64);
      v21 = *(a1 + 56);
      v22 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSWrapperDelegate::addStackDelegate(v12, (a1 + 72), &object, &v21);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      IMSWrapperDelegate::removeStackDelegate(*(v2 + 80), (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
    v17[0] = 0;
    v20 = 0;
    v15 = ims::debug(&v29, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updated stack delegate ", 23);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for stack ", 11);
    *(v15 + 17) = 0;
    LoggableString::LoggableString(&v16, (a1 + 32));
    (*(*v15 + 40))(v15, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " to ", 4);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), *(a1 + 56));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v2 + 1));
  }
}

void sub_1E4EDD278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, dispatch_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c52_ZTSNSt3__110shared_ptrIN3ims18StackEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDD42C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c52_ZTSNSt3__110shared_ptrIN3ims18StackEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void IMSClientManager::updateManagerDelegate(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v24, "ims.client");
  v20[0] = 0;
  v23 = 0;
  v9 = ims::debug(v8, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will update manager delegate ", 29);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " for stack ", 11);
  *(v9 + 17) = 0;
  LoggableString::LoggableString(&__p, a1);
  (*(*v9 + 40))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16IMSClientManager21updateManagerDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims24CallManagerEventDelegateEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_30_0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v11;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v24;
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  IMSClientManager::callOnImsQueue(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EDD824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
    if (v42)
    {
      goto LABEL_9;
    }
  }

  else if (v42)
  {
LABEL_9:
    dispatch_release(v42);
    if (!v41)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_14:
    _Unwind_Resume(a1);
  }

  if (!v41)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void ___ZN16IMSClientManager21updateManagerDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims24CallManagerEventDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v28 = 0;
  ImsLock::set(&v28, &IMSClientManager::_mutex, &v29);
  ImsResult::~ImsResult(&v29);
  IMSClientManager::instance(&v16);
  IMSClientManager::getClientForStack(v16.__r_.__value_.__l.__data_, (a1 + 32), &v29);
  v2 = *&v29.__r_.__value_.__l.__data_;
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v28);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = **v3;
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
        v24[0] = 0;
        v27 = 0;
        v5 = ims::debug(&v29, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "holding ", 8);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, a1 + 72);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v6 = *(v2 + 88);
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v29 = *(a1 + 72);
        }

        v30 = v8;
        v31 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = (v6 + 56);
        v9 = *(v6 + 56);
        if (!v9)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v11 = v9;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, (v9 + 32)) & 0x80) == 0)
            {
              break;
            }

            v9 = *v11;
            v10 = v11;
            if (!*v11)
            {
              goto LABEL_25;
            }
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11 + 4, &v29.__r_.__value_.__l.__data_) & 0x80) == 0)
          {
            break;
          }

          v10 = v11 + 1;
          v9 = v11[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (!*v10)
        {
LABEL_25:
          operator new();
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v12 = *(v2 + 80);
      v13 = *(a1 + 96);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      v14 = *(a1 + 64);
      v21 = *(a1 + 56);
      v22 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSWrapperDelegate::addCallManagerDelegate(v12, (a1 + 72), &object, &v21);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      IMSWrapperDelegate::removeCallManagerDelegate(*(v2 + 80), (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
    v17[0] = 0;
    v20 = 0;
    v15 = ims::debug(&v29, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updated manager delegate ", 25);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for stack ", 11);
    *(v15 + 17) = 0;
    LoggableString::LoggableString(&v16, (a1 + 32));
    (*(*v15 + 40))(v15, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " to ", 4);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), *(a1 + 56));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v2 + 1));
  }
}

void sub_1E4EDDDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, dispatch_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c58_ZTSNSt3__110shared_ptrIN3ims24CallManagerEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDDF94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c58_ZTSNSt3__110shared_ptrIN3ims24CallManagerEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void IMSClientManager::updateMessageDelegate(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v24, "ims.client");
  v20[0] = 0;
  v23 = 0;
  v9 = ims::debug(v8, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will update message delegate ", 29);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " for stack ", 11);
  *(v9 + 17) = 0;
  LoggableString::LoggableString(&__p, a1);
  (*(*v9 + 40))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16IMSClientManager21updateMessageDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims20MessageEventDelegateEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_33;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v11;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v24;
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  IMSClientManager::callOnImsQueue(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}