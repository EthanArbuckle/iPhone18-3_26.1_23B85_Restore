void sub_1E50297E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (*(v34 - 49) < 0)
  {
    operator delete(*(v34 - 72));
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionDriver::handleTimer(uint64_t a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 272, a2);
  if (a1 + 280 == v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + 56);
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = v4[8];
  v7 = v4[9];
  if (!v7)
  {
    std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::erase((a1 + 272), v4);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::erase((a1 + 272), v4);
  v9 = std::__shared_weak_count::lock(v7);
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      v6[2](v6);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_weak(v7);
  if (v6)
  {
LABEL_13:
    _Block_release(v6);
  }
}

void sub_1E5029938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  MediaSessionBlock::~MediaSessionBlock(va);
  _Unwind_Resume(a1);
}

void MediaSessionDriver::setRTCPInterval(uint64_t a1, uint64_t *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v36, "rtp.driver");
  v32[0] = 0;
  v35 = 0;
  v5 = ims::debug(v4, v32);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "setRTCPInterval", 15);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 24));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v35 == 1 && v34 < 0)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a2;
      if (*a2)
      {
        if ((*(v12 + 584) & 1) == 0)
        {
          v17 = std::string::basic_string[abi:ne200100]<0>(v36, "rtp.driver");
          v24[0] = 0;
          v27 = 0;
          v18 = ims::error(v17, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "audioSettings is null", 21);
          *(v18 + 17) = 0;
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v18 + 17) = 0;
          if (v27 == 1 && v26 < 0)
          {
            operator delete(v25);
          }

          if (v37 < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_21;
        }

        v13 = *(v12 + 128);
        if (v13)
        {
          v13 = std::__shared_weak_count::lock(v13);
          v14 = v13;
          if (v13)
          {
            v13 = *(v12 + 120);
          }
        }

        else
        {
          v14 = 0;
        }

        v19 = SipStack::prefs(v13);
        if (ImsPrefs::EnableRemoteRTCPDeactivation(v19) && *(v12 + 184) == 1 && *(v12 + 185) == 1 && !*(v12 + 208))
        {
          v23 = *(v12 + 216);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (!v23)
          {
            *(a1 + 296) = 0;
LABEL_21:
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            return;
          }
        }

        else if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v20 = *(v12 + 128);
        if (v20)
        {
          v20 = std::__shared_weak_count::lock(v20);
          v21 = v20;
          if (v20)
          {
            v20 = *(v12 + 120);
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = SipStack::prefs(v20);
        *(a1 + 296) = ImsPrefs::RTCPIntervalSeconds(v22);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(v36, "rtp.driver");
  v28[0] = 0;
  v31 = 0;
  v16 = ims::error(v15, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "SDPSession expired in MediaSessionDriver::setRTCPInterval", 57);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v11)
  {
    goto LABEL_21;
  }
}

uint64_t std::pair<std::string const,MediaSessionBlock>::~pair(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,MediaSessionBlock>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,MediaSessionBlock>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,MediaSessionBlock>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,MediaSessionBlock>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

void *std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE9AD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE9AD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE9AD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 232))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0,std::allocator<MediaSessionDriver::startTimerForRequest(unsigned int,std::shared_ptr<MediaSessionInterface>,void({block_pointer})(void))::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,MediaSessionBlock>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,MediaSessionBlock>,void,0>((a2 + 4));

  operator delete(a2);
}

_BYTE *QMIRTPSession::toTimerIdString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 'C':
      v3 = "SESSION_CONFIGURE";
      break;
    case 'B':
      v3 = "SESSION_UNINITIALIZE";
      break;
    case 'A':
      v3 = "SESSION_INITIALIZE";
      break;
    default:
      ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t QMIRTPSession::QMIRTPSession(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, ImsPrefs *a5, void *a6, char a7, int a8, __int128 *a9, NSObject **a10)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable((a1 + 440));
  *a1 = &unk_1F5EE9DF0;
  *(a1 + 440) = &unk_1F5EE9E20;
  v17 = a2[1];
  v37 = *a2;
  v38 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a4[1];
  v35 = *a4;
  v36 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::MediaSessionDriver(a1 + 8, &v37, a3, &v35, a5, a9, a10);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  *a1 = &unk_1F5EE9B60;
  *(a1 + 440) = &unk_1F5EE9D60;
  *(a1 + 8) = &unk_1F5EE9C18;
  *(a1 + 96) = &unk_1F5EE9D20;
  *(a1 + 356) = 4;
  *(a1 + 360) = a7;
  *(a1 + 361) = -1;
  *(a1 + 367) = 0;
  *(a1 + 363) = 0;
  v19 = (*a4 + 264);
  v20 = *v19;
  if (!*v19)
  {
    goto LABEL_17;
  }

  v21 = *a4 + 264;
  do
  {
    v22 = *(v20 + 32);
    v23 = v22 >= a3;
    v24 = v22 < a3;
    if (v23)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * v24);
  }

  while (v20);
  if (v21 == v19 || *(v21 + 32) > a3)
  {
LABEL_17:
    v21 = *a4 + 264;
  }

  *(a1 + 368) = v21 != v19;
  qmi::MutableMessageBase::MutableMessageBase((a1 + 376));
  *(a1 + 408) = 0;
  v25 = a6[1];
  *(a1 + 416) = *a6;
  *(a1 + 424) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 432) = 0;
  *(a1 + 434) = 0;
  *(a1 + 436) = a8;
  std::string::basic_string[abi:ne200100]<0>(v33, "rtp.qmisession");
  v29[0] = 0;
  v32 = 0;
  v26 = ims::debug(v33, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "QMIRTPSession", 13);
  *(v26 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " [sessionId=", 12);
  *(v26 + 17) = 0;
  MEMORY[0x1E69233B0](*(v26 + 8), a3);
  *(v26 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "]", 1);
  *(v26 + 17) = 0;
  (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v26 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  return a1;
}

void sub_1E502A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MediaSessionDriver *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  v30 = v28[53];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  qmi::MutableMessageBase::~MutableMessageBase((v28 + 47));
  MediaSessionDriver::~MediaSessionDriver(a10);
  MEMORY[0x1E69225A0](v28 + 60);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v28 + 56);
  _Unwind_Resume(a1);
}

void QMIRTPSession::~QMIRTPSession(QMIRTPSession *this)
{
  *this = &unk_1F5EE9B60;
  *(this + 55) = &unk_1F5EE9D60;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EE9C18;
  *(this + 12) = &unk_1F5EE9D20;
  std::string::basic_string[abi:ne200100]<0>(v9, "rtp.qmisession");
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~QMIRTPSession", 14);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  v4 = *(this + 53);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  qmi::MutableMessageBase::~MutableMessageBase((this + 376));
  MediaSessionDriver::~MediaSessionDriver(v2);
  MEMORY[0x1E69225A0](this + 480);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 56);
}

{
  QMIRTPSession::~QMIRTPSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMIRTPSession::~QMIRTPSession(QMIRTPSession *this)
{
  QMIRTPSession::~QMIRTPSession((this - 8));
}

{
  QMIRTPSession::~QMIRTPSession((this - 96));
}

{
  QMIRTPSession::~QMIRTPSession((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  QMIRTPSession::~QMIRTPSession((this - 96));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toQMIRTPSession::~QMIRTPSession(QMIRTPSession *this)
{
  QMIRTPSession::~QMIRTPSession((this + *(*this - 24)));
}

{
  QMIRTPSession::~QMIRTPSession((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

BOOL QMIRTPSession::active(QMIRTPSession *this)
{
  std::string::basic_string[abi:ne200100]<0>(v27, "rtp.qmisession");
  v23[0] = 0;
  v26 = 0;
  v2 = ims::debug(v27, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "active", 6);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), " [sessionId=", 12);
  *(v2 + 17) = 0;
  MEMORY[0x1E69233B0](*(v2 + 8), *(this + 4));
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), " activeSessionId=", 17);
  *(v2 + 17) = 0;
  v3 = *(this + 52);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v4 + 72);
  v6 = v4 + 72;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(this + 109);
  v10 = v6;
  do
  {
    if (*(v7 + 32) >= v9)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v9));
  }

  while (v7);
  if (v10 != v6 && *(v10 + 32) <= v9)
  {
    v11 = *(v10 + 40);
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  MEMORY[0x1E69233B0](*(v2 + 8), v11);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "]", 1);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v12 = *(this + 52);
  v14 = *(v12 + 72);
  v13 = *(v12 + 80);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v14 + 72);
  v15 = v14 + 72;
  v16 = v17;
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = *(this + 109);
  v19 = v15;
  do
  {
    if (*(v16 + 32) >= v18)
    {
      v19 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 32) < v18));
  }

  while (v16);
  if (v19 != v15 && *(v19 + 32) <= v18)
  {
    v20 = *(v19 + 40);
  }

  else
  {
LABEL_27:
    v20 = 0;
  }

  v21 = *(this + 4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v20 == v21 && *(this + 89) != 4;
}

void sub_1E502AC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

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

void QMIRTPSession::initialize(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t *a7)
{
  v77 = a6;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v74, "rtp.qmisession");
  v70[0] = 0;
  v73 = 0;
  v13 = ims::debug(v12, v70);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v14 = v13;
  v15 = *(*(*a1 - 8) + 8);
  v16 = *(v13 + 8);
  v17 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "initialize", 10);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [initialDirection=", 19);
  *(v14 + 17) = 0;
  ims::toString<MediaDirection>(&v77, &v68);
  LoggableString::LoggableString(&v69, &v68);
  (*(*v14 + 40))(v14, &v69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (v73 == 1 && v72 < 0)
  {
    operator delete(v71);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  v18 = a7[1];
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    if (v19)
    {
      v20 = *a7;
      if (v20)
      {
        *(a1 + 366) = 0;
        *(a1 + 104) = a6;
        v21 = *(a1 + 436);
        if (v21 == 2)
        {
          if (*(v20 + 584) == 1)
          {
            *&v69.__r_.__value_.__l.__data_ = 0uLL;
            goto LABEL_40;
          }
        }

        else if (v21 == 6 && *(v20 + 1856) == 1)
        {
          *&v69.__r_.__value_.__l.__data_ = 0uLL;
LABEL_32:
          v24 = v20 + 1496;
          goto LABEL_43;
        }

        if ((*(v20 + 1328) & 1) == 0)
        {
          v25 = *(a1 + 24);
          if (!v25)
          {
            goto LABEL_99;
          }

          v26 = std::__shared_weak_count::lock(v25);
          if (!v26)
          {
            goto LABEL_99;
          }

          v27 = v26;
          v28 = *(a1 + 16);
          if (v28)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v62);
            (**v28)(v28, &v62, 9);
            if (v63)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v63);
            }
          }

          size = v27;
          goto LABEL_98;
        }

        *&v69.__r_.__value_.__l.__data_ = 0uLL;
        if (v21 != 2)
        {
          if (v21 == 6 && (*(v20 + 1856) & 1) != 0)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }

        if ((*(v20 + 584) & 1) == 0)
        {
LABEL_41:
          v24 = v20 + 1032;
          if (!*(v20 + 1328))
          {
            v24 = 0;
          }

LABEL_43:
          RTPTransportManager::getTransport(*(a1 + 32), *(v24 + 24), &v69);
          if (!v69.__r_.__value_.__r.__words[0])
          {
            v33 = *(a1 + 24);
            if (!v33 || (v34 = std::__shared_weak_count::lock(v33)) == 0)
            {
LABEL_97:
              size = v69.__r_.__value_.__l.__size_;
              if (!v69.__r_.__value_.__l.__size_)
              {
LABEL_99:
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                return;
              }

LABEL_98:
              std::__shared_weak_count::__release_shared[abi:ne200100](size);
              goto LABEL_99;
            }

            v35 = v34;
            v36 = *(a1 + 16);
            if (v36)
            {
              RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v60);
              (**v36)(v36, &v60, 9);
              if (v61)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v61);
              }
            }

            v37 = v35;
LABEL_96:
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            goto LABEL_97;
          }

          *&v68.__r_.__value_.__l.__data_ = 0uLL;
          v74 = 0;
          v75 = 0;
          v30 = *(a1 + 24);
          if (v30)
          {
            v75 = std::__shared_weak_count::lock(v30);
            if (v75)
            {
              v74 = *(a1 + 16);
            }
          }

          std::dynamic_pointer_cast[abi:ne200100]<MediaSessionStateMachine,MediaSessionDelegate>(&v74, &v68);
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
          }

          if (!v68.__r_.__value_.__r.__words[0])
          {
            v38 = std::string::basic_string[abi:ne200100]<0>(&v74, "rtp.qmisession");
            v56[0] = 0;
            v59 = 0;
            v39 = ims::error(v38, v56);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Delegate is not a MediaSessionStateMachine", 42);
            *(v39 + 17) = 0;
            (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v39 + 17) = 0;
            if (v59 == 1 && v58 < 0)
            {
              operator delete(v57);
            }

            if (v76 < 0)
            {
              operator delete(v74);
            }

LABEL_95:
            v37 = v68.__r_.__value_.__l.__size_;
            if (!v68.__r_.__value_.__l.__size_)
            {
              goto LABEL_97;
            }

            goto LABEL_96;
          }

          if (!a3)
          {
LABEL_87:
            if (*(v20 + 584) == 1)
            {
              if ((*(*(v20 + 152) + 24))())
              {
                v51 = v20;
                v52 = v19;
                atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                (*(*a1 + 56))(v53, a1, &v51);
                ImsResult::~ImsResult(v53);
                if (v52)
                {
                  std::__shared_weak_count::__release_weak(v52);
                }
              }
            }

            v45 = *(a1 + 416);
            RTPSharedPointerBase::getShared<QMIRTPSession>(&v49, a1);
            v46 = *(a1 + 436);
            v47 = v20;
            v48 = v19;
            atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            QMIRTPStackController::initializeQMISession(v45, &v49, a2, v46, &v47, a3 ^ 1);
            if (v48)
            {
              std::__shared_weak_count::__release_weak(v48);
            }

            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            goto LABEL_95;
          }

          v31 = *(v20 + 128);
          if (v31)
          {
            v31 = std::__shared_weak_count::lock(v31);
            v32 = v31;
            if (v31)
            {
              v31 = *(v20 + 120);
            }
          }

          else
          {
            v32 = 0;
          }

          v40 = SipStack::prefs(v31);
          if (!ImsPrefs::UseRTPDetectionAutoStart(v40))
          {
            if (!v32)
            {
              goto LABEL_87;
            }

            v44 = v32;
            goto LABEL_86;
          }

          v41 = *(v68.__r_.__value_.__r.__words[0] + 300);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v41)
          {
            goto LABEL_87;
          }

          v74 = 0;
          v75 = 0;
          v42 = *(a1 + 436);
          if (v42 == 2)
          {
            if (*(v20 + 584))
            {
              v43 = v20 + 152;
              goto LABEL_80;
            }
          }

          else if (v42 == 6 && (*(v20 + 1856) & 1) != 0)
          {
            v43 = v20 + 1496;
            goto LABEL_80;
          }

          v43 = v20 + 1032;
          if (!*(v20 + 1328))
          {
            v43 = 0;
          }

LABEL_80:
          RTPTransportManager::getTransport(*(a1 + 32), (*(v43 + 24) + 1), &v74);
          object = 0;
          (*(*v69.__r_.__value_.__l.__data_ + 96))(v69.__r_.__value_.__r.__words[0], &object);
          if (object)
          {
            dispatch_release(object);
          }

          if (v74)
          {
            v54 = 0;
            (*v74)[12](v74, &v54);
            if (v54)
            {
              dispatch_release(v54);
            }
          }

          v44 = v75;
          if (!v75)
          {
            goto LABEL_87;
          }

LABEL_86:
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          goto LABEL_87;
        }

LABEL_40:
        v24 = v20 + 152;
        goto LABEL_43;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = std::string::basic_string[abi:ne200100]<0>(&v74, "rtp.qmisession");
  v64[0] = 0;
  v67 = 0;
  v23 = ims::error(v22, v64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "sdpSession is null", 18);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(__p);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  if (v19)
  {
    goto LABEL_99;
  }
}

void sub_1E502B3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{
  if (object)
  {
    dispatch_release(object);
  }

  v54 = *(v52 - 104);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v55 = *(v52 - 208);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v56 = *(v52 - 184);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<QMIRTPSession>(void **p_lpsrc, void *a2)
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

uint64_t QMIRTPSession::terminate(QMIRTPSession *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v16, "rtp.qmisession");
  v12[0] = 0;
  v15 = 0;
  v3 = ims::debug(v2, v12);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "terminate", 9);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  v8 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v10, this);
  QMIRTPStackController::uninitializeQMISession(v8, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1E502B7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPSession::start(QMIRTPSession *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v27, "rtp.qmisession");
  v23[0] = 0;
  v26 = 0;
  v3 = ims::debug(v2, v23);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "start", 5);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " _direction=", 12);
  *(v4 + 17) = 0;
  ims::toString<MediaDirection>(this + 26, __p);
  (*(*v4 + 32))(v4, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (*(this + 109) == 2)
  {
    v8 = (*(*(this + 1) + 176))();
    v9 = *(this + 52);
    if (v8 != v9[13])
    {
      *(this + 434) = 1;
      RTPSharedPointerBase::getShared<QMIRTPSession>(&v19, this);
      QMIRTPStackController::configureQMISession(v9, &v19);
      v10 = v20;
      if (!v20)
      {
        return 1;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = *(this + 52);
  }

  v11 = *(this + 26);
  if (v11 == 4)
  {
    v11 = 1;
  }

  *(this + 89) = v11;
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v17, this);
  v12 = *(this + 89);
  v13 = v12 - 2;
  v14 = 4 - v12;
  if (v13 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  QMIRTPStackController::setQMISessionDirection(v9, &v17, v15);
  v10 = v18;
  if (v18)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return 1;
}

void sub_1E502BAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPSession::stop(QMIRTPSession *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v16, "rtp.qmisession");
  v12[0] = 0;
  v15 = 0;
  v3 = ims::debug(v2, v12);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stop", 4);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  *(this + 89) = 4;
  v8 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v10, this);
  QMIRTPStackController::setQMISessionDirection(v8, &v10, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1E502BD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPSession::configure(QMIRTPSession *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v16, "rtp.qmisession");
  v12[0] = 0;
  v15 = 0;
  v3 = ims::debug(v2, v12);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "configure", 9);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  *(this + 432) = 1;
  v8 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v10, this);
  QMIRTPStackController::configureQMISession(v8, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1E502BF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPSession::setDirection(uint64_t a1, unsigned int *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v54, "rtp.qmisession");
  v50[0] = 0;
  v53 = 0;
  v5 = ims::debug(v4, v50);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "setDirection", 12);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 32));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " oldDirection=", 14);
  *(v6 + 17) = 0;
  ims::toString<MediaDirection>((a1 + 104), v48);
  (*(*v6 + 32))(v6, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " newDirection=", 14);
  *(v6 + 17) = 0;
  ims::toString<MediaDirection>(a2, __p);
  (*(*v6 + 32))(v6, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v53 == 1 && v52 < 0)
  {
    operator delete(v51);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v10 = *(a1 + 356);
  if (v10 == 4)
  {
    *(a1 + 104) = *a2;
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
          goto LABEL_46;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v30);
        (*(*v14 + 32))(v14, &v30, 0);
        v15 = v31;
        if (!v31)
        {
          goto LABEL_46;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    v16 = *(a1 + 104);
    v17 = *a2;
    if (v16 != *a2)
    {
      if (v17 - 1 >= 2)
      {
        if (v17 == 3)
        {
          v19 = std::string::basic_string[abi:ne200100]<0>(v54, "rtp.qmisession");
          v36[0] = 0;
          v39 = 0;
          v20 = ims::warn(v19, v36);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "We don't support send only, defaulting to inactive", 50);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v39 == 1 && v38 < 0)
          {
            operator delete(v37);
          }

          if (v55 < 0)
          {
            operator delete(v54[0]);
          }
        }

        v21 = *(a1 + 416);
        RTPSharedPointerBase::getShared<QMIRTPSession>(&v34, a1);
        if (*a2 - 2 >= 3)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4 - *a2;
        }

        QMIRTPStackController::setQMISessionDirection(v21, &v34, v22);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        *(a1 + 104) = 4;
      }

      else
      {
        *(a1 + 104) = v17;
        if (v16 != 1)
        {
          if (v10 != 1)
          {
            v26 = *(a1 + 416);
            RTPSharedPointerBase::getShared<QMIRTPSession>(&v42, a1);
            v27 = *a2 - 2 >= 3 ? 3 : 4 - *a2;
            QMIRTPStackController::setQMISessionDirection(v26, &v42, v27);
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }
          }

          v28 = *(a1 + 416);
          RTPSharedPointerBase::getShared<QMIRTPSession>(&v40, a1);
          QMIRTPStackController::configureQMISession(v28, &v40);
          v13 = v41;
          if (v41)
          {
            goto LABEL_46;
          }

          return 1;
        }

        v18 = *(a1 + 416);
        RTPSharedPointerBase::getShared<QMIRTPSession>(&v44, a1);
        QMIRTPStackController::setQMISessionDirection(v18, &v44, 2u);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }
    }

    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v13 = v24;
        v25 = *(a1 + 16);
        if (!v25)
        {
          goto LABEL_46;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v32);
        (*(*v25 + 24))(v25, &v32, 0);
        v15 = v33;
        if (!v33)
        {
          goto LABEL_46;
        }

LABEL_38:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
LABEL_46:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  return 1;
}

void sub_1E502C498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPSession::didConfigure(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v67, "rtp.qmisession");
  v63[0] = 0;
  v66 = 0;
  v5 = ims::debug(v4, v63);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "didConfigure", 12);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 32));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v66 == 1 && v65 < 0)
  {
    operator delete(v64);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (*(a1 + 434) != 1)
  {
    if (!a2 && *(a1 + 356) != 4)
    {
      v15 = *(a1 + 104);
      if (v15 != 4)
      {
        *(a1 + 356) = v15;
        v16 = *(a1 + 416);
        RTPSharedPointerBase::getShared<QMIRTPSession>(&v59, a1);
        v17 = *(a1 + 104);
        v18 = v17 - 2;
        v19 = 4 - v17;
        v20 = v18 >= 3 ? 3 : v19;
        QMIRTPStackController::setQMISessionDirection(v16, &v59, v20);
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }
      }
    }

    if (*(a1 + 432) == 1)
    {
      *(a1 + 432) = 0;
      v21 = std::string::basic_string[abi:ne200100]<0>(v67, "rtp.qmisession");
      v55[0] = 0;
      v58 = 0;
      v22 = ims::info(v21, v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "didConfigure: handleMediaSessionConfigured: ", 44);
      *(v22 + 17) = 0;
      if (a2)
      {
        v23 = "false";
      }

      else
      {
        v23 = "true";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v23);
      (*(*v22 + 32))(v22, __p);
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (v58 == 1 && v57 < 0)
      {
        operator delete(v56);
      }

      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      v24 = *(a1 + 24);
      if (!v24)
      {
        return;
      }

      v25 = std::__shared_weak_count::lock(v24);
      if (!v25)
      {
        return;
      }

      v12 = v25;
      v26 = *(a1 + 16);
      if (!v26)
      {
        goto LABEL_70;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v51);
      (*(*v26 + 16))(v26, &v51, a2);
      v14 = v52;
      if (!v52)
      {
        goto LABEL_70;
      }
    }

    else if (*(a1 + 356) == 4)
    {
      v27 = std::string::basic_string[abi:ne200100]<0>(v67, "rtp.qmisession");
      v41[0] = 0;
      v44 = 0;
      v28 = ims::info(v27, v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "didConfigure: handleMediaSessionDeactivated: ", 45);
      *(v28 + 17) = 0;
      if (a2)
      {
        v29 = "false";
      }

      else
      {
        v29 = "true";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v29);
      (*(*v28 + 32))(v28, __p);
      (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v28 + 17) = 0;
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      v30 = *(a1 + 24);
      if (!v30)
      {
        return;
      }

      v31 = std::__shared_weak_count::lock(v30);
      if (!v31)
      {
        return;
      }

      v12 = v31;
      v32 = *(a1 + 16);
      if (!v32)
      {
        goto LABEL_70;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v39);
      (*(*v32 + 32))(v32, &v39, a2);
      v14 = v40;
      if (!v40)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v33 = std::string::basic_string[abi:ne200100]<0>(v67, "rtp.qmisession");
      v47[0] = 0;
      v50 = 0;
      v34 = ims::info(v33, v47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "didConfigure: handleMediaSessionActivated: ", 43);
      *(v34 + 17) = 0;
      if (a2)
      {
        v35 = "false";
      }

      else
      {
        v35 = "true";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v35);
      (*(*v34 + 32))(v34, __p);
      (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v34 + 17) = 0;
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (v50 == 1 && v49 < 0)
      {
        operator delete(v48);
      }

      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      v36 = *(a1 + 24);
      if (!v36)
      {
        return;
      }

      v37 = std::__shared_weak_count::lock(v36);
      if (!v37)
      {
        return;
      }

      v12 = v37;
      v38 = *(a1 + 16);
      if (!v38)
      {
        goto LABEL_70;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v45);
      (*(*v38 + 24))(v38, &v45, a2);
      v14 = v46;
      if (!v46)
      {
        goto LABEL_70;
      }
    }

LABEL_69:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    return;
  }

  *(a1 + 434) = 0;
  if (!a2)
  {
    (*(*a1 + 32))(a1, 0);
    return;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 16);
      if (!v13)
      {
        goto LABEL_70;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v61);
      (*(*v13 + 24))(v13, &v61, a2);
      v14 = v62;
      if (!v62)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }
  }
}

void sub_1E502CC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  _Unwind_Resume(a1);
}

void QMIRTPSession::configureMediaLinkMonitor(QMIRTPSession *this, int a2, int a3)
{
  v6 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v11, this);
  QMIRTPStackController::configureRTPLinkMonitor(v6, &v11, a2 != 0, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v9, this);
  QMIRTPStackController::configureRTCPLinkMonitor(v7, &v9, a3 != 0, a3);
  v8 = v10;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E502CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPSession::configureRTCP(QMIRTPSession *this, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  LOWORD(v6) = a4;
  v10 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v12, this);
  if (*(this + 26) != 1)
  {
    v6 = *(this + 77);
  }

  QMIRTPStackController::configureRTCPReports(v10, &v12, a2, a3, v6, a5);
  v11 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E502D050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double QMIRTPSession::startSendingDTMF@<D0>(QMIRTPSession *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 52);
  RTPSharedPointerBase::getShared<QMIRTPSession>(&v7, this);
  QMIRTPStackController::sendDTMFDigit(v5, &v7, a2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
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

void sub_1E502D104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double QMIRTPSession::stopSendingDTMF@<D0>(uint64_t a1@<X8>)
{
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

double non-virtual thunk toQMIRTPSession::stopSendingDTMF@<D0>(uint64_t a1@<X8>)
{
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

double QMIRTPSession::sendDTMFDigits@<D0>(void *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = *v4;
      v8 = a1[52];
      RTPSharedPointerBase::getShared<QMIRTPSession>(&v10, a1);
      QMIRTPStackController::sendDTMFDigit(v8, &v10, v7);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      ++v4;
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

void sub_1E502D264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPSession::setQMISessionId(QMIRTPSession *this, char a2)
{
  *(this + 362) = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[3] = &__block_descriptor_tmp_19;
  v5 = a2;
  v2 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(this + 376, 1);
  return ___ZN13QMIRTPSession15setQMISessionIdEh_block_invoke(v4, v2);
}

void QMIRTPSession::setConfiguration(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = *a2;
      if (*a2)
      {
        v9 = *(a1 + 436);
        if (v9 == 2)
        {
          if (v8[584])
          {
            v10 = v8 + 152;
            goto LABEL_20;
          }
        }

        else if (v9 == 6 && (v8[1856] & 1) != 0)
        {
          v10 = v8 + 1496;
          goto LABEL_20;
        }

        if (v8[1328] != 1)
        {
LABEL_22:
          *(a1 + 408) = 0;
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *a3 = &unk_1F5EBDEF8;
          *(a3 + 8) = &_bambiDomain;
          *(a3 + 16) = 1073741825;
LABEL_23:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          return;
        }

        v10 = v8 + 1032;
LABEL_20:
        if (!*(v10 + 13) || *(v10 + 15) == 255)
        {
          goto LABEL_22;
        }

        memset(__p, 0, 32);
        qmi::MutableMessageBase::MutableMessageBase(__p);
        qmi::MutableMessageBase::operator=();
        qmi::MutableMessageBase::~MutableMessageBase(__p);
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 0x40000000;
        v103 = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke;
        v104 = &__block_descriptor_tmp_20_1;
        v105 = a1;
        v12 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(a1 + 376, 1);
        v103(v102, v12);
        v13 = v8 + 152;
        if (v8[584])
        {
          v14 = v8 + 152;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(a1 + 436);
        if (v15 == 2)
        {
          if (v8[584])
          {
            goto LABEL_34;
          }
        }

        else if (v15 == 6 && (v8[1856] & 1) != 0)
        {
          v13 = v8 + 1496;
          goto LABEL_34;
        }

        if (v8[1328] != 1)
        {
          goto LABEL_40;
        }

        v13 = v8 + 1032;
LABEL_34:
        v17 = *(v13 + 1);
        v16 = *(v13 + 2);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v17)
        {
          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 0x40000000;
          v99 = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_2;
          v100 = &__block_descriptor_tmp_22_1;
          v101 = v13;
          v18 = qmi::MutableMessageBase::getTLV<ms::tlv::RemoteTransportIpAddr>(a1 + 376);
          v99(v98, v18);
        }

        if (*(v13 + 15) != 255)
        {
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 0x40000000;
          v95 = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_3;
          v96 = &__block_descriptor_tmp_24;
          v97 = v13;
          v19 = qmi::MutableMessageBase::getTLV<ms::tlv::RemotePort>(a1 + 376);
          v95(v94, v19);
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 0x40000000;
          v90 = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_4;
          v91 = &__block_descriptor_tmp_26;
          v92 = a1;
          v93 = v13;
          v20 = qmi::MutableMessageBase::getTLV<ms::tlv::RtcpRemotePort>(a1 + 376);
          v90(v89, v20);
        }

LABEL_40:
        if (*(a1 + 436) != 2)
        {
LABEL_126:
          *(a1 + 408) = 1;
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *a3 = &unk_1F5EBDEF8;
          *(a3 + 8) = &_bambiDomain;
          *(a3 + 16) = 0;
          goto LABEL_23;
        }

        memset(&v88, 0, sizeof(v88));
        v21 = v14 + 280;
        if (v14[303] < 0)
        {
          std::string::__init_copy_ctor_external(&v88, *(v14 + 35), *(v14 + 36));
        }

        else
        {
          *&v88.__r_.__value_.__l.__data_ = *v21;
          v88.__r_.__value_.__r.__words[2] = *(v14 + 37);
        }

        __p[0] = &unk_1F5EBE678;
        v22 = *(v14 + 344);
        *&__p[1] = *(v14 + 328);
        *&__p[3] = v22;
        v85 = *(v14 + 45);
        v86 = *(v14 + 184);
        v23 = *(v14 + 185);
        v84 = *(v14 + 372);
        v24 = *(v14 + 97);
        v25 = *(v14 + 408);
        v81 = *(v14 + 392);
        v82 = v25;
        v83 = *(v14 + 53);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v88.__r_.__value_.__l.__size_ == 3)
          {
            v28 = *(v88.__r_.__value_.__r.__words[0] + 2);
            v29 = *v88.__r_.__value_.__l.__data_ == 19777;
            v30 = 82;
LABEL_59:
            if (v29 && v28 == v30)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          if (v88.__r_.__value_.__l.__size_ == 6)
          {
            v26 = v88.__r_.__value_.__r.__words[0];
            goto LABEL_51;
          }
        }

        else
        {
          if (HIBYTE(v88.__r_.__value_.__r.__words[2]) == 3)
          {
            if (LOWORD(v88.__r_.__value_.__l.__data_) == 19777 && v88.__r_.__value_.__s.__data_[2] == 82)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          if (HIBYTE(v88.__r_.__value_.__r.__words[2]) == 6)
          {
            v26 = &v88;
LABEL_51:
            data = v26->__r_.__value_.__l.__data_;
            v28 = WORD2(v26->__r_.__value_.__r.__words[0]);
            v29 = data == 760368449;
            v30 = 16983;
            goto LABEL_59;
          }
        }

LABEL_63:
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v88, "EVS"))
        {
          std::string::basic_string[abi:ne200100]<0>(v79, "rtp.qmidriver");
          v75[0] = 0;
          v78 = 0;
          v35 = ims::error(v79, v75);
          v74.__r_.__value_.__r.__words[0] = "SDP Media format info has unsupported codec type: ";
          v36 = ImsOutStream::putStreamable<char const*&>(v35, &v74.__r_.__value_.__l.__data_);
          if (v14[303] < 0)
          {
            std::string::__init_copy_ctor_external(&v74, *(v14 + 35), *(v14 + 36));
          }

          else
          {
            *&v74.__r_.__value_.__l.__data_ = *v21;
            v74.__r_.__value_.__r.__words[2] = *(v14 + 37);
          }

          (*(*v36 + 32))(v36, &v74);
          (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v36[17] = 0;
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }

          if (v78 == 1 && v77 < 0)
          {
            operator delete(v76);
          }

          if (v80 < 0)
          {
            operator delete(v79[0]);
          }

          v42 = *(a1 + 416);
          v43 = *(v42 + 72);
          v44 = *(v42 + 80);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v43, 27);
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          *(a1 + 408) = 0;
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = 0u;
          *(a3 + 72) = 0u;
          *a3 = &unk_1F5EBDEF8;
          *(a3 + 8) = &_bambiDomain;
          *(a3 + 16) = 1073741825;
          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          goto LABEL_23;
        }

LABEL_64:
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 0x40000000;
        v73[2] = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_5;
        v73[3] = &__block_descriptor_tmp_38_0;
        v73[4] = v14;
        v33 = qmi::MutableMessageBase::getTLV<ms::tlv::SessionParameters>(a1 + 376);
        ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_5(v73, v33);
        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v88.__r_.__value_.__l.__size_ != 3)
          {
            if (v88.__r_.__value_.__l.__size_ != 6)
            {
              goto LABEL_96;
            }

            v34 = v88.__r_.__value_.__r.__words[0];
            goto LABEL_73;
          }

          if (*v88.__r_.__value_.__l.__data_ != 19777 || *(v88.__r_.__value_.__r.__words[0] + 2) != 82)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (HIBYTE(v88.__r_.__value_.__r.__words[2]) != 3)
          {
            if (HIBYTE(v88.__r_.__value_.__r.__words[2]) != 6)
            {
              goto LABEL_96;
            }

            v34 = &v88;
LABEL_73:
            v37 = bswap64(LODWORD(v34->__r_.__value_.__l.__data_) | (WORD2(v34->__r_.__value_.__r.__words[0]) << 32));
            v38 = v37 >= 0x414D522D57420000;
            v39 = v37 > 0x414D522D57420000;
            v40 = !v38;
            if (v39 == v40)
            {
              v41 = 1;
LABEL_103:
              v46 = 1;
              v47 = WORD1(__p[1]);
LABEL_104:
              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 0x40000000;
              v70[2] = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_6;
              v70[3] = &__block_descriptor_tmp_42_0;
              v71 = v41;
              v72 = v47;
              v49 = qmi::MutableMessageBase::getTLV<ms::tlv::CodecParameters>(a1 + 376);
              ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_6(v70, v49);
              if (v41 == 2)
              {
                v50 = *(a1 + 416);
                v51 = *(v50 + 72);
                v52 = *(v50 + 80);
                if (v24 < 3)
                {
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  RTPManager::logCodec(v51, 4, v47);
                }

                else
                {
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  RTPManager::logCodec(v51, 5, v47);
                }

                if (!v52)
                {
LABEL_119:
                  if ((v46 & 1) == 0)
                  {
                    if (v41 == 2)
                    {
                      v57[0] = MEMORY[0x1E69E9820];
                      v57[1] = 1174405120;
                      v57[2] = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_45;
                      v57[3] = &__block_descriptor_tmp_47_2;
                      v57[4] = v85;
                      v58 = v86;
                      v59 = v23;
                      v60 = v84;
                      v61 = v24;
                      v62 = v81;
                      v63 = v82;
                      v64 = v83;
                      v65 = v8;
                      v66 = v7;
                      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
                      v56 = qmi::MutableMessageBase::getTLV<ms::tlv::EVSCodecParameters>(a1 + 376);
                      ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_45(v57, v56);
                      if (v66)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
                      }
                    }

                    goto LABEL_124;
                  }

                  goto LABEL_120;
                }
              }

              else
              {
                v53 = *(a1 + 416);
                v54 = *(v53 + 72);
                v52 = *(v53 + 80);
                if (v52)
                {
                  atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                RTPManager::logCodec(v54, v41, v47);
                if (!v52)
                {
                  if (!v46)
                  {
LABEL_124:
                    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v88.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_126;
                  }

LABEL_120:
                  v67[0] = MEMORY[0x1E69E9820];
                  v67[1] = 1174405120;
                  v67[2] = ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_7;
                  v67[3] = &__block_descriptor_tmp_44_1;
                  v67[4] = &unk_1F5EBE678;
                  v68 = *&__p[1];
                  v69 = *&__p[3];
                  v55 = qmi::MutableMessageBase::getTLV<ms::tlv::AMRCodecParameters>(a1 + 376);
                  ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_7(v67, v55);
                  goto LABEL_124;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              goto LABEL_119;
            }

LABEL_96:
            v46 = 0;
            v41 = 2;
            v47 = v23;
            goto LABEL_104;
          }

          if (LOWORD(v88.__r_.__value_.__l.__data_) != 19777 || v88.__r_.__value_.__s.__data_[2] != 82)
          {
            goto LABEL_96;
          }
        }

        v41 = 0;
        goto LABEL_103;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.qmisession");
  v106[0] = 0;
  v109 = 0;
  v11 = ims::error(__p, v106);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "sdpSession is null", 18);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v109 == 1 && v108 < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741825;
  if (v7)
  {
    goto LABEL_23;
  }
}

void sub_1E502DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a56 == 1 && a54 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  _Unwind_Resume(a1);
}

void ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_2(uint64_t a1, _BOOL4 *a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 152))(v5);
  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 == 3)
  {
    if (v9 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = *v7;
    }

    v11 = *v10;
    v12 = *(v10 + 2);
    v14 = v11 == IpAddress::kAddressTypeIPv6 && v12 == 54;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = *(a1 + 32);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  IpAddress::asString();
}

void sub_1E502E158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *a2 = *(*(result + 40) + 26) + 1;
  *(a2 + 2) = *(v2 + 352);
  return result;
}

void ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v32, "rtp.qmidriver");
  v28[0] = 0;
  v31 = 0;
  v5 = ims::debug(v4, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Audio RX payload type ", 22);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923390](*(v5 + 8), *(*(a1 + 32) + 28));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v32, "rtp.qmidriver");
  v24[0] = 0;
  v27 = 0;
  v7 = ims::debug(v6, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Audio TX payload type ", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923390](*(v7 + 8), *(*(a1 + 32) + 30));
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v8 = *(a1 + 32);
  *a2 = *(v8 + 28);
  *(a2 + 1) = *(v8 + 30);
  v9 = *(v8 + 312);
  *(a2 + 2) = v9;
  if (v9 <= 0x13)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v32, "rtp.qmidriver");
    v20[0] = 0;
    v23 = 0;
    v11 = ims::error(v10, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Tried to set PacketizationTime to ", 34);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923390](*(v11 + 8), *(a2 + 2));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " setting it to ", 15);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923340](*(v11 + 8), 20);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    *(a2 + 2) = 20;
    v8 = *(a1 + 32);
  }

  v12 = *(v8 + 314);
  *(a2 + 4) = v12;
  if (v12 <= 0x13)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v32, "rtp.qmidriver");
    v16[0] = 0;
    v19 = 0;
    v14 = ims::error(v13, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Tried to set MaxPacketizationTime to ", 37);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923390](*(v14 + 8), *(a2 + 4));
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " setting it to ", 15);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923340](*(v14 + 8), 20);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    *(a2 + 4) = 20;
    v8 = *(a1 + 32);
  }

  v15 = *(v8 + 306);
  if (v15 != 255)
  {
    *(a2 + 6) = *(v8 + 310);
    *(a2 + 8) = v15;
  }
}

void sub_1E502E58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 33) < 0)
  {
    operator delete(*(v39 - 56));
  }

  _Unwind_Resume(exception_object);
}

double ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_6(uint64_t a1, double *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "rtp.qmidriver");
  v10[0] = 0;
  v13 = 0;
  v4 = ims::debug(v14, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Codec Type: ", 12);
  *(v4 + 17) = 0;
  v5 = *(a1 + 32);
  v6 = "EVS";
  if (v5 == 1)
  {
    v6 = "AMR-WB";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = "AMR";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v7, v8);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " Codec Mode: ", 13);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923340](*(v4 + 8), *(a1 + 36));
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  result = *(a1 + 32);
  *a2 = result;
  return result;
}

void sub_1E502E784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_7(uint64_t result, uint64_t a2)
{
  *a2 = *(result + 44);
  *(a2 + 8) = -1;
  v2 = *(result + 40);
  *(a2 + 9) = v2;
  *(a2 + 10) = v2;
  return result;
}

__n128 __copy_helper_block_e8_32c25_ZTS19SDPMediaAMRSettings(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = &unk_1F5EBE678;
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN13QMIRTPSession16setConfigurationENSt3__18weak_ptrI10SDPSessionEE_block_invoke_45(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 > 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = dword_1E517A8D8[v4];
  }

  *a2 = v5;
  v6 = *(a1 + 60);
  if (v6 > 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = dword_1E517A8D8[v6];
  }

  *(a2 + 4) = v7;
  *(a2 + 8) = bandwidthMask(*(a1 + 64));
  *(a2 + 16) = bandwidthMask(*(a1 + 68));
  v8 = *(a1 + 104);
  v9 = *(v8 + 128);
  if (v9)
  {
    v9 = std::__shared_weak_count::lock(v9);
    v10 = v9;
    if (v9)
    {
      v9 = *(v8 + 120);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = SipStack::prefs(v9);
  v12 = ImsPrefs::IncludeEVSIOModes(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    v13 = *(a1 + 32) | *(a1 + 40);
  }

  else if (*(a1 + 48))
  {
    v13 = *(a1 + 40);
  }

  else
  {
    v13 = *(a1 + 32);
  }

  *(a2 + 24) = v13;
  *(a2 + 32) = 3855;
  *(a2 + 34) = 0;
  *(a2 + 35) = *(a1 + 72) != 0;
  *(a2 + 36) = *(a1 + 73) != 0;
  if (*(a1 + 60))
  {
    v14 = *(a1 + 50);
    v15 = *(a1 + 51);
  }

  else
  {
    v14 = -1;
    v15 = -1;
  }

  *(a2 + 37) = v14;
  *(a2 + 38) = v15;
}

void sub_1E502E958(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bandwidthMask(unsigned int a1)
{
  if (a1 > 5)
  {
    return 15;
  }

  else
  {
    return dword_1E517A8EC[a1];
  }
}

uint64_t __copy_helper_block_e8_32104c38_ZTSNSt3__110shared_ptrI10SDPSessionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(result + 104) = *(a2 + 104);
  *(result + 112) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c25_ZTS19SDPMediaEVSSettings104c38_ZTSNSt3__110shared_ptrI10SDPSessionEE(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::RemoteTransportIpAddr>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 16)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 16;
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::RemoteTransportIpAddr>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EE9E60;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<ms::tlv::RemoteTransportIpAddr>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EE9E60;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::RemoteTransportIpAddr>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 += 3;
  *(v5 + 3) = *(a1 + 16);
  *(v5 + 7) = *(a1 + 20);
  result = memcpy((v5 + 8), *(a1 + 24), *(a1 + 32) - *(a1 + 24));
  v8 = v5 + 8 + *(a1 + 32) - *(a1 + 24);
  *a2 = v8;
  *v5 = v4;
  *(v5 + 1) = v8 - v6;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::RemotePort>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 17)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 10;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RemotePort>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::RtcpRemotePort>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 18)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 10;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RtcpRemotePort>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *(v3 + 5) = *(result + 12);
  *a2 = v3 + 6;
  *v3 = v2;
  *(v3 + 1) = 3;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::SessionParameters>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 19)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 10;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::SessionParameters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *(v3 + 4) = *(result + 11);
  *(v3 + 5) = *(result + 12);
  *(v3 + 7) = *(result + 14);
  *(v3 + 9) = *(result + 16);
  *(v3 + 11) = *(result + 18);
  *a2 = v3 + 12;
  *v3 = v2;
  *(v3 + 1) = 9;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::CodecParameters>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 20)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 12;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::CodecParameters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::AMRCodecParameters>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 21)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 16;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::AMRCodecParameters>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *(v3 + 11) = *(result + 24);
  *(v3 + 12) = *(result + 25);
  *(v3 + 13) = *(result + 26);
  *a2 = v3 + 14;
  *v3 = v2;
  *(v3 + 1) = 11;
  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::EVSCodecParameters>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 22)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  v3 = ***v1;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 16;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::EVSCodecParameters>::write(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = ms::tlv::writeField(v5, a1 + 16);
  *a2 = result;
  *v4 = v3;
  *(v4 + 1) = result - v5;
  return result;
}

uint64_t SipRegistrationEventPackage::SipRegistrationEventPackage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5EEA0B0;
  *(a1 + 40) = 0;
  SipUri::SipUri((a1 + 56));
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 48) = 3761;
  SipUri::operator=((a1 + 56), a3);
  return a1;
}

void sub_1E502F8A4(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + 7));
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipEventPackage::~SipEventPackage(v1);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationEventPackage::handleNotification(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 112);
  if (v4)
  {
    v5 = **v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      if (v6)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          SipRegistrationClient::handleRegistrationNotification(v9, (v6 + 32));
          v10 = 1;
LABEL_21:
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          return v10;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(&v21, "sip.reg");
  v17[0] = 0;
  v20 = 0;
  v12 = ims::debug(v11, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Received reg notification of type ", 34);
  *(v12 + 17) = 0;
  v13 = *(*a2 + 112);
  if (v13)
  {
    v14 = (*(*v13 + 40))(v13);
  }

  else
  {
    v14 = &SipBody::kGenericContentType;
  }

  LoggableString::LoggableString(&__p, v14);
  (*(*v12 + 40))(v12, &__p);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  v10 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_21;
  }

  return result;
}

void SipRegistrationEventPackage::handleSubscriptionFailed(SipRegistrationEventPackage *this, uint64_t **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "sip.reg");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipRegistrationEventPackage::handleSubscriptionFailed", 53);
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

  v5 = *(this + 5);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 4);
      if (v8)
      {
        SipRegistrationClient::regEventSubscriptionFailed(v8, this, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void SipRegistrationEventPackage::handleSubscriptionTerminated(SipRegistrationEventPackage *this, int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 4);
      if (v7)
      {
        SipRegistrationClient::regEventSubscriptionTerminated(v7, this, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipRegistrationEventPackage::handleSubscriptionSuccess(SipRegistrationEventPackage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 4);
      if (v5)
      {
        SipRegistrationSubject::actionOnObservers(v5 + 184, &__block_literal_global_66);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

BOOL SipRegistrationEventPackage::subscribe(SipRegistrationEventPackage *this, int a2)
{
  if (a2)
  {
    *(this + 12) = a2;
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(this + 2);
      if (v5)
      {
        if (SipSubscription::subscribeWithExpiration(v5, *(this + 12)))
        {
          v6 = 1;
LABEL_25:
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          return v6;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(this + 4);
      if (!v10)
      {
        v6 = 0;
        goto LABEL_37;
      }

      v23 = 0;
      v24 = 0;
      (*(*v10 + 248))(&v23);
      if (!v23)
      {
        ims::getStaticLoggerFor("reg.evt.pkg", &__p);
        v16 = v19;
        ctu::OsLogContext::~OsLogContext(&__p);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E no sipstack", &__p, 2u);
        }

        v6 = 0;
        goto LABEL_35;
      }

      v12 = *(v23 + 248);
      v11 = *(v23 + 256);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        SipUserAgent::publicUri(v12);
        v21 = 0;
        v22 = 0;
        v13 = *(v12 + 31);
        v14 = *(v12 + 32);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = 0;
        v19 = 0;
        v20 = 0;
        SipDialogManager::subscribeToEventPackage(v13, this, &v21);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v6 = v21 != 0;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (!v11)
        {
          goto LABEL_35;
        }
      }

      else
      {
        ims::getStaticLoggerFor("reg.evt.pkg", &__p);
        v17 = v19;
        ctu::OsLogContext::~OsLogContext(&__p);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E no sipstack", &__p, 2u);
        }

        v6 = 0;
        if (!v11)
        {
          goto LABEL_35;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_35:
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

LABEL_37:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (!v4)
      {
        return v6;
      }

      goto LABEL_25;
    }
  }

  v6 = 0;
  if (v4)
  {
    goto LABEL_25;
  }

  return v6;
}

void sub_1E5030014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void SipRegistrationEventPackage::unsubscribe(SipRegistrationEventPackage *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (v5)
      {
        SipSubscription::unsubscribe(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipRegistrationEventPackage::~SipRegistrationEventPackage(SipRegistrationEventPackage *this)
{
  *this = &unk_1F5EEA0B0;
  SipUri::~SipUri((this + 56));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipEventPackage::~SipEventPackage(this);
}

{
  *this = &unk_1F5EEA0B0;
  SipUri::~SipUri((this + 56));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipEventPackage::~SipEventPackage(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E5030328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69235B0](v19, v20);
  _Unwind_Resume(a1);
}

void IMSiRatClient::_registerIRatClient(XpcConnectionClient **this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "ims.irat");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Register IMS-iRat Client", 24);
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

  v9 = 0;
  xpc::dict_creator::dict_creator(v14);
  xpc::dict_creator::operator()<unsigned long long>(&v8, v14, "kMessageId", 1uLL);
  xpc_release(v14[0]);
  v4 = v8;
  v9 = v8;
  v8 = xpc_null_create();
  xpc_release(v8);
  xpc::dict_creator::dict_creator(v14);
  xpc::dict_creator::operator()<unsigned long long>(&v8, v14, "kWCMRegisterProcess_ProcessId", 0xAuLL);
  xpc_release(v14[0]);
  v5 = v8;
  v8 = xpc_null_create();
  xpc_release(v8);
  v6 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&object, v4, "kMessageArgs", &v6);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
  v6 = 0;
  if (*this)
  {
    XpcConnectionClient::sendXpcMessage(*this, &v9);
  }

  xpc_release(v5);
  xpc_release(v9);
}

void sub_1E5030544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a22 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  _Unwind_Resume(exception_object);
}

void IMSiRatClient::~IMSiRatClient(char ***this)
{
  v1 = *this;
  if (v1)
  {
    XpcConnectionClient::~XpcConnectionClient(v1);
    MEMORY[0x1E69235B0]();
  }
}

xpc_object_t xpc::dict::object_proxy::operator=(xpc_object_t *a1, xpc_object_t xdict, char *key, xpc_object_t *a4)
{
  xpc_dictionary_set_value(xdict, key, *a4);
  *a1 = *a4;
  result = xpc_null_create();
  *a4 = result;
  return result;
}

void IMSiRatClient::reportCallStatus(XpcConnectionClient **a1, _BYTE *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v35, "ims.irat");
  LOBYTE(v39) = 0;
  v43 = 0;
  v5 = ims::debug(v4, &v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Call Status reported to iRat Manager: ", 38);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ims.irat");
  LOBYTE(v35[0]) = 0;
  v38 = 0;
  v6 = ims::debug(__p, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "CallId: ", 8);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), *a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ", Media : ", 10);
  *(v6 + 17) = 0;
  if (a2[4])
  {
    v7 = "Active";
  }

  else
  {
    v7 = "Inactive";
  }

  if (a2[4])
  {
    v8 = 6;
  }

  else
  {
    v8 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v8);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v25, "ims.irat");
  LOBYTE(__p[0]) = 0;
  v34 = 0;
  v9 = ims::debug(v25, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Local hold: ", 12);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923320](*(v9 + 8), a2[5]);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ", Remote Hold: ", 15);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923320](*(v9 + 8), a2[6]);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v29, "ims.irat");
  LOBYTE(v25[0]) = 0;
  v28 = 0;
  v10 = ims::debug(v29, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Multiple Calls: ", 16);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923320](*(v10 + 8), a2[8]);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", Conference: ", 14);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923320](*(v10 + 8), a2[7]);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v35[0] = 0;
  xpc::dict_creator::dict_creator(&v39);
  xpc::dict_creator::operator()<unsigned long long>(__p, &v39, "kMessageId", 0x2BCuLL);
  xpc_release(v39);
  v11 = __p[0];
  v35[0] = __p[0];
  __p[0] = xpc_null_create();
  xpc_release(__p[0]);
  __p[0] = 0;
  v12 = a2[4];
  xpc::dict_creator::dict_creator(&v39);
  xpc::dict_creator::operator()<unsigned long long>(v25, &v39, "WRMIPTelephonyEventReport_CallStatus", v12);
  xpc_release(v39);
  __p[0] = v25[0];
  v25[0] = xpc_null_create();
  xpc_release(v25[0]);
  v23 = xpc_uint64_create(*a2);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v39 = __p;
  v40 = "WRMIPTelephonyEventReport_CallId";
  xpc::dict::object_proxy::operator=(&v39, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  v21 = xpc_uint64_create(a2[5]);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v39 = __p;
  v40 = "WRMIPTelephonyEventReport_LocalHold";
  xpc::dict::object_proxy::operator=(&v39, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_uint64_create(a2[6]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v39 = __p;
  v40 = "WRMIPTelephonyEventReport_RemoteHold";
  xpc::dict::object_proxy::operator=(&v39, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_uint64_create(a2[7]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v39 = __p;
  v40 = "WRMIPTelephonyEventReport_Conference";
  xpc::dict::object_proxy::operator=(&v39, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v15 = xpc_uint64_create(a2[8]);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v39 = __p;
  v40 = "WRMIPTelephonyEventReport_MultipleCalls";
  xpc::dict::object_proxy::operator=(&v39, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = __p[0];
  if (__p[0])
  {
    xpc_retain(__p[0]);
  }

  else
  {
    v13 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v14, v11, "kMessageArgs", &v13);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  if (*a1)
  {
    XpcConnectionClient::sendXpcMessage(*a1, v35);
  }

  xpc_release(__p[0]);
  xpc_release(v35[0]);
}

void sub_1E5030CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (*(v47 - 56) == 1 && *(v47 - 65) < 0)
  {
    operator delete(*(v47 - 88));
  }

  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  _Unwind_Resume(exception_object);
}

void IMSiRatClient::reportSipTimeout(XpcConnectionClient **a1, unsigned __int8 *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v37, "ims.irat");
  v33[0] = 0;
  v36 = 0;
  v5 = ims::debug(v4, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SIP Timeout reported to iRat Manager: ", 38);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(&v37, "ims.irat");
  v29[0] = 0;
  v32 = 0;
  v7 = ims::debug(v6, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "isWifi: ", 8);
  *(v7 + 17) = 0;
  if (*a2)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v8);
  (*(*v7 + 32))(v7, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", simInstance: ", 15);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(a2 + 1));
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v37, "ims.irat");
  v23[0] = 0;
  v26 = 0;
  v10 = ims::debug(v9, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Context: ", 9);
  *(v10 + 17) = 0;
  MEMORY[0x1E69233B0](*(v10 + 8), *(a2 + 4));
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  __p[0] = 0;
  xpc::dict_creator::dict_creator(&v37);
  xpc::dict_creator::operator()<unsigned long long>(&v22, &v37, "kMessageId", 0x2BDuLL);
  xpc_release(v37);
  v11 = v22;
  __p[0] = v22;
  v22 = xpc_null_create();
  xpc_release(v22);
  v22 = 0;
  v12 = *a2;
  xpc::dict_creator::dict_creator(&v37);
  xpc::dict_creator::operator()<unsigned long long>(&v21, &v37, "kRegtdLinkType", v12);
  xpc_release(v37);
  v22 = v21;
  v21 = xpc_null_create();
  xpc_release(v21);
  v19 = xpc_BOOL_create(1);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v37 = &v22;
  v38 = "kSipTmo";
  xpc::dict::object_proxy::operator=(&v37, &v19, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_uint64_create(*(a2 + 1));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v37 = &v22;
  v38 = "kSlotID";
  xpc::dict::object_proxy::operator=(&v37, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v15 = xpc_uint64_create(*(a2 + 4));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v37 = &v22;
  v38 = "kSipContext";
  xpc::dict::object_proxy::operator=(&v37, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v13 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v14, v11, "kMessageArgs", &v13);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  if (*a1)
  {
    XpcConnectionClient::sendXpcMessage(*a1, __p);
  }

  xpc_release(v22);
  xpc_release(__p[0]);
}

void sub_1E5031274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 49) < 0)
  {
    operator delete(*(v45 - 72));
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict_creator::operator()<unsigned long long>(void **a1, void **a2, uint64_t a3, uint64_t value)
{
  v7 = xpc_uint64_create(value);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a2;
  v10[1] = a3;
  xpc::dict::object_proxy::operator=(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a2;
  *a1 = *a2;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v8);
}

xpc::dict_creator *xpc::dict_creator::dict_creator(xpc::dict_creator *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6924740](v2) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  *this = v3;
  v4 = xpc_null_create();
  xpc_release(v4);
  return this;
}

uint64_t SipTlsTransportGroup::SipTlsTransportGroup(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::SipTransportGroup(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EEA128;
  *(a1 + 8) = &unk_1F5EEA2C8;
  *(a1 + 192) = &unk_1F5EEA328;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = &unk_1F5EEA350;
  *(a1 + 280) = 0;
  return a1;
}

void sub_1E5031588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTlsTransportGroup::~SipTlsTransportGroup(SipTlsTransportGroup *this)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5EEA128;
  *(this + 1) = &unk_1F5EEA2C8;
  *(this + 24) = &unk_1F5EEA328;
  *(this + 32) = &unk_1F5EEA350;
  if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_INFO))
  {
    SipTransportGroup::logPrefixStr(this);
  }

  SipTlsTransportGroup::close(this);
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipTransportGroup::~SipTransportGroup(this);
  v3 = *MEMORY[0x1E69E9840];
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E5031724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SipTlsTransportGroup::close(SipTlsTransportGroup *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 280) == 1)
  {
    v2 = *(this + 29);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 144))(__p, this);
      v3 = v10 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v12 = 1752392040;
      v13 = 2081;
      v14 = v3;
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclosing TLS transport", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v4 = *(this + 33);
    v5 = *(this + 34);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      v8[0] = 0;
      v8[1] = 0;
      SipTcpConnection::setManager(v4, v8);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(this + 34);
    *(this + 33) = 0;
    *(this + 34) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 280) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void non-virtual thunk toSipTlsTransportGroup::~SipTlsTransportGroup(SipTlsTransportGroup *this)
{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 8));
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 192));
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 256));
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 192));

  JUMPOUT(0x1E69235B0);
}

{
  SipTlsTransportGroup::~SipTlsTransportGroup((this - 256));

  JUMPOUT(0x1E69235B0);
}

void SipTlsTransportGroup::loggableName(SipTlsTransportGroup *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5031BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipTlsTransportGroup::initialize(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(lpsrc, a1 + 25);
  {
    v17 = v5;
    v18 = lpsrc[1];
    v6 = lpsrc;
  }

  else
  {
    v6 = &v17;
  }

  *v6 = 0;
  v6[1] = 0;
  if (lpsrc[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc[1]);
  }

  if (v17)
  {
    v16[0] = 0;
    v16[1] = 0;
    v14 = v17;
    v15 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = 0;
    v13 = 0;
    SipTcpConnection::create(1, v16);
  }

  v7 = a1[29];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 144))(lpsrc, a1);
    v9 = (SBYTE7(v11) & 0x80u) == 0 ? lpsrc : lpsrc[0];
    buf = 141558275;
    buf_4 = 1752392040;
    v21 = 2081;
    v22 = v9;
    _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to initialize outgoing connection. Connection manager is null", &buf, 0x16u);
    if (SBYTE7(v11) < 0)
    {
      operator delete(lpsrc[0]);
    }
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E503233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
LABEL_8:
        ImsResult::~ImsResult(&a13);
        if (a30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](a30);
        }

        if (a32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](a32);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      goto LABEL_8;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  if (!v32)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void SipTlsTransportGroup::sendData(uint64_t a1@<X0>, ImsResult *a2@<X8>)
{
  v3 = *(a1 + 264);
  if (v3)
  {

    SipTcpConnection::sendData(v3, a2);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5[0] = &unk_1F5EBDEF8;
    v5[1] = &_bambiDomain;
    v6 = 1073741827;
    v4 = ImsResult::operator<<<char [41]>(v5, "send() called on uninitialized transport");
    ImsResult::ImsResult(a2, v4);
    ImsResult::~ImsResult(v5);
  }
}

void sub_1E50324C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void *SipTlsTransportGroup::localClientAddress@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[33];
  if (v2)
  {
    this = *(v2 + 256);
    if (this)
    {
      return (*(*this + 144))();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

uint64_t SipTlsTransportGroup::remoteServerUri(SipTlsTransportGroup *this)
{
  v2 = *(this + 31);
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
  v5 = *(this + 30);
  if (v5)
  {
    v6 = (*(*v5 + 88))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void SipTlsTransportGroup::processMessageFromTransport(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[31];
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = a1[30];
      if (v13)
      {
        v14 = a2[1];
        v19 = *a2;
        v20 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v17, a1 + 25);
        v15 = 0;
        v16 = 0;
        (*(*v13 + 96))(v13, &v19, a3, a4, a5, &v17, &v15);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E50326D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

__int128 **SipTlsTransportGroup::printTransportInfo(__int128 ***this, ImsOutStream *a2)
{
  ((*this)[3])(__p);
  (*(*a2 + 40))(a2, __p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  result = this[33];
  if (result)
  {
    return SipTcpConnection::printDebugInfo(result, a2);
  }

  return result;
}

void sub_1E50327EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTlsTransportGroup::addTransportSpecificHeaders(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::addAccessNetworkInfoHeader(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = *(a2 + 8);
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportGroup::addRoutableLocalAddressHeader(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E5032894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *SipTlsTransportGroup::getTransportName(void *a1, uint64_t a2, std::string *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1[29];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 144))(__p, a1);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 141558275;
    v12 = 1752392040;
    v13 = 2081;
    v14 = v6;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sforcing TLS transport", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = std::string::operator=(a3, &SipTransport::kTransportTLS);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void SipTlsTransportGroup::triggerTcpErrors(SipTlsTransportGroup *this, const ImsResult *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(this + 33))
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    __p = &unk_1F5EBDEF8;
    v10 = &_bambiDomain;
    v11 = 1073741843;
    if (*(a2 + 1) == &_bambiDomain)
    {
      v6 = *(a2 + 4);
      ImsResult::~ImsResult(&__p);
      if (v6 == 1073741843)
      {
        (*(**(this + 33) + 144))(*(this + 33));
        goto LABEL_17;
      }
    }

    else
    {
      ImsResult::~ImsResult(&__p);
    }

    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    __p = &unk_1F5EBDEF8;
    v10 = &_bambiDomain;
    v11 = 1073741850;
    if (*(a2 + 1) != &_bambiDomain)
    {
      ImsResult::~ImsResult(&__p);
LABEL_16:
      (*(**(this + 33) + 128))(*(this + 33), a2);
      goto LABEL_17;
    }

    v7 = *(a2 + 4);
    ImsResult::~ImsResult(&__p);
    if (v7 != 1073741850)
    {
      goto LABEL_16;
    }

    (*(**(this + 33) + 152))(*(this + 33));
  }

  else
  {
    v4 = *(this + 29);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 144))(&__p, this);
      if (v12 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 141558275;
      v18 = 1752392040;
      v19 = 2081;
      v20 = p_p;
      _os_log_error_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sConnection not initialized", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t SipTlsTransportGroup::addUser(void *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[33];
  if (!v3)
  {
    v9 = a1[29];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v12 = v16 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v18 = 1752392040;
      v19 = 2081;
      v20 = v12;
      _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sConnection not initialized", buf, 0x16u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_10;
  }

  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v3 + 56))(v3, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v6)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = a2[1];
  v8 = 1;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void SipTlsTransportGroup::removeUser(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[33];
  if (v2)
  {
    v3 = *(*v2 + 64);
    v4 = *MEMORY[0x1E69E9840];

    v3();
  }

  else
  {
    v5 = a1[29];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v7 = v9 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v11 = 1752392040;
      v12 = 2081;
      v13 = v7;
      _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sConnection not initialized", buf, 0x16u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void SipTlsTransportGroup::sendMessageFromConnection(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 96))(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E5032FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTlsTransportGroup::processIncomingMessage(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a6[1];
  v8 = *a6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 248))(a1, &v10, a3, a4, a5, 0, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E50330A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipTlsTransportGroup::removeConnection(SipTlsTransportGroup *a1, void *a2)
{
  if (*a2 != *(a1 + 33))
  {
    return;
  }

  SipTlsTransportGroup::close(a1);
  v3 = *(a1 + 31);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
LABEL_15:
    v5 = 0;
LABEL_16:
    v6 = 0;
LABEL_17:
    (*(*v5 + 136))(v5, 15, 0);
    goto LABEL_18;
  }

  v5 = *(a1 + 30);
  if (!v5)
  {
    goto LABEL_16;
  }

  (*(*v5 + 128))(&v8, v5);
  if (!v9)
  {
    goto LABEL_16;
  }

  v6 = std::__shared_weak_count::lock(v9);
  if (v6)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (!v7 || *(v7 + 2817) != 1)
  {
    goto LABEL_17;
  }

  (*(*v5 + 136))(v5, 23, 0);
LABEL_18:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t SipTlsTransportGroup::messageEncoding(SipTlsTransportGroup *this)
{
  v2 = *(this + 31);
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
  v5 = *(this + 30);
  if (v5)
  {
    v6 = (*(*v5 + 80))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void SipTlsTransportGroup::clientConfig(SipTlsTransportGroup *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 31);
  if (!v4)
  {
    v5 = 0;
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(this + 30);
  if (!v6)
  {
    goto LABEL_14;
  }

  (*(*v6 + 128))(&v11);
  if (!v12)
  {
    goto LABEL_14;
  }

  v7 = std::__shared_weak_count::lock(v12);
  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (!v8)
  {
LABEL_15:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = *(v8 + 200);
  *(a2 + 8) = *(v8 + 208);
  *a2 = v9;
  if (*(v8 + 239) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(v8 + 216), *(v8 + 224));
  }

  else
  {
    v10 = *(v8 + 216);
    *(a2 + 32) = *(v8 + 232);
    *(a2 + 16) = v10;
  }

  *(a2 + 40) = *(v8 + 240);
  if (v7)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_17:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5033458(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipTlsTransportGroup::handleSystemWake(SipTlsTransportGroup *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 33))
  {
    v2 = *(this + 31);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(this + 30);
        if (v4)
        {
          (*(*v4 + 128))(&__p);
          if (v14)
          {
            v5 = std::__shared_weak_count::lock(v14);
            if (v5)
            {
              v6 = __p;
            }

            else
            {
              v6 = 0;
            }

            if (v14)
            {
              std::__shared_weak_count::__release_weak(v14);
            }

            if (v6 && v6[2817] == 1)
            {
              v7 = *(this + 29);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                (*(*this + 144))(&__p, this);
                v8 = v15 >= 0 ? &__p : __p;
                *buf = 141558275;
                v17 = 1752392040;
                v18 = 2081;
                v19 = v8;
                _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSkip AP wake ping for lazuli", buf, 0x16u);
                if (v15 < 0)
                {
                  operator delete(__p);
                }
              }

              SipTcpConnection::checkTimers(*(this + 33));
              goto LABEL_29;
            }

LABEL_28:
            (*(**(this + 33) + 40))(v12);
            ImsResult::~ImsResult(v12);
            SipTcpConnection::checkTimers(*(this + 33));
LABEL_29:
            if (v5)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            }

            if (v3)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            }

            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_28;
  }

  v9 = *(this + 29);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 144))(&__p, this);
    v10 = v15 >= 0 ? &__p : __p;
    *buf = 141558275;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v10;
    _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCan not send ping on uninitialized transport", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_33:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E5033734(_Unwind_Exception *exception_object)
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

void SipTlsTransportGroup::updateServiceClass(SipTlsTransportGroup *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 30);
      if (v4)
      {
        (*(*v4 + 144))(&v9);
        v5 = v9;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 104;
LABEL_7:
  v6 = *(this + 33);
  if (v6)
  {
    v7 = *(v6 + 256);
    v8 = *(v6 + 264);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 168))(v7, v5);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipTlsTransportGroup::updateCrlfKeepAliveInterval(SipTlsTransportGroup *this, __int32 a2)
{
  v2 = *(this + 33);
  if (v2)
  {
    SipTcpConnection::updateCrlfKeepAliveInterval(v2, a2);
  }
}

void SipTlsTransportGroup::updateCrlfKeepAliveNetwork(SipTlsTransportGroup *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    SipTcpConnection::updateCrlfKeepAliveNetwork(v1);
  }
}

void SipTlsTransportGroup::handleTcpIdleExtend(SipTlsTransportGroup *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    SipTcpConnection::handleTcpIdleExtend(v1);
  }
}

void SipTlsTransportGroup::sendMessage(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1[33])
  {
    *(a4 + 80) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    v7 = a2[1];
    v14 = *a2;
    v15 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportGroup::sendMessage(a1, &v14, a3, a4);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (a3 && *a3)
    {
      v8 = a1[29];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 144))(__p, a1);
        v9 = v18 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v24 = 1752392040;
        v25 = 2081;
        v26 = v9;
        _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssendMessage: NULLing out connection", buf, 0x16u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v10 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v17 = 1073741827;
    v11 = ImsResult::operator<<<char [56]>(__p, "SipTlsTransportGroup: sendMessage: no active connection");
    v12 = ImsLogContainer::logResult((a1 + 1), v11);
    ImsResult::ImsResult(a4, v12);
    ImsResult::~ImsResult(__p);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t SipTlsTransportGroup::localPort(SipTlsTransportGroup *this)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v3 = *(v2 + 256);
  if (v3 && ((*(*v3 + 144))(&v6), v6))
  {
    v1 = (*(*v6 + 56))(v6);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v4)
  {
    return 0;
  }

  return v1;
}

void sub_1E5033B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTlsTransportGroup::remotePort(SipTlsTransportGroup *this)
{
  v2 = *(this + 33);
  v3 = *(this + 34);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  v4 = *(v2 + 256);
  if (v4 && ((*(*v4 + 104))(&v7), v7))
  {
    v1 = (*(*v7 + 56))(v7);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v5)
  {
LABEL_11:
    v1 = 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v1;
}

void sub_1E5033C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void SipTlsTransportGroup::setPort(SipTlsTransportGroup *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 30);
      if (v4)
      {
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v9 = 0;
        (*(*v4 + 152))(v4, __p);
        ImsResult::~ImsResult(__p);
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 29);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 144))(__p, this);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v7;
    _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSipTlsTransportGroup::setPort tlayer is null", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E5033E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void SipTlsTransportGroup::group(SipTlsTransportGroup *this@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(v4, this + 25);
  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t SipTlsTransportGroup::transportLayer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 248);
  *a2 = *(this + 240);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toSipTlsTransportGroup::transportLayer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this - 8);
  *a2 = *(this - 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<anonymous namespace::MessageSessionSetupEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEA410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::MessageSessionSetupEventImpl::~MessageSessionSetupEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5EEA460;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5EEA460;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::MessageSessionSetupEventImpl::getDict@<X0>(_anonymous_namespace_::MessageSessionSetupEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void SpamRiskMap::SpamRiskMap(SpamRiskMap *this, const ims::CFDictionary *a2)
{
  *(this + 8) = 0;
  v2 = this + 8;
  *(this + 20) = 0;
  v52 = this + 20;
  *(this + 32) = 0;
  v53 = this + 32;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  __p = 0;
  v59 = 0;
  v60 = 0;
  ims::CFDictionary::getKeysAndValues(a2, &v61, &__p, 0x8000100);
  v51 = (v2 + 4);
  v54 = (v2 + 16);
  v3 = v61;
  if (v62 != v61)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      memset(&v57, 0, sizeof(v57));
      v6 = (v3 + v4);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v57, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v57.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v57.__r_.__value_.__l.__data_ = v7;
      }

      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v57.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_56;
      }

      v9 = *(__p + v5);
      if (!v9)
      {
        goto LABEL_56;
      }

      v10 = CFGetTypeID(v9);
      if (v10 == CFNumberGetTypeID())
      {
        break;
      }

      v32 = *(__p + v5);
      if (v32)
      {
        v33 = CFGetTypeID(v32);
        if (v33 == CFStringGetTypeID())
        {
          memset(&__str, 0, sizeof(__str));
          v34 = *(__p + v5);
          v64.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
          v64.__r_.__value_.__l.__size_ = v34;
          if (v34)
          {
            CFRetain(v34);
            v34 = v64.__r_.__value_.__l.__size_;
          }

          v64.__r_.__value_.__r.__words[0] = &unk_1F5EF36B0;
          ims::CFString::asString(v34, 0x8000100, &__str);
          ims::CFType::~CFType(&v64);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = __str.__r_.__value_.__l.__size_;
          }

          if (v35)
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v37 = memchr(p_str, 58, v35);
            if (v37)
            {
              v38 = v37 - p_str;
            }

            else
            {
              v38 = -1;
            }
          }

          else
          {
            v38 = -1;
          }

          v39 = std::string::basic_string(&v64, &__str, 0, v38, v65);
          v65[0] = 0;
          if (ims::strToLong(v39, v65))
          {
            v40 = v65[0];
          }

          else
          {
            v40 = 0;
          }

          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

          if (v38 == -1)
          {
            LODWORD(v13) = v40;
          }

          else
          {
            v41 = std::string::basic_string(&v64, &__str, v38 + 1, 0xFFFFFFFFFFFFFFFFLL, v65);
            v65[0] = 0;
            if (ims::strToLong(v41, v65))
            {
              LODWORD(v13) = v65[0];
            }

            else
            {
              LODWORD(v13) = 0;
            }

            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v64.__r_.__value_.__l.__data_);
            }
          }

          if (v13 >= v40)
          {
            v14 = v40;
          }

          else
          {
            v14 = v13;
          }

          if (v40 <= v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = v40;
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_14;
        }
      }

LABEL_56:
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      ++v5;
      v3 = v61;
      v4 += 24;
      if (v5 >= 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 3))
      {
        goto LABEL_81;
      }
    }

    v12 = *(__p + v5);
    v64.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
    v64.__r_.__value_.__l.__size_ = v12;
    if (v12)
    {
      CFRetain(v12);
      v12 = v64.__r_.__value_.__l.__size_;
    }

    v64.__r_.__value_.__r.__words[0] = &unk_1F5EF3708;
    v13 = ims::CFNumber::asUint32(v12, v11);
    ims::CFType::~CFType(&v64);
    v14 = v13;
LABEL_14:
    std::string::basic_string[abi:ne200100]<0>(&v64, "low");
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v57;
    }

    else
    {
      v15 = v57.__r_.__value_.__r.__words[0];
    }

    v16 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    v17 = v64.__r_.__value_.__r.__words[0];
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v64;
    }

    else
    {
      v18 = v64.__r_.__value_.__r.__words[0];
    }

    v19 = strcasecmp(v15, v18);
    if (v16 < 0)
    {
      operator delete(v17);
    }

    v20 = this;
    v21 = v2;
    if (!v19)
    {
      goto LABEL_41;
    }

    std::string::basic_string[abi:ne200100]<0>(&v64, "high");
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v57;
    }

    else
    {
      v22 = v57.__r_.__value_.__r.__words[0];
    }

    v23 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    v24 = v64.__r_.__value_.__r.__words[0];
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v64;
    }

    else
    {
      v25 = v64.__r_.__value_.__r.__words[0];
    }

    v26 = strcasecmp(v22, v25);
    if (v23 < 0)
    {
      operator delete(v24);
    }

    v21 = v53;
    v20 = (v2 + 16);
    if (!v26)
    {
      goto LABEL_41;
    }

    std::string::basic_string[abi:ne200100]<0>(&v64, "medium");
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v57;
    }

    else
    {
      v27 = v57.__r_.__value_.__r.__words[0];
    }

    v28 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    v29 = v64.__r_.__value_.__r.__words[0];
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v64;
    }

    else
    {
      v30 = v64.__r_.__value_.__r.__words[0];
    }

    v31 = strcasecmp(v27, v30);
    if (v28 < 0)
    {
      operator delete(v29);
    }

    v20 = (v2 + 4);
    v21 = v52;
    if (!v31)
    {
LABEL_41:
      *v20 = v14 | (v13 << 32);
      *v21 = 1;
    }

    goto LABEL_56;
  }

LABEL_81:
  if (*v2 == 1)
  {
    if (NumericalRange<int>::overlaps(this, v51) && (*v52 & 1) != 0)
    {
      v42 = 16;
      v44 = v2 + 4;
      v43 = v52;
    }

    else
    {
      if (!NumericalRange<int>::overlaps(this, v54) || *v53 != 1)
      {
        goto LABEL_92;
      }

      v42 = 28;
      v43 = v53;
      v44 = v2 + 16;
    }

    v45 = *(this + 1);
    v46 = v45 + 1;
    if (v45 + 1 > *(this + v42))
    {
      v47 = v45 + 1;
    }

    else
    {
      v47 = *(this + v42);
    }

    *v44 = v46;
    *(this + v42) = v47;
    *v43 = 1;
  }

LABEL_92:
  if (*v52 == 1 && NumericalRange<int>::overlaps(v51, v54) && *v53 == 1)
  {
    v48 = *(this + 4);
    v49 = v48 + 1;
    if (v48 + 1 > *(this + 7))
    {
      v50 = v48 + 1;
    }

    else
    {
      v50 = *(this + 7);
    }

    *(this + 6) = v49;
    *(this + 7) = v50;
    *(this + 32) = 1;
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  v64.__r_.__value_.__r.__words[0] = &v61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v64);
}

void sub_1E5034BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, char *a27, uint64_t a28, char a29)
{
  if (*(v29 - 97) < 0)
  {
    operator delete(*(v29 - 120));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  a26 = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

BOOL SpamRiskMap::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (!*(a2 + 8) || *a1 != *a2 || *(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 20);
  if (*(a1 + 20) == 1)
  {
    if (!*(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a2 + 32) && *(a1 + 24) == *(a2 + 24))
    {
      return *(a1 + 28) == *(a2 + 28);
    }

    return 0;
  }

  return *(a2 + 32) == 0;
}

uint64_t NumericalRange<int>::overlaps(int *a1, int *a2)
{
  v2 = *(a2 + 8);
  if ((a1[2] & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      return v2;
    }

    v4 = *a1;
    v3 = *a2;
    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    v4 = *a1;
    v3 = *a2;
    goto LABEL_16;
  }

  v3 = *a2;
  v4 = *a1;
  if (*a1 <= *a2)
  {
    v5 = a1[1];
    if (v5 >= v3)
    {
      v9 = a2[1];
      if (v4 <= v9 && v5 >= v9)
      {
        return 1;
      }
    }
  }

  if (v3 > v4 || (v6 = a2[1], v6 < v4))
  {
LABEL_13:
    if (v4 <= v3)
    {
      v7 = a1[1];
      v6 = a2[1];
      goto LABEL_26;
    }

    LODWORD(v2) = 1;
LABEL_16:
    v7 = a1[1];
    v6 = a2[1];
    goto LABEL_17;
  }

  v7 = a1[1];
  if (v3 <= v7 && v6 >= v7)
  {
    return 1;
  }

  if (v4 <= v3)
  {
LABEL_26:
    v2 = 1;
    if (v3 <= v7 && v6 >= v7)
    {
      return v2;
    }

    goto LABEL_17;
  }

  LODWORD(v2) = 1;
LABEL_17:
  if (v7 < v6)
  {
    LODWORD(v2) = 0;
  }

  if (v3 > v4)
  {
    LODWORD(v2) = 0;
  }

  if (v6 >= v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SpamRiskMap::classifyRisk(SpamRiskMap *this, int a2)
{
  if (*(this + 8) == 1 && *this <= a2 && *(this + 1) >= a2)
  {
    return 1;
  }

  if (*(this + 20) == 1 && *(this + 3) <= a2 && *(this + 4) >= a2)
  {
    return 2;
  }

  if (*(this + 32) != 1 || *(this + 6) > a2)
  {
    return 0;
  }

  if (*(this + 7) >= a2)
  {
    return 3;
  }

  return 0;
}

uint64_t SDPMediaFingerprint::SDPMediaFingerprint(uint64_t a1, __int128 *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fingerprint");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v10;
  }

  *a1 = &unk_1F5EEA4C8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v6;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_1E5034FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 63) < 0)
  {
    operator delete(*v18);
  }

  *v15 = v17;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaFingerprint::SDPMediaFingerprint(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 16) = __p;
  }

  *a1 = &unk_1F5EEA4C8;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  return a1;
}

void sub_1E5035164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 63) < 0)
  {
    operator delete(*v17);
  }

  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaFingerprint::~SDPMediaFingerprint(void **this)
{
  *this = &unk_1F5EEA4C8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaFingerprint::~SDPMediaFingerprint(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaFingerprint::value(SDPMediaFingerprint *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) >= 0)
  {
    v4 = *(this + 63);
  }

  else
  {
    v4 = *(this + 6);
  }

  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v4 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 63) >= 0)
    {
      v6 = this + 40;
    }

    else
    {
      v6 = *(this + 5);
    }

    memmove(p_p, v6, v4);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v4) = 32;
  v9 = *(this + 8);
  v8 = this + 64;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5035374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::DeviceEvent::eventWithName(uint64_t *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 <= 0x12)
    {
      if (v2 != 10)
      {
        if (v2 != 11)
        {
          v3 = a1;
          if (v2 != 18)
          {
            goto LABEL_171;
          }

          goto LABEL_164;
        }

        if (*a1 != 0x7265736E496D6953 || *(a1 + 3) != 0x6465747265736E49)
        {
          if (*a1 != 0x6261736944627553 || *(a1 + 3) != 0x64656C6261736944)
          {
            goto LABEL_171;
          }

          return 256;
        }

        return 1;
      }

      if (*a1 != 0x6165526F69647541 || *(a1 + 4) != 31076)
      {
        if (*a1 != 0x6C62616E45627553 || *(a1 + 4) != 25701)
        {
          goto LABEL_171;
        }

        return 512;
      }

      return 8;
    }

    if (v2 != 19)
    {
      if (v2 != 20)
      {
        if (v2 != 21)
        {
          goto LABEL_171;
        }

        v7 = *a1 == 0x4E676E6976726553 && a1[1] == 0x68436B726F777465;
        if (!v7 || *(a1 + 13) != 0x6465676E6168436BLL)
        {
          goto LABEL_171;
        }

        return 128;
      }

      if (*a1 != 0x654E737365636341 || a1[1] != 0x6168436B726F7774 || *(a1 + 4) != 1684367214)
      {
        if (*a1 != 0x6E61484343565253 || a1[1] != 0x6174537265766F64 || *(a1 + 4) != 1684370546)
        {
          if (*a1 != 0x656E616C70726941 || a1[1] != 0x6173694465646F4DLL || *(a1 + 4) != 1684368482)
          {
            goto LABEL_171;
          }

          return 64;
        }

        return 16;
      }

      return 4;
    }

    if (*a1 != 0x656E616C70726941 || a1[1] != 0x67676F5465646F4DLL || *(a1 + 11) != 0x64656C67676F5465)
    {
      if (*a1 != 0x656E616C70726941 || a1[1] != 0x62616E4565646F4DLL || *(a1 + 11) != 0x64656C62616E4565)
      {
        goto LABEL_171;
      }

      return 32;
    }

    return 2;
  }

  v4 = a1[1];
  if (v4 <= 18)
  {
    if (v4 == 10)
    {
      if (**a1 == 0x6165526F69647541 && *(*a1 + 8) == 31076)
      {
        return 8;
      }
    }

    else if (v4 == 11 && **a1 == 0x7265736E496D6953 && *(*a1 + 3) == 0x6465747265736E49)
    {
      return 1;
    }
  }

  else
  {
    switch(v4)
    {
      case 19:
        if (**a1 == 0x656E616C70726941 && *(*a1 + 8) == 0x67676F5465646F4DLL && *(*a1 + 11) == 0x64656C67676F5465)
        {
          return 2;
        }

        break;
      case 20:
        v27 = *a1;
        if (**a1 == 0x654E737365636341 && *(*a1 + 8) == 0x6168436B726F7774 && *(*a1 + 16) == 1684367214)
        {
          return 4;
        }

        v30 = *v27;
        v31 = v27[1];
        v32 = *(v27 + 4);
        if (v30 == 0x6E61484343565253 && v31 == 0x6174537265766F64 && v32 == 1684370546)
        {
          return 16;
        }

        break;
      case 21:
        v5 = **a1 == 0x4E676E6976726553 && *(*a1 + 8) == 0x68436B726F777465;
        if (v5 && *(*a1 + 13) == 0x6465676E6168436BLL)
        {
          return 128;
        }

        break;
    }
  }

  if (a1[1] == 19)
  {
    v36 = **a1 == 0x656E616C70726941 && *(*a1 + 8) == 0x62616E4565646F4DLL;
    if (v36 && *(*a1 + 11) == 0x64656C62616E4565)
    {
      return 32;
    }
  }

  if (a1[1] == 20)
  {
    v38 = **a1 == 0x656E616C70726941 && *(*a1 + 8) == 0x6173694465646F4DLL;
    if (v38 && *(*a1 + 16) == 1684368482)
    {
      return 64;
    }
  }

  if (a1[1] == 10 && **a1 == 0x6C62616E45627553 && *(*a1 + 8) == 25701)
  {
    return 512;
  }

  v41 = a1[1];
  if (v41 != 18)
  {
    if (v41 != 11)
    {
      goto LABEL_171;
    }

    if (**a1 != 0x6261736944627553 || *(*a1 + 3) != 0x64656C6261736944)
    {
      goto LABEL_171;
    }

    return 256;
  }

  v3 = *a1;
LABEL_164:
  v43 = *v3;
  v44 = v3[1];
  v45 = *(v3 + 8);
  if (v43 == 0x6F646E6148534D49 && v44 == 0x7472617453726576 && v45 == 25701)
  {
    return 1024;
  }

LABEL_171:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "IMSHandoverCompleted"))
  {
    return 2048;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "KeepAliveWakeup"))
  {
    return 4096;
  }

  return 0;
}

const char *ims::DeviceEvent::nameForEvent(ims::DeviceEvent *this)
{
  if (this <= 63)
  {
    if (this > 7)
    {
      switch(this)
      {
        case 8:
          return "AudioReady";
        case 0x10:
          return "SRVCCHandoverStarted";
        case 0x20:
          return "AirplaneModeEnabled";
      }
    }

    else
    {
      switch(this)
      {
        case 1:
          return "SimInserted";
        case 2:
          return "AirplaneModeToggled";
        case 4:
          return "AccessNetworkChanged";
      }
    }
  }

  else if (this <= 511)
  {
    switch(this)
    {
      case 0x40:
        return "AirplaneModeDisabled";
      case 0x80:
        return "ServingNetworkChanged";
      case 0x100:
        return "SubDisabled";
    }
  }

  else if (this > 2047)
  {
    if (this == 2048)
    {
      return "IMSHandoverCompleted";
    }

    if (this == 4096)
    {
      return "KeepAliveWakeup";
    }
  }

  else
  {
    if (this == 512)
    {
      return "SubEnabled";
    }

    if (this == 1024)
    {
      return "IMSHandoverStarted";
    }
  }

  return &str_13_5;
}

uint64_t ims::Services::serviceWithName(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    v4 = a1[1];
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (**a1 == 1633906793 && *(*a1 + 4) == 27756)
        {
          return 16;
        }

        goto LABEL_90;
      }

      if (v4 != 9)
      {
LABEL_90:
        if (a1[1] == 4 && **a1 == 1954047348)
        {
          return 32;
        }

        if (a1[1] != 3 || (**a1 == 25970 ? (v26 = *(*a1 + 2) == 103) : (v26 = 0), !v26))
        {
          if (a1[1] == 11 && **a1 == 0x6150696C757A616CLL && *(*a1 + 3) == 0x7265676150696C75)
          {
            return 128;
          }

          v28 = a1[1];
          if (v28 != 10)
          {
            if (v28 != 5)
            {
              goto LABEL_119;
            }

            if (**a1 != 1701273968 || *(*a1 + 4) != 114)
            {
              goto LABEL_119;
            }

            return 128;
          }

          v18 = *a1;
          goto LABEL_115;
        }

        return 64;
      }

      v15 = *(*a1 + 8);
      v16 = **a1 == 0x6E6967617373656DLL;
      v17 = 103;
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 5)
        {
          v5 = *a1;
          if (**a1 == 1667854198 && *(*a1 + 4) == 101)
          {
            return 1;
          }

          if (*v5 == 1768191329 && *(v5 + 4) == 111)
          {
            return 8;
          }

          v8 = *v5;
          v9 = *(v5 + 4);
          if (v8 == 1701079414 && v9 == 111)
          {
            return 2;
          }
        }

        goto LABEL_90;
      }

      v15 = *(*a1 + 2);
      v16 = **a1 == 28019;
      v17 = 115;
    }

    if (v16 && v15 == v17)
    {
      return 4;
    }

    goto LABEL_90;
  }

  v2 = *(a1 + 23);
  if (v2 > 5)
  {
    if (*(a1 + 23) <= 9u)
    {
      if (v2 != 6)
      {
        if (v2 != 9)
        {
          goto LABEL_119;
        }

        if (*a1 != 0x6E6967617373656DLL || *(a1 + 8) != 103)
        {
          goto LABEL_119;
        }

        return 4;
      }

      if (*a1 != 1633906793 || *(a1 + 2) != 27756)
      {
        goto LABEL_119;
      }

      return 16;
    }

    v18 = a1;
    if (v2 != 10)
    {
      if (v2 != 11)
      {
        goto LABEL_119;
      }

      if (*a1 != 0x6150696C757A616CLL || *(a1 + 3) != 0x7265676150696C75)
      {
        goto LABEL_119;
      }

      return 128;
    }

LABEL_115:
    v30 = *v18;
    v31 = *(v18 + 4);
    if (v30 == 0x6843696C757A616CLL && v31 == 29793)
    {
      return 256;
    }

    goto LABEL_119;
  }

  switch(v2)
  {
    case 3u:
      if (*a1 == 28019 && *(a1 + 2) == 115)
      {
        return 4;
      }

      if (*a1 != 25970 || *(a1 + 2) != 103)
      {
        break;
      }

      return 64;
    case 4u:
      if (*a1 != 1954047348)
      {
        break;
      }

      return 32;
    case 5u:
      if (*a1 != 1667854198 || *(a1 + 4) != 101)
      {
        if (*a1 != 1768191329 || *(a1 + 4) != 111)
        {
          if (*a1 != 1701079414 || *(a1 + 4) != 111)
          {
            if (*a1 != 1701273968 || *(a1 + 4) != 114)
            {
              break;
            }

            return 128;
          }

          return 2;
        }

        return 8;
      }

      return 1;
  }

LABEL_119:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "chat"))
  {
    return 256;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliChatbot") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "chatbot"))
  {
    return 512;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliCpmOnly") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "cpm"))
  {
    return 1024;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliLargeMsgOnly") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "large"))
  {
    return 2048;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliFileXfer") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "file"))
  {
    return 4096;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliGeoPush") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "geo"))
  {
    return 0x2000;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliImage") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "img"))
  {
    return 0x4000;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliVideo") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "vid"))
  {
    return 0x8000;
  }

  v33 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "lazuliE2ee");
  result = 0x10000;
  if (!v33)
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "e2ee"))
    {
      return 0x10000;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *ims::Services::nameForService(int a1)
{
  if (a1 <= 255)
  {
    if (a1 > 15)
    {
      if (a1 > 63)
      {
        if (a1 == 64)
        {
          return "reg";
        }

        if (a1 == 128)
        {
          return "lazuliPager";
        }
      }

      else
      {
        if (a1 == 16)
        {
          return "ipcall";
        }

        if (a1 == 32)
        {
          return "text";
        }
      }
    }

    else if (a1 > 3)
    {
      if (a1 == 4)
      {
        return "sms";
      }

      if (a1 == 8)
      {
        return "audio";
      }
    }

    else
    {
      if (a1 == 1)
      {
        return "voice";
      }

      if (a1 == 2)
      {
        return "video";
      }
    }
  }

  else if (a1 <= 4095)
  {
    if (a1 > 1023)
    {
      if (a1 == 1024)
      {
        return "lazuliCpmOnly";
      }

      if (a1 == 2048)
      {
        return "lazuliLargeMsgOnly";
      }
    }

    else
    {
      if (a1 == 256)
      {
        return "lazuliChat";
      }

      if (a1 == 512)
      {
        return "lazuliChatbot";
      }
    }
  }

  else if (a1 < 0x4000)
  {
    if (a1 == 4096)
    {
      return "lazuliFileXfer";
    }

    if (a1 == 0x2000)
    {
      return "lazuliGeoPush";
    }
  }

  else
  {
    switch(a1)
    {
      case 0x4000:
        return "lazuliImage";
      case 0x8000:
        return "lazuliVideo";
      case 0x10000:
        return "lazuliE2ee";
    }
  }

  return "none";
}

void ims::Services::namesForMask(ims::Services *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if ((this & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "voice"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "audio");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  if ((v2 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "video"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sms");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  if ((v2 & 0x10) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "ipcall"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "text");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  if ((v2 & 0x40) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "reg"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuliPager");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_25:
  if ((v2 & 0x100) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "lazuliChat"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuliChatbot");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  if ((v2 & 0x400) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "lazuliCpmOnly"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_37;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuliLargeMsgOnly");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  if ((v2 & 0x1000) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "lazuliFileXfer"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_43;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuliGeoPush");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_43:
  if ((v2 & 0x4000) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "lazuliImage"), std::vector<std::string>::push_back[abi:ne200100](&v15, __p), v14 < 0))
  {
    operator delete(__p[0]);
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_49;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lazuliVideo");
  std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_49:
  if ((v2 & 0x10000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "lazuliE2ee");
    std::vector<std::string>::push_back[abi:ne200100](&v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = v15;
  if (v15 == v16)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, &str_13_5);
  }

  else
  {
    v5 = v16 - v15;
    if (v16 - v15 == 24)
    {
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a2, *v15, *(v15 + 1));
      }

      else
      {
        v6 = *v15;
        a2->__r_.__value_.__r.__words[2] = *(v15 + 2);
        *&a2->__r_.__value_.__l.__data_ = v6;
      }
    }

    else
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a2, *v4, *(v4 + 1));
        v5 = v16 - v15;
      }

      else
      {
        v7 = *v4;
        a2->__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&a2->__r_.__value_.__l.__data_ = v7;
      }

      if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 2)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          std::string::append(a2, ",", 1uLL);
          v10 = *(v15 + v8 + 47);
          if (v10 >= 0)
          {
            v11 = v15 + v8 + 24;
          }

          else
          {
            v11 = *(v15 + v8 + 24);
          }

          if (v10 >= 0)
          {
            v12 = *(v15 + v8 + 47);
          }

          else
          {
            v12 = *(v15 + v8 + 32);
          }

          std::string::append(a2, v11, v12);
          ++v9;
          v8 += 24;
        }

        while (v9 < 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
      }
    }
  }

  __p[0] = &v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1E5036748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

char *ims::categoryToUrn(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 6)
  {
    return &str_13_5;
  }

  else
  {
    return off_1E876BF60[v1];
  }
}

const char *ims::asString(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    return "???";
  }

  else
  {
    return off_1E876BF98[v1];
  }
}

_BYTE *ims::asString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 2)
  {
    v2 = "0";
  }

  else
  {
    v2 = off_1E876BFE8[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t SDPMedia::SDPMedia(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EEA520;
  *(a1 + 12) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a1 + 88;
  *(a1 + 96) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 136;
  *(a1 + 144) = a1 + 136;
  *(a1 + 152) = 0;
  SDPPreconditionTable::SDPPreconditionTable((a1 + 160), 1);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return a1;
}

void sub_1E503695C(_Unwind_Exception *a1)
{
  v6 = v4;
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::clear(v6);
  std::__list_imp<SDPRepeatTime>::clear(v5);
  std::__list_imp<SDPRepeatTime>::clear(v3);
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  std::__list_imp<SDPMediaFormatInfo>::clear(v2);
  _Unwind_Resume(a1);
}

void SDPMedia::SDPMedia(SDPMedia *this, const SDPMedia *a2, SDPModel *a3)
{
  *(this + 8) = 1;
  *this = &unk_1F5EEA520;
  *(this + 3) = *(a2 + 3);
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 7) = 0;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 14) = this + 112;
  *(this + 15) = this + 112;
  *(this + 16) = 0;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  SDPPreconditionTable::SDPPreconditionTable((this + 160), a2 + 20);
  *(this + 184) = *(a2 + 184);
  *(this + 24) = a3;
  if (*(a2 + 12) != (a2 + 88))
  {
    std::__list_imp<SDPConnection>::__create_node[abi:ne200100]<SDPConnection const&>();
  }

  if (*(a2 + 15) != (a2 + 112))
  {
    operator new();
  }

  if (*(a2 + 6) != (a2 + 40))
  {
    std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>();
  }

  SDPMedia::copyAttributes(this, a2);
}

void SDPMedia::copyAttributes(SDPMedia *this, const SDPMedia *a2)
{
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::clear(this + 34);
  v4 = a2 + 136;
  for (i = *(a2 + 18); i != v4; i = *(i + 8))
  {
    v7[0] = this;
    v7[1] = this;
    v7[2] = this;
    v7[3] = this;
    v7[4] = this;
    v7[5] = this;
    v7[6] = this;
    v7[7] = this;
    v7[8] = this;
    v7[9] = this;
    v7[10] = this;
    v7[11] = this;
    v7[12] = this;
    v7[13] = this;
    v6 = *(i + 136);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v8 = v7;
    (off_1F5EEA588[v6])(&v8, i + 16);
  }
}

void SDPMedia::SDPMedia(SDPMedia *this, const SDPMedia *a2)
{
  *(this + 8) = 1;
  *this = &unk_1F5EEA520;
  *(this + 3) = *(a2 + 3);
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 7) = 0;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v4 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v4;
  }

  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 14) = this + 112;
  *(this + 15) = this + 112;
  *(this + 16) = 0;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  SDPPreconditionTable::SDPPreconditionTable((this + 160), a2 + 20);
  *(this + 184) = *(a2 + 184);
  *(this + 24) = *(a2 + 24);
  if (*(a2 + 12) != (a2 + 88))
  {
    std::__list_imp<SDPConnection>::__create_node[abi:ne200100]<SDPConnection const&>();
  }

  if (*(a2 + 15) != (a2 + 112))
  {
    operator new();
  }

  if (*(a2 + 6) != (a2 + 40))
  {
    std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>();
  }

  SDPMedia::copyAttributes(this, a2);
}

uint64_t SDPMedia::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    std::string::operator=((a1 + 64), (a2 + 64));
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    std::__list_imp<SDPMediaFormatInfo>::clear((a1 + 40));
    if (*(a2 + 48) != a2 + 40)
    {
      std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>();
    }

    std::__list_imp<SDPRepeatTime>::clear((a1 + 88));
    if (*(a2 + 96) != a2 + 88)
    {
      std::__list_imp<SDPConnection>::__create_node[abi:ne200100]<SDPConnection const&>();
    }

    std::__list_imp<SDPRepeatTime>::clear((a1 + 112));
    if (*(a2 + 120) != a2 + 112)
    {
      operator new();
    }

    SDPMedia::copyAttributes(a1, a2);
    std::vector<SDPPreconditionRow>::__assign_with_size[abi:ne200100]<SDPPreconditionRow*,SDPPreconditionRow*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 2));
  }

  return a1;
}

void SDPMedia::~SDPMedia(SDPMedia *this)
{
  *this = &unk_1F5EEA520;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::clear(this + 34);
  std::__list_imp<SDPRepeatTime>::clear(this + 14);
  std::__list_imp<SDPRepeatTime>::clear(this + 11);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__list_imp<SDPMediaFormatInfo>::clear(this + 5);
}

{
  SDPMedia::~SDPMedia(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMedia::toStream(SDPMedia *this, ImsOutStream *a2)
{
  v4 = *(a2 + 1);
  LOBYTE(__p[0]) = 109;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __p, 1);
  *(a2 + 17) = 0;
  v5 = *(a2 + 1);
  LOBYTE(__p[0]) = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 40))(a2, __p);
  v6 = *(a2 + 1);
  LOBYTE(v24[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v24, 1);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 2));
  *(a2 + 17) = 0;
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 3))
  {
    v7 = *(a2 + 1);
    LOBYTE(__p[0]) = 47;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, __p, 1);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923370](*(a2 + 1), *(this + 3));
    *(a2 + 17) = 0;
  }

  v8 = *(a2 + 1);
  LOBYTE(__p[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, __p, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 40))(a2, __p);
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 8) - 7) <= 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " *", 2);
    *(a2 + 17) = 0;
  }

  v9 = this + 40;
  v10 = *(this + 6);
  if (v10 != (this + 40))
  {
    do
    {
      if (*(v10 + 24) != 255)
      {
        v11 = *(a2 + 1);
        LOBYTE(__p[0]) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __p, 1);
        *(a2 + 17) = 0;
        MEMORY[0x1E6923390](*(a2 + 1), *(v10 + 24));
        *(a2 + 17) = 0;
      }

      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }

  if (*(this + 2) || *(this + 3) == 2)
  {
    if (*(this + 87) < 0)
    {
      if (!*(this + 9))
      {
LABEL_21:
        for (i = *(this + 12); i != (this + 88); i = *(v15 - 1))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
          *(a2 + 17) = 0;
          v16 = i[2];
          v15 = i + 2;
          (*(v16 + 16))(v15, a2);
        }

        for (j = *(this + 15); j != (this + 112); j = j[1])
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
          *(a2 + 17) = 0;
          isHeld = SDPModel::isHeld(*(this + 24));
          SDPBandwidth::toStream((j + 2), a2, isHeld);
        }

        goto LABEL_25;
      }
    }

    else if (!*(this + 87))
    {
      goto LABEL_21;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
    v12 = *(a2 + 1);
    LOBYTE(__p[0]) = 105;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, __p, 1);
    *(a2 + 17) = 0;
    v13 = *(a2 + 1);
    LOBYTE(__p[0]) = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, __p, 1);
    *(a2 + 17) = 0;
    LoggableString::LoggableString(__p, (this + 64));
    (*(*a2 + 40))(a2, __p);
    if (SBYTE7(v26) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_21;
  }

LABEL_25:
  if ((*(this + 184) & 1) != 0 || *(this + 2) || *(this + 3) == 2)
  {
    v19 = *(this + 6);
    if (v19 != v9)
    {
      while (*(v19 + 24) == 255)
      {
LABEL_35:
        v19 = *(v19 + 8);
        if (v19 == v9)
        {
          goto LABEL_39;
        }
      }

      if ((*(v19 + 103) & 0x8000000000000000) != 0)
      {
        if (!*(v19 + 88))
        {
          goto LABEL_33;
        }
      }

      else if (!*(v19 + 103))
      {
LABEL_33:
        __p[0] = a2;
        __p[1] = a2;
        *&v26 = a2;
        *(&v26 + 1) = a2;
        v27 = a2;
        v28 = a2;
        v20 = *(v19 + 232);
        if (v20 == -1)
        {
          goto LABEL_50;
        }

        v24[0] = __p;
        (off_1F5EEA908[v20])(v24, v19 + 112);
        goto LABEL_35;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
      *(a2 + 17) = 0;
      SDPAttribute::toStream((v19 + 32), a2);
      goto LABEL_33;
    }

LABEL_39:
    if (*(this + 2) || *(this + 3) == 2)
    {
      v21 = *(this + 18);
      if (v21 != (this + 136))
      {
        while (1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
          *(a2 + 17) = 0;
          __p[0] = a2;
          __p[1] = a2;
          *&v26 = a2;
          *(&v26 + 1) = a2;
          v27 = a2;
          v28 = a2;
          v29 = a2;
          v22 = *(v21 + 136);
          if (v22 == -1)
          {
            break;
          }

          v24[0] = __p;
          (off_1F5EEA620[v22])(v24, v21 + 16);
          v21 = *(v21 + 8);
          if (v21 == (this + 136))
          {
            goto LABEL_44;
          }
        }

LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_44:
      for (k = *(this + 20); k != *(this + 21); k += 20)
      {
        if (*(k + 16) > 0)
        {
          v27 = 0;
          *__p = 0u;
          v26 = 0u;
          ImsStringOutStream::ImsStringOutStream(__p);
        }
      }
    }
  }
}

void sub_1E50377CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void *SDPMedia::setPort(SDPMedia *this, uint64_t a2)
{
  v2 = a2;
  *(this + 2) = a2;
  SDPMedia::mediaCandidateList(this, v7);
  for (i = v7[1]; i != v7; i = i[1])
  {
    v4 = i[2];
    if (*(v4 + 40) == 2)
    {
      v5 = v2 + 1;
    }

    else
    {
      v5 = v2;
    }

    *(v4 + 72) = v5;
  }

  return std::__list_imp<unsigned long long>::clear(v7);
}

uint64_t SDPMedia::mediaCandidateList@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  for (i = *(this + 144); i != this + 136; i = *(i + 8))
  {
    if (*(i + 136) == 2)
    {
      operator new();
    }
  }

  return this;
}

void SDPMedia::setPacketizationTime(SDPMedia *this, __int16 a2)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(__p, "ptime");
    SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(v9, __p, a2, 0);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPPacketizationTimeAttribute>();
  }

  while (1)
  {
    if (*(v4 + 136) != 13)
    {
      goto LABEL_21;
    }

    (*(*(v4 + 16) + 32))(v9);
    if (v10 < 0)
    {
      break;
    }

    if (v10 == 5 && LODWORD(v9[0]) == 1835627632 && BYTE4(v9[0]) == 101)
    {
      goto LABEL_23;
    }

LABEL_21:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_22;
    }
  }

  if (v9[1] != 5)
  {
    operator delete(v9[0]);
    goto LABEL_21;
  }

  v7 = *v9[0] != 1835627632 || *(v9[0] + 4) != 101;
  operator delete(v9[0]);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_23:
  *(v4 + 56) = a2;
}

void sub_1E5037B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMedia::packetizationTime(SDPMedia *this)
{
  v1 = this + 136;
  v2 = *(this + 18);
  if (v2 == (this + 136))
  {
    return 20;
  }

  while (1)
  {
    if (*(v2 + 136) != 13)
    {
      goto LABEL_21;
    }

    (*(*(v2 + 16) + 32))(v7);
    if (v8 < 0)
    {
      break;
    }

    if (v8 == 5 && LODWORD(v7[0]) == 1835627632 && BYTE4(v7[0]) == 101)
    {
      return *(v2 + 56);
    }

LABEL_21:
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      return 20;
    }
  }

  if (v7[1] != 5)
  {
    operator delete(v7[0]);
    goto LABEL_21;
  }

  v5 = *v7[0] != 1835627632 || *(v7[0] + 4) != 101;
  operator delete(v7[0]);
  if (v5)
  {
    goto LABEL_21;
  }

  return *(v2 + 56);
}

void SDPMedia::setAcceptTypes(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 136;
  v4 = *(a1 + 144);
  if (v4 == a1 + 136)
  {
LABEL_22:
    SDPMediaAcceptTypes::SDPMediaAcceptTypes(&v8, a2);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaAcceptTypes>();
  }

  while (1)
  {
    if (*(v4 + 136) != 15)
    {
      goto LABEL_21;
    }

    (*(*(v4 + 16) + 32))(&v8);
    if (v10 < 0)
    {
      break;
    }

    if (v10 == 12 && v8 == 0x742D747065636361 && v9 == 1936027769)
    {
      goto LABEL_24;
    }

LABEL_21:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_22;
    }
  }

  if (v9 != 12)
  {
    operator delete(v8);
    goto LABEL_21;
  }

  v7 = *v8 != 0x742D747065636361 || *(v8 + 2) != 1936027769;
  operator delete(v8);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_24:
  if (v4 + 56 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 56), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }
}

void SDPMedia::acceptTypes(SDPMedia *this@<X0>, void *a2@<X8>)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_22:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  while (1)
  {
    if (*(v4 + 136) != 15)
    {
      goto LABEL_21;
    }

    (*(*(v4 + 16) + 32))(&v8);
    if (v10 < 0)
    {
      break;
    }

    if (v10 == 12 && v8 == 0x742D747065636361 && v9 == 1936027769)
    {
      goto LABEL_23;
    }

LABEL_21:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_22;
    }
  }

  if (v9 != 12)
  {
    operator delete(v8);
    goto LABEL_21;
  }

  v7 = *v8 != 0x742D747065636361 || *(v8 + 2) != 1936027769;
  operator delete(v8);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_23:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(v4 + 56), *(v4 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 64) - *(v4 + 56)) >> 3));
}

void SDPMedia::setAcceptWrappedTypes(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 136;
  v4 = *(a1 + 144);
  if (v4 == a1 + 136)
  {
LABEL_28:
    SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(&v10, a2);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaAcceptWrappedTypes>();
  }

  while (1)
  {
    if (*(v4 + 136) != 16)
    {
      goto LABEL_27;
    }

    (*(*(v4 + 16) + 32))(&v10);
    if (v13 < 0)
    {
      break;
    }

    if (v13 == 20)
    {
      v5 = v10 == 0x772D747065636361 && v11 == 0x742D646570706172;
      if (v5 && v12 == 1936027769)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_28;
    }
  }

  if (v11 != 20)
  {
    operator delete(v10);
    goto LABEL_27;
  }

  v9 = *v10 != 0x772D747065636361 || v10[1] != 0x742D646570706172 || *(v10 + 4) != 1936027769;
  operator delete(v10);
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (v4 + 56 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 56), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }
}

void SDPMedia::acceptWrappedTypes(SDPMedia *this@<X0>, void *a2@<X8>)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_28:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  while (1)
  {
    if (*(v4 + 136) != 16)
    {
      goto LABEL_27;
    }

    (*(*(v4 + 16) + 32))(&v10);
    if (v13 < 0)
    {
      break;
    }

    if (v13 == 20)
    {
      v5 = v10 == 0x772D747065636361 && v11 == 0x742D646570706172;
      if (v5 && v12 == 1936027769)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_28;
    }
  }

  if (v11 != 20)
  {
    operator delete(v10);
    goto LABEL_27;
  }

  v9 = *v10 != 0x772D747065636361 || v10[1] != 0x742D646570706172 || *(v10 + 4) != 1936027769;
  operator delete(v10);
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_29:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(v4 + 56), *(v4 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 64) - *(v4 + 56)) >> 3));
}

LazuliRouteSet *SDPMedia::setPath(SDPMedia *this, const LazuliRouteSet *a2)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_12:
    SDPMediaPath::SDPMediaPath(v7, a2);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaPath>();
  }

  while (1)
  {
    if (*(v4 + 136) == 14)
    {
      (*(*(v4 + 16) + 32))(v7);
      if (v8 < 0)
      {
        if (v7[1] == 4)
        {
          v5 = *v7[0];
          operator delete(v7[0]);
          if (v5 == 1752457584)
          {
            return LazuliRouteSet::operator=((v4 + 56), a2);
          }
        }

        else
        {
          operator delete(v7[0]);
        }

        goto LABEL_11;
      }

      if (v8 == 4 && LODWORD(v7[0]) == 1752457584)
      {
        return LazuliRouteSet::operator=((v4 + 56), a2);
      }
    }

LABEL_11:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }
}

void SDPMedia::path(SDPMedia *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_12:
    *a2 = &unk_1F5EF8000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    return;
  }

  while (1)
  {
    if (*(v4 + 136) != 14)
    {
      goto LABEL_11;
    }

    (*(*(v4 + 16) + 32))(v6);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    if (v6[1] == 4)
    {
      v5 = *v6[0];
      operator delete(v6[0]);
      if (v5 == 1752457584)
      {
        goto LABEL_13;
      }
    }

    else
    {
      operator delete(v6[0]);
    }

LABEL_11:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  if (v7 != 4 || LODWORD(v6[0]) != 1752457584)
  {
    goto LABEL_11;
  }

LABEL_13:
  LazuliRouteSet::LazuliRouteSet(a2, (v4 + 56));
}

std::string *SDPMedia::setSetupState(uint64_t a1, __int128 *a2)
{
  v3 = a1 + 136;
  v4 = *(a1 + 144);
  if (v4 == a1 + 136)
  {
LABEL_22:
    SDPMediaSetup::SDPMediaSetup(v9, a2);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaSetup>();
  }

  while (1)
  {
    if (*(v4 + 136) != 17)
    {
      goto LABEL_21;
    }

    (*(*(v4 + 16) + 32))(v9);
    if (v10 < 0)
    {
      break;
    }

    if (v10 == 5 && LODWORD(v9[0]) == 1970562419 && BYTE4(v9[0]) == 112)
    {
      return std::string::operator=((v4 + 56), a2);
    }

LABEL_21:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_22;
    }
  }

  if (v9[1] != 5)
  {
    operator delete(v9[0]);
    goto LABEL_21;
  }

  v7 = *v9[0] != 1970562419 || *(v9[0] + 4) != 112;
  operator delete(v9[0]);
  if (v7)
  {
    goto LABEL_21;
  }

  return std::string::operator=((v4 + 56), a2);
}

void SDPMedia::setupState(SDPMedia *this@<X0>, std::string *a2@<X8>)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_22:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  while (1)
  {
    if (*(v4 + 136) != 17)
    {
      goto LABEL_21;
    }

    (*(*(v4 + 16) + 32))(v9);
    if (v10 < 0)
    {
      break;
    }

    if (v10 == 5 && LODWORD(v9[0]) == 1970562419 && BYTE4(v9[0]) == 112)
    {
      goto LABEL_23;
    }

LABEL_21:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_22;
    }
  }

  if (v9[1] != 5)
  {
    operator delete(v9[0]);
    goto LABEL_21;
  }

  v7 = *v9[0] != 1970562419 || *(v9[0] + 4) != 112;
  operator delete(v9[0]);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (*(v4 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v4 + 56), *(v4 + 64));
  }

  else
  {
    v8 = *(v4 + 56);
    a2->__r_.__value_.__r.__words[2] = *(v4 + 72);
    *&a2->__r_.__value_.__l.__data_ = v8;
  }
}

std::string *SDPMedia::setFingerprint(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = a1 + 136;
  v6 = *(a1 + 144);
  if (v6 == a1 + 136)
  {
LABEL_22:
    SDPMediaFingerprint::SDPMediaFingerprint(&v11, a2, a3);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaFingerprint>();
  }

  while (1)
  {
    if (*(v6 + 136) != 18)
    {
      goto LABEL_21;
    }

    (*(*(v6 + 16) + 32))(&v11);
    if (v12 < 0)
    {
      break;
    }

    if (v12 == 11 && v11 == 0x72707265676E6966 && *(&v11 + 3) == 0x746E697270726567)
    {
      goto LABEL_23;
    }

LABEL_21:
    v6 = *(v6 + 8);
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (*(&v11 + 1) != 11)
  {
    operator delete(v11);
    goto LABEL_21;
  }

  v9 = *v11 != 0x72707265676E6966 || *(v11 + 3) != 0x746E697270726567;
  operator delete(v11);
  if (v9)
  {
    goto LABEL_21;
  }

LABEL_23:
  std::string::operator=((v6 + 56), a2);
  return std::string::operator=((v6 + 80), a3);
}

void sub_1E503888C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SDPMediaFingerprint::~SDPMediaFingerprint(va);
  _Unwind_Resume(a1);
}

void SDPMedia::setMaxPacketizationTime(SDPMedia *this, __int16 a2)
{
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(__p, "maxptime");
    SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(v7, __p, a2, 1);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPPacketizationTimeAttribute>();
  }

  while (1)
  {
    if (*(v4 + 136) == 13)
    {
      (*(*(v4 + 16) + 32))(v7);
      if (v8 < 0)
      {
        if (v7[1] == 8)
        {
          v5 = *v7[0];
          operator delete(v7[0]);
          if (v5 == 0x656D69747078616DLL)
          {
            break;
          }
        }

        else
        {
          operator delete(v7[0]);
        }

        goto LABEL_11;
      }

      if (v8 == 8 && v7[0] == 0x656D69747078616DLL)
      {
        break;
      }
    }

LABEL_11:
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  *(v4 + 56) = a2;
}

void sub_1E5038A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMedia::maxPacketizationTime(SDPMedia *this)
{
  v1 = this + 136;
  v2 = *(this + 18);
  if (v2 == (this + 136))
  {
    return 0;
  }

  while (1)
  {
    if (*(v2 + 136) != 13)
    {
      goto LABEL_11;
    }

    (*(*(v2 + 16) + 32))(v5);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (v5[1] == 8)
    {
      v3 = *v5[0];
      operator delete(v5[0]);
      if (v3 == 0x656D69747078616DLL)
      {
        return *(v2 + 56);
      }
    }

    else
    {
      operator delete(v5[0]);
    }

LABEL_11:
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      return 0;
    }
  }

  if (v6 != 8 || v5[0] != 0x656D69747078616DLL)
  {
    goto LABEL_11;
  }

  return *(v2 + 56);
}

void SDPMedia::addCandidateAttribute(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  SDPMediaCandidate::SDPMediaCandidate(v4, 1, &__p, *(a1 + 16));
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaCandidate>();
}

void sub_1E5038C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  SDPMediaCandidate::~SDPMediaCandidate(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SDPMedia::enableEncryption(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  if (*(a2 + 23) < 0 && *(a2 + 8) == 23)
  {
    v5 = **a2 == 0x315F4D435F534541 && *(*a2 + 8) == 0x5F43414D485F3832;
    if (v5 && *(*a2 + 15) == 0x30385F314148535FLL)
    {
      std::string::basic_string[abi:ne200100]<0>(&v18, "crypto");
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __p = v18;
      }

      v12 = 1;
      std::vector<unsigned char>::vector[abi:ne200100](v13, 30);
      v14 = 1;
      v15 = a3 ^ 1;
      v16 = a4 ^ 1;
      v17 = a5 ^ 1;
      std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaCrypto>();
    }
  }

  return 0;
}

void sub_1E5038E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  _Unwind_Resume(exception_object);
}

void SDPMedia::removePreconditions(SDPMedia *this)
{
  SDPPreconditionTable::SDPPreconditionTable(&__p, 1);
  if ((this + 160) != &__p)
  {
    std::vector<SDPPreconditionRow>::__assign_with_size[abi:ne200100]<SDPPreconditionRow*,SDPPreconditionRow*>(this + 20, __p, v3, 0xCCCCCCCCCCCCCCCDLL * ((v3 - __p) >> 2));
  }

  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_1E5038F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPMedia::valid(SDPMedia *this)
{
  v2 = this + 88;
  for (i = *(this + 12); i != v2; i = *(i + 8))
  {
    if (((*(*(i + 16) + 24))() & 1) == 0)
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(v38, "sdp.media");
      v34[0] = 0;
      v37 = 0;
      v13 = ims::debug(v12, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SDPMedia::valid() Invalid connection", 36);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v37 == 1 && v36 < 0)
      {
        v14 = v35;
        goto LABEL_34;
      }

LABEL_35:
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      return 0;
    }
  }

  if (*(this + 3) == 6)
  {
    v4 = *(this + 18);
    if (v4 != (this + 136))
    {
      while (1)
      {
        v5 = *(v4 + 136);
        if (v5 == -1)
        {
LABEL_39:
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v38[0] = &v33;
        if (((off_1F5EEA6B8[v5])(v38, v4 + 16) & 1) == 0)
        {
          break;
        }

        v4 = *(v4 + 8);
        if (v4 == (this + 136))
        {
          goto LABEL_10;
        }
      }

      v19 = std::string::basic_string[abi:ne200100]<0>(v38, "sdp.media");
      v29[0] = 0;
      v32 = 0;
      v20 = ims::debug(v19, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "SDPMedia::valid() Invalid attribute", 35);
      *(v20 + 17) = 0;
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (v32 != 1 || (v31 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v14 = __p;
LABEL_34:
      operator delete(v14);
      goto LABEL_35;
    }
  }

LABEL_10:
  v6 = *(this + 18);
  if (v6 != (this + 136))
  {
    while (1)
    {
      v7 = *(v6 + 136);
      if (v7 == -1)
      {
        goto LABEL_39;
      }

      v38[0] = &v33;
      if (((off_1F5EEA750[v7])(v38, v6 + 16) & 1) == 0)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == (this + 136))
      {
        goto LABEL_14;
      }
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(v38, "sdp.media");
    v25[0] = 0;
    v28 = 0;
    v16 = ims::debug(v15, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "SDPMedia::valid() Invalid attribute", 35);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v28 != 1 || (v27 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v14 = v26;
    goto LABEL_34;
  }

LABEL_14:
  v8 = *(this + 6);
  if (v8 != (this + 40))
  {
    while (1)
    {
      v9 = *(v8 + 232);
      if (v9 == -1)
      {
        goto LABEL_39;
      }

      v38[0] = &v33;
      v10 = (off_1F5EEA7E8[v9])(v38, v8 + 112);
      if (*(v8 + 24) > 0x7Fu || (v10 & 1) == 0)
      {
        break;
      }

      v8 = *(v8 + 8);
      if (v8 == (this + 40))
      {
        goto LABEL_19;
      }
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(v38, "sdp.media");
    v21[0] = 0;
    v24 = 0;
    v18 = ims::debug(v17, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPMedia::valid() Invalid mediaInfo", 35);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v24 != 1 || (v23 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v14 = v22;
    goto LABEL_34;
  }

LABEL_19:
  if (*(this + 8) == 1 && *(this + 3))
  {
    return *(this + 8) != 0;
  }

  return 0;
}

void sub_1E50393B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a38 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaFormatInfo::SDPMediaFormatInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EEA550;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_1F5EF7520;
  *(a1 + 64) = 0;
  *(a1 + 56) = 255;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x10000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 255;
  *(a1 + 96) = &unk_1F5EBF288;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 216) = 0;
  *(a1 + 24) = *(a2 + 24);
  std::string::operator=((a1 + 32), (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  v6[0] = a1;
  v6[1] = a1;
  v6[2] = a1;
  v6[3] = a1;
  v6[4] = a1;
  v6[5] = a1;
  v4 = *(a2 + 216);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = v6;
  (off_1F5EEA818[v4])(&v7, a2 + 96);
  return a1;
}

void sub_1E50395AC(_Unwind_Exception *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  SDPMediaRTPMap::~SDPMediaRTPMap(v1);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaFormatInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    std::string::operator=((a1 + 32), (a2 + 32));
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 64), (a2 + 64));
    *(a1 + 88) = *(a2 + 88);
    v6[0] = a1;
    v6[1] = a1;
    v6[2] = a1;
    v6[3] = a1;
    v6[4] = a1;
    v6[5] = a1;
    v4 = *(a2 + 216);
    if (v4 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v7 = v6;
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorI10overloadedIJZN18SDPMediaFormatInfoaSERKS7_E3__0ZNS7_aSES9_E3__1ZNS7_aSES9_E3__2ZNS7_aSES9_E3__3ZNS7_aSES9_E3__4ZNS7_aSES9_E3__5ZNS7_aSES9_E3__6EEEEJRKNS0_6__implIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEEEEEDcOT_DpOT0____fmatrix[v4])(&v7, a2 + 96);
  }

  return a1;
}

void SDPMediaFormatInfo::~SDPMediaFormatInfo(SDPMediaFormatInfo *this)
{
  *this = &unk_1F5EEA550;
  v1 = (this + 16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 24);
  SDPMediaRTPMap::~SDPMediaRTPMap(v1);
}

{
  *this = &unk_1F5EEA550;
  v1 = (this + 16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 24);
  SDPMediaRTPMap::~SDPMediaRTPMap(v1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaFormatInfo::setPayloadType(SDPMediaFormatInfo *this, __int16 a2)
{
  v6 = a2;
  *(this + 4) = a2;
  v2 = *(this + 87);
  if (v2 < 0)
  {
    v2 = *(this + 9);
  }

  if (v2)
  {
    *(this + 28) = a2;
  }

  v5[0] = &v6;
  v5[1] = &v6;
  v5[2] = &v6;
  v5[3] = &v6;
  v5[4] = &v6;
  v5[5] = &v6;
  v3 = *(this + 54);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = v5;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorI10overloadedIJZN18SDPMediaFormatInfo14setPayloadTypeEtE3__0ZNS7_14setPayloadTypeEtE3__1ZNS7_14setPayloadTypeEtE3__2ZNS7_14setPayloadTypeEtE3__3ZNS7_14setPayloadTypeEtE3__4ZNS7_14setPayloadTypeEtE3__5ZNS7_14setPayloadTypeEtE3__6EEEEJRNS0_6__implIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEEEEEDcOT_DpOT0____fmatrix[v3])(&v7, this + 96);
}

uint64_t SDPMediaFormatInfo::bandwidthAS(SDPMediaFormatInfo *this, unsigned __int8 a2)
{
  v28 = a2;
  *&v20 = &v28;
  *(&v20 + 1) = &v28;
  __p[0] = &v28;
  __p[1] = &v28;
  v22[0] = &v28;
  v22[1] = &v28;
  v2 = *(this + 54);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v29 = &v20;
  v4 = (off_1F5EEA8A8[v2])(&v29, this + 96);
  if (v5)
  {
    return v4;
  }

  if ((*(this + 87) & 0x80000000) == 0)
  {
    if (*(this + 87))
    {
      v7 = (this + 64);
      v20 = *(this + 4);
      __p[0] = *(this + 10);
      goto LABEL_9;
    }

    return 0;
  }

  v8 = *(this + 9);
  if (!v8)
  {
    return 0;
  }

  v7 = (this + 64);
  std::string::__init_copy_ctor_external(&v20, *(this + 8), v8);
LABEL_9:
  if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p[0]) != 3)
    {
      goto LABEL_27;
    }

    if (v20 != 22085 || BYTE2(v20) != 83)
    {
      goto LABEL_27;
    }

LABEL_25:
    v27 = 0;
    *v25 = 0u;
    v26 = 0u;
    *v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    *v22 = 0u;
    v20 = 0u;
    SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v20, 0);
    v12 = SDPMediaEVSSettings::evsBandwidthASValue(v23[1], LOWORD(v25[0]), HIBYTE(v22[1]), v28);
    goto LABEL_68;
  }

  if (*(&v20 + 1) != 3)
  {
    operator delete(v20);
    goto LABEL_27;
  }

  v11 = *v20 != 22085 || *(v20 + 2) != 83;
  operator delete(v20);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(this + 8), *(this + 9));
  }

  else
  {
    v20 = *v7;
    __p[0] = v7[2];
  }

  if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p[0]) != 6)
    {
      goto LABEL_48;
    }

    if (v20 != 760368449 || WORD2(v20) != 16983)
    {
      goto LABEL_48;
    }

LABEL_46:
    *v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *__p = 0u;
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v20, 0, 1);
    v12 = SDPMediaAMRSettings::amrBandwidthASValue(HIWORD(v22[1]), BYTE2(v22[1]), v28, BYTE3(v22[1]));
    goto LABEL_68;
  }

  if (*(&v20 + 1) != 6)
  {
    operator delete(v20);
    goto LABEL_48;
  }

  v15 = *v20 != 760368449 || *(v20 + 4) != 16983;
  operator delete(v20);
  if (!v15)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (*(this + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(this + 8), *(this + 9));
  }

  else
  {
    v20 = *v7;
    __p[0] = v7[2];
  }

  if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p[0]) != 3)
    {
      return 0;
    }

    if (v20 != 19777 || BYTE2(v20) != 82)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (*(&v20 + 1) != 3)
  {
    operator delete(v20);
    return 0;
  }

  v18 = *v20 != 19777 || *(v20 + 2) != 82;
  operator delete(v20);
  if (v18)
  {
    return 0;
  }

LABEL_67:
  *v22 = 0u;
  *v23 = 0u;
  v20 = 0u;
  *__p = 0u;
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v20, 0, 0);
  v12 = SDPMediaAMRSettings::amrBandwidthASValue(HIWORD(v22[1]), BYTE2(v22[1]), v28, BYTE3(v22[1]));
LABEL_68:
  v6 = v12;
  *&v20 = &unk_1F5EF5FB8;
  if (SHIBYTE(v22[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}