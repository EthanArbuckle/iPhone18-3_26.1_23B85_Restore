void sub_1E50A0404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::ostringstream::~ostringstream(&a32, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a49);
  _Unwind_Resume(a1);
}

void QMINasClient::BarringHandler::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v6 = a1[1];
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v5 = 8 * v7 + 8;
    v12 = a1[1];
    v13 = a1[2] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = a1[1];
    a1[1] = v14;
    a1[2] = v5;
    a1[3] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  a1[2] = v5;
}

void QMINasClient::requestCurrentBarringInfo(QMINasClient *this)
{
  if (*(this + 128))
  {
    v1 = *(this + 24);
    v2 = this + 200;
    if (v1 != this + 200)
    {
      do
      {
        v13 = 0;
        *v11 = 0u;
        v12 = 0u;
        v3 = *(v1 + 10);
        LODWORD(v11[0]) = *(v1 + 8);
        LODWORD(v11[1]) = v3;
        v12 = 0uLL;
        v13 = 0;
        std::vector<QMINasClient::AccessBarringHandler *>::__init_with_size[abi:ne200100]<QMINasClient::AccessBarringHandler **,QMINasClient::AccessBarringHandler **>(&v12, *(v1 + 6), *(v1 + 7), (*(v1 + 7) - *(v1 + 6)) >> 3);
        v4 = *(&v12 + 1);
        v5 = v12;
        if (v12 != *(&v12 + 1))
        {
          v6 = v12;
          do
          {
            (*(**v6 + 40))(*v6, LODWORD(v11[0]));
            ++v6;
          }

          while (v6 != v4);
        }

        if (v5)
        {
          operator delete(v5);
        }

        v7 = *(v1 + 1);
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
            v8 = *(v1 + 2);
            v9 = *v8 == v1;
            v1 = v8;
          }

          while (!v9);
        }

        v1 = v8;
      }

      while (v8 != v2);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v10 = ims::debug(v11, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Client not initialized, can't get barring info", 46);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_1E50A0754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50A078C(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void QMINasClient::requestVoiceSystemId(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v6 = ims::error(&v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Client not initialized, can't get voice system id", 49);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    v7 = a3[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (*a3)
        {
          (*(**a3 + 16))(*a3, a2, 0);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 272);
  *(a1 + 264) = v11;
  *(a1 + 272) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  memset(v13, 0, sizeof(v13));
  qmi::MutableMessageBase::MutableMessageBase(v13);
  qmi::ClientRouter::get();
  operator new();
}

void QMINasClient::reportCallStatus(void *a1, const ims::AccessNetwork *a2, int a3, uint64_t a4, ims::AccessNetwork *a5, const ims::AccessNetwork *a6, uint64_t a7)
{
  v8 = a6;
  v9 = a4;
  v42 = a3;
  v36 = 0;
  v37 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = &unk_1F5EBDEF8;
  v35 = &_bambiDomain;
  v38 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 4)
      {
        QMINasCache::cancel((a1[35] + 88 * a2), a6, a4, a7, v27);
        ImsResult::operator=(&v34, v27);
        goto LABEL_13;
      }

LABEL_8:
      QMINasCache::update((a1[35] + 88 * a2), a5, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    if ((a4 & 0x40) == 0)
    {
      QMINasCache::end((a1[35] + 88 * a2), a6, a4, a7, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    v15 = QMINasCache::mapRadioType(a5, a2);
    v16 = (*a1 + 136);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        QMINasCache::connect((a1[35] + 88 * a2), a6, a4, a7, v27);
        ImsResult::operator=(&v34, v27);
LABEL_13:
        ImsResult::~ImsResult(v27);
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if ((a4 & 0x40) == 0)
    {
      QMINasCache::start((a1[35] + 88 * a2), a5, a6, a4, a7, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    v15 = QMINasCache::mapRadioType(a5, a2);
    v16 = (*a1 + 128);
  }

  (*v16)(a1, a2, v15, a7);
LABEL_14:
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27[0] = &unk_1F5EBDEF8;
  v27[1] = &_bambiDomain;
  v28 = 1073741836;
  if (v35 == &_bambiDomain)
  {
    v12 = v36;
    ImsResult::~ImsResult(v27);
    if (v12 == 1073741836)
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "nas");
      v23[0] = 0;
      v26 = 0;
      v13 = ims::error(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to process status request ", 33);
      *(v13 + 17) = 0;
      ims::toString<UacCallStatus>(&v42, v21);
      (*(*v13 + 32))(v13, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ".  No call status started for ", 30);
      *(v13 + 17) = 0;
      if (v8)
      {
        v14 = "MO";
      }

      else
      {
        v14 = "MT";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, 2);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " call on instance ", 18);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923350](*(v13 + 8), a2);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " with services ", 15);
      *(v13 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(&v17, ",");
      BambiServices::namesForServiceMask(v9, __p);
      (*(*v13 + 32))(v13, __p);
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v29 < 0)
      {
        operator delete(v27[0]);
      }
    }
  }

  else
  {
    ImsResult::~ImsResult(v27);
  }

  ImsResult::~ImsResult(&v34);
}

void sub_1E50A102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  ImsResult::~ImsResult(&a38);
  ImsResult::~ImsResult((v43 - 160));
  _Unwind_Resume(a1);
}

void QMINasClient::sendCallStatusResponse(QMINasClient *this, int a2, int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1174405120;
    v10[2] = ___ZN12QMINasClient22sendCallStatusResponseEjjb_block_invoke;
    v10[3] = &__block_descriptor_tmp_47_3;
    v10[4] = this;
    v11 = a2;
    v12 = 100;
    v13 = 0;
    v14 = 0;
    v15 = a3;
    v16 = 0;
    v5 = *(this + 10);
    if (!v5 || (v6 = *(this + 9), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = *(this + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableI12QMINasClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_1F5EEFB10;
    block[5] = v6;
    v18 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v10;
    dispatch_async(v9, block);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t QMINasClient::applyCallStatusRequest(uint64_t a1, int a2, char a3, unint64_t a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v10;
  if (v10 != v11)
  {
    v12 = *(a1 + 8);
    while (*(*v12 + 8) != 1)
    {
      if (++v12 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  if (v12 == v11)
  {
LABEL_9:
    operator new();
  }

  v13 = ***v12;
  if (!v14)
  {
    goto LABEL_26;
  }

  v14[3] = a2;
  if (v10 != v11)
  {
    while (*(*v10 + 8) != 16)
    {
      if (++v10 == v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_17:
    operator new();
  }

  v15 = ***v10;
  if (!v16)
  {
    goto LABEL_26;
  }

  v16[2] = a4;
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(a1, 17) = a3;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (v17 != v18)
  {
    while (*(*v17 + 8) != 18)
    {
      if (++v17 == v18)
      {
        goto LABEL_25;
      }
    }
  }

  if (v17 == v18)
  {
LABEL_25:
    operator new();
  }

  v19 = ***v17;
  if (!v20)
  {
LABEL_26:
    __cxa_bad_cast();
  }

  v20[3] = a5 ^ 1;
  return (a4 >> 3) & 1;
}

void QMINasClient::sendCallStatusRequest(uint64_t a1, int a2, int a3, char a4, unint64_t a5, int a6)
{
  memset(v19, 0, sizeof(v19));
  qmi::MutableMessageBase::MutableMessageBase(v19);
  QMINasClient::applyCallStatusRequest(v19, a3, a4, a5, a6);
  std::string::basic_string[abi:ne200100]<0>(&v20, "nas");
  v15[0] = 0;
  v18 = 0;
  v12 = ims::debug(&v20, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Sending Call Status Request to BB", 33);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a2)
  {
    v13 = 2 * (a2 == 1);
  }

  else
  {
    v13 = 1;
  }

  qmi::ClientRouter::send<nas::CallStateNotification::Request>(&v14, a1 + 112, v13);
}

void sub_1E50A1808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<nas::CallStateNotification::Request>(_DWORD *a1, uint64_t a2, int a3)
{
  qmi::ClientRouter::get();
  *a1 = a3;
  operator new();
}

void QMINasClient::sendStartImsRegistrationUacCheckRequest(uint64_t a1, uint64_t a2, char a3)
{
  memset(v9, 0, sizeof(v9));
  qmi::MutableMessageBase::MutableMessageBase(v9);
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(v9, 1) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v10, "nas");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(&v10, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Sending Start IMS Registration UAC Check Request to BB...", 57);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  qmi::ClientRouter::get();
  operator new();
}

void sub_1E50A1BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void QMINasClient::sendStopImsRegistrationUacCheckRequest(uint64_t a1, uint64_t a2, char a3)
{
  memset(v9, 0, sizeof(v9));
  qmi::MutableMessageBase::MutableMessageBase(v9);
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(v9, 1) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v10, "nas");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(&v10, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Sending Stop IMS Registration UAC Check Request to BB...", 56);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  qmi::ClientRouter::get();
  operator new();
}

void sub_1E50A1F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<QMINasCache>>::construct[abi:ne200100]<QMINasCache,int,std::shared_ptr<QMINasClient::create(dispatch::queue const&)::Wrapper> &,void,0>(void *a1, int a2, uint64_t a3, std::__shared_weak_count *this)
{
  v4 = a3 + 56;
  if (!a3)
  {
    v4 = 0;
  }

  if (this)
  {
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    a1[1] = this;
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = v4;
    a1[1] = 0;
  }

  a1[4] = 0;
  v5 = a1 + 4;
  *(v5 - 4) = a2;
  *(v5 - 1) = v5;
  v5[4] = 0;
  v5[3] = 0;
  v5[1] = 0;
  v5[2] = v5 + 3;
  if (this)
  {
    std::__shared_weak_count::__release_weak(this);
  }
}

void *std::map<nas::CallMediaType,QMINasCache::CallStatusRecord>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

uint64_t std::__split_buffer<QMINasCache>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    QMINasCache::~QMINasCache((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<QMINasClient::AccessBarringHandler *>::__init_with_size[abi:ne200100]<QMINasClient::AccessBarringHandler **,QMINasClient::AccessBarringHandler **>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(a4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1E50A2314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "qmi.nas");
    v12[0] = 0;
    v15 = 0;
    v3 = ims::error(v16, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Access Barring Indication Register request failed: ", 51);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = *(a2 + 4);
    v5 = qmi::asString();
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v7 = *(a1 + 32);
    std::string::basic_string[abi:ne200100]<0>(v16, "qmi.nas");
    v12[0] = 0;
    v15 = 0;
    v8 = ims::debug(v16, v12);
    v3 = v8;
    if (*(v7 + 4))
    {
      v9 = "";
    }

    else
    {
      v9 = "not ";
    }

    v10 = *(v8 + 8);
    if (*(v7 + 4))
    {
      v11 = 0;
    }

    else
    {
      v11 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9, v11);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "listening for Access Barring indication for instance ", 53);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *v7);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v3 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1E50A2538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::AccessBarringHandler::listenForIndication(unsigned int,BOOL)::$_0,std::allocator<QMINasClient::AccessBarringHandler::listenForIndication(unsigned int,BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEEFF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas18IndicationRegister8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A26E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegSsacInfo>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 42)
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

  return v4 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSsacInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSsacChangeInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF0E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    QMIServiceMsg::serialize(&v17, this);
    qmi::MessageBase::MessageBase(v10, v17);
    qmi::MessageBase::validateMsgId(v10);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v10);
  }

  v7 = *(a1 + 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 100;
  v23 = 0;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN12QMINasClient11SsacHandler24handleSsacInfoIndicationEjRKN3nas11SsacInfoInd10IndicationE_block_invoke;
  v16[3] = &unk_1E876C348;
  v16[4] = &v17;
  v11[0] = v16;
  qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(v10, v11);
  std::string::basic_string[abi:ne200100]<0>(v14, "qmi.nas");
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  v8 = ims::debug(v14, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Got SSAC indication: ", 21);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923390](*(v8 + 8), *(v18 + 20));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", ", 2);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), *(v18 + 11));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " for instance ", 14);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), v4 == 2);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11[2]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v9 = *(v7 + 8);
  if (v9)
  {
    IMSNasClient::notifyDelegates(v9, v4 == 2, v18 + 20, 1);
  }

  _Block_object_dispose(&v17, 8);
  qmi::MessageBase::~MessageBase(v10);
}

void sub_1E50A2CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  qmi::MessageBase::~MessageBase(&a9);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(a2 + 1);
  if (v5)
  {
    if (v5 == 74)
    {
      if (*(v4 + 8))
      {
        std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
        LOBYTE(v26) = 0;
        LOBYTE(v32) = 0;
        v6 = ims::debug(v19, &v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "no SSAC information available for instance ", 43);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
        LOBYTE(v26) = 0;
        LOBYTE(v32) = 0;
        v6 = ims::error(v19, &v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "no delegate for instance ", 25);
      }

      *(v6 + 17) = 0;
      MEMORY[0x1E6923350](*(v6 + 8), *(v3 + 2));
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
      LOBYTE(v26) = 0;
      LOBYTE(v32) = 0;
      v6 = ims::error(v19, &v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "GetSsacInfo request failed: ", 28);
      *(v6 + 17) = 0;
      MEMORY[0x1E6923350](*(v6 + 8), *(a2 + 1));
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " (", 2);
      *(v6 + 17) = 0;
      v12 = *(a2 + 1);
      v13 = qmi::asString();
      v14 = strlen(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v13, v14);
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ")", 1);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v6 + 17) = 0;
    if (v32 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v26, "qmi.nas");
    v15[0] = 0;
    v18 = 0;
    v8 = ims::debug(v7, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "received GetSsacInfo response for instance ", 43);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), *(v3 + 2));
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }

    v9 = *(v3 + 2);
    v26 = 0;
    v27 = &v26;
    v28 = 0x4002000000;
    v29 = __Block_byref_object_copy__5;
    v30 = __Block_byref_object_dispose__5;
    v31 = 100;
    v32 = 0;
    v33 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___ZN12QMINasClient11SsacHandler22handleSsacInfoResponseEjRKN3nas11GetSsacInfo8ResponseE_block_invoke;
    v25[3] = &unk_1E876C370;
    v25[4] = &v26;
    v19[0] = v25;
    qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(a2, v19);
    std::string::basic_string[abi:ne200100]<0>(v23, "qmi.nas");
    LOBYTE(v19[0]) = 0;
    v22 = 0;
    v10 = ims::debug(v23, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Got SSAC response: ", 19);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923390](*(v10 + 8), *(v27 + 20));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", ", 2);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), *(v27 + 11));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " for instance ", 14);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), v9);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v11 = *(v4 + 8);
    if (v11)
    {
      IMSNasClient::notifyDelegates(v11, v9, v27 + 20, 1);
    }

    _Block_object_dispose(&v26, 8);
  }
}

uint64_t __copy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::SsacHandler::requestCurrentBarringInfo(unsigned int)::$_0,std::allocator<QMINasClient::SsacHandler::requestCurrentBarringInfo(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas11GetSsacInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A34C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

tlv *qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(qmi::MessageBase *a1, uint64_t a2)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v6 = result;
    v7 = v5;
    v10 = result;
    tlv::parseV<nas::tlv::SsacInfoVoice>(&v10, v5);
    if (v10)
    {
      return (*(*a2 + 16))();
    }

    else
    {
      v8 = *MEMORY[0x1E69E5140];
      v9 = *a1;

      return v8(v9, 16, v6, v7);
    }
  }

  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegAcbChangeInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF238;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    QMIServiceMsg::serialize(&v68, this);
    qmi::MessageBase::MessageBase(v46, v68);
    qmi::MessageBase::validateMsgId(v46);
    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v46);
  }

  v7 = *(a1 + 8);
  v8 = v4 == 2;
  v65 = 100;
  v66 = 0;
  v67 = 0;
  TlvValue = qmi::MessageBase::findTlvValue(v46);
  v11 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_23;
  }

  v12 = v10;
  v57[0] = TlvValue;
  v13 = tlv::parseV<nas::tlv::AcbInfoSkipVoice>(v57, v10);
  if (!v57[0])
  {
    (*MEMORY[0x1E69E5140])(v46[0], 24, v11, v12);
LABEL_23:
    v18 = 1;
    goto LABEL_24;
  }

  v14 = v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v68) = 0;
  v72 = 0;
  v15 = ims::debug(__p, &v68);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ACB voice skip is ", 18);
  *(v15 + 17) = 0;
  if (v14)
  {
    v16 = "enabled";
  }

  else
  {
    v16 = "disabled";
  }

  if (v14)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16, v17);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = !v14;
LABEL_24:
  v19 = qmi::MessageBase::findTlvValue(v46);
  v21 = v19;
  if (!v19)
  {
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  v22 = v20;
  v57[0] = v19;
  v23 = tlv::parseV<nas::tlv::AcbInfoSkipSms>(v57, v20);
  if (!v57[0])
  {
    (*MEMORY[0x1E69E5140])(v46[0], 26, v21, v22);
    goto LABEL_38;
  }

  v24 = v23;
  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v68) = 0;
  v72 = 0;
  v25 = ims::debug(__p, &v68);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "ACB SMS skip is ", 16);
  *(v25 + 17) = 0;
  if (v24)
  {
    v26 = "enabled";
  }

  else
  {
    v26 = "disabled";
  }

  if (v24)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), v26, v27);
  *(v25 + 17) = 0;
  (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v28 = qmi::MessageBase::findTlvValue(v46);
  v30 = v28;
  if (v28)
  {
    v31 = v29;
    v68 = v28;
    v32 = tlv::parseV<nas::tlv::AcbInfoSignaling>(&v68, v29);
    if (v68)
    {
      v33 = BYTE4(v32);
      v34 = WORD1(v32);
      if (v32 == 100)
      {
        v35 = 100;
      }

      else
      {
        v35 = 0;
      }

      LOWORD(v65) = v35;
      HIDWORD(v65) = WORD1(v32);
      LOBYTE(v66) = BYTE4(v32);
      LODWORD(v30) = 1;
      LOBYTE(v67) = 1;
      if (WORD1(v32) <= 0x200u)
      {
        HIDWORD(v66) = 1;
        goto LABEL_67;
      }

      LOWORD(v65) = 100;
      HIDWORD(v65) = 0;
      LOBYTE(v66) = 0;
      LOBYTE(v67) = 0;
      HIDWORD(v66) = 1;
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v46[0], 17, v30, v31);
      LODWORD(v30) = 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v68) = 0;
  v72 = 0;
  v36 = ims::debug(__p, &v68);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Did not get a valid Signaling TLV. Trying the Data TLV.", 55);
  *(v36 + 17) = 0;
  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v36 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v37 = qmi::MessageBase::findTlvValue(v46);
  v34 = v37;
  if (!v37)
  {
    v33 = 0;
LABEL_66:
    v35 = 100;
    goto LABEL_67;
  }

  v39 = v38;
  __p[0] = v37;
  v40 = tlv::parseV<nas::tlv::AcbInfoData>(__p, v38);
  if (!__p[0])
  {
    (*MEMORY[0x1E69E5140])(v46[0], 18, v34, v39);
    v33 = 0;
    v34 = 0;
    goto LABEL_66;
  }

  v33 = BYTE4(v40);
  v34 = WORD1(v40);
  if (v40 == 100)
  {
    v35 = 100;
  }

  else
  {
    v35 = 0;
  }

  LOWORD(v65) = v35;
  HIDWORD(v65) = WORD1(v40);
  LOBYTE(v66) = BYTE4(v40);
  LOBYTE(v67) = 1;
  if (WORD1(v40) >= 0x201u)
  {
    v33 = 0;
    v34 = 0;
    v35 = 100;
    LOWORD(v65) = 100;
    HIDWORD(v65) = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v67) = 0;
  }

  if (v40)
  {
    LODWORD(v30) = 1;
  }

  else
  {
    LODWORD(v30) = 5;
  }

  HIDWORD(v66) = v30;
LABEL_67:
  std::string::basic_string[abi:ne200100]<0>(v57, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v64 = 0;
  v41 = ims::debug(v57, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Received ACB info: ", 19);
  *(v41 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Services : ", 11);
  *(v41 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(v47, ",");
  BambiServices::namesForServiceMask(v30, v53);
  (*(*v41 + 32))(v41, v53);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), ", Factor : ", 11);
  *(v41 + 17) = 0;
  MEMORY[0x1E6923390](*(v41 + 8), v35);
  *(v41 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), ", Time : ", 9);
  *(v41 + 17) = 0;
  MEMORY[0x1E6923350](*(v41 + 8), v34);
  *(v41 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), ", SpecialAccessClass: ", 22);
  *(v41 + 17) = 0;
  MEMORY[0x1E6923340](*(v41 + 8), v33);
  *(v41 + 17) = 0;
  (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v41 + 17) = 0;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (v64 == 1 && v63 < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
    if (!v30)
    {
      goto LABEL_92;
    }
  }

  else if (!v30)
  {
LABEL_92:
    v44 = *(v7 + 8);
    if (v44)
    {
      IMSNasClient::notifyDelegates(v44, v8, &v65, 2);
    }

    goto LABEL_94;
  }

  if (v18 & 1 | ((v30 & 1) == 0))
  {
    goto LABEL_83;
  }

  LODWORD(v30) = v30 & 6;
  HIDWORD(v66) = v30;
  std::string::basic_string[abi:ne200100]<0>(v53, "qmi.nas");
  LOBYTE(v57[0]) = 0;
  v60 = 0;
  v42 = ims::debug(v53, v57);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "ACB Skip for voice is enabled, removing voice service flag from barring indication.", 83);
  *(v42 + 17) = 0;
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v42 + 17) = 0;
  if (v60 == 1 && v59 < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
    if ((v30 & 4) == 0)
    {
      goto LABEL_91;
    }
  }

  else
  {
LABEL_83:
    if ((v30 & 4) == 0)
    {
      goto LABEL_91;
    }
  }

  if (!v24)
  {
    goto LABEL_92;
  }

  LODWORD(v30) = v30 & 3;
  HIDWORD(v66) = v30;
  std::string::basic_string[abi:ne200100]<0>(v47, "qmi.nas");
  LOBYTE(v53[0]) = 0;
  v56 = 0;
  v43 = ims::debug(v47, v53);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "ACB Skip for SMS is enabled, removing SMS service flag from barring indication.", 79);
  *(v43 + 17) = 0;
  (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v43 + 17) = 0;
  if (v56 == 1 && v55 < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

LABEL_91:
  if (v30)
  {
    goto LABEL_92;
  }

  std::string::basic_string[abi:ne200100]<0>(v51, "qmi.nas");
  LOBYTE(v47[0]) = 0;
  v50 = 0;
  v45 = ims::warn(v51, v47);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "Ignoring ACB barring indiciation with no valid service to bar.", 62);
  *(v45 + 17) = 0;
  (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v45 + 17) = 0;
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

LABEL_94:
  qmi::MessageBase::~MessageBase(v46);
}

void sub_1E50A404C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  if (a40 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(a2 + 1);
  if (!v5)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
    v56[0] = 0;
    v59 = 0;
    v9 = ims::debug(v8, v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "received GetAcbInfo response for instance ", 42);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923350](*(v9 + 8), *(v3 + 2));
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v59 == 1 && v58 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    v10 = *(v3 + 2);
    v78 = 100;
    v79 = 0;
    v80 = 0;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    if (TlvValue)
    {
      v13 = TlvValue;
      v14 = v12;
      v70[0] = TlvValue;
      v15 = tlv::parseV<nas::tlv::AcbInfoSkipVoice>(v70, v12);
      if (v70[0])
      {
        v16 = v15;
        v17 = std::string::basic_string[abi:ne200100]<0>(v74, "qmi.nas");
        LOBYTE(v81[0]) = 0;
        v84 = 0;
        v18 = ims::debug(v17, v81);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "ACB voice skip is ", 18);
        *(v18 + 17) = 0;
        if (v16)
        {
          v19 = "enabled";
        }

        else
        {
          v19 = "disabled";
        }

        if (v16)
        {
          v20 = 7;
        }

        else
        {
          v20 = 8;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19, v20);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v84 == 1 && v83 < 0)
        {
          operator delete(v82);
        }

        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0]);
        }

        v21 = !v16;
LABEL_33:
        v27 = qmi::MessageBase::findTlvValue(a2);
        if (v27)
        {
          v29 = v27;
          v30 = v28;
          v70[0] = v27;
          v31 = tlv::parseV<nas::tlv::AcbInfoSkipSms>(v70, v28);
          if (v70[0])
          {
            v32 = v31;
            v33 = std::string::basic_string[abi:ne200100]<0>(v74, "qmi.nas");
            LOBYTE(v81[0]) = 0;
            v84 = 0;
            v34 = ims::debug(v33, v81);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "ACB SMS skip is ", 16);
            *(v34 + 17) = 0;
            if (v32)
            {
              v35 = "enabled";
            }

            else
            {
              v35 = "disabled";
            }

            if (v32)
            {
              v36 = 7;
            }

            else
            {
              v36 = 8;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), v35, v36);
            *(v34 + 17) = 0;
            (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v34 + 17) = 0;
            if (v84 == 1 && v83 < 0)
            {
              operator delete(v82);
            }

            if (SHIBYTE(v75) < 0)
            {
              operator delete(v74[0]);
            }

LABEL_48:
            v37 = qmi::MessageBase::findTlvValue(a2);
            v39 = v37;
            if (v37)
            {
              v40 = v38;
              v81[0] = v37;
              v41 = tlv::parseV<nas::tlv::AcbInfoSignaling>(v81, v38);
              if (v81[0])
              {
                v42 = BYTE4(v41);
                v43 = WORD1(v41);
                if (v41 == 100)
                {
                  v44 = 100;
                }

                else
                {
                  v44 = 0;
                }

                LOWORD(v78) = v44;
                HIDWORD(v78) = WORD1(v41);
                LOBYTE(v79) = BYTE4(v41);
                LODWORD(v39) = 1;
                LOBYTE(v80) = 1;
                if (WORD1(v41) <= 0x200u)
                {
                  HIDWORD(v79) = 1;
                  goto LABEL_76;
                }

                LOWORD(v78) = 100;
                HIDWORD(v78) = 0;
                LOBYTE(v79) = 0;
                LOBYTE(v80) = 0;
                HIDWORD(v79) = 1;
              }

              else
              {
                (*MEMORY[0x1E69E5140])(*a2, 17, v39, v40);
                LODWORD(v39) = 0;
              }
            }

            v45 = std::string::basic_string[abi:ne200100]<0>(v74, "qmi.nas");
            LOBYTE(v81[0]) = 0;
            v84 = 0;
            v46 = ims::debug(v45, v81);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "Did not get a valid Signaling TLV. Trying the Data TLV.", 55);
            *(v46 + 17) = 0;
            (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v46 + 17) = 0;
            if (v84 == 1 && v83 < 0)
            {
              operator delete(v82);
            }

            if (SHIBYTE(v75) < 0)
            {
              operator delete(v74[0]);
            }

            v47 = qmi::MessageBase::findTlvValue(a2);
            v43 = v47;
            if (v47)
            {
              v49 = v48;
              v74[0] = v47;
              v50 = tlv::parseV<nas::tlv::AcbInfoData>(v74, v48);
              if (v74[0])
              {
                v42 = BYTE4(v50);
                v43 = WORD1(v50);
                if (v50 == 100)
                {
                  v44 = 100;
                }

                else
                {
                  v44 = 0;
                }

                LOWORD(v78) = v44;
                HIDWORD(v78) = WORD1(v50);
                LOBYTE(v79) = BYTE4(v50);
                LOBYTE(v80) = 1;
                if (WORD1(v50) >= 0x201u)
                {
                  v42 = 0;
                  v43 = 0;
                  v44 = 100;
                  LOWORD(v78) = 100;
                  HIDWORD(v78) = 0;
                  LOBYTE(v79) = 0;
                  LOBYTE(v80) = 0;
                }

                if (v50)
                {
                  LODWORD(v39) = 1;
                }

                else
                {
                  LODWORD(v39) = 5;
                }

                HIDWORD(v79) = v39;
LABEL_76:
                std::string::basic_string[abi:ne200100]<0>(v70, "qmi.nas");
                LOBYTE(v74[0]) = 0;
                v77 = 0;
                v51 = ims::debug(v70, v74);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Received ACB info: ", 19);
                *(v51 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Services : ", 11);
                *(v51 + 17) = 0;
                std::string::basic_string[abi:ne200100]<0>(v60, ",");
                BambiServices::namesForServiceMask(v39, v66);
                (*(*v51 + 32))(v51, v66);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), ", Factor : ", 11);
                *(v51 + 17) = 0;
                MEMORY[0x1E6923390](*(v51 + 8), v44);
                *(v51 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), ", Time : ", 9);
                *(v51 + 17) = 0;
                MEMORY[0x1E6923350](*(v51 + 8), v43);
                *(v51 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), ", SpecialAccessClass: ", 22);
                *(v51 + 17) = 0;
                MEMORY[0x1E6923340](*(v51 + 8), v42);
                *(v51 + 17) = 0;
                (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v51 + 17) = 0;
                if (SHIBYTE(v67) < 0)
                {
                  operator delete(v66[0]);
                }

                if (SHIBYTE(v61) < 0)
                {
                  operator delete(v60[0]);
                }

                if (v77 == 1 && v76 < 0)
                {
                  operator delete(v75);
                }

                if (SHIBYTE(v71) < 0)
                {
                  operator delete(v70[0]);
                  if (!v39)
                  {
                    goto LABEL_101;
                  }
                }

                else if (!v39)
                {
                  goto LABEL_101;
                }

                if (v21 & 1 | ((v39 & 1) == 0))
                {
                  goto LABEL_92;
                }

                LODWORD(v39) = v39 & 6;
                HIDWORD(v79) = v39;
                std::string::basic_string[abi:ne200100]<0>(v66, "qmi.nas");
                LOBYTE(v70[0]) = 0;
                v73 = 0;
                v52 = ims::debug(v66, v70);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "ACB Skip for voice is enabled, removing voice service flag from barring indication.", 83);
                *(v52 + 17) = 0;
                (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v52 + 17) = 0;
                if (v73 == 1 && v72 < 0)
                {
                  operator delete(v71);
                }

                if (SHIBYTE(v67) < 0)
                {
                  operator delete(v66[0]);
                  if ((v39 & 4) != 0)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
LABEL_92:
                  if ((v39 & 4) != 0)
                  {
LABEL_93:
                    if (!v32)
                    {
                      goto LABEL_101;
                    }

                    LODWORD(v39) = v39 & 3;
                    HIDWORD(v79) = v39;
                    std::string::basic_string[abi:ne200100]<0>(v60, "qmi.nas");
                    LOBYTE(v66[0]) = 0;
                    v69 = 0;
                    v53 = ims::debug(v60, v66);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v53 + 8), "ACB Skip for SMS is enabled, removing SMS service flag from barring indication.", 79);
                    *(v53 + 17) = 0;
                    (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v53 + 17) = 0;
                    if (v69 == 1 && v68 < 0)
                    {
                      operator delete(v67);
                    }

                    if (SHIBYTE(v61) < 0)
                    {
                      operator delete(v60[0]);
                    }
                  }
                }

                if (!v39)
                {
                  std::string::basic_string[abi:ne200100]<0>(v64, "qmi.nas");
                  LOBYTE(v60[0]) = 0;
                  v63 = 0;
                  v55 = ims::warn(v64, v60);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "Ignoring ACB barring indiciation with no valid service to bar.", 62);
                  *(v55 + 17) = 0;
                  (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v55 + 17) = 0;
                  if (v63 == 1 && v62 < 0)
                  {
                    operator delete(v61);
                  }

                  if (v65 < 0)
                  {
                    v26 = v64[0];
                    goto LABEL_30;
                  }

                  return;
                }

LABEL_101:
                v54 = *(v4 + 8);
                if (v54)
                {
                  IMSNasClient::notifyDelegates(v54, v10, &v78, 2);
                }

                return;
              }

              (*MEMORY[0x1E69E5140])(*a2, 18, v43, v49);
              v42 = 0;
              v43 = 0;
            }

            else
            {
              v42 = 0;
            }

            v44 = 100;
            goto LABEL_76;
          }

          (*MEMORY[0x1E69E5140])(*a2, 21, v29, v30);
        }

        v32 = 0;
        goto LABEL_48;
      }

      (*MEMORY[0x1E69E5140])(*a2, 19, v13, v14);
    }

    v21 = 1;
    goto LABEL_33;
  }

  if (v5 == 74)
  {
    if (!*(v4 + 8))
    {
      return;
    }

    v6 = std::string::basic_string[abi:ne200100]<0>(v74, "qmi.nas");
    LOBYTE(v81[0]) = 0;
    v84 = 0;
    v7 = ims::debug(v6, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "no ACB information available for instance ", 42);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), *(v3 + 2));
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v22 = std::string::basic_string[abi:ne200100]<0>(v74, "qmi.nas");
    LOBYTE(v81[0]) = 0;
    v84 = 0;
    v7 = ims::error(v22, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "GetAcbInfo request failed: ", 27);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), *(a2 + 1));
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " (", 2);
    *(v7 + 17) = 0;
    v23 = *(a2 + 1);
    v24 = qmi::asString();
    v25 = strlen(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v24, v25);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ")", 1);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v7 + 17) = 0;
  if (v84 == 1 && v83 < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v75) < 0)
  {
    v26 = v74[0];
LABEL_30:
    operator delete(v26);
  }
}

void sub_1E50A4D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{
  if (a47 == 1 && a45 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::AcbHandler::requestCurrentBarringInfo(unsigned int)::$_0,std::allocator<QMINasClient::AcbHandler::requestCurrentBarringInfo(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF2E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas10GetAcbInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A4FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<QMINasClient::create(dispatch::queue const&)::Wrapper,std::allocator<QMINasClient::create(dispatch::queue const&)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void QMINasClient::create(dispatch::queue const&)::Wrapper::~Wrapper(QMINasClient *a1)
{
  QMINasClient::~QMINasClient(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMINasClient::create(dispatch::queue const&)::Wrapper::~Wrapper(uint64_t a1)
{
  QMINasClient::~QMINasClient((a1 - 56));
}

{
  QMINasClient::~QMINasClient((a1 - 56));

  JUMPOUT(0x1E69235B0);
}

{
  QMINasClient::~QMINasClient((a1 - 64));
}

{
  QMINasClient::~QMINasClient((a1 - 64));

  JUMPOUT(0x1E69235B0);
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF4A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(*(a1 + 8) + 129) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v15, "qmi.nas");
  v11[0] = 0;
  v14 = 0;
  v3 = ims::debug(&v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "QMI client started for instance ", 32);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), v2 == 2);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v9 = 0u;
  v10 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v9);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeE_block_invoke;
  v7[3] = &__block_descriptor_tmp_162;
  v8 = v2 == 2;
  v4 = *(&v9 + 1);
  if (*(&v9 + 1) != v10)
  {
    while (*(*v4 + 8) != 1)
    {
      if (++v4 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 != v10)
  {
    v5 = ***v4;
    if (v6)
    {
      ___ZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeE_block_invoke(v7, v6 + 9);
      qmi::ClientRouter::get();
      operator new();
    }

    __cxa_bad_cast();
  }

LABEL_13:
  operator new();
}

void sub_1E50A56C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::SubType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEjENK3__0clENS_16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 4))
  {
    v7 = *(a1 + 32);
    v8 = *v7;
    v17 = *(v7 + 8);
    v9 = v17;
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v13[0] = 0;
    v16 = 0;
    v10 = ims::debug(v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Client bound for instance ", 26);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), v9);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v8 + 216, &v17);
    QMINasClient::startListening(v8, v17);
  }

  std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
  v13[0] = 0;
  v16 = 0;
  v3 = ims::error(v11, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Bind Subscription request failed: ", 34);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
  *(v3 + 17) = 0;
  v4 = *(a2 + 4);
  v5 = qmi::asString();
  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1E50A5BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c191_ZTSNSt3__110shared_ptrIZZN12QMINasClient10initializeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c191_ZTSNSt3__110shared_ptrIZZN12QMINasClient10initializeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::initialize(std::string const&,unsigned int)::$_0::operator() const(qmi::SubscriptionType)::{lambda(nas::BindSubscription::Response const&)#1},std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0::operator() const(qmi::SubscriptionType)::{lambda(nas::BindSubscription::Response const&)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas16BindSubscription8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A5D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF5F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(*(a1 + 8) + 129) = 0;
  v3 = v2 == 2;
  v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "qmi.nas");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::debug(v4, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "QMI client stopped for instance ", 32);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), v3);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_1E50A5F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF678;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v20, __p);
    qmi::MessageBase::validateMsgId(v20);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v20);
  }

  v7 = *(a1 + 8);
  v8 = v4 == 2;
  TlvValue = qmi::MessageBase::findTlvValue(v20);
  v11 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_21;
  }

  v12 = v10;
  __p = TlvValue;
  v13 = tlv::parseV<nas::tlv::VoiceSystemId>(&__p, v10);
  if (__p)
  {
    goto LABEL_12;
  }

  if (!(*MEMORY[0x1E69E5140])(v20[0], 19, v11, v12))
  {
LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(v21, "qmi.nas");
    LOBYTE(__p) = 0;
    v31 = 0;
    v18 = ims::debug(v21, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Got subscription info indication.  No relevant changes. [instance=", 66);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), v8);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "]", 1);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    goto LABEL_34;
  }

  v13 = 0;
LABEL_12:
  std::string::basic_string[abi:ne200100]<0>(v21, "qmi.nas");
  LOBYTE(__p) = 0;
  v31 = 0;
  v14 = ims::debug(v21, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Got subscription info indication [instance=", 43);
  *(v14 + 17) = 0;
  MEMORY[0x1E6923350](*(v14 + 8), v8);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " voiceSystemId=", 15);
  *(v14 + 17) = 0;
  MEMORY[0x1E6923350](*(v14 + 8), v13);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  v15 = *(v7 + 272);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = *(v7 + 264);
      if (v17)
      {
        (*(*v17 + 24))(v17, v8, v13);
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_34;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v25, "qmi.nas");
  LOBYTE(v21[0]) = 0;
  v24 = 0;
  v19 = ims::debug(v25, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "NasVoiceSystemReceiver is null", 30);
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v16)
  {
    goto LABEL_33;
  }

LABEL_34:
  qmi::MessageBase::~MessageBase(v20);
}

void sub_1E50A643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF6F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v53 = 0;
    v54 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v42, __p);
    qmi::MessageBase::validateMsgId(v42);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v42);
  }

  v7 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
  v60[0] = 0;
  v63 = 0;
  v8 = ims::debug(&__p, v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Received MMTel response indication from baseband", 48);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v63 == 1 && v62 < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v42);
  v11 = TlvValue;
  if (TlvValue)
  {
    v12 = v10;
    __p = TlvValue;
    v13 = tlv::parseV<nas::tlv::Response>(&__p, v10);
    if (__p)
    {
      if ((v13 - 1) > 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = dword_1E517EBC8[v13 - 1];
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v42[0], 1, v11, v12);
      v11 = 0;
    }
  }

  v14 = qmi::MessageBase::findTlvValue(v42);
  v16 = v14;
  if (v14)
  {
    v17 = v15;
    __p = v14;
    v18 = tlv::parseV<nas::tlv::CallType>(&__p, v15);
    if (__p)
    {
      goto LABEL_23;
    }

    (*MEMORY[0x1E69E5140])(v42[0], 2, v16, v17);
  }

  v18 = 0;
LABEL_23:
  v19 = qmi::MessageBase::findTlvValue(v42);
  v21 = v19;
  if (v19)
  {
    v22 = v20;
    __p = v19;
    v23 = tlv::parseV<nas::tlv::BarringTime>(&__p, v20);
    if (__p)
    {
      goto LABEL_27;
    }

    (*MEMORY[0x1E69E5140])(v42[0], 4, v21, v22);
  }

  v23 = 0;
LABEL_27:
  v24 = qmi::MessageBase::findTlvValue(v42);
  v26 = v24;
  if (v24)
  {
    v27 = v25;
    __p = v24;
    v28 = tlv::parseV<nas::tlv::SystemMode>(&__p, v25);
    if (__p)
    {
      v29 = v28 != 8;
      goto LABEL_32;
    }

    (*MEMORY[0x1E69E5140])(v42[0], 3, v26, v27);
  }

  v29 = 1;
LABEL_32:
  v57 = 0;
  v58 = 0;
  if (v11 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = 100;
  }

  LOWORD(v57) = v30;
  HIDWORD(v57) = v23;
  v59 = 1;
  if (v23 >= 0x201)
  {
    LOWORD(v57) = 100;
    HIDWORD(v57) = 0;
    LOBYTE(v59) = 0;
  }

  HIDWORD(v58) = v18 & 7;
  Responded = QMINasCache::setLastResponded((v7[35] + 88 * (v4 == 2)), &__p);
  v32 = (*(*v53 + 24))(v53, v54, Responded);
  ImsResult::~ImsResult(&__p);
  if (!v32)
  {
    goto LABEL_42;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
  v48[0] = 0;
  v51 = 0;
  v33 = ims::error(&__p, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Unmatched MMTel response!", 25);
  *(v33 + 17) = 0;
  (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v33 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_42:
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  v47 = 0;
  v34 = QMINasCache::cancelLast((v7[35] + 88 * (v4 == 2)), &v47, &__p);
  v35 = (*(*v53 + 24))(v53, v54, v34) | v29;
  ImsResult::~ImsResult(&__p);
  if ((v35 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
    v43[0] = 0;
    v46 = 0;
    v36 = ims::error(&__p, v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Call status failed for LTE RAT!", 31);
    *(v36 + 17) = 0;
    (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v36 + 17) = 0;
    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v37 = v47;
    v66 = v11;
    memset(v65, 0, 32);
    v38 = qmi::MutableMessageBase::MutableMessageBase(v65);
    QMINasClient::applyCallStatusRequest(v38, 1, 8, v18, v37);
    v39 = std::string::basic_string[abi:ne200100]<0>(&v67, "nas");
    LOBYTE(__p) = 0;
    v56 = 0;
    v40 = ims::debug(v39, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "Sending Call Status Request to BB due to ", 41);
    *(v40 + 17) = 0;
    ims::toString<UacAccessResponse>(&v66, &aBlock);
    (*(*v40 + 32))(v40, &aBlock);
    (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v40 + 17) = 0;
    if (v70 < 0)
    {
      operator delete(aBlock);
    }

    if (v56 == 1 && v55 < 0)
    {
      operator delete(v54);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }

    if (v4 == 2)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    qmi::ClientRouter::send<nas::CallStateNotification::Request>(&v64, (v7 + 14), v41);
  }

LABEL_44:
  IMSNasClient::notifyDelegates(v7, v4 == 2, &v57, v11, (v18 >> 3) & 1);
  qmi::MessageBase::~MessageBase(v42);
}

void sub_1E50A6E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  v63 = *(v61 - 128);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  qmi::ClientRouter::SendProxy::~SendProxy((v61 - 224));
  qmi::MutableMessageBase::~MutableMessageBase((v61 - 208));
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF778;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v16, __p);
    qmi::MessageBase::validateMsgId(v16);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v16);
  }

  v7 = *(a1 + 8);
  v8 = v4 == 2;
  v9 = std::string::basic_string[abi:ne200100]<0>(&v22, "nas");
  LOBYTE(__p) = 0;
  v21 = 0;
  v10 = ims::debug(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Received UAC barring alleviation indication from baseband", 57);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v25 < 0)
  {
    operator delete(v22);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v16);
  v13 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_16;
  }

  v14 = v12;
  v22 = TlvValue;
  v15 = tlv::parseV<nas::tlv::CallType>(&v22, v12);
  if (!v22)
  {
    (*MEMORY[0x1E69E5140])(v16[0], 1, v13, v14);
LABEL_16:
    v15 = 0;
  }

  v22 = 100;
  v23 = 0;
  v24 = v15 & 7;
  IMSNasClient::notifyDelegates(v7, v8, &v22, 3, (v15 >> 3) & 1);
  qmi::MessageBase::~MessageBase(v16);
}

void sub_1E50A723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  qmi::MessageBase::~MessageBase(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF7F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v8, __p);
    qmi::MessageBase::validateMsgId(v8);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v8);
  }

  v7 = *(a1 + 8);
  v10 = 0x4000000000;
  __p = 100;
  LODWORD(v11) = 0;
  IMSNasClient::notifyDelegates(v7, v4 == 2, &__p, 3, 0);
  qmi::MessageBase::~MessageBase(v8);
}

void sub_1E50A7484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF878;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    QMIServiceMsg::serialize(&v40, this);
    qmi::MessageBase::MessageBase(v26, v40);
    qmi::MessageBase::validateMsgId(v26);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v26);
  }

  v7 = *(a1 + 8);
  v8 = v4 == 2;
  std::string::basic_string[abi:ne200100]<0>(__p, "nas");
  LOBYTE(v40) = 0;
  v44 = 0;
  v9 = ims::debug(__p, &v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Received network congestion indication from baseband", 52);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v26);
  v12 = TlvValue;
  v13 = "Internal";
  if (TlvValue)
  {
    v14 = v11;
    __p[0] = TlvValue;
    v15 = tlv::parseV<nas::tlv::NwCongestion>(__p, v11);
    if (__p[0])
    {
      if (v15)
      {
        v13 = "Network";
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v26[0], 16, v12, v14);
    }
  }

  v16 = qmi::MessageBase::findTlvValue(v26);
  v18 = v16;
  if (!v16)
  {
    goto LABEL_22;
  }

  v19 = v17;
  __p[0] = v16;
  v20 = tlv::parseV<nas::tlv::TimerValueRemaining>(__p, v17);
  if (!__p[0])
  {
    (*MEMORY[0x1E69E5140])(v26[0], 17, v18, v19);
LABEL_22:
    v20 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v39 = 0;
  v21 = ims::debug(v27, __p);
  v22 = strlen(v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), v13, v22);
  *(v21 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " is congested: TimerValue=", 26);
  *(v21 + 17) = 0;
  MEMORY[0x1E6923350](*(v21 + 8), v20);
  *(v21 + 17) = 0;
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  v34 = 0;
  v33 = 100;
  v23 = v20 / 0x3E8;
  if (v20 % 0x3E8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v23;
  }

  HIDWORD(v34) = 64;
  v35 = 0;
  HIDWORD(v33) = v24;
  std::string::basic_string[abi:ne200100]<0>(v31, "qmi.nas");
  LOBYTE(v27[0]) = 0;
  v30 = 0;
  v25 = ims::debug(v31, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "barringTime will be ", 20);
  *(v25 + 17) = 0;
  MEMORY[0x1E6923350](*(v25 + 8), v24);
  *(v25 + 17) = 0;
  (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  IMSNasClient::notifyDelegates(v7, v8, &v33, 4, 0);
  qmi::MessageBase::~MessageBase(v26);
}

void sub_1E50A79C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  qmi::MessageBase::~MessageBase(&a9);
  v45 = *(v43 - 120);
  if (v45)
  {
    *(v43 - 112) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegSubscriptionInfo>(uint64_t a1)
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

  return v4 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSubscriptionInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegMmtelRespInd>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 64)
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

  return v4 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegMmtelRespInd>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient13stopListeningEjbE3__2EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Indication Register request failed: ", 36);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = *(a2 + 4);
    v5 = qmi::asString();
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_1E50A8048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient13stopListeningEjbE3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient13stopListeningEjbE3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::stopListening(unsigned int,BOOL)::$_2,std::allocator<QMINasClient::stopListening(unsigned int,BOOL)::$_2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF9C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient14startListeningEjE3__2EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Indication Register request failed: ", 36);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = *(a2 + 4);
    v5 = qmi::asString();
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_1E50A8270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient14startListeningEjE3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient14startListeningEjE3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::startListening(unsigned int)::$_2,std::allocator<QMINasClient::startListening(unsigned int)::$_2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient20requestVoiceSystemIdEjNSt3__18weak_ptrI22NasVoiceSystemReceiverEEE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *this)
{
  if (*(this + 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
    LOBYTE(v27[0]) = 0;
    v30 = 0;
    v3 = ims::error(v19, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "GetVoiceSystemId request failed: ", 33);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(this + 1));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = *(this + 1);
    v5 = qmi::asString();
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v20 = ___ZZN12QMINasClient20requestVoiceSystemIdEjNSt3__18weak_ptrI22NasVoiceSystemReceiverEEENK3__0clERKN3nas19GetSubscriptionInfo8ResponseE_block_invoke;
    v21 = &unk_1E876C4A0;
    v22 = &v23;
    TlvValue = qmi::MessageBase::findTlvValue(this);
    v10 = TlvValue;
    if (TlvValue)
    {
      v11 = v9;
      v27[0] = TlvValue;
      LODWORD(v17[0]) = tlv::parseV<nas::tlv::SubInfoVSID>(v27, v9);
      if (v27[0])
      {
        v20(v19, v17);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(*this, 19, v10, v11);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "qmi.nas");
    LOBYTE(v27[0]) = 0;
    v30 = 0;
    v12 = ims::debug(v17, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "received GetVoiceSystemId response [voiceSystemId=", 50);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923350](*(v12 + 8), *(v24 + 6));
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "]", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v13 = *(v7 + 2);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = v14;
        v16 = *(v7 + 1);
        if (v16)
        {
          (*(*v16 + 16))(v16, *v7, *(v24 + 6));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    _Block_object_dispose(&v23, 8);
  }
}

void sub_1E50A86A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c110_ZTSNSt3__110shared_ptrIZN12QMINasClient20requestVoiceSystemIdEjNS_8weak_ptrI22NasVoiceSystemReceiverEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c110_ZTSNSt3__110shared_ptrIZN12QMINasClient20requestVoiceSystemIdEjNS_8weak_ptrI22NasVoiceSystemReceiverEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0,std::allocator<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0,std::allocator<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas19GetSubscriptionInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A88AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12QMINasClientEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12QMINasClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    operator new();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::SystemMode>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallDirection>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS4_13CallRadioTypeEybE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v3 = *(a1 + 32);
    v4 = *v3;
    std::string::basic_string[abi:ne200100]<0>(&v14, "qmi.nas");
    v10[0] = 0;
    v13 = 0;
    v5 = ims::error(&v14, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send CallStateNotification: ", 38);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), *(a2 + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = *(a2 + 4);
    v7 = qmi::asString();
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v7, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v14);
    }

    v9 = *(v3 + 8);
    LOWORD(v14) = 100;
    HIDWORD(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IMSNasClient::notifyDelegates(v4, v9, &v14, 2, *(v3 + 12));
  }
}

void sub_1E50A8E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c116_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEybE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c116_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEybE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL)::$_0,std::allocator<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFCC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas21CallStateNotification8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A9018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS4_13CallRadioTypeEyb17UacAccessResponseE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
    v15[0] = 0;
    v18 = 0;
    v5 = ims::error(v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send CallStateNotification: ", 38);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), *(a2 + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = *(a2 + 4);
    v7 = qmi::asString();
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v7, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    v9 = *(v2 + 8);
    v10 = *(v2 + 32);
    v11 = (v2 + 12);
    v12 = v3;
    v13 = 2;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "qmi.nas");
    v15[0] = 0;
    v18 = 0;
    v14 = ims::debug(v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "CallStateNotification request succeeded", 39);
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

    v9 = *(v2 + 8);
    v13 = *(v2 + 36);
    v10 = *(v2 + 32);
    v11 = (v2 + 12);
    v12 = v3;
  }

  IMSNasClient::notifyDelegates(v12, v9, v11, v13, v10);
}

void sub_1E50A9288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c135_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEyb17UacAccessResponseE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c135_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEyb17UacAccessResponseE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL,UacAccessResponse)::$_0,std::allocator<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL,UacAccessResponse)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EEOS1_OT__block_invoke(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  if (a2[1])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
    LOBYTE(v49[0]) = 0;
    v52 = 0;
    v5 = ims::error(__p, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send StartImsRegistrationUacCheck request: ", 53);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), a2[1]);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = a2[1];
    v7 = qmi::asString();
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v7, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v52 == 1 && v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }

    __p[1] = 0x4000000000;
    __p[0] = 100;
    LODWORD(v46) = 0;
    v9 = *(v3 + 8);
    v10 = *(v3 + 12);
    v11 = __p;
    v12 = v4;
    v13 = 2;
    goto LABEL_49;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(v49, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v48 = 0;
  v15 = ims::debug(v14, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Got Start IMS Registration UAC Check Response from BB", 53);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v18 = TlvValue;
  if (TlvValue)
  {
    v19 = v17;
    v40[0] = TlvValue;
    v20 = tlv::parseV<nas::tlv::Status>(v40, v17);
    if (v40[0])
    {
      v21 = v20;
      std::string::basic_string[abi:ne200100]<0>(v36, "qmi.nas");
      LOBYTE(v49[0]) = 0;
      v52 = 0;
      v22 = ims::debug(v36, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "StartImsRegistrationUacCheck response: Status=", 46);
      *(v22 + 17) = 0;
      v23 = nas::asString(v21);
      v24 = strlen(v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), v23, v24);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "(", 1);
      *(v22 + 17) = 0;
      MEMORY[0x1E6923340](*(v22 + 8), v21);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ")", 1);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if (v52 == 1 && v51 < 0)
      {
        operator delete(v50);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

      if ((v21 & 0xFFFFFFFB) == 2)
      {
        v25 = qmi::MessageBase::findTlvValue(a2);
        if (v25)
        {
          v27 = v25;
          v28 = v26;
          v49[0] = v25;
          v29 = tlv::parseV<nas::tlv::RemainingTimerValue>(v49, v26);
          if (v49[0])
          {
            v18 = v29;
LABEL_29:
            std::string::basic_string[abi:ne200100]<0>(v36, "qmi.nas");
            LOBYTE(v49[0]) = 0;
            v52 = 0;
            v30 = ims::debug(v36, v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "StartImsRegistrationUacCheck response: ", 39);
            *(v30 + 17) = 0;
            if (v21 == 2)
            {
              v31 = "Barring Duration = ";
            }

            else
            {
              v31 = "Timer 3346 remaining time = ";
            }

            if (v21 == 2)
            {
              v32 = 19;
            }

            else
            {
              v32 = 28;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), v31, v32);
            *(v30 + 17) = 0;
            MEMORY[0x1E6923350](*(v30 + 8), v18);
            *(v30 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), " milliseconds", 13);
            *(v30 + 17) = 0;
            (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v30 + 17) = 0;
            if (v52 == 1 && v51 < 0)
            {
              operator delete(v50);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[0]);
            }

            goto LABEL_40;
          }

          (*MEMORY[0x1E69E5140])(*a2, 16, v27, v28);
        }

        v18 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(*a2, 17, v18, v19);
      LODWORD(v21) = 0;
    }

    LODWORD(v18) = 0;
  }

  else
  {
    LODWORD(v21) = 0;
  }

LABEL_40:
  v43 = 0;
  v42 = 100;
  v33 = v18 / 0x3E8;
  if (v18 % 0x3E8)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v33;
  }

  HIDWORD(v43) = 64;
  v44 = 0;
  HIDWORD(v42) = v34;
  std::string::basic_string[abi:ne200100]<0>(v40, "qmi.nas");
  LOBYTE(v36[0]) = 0;
  v39 = 0;
  v35 = ims::debug(v40, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "StartImsRegistrationUacCheck response: barringTime will be ", 59);
  *(v35 + 17) = 0;
  MEMORY[0x1E6923350](*(v35 + 8), v34);
  *(v35 + 17) = 0;
  (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v35 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v13 = 2 * (v21 != 1);
  v9 = *(v3 + 8);
  v10 = *(v3 + 12);
  v11 = &v42;
  v12 = v4;
LABEL_49:
  IMSNasClient::notifyDelegates(v12, v9, v11, v13, v10);
}

void sub_1E50A9984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (*(v41 - 72) == 1 && *(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c112_ZTSNSt3__110shared_ptrIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c112_ZTSNSt3__110shared_ptrIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendStartImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1,std::allocator<QMINasClient::sendStartImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas28StartImsRegistrationUacCheck8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A9BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "qmi.nas");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to send StopImsRegistrationUacCheck request: ", 52);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = *(a2 + 4);
    v5 = qmi::asString();
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "nas");
    v7[0] = 0;
    v10 = 0;
    v3 = ims::debug(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Got Stop IMS Registration UAC Check Response from BB", 52);
  }

  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1E50A9DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t __copy_helper_block_e8_32c111_ZTSNSt3__110shared_ptrIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c111_ZTSNSt3__110shared_ptrIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendStopImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1,std::allocator<QMINasClient::sendStopImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFE40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas27StopImsRegistrationUacCheck8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E50A9F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *SipServerInviteProceedingTransactionState::SipServerInviteProceedingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EEFE90;
  a1[1] = &unk_1F5EEFF18;
  a1[26] = &unk_1F5EEFF48;
  return a1;
}

void sub_1E50AA060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteProceedingTransactionState::sendTryingResponse(SipServerInviteProceedingTransactionState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        v6 = **v5;
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = *(v5 + 38);
          if (v7)
          {
            v8 = *(v5 + 37);
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v9 = std::__shared_weak_count::lock(v7);
            std::__shared_weak_count::__release_weak(v7);
            if (v9)
            {
              if (v8)
              {
                v17[0] = 0;
                v17[1] = 0;
                std::string::basic_string[abi:ne200100]<0>(&v16, "Trying");
                SipTransactionLayer::messageEncoding(v8);
                SipResponse::create(v17);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }

        else
        {
          v11 = *(v5 + 16);
          v10 = v5 + 128;
          v12 = (*(v11 + 56))(v10);
          (*(*v10 + 16))(v10, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "How did a ", 10);
          *(v12 + 17) = 0;
          v13 = *(*(*this - 8) + 8);
          v14 = strlen((v13 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), v13 & 0x7FFFFFFFFFFFFFFFLL, v14);
          *(v12 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " end up in a ", 13);
          *(v12 + 17) = 0;
          v15 = strlen(("NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL, v15);
          *(v12 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "?", 1);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50AA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v14 = *(v12 - 56);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipServerInviteProceedingTransactionState::handleTimer(SipServerInviteProceedingTransactionState *this, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v2 == 6)
  {
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 1769566804 && v6 == 26478)
    {
      SipServerInviteProceedingTransactionState::sendTryingResponse(this);
    }
  }
}

void SipServerInviteProceedingTransactionState::enterState(SipServerInviteProceedingTransactionState *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        SipTransaction::stack(v5, &v11);
        v6 = SipStack::prefs(v11);
        v7 = ImsPrefs::AlwaysSendTryingResponse(v6);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, this + 27);
          v8 = v12;
          if (v12)
          {
            p_shared_weak_owners = &v12->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          }

          v13 = 0;
          operator new();
        }

        SipServerInviteProceedingTransactionState::sendTryingResponse(this);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E50AA554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void SipServerInviteProceedingTransactionState::handleRequest(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 256);
      if (v5)
      {
        v6 = (*(v5[16] + 64))(v5 + 16);
        (*(v5[16] + 16))(v5 + 16, v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "received duplicate request", 26);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        (*(*v5 + 120))(v7, v5);
        ImsResult::~ImsResult(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipServerInviteProceedingTransactionState::handleOutgoingResponse(int8x8_t *a1, uint64_t a2)
{
  SipTimerContainer::cancelTimer(a1 + 2, "Trying");
  v4 = a1[33];
  if (!v4)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1[32];
  if (v7)
  {
    v8 = *(*a2 + 128);
    if (v8 / 0x64 != 1)
    {
      if (v8 / 0x64 == 2)
      {
        v9 = 5;
LABEL_10:
        (*(**&v7 + 32))(v7, v9);
        goto LABEL_11;
      }

      if (v8 >= 0x12C)
      {
        v9 = 4;
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

uint64_t SipServerInviteCompletedTransactionState::SipServerInviteCompletedTransactionState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EEFF70;
  *(a1 + 8) = &unk_1F5EEFFF8;
  *(a1 + 208) = &unk_1F5EF0028;
  *(a1 + 272) = 1;
  return a1;
}

void sub_1E50AA8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteCompletedTransactionState::enterState(SipServerInviteCompletedTransactionState *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *(this + 68) = 1;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v7, this + 27);
        v5 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (SipTransaction::retryEnabled(v4))
        {
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = 0;
          operator new();
        }

        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E50AAA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  _Unwind_Resume(a1);
}

void SipServerInviteCompletedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7)
      {
        if (operator==(a2, &SipTimers::kTimerG))
        {
          v8 = (*(v7[16] + 64))(v7 + 16);
          (*(v7[16] + 16))(v7 + 16, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "resending response", 18);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          (*(*v7 + 120))(v12, v7);
          ImsResult::~ImsResult(v12);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (a1 + 216));
          v9 = v14;
          if (v14)
          {
            p_shared_weak_owners = &v14->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            *(a1 + 272) *= 2;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          }

          else
          {
            *(a1 + 272) *= 2;
          }

          v15 = 0;
          operator new();
        }

        if (operator==(a2, &SipTimers::kTimerH))
        {
          (*(*v7 + 32))(v7, 7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E50AAD7C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v3 - 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipServerInviteCompletedTransactionState::handleRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7)
      {
        v8 = (*(**a2 + 120))();
        v9 = *(v8 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v8 + 8);
        }

        if (v9 == 6 && (v10 >= 0 ? (v11 = v8) : (v11 = *v8), (v12 = *v11, v13 = *(v11 + 4), v12 == *"INVITE") ? (v14 = v13 == *"TE") : (v14 = 0), v14))
        {
          (*(*v7 + 120))(v22, v7);
          ImsResult::~ImsResult(v22);
        }

        else
        {
          v15 = (*(**a2 + 120))();
          v16 = *(v15 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v15 + 8);
          }

          if (v16 == 3)
          {
            if (v17 >= 0)
            {
              v18 = v15;
            }

            else
            {
              v18 = *v15;
            }

            v19 = *v18;
            v20 = *(v18 + 2);
            if (v19 == SipRequest::kMethodAck && v20 == BYTE2(SipRequest::kMethodAck))
            {
              (*(*v7 + 32))(v7, 6);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void *SipServerInviteConfirmedTransactionState::SipServerInviteConfirmedTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF0050;
  a1[1] = &unk_1F5EF00D8;
  a1[26] = &unk_1F5EF0108;
  return a1;
}

void sub_1E50AB03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteConfirmedTransactionState::enterState(SipServerInviteConfirmedTransactionState *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, this + 27);
  v1 = v4;
  if (v4)
  {
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  operator new();
}

void sub_1E50AB15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void SipServerInviteConfirmedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerI))
  {
    v3 = *(a1 + 264);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 256);
        if (v6)
        {
          (*(*v6 + 32))(v6, 7);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *SipServerInviteTerminationPendingTransactionState::SipServerInviteTerminationPendingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF0130;
  a1[1] = &unk_1F5EF01B0;
  a1[26] = &unk_1F5EF01E0;
  return a1;
}

void sub_1E50AB308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteProceedingTransactionState::~SipServerInviteProceedingTransactionState(SipServerInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteProceedingTransactionState::~SipServerInviteProceedingTransactionState(SipServerInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteCompletedTransactionState::~SipServerInviteCompletedTransactionState(SipServerInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteCompletedTransactionState::~SipServerInviteCompletedTransactionState(SipServerInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteConfirmedTransactionState::~SipServerInviteConfirmedTransactionState(SipServerInviteConfirmedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteConfirmedTransactionState::~SipServerInviteConfirmedTransactionState(SipServerInviteConfirmedTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteTerminationPendingTransactionState::~SipServerInviteTerminationPendingTransactionState(SipServerInviteTerminationPendingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteTerminationPendingTransactionState::~SipServerInviteTerminationPendingTransactionState(SipServerInviteTerminationPendingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0268;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0268;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0268;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF02E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF02E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF02E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0368;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0368;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0368;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF03E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF03E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF03E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1E50AC83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E50ACF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E50AD61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void sub_1E50ADB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AE06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AE540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void sub_1E50AFA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  STACK[0x318] = a21;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&STACK[0x318]);
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = &unk_1F5EF0658;
  *(a1 + 56) = v2;
  v3 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

void __Block_byref_object_dispose__6(void *a1)
{
  a1[6] = &unk_1F5EF0658;
  v1 = a1[12];
  if (v1)
  {
    a1[13] = v1;
    operator delete(v1);
  }
}

void sub_1E50AFDBC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = &unk_1F5EF3398;
  *(a1 + 56) = v2;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

void __Block_byref_object_dispose__18(void *a1)
{
  a1[6] = &unk_1F5EF3398;
  v1 = a1[10];
  if (v1)
  {
    a1[11] = v1;
    operator delete(v1);
  }
}

void sub_1E50AFF28(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50AFFE8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50B0094(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50B03E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void sub_1E50B07AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void sub_1E50B0B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void sub_1E50B0F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_AVCAudioSessionDelegate_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void XpcConnectionClient::XpcConnectionClient(std::string *this, __int128 *a2, std::string::size_type a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[0] = &this[3].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  v16 = 0u;
  snprintf(__str, 0x80uLL, "com.apple.ipTelephony.ConnectionClient.%p", this);
  this[1].__r_.__value_.__r.__words[2] = dispatch_queue_create(__str, 0);
  snprintf(__str, 0x80uLL, "com.apple.ipTelephony.ConnectionClient.%p.events", this);
  v6 = dispatch_queue_create(__str, 0);
  this[1].__r_.__value_.__l.__size_ = v6;
  dispatch_set_target_queue(v6, this[1].__r_.__value_.__l.__data_);
  dispatch_set_context(this[1].__r_.__value_.__l.__size_, this[1].__r_.__value_.__r.__words[2]);
  dispatch_set_finalizer_f(this[1].__r_.__value_.__l.__size_, _finalizeEventQueue);
  v7 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v7, 0x8000100u);
  if (v8)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, this, XpcConnectionClient::handleDaemonStart, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFRelease(v8);
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN19XpcConnectionClientC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP16dispatch_queue_s_block_invoke;
  aBlock[3] = &unk_1E876C5B8;
  aBlock[4] = v13;
  this[2].__r_.__value_.__l.__size_ = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN19XpcConnectionClientC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP16dispatch_queue_s_block_invoke_2;
  v11[3] = &unk_1E876C5E0;
  v11[4] = v13;
  this[2].__r_.__value_.__r.__words[2] = _Block_copy(v11);
  XpcConnectionClient::createConnection(this);
  _Block_object_dispose(v13, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E50B13D0(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v2, *(v1 + 80));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void _finalizeEventQueue(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

void XpcConnectionClient::handleDaemonStart(XpcConnectionClient *this, __CFNotificationCenter *a2, CFStringRef theString, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  syslog(5, "received daemon re-start notification for service %s\n", CStringPtr);
  v8 = *(a2 + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient17handleDaemonStartEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_14_0;
  block[4] = a2;
  dispatch_async(v8, block);
}

uint64_t XpcConnectionClient::createConnection(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

void XpcConnectionClient::~XpcConnectionClient(char **this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this);
  v3 = this[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClientD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_5_1;
  block[4] = this;
  dispatch_sync(v3, block);
  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
    this[4] = 0;
  }

  std::__tree<std::string>::destroy((this + 9), this[10]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ___ZN19XpcConnectionClientD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  XpcConnectionClient::destroyConnection(v1);
  v2 = (v1 + 80);
  v3 = *(v1 + 72);
  if (v3 != (v1 + 80))
  {
    do
    {
      _Block_release(v3[7]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::string>::destroy(v1 + 72, *(v1 + 80));
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = v2;
  v7 = *(v1 + 96);
  if (v7)
  {
    _Block_release(v7);
    *(v1 + 96) = 0;
  }

  v8 = *(v1 + 64);
  if (v8)
  {
    (*(v8 + 16))();
    _Block_release(*(v1 + 64));
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 56);
  if (v9)
  {
    _Block_release(v9);
    *(v1 + 56) = 0;
  }
}

XpcConnection *XpcConnectionClient::destroyConnection(XpcConnectionClient *this)
{
  result = *(this + 6);
  if (result)
  {
    XpcConnection::~XpcConnection(result);
    result = MEMORY[0x1E69235B0]();
    *(this + 6) = 0;
  }

  return result;
}

void *___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[13];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = v2[7];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke_2;
  v7[3] = &unk_1E876C628;
  v5 = *(a1 + 32);
  v7[4] = v4;
  v7[5] = v5;
  v2[13] = _Block_copy(v7);
  result = v2[6];
  if (result)
  {
    return XpcConnection::setInterruptionHandler(result, v7);
  }

  return result;
}

uint64_t ___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void ___ZN19XpcConnectionClient16createConnectionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient16createConnectionEv_block_invoke_2;
  block[3] = &__block_descriptor_tmp_16_2;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t XpcConnectionClient::sendXpcMessage(XpcConnectionClient *this, const xpc::dict *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient14sendXpcMessageERKN3xpc4dictE_block_invoke;
  block[3] = &unk_1E876C6D8;
  block[5] = this;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN19XpcConnectionClient14sendXpcMessageERKN3xpc4dictE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (v1)
  {
    xpc_connection_send_message(*v1, **(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void SipResultDomain::~SipResultDomain(void **this)
{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipResultDomain::textForResultCode(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  v3 = qword_1EE2BD560;
  if (qword_1EE2BD560)
  {
    v4 = &qword_1EE2BD560;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a1;
      v7 = v5 < a1;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    v8 = &ims::kEmptyString;
    if (v4 != &qword_1EE2BD560)
    {
      v9 = *(v4 + 8);
      v10 = (v4 + 5);
      if (v9 <= a1)
      {
        v8 = v10;
      }
    }
  }

  else
  {
    v8 = &ims::kEmptyString;
  }

  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v8, *(v8 + 1));
  }

  else
  {
    v11 = *v8;
    a2->__r_.__value_.__r.__words[2] = *(v8 + 2);
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

void SipResultDomain::makeResult(SipResultDomain *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  SipResultDomain::makeResult(*(this + 15), this + 32, a2);
  BambiCallTerminationResult::BambiCallTerminationResult(v5, this);
  ImsResult::setItem(a2, v5);
  v5[0] = &unk_1F5EE4F78;
  if (v6 < 0)
  {
    operator delete(v5[1]);
  }
}

void sub_1E50B1CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(v15);
  _Unwind_Resume(a1);
}

char **SipResultDomain::responseFromResult@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *(a1 + 40);
  {
    v6 = *(a1 + 48);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void BambiCallTerminationResult::BambiCallTerminationResult(BambiCallTerminationResult *this, const BambiCallTerminationReason *a2)
{
  *this = &unk_1F5EE4F78;
  v2 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v3 = *(a2 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t _GLOBAL__sub_I_SipResultDomain_cpp()
{
  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 5261651;
  ImsResultDomain::ImsResultDomain(&SipResultDomain::_domain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipResultDomain::_domain = &unk_1F5EF0468;
  byte_1EE2BD430 = 1;

  return __cxa_atexit(SipResultDomain::~SipResultDomain, &SipResultDomain::_domain, &dword_1E4C3F000);
}

void sub_1E50B1F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaSettings::~SDPMediaSettings(SDPMediaSettings *this)
{
  *this = &unk_1F5EF04B0;
  if (*(this + 272) == 1)
  {
    SDPMediaCrypto::~SDPMediaCrypto((this + 192));
  }

  if (*(this + 184) == 1)
  {
    SDPMediaCrypto::~SDPMediaCrypto((this + 104));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  SDPMediaSettings::~SDPMediaSettings(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaSettings::setRemoteAddress(uint64_t a1, std::string *a2)
{
  IpAddress::createAddress(a2, &v4);
  v3 = *(a1 + 16);
  *(a1 + 8) = v4;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

SDPMediaCrypto *std::optional<SDPMediaCrypto>::operator=[abi:ne200100]<SDPMediaCrypto const&,void>(SDPMediaCrypto *a1, const SDPMediaCrypto *a2)
{
  if (*(a1 + 80) == 1)
  {
    SDPMediaCrypto::operator=(a1, a2);
  }

  else
  {
    SDPMediaCrypto::SDPMediaCrypto(a1, a2);
    *(a1 + 80) = 1;
  }

  return a1;
}

BOOL SDPMediaSettings::operator!=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  if (v4)
  {
    if (!v6 || ((*(*v4 + 104))(v4, v5, 0) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (!v6)
  {
    goto LABEL_23;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 26) != *(a2 + 26) || *(a1 + 28) != *(a2 + 28) || *(a1 + 30) != *(a2 + 30))
  {
    goto LABEL_23;
  }

  v8 = *(a1 + 95);
  if (v8 >= 0)
  {
    v9 = *(a1 + 95);
  }

  else
  {
    v9 = *(a1 + 80);
  }

  v10 = *(a2 + 95);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 80);
  }

  if (v9 != v10)
  {
    goto LABEL_23;
  }

  v12 = v8 >= 0 ? (a1 + 72) : *(a1 + 72);
  v13 = v11 >= 0 ? (a2 + 72) : *(a2 + 72);
  if (memcmp(v12, v13, v9))
  {
    goto LABEL_23;
  }

  if (*(a1 + 184) != 1)
  {
    if ((*(a2 + 184) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_23:
    v14 = 1;
    return v14 & 1;
  }

  if (!*(a2 + 184) || operator!=(a1 + 104, a2 + 104))
  {
    goto LABEL_23;
  }

LABEL_30:
  v16 = *(a1 + 272);
  v14 = v16 | *(a2 + 272);
  if (v16 != 1 || (*(a2 + 272) & 1) == 0)
  {
    return v14 & 1;
  }

  return operator!=(a1 + 192, a2 + 192);
}

BOOL operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 72) == *(a2 + 72) && *(a1 + 73) == *(a2 + 73) && *(a1 + 74) == *(a2 + 74) && *(a1 + 75) == *(a2 + 75) && (v3 = a1 + 48, v2 = *(a1 + 48), v4 = *(v3 + 8) - v2, v6 = a2 + 48, v5 = *(a2 + 48), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) != 0;
  }

  else
  {
    return 1;
  }
}

void dispatch::workloop::~workloop(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_release(v1);
  }
}

void xcap::getQueue(void *a1@<X8>)
{
  if (xcap::getQueue(void)::once != -1)
  {
    dispatch_once(&xcap::getQueue(void)::once, &__block_literal_global_11);
  }

  v3 = sXcapDispatchQueue;
  *a1 = sXcapDispatchQueue;
  if (v3)
  {

    dispatch_retain(v3);
  }
}

void ___ZN4xcap8getQueueEv_block_invoke()
{
  if (!sXcapDispatchQueue)
  {
    xcap::getWorkloop(&v4);
    v0 = v4;
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v2 = dispatch_queue_create_with_target_V2("com.apple.ipTelephony.xcap.queue", initially_inactive, v0);
    dispatch_set_qos_class_floor(v2, QOS_CLASS_USER_INITIATED, 0);
    dispatch_activate(v2);
    v3 = sXcapDispatchQueue;
    sXcapDispatchQueue = v2;
    if (v3)
    {
      dispatch_release(v3);
    }

    if (v0)
    {
      dispatch_release(v0);
    }
  }
}

void xcap::getWorkloop(void *a1@<X8>)
{
  if (xcap::getWorkloop(void)::once != -1)
  {
    dispatch_once(&xcap::getWorkloop(void)::once, &__block_literal_global_7);
  }

  v3 = sXcapDispatchWorkloop;
  *a1 = sXcapDispatchWorkloop;
  if (v3)
  {

    dispatch_retain(v3);
  }
}

void ___ZN4xcap11getWorkloopEv_block_invoke()
{
  if (!sXcapDispatchWorkloop)
  {
    v0 = dispatch_workloop_create("com.apple.ipTelephony.xcap.workloop");
    v1 = sXcapDispatchWorkloop;
    sXcapDispatchWorkloop = v0;
    if (v1)
    {

      dispatch_release(v1);
    }
  }
}

uint64_t _GLOBAL__sub_I_ImsDispatch_cpp()
{
  sImsDispatchQueue = 0;
  __cxa_atexit(dispatch::queue::~queue, &sImsDispatchQueue, &dword_1E4C3F000);
  sXcapDispatchQueue = 0;
  __cxa_atexit(dispatch::queue::~queue, &sXcapDispatchQueue, &dword_1E4C3F000);
  sXcapDispatchWorkloop = 0;

  return __cxa_atexit(dispatch::workloop::~workloop, &sXcapDispatchWorkloop, &dword_1E4C3F000);
}

void LazuliStatusHeader::LazuliStatusHeader(LazuliStatusHeader *this, unsigned int __val)
{
  *(&v8.__r_.__value_.__s + 23) = 4;
  strcpy(&v8, "000 ");
  std::to_string(&__p, __val);
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

  v5 = std::string::append(&v8, p_p, size);
  v6 = std::string::append(v5, " OK", 3uLL);
  LazuliStringHeader::LazuliStringHeader(this, "Status", v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F5EF0530;
}

void sub_1E50B2648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50B2768(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliStatusHeader::~LazuliStatusHeader(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50B290C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliStatusHeader::create(unsigned int)::HeaderWrapper,std::allocator<LazuliStatusHeader::create(unsigned int)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF0590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliStatusHeader::create(unsigned int)::HeaderWrapper::~HeaderWrapper(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void RTCPSRPacket::packetize(RTCPSRPacket *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  LODWORD(__x.__begin_) = bswap32(*(this + 6));
  v4.__i_ = 0;
  std::vector<unsigned int>::insert(a2, v4, &__x);
  RTCPSenderInfo::packetize((this + 28), &__x);
  begin = __x.__begin_;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), __x.__begin_, __x.__end_, __x.__end_ - __x.__begin_);
  RTCPReceiverReports::packetize((this + 48), &__x);
  if (begin)
  {
    operator delete(begin);
  }

  v6 = __x.__begin_;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), __x.__begin_, __x.__end_, __x.__end_ - __x.__begin_);
  v7 = -73 * ((*(this + 14) - *(this + 12)) >> 2);
  v8.__i_ = *a2;
  v9 = (*(a2 + 8) - *a2) >> 2;
  *(this + 12) = 0;
  *(this + 13) = v7;
  *(this + 4) = 200;
  *(this + 10) = v9;
  LODWORD(__x.__begin_) = bswap32(v9) & 0xFFFF0000 | 0xC800 | v7 & 0x1F | 0x80;
  std::vector<unsigned int>::insert(a2, v8, &__x);
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_1E50B2BC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPSRPacket::toStream(RTCPSRPacket *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCPSRPacket - Sender SSRC: ", 28);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 6));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  RTCPSenderInfo::toStream((this + 28), a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (this + 48);
  if (v5 != v4)
  {
    RTCPReceiverReports::toStream(v6, a2);
  }

  return a2;
}

void RTCPSRPacket::~RTCPSRPacket(RTCPSRPacket *this)
{
  *this = &unk_1F5EF0658;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5EF0658;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *SipSessionState::SipSessionState(void *a1, uint64_t a2)
{
  SipSessionInterface::stack(*a2, &v23);
  v21 = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  SipState::SipState(a1, &v21);
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "sip.session.state");
  v4 = *a2;
  v15 = *(*a2 + 192);
  shared_owners = v4[8].__shared_owners_;
  if (SHIBYTE(v4[9].__shared_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v4[8].__shared_weak_owners_, v4[9].__vftable);
  }

  else
  {
    __p = *(v4 + 208);
  }

  shared_weak_owners = v4[9].__shared_weak_owners_;
  ims::getQueue(&v25);
  ClientConfig::getLogTag(&v15, &v22);
  if ((v20 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v6 = v20;
  }

  else
  {
    v6 = v19[1];
  }

  v7 = std::string::insert(&v22, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v24 = v7->__r_.__value_.__r.__words[2];
  v23 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v9 = &v23;
  }

  else
  {
    v9 = v23;
  }

  a1[27] = 0;
  a1[28] = 0;
  v10 = v25;
  a1[29] = v25;
  if (v10)
  {
    dispatch_retain(v10);
  }

  a1[30] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 31), "com.apple.ipTelephony", v9);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  a1[26] = &unk_1F5EF07E8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  *a1 = &unk_1F5EF0EA8;
  a1[1] = &unk_1F5EF0F50;
  a1[26] = &unk_1F5EF0F80;
  a1[32] = 0;
  a1[33] = 0;
  v11 = *a2;
  v12 = *(a2 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
    v13 = a1[33];
    a1[32] = v11;
    a1[33] = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    a1[32] = v11;
    a1[33] = 0;
  }

  return a1;
}

void sub_1E50B3010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  SipState::~SipState(v31);
  _Unwind_Resume(a1);
}

void sub_1E50B3098(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  v20 = *(v19 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  JUMPOUT(0x1E50B3090);
}

uint64_t SipSessionState::stateMachine(SipSessionState *this)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 32);
  if (v4)
  {
    v5 = v4 + 712;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 32);
  if (v4)
  {
    v5 = v4 + 712;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

uint64_t SipSessionState::handleRequest(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (!v9)
      {
LABEL_82:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return v9;
      }

      v10 = (*(**a2 + 120))();
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v11 == 6 && (v12 >= 0 ? (v13 = v10) : (v13 = *v10), (v14 = *v13, v15 = *(v13 + 4), v14 == *"CANCEL") ? (v16 = v15 == *"EL") : (v16 = 0), v16))
      {
        v56 = a2[1];
        v91 = *a2;
        v92 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = *(a3 + 8);
        v89 = *a3;
        v90 = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleCancel(v9, &v91, &v89);
        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        v58 = v92;
        if (!v92)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v17 = (*(**a2 + 120))();
        v18 = *(v17 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v17 + 8);
        }

        if (v18 == 5 && (v19 >= 0 ? (v20 = v17) : (v20 = *v17), (v21 = *v20, v22 = *(v20 + 4), v21 == *"PRACK") ? (v23 = v22 == SipRequest::kMethodPrack[4]) : (v23 = 0), v23))
        {
          v60 = a2[1];
          v87 = *a2;
          v88 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = *(a3 + 8);
          v85 = *a3;
          v86 = v61;
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::handlePrack(v9, &v87, &v85);
          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }

          v58 = v88;
          if (!v88)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v24 = (*(**a2 + 120))();
          v25 = *(v24 + 23);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v24 + 8);
          }

          if (v25 == 3 && (v26 >= 0 ? (v27 = v24) : (v27 = *v24), (v28 = *v27, v29 = *(v27 + 2), v28 == SipRequest::kMethodBye) ? (v30 = v29 == BYTE2(SipRequest::kMethodBye)) : (v30 = 0), v30))
          {
            v62 = a2[1];
            v83 = *a2;
            v84 = v62;
            if (v62)
            {
              atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v63 = *(a3 + 8);
            v81 = *a3;
            v82 = v63;
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::handleBye(v9, &v83, &v81);
            if (v82)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v82);
            }

            v58 = v84;
            if (!v84)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v31 = (*(**a2 + 120))();
            v32 = *(v31 + 23);
            v33 = v32;
            if ((v32 & 0x80u) != 0)
            {
              v32 = *(v31 + 8);
            }

            if (v32 == 7)
            {
              v34 = v33 >= 0 ? v31 : *v31;
              v35 = *v34;
              v36 = *(v34 + 3);
              if (v35 == *"OPTIONS" && v36 == *"IONS")
              {
                v66 = a2[1];
                v80[0] = *a2;
                v80[1] = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                }

                v67 = *(a3 + 8);
                v78 = *a3;
                v79 = v67;
                if (v67)
                {
                  atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
                }

                SipSession::handleOptions(v9, v80);
              }
            }

            v38 = (*(**a2 + 120))();
            v39 = *(v38 + 23);
            v40 = v39;
            if ((v39 & 0x80u) != 0)
            {
              v39 = *(v38 + 8);
            }

            if (v39 == 4 && (v40 >= 0 ? (v41 = v38) : (v41 = *v38), *v41 == *"INFO"))
            {
              v68 = a2[1];
              v76 = *a2;
              v77 = v68;
              if (v68)
              {
                atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v69 = *(a3 + 8);
              v74 = *a3;
              v75 = v69;
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleInfo(v9, &v76, &v74);
              if (v75)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v75);
              }

              v58 = v77;
              if (!v77)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v42 = (*(**a2 + 120))();
              v43 = *(v42 + 23);
              v44 = v43;
              if ((v43 & 0x80u) != 0)
              {
                v43 = *(v42 + 8);
              }

              if (v43 != 6 || (v44 >= 0 ? (v45 = v42) : (v45 = *v42), (v46 = *v45, v47 = *(v45 + 4), v46 == *"UPDATE") ? (v48 = v47 == *"TE") : (v48 = 0), !v48))
              {
                v49 = (*(**a2 + 120))();
                v50 = *(v49 + 23);
                v51 = v50;
                if ((v50 & 0x80u) != 0)
                {
                  v50 = *(v49 + 8);
                }

                if (v50 != 6 || (v51 >= 0 ? (v52 = v49) : (v52 = *v49), (v53 = *v52, v54 = *(v52 + 4), v53 == *"INVITE") ? (v55 = v54 == *"TE") : (v55 = 0), !v55))
                {
                  v9 = 0;
                  goto LABEL_82;
                }
              }

              v64 = a2[1];
              v72 = *a2;
              v73 = v64;
              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v65 = *(a3 + 8);
              v70 = *a3;
              v71 = v65;
              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleInviteOrUpdateRequest(v9, &v72);
              if (v71)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v71);
              }

              v58 = v73;
              if (!v73)
              {
LABEL_81:
                v9 = 1;
                goto LABEL_82;
              }
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      goto LABEL_81;
    }
  }

  return 0;
}

void sub_1E50B36F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void SipSessionState::handleUpdateResponse(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (v9)
      {
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = a3[1];
        v12 = *a3;
        v13 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleInviteOrUpdateResponse(v9, &v14, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E50B3868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipSessionState::handleInviteResponse(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (v9)
      {
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = a3[1];
        v12 = *a3;
        v13 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleInviteOrUpdateResponse(v9, &v14, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E50B3944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipSessionState::handleResponse(void *a1, void *a2, void *a3)
{
  v4 = a1[33];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[32];
      if (!v9)
      {
        goto LABEL_71;
      }

      v10 = *(*a3 + 264);
      v11 = *(*a3 + 272);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = (*(*v10 + 120))(v10);
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v13 == 6)
      {
        if (v14 >= 0)
        {
          v15 = v12;
        }

        else
        {
          v15 = *v12;
        }

        v16 = *v15;
        v17 = *(v15 + 4);
        v19 = v16 == *"UPDATE" && v17 == *"TE";
        if (!v11)
        {
LABEL_22:
          if (v19)
          {
            v20 = a2[1];
            v51 = *a2;
            v52 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = a3[1];
            v49 = *a3;
            v50 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 80))(a1, &v51, &v49);
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            v22 = v52;
            if (!v52)
            {
              goto LABEL_71;
            }

            goto LABEL_57;
          }

          v23 = *(*a3 + 264);
          v24 = *(*a3 + 272);
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

          if (v26 == 6)
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
            v32 = v29 == *"INVITE" && v30 == *"TE";
            if (!v24)
            {
LABEL_49:
              if (!v32)
              {
                v35 = *(*a2 + 128);
                if (v35 == 481 || v35 == 408)
                {
                  v36 = (v9->__vftable[1].__get_deleter)(v9);
                  (v9->__on_zero_shared)(v9, v36);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "terminating session due to ", 27);
                  *(v36 + 17) = 0;
                  MEMORY[0x1E6923350](*(v36 + 8), *(*a2 + 128));
                  *(v36 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), " response", 9);
                  *(v36 + 17) = 0;
                  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v36 + 17) = 0;
                  bzero(v44, 0x250uLL);
                  shared_weak_owners = v9[34].__shared_weak_owners_;
                  if (shared_weak_owners)
                  {
                    shared_owners = v9[34].__shared_owners_;
                    atomic_fetch_add_explicit(&shared_weak_owners->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v42 = 0;
                    v43 = std::__shared_weak_count::lock(shared_weak_owners);
                    if (v43)
                    {
                      v42 = shared_owners;
                    }
                  }

                  else
                  {
                    v42 = 0;
                    v43 = 0;
                  }

                  BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(v44, &v42);
                  if (v43)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
                  }

                  if (shared_weak_owners)
                  {
                    std::__shared_weak_count::__release_weak(shared_weak_owners);
                  }

                  v39 = a2[1];
                  v41[0] = *a2;
                  v41[1] = v39;
                  if (v39)
                  {
                    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
                  }

                  SipSessionInterface::stack(v9, &v40);
                  BambiCallSessionTerminationBaseEvent::setReasonFromIncomingResponse(v44, v41);
                }

                goto LABEL_71;
              }

              v33 = a2[1];
              v47 = *a2;
              v48 = v33;
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v34 = a3[1];
              v45 = *a3;
              v46 = v34;
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*a1 + 72))(a1, &v47, &v45);
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              v22 = v48;
              if (v48)
              {
LABEL_57:
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

LABEL_71:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              return;
            }
          }

          else
          {
            v32 = 0;
            if (!v24)
            {
              goto LABEL_49;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          goto LABEL_49;
        }
      }

      else
      {
        v19 = 0;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      goto LABEL_22;
    }
  }
}

void sub_1E50B3DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void SipSessionState::terminateSessionWithEvent(SipSessionState *this, char **a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        SipSession::terminateWithEvent(v7, a2, 13);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipSessionState::handleTransactionError(SipSessionState *a1, uint64_t **a2, uint64_t a3)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  ImsResult::ImsResult(&v31, v7);
  v8 = a2[1];
  v9 = *(a2 + 4);
  if (v8 == &SipResultDomain::_domain && v9 == 408)
  {
    bzero(v28, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 13);
    v28[0] = &unk_1F5EC4038;
    v10 = *(a1 + 33);
    if (!v10)
    {
      v11 = 0;
      goto LABEL_33;
    }

    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(*a3 + 264);
        v14 = *(*a3 + 272);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = (*(*v13 + 120))(v13);
        v16 = *(v15 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v15 + 8);
        }

        if (v16 == 6 && (v17 >= 0 ? (v18 = v15) : (v18 = *v15), (v19 = *v18, v20 = *(v18 + 4), v19 == *"INVITE") ? (v21 = v20 == *"TE") : (v21 = 0), v21))
        {
          v22 = SipSession::confirmed(v12) ^ 1;
          if (v14)
          {
LABEL_21:
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            if (v22)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = 0;
          if (v14)
          {
            goto LABEL_21;
          }
        }

        if (v22)
        {
LABEL_39:
          *&__str.__r_.__value_.__l.__data_ = 0uLL;
          SipSessionInterface::stack(v12, &__str);
          if (__str.__r_.__value_.__r.__words[0])
          {
            v23 = *(__str.__r_.__value_.__r.__words[0] + 296);
            v24 = *(__str.__r_.__value_.__r.__words[0] + 248);
            v25 = *(__str.__r_.__value_.__r.__words[0] + 256);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v24)
            {
              v26 = SipUserAgent::config(v24);
              shouldCSFBOnInviteResponse = SipUserAgentConfig::shouldCSFBOnInviteResponse(v26, 0x198u, v23);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          if (__str.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
          }
        }
      }
    }

LABEL_33:
    SipSessionState::terminateSessionWithEvent(a1, v28);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    goto LABEL_36;
  }

  if (v8 == &_posixDomain)
  {
    if (v9 == 60)
    {
LABEL_31:
      bzero(v28, 0x250uLL);
      BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 11);
      v28[0] = &unk_1F5EC4038;
      SipSessionState::terminateSessionWithEvent(a1, v28);
      goto LABEL_36;
    }

    if (*(&v31 + 1) != &_posixDomain)
    {
LABEL_35:
      bzero(v28, 0x250uLL);
      BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 22);
      v28[0] = &unk_1F5EC4038;
      SipSessionState::terminateSessionWithEvent(a1, v28);
      goto LABEL_36;
    }

LABEL_30:
    if (v32 == 60)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (*(&v31 + 1) == &_posixDomain)
  {
    goto LABEL_30;
  }

  bzero(v28, 0x250uLL);
  BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 10);
  v28[0] = &unk_1F5EC4038;
  ImsResult::description(a2, &__str);
  std::string::operator=(&v29, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  SipSessionState::terminateSessionWithEvent(a1, v28);
LABEL_36:
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v28);
  ImsResult::~ImsResult(&v31);
}

void sub_1E50B4314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&a16);
  ImsResult::~ImsResult((v18 - 144));
  _Unwind_Resume(a1);
}

void SipSessionState::fireCallEvent(SipSessionState *this, char **a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        SipSession::fireCallEvent(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipSessionConfirmedState::enterState(SipSessionConfirmedState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        SipSession::handleSessionConfirmed(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipSessionRttUpgradeRequestedState::enterState(SipSessionRttUpgradeRequestedState *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 32))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v7, this + 27);
        v4 = v8;
        if (v8)
        {
          p_shared_weak_owners = &v8->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E50B460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void SipSessionRttUpgradeRequestedState::handleTimer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 15)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = *(v4 + 7);
    if (v5 == 0x6172677055747452 && v6 == 0x72656D6954656461)
    {
      v9 = *(a1 + 264);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 256);
          if (v12)
          {
            SipSession::answerRttUpgradeRequest(v12, v13);
            ImsResult::~ImsResult(v13);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }
  }
}

void SipSessionSilentHangUpState::enterState(SipSessionSilentHangUpState *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 32))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v7, this + 27);
        v4 = v8;
        if (v8)
        {
          p_shared_weak_owners = &v8->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E50B489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

BOOL SipSessionSilentHangUpState::handleRequest(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[33];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[32];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = (*(**a2 + 120))();
        v12 = *(v11 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v11 + 8);
        }

        if (v12 == 3)
        {
          v14 = v13 >= 0 ? v11 : *v11;
          v15 = *v14;
          v16 = *(v14 + 2);
          if (v15 == SipRequest::kMethodBye && v16 == BYTE2(SipRequest::kMethodBye))
          {
            SipTimerContainer::cancelAllTimers((a1 + 2));
            v41 = 0;
            v42 = 0;
            SipSessionInterface::stack(v9, &v41);
            if (v41)
            {
              v28 = *(v41 + 31);
              v29 = *(v41 + 32);
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v28)
              {
                v39 = 0;
                v40 = 0;
                v44 = 200;
                v43 = v28 + 384;
                std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
              }

              if (v29)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              }
            }

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            v30 = (*(*a1 + 32))(a1);
            (*(*v30 + 32))(v30, 13);
            goto LABEL_44;
          }
        }

        v18 = (*(**a2 + 120))();
        v19 = *(v18 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 + 8);
        }

        if (v19 == 6 && (v20 >= 0 ? (v21 = v18) : (v21 = *v18), (v22 = *v21, v23 = *(v21 + 4), v22 == *"CANCEL") ? (v24 = v23 == *"EL") : (v24 = 0), v24 && (v32 = v9[10].__vftable) != 0 && (v32[70].__on_zero_shared & 1) == 0))
        {
          v33 = a2[1];
          v37 = *a2;
          v38 = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = *(a3 + 8);
          v35 = *a3;
          v36 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::handleCancel(v9, &v37, &v35);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          v27 = v38;
          if (!v38)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v41 = 0;
          v42 = 0;
          SipSessionInterface::stack(v9, &v41);
          if (v41)
          {
            v25 = *(v41 + 31);
            v26 = *(v41 + 32);
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v25)
            {
              v39 = 0;
              v40 = 0;
              v44 = 500;
              v43 = v25 + 384;
              std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }

          v27 = v42;
          if (!v42)
          {
            goto LABEL_44;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

LABEL_44:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      return v10;
    }
  }

  return 0;
}

void sub_1E50B4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t SipSessionSilentHangUpState::handleTimer(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 == 21)
  {
    v5 = v4 >= 0 ? a2 : *a2;
    v6 = *v5;
    v7 = v5[1];
    v8 = *(v5 + 13);
    v9 = v6 == 0x6148746E656C6953 && v7 == 0x656D69547055676ELL;
    if (v9 && v8 == 0x656D614E72656D69)
    {
      v11 = *(*(*(*result + 32))(result) + 32);

      return v11();
    }
  }

  return result;
}

void SipSessionSentByeState::enterState(SipSessionSentByeState *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 27);
        v6 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = 0;
        v11 = 0;
        SipSessionInterface::stack(v5, &v10);
        if (v10)
        {
          v8 = *(v10 + 31);
          v7 = *(v10 + 32);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v12 = 0;
            operator new();
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E50B5064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void SipSessionSentByeState::handleTimer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 21)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 13);
    v8 = v5 == 0x46676E6974696157 && v6 == 0x736552657942726FLL;
    if (v8 && v7 == 0x65736E6F70736552)
    {
      v11 = *(a1 + 264);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 256);
          if (v14)
          {
            v15 = (*(*v14 + 64))(v14);
            (*(*v14 + 16))(v14, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "timed out waiting for response to our BYE. Terminating session.", 63);
            *(v15 + 17) = 0;
            (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v15 + 17) = 0;
            v16 = 0;
            v17 = 0;
            SipSession::performPendingTermination(v14, &v16, 13, 1);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }
  }
}

void sub_1E50B5268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *SipSessionSentByeState::handleRequest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(**a2 + 120))();
  v6 = *(v5 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6 != 3 || (v7 >= 0 ? (v8 = v5) : (v8 = *v5), (v9 = *v8, v10 = *(v8 + 2), v9 == SipRequest::kMethodBye) ? (v11 = v10 == BYTE2(SipRequest::kMethodBye)) : (v11 = 0), !v11))
  {
    v12 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    SipServerTransaction::sendResponse(v12, v18);
    ImsResult::~ImsResult(v18);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  result = *(a1 + 264);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v14 = result;
      v15 = *(a1 + 256);
      if (!v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](result);
        return 0;
      }

      v16 = *a3;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      SipServerTransaction::sendResponse(v16, v23);
      ImsResult::~ImsResult(v23);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = (*(*v15 + 64))(v15);
      (*(*v15 + 16))(v15, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "received a BYE while waiting for a response to our BYE. Terminating session.", 76);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      v19 = 0;
      v20 = 0;
      SipSession::performPendingTermination(v15, &v19, 13, 1);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      return 1;
    }
  }

  return result;
}

void sub_1E50B54C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipSessionSentByeState::handleResponse(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(*a3 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 120))(v5);
  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 == 3 && (v9 >= 0 ? (v10 = v7) : (v10 = *v7), (v11 = *v10, v12 = *(v10 + 2), v11 == SipRequest::kMethodBye) ? (v13 = v12 == BYTE2(SipRequest::kMethodBye)) : (v13 = 0), v13))
  {
    v14 = *(*a2 + 128) - 200;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v14 <= 0xFFFFFF9B)
    {
      v15 = *(a1 + 264);
      if (v15)
      {
        v16 = std::__shared_weak_count::lock(v15);
        if (v16)
        {
          v17 = v16;
          v18 = *(a1 + 256);
          if (v18)
          {
            v19 = (*(*v18 + 64))(v18);
            (*(*v18 + 16))(v18, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received response to our BYE. Time to terminate.", 48);
            *(v19 + 17) = 0;
            (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v19 + 17) = 0;
            v20 = a2[1];
            v21 = *a2;
            v22 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::performPendingTermination(v18, &v21, 13, 1);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }
    }
  }

  else if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E50B5730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t SipSessionTerminatedState::handleRequest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  SipServerTransaction::sendResponse(v3, v7);
  ImsResult::~ImsResult(v7);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_1E50B57CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSipSessionState::~SipSessionState(SipSessionState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionConfirmedState::~SipSessionConfirmedState(SipSessionConfirmedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionConfirmedState::~SipSessionConfirmedState(SipSessionConfirmedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionRttUpgradeRequestedState::~SipSessionRttUpgradeRequestedState(SipSessionRttUpgradeRequestedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionRttUpgradeRequestedState::~SipSessionRttUpgradeRequestedState(SipSessionRttUpgradeRequestedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionSilentHangUpState::~SipSessionSilentHangUpState(SipSessionSilentHangUpState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionSilentHangUpState::~SipSessionSilentHangUpState(SipSessionSilentHangUpState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionSentByeState::~SipSessionSentByeState(SipSessionSentByeState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionSentByeState::~SipSessionSentByeState(SipSessionSentByeState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionTerminatedState::~SipSessionTerminatedState(SipSessionTerminatedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionTerminatedState::~SipSessionTerminatedState(SipSessionTerminatedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<SipSessionState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipSessionState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0810;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0810;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0810;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0890;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0890;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0890;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0910;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0910;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0910;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN18IPTelephonyHandler5startEv_block_invoke(ims *a1)
{
  v1 = ims::logger(a1);
  v3 = 0;
  LOBYTE(__p) = 0;
  ImsLogger::setPriority(v1, 3, &__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }

  wis::metrics::initAWDMetrics(0x22);
}

void sub_1E50B65CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InitializeIPTelephony()
{
  v0 = IPTelephonyHandler::gIPTelephonyHandler;
  if (!IPTelephonyHandler::gIPTelephonyHandler)
  {
    operator new();
  }

  ims::getQueue(&queue);
  v1 = queue;
  dispatch_async(queue, &__block_literal_global_12);
  if (v1)
  {
    dispatch_release(v1);
  }

  syslog(5, "IPTelephonyManager ready!");
  return v0;
}

void ImsUuid::assign(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v4 = (a1 + 8);

    std::string::operator=(v4, a2);
  }

  else
  {
    ImsUuid::generate(&v5, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = v7;
    *(&v7.__r_.__value_.__s + 23) = 0;
    v7.__r_.__value_.__s.__data_[0] = 0;
    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E50B6774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsUuid::generate(ImsUuid *__return_ptr a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v6 = 0;
  memset(v4, 0, sizeof(v4));
  MEMORY[0x1E69244D0](uu);
  uuid_unparse(uu, v4);
  ImsUuid::ImsUuid(a1, v4);
  v3 = *MEMORY[0x1E69E9840];
}

char *ImsUuid::asStringNoDashes@<X0>(ImsUuid *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v11 = 45;
  v5 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v4, v4 + size, &v11);
  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  v8 = a2 + v6;
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, &v5[-v9], v8 - v5);
  return ims::lowerCase(a2);
}

void sub_1E50B68F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void ImsUuid::ImsUuid(ImsUuid *this, const char *__s)
{
  *this = &unk_1F5EBEE78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v7 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  ImsUuid::assign(this, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1E50B6A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}