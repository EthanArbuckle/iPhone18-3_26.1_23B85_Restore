void sub_1E4F01930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDBFD0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    QMIServiceMsg::serialize(&v44, this);
    qmi::MessageBase::MessageBase(v26, v44);
    qmi::MessageBase::validateMsgId(v26);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v26);
  }

  v6 = *(a1 + 8);
  v7 = std::string::basic_string[abi:ne200100]<0>(&v44, "rtp.qmidriver");
  v28[0] = 0;
  v31 = 0;
  v8 = ims::debug(v7, v28);
  if (!v6)
  {
    __cxa_bad_typeid();
  }

  v9 = v8;
  v10 = *(*(*v6 - 8) + 8);
  v11 = *(v8 + 8);
  v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleServiceUninitializeIndication", 35);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (v27)
  {
    std::string::basic_string[abi:ne200100]<0>(v36, "rtp.qmidriver");
    LOBYTE(v44) = 0;
    v48 = 0;
    v13 = ims::error(v36, &v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Error indication for request: ", 30);
    *(v13 + 17) = 0;
    v14 = QMIRTPCommandDriver::nameForRequestId(&v40, v26[0]);
    (*(*v13 + 32))(v13, &v40, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " error:", 7);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), v27);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " reason: ", 9);
    *(v13 + 17) = 0;
    v15 = qmi::asString();
    v16 = strlen(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v15, v16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }

    v17 = v6[21];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = v6[20];
        if (v20)
        {
          v21 = *(v20 + 72);
          v22 = *(v20 + 80);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v21, 24);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 0;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v37 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms19ServiceUninitialize10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v38 = &unk_1E876AF28;
    v39 = &v40;
    v44 = v36;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v26, &v44);
    if (*(v41 + 6))
    {
      std::string::basic_string[abi:ne200100]<0>(v34, "rtp.qmidriver");
      LOBYTE(v44) = 0;
      v48 = 0;
      v23 = ims::error(v34, &v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Error indication for request: ", 30);
      *(v23 + 17) = 0;
      v24 = QMIRTPCommandDriver::nameForRequestId(v32, v26[0]);
      (*(*v23 + 32))(v23, v32, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " [error=", 8);
      *(v23 + 17) = 0;
      MEMORY[0x1E6923340](*(v23 + 8), *(v41 + 6));
      *(v23 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "]", 1);
      *(v23 + 17) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v34, "rtp.qmidriver");
      LOBYTE(v44) = 0;
      v48 = 0;
      v23 = ims::spam(v34, &v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Success indication for request: ", 32);
      *(v23 + 17) = 0;
      v25 = QMIRTPCommandDriver::nameForRequestId(v32, v26[0]);
      (*(*v23 + 32))(v23, v32, v25);
    }

    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    _Block_object_dispose(&v40, 8);
  }

  qmi::MessageBase::~MessageBase(v26);
}

void sub_1E4F021DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 56) == 1 && *(v39 - 65) < 0)
  {
    operator delete(*(v39 - 88));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 136), 8);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_4 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC050;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v43 = 0;
    v44 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v40, __p);
    qmi::MessageBase::validateMsgId(v40);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v40);
  }

  v6 = *(a1 + 8);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  if (v41)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.qmidriver");
    LOBYTE(__p) = 0;
    LOBYTE(v48) = 0;
    v8 = ims::error(v7, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Error indication for request: ", 30);
    *(v8 + 17) = 0;
    v9 = QMIRTPCommandDriver::nameForRequestId(&v50, v40[0]);
    (*(*v8 + 32))(v8, &v50, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " error:", 7);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), v41);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " reason: ", 9);
    *(v8 + 17) = 0;
    v10 = qmi::asString();
    v11 = strlen(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v10, v11);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v50);
    }

    if (v48 == 1 && SHIBYTE(v46) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(block);
    }

    v12 = v6[21];
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        v15 = v6[20];
        if (v15)
        {
          v16 = *(v15 + 72);
          v17 = *(v15 + 80);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v16, 24);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    v18 = 4;
  }

  else
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    block = MEMORY[0x1E69E9820];
    v69 = 0x40000000;
    v70 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms17SessionInitialize10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v71 = &unk_1E876AF78;
    p_p = &v50;
    __p = &block;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v40, &__p);
    if (*(v51 + 6))
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v48) = 0;
      v19 = ims::error(v56, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error indication for request: ", 30);
      *(v19 + 17) = 0;
      v20 = QMIRTPCommandDriver::nameForRequestId(v77, v40[0]);
      (*(*v19 + 32))(v19, v77, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [error=", 8);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923340](*(v19 + 8), *(v51 + 6));
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
      *(v19 + 17) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v48) = 0;
      v19 = ims::spam(v56, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Success indication for request: ", 32);
      *(v19 + 17) = 0;
      v21 = QMIRTPCommandDriver::nameForRequestId(v77, v40[0]);
      (*(*v19 + 32))(v19, v77, v21);
    }

    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (v48 == 1 && SHIBYTE(v46) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[0]);
    }

    v18 = *(v51 + 6);
    _Block_object_dispose(&v50, 8);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 0x40000000;
  v57 = ___ZN19QMIRTPCommandDriver33handleSessionInitializeIndicationERKN2ms17SessionInitialize10IndicationE_block_invoke;
  v58 = &unk_1E876AA78;
  v59 = &v64;
  TlvValue = qmi::MessageBase::findTlvValue(v40);
  v24 = TlvValue;
  if (TlvValue)
  {
    v25 = v23;
    __p = TlvValue;
    LODWORD(block) = tlv::parseV<ms::tlv::ServiceAppData>(&__p, v23);
    if (__p)
    {
      v57(v56, &block);
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v40[0], 17, v24, v25);
    }
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  LOBYTE(v53) = 0;
  block = MEMORY[0x1E69E9820];
  v69 = 0x40000000;
  v70 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms17SessionInitialize10IndicationEEEhRKT__block_invoke;
  v71 = &unk_1E876AFA0;
  p_p = &v50;
  __p = &block;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v40, 16, &__p);
  v26 = std::string::basic_string[abi:ne200100]<0>(v77, "rtp.qmidriver");
  LOBYTE(__p) = 0;
  LOBYTE(v48) = 0;
  v27 = ims::spam(v26, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Indication: ", 12);
  *(v27 + 17) = 0;
  v28 = QMIRTPCommandDriver::nameForRequestId(v75, v40[0]);
  (*(*v27 + 32))(v27, v75, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), ", with qmiSession Id: ", 22);
  *(v27 + 17) = 0;
  MEMORY[0x1E6923350](*(v27 + 8), *(v51 + 24));
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v48 == 1 && SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  v29 = *(v51 + 24);
  _Block_object_dispose(&v50, 8);
  *(v61 + 24) = v29;
  std::string::basic_string[abi:ne200100]<0>(&__p, "rtp.qmidriver");
  LOBYTE(v50) = 0;
  v55 = 0;
  v30 = ims::debug(&__p, &v50);
  if (!v6)
  {
    __cxa_bad_typeid();
  }

  v31 = v30;
  v32 = *(*(*v6 - 8) + 8);
  v33 = *(v30 + 8);
  v34 = strlen((v32 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v32 & 0x7FFFFFFFFFFFFFFFLL, v34);
  *(v31 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "::", 2);
  *(v31 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleSessionInitializeIndication", 33);
  *(v31 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " [sessionId=", 12);
  *(v31 + 17) = 0;
  MEMORY[0x1E69233B0](*(v31 + 8), v65[3]);
  *(v31 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " qmiSessionId=", 14);
  *(v31 + 17) = 0;
  MEMORY[0x1E6923340](*(v31 + 8), *(v61 + 24));
  *(v31 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "]", 1);
  *(v31 + 17) = 0;
  (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v31 + 17) = 0;
  if (v55 == 1 && v54 < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  __p = MEMORY[0x1E69E9820];
  v43 = 0x40000000;
  v44 = ___ZN19QMIRTPCommandDriver33handleSessionInitializeIndicationERKN2ms17SessionInitialize10IndicationE_block_invoke_2;
  v45 = &unk_1E876AAA0;
  v46 = &v64;
  v47 = &v60;
  v48 = v6;
  v49 = v18;
  v35 = v6[3];
  if (!v35 || (v36 = v6[2], (v37 = std::__shared_weak_count::lock(v35)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v38 = v37;
  v39 = v6[4];
  block = MEMORY[0x1E69E9820];
  v69 = 1174405120;
  v70 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v71 = &unk_1F5EDC868;
  v73 = v36;
  v74 = v38;
  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  p_p = &__p;
  dispatch_async(v39, &block);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  qmi::MessageBase::~MessageBase(v40);
}

void sub_1E4F02DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a21 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 200), 8);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_5 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC0D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v55 = 0;
    v56 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v37, __p);
    qmi::MessageBase::validateMsgId(v37);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v37);
  }

  v6 = *(a1 + 8);
  if (v38)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "rtp.qmidriver");
    LOBYTE(__p) = 0;
    LOBYTE(v60) = 0;
    v7 = ims::error(&v46, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Error indication for request: ", 30);
    *(v7 + 17) = 0;
    v8 = QMIRTPCommandDriver::nameForRequestId(&v39, v37[0]);
    (*(*v7 + 32))(v7, &v39, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error:", 7);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), v38);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " reason: ", 9);
    *(v7 + 17) = 0;
    v9 = qmi::asString();
    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v9, v10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    if (v60 == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    v11 = v6[21];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = v6[20];
        if (v14)
        {
          v15 = *(v14 + 72);
          v16 = *(v14 + 80);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v15, 24);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    v17 = 4;
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    LODWORD(v42) = 0;
    v46 = MEMORY[0x1E69E9820];
    v47 = 0x40000000;
    v48 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms19SessionUninitialize10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v49 = &unk_1E876AFF0;
    v50 = &v39;
    __p = &v46;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v37, &__p);
    if (*(v40 + 24))
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v60) = 0;
      v19 = ims::error(v18, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error indication for request: ", 30);
      *(v19 + 17) = 0;
      v20 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
      (*(*v19 + 32))(v19, v52, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [error=", 8);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923340](*(v19 + 8), *(v40 + 24));
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
      *(v19 + 17) = 0;
    }

    else
    {
      v21 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v60) = 0;
      v19 = ims::spam(v21, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Success indication for request: ", 32);
      *(v19 + 17) = 0;
      v22 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
      (*(*v19 + 32))(v19, v52, v22);
    }

    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v60 == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v17 = *(v40 + 24);
    _Block_object_dispose(&v39, 8);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  LOBYTE(v42) = 0;
  v46 = MEMORY[0x1E69E9820];
  v47 = 0x40000000;
  v48 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms19SessionUninitialize10IndicationEEEhRKT__block_invoke;
  v49 = &unk_1E876B018;
  v50 = &v39;
  __p = &v46;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v37, 2, &__p);
  v23 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
  LOBYTE(__p) = 0;
  LOBYTE(v60) = 0;
  v24 = ims::spam(v23, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Indication: ", 12);
  *(v24 + 17) = 0;
  v25 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
  (*(*v24 + 32))(v24, v52, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), ", with qmiSession Id: ", 22);
  *(v24 + 17) = 0;
  MEMORY[0x1E6923350](*(v24 + 8), *(v40 + 24));
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v60 == 1 && SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  v26 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "rtp.qmidriver");
  LOBYTE(v46) = 0;
  v51 = 0;
  v27 = ims::debug(&__p, &v46);
  if (!v6)
  {
    __cxa_bad_typeid();
  }

  v28 = v27;
  v29 = *(*(*v6 - 8) + 8);
  v30 = *(v27 + 8);
  v31 = strlen((v29 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v29 & 0x7FFFFFFFFFFFFFFFLL, v31);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "::", 2);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "handleSessionUninitializeIndication", 35);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " [qmiSessionId=", 15);
  *(v28 + 17) = 0;
  MEMORY[0x1E6923340](*(v28 + 8), v26);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "]", 1);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v51 == 1 && SHIBYTE(v50) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  v39 = MEMORY[0x1E69E9820];
  v40 = 0x40000000;
  v41 = ___ZN19QMIRTPCommandDriver35handleSessionUninitializeIndicationERKN2ms19SessionUninitialize10IndicationE_block_invoke;
  v42 = &__block_descriptor_tmp_79;
  v43 = v6;
  v45 = v26;
  v44 = v17;
  v32 = v6[3];
  if (!v32 || (v33 = v6[2], (v34 = std::__shared_weak_count::lock(v32)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v35 = v34;
  v36 = v6[4];
  __p = MEMORY[0x1E69E9820];
  v55 = 1174405120;
  v56 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v57 = &unk_1F5EDC868;
  v59 = v33;
  v60 = v35;
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  v58 = &v39;
  dispatch_async(v36, &__p);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  qmi::MessageBase::~MessageBase(v37);
}

void sub_1E4F03960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a50 == 1 && a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 81) < 0)
  {
    operator delete(*(v50 - 104));
  }

  _Block_object_dispose(&a13, 8);
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_6 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC150;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v55 = 0;
    v56 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v37, __p);
    qmi::MessageBase::validateMsgId(v37);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v37);
  }

  v6 = *(a1 + 8);
  if (v38)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "rtp.qmidriver");
    LOBYTE(__p) = 0;
    LOBYTE(v60) = 0;
    v7 = ims::error(&v46, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Error indication for request: ", 30);
    *(v7 + 17) = 0;
    v8 = QMIRTPCommandDriver::nameForRequestId(&v39, v37[0]);
    (*(*v7 + 32))(v7, &v39, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error:", 7);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), v38);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " reason: ", 9);
    *(v7 + 17) = 0;
    v9 = qmi::asString();
    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v9, v10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    if (v60 == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    v11 = v6[21];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = v6[20];
        if (v14)
        {
          v15 = *(v14 + 72);
          v16 = *(v14 + 80);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v15, 24);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    v17 = 4;
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    LODWORD(v42) = 0;
    v46 = MEMORY[0x1E69E9820];
    v47 = 0x40000000;
    v48 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms16SessionConfigure10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v49 = &unk_1E876B068;
    v50 = &v39;
    __p = &v46;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v37, &__p);
    if (*(v40 + 24))
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v60) = 0;
      v19 = ims::error(v18, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error indication for request: ", 30);
      *(v19 + 17) = 0;
      v20 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
      (*(*v19 + 32))(v19, v52, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [error=", 8);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923340](*(v19 + 8), *(v40 + 24));
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
      *(v19 + 17) = 0;
    }

    else
    {
      v21 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v60) = 0;
      v19 = ims::spam(v21, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Success indication for request: ", 32);
      *(v19 + 17) = 0;
      v22 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
      (*(*v19 + 32))(v19, v52, v22);
    }

    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v60 == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v17 = *(v40 + 24);
    _Block_object_dispose(&v39, 8);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  LOBYTE(v42) = 0;
  v46 = MEMORY[0x1E69E9820];
  v47 = 0x40000000;
  v48 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms16SessionConfigure10IndicationEEEhRKT__block_invoke;
  v49 = &unk_1E876B090;
  v50 = &v39;
  __p = &v46;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v37, 2, &__p);
  v23 = std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
  LOBYTE(__p) = 0;
  LOBYTE(v60) = 0;
  v24 = ims::spam(v23, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Indication: ", 12);
  *(v24 + 17) = 0;
  v25 = QMIRTPCommandDriver::nameForRequestId(v52, v37[0]);
  (*(*v24 + 32))(v24, v52, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), ", with qmiSession Id: ", 22);
  *(v24 + 17) = 0;
  MEMORY[0x1E6923350](*(v24 + 8), *(v40 + 24));
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (v60 == 1 && SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  v26 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "rtp.qmidriver");
  LOBYTE(v46) = 0;
  v51 = 0;
  v27 = ims::debug(&__p, &v46);
  if (!v6)
  {
    __cxa_bad_typeid();
  }

  v28 = v27;
  v29 = *(*(*v6 - 8) + 8);
  v30 = *(v27 + 8);
  v31 = strlen((v29 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v29 & 0x7FFFFFFFFFFFFFFFLL, v31);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "::", 2);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "handleSessionConfigureIndication", 32);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " [qmiSessionId=", 15);
  *(v28 + 17) = 0;
  MEMORY[0x1E6923340](*(v28 + 8), v26);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "]", 1);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v51 == 1 && SHIBYTE(v50) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  v39 = MEMORY[0x1E69E9820];
  v40 = 0x40000000;
  v41 = ___ZN19QMIRTPCommandDriver32handleSessionConfigureIndicationERKN2ms16SessionConfigure10IndicationE_block_invoke;
  v42 = &__block_descriptor_tmp_87;
  v43 = v6;
  v45 = v26;
  v44 = v17;
  v32 = v6[3];
  if (!v32 || (v33 = v6[2], (v34 = std::__shared_weak_count::lock(v32)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v35 = v34;
  v36 = v6[4];
  __p = MEMORY[0x1E69E9820];
  v55 = 1174405120;
  v56 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v57 = &unk_1F5EDC868;
  v59 = v33;
  v60 = v35;
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  v58 = &v39;
  dispatch_async(v36, &__p);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  qmi::MessageBase::~MessageBase(v37);
}

void sub_1E4F04470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a50 == 1 && a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 81) < 0)
  {
    operator delete(*(v50 - 104));
  }

  _Block_object_dispose(&a13, 8);
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_7 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC1D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    block = 0;
    v38 = 0;
    v39 = 0;
    QMIServiceMsg::serialize(&block, this);
    qmi::MessageBase::MessageBase(v19, block);
    qmi::MessageBase::validateMsgId(v19);
    if (block)
    {
      v38 = block;
      operator delete(block);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v19);
  }

  v6 = *(a1 + 8);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  LOBYTE(v30) = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms17SessionInactivity10IndicationEEEhRKT__block_invoke;
  v23 = &unk_1E876B130;
  v24 = &v27;
  block = &v20;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v19, 1, &block);
  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.qmidriver");
  LOBYTE(block) = 0;
  LOBYTE(v43) = 0;
  v7 = ims::spam(__p, &block);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Indication: ", 12);
  *(v7 + 17) = 0;
  v8 = QMIRTPCommandDriver::nameForRequestId(v35, v19[0]);
  (*(*v7 + 32))(v7, v35, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", with qmiSession Id: ", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *(v28 + 24));
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v43 == 1 && SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  __p[0] = 0;
  __p[1] = __p;
  v33 = 0x2000000000;
  v34 = 255;
  v27 = MEMORY[0x1E69E9820];
  v28 = 0x40000000;
  v29 = ___ZN19QMIRTPCommandDriver33handleSessionInactivityIndicationERKN2ms17SessionInactivity10IndicationE_block_invoke;
  v30 = &unk_1E876ABC8;
  v31 = __p;
  TlvValue = qmi::MessageBase::findTlvValue(v19);
  v12 = TlvValue;
  if (TlvValue)
  {
    v13 = v11;
    block = TlvValue;
    LODWORD(v20) = tlv::parseV<ms::tlv::SessionInactivityType>(&block, v11);
    if (block)
    {
      (v29)(&v27, &v20);
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v19[0], 2, v12, v13);
    }
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = ___ZN19QMIRTPCommandDriver33handleSessionInactivityIndicationERKN2ms17SessionInactivity10IndicationE_block_invoke_2;
  v23 = &unk_1E876ABF0;
  v24 = __p;
  v25 = v6;
  v26 = v9;
  v14 = v6[3];
  if (!v14 || (v15 = v6[2], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  v18 = v6[4];
  block = MEMORY[0x1E69E9820];
  v38 = 1174405120;
  v39 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v40 = &unk_1F5EDC868;
  v42 = v15;
  v43 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v41 = &v20;
  dispatch_async(v18, &block);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Block_object_dispose(__p, 8);
  qmi::MessageBase::~MessageBase(v19);
}

void sub_1E4F04AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  qmi::MessageBase::~MessageBase(&a10);
  v32 = *(v30 - 120);
  if (v32)
  {
    *(v30 - 112) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_8 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC250;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v44 = 0;
    v45 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v32, __p);
    qmi::MessageBase::validateMsgId(v32);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v32);
  }

  v6 = *(a1 + 8);
  if (v33)
  {
    std::string::basic_string[abi:ne200100]<0>(&v34, "rtp.qmidriver");
    LOBYTE(__p) = 0;
    LOBYTE(v49) = 0;
    v7 = ims::error(&v34, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Error indication for request: ", 30);
    *(v7 + 17) = 0;
    v8 = QMIRTPCommandDriver::nameForRequestId(&v52, v32[0]);
    (*(*v7 + 32))(v7, &v52, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error:", 7);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), v33);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " reason: ", 9);
    *(v7 + 17) = 0;
    v9 = qmi::asString();
    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v9, v10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v52);
    }

    if (v49 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    v11 = v6[21];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = v6[20];
        if (v14)
        {
          v15 = *(v14 + 9);
          v16 = *(v14 + 10);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v15, 24);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    v17 = 4;
  }

  else
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    v34 = MEMORY[0x1E69E9820];
    v35 = 0x40000000;
    v36 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms12ServiceError10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v37 = &unk_1E876B180;
    v38 = &v52;
    __p = &v34;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v32, &__p);
    if (*(v53 + 6))
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(v50, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v49) = 0;
      v19 = ims::error(v18, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error indication for request: ", 30);
      *(v19 + 17) = 0;
      v20 = QMIRTPCommandDriver::nameForRequestId(v41, v32[0]);
      (*(*v19 + 32))(v19, v41, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [error=", 8);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923340](*(v19 + 8), *(v53 + 6));
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
      *(v19 + 17) = 0;
    }

    else
    {
      v21 = std::string::basic_string[abi:ne200100]<0>(v50, "rtp.qmidriver");
      LOBYTE(__p) = 0;
      LOBYTE(v49) = 0;
      v19 = ims::spam(v21, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Success indication for request: ", 32);
      *(v19 + 17) = 0;
      v22 = QMIRTPCommandDriver::nameForRequestId(v41, v32[0]);
      (*(*v19 + 32))(v19, v41, v22);
    }

    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (v49 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(v45);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    v17 = *(v53 + 6);
    _Block_object_dispose(&v52, 8);
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  LOBYTE(v55) = 0;
  v34 = MEMORY[0x1E69E9820];
  v35 = 0x40000000;
  v36 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms12ServiceError10IndicationEEEhRKT__block_invoke;
  v37 = &unk_1E876B1A8;
  v38 = &v52;
  __p = &v34;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v32, 16, &__p);
  v23 = std::string::basic_string[abi:ne200100]<0>(v50, "rtp.qmidriver");
  LOBYTE(__p) = 0;
  LOBYTE(v49) = 0;
  v24 = ims::spam(v23, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Indication: ", 12);
  *(v24 + 17) = 0;
  v25 = QMIRTPCommandDriver::nameForRequestId(v41, v32[0]);
  (*(*v24 + 32))(v24, v41, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), ", with qmiSession Id: ", 22);
  *(v24 + 17) = 0;
  MEMORY[0x1E6923350](*(v24 + 8), *(v53 + 24));
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v49 == 1 && SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v26 = *(v53 + 24);
  _Block_object_dispose(&v52, 8);
  v34 = MEMORY[0x1E69E9820];
  v35 = 0x40000000;
  v36 = ___ZN19QMIRTPCommandDriver28handleServiceErrorIndicationERKN2ms12ServiceError10IndicationE_block_invoke;
  v37 = &__block_descriptor_tmp_153;
  v38 = v6;
  v39 = v17;
  v40 = v26;
  v27 = v6[3];
  if (!v27 || (v28 = v6[2], (v29 = std::__shared_weak_count::lock(v27)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v30 = v29;
  v31 = v6[4];
  __p = MEMORY[0x1E69E9820];
  v44 = 1174405120;
  v45 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v46 = &unk_1F5EDC868;
  v48 = v28;
  v49 = v30;
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  v47 = &v34;
  dispatch_async(v31, &__p);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  qmi::MessageBase::~MessageBase(v32);
}

void sub_1E4F053F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a36 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 113) < 0)
  {
    operator delete(*(v36 - 136));
  }

  _Block_object_dispose((v36 - 112), 8);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_9 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC2D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    QMIServiceMsg::serialize(&v72, this);
    qmi::MessageBase::MessageBase(v51, v72);
    qmi::MessageBase::validateMsgId(v51);
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v51);
  }

  v6 = *(a1 + 8);
  if (v52)
  {
    std::string::basic_string[abi:ne200100]<0>(v61, "rtp.qmidriver");
    LOBYTE(v72) = 0;
    v78 = 0;
    v7 = ims::error(v61, &v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Error indication for request: ", 30);
    *(v7 + 17) = 0;
    v8 = QMIRTPCommandDriver::nameForRequestId(__p, v51[0]);
    (*(*v7 + 32))(v7, __p, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error:", 7);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), v52);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " reason: ", 9);
    *(v7 + 17) = 0;
    v9 = qmi::asString();
    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v9, v10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SBYTE7(v58) < 0)
    {
      operator delete(__p[0]);
    }

    if (v78 == 1 && SHIBYTE(v76) < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61[0]);
    }

    v11 = *(v6 + 168);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        goto LABEL_36;
      }

      v13 = *(v6 + 160);
      if (v13)
      {
        v14 = *(v13 + 72);
        v15 = *(v13 + 80);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v14, 24);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    LODWORD(v12) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = __p;
    *&v58 = 0x2000000000;
    DWORD2(v58) = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 0x40000000;
    v62 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms18ServiceRtcpReports10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v63 = &unk_1E876B1D0;
    v64 = __p;
    v72 = v61;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v51, &v72);
    if (*(__p[1] + 6))
    {
      std::string::basic_string[abi:ne200100]<0>(v53, "rtp.qmidriver");
      LOBYTE(v72) = 0;
      v78 = 0;
      v16 = ims::error(v53, &v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Error indication for request: ", 30);
      *(v16 + 17) = 0;
      v17 = QMIRTPCommandDriver::nameForRequestId(&v79, v51[0]);
      (*(*v16 + 32))(v16, &v79, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " [error=", 8);
      *(v16 + 17) = 0;
      MEMORY[0x1E6923340](*(v16 + 8), *(__p[1] + 6));
      *(v16 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
      *(v16 + 17) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v53, "rtp.qmidriver");
      LOBYTE(v72) = 0;
      v78 = 0;
      v16 = ims::spam(v53, &v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Success indication for request: ", 32);
      *(v16 + 17) = 0;
      v18 = QMIRTPCommandDriver::nameForRequestId(&v79, v51[0]);
      (*(*v16 + 32))(v16, &v79, v18);
    }

    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v79);
    }

    if (v78 == 1 && SHIBYTE(v76) < 0)
    {
      operator delete(v74);
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(v53[0]);
    }

    v19 = *(__p[1] + 6);
    _Block_object_dispose(__p, 8);
    LODWORD(v12) = v19 == 0;
  }

LABEL_36:
  __p[0] = 0;
  __p[1] = __p;
  *&v58 = 0x2000000000;
  BYTE8(v58) = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 0x40000000;
  v62 = ___ZN19QMIRTPCommandDriver26getSessionIdFromIndicationIN2ms18ServiceRtcpReports10IndicationEEEhRKT__block_invoke;
  v63 = &unk_1E876B1F8;
  v64 = __p;
  v72 = v61;
  qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(v51, 2, &v72);
  std::string::basic_string[abi:ne200100]<0>(v53, "rtp.qmidriver");
  LOBYTE(v72) = 0;
  v78 = 0;
  v20 = ims::spam(v53, &v72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Indication: ", 12);
  *(v20 + 17) = 0;
  v21 = QMIRTPCommandDriver::nameForRequestId(&v79, v51[0]);
  (*(*v20 + 32))(v20, &v79, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ", with qmiSession Id: ", 22);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923350](*(v20 + 8), *(__p[1] + 24));
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v79);
  }

  if (v78 == 1 && SHIBYTE(v76) < 0)
  {
    operator delete(v74);
  }

  if (SBYTE7(v54) < 0)
  {
    operator delete(v53[0]);
  }

  _Block_object_dispose(__p, 8);
  if (v12)
  {
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2000000000;
    v71 = 0;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 0x40000000;
    v67 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke;
    v68 = &unk_1E876AC38;
    v69 = v70;
    TlvValue = qmi::MessageBase::findTlvValue(v51);
    v24 = TlvValue;
    if (TlvValue)
    {
      v25 = v23;
      v72 = TlvValue;
      v26 = tlv::parseV<ms::tlv::RTCPReportTypeInfoIncoming>(&v72, v23);
      if (v72)
      {
        v67(v66, v26);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(v51[0], 23, v24, v25);
      }
    }

    v72 = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2;
    v75 = &unk_1E876AC60;
    v76 = v70;
    v77 = v6;
    v27 = qmi::MessageBase::findTlvValue(v51);
    v29 = v27;
    if (v27)
    {
      v30 = v28;
      v53[0] = v27;
      v61[0] = 0;
      v61[1] = 0;
      v62 = 0;
      tlv::parseV<ms::tlv::SenderReportInfo>(v53, v28, v61);
      if (v53[0])
      {
        *__p = *v61;
        *&v58 = v62;
        v74(&v72, __p);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(v51[0], 16, v29, v30);
      }
    }

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 0x40000000;
    v62 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_159;
    v63 = &unk_1E876AC88;
    v64 = v70;
    v65 = v6;
    v31 = qmi::MessageBase::findTlvValue(v51);
    v33 = v31;
    if (v31)
    {
      v34 = v32;
      v79 = v31;
      LODWORD(v59) = 0;
      *__p = 0u;
      v58 = 0u;
      tlv::parseV<ms::tlv::ReceiverReportInfo>(&v79, v32, __p);
      if (v79)
      {
        *v53 = *__p;
        v54 = v58;
        LODWORD(v55) = v59;
        v62(v61, v53);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(v51[0], 17, v33, v34);
      }
    }

    __p[0] = MEMORY[0x1E69E9820];
    __p[1] = 0x40000000;
    *&v58 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_165;
    *(&v58 + 1) = &unk_1E876ACB0;
    v59 = v70;
    v60 = v6;
    v35 = qmi::MessageBase::findTlvValue(v51);
    v37 = v35;
    if (v35)
    {
      v38 = v36;
      v84 = v35;
      v55 = 0;
      *v53 = 0u;
      v54 = 0u;
      tlv::parseV<ms::tlv::SDESInfo>(&v84, v36, v53);
      v39 = v84;
      if (v84)
      {
        v79 = v53[0];
        LOWORD(v80) = v53[1];
        v82 = 0;
        v83 = 0;
        v81 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v81, v54, *(&v54 + 1), *(&v54 + 1) - v54);
        (v58)(__p, &v79);
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }
      }

      if (v54)
      {
        *(&v54 + 1) = v54;
        operator delete(v54);
      }

      if (!v39)
      {
        (*MEMORY[0x1E69E5140])(v51[0], 18, v37, v38);
      }
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 0x40000000;
    *&v54 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_171;
    *(&v54 + 1) = &unk_1E876ACD8;
    v55 = v70;
    v56 = v6;
    v40 = qmi::MessageBase::findTlvValue(v51);
    v42 = v40;
    if (v40)
    {
      v43 = v41;
      v79 = v40;
      v44 = tlv::parseV<ms::tlv::XRReceiverRefTime>(&v79, v41);
      if (v79)
      {
        (v54)(v53, v44);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(v51[0], 19, v42, v43);
      }
    }

    v79 = MEMORY[0x1E69E9820];
    v80 = 0x40000000;
    v81 = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_176;
    v82 = &__block_descriptor_tmp_180;
    v83 = v6;
    v45 = qmi::MessageBase::findTlvValue(v51);
    v47 = v45;
    if (v45)
    {
      v48 = v46;
      v84 = v45;
      v49 = tlv::parseV<ms::tlv::XRDLRRReportInfo>(&v84, v46);
      if (v84)
      {
        v81(&v79, v49, v50);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(v51[0], 21, v47, v48);
      }
    }

    _Block_object_dispose(v70, 8);
  }

  qmi::MessageBase::~MessageBase(v51);
}

void sub_1E4F06148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (*(v42 - 136) == 1 && *(v42 - 145) < 0)
  {
    operator delete(*(v42 - 168));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

void sub_1E4F06290(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 136) == 1 && *(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  JUMPOUT(0x1E4F06280);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_10 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDC350;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int a2, QMIServiceMsg *this)
{
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    block = 0;
    v65 = 0;
    v66 = 0;
    QMIServiceMsg::serialize(&block, this);
    qmi::MessageBase::MessageBase(v39, block);
    qmi::MessageBase::validateMsgId(v39);
    if (block)
    {
      v65 = block;
      operator delete(block);
    }
  }

  else
  {
    v5 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v39);
  }

  v6 = *(a1 + 8);
  v7 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.qmidriver");
  v60[0] = 0;
  v63 = 0;
  v8 = ims::debug(v7, v60);
  if (!v6)
  {
    __cxa_bad_typeid();
  }

  v9 = v8;
  v10 = *(*(*v6 - 8) + 8);
  v11 = *(v8 + 8);
  v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleUninitializeAllSessionsIndication", 39);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v63 == 1 && v62 < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(block);
  }

  if (v40)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "rtp.qmidriver");
    LOBYTE(block) = 0;
    LOBYTE(v70) = 0;
    v13 = ims::error(v47, &block);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Error indication for request: ", 30);
    *(v13 + 17) = 0;
    v14 = QMIRTPCommandDriver::nameForRequestId(&__p, v39[0]);
    (*(*v13 + 32))(v13, &__p, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " error:", 7);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), v40);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " reason: ", 9);
    *(v13 + 17) = 0;
    v15 = qmi::asString();
    v16 = strlen(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v15, v16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }

    if (v70 == 1 && SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    v17 = v6[21];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = v6[20];
        if (v20)
        {
          v21 = *(v20 + 72);
          v22 = *(v20 + 80);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v21, 24);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    v23 = 0;
  }

  else
  {
    __p = 0;
    p_p = &__p;
    v43 = 0x2000000000;
    LODWORD(v44) = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v48 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms30ServiceUninitializeAllSessions10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v49 = &unk_1E876B270;
    v50 = &__p;
    block = v47;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v39, &block);
    if (*(p_p + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(v52, "rtp.qmidriver");
      LOBYTE(block) = 0;
      LOBYTE(v70) = 0;
      v24 = ims::error(v52, &block);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Error indication for request: ", 30);
      *(v24 + 17) = 0;
      v25 = QMIRTPCommandDriver::nameForRequestId(&v56, v39[0]);
      (*(*v24 + 32))(v24, &v56, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " [error=", 8);
      *(v24 + 17) = 0;
      MEMORY[0x1E6923340](*(v24 + 8), *(p_p + 24));
      *(v24 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "]", 1);
      *(v24 + 17) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v52, "rtp.qmidriver");
      LOBYTE(block) = 0;
      LOBYTE(v70) = 0;
      v24 = ims::spam(v52, &block);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Success indication for request: ", 32);
      *(v24 + 17) = 0;
      v26 = QMIRTPCommandDriver::nameForRequestId(&v56, v39[0]);
      (*(*v24 + 32))(v24, &v56, v26);
    }

    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (v70 == 1 && SHIBYTE(v68) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    v27 = *(p_p + 24);
    _Block_object_dispose(&__p, 8);
    v23 = v27 == 0;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = -1;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v53 = ___ZN19QMIRTPCommandDriver39handleUninitializeAllSessionsIndicationERKN2ms30ServiceUninitializeAllSessions10IndicationE_block_invoke;
  v54 = &unk_1E876ADC0;
  v55 = &v56;
  TlvValue = qmi::MessageBase::findTlvValue(v39);
  v30 = TlvValue;
  if (TlvValue)
  {
    v31 = v29;
    block = TlvValue;
    LODWORD(v47[0]) = tlv::parseV<ms::tlv::ApnType>(&block, v29);
    if (block)
    {
      v53(v52, v47);
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v39[0], 16, v30, v31);
    }
  }

  v32 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.qmidriver");
  LOBYTE(v47[0]) = 0;
  v51 = 0;
  if (v23)
  {
    v33 = ims::debug(v32, v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Uninitialized all sessions for [apnType=", 40);
  }

  else
  {
    v33 = ims::error(v32, v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Failed to uninitialize all sessions for [apnType=", 49);
  }

  *(v33 + 17) = 0;
  MEMORY[0x1E6923340](*(v33 + 8), *(v57 + 24));
  *(v33 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "]", 1);
  *(v33 + 17) = 0;
  (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v33 + 17) = 0;
  if (v51 == 1 && SHIBYTE(v50) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(block);
  }

  __p = MEMORY[0x1E69E9820];
  p_p = 0x40000000;
  v43 = ___ZN19QMIRTPCommandDriver39handleUninitializeAllSessionsIndicationERKN2ms30ServiceUninitializeAllSessions10IndicationE_block_invoke_2;
  v44 = &unk_1E876ADE8;
  v45 = &v56;
  v46 = v6;
  v34 = v6[3];
  if (!v34 || (v35 = v6[2], (v36 = std::__shared_weak_count::lock(v34)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v37 = v36;
  v38 = v6[4];
  block = MEMORY[0x1E69E9820];
  v65 = 1174405120;
  v66 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v67 = &unk_1F5EDC868;
  v69 = v35;
  v70 = v37;
  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  v68 = &__p;
  dispatch_async(v38, &block);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Block_object_dispose(&v56, 8);
  qmi::MessageBase::~MessageBase(v39);
}

void sub_1E4F06CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v48 - 88) == 1 && *(v48 - 97) < 0)
  {
    operator delete(*(v48 - 120));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a13, 8);
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_11 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::ServiceSubscriptionType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver14serviceBindReqEjE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  std::string::basic_string[abi:ne200100]<0>(&v65, "rtp.qmidriver");
  v77[0] = 0;
  v80 = 0;
  v6 = ims::debug(&v65, v77);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*v4 - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleServiceBindResp", 21);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [instance=", 11);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), v5);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v80 == 1 && v79 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v66) < 0)
  {
    operator delete(v65);
  }

  if (*(a2 + 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v59, "rtp.qmidriver");
    LOBYTE(v65) = 0;
    v68 = 0;
    v11 = ims::error(v59, &v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Error response for request: ", 28);
    *(v11 + 17) = 0;
    v12 = QMIRTPCommandDriver::nameForRequestId(v73, *a2);
    (*(*v11 + 32))(v11, v73, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " error:", 7);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923350](*(v11 + 8), *(a2 + 1));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " reason: ", 9);
    *(v11 + 17) = 0;
    v13 = *(a2 + 1);
    v14 = qmi::asString();
    v15 = strlen(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v14, v15);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73[0]);
    }

    if (v68 == 1 && SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "rtp.qmidriver");
    LOBYTE(v73[0]) = 0;
    v76 = 0;
    v16 = ims::error(&v65, v73);
    v17 = *(*(*v4 - 8) + 8);
    v18 = strlen((v17 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v17 & 0x7FFFFFFFFFFFFFFFLL, v18);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "::", 2);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "handleServiceBindResp", 21);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " Error", 6);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v76 == 1 && v75 < 0)
    {
      operator delete(v74);
    }

    if (SBYTE7(v66) < 0)
    {
      operator delete(v65);
    }

    v19 = v4[21];
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v21 = v20;
        v22 = v4[20];
        if (v22)
        {
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v59[0] = &unk_1F5EBDEF8;
          v59[1] = &_bambiDomain;
          LODWORD(v60) = 1073741846;
          v23 = ImsResult::operator<<<char [28]>(v59, "Fatal baseband driver error");
          ImsResult::ImsResult(&v65, v23);
          (*(*v22 + 56))(v22, &v65);
          ImsResult::~ImsResult(&v65);
          ImsResult::~ImsResult(v59);
        }

        goto LABEL_86;
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v65, "rtp.qmidriver");
    LOBYTE(v73[0]) = 0;
    v76 = 0;
    v24 = ims::debug(&v65, v73);
    v25 = *(*(*v4 - 8) + 8);
    v26 = strlen((v25 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v25 & 0x7FFFFFFFFFFFFFFFLL, v26);
    *(v24 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "::", 2);
    *(v24 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "handleServiceBindResp", 21);
    *(v24 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " Success", 8);
    *(v24 + 17) = 0;
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (v76 == 1 && v75 < 0)
    {
      operator delete(v74);
    }

    if (SBYTE7(v66) < 0)
    {
      operator delete(v65);
    }

    v27 = v4[21];
    if (v27)
    {
      v21 = std::__shared_weak_count::lock(v27);
      if (v21)
      {
        v28 = v4[20];
        if (v28)
        {
          v29 = v28[22];
          if (!v29)
          {
            goto LABEL_80;
          }

          v30 = v28 + 22;
          do
          {
            v31 = v29[7];
            v32 = v31 >= v5;
            v33 = v31 < v5;
            if (v32)
            {
              v30 = v29;
            }

            v29 = *&v29[2 * v33];
          }

          while (v29);
          if (v30 != v28 + 22 && *(v30 + 7) <= v5 && *(v30 + 8))
          {
            v34 = v28[18];
            v35 = v28 + 19;
            if (v34 != v28 + 19)
            {
              v36 = 0;
              do
              {
                v67 = 0;
                v65 = 0u;
                v66 = 0u;
                if (*(v34 + 55) < 0)
                {
                  std::string::__init_copy_ctor_external(&v65, v34[4], v34[5]);
                }

                else
                {
                  v65 = *(v34 + 2);
                  *&v66 = v34[6];
                }

                LODWORD(v67) = *(v34 + 16);
                *(&v66 + 1) = v34[7];
                v37 = v67;
                if (v67 == v5)
                {
                  std::string::basic_string[abi:ne200100]<0>(v59, "rtp.qmidriver");
                  v69[0] = 0;
                  v72 = 0;
                  v38 = ims::debug(v59, v69);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Using voice system Id ", 22);
                  *(v38 + 17) = 0;
                  MEMORY[0x1E6923350](*(v38 + 8), HIDWORD(v66));
                  *(v38 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " from ", 6);
                  *(v38 + 17) = 0;
                  (*(*v38 + 32))(v38, &v65);
                  (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v38 + 17) = 0;
                  if (v72 == 1 && v71 < 0)
                  {
                    operator delete(v70);
                  }

                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(v59[0]);
                  }

                  v36 = HIDWORD(v66);
                }

                if (SBYTE7(v66) < 0)
                {
                  operator delete(v65);
                }

                if (v37 == v5)
                {
                  break;
                }

                v39 = v34[1];
                if (v39)
                {
                  do
                  {
                    v40 = v39;
                    v39 = *v39;
                  }

                  while (v39);
                }

                else
                {
                  do
                  {
                    v40 = v34[2];
                    v41 = *v40 == v34;
                    v34 = v40;
                  }

                  while (!v41);
                }

                v34 = v40;
              }

              while (v40 != v35);
              if (v36)
              {
                std::string::basic_string[abi:ne200100]<0>(&v65, "rtp.qmidriver");
                LOBYTE(v59[0]) = 0;
                BYTE8(v62) = 0;
                v42 = ims::debug(&v65, v59);
                v43 = *(*(*v4 - 8) + 8);
                v44 = strlen((v43 & 0x7FFFFFFFFFFFFFFFLL));
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), v43 & 0x7FFFFFFFFFFFFFFFLL, v44);
                *(v42 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "::", 2);
                *(v42 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "serviceInitializeReq", 20);
                *(v42 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " [voiceSystemId=", 16);
                *(v42 + 17) = 0;
                MEMORY[0x1E6923350](*(v42 + 8), v36);
                *(v42 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), ", instance=", 11);
                *(v42 + 17) = 0;
                MEMORY[0x1E6923350](*(v42 + 8), v5);
                *(v42 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "]", 1);
                *(v42 + 17) = 0;
                (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v42 + 17) = 0;
                if (BYTE8(v62) == 1 && SHIBYTE(v61) < 0)
                {
                  operator delete(v60);
                }

                if (SBYTE7(v66) < 0)
                {
                  operator delete(v65);
                }

                v88 = 0u;
                v89 = 0u;
                qmi::MutableMessageBase::MutableMessageBase(&v88);
                v86[0] = MEMORY[0x1E69E9820];
                v86[1] = 0x40000000;
                v86[2] = ___ZN19QMIRTPCommandDriver20serviceInitializeReqEjj_block_invoke;
                v86[3] = &__block_descriptor_tmp_38;
                v87 = v36;
                v45 = *(&v88 + 1);
                if (*(&v88 + 1) != v89)
                {
                  while (*(*v45 + 8) != 1)
                  {
                    if (++v45 == v89)
                    {
                      goto LABEL_92;
                    }
                  }
                }

                if (v45 != v89)
                {
                  v49 = ***v45;
                  if (!v50)
                  {
                    __cxa_bad_cast();
                  }

                  ___ZN19QMIRTPCommandDriver20serviceInitializeReqEjj_block_invoke(v86, v50 + 3);
                  v51 = v4[21];
                  if (v51)
                  {
                    v52 = std::__shared_weak_count::lock(v51);
                    if (v52)
                    {
                      v53 = v52;
                      v54 = v4[20];
                      if (v54)
                      {
                        v81[0] = MEMORY[0x1E69E9820];
                        v81[1] = 1174405120;
                        v82 = ___ZN19QMIRTPCommandDriver20serviceInitializeReqEjj_block_invoke_2;
                        v83 = &__block_descriptor_tmp_40_0;
                        v84 = v54;
                        v85 = v52;
                        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                        v55 = *(&v88 + 1);
                        if (*(&v88 + 1) != v89)
                        {
                          while (*(*v55 + 8) != 17)
                          {
                            if (++v55 == v89)
                            {
                              goto LABEL_103;
                            }
                          }
                        }

                        if (v55 == v89)
                        {
LABEL_103:
                          operator new();
                        }

                        v56 = ***v55;
                        if (!v57)
                        {
                          __cxa_bad_cast();
                        }

                        v82(v81, v57 + 9);
                        if (v85)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
                        }
                      }

                      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
                    }
                  }

                  if (v5)
                  {
                    v58 = 2 * (v5 == 1);
                  }

                  else
                  {
                    v58 = 1;
                  }

                  qmi::ClientRouter::get();
                  LODWORD(v90) = v58;
                  operator new();
                }

LABEL_92:
                operator new();
              }
            }

            std::string::basic_string[abi:ne200100]<0>(v59, "rtp.qmidriver");
            LOBYTE(v65) = 0;
            v68 = 0;
            v48 = ims::warn(v59, &v65);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "Drop ServiceBindResponse [instance=", 35);
            *(v48 + 17) = 0;
            MEMORY[0x1E6923350](*(v48 + 8), v5);
            *(v48 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), " voiceSystemId=0]", 17);
            *(v48 + 17) = 0;
            (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v48 + 17) = 0;
          }

          else
          {
LABEL_80:
            std::string::basic_string[abi:ne200100]<0>(v59, "rtp.qmidriver");
            LOBYTE(v65) = 0;
            v68 = 0;
            v47 = ims::error(v59, &v65);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "Controller has been deinitialized while waiting for Service Bind response", 73);
            *(v47 + 17) = 0;
            (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v47 + 17) = 0;
          }

          if (v68 == 1 && SHIBYTE(v67) < 0)
          {
            operator delete(v66);
          }

          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59[0]);
          }

          goto LABEL_86;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v59, "rtp.qmidriver");
    LOBYTE(v65) = 0;
    v68 = 0;
    v46 = ims::error(v59, &v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "No controller associated with this command driver!", 50);
    *(v46 + 17) = 0;
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v46 + 17) = 0;
    if (v68 == 1 && SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (v21)
    {
LABEL_86:
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }
}

void sub_1E4F08620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  qmi::MutableMessageBase::~MutableMessageBase(&a65);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c72_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver14serviceBindReqEjE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c72_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver14serviceBindReqEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::serviceBindReq(unsigned int)::$_0,std::allocator<QMIRTPCommandDriver::serviceBindReq(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDC450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms11ServiceBind8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F08A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::VoiceSystemIdentifier>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::EnableAssert>::write(uint64_t result, uint64_t *a2)
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

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver20serviceInitializeReqEjjE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = **(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v21, "rtp.qmidriver");
  v15[0] = 0;
  v18 = 0;
  v4 = ims::debug(v21, v15);
  if (!v3)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*v3 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleServiceInitializeResp", 27);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (*(a2 + 1))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v25, "rtp.qmidriver");
    LOBYTE(v21[0]) = 0;
    v24 = 0;
    v10 = ims::error(v9, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Error response for request: ", 28);
    *(v10 + 17) = 0;
    v11 = QMIRTPCommandDriver::nameForRequestId(v19, *a2);
    (*(*v10 + 32))(v10, v19, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " error:", 7);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), *(a2 + 1));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " reason: ", 9);
    *(v10 + 17) = 0;
    v12 = *(a2 + 1);
    v13 = qmi::asString();
    v14 = strlen(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v13, v14);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }
  }
}

void sub_1E4F08EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a34 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 33) < 0)
  {
    operator delete(*(v34 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver20serviceInitializeReqEjjE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver20serviceInitializeReqEjjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::serviceInitializeReq(unsigned int,unsigned int)::$_0,std::allocator<QMIRTPCommandDriver::serviceInitializeReq(unsigned int,unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDC570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms17ServiceInitialize8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

tlv *qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(qmi::MessageBase *a1, void *a2)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v6 = result;
    v7 = v5;
    v11 = result;
    v8 = tlv::parseV<ms::tlv::IndicationStatus>(&v11, v5);
    if (v11)
    {
      return (*(*a2 + 16))(*a2, v8);
    }

    else
    {
      v9 = *MEMORY[0x1E69E5140];
      v10 = *a1;

      return v9(v10, 1, v6, v7);
    }
  }

  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::ProfileId>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::LocalTransportIpAddr>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC628;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<ms::tlv::LocalTransportIpAddr>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC628;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::LocalTransportIpAddr>::write(uint64_t a1, uint64_t *a2)
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

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::ApnInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC678;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<ms::tlv::ApnInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC678;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::ApnInfo>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 = v6;
  *(v5 + 3) = *(a1 + 16);
  result = memcpy((v5 + 4), *(a1 + 24), *(a1 + 32) - *(a1 + 24));
  v8 = (v5 + 4 + *(a1 + 32) - *(a1 + 24));
  *v8++ = *(a1 + 48);
  *a2 = v8;
  *v5 = v4;
  *(v5 + 1) = v8 - v6;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::LocalPort>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::RtcpInitParams>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC718;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<ms::tlv::RtcpInitParams>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5EDC718;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<ms::tlv::RtcpInitParams>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 += 3;
  *(v5 + 3) = *(a1 + 16);
  result = memcpy((v5 + 5), *(a1 + 24), *(a1 + 32) - *(a1 + 24));
  v8 = v5 + 5 + *(a1 + 32) - *(a1 + 24);
  *v8 = *(a1 + 48);
  *(v8 + 2) = *(a1 + 50);
  *a2 = v8 + 3;
  *v5 = v4;
  *(v5 + 1) = v8 + 3 - v6;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::ServiceAppData>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::WallClockMs>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS5_I9IpAddressEEN8SDPMedia9MediaTypeENS4_8weak_ptrI10SDPSessionEEE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v30[0]) = 0;
    LOBYTE(v35) = 0;
    v25 = ims::error(block, v30);
    if (!v4)
    {
      __cxa_bad_typeid();
    }

    v26 = v25;
    v27 = *(*(*v4 - 8) + 8);
    v28 = *(v25 + 8);
    v29 = strlen((v27 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v27 & 0x7FFFFFFFFFFFFFFFLL, v29);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "::", 2);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "handleSessionInitializeResp", 27);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " session is null", 16);
    *(v26 + 17) = 0;
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v35 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(block[0]);
      if (!v6)
      {
        return;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v7 = *(v3 + 24);
  std::string::basic_string[abi:ne200100]<0>(v30, "rtp.qmidriver");
  v37[0] = 0;
  v40 = 0;
  v8 = ims::debug(v30, v37);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v9 = v8;
  v10 = *(*(*v4 - 8) + 8);
  v11 = *(v8 + 8);
  v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleSessionInitializeResp", 27);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [sessionId=", 12);
  *(v9 + 17) = 0;
  v13 = (*(*(v5 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v9 + 8), v13);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " appId=", 7);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923340](*(v9 + 8), v7);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v40 == 1 && v39 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v14 = *(a2 + 1);
  if (v14)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v30[0]) = 0;
    LOBYTE(v35) = 0;
    v15 = ims::error(block, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Error response for request: ", 28);
    *(v15 + 17) = 0;
    v16 = QMIRTPCommandDriver::nameForRequestId(v47, *a2);
    (*(*v15 + 32))(v15, v47, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " error:", 7);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), *(a2 + 1));
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " reason: ", 9);
    *(v15 + 17) = 0;
    v17 = *(a2 + 1);
    v18 = qmi::asString();
    v19 = strlen(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v18, v19);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (v35 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(block[0]);
    }

    v14 = 4;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1174405120;
  v31 = ___ZN19QMIRTPCommandDriver27handleSessionInitializeRespERKN2ms17SessionInitialize8ResponseENSt3__110shared_ptrI13QMIRTPSessionEEh_block_invoke;
  v32 = &__block_descriptor_tmp_64_0;
  v36 = v14;
  v33 = v4;
  v34 = v5;
  v35 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v4[3];
  if (!v20 || (v21 = v4[2], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  v24 = v4[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v42 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v43 = &unk_1F5EDC868;
  v45 = v21;
  v46 = v23;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  v44 = v30;
  dispatch_async(v24, block);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (!v35)
  {
LABEL_33:
    if (!v6)
    {
      return;
    }

    goto LABEL_34;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (!v6)
  {
    return;
  }

LABEL_34:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4F0A05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c167_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver20sessionInitializeReqENS0_I13QMIRTPSessionEEhRKNS0_I9IpAddressEEN8SDPMedia9MediaTypeENS_8weak_ptrI10SDPSessionEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c167_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver20sessionInitializeReqENS0_I13QMIRTPSessionEEhRKNS0_I9IpAddressEEN8SDPMedia9MediaTypeENS_8weak_ptrI10SDPSessionEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionInitializeReq(std::shared_ptr<QMIRTPSession>,unsigned char,std::shared_ptr<IpAddress> const&,SDPMedia::MediaType,std::weak_ptr<SDPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionInitializeReq(std::shared_ptr<QMIRTPSession>,unsigned char,std::shared_ptr<IpAddress> const&,SDPMedia::MediaType,std::weak_ptr<SDPSession>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDC820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionInitializeReq(std::shared_ptr<QMIRTPSession>,unsigned char,std::shared_ptr<IpAddress> const&,SDPMedia::MediaType,std::weak_ptr<SDPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionInitializeReq(std::shared_ptr<QMIRTPSession>,unsigned char,std::shared_ptr<IpAddress> const&,SDPMedia::MediaType,std::weak_ptr<SDPSession>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms17SessionInitialize8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0A274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19QMIRTPCommandDriverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19QMIRTPCommandDriverEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

tlv *qmi::MessageBase::applyTlv<ms::tlv::RTPSessionIdentifier,void({block_pointer})(ms::tlv::RTPSessionIdentifier)>(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    v13 = result;
    v10 = tlv::parseV<ms::tlv::RTPSessionIdentifier>(&v13, v7);
    if (v13)
    {
      return (*(*a3 + 16))(*a3, v10);
    }

    else
    {
      v11 = *MEMORY[0x1E69E5140];
      v12 = *a1;

      return v11(v12, a2, v8, v9);
    }
  }

  return result;
}

char *qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(uint64_t a1, int a2)
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

    qmi::MutableMessageBase::createTLV<ms::tlv::RTPSessionIdentifier>();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTPSessionIdentifier>::write(uint64_t result, uint64_t *a2)
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

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver22sessionUninitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v38) = 0;
    LOBYTE(v44) = 0;
    v30 = ims::error(block, &v38);
    if (!v4)
    {
      __cxa_bad_typeid();
    }

    v31 = v30;
    v32 = *(*(*v4 - 8) + 8);
    v33 = *(v30 + 8);
    v34 = strlen((v32 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v32 & 0x7FFFFFFFFFFFFFFFLL, v34);
    *(v31 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "::", 2);
    *(v31 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleSessionUninitializeResp", 29);
    *(v31 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " session is null", 16);
    *(v31 + 17) = 0;
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v31 + 17) = 0;
    if (v44 == 1 && SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(block[0]);
      if (!v6)
      {
        return;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "rtp.qmidriver");
  v46[0] = 0;
  v49 = 0;
  v7 = ims::debug(&v38, v46);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*v4 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleSessionUninitializeResp", 29);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  v12 = (*(*(v5 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v8 + 8), v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " qmiSessionId=", 14);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), *(v5 + 362));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v49 == 1 && v48 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  v13 = v4[21];
  if (!v13 || (v14 = std::__shared_weak_count::lock(v13)) == 0)
  {
LABEL_17:
    v18 = *(a2 + 1);
    if (v18)
    {
      std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
      LOBYTE(v38) = 0;
      LOBYTE(v44) = 0;
      v19 = ims::error(block, &v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error response for request: ", 28);
      *(v19 + 17) = 0;
      v20 = QMIRTPCommandDriver::nameForRequestId(v56, *a2);
      (*(*v19 + 32))(v19, v56, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " error:", 7);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923350](*(v19 + 8), *(a2 + 1));
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " reason: ", 9);
      *(v19 + 17) = 0;
      v21 = *(a2 + 1);
      v22 = qmi::asString();
      v23 = strlen(v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v22, v23);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v44 == 1 && SHIBYTE(v42) < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(block[0]);
      }

      v18 = 4;
    }

    v38 = MEMORY[0x1E69E9820];
    v39 = 1174405120;
    v40 = ___ZN19QMIRTPCommandDriver29handleSessionUninitializeRespERKN2ms19SessionUninitialize8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
    v41 = &__block_descriptor_tmp_77;
    v45 = v18;
    v42 = v4;
    v43 = v5;
    v44 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v4[3];
    if (!v24 || (v25 = v4[2], (v26 = std::__shared_weak_count::lock(v24)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v27 = v26;
    v28 = v4[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v51 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    v52 = &unk_1F5EDC868;
    v54 = v25;
    v55 = v27;
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    v53 = &v38;
    dispatch_async(v28, block);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    v29 = v44;
    if (v44)
    {
      goto LABEL_33;
    }

LABEL_40:
    if (!v6)
    {
      return;
    }

    goto LABEL_41;
  }

  v15 = v14;
  v16 = v4[20];
  if (!v16)
  {
    goto LABEL_16;
  }

  QMIRTPStackController::getSessionByQMIid(v16, *(v5 + 362), &v38);
  v17 = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v17)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmistackcontroller");
  LOBYTE(v38) = 0;
  LOBYTE(v44) = 0;
  v35 = ims::error(block, &v38);
  v36 = *(*(*v4 - 8) + 8);
  v37 = strlen((v36 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), v36 & 0x7FFFFFFFFFFFFFFFLL, v37);
  *(v35 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "::", 2);
  *(v35 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "handleSessionUninitializeResp", 29);
  *(v35 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), " session is null", 16);
  *(v35 + 17) = 0;
  (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v35 + 17) = 0;
  if (v44 == 1 && SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(block[0]);
  }

  v29 = v15;
LABEL_33:
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (!v6)
  {
    return;
  }

LABEL_41:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4F0ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c101_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver22sessionUninitializeReqENS0_I13QMIRTPSessionEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c101_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver22sessionUninitializeReqENS0_I13QMIRTPSessionEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionUninitializeReq(std::shared_ptr<QMIRTPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionUninitializeReq(std::shared_ptr<QMIRTPSession>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDC928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionUninitializeReq(std::shared_ptr<QMIRTPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionUninitializeReq(std::shared_ptr<QMIRTPSession>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms19SessionUninitialize8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver30sessionInternalUninitializeReqEhRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver30sessionInternalUninitializeReqEhRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionInternalUninitializeReq(unsigned char,std::string const&)::$_0,std::allocator<QMIRTPCommandDriver::sessionInternalUninitializeReq(unsigned char,std::string const&)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDC9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver19sessionConfigureReqENSt3__110shared_ptrI13QMIRTPSessionEEE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v29[0]) = 0;
    LOBYTE(v34) = 0;
    v24 = ims::error(block, v29);
    if (!v4)
    {
      __cxa_bad_typeid();
    }

    v25 = v24;
    v26 = *(*(*v4 - 8) + 8);
    v27 = *(v24 + 8);
    v28 = strlen((v26 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v26 & 0x7FFFFFFFFFFFFFFFLL, v28);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "::", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "handleSessionConfigureResp", 26);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " session is null", 16);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v34 == 1 && SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(block[0]);
      if (!v6)
      {
        return;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
  v36[0] = 0;
  v39 = 0;
  v7 = ims::debug(v29, v36);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*v4 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleSessionConfigureResp", 26);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  v12 = (*(*(v5 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v8 + 8), v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v13 = *(a2 + 1);
  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v29[0]) = 0;
    LOBYTE(v34) = 0;
    v14 = ims::error(block, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Error response for request: ", 28);
    *(v14 + 17) = 0;
    v15 = QMIRTPCommandDriver::nameForRequestId(v46, *a2);
    (*(*v14 + 32))(v14, v46, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " error:", 7);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), *(a2 + 1));
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " reason: ", 9);
    *(v14 + 17) = 0;
    v16 = *(a2 + 1);
    v17 = qmi::asString();
    v18 = strlen(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v17, v18);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v34 == 1 && SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(block[0]);
    }

    v13 = 4;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1174405120;
  v30 = ___ZN19QMIRTPCommandDriver26handleSessionConfigureRespERKN2ms16SessionConfigure8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
  v31 = &__block_descriptor_tmp_86;
  v35 = v13;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v4[3];
  if (!v19 || (v20 = v4[2], (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  v23 = v4[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v41 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v42 = &unk_1F5EDC868;
  v44 = v20;
  v45 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v43 = v29;
  dispatch_async(v23, block);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (!v34)
  {
LABEL_33:
    if (!v6)
    {
      return;
    }

    goto LABEL_34;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v6)
  {
    return;
  }

LABEL_34:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4F0B5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c98_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver19sessionConfigureReqENS0_I13QMIRTPSessionEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c98_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver19sessionConfigureReqENS0_I13QMIRTPSessionEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionConfigureReq(std::shared_ptr<QMIRTPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionConfigureReq(std::shared_ptr<QMIRTPSession>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionConfigureReq(std::shared_ptr<QMIRTPSession>)::$_0,std::allocator<QMIRTPCommandDriver::sessionConfigureReq(std::shared_ptr<QMIRTPSession>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms16SessionConfigure8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0B7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::MediaServiceDirection>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENSt3__110shared_ptrI13QMIRTPSessionEEN2ms21MediaServiceDirectionEbE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v3 + 24);
  v42 = v7;
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "rtp.qmidriver");
    LOBYTE(v30[0]) = 0;
    LOBYTE(v35) = 0;
    v25 = ims::error(&__p, v30);
    if (!v4)
    {
      __cxa_bad_typeid();
    }

    v26 = v25;
    v27 = *(*(*v4 - 8) + 8);
    v28 = *(v25 + 8);
    v29 = strlen((v27 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v27 & 0x7FFFFFFFFFFFFFFFLL, v29);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "::", 2);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "handleSessionSetStreamDirectionResp", 35);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " session is null", 16);
    *(v26 + 17) = 0;
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v35 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v6)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(v30, "rtp.qmidriver");
  v38[0] = 0;
  v41 = 0;
  v8 = ims::debug(v30, v38);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v9 = v8;
  v10 = *(*(*v4 - 8) + 8);
  v11 = *(v8 + 8);
  v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleSessionSetStreamDirectionResp", 35);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [sessionId=", 12);
  *(v9 + 17) = 0;
  v13 = (*(*(v5 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v9 + 8), v13);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " direction=", 11);
  *(v9 + 17) = 0;
  ims::toString<ms::MediaServiceDirection>(&v42, &__p);
  (*(*v9 + 32))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v14 = *(a2 + 1);
  if (v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "rtp.qmidriver");
    LOBYTE(v30[0]) = 0;
    LOBYTE(v35) = 0;
    v15 = ims::error(&__p, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Error response for request: ", 28);
    *(v15 + 17) = 0;
    v16 = QMIRTPCommandDriver::nameForRequestId(v48, *a2);
    (*(*v15 + 32))(v15, v48, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " error:", 7);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), *(a2 + 1));
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " reason: ", 9);
    *(v15 + 17) = 0;
    v17 = *(a2 + 1);
    v18 = qmi::asString();
    v19 = strlen(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v18, v19);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (v35 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = 4;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1174405120;
  v31 = ___ZN19QMIRTPCommandDriver35handleSessionSetStreamDirectionRespERKN2ms25SessionSetStreamDirection8ResponseENSt3__110shared_ptrI13QMIRTPSessionEENS0_21MediaServiceDirectionE_block_invoke;
  v32 = &__block_descriptor_tmp_99;
  v36 = v14;
  v37 = v7;
  v33 = v4;
  v34 = v5;
  v35 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v4[3];
  if (!v20 || (v21 = v4[2], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  v24 = v4[4];
  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 1174405120;
  __p.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v44 = &unk_1F5EDC868;
  v46 = v21;
  v47 = v23;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  v45 = v30;
  dispatch_async(v24, &__p);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (!v35)
  {
LABEL_35:
    if (!v6)
    {
      return;
    }

    goto LABEL_36;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (!v6)
  {
    return;
  }

LABEL_36:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4F0BEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c136_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENS0_I13QMIRTPSessionEEN2ms21MediaServiceDirectionEbE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c136_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENS0_I13QMIRTPSessionEEN2ms21MediaServiceDirectionEbE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionSetStreamDirectionReq(std::shared_ptr<QMIRTPSession>,ms::MediaServiceDirection,BOOL)::$_0,std::allocator<QMIRTPCommandDriver::sessionSetStreamDirectionReq(std::shared_ptr<QMIRTPSession>,ms::MediaServiceDirection,BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sessionSetStreamDirectionReq(std::shared_ptr<QMIRTPSession>,ms::MediaServiceDirection,BOOL)::$_0,std::allocator<QMIRTPCommandDriver::sessionSetStreamDirectionReq(std::shared_ptr<QMIRTPSession>,ms::MediaServiceDirection,BOOL)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms25SessionSetStreamDirection8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0C124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTCPReportingInterval>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTCPXRReportingInterval>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTCPReportTypes>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbttE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    v40[0] = 0;
    v43 = 0;
    v8 = ims::error(v7, v40);
    if (!v5)
    {
      __cxa_bad_typeid();
    }

    v9 = v8;
    v10 = *(*(*v5 - 8) + 8);
    v11 = *(v8 + 8);
    v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleConfigureRTCPReportsResp", 30);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " session is null", 16);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(block[0]);
    }
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
  v36[0] = 0;
  v39 = 0;
  v14 = ims::debug(v13, v36);
  if (!v5)
  {
    __cxa_bad_typeid();
  }

  v15 = v14;
  v16 = *(*(*v5 - 8) + 8);
  v17 = *(v14 + 8);
  v18 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v16 & 0x7FFFFFFFFFFFFFFFLL, v18);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "handleConfigureRTCPReportsResp", 30);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [sessionId=", 12);
  *(v15 + 17) = 0;
  v19 = (*(*(v4 + 8) + 176))(v4 + 8);
  MEMORY[0x1E69233B0](*(v15 + 8), v19);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(block[0]);
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "rtp.qmidriver");
    LOBYTE(block[0]) = 0;
    LOBYTE(v51) = 0;
    v21 = ims::error(v31, block);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Error response for request: ", 28);
    *(v21 + 17) = 0;
    v22 = QMIRTPCommandDriver::nameForRequestId(v44, *a2);
    (*(*v21 + 32))(v21, v44, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " error:", 7);
    *(v21 + 17) = 0;
    MEMORY[0x1E6923350](*(v21 + 8), *(a2 + 1));
    *(v21 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " reason: ", 9);
    *(v21 + 17) = 0;
    v23 = *(a2 + 1);
    v24 = qmi::asString();
    v25 = strlen(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), v24, v25);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (v51 == 1 && SHIBYTE(v49) < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }

    v20 = 4;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v32 = ___ZN19QMIRTPCommandDriver30handleConfigureRTCPReportsRespERKN2ms27SessionConfigureRtcpReports8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
  v33 = &__block_descriptor_tmp_124;
  v34 = v5;
  v35 = v20;
  v26 = v5[3];
  if (!v26 || (v27 = v5[2], (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  v30 = v5[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v47 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v48 = &unk_1F5EDC868;
  v50 = v27;
  v51 = v29;
  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  v49 = v31;
  dispatch_async(v30, block);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4F0C8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (*(v38 - 72) == 1 && *(v38 - 81) < 0)
  {
    operator delete(*(v38 - 104));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c106_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver23configureRTCPReportsReqENS0_I13QMIRTPSessionEEbbttE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c106_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver23configureRTCPReportsReqENS0_I13QMIRTPSessionEEbbttE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTCPReportsReq(std::shared_ptr<QMIRTPSession>,BOOL,BOOL,unsigned short,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTCPReportsReq(std::shared_ptr<QMIRTPSession>,BOOL,BOOL,unsigned short,unsigned short)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTCPReportsReq(std::shared_ptr<QMIRTPSession>,BOOL,BOOL,unsigned short,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTCPReportsReq(std::shared_ptr<QMIRTPSession>,BOOL,BOOL,unsigned short,unsigned short)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms27SessionConfigureRtcpReports8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTPMonitorInterval>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEtE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = *(v2 + 16);
  v5[0] = *(v2 + 8);
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::handleConfigureLinkMonitorResp(v3, a2, v5);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4F0CC5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c106_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENS0_I13QMIRTPSessionEEtE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c106_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENS0_I13QMIRTPSessionEEtE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCD38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms27SessionConfigureLinkMonitor8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0CDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::RTCPMonitorInterval>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEtE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = *(v2 + 16);
  v5[0] = *(v2 + 8);
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::handleConfigureLinkMonitorResp(v3, a2, v5);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4F0CF4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENS0_I13QMIRTPSessionEEtE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENS0_I13QMIRTPSessionEEtE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTCPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTCPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::configureRTCPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::configureRTCPLinkMonitorReq(std::shared_ptr<QMIRTPSession>,unsigned short)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::MediaServiceNotificationSubscription>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver25subscribeNotificationsReqEjE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = **(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v23, "rtp.qmidriver");
  v17[0] = 0;
  v20 = 0;
  v4 = ims::debug(v23, v17);
  if (!v3)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*v3 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleSubscribeNotificationsResp", 32);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (*(a2 + 1))
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.qmidriver");
    LOBYTE(v23[0]) = 0;
    v26 = 0;
    v10 = ims::error(v9, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Error response for request: ", 28);
    *(v10 + 17) = 0;
    v11 = QMIRTPCommandDriver::nameForRequestId(v21, *a2);
    (*(*v10 + 32))(v10, v21, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " error:", 7);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), *(a2 + 1));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " reason: ", 9);
    *(v10 + 17) = 0;
    v12 = *(a2 + 1);
    v13 = qmi::asString();
    v14 = strlen(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v13, v14);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.qmidriver");
    LOBYTE(v23[0]) = 0;
    v26 = 0;
    v16 = ims::error(v15, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "subscribeNotificationsReq failed", 32);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }
}

void sub_1E4F0D410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a34 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 33) < 0)
  {
    operator delete(*(v34 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver25subscribeNotificationsReqEjE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver25subscribeNotificationsReqEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::subscribeNotificationsReq(unsigned int)::$_0,std::allocator<QMIRTPCommandDriver::subscribeNotificationsReq(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDCED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms29ServiceSubscribeNotifications8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0D604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::DTMFDigit>::write(uint64_t result, uint64_t *a2)
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

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::DTMFVolume>::write(uint64_t result, uint64_t *a2)
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

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::DTMFDuration>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEchtE3__0EEOS1_OT__block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v29[0]) = 0;
    LOBYTE(v34) = 0;
    v24 = ims::error(block, v29);
    if (!v4)
    {
      __cxa_bad_typeid();
    }

    v25 = v24;
    v26 = *(*(*v4 - 8) + 8);
    v27 = *(v24 + 8);
    v28 = strlen((v26 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v26 & 0x7FFFFFFFFFFFFFFFLL, v28);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "::", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "handleSendDTMFResp", 18);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " session is null", 16);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v34 == 1 && SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(block[0]);
      if (!v6)
      {
        return;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
  v36[0] = 0;
  v39 = 0;
  v7 = ims::debug(v29, v36);
  if (!v4)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*v4 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleSendDTMFResp", 18);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  v12 = (*(*(v5 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v8 + 8), v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  v13 = *(a2 + 1);
  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    LOBYTE(v29[0]) = 0;
    LOBYTE(v34) = 0;
    v14 = ims::error(block, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Error response for request: ", 28);
    *(v14 + 17) = 0;
    v15 = QMIRTPCommandDriver::nameForRequestId(v46, *a2);
    (*(*v14 + 32))(v14, v46, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " error:", 7);
    *(v14 + 17) = 0;
    MEMORY[0x1E6923350](*(v14 + 8), *(a2 + 1));
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " reason: ", 9);
    *(v14 + 17) = 0;
    v16 = *(a2 + 1);
    v17 = qmi::asString();
    v18 = strlen(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v17, v18);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v34 == 1 && SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(block[0]);
    }

    v13 = 4;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1174405120;
  v30 = ___ZN19QMIRTPCommandDriver18handleSendDTMFRespERKN2ms15SessionSendDTMF8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
  v31 = &__block_descriptor_tmp_196;
  v35 = v13;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v4[3];
  if (!v19 || (v20 = v4[2], (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  v23 = v4[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v41 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v42 = &unk_1F5EDC868;
  v44 = v20;
  v45 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v43 = v29;
  dispatch_async(v23, block);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (!v34)
  {
LABEL_33:
    if (!v6)
    {
      return;
    }

    goto LABEL_34;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v6)
  {
    return;
  }

LABEL_34:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4F0DE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver11sendDTMFReqENS0_I13QMIRTPSessionEEchtE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver11sendDTMFReqENS0_I13QMIRTPSessionEEchtE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sendDTMFReq(std::shared_ptr<QMIRTPSession>,char,unsigned char,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::sendDTMFReq(std::shared_ptr<QMIRTPSession>,char,unsigned char,unsigned short)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::sendDTMFReq(std::shared_ptr<QMIRTPSession>,char,unsigned char,unsigned short)::$_0,std::allocator<QMIRTPCommandDriver::sendDTMFReq(std::shared_ptr<QMIRTPSession>,char,unsigned char,unsigned short)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms15SessionSendDTMF8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0E028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ms::tlv::ApnType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t __copy_helper_block_e8_32c156_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ms7ApnTypeEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c156_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ms7ApnTypeEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::uninitializeAllSessionsReq(std::string const&,ms::ApnType)::$_0,std::allocator<QMIRTPCommandDriver::uninitializeAllSessionsReq(std::string const&,ms::ApnType)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN2ms30ServiceUninitializeAllSessions8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0E28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c156_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ms7ApnTypeEE3__1EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c156_ZTSNSt3__110shared_ptrIZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN2ms7ApnTypeEE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver::uninitializeAllSessionsReq(std::string const&,ms::ApnType)::$_1,std::allocator<QMIRTPCommandDriver::uninitializeAllSessionsReq(std::string const&,ms::ApnType)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<audio::tlv::CallEvent>::write(_BYTE *result, uint64_t *a2)
{
  v2 = result[8];
  v3 = *a2;
  *(v3 + 3) = result[9];
  *(v3 + 4) = result[10];
  *(v3 + 5) = result[11];
  *a2 = v3 + 6;
  *v3 = v2;
  *(v3 + 1) = 3;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<audio::tlv::VoiceSystemId>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN5audio13SendCallEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0E5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<audio::tlv::SubscriptionId>::write(uint64_t result, uint64_t *a2)
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKN5audio21CodecChangeCbRegister8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4F0E76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *KAStringFromDate(NSDate *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EE2BC608 != -1)
    {
      dispatch_once(&qword_1EE2BC608, &__block_literal_global_6);
    }

    v2 = [_MergedGlobals_15 stringFromDate:v1];
  }

  else
  {
    v2 = @"(null)";
  }

  return v2;
}

uint64_t ___Z16KAStringFromDateP6NSDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_15;
  _MergedGlobals_15 = v0;

  v2 = _MergedGlobals_15;

  return [v2 setDateFormat:@"HH:mm:ss"];
}

void sub_1E4F0EE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  a9.super_class = KeepAliveManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E4F0F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4F0F214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void sub_1E4F0F364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void sub_1E4F0F49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void sub_1E4F0F710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1E4F0FA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c49_ZTSKNSt3__110shared_ptrI20ImsKeepAliveDelegateEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c49_ZTSKNSt3__110shared_ptrI20ImsKeepAliveDelegateEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

SipHeader *SipPolymorphicVectorHeader<SipSecurityMechanism>::SipPolymorphicVectorHeader(SipHeader *a1, const SipHeader *a2)
{
  SipHeader::SipHeader(a1, a2);
  v4[8] = 0;
  v5 = v4 + 8;
  *v4 = &unk_1F5EDD408;
  v4[9] = 0;
  v4[10] = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 9);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (!((v8 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>((v4 + 8), v8 >> 3);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  *a1 = &unk_1F5EDD370;
  *(a1 + 9) = 0;
  for (i = *(a2 + 9); v7 != i; v7 += 8)
  {
    v10 = (*(**v7 + 32))();
    v12 = *(a1 + 9);
    v11 = *(a1 + 10);
    if (v12 >= v11)
    {
      v14 = (v12 - *v5) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v15 = v11 - *v5;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(v5, v17);
      }

      v18 = (8 * v14);
      *v18 = v10;
      v13 = 8 * v14 + 8;
      v19 = *(a1 + 8);
      v20 = *(a1 + 9) - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;
      *(a1 + 9) = v13;
      *(a1 + 10) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v12 = v10;
      v13 = (v12 + 1);
    }

    *(a1 + 9) = v13;
  }

  return a1;
}

void sub_1E4F0FD74(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  SipHeader::~SipHeader(v1);
  _Unwind_Resume(a1);
}

void SipPolymorphicVectorHeader<SipSecurityMechanism>::~SipPolymorphicVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EDD370;
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
        (*(*v6 + 8))(v2[v5]);
        v2 = *(this + 8);
        v3 = *(this + 9);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *this = &unk_1F5EDD408;
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

BOOL SipSecurityAgreementHeader::itemFromString(uint64_t a1, std::string *a2, uint64_t *a3)
{
  v4 = SipSecurityMechanism::fromString(a2);
  if (v4)
  {
    *a3 = v4;
  }

  return v4 != 0;
}

ImsOutStream *SipPolymorphicVectorHeader<SipSecurityMechanism>::itemToStream(uint64_t a1, uint64_t *a2, ImsOutStream *a3)
{
  v4 = *a2;
  (*(*a3 + 32))(a3, *a2 + 8);

  return SipParameterMap::toStream((v4 + 32), a3, 0, 0, 0, 0);
}

BOOL SipPolymorphicVectorHeader<SipSecurityMechanism>::itemFromString(uint64_t a1, std::string *a2, uint64_t *a3)
{
  v4 = SipSecurityMechanism::fromString(a2);
  if (v4)
  {
    *a3 = v4;
  }

  return v4 != 0;
}

BOOL SipVectorHeader<SipSecurityMechanism *>::mergeHeader(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    v7 = v4[9];
    while (v6 != v7)
    {
      SipVectorHeader<SipSecurityMechanism *>::addItem(a1, v6++);
    }
  }

  return v5 != 0;
}

void SipVectorHeader<SipSecurityMechanism *>::~SipVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EDD408;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void ImsNetworkManager::createTransport(int a1@<W6>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 32) = 0;
  if (a1)
  {
    operator new();
  }

  operator new();
}

void sub_1E4F103E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ImsResult::~ImsResult(v2);
  _Unwind_Resume(a1);
}

void SimpleNetworkManager::~SimpleNetworkManager(SimpleNetworkManager *this)
{
  *this = &unk_1F5EDD4A0;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F5EDD4A0;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SimpleNetworkManager::copyAllInterfaces(void *a1@<X1>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v4 = SimpleNetworkManager::copyInterfaces(a1, __p);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x40000000;
  }

  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4F105F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SimpleNetworkManager::copyInterfaces(void *a1, const void **a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v56 = 0;
  if (getifaddrs(&v56))
  {
    result = 0;
    goto LABEL_78;
  }

  v5 = v56;
  if (v56)
  {
    while (1)
    {
      v6 = *(a2 + 23);
      v7 = a2[1];
      if ((v6 & 0x80u) == 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = a2[1];
      }

      if (v8)
      {
        v9 = strlen(v5->ifa_name);
        v10 = v9;
        if ((v6 & 0x80) != 0)
        {
          if (v9 != v7)
          {
            goto LABEL_74;
          }

          if (v7 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v11 = *a2;
        }

        else
        {
          v11 = a2;
          if (v10 != v6)
          {
            goto LABEL_74;
          }
        }

        if (memcmp(v11, v5->ifa_name, v10))
        {
          goto LABEL_74;
        }
      }

      ifa_addr = v5->ifa_addr;
      if (ifa_addr)
      {
        sa_family = ifa_addr->sa_family;
        v14 = sa_family == 30 || sa_family == 2;
        if (v14 && (v5->ifa_flags & 9) == 1)
        {
          if (sa_family == 30)
          {
            v15 = socket(30, 2, 0);
            if (v15 < 0)
            {
              v20 = 0;
            }

            else
            {
              v16 = v5->ifa_addr;
              ifa_name = v5->ifa_name;
              v73 = 0;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              *&v58[24] = 0u;
              strncpy(__dst, ifa_name, 0x10uLL);
              v18 = *v16;
              *&v58[12] = *&v16->sa_data[10];
              *v58 = v18;
              if (ioctl(v15, 0xC1206949uLL, __dst) < 0)
              {
                close(v15);
                v20 = 0;
              }

              else
              {
                v19 = v58[0];
                if ((v58[0] & 0x80) != 0)
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, "net");
                  v52[0] = 0;
                  v55 = 0;
                  v21 = ims::debug(__dst, v52);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "flavorMask |= AddressFlavorTemporary", 36);
                  *(v21 + 17) = 0;
                  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v21 + 17) = 0;
                  if (v55 == 1 && v54 < 0)
                  {
                    operator delete(__p);
                  }

                  if ((v58[7] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }

                  v20 = 4;
                  if ((v19 & 0x10) != 0)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v20 = 0;
                  if ((v58[0] & 0x10) == 0)
                  {
                    goto LABEL_44;
                  }

LABEL_38:
                  std::string::basic_string[abi:ne200100]<0>(__dst, "net");
                  v48[0] = 0;
                  v51 = 0;
                  v22 = ims::debug(__dst, v48);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "flavorMask |= AddressFlavorDeprecated", 37);
                  *(v22 + 17) = 0;
                  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v22 + 17) = 0;
                  if (v51 == 1 && v50 < 0)
                  {
                    operator delete(v49);
                  }

                  if ((v58[7] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }

                  v20 |= 8u;
                }

LABEL_44:
                if ((v19 & 6) != 0)
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, "net");
                  v44[0] = 0;
                  v47 = 0;
                  v23 = ims::debug(__dst, v44);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "flavorMask |= AddressFlavorNotReady", 35);
                  *(v23 + 17) = 0;
                  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v23 + 17) = 0;
                  if (v47 == 1 && v46 < 0)
                  {
                    operator delete(v45);
                  }

                  if ((v58[7] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }

                  v20 |= 0x20u;
                }

                if ((v19 & 8) != 0)
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, "net");
                  v40[0] = 0;
                  v43 = 0;
                  v24 = ims::debug(__dst, v40);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "flavorMask |= AddressFlavorDetached", 35);
                  *(v24 + 17) = 0;
                  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v24 + 17) = 0;
                  if (v43 == 1 && v42 < 0)
                  {
                    operator delete(v41);
                  }

                  if ((v58[7] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }

                  v20 |= 0x10u;
                }
              }

LABEL_58:
              v25 = v5->ifa_name;
              *v58 = 0;
              *&v58[8] = 0;
              strncpy(__dst, v25, 0x10uLL);
              ioctl(v15, 0xC0206933uLL, __dst);
              close(v15);
            }
          }

          else
          {
            v15 = socket(2, 2, 0);
            v20 = 0;
            if ((v15 & 0x80000000) == 0)
            {
              goto LABEL_58;
            }
          }

          lpsrc = 0;
          v39 = 0;
          IpAddress::createAddress(v5->ifa_addr, &lpsrc);
          v26 = lpsrc;
          if (lpsrc)
          {
            if (v20)
            {
              v27 = **lpsrc;
              if (v28)
              {
                v29 = v28;
                v30 = v39;
                if (v39)
                {
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v28[6] = v20;
                std::string::basic_string[abi:ne200100]<0>(__dst, "net");
                v34[0] = 0;
                v37 = 0;
                v31 = ims::debug(__dst, v34);
                (*(*v26 + 40))(v26, v31);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), ": flavorMask=", 13);
                *(v31 + 17) = 0;
                MEMORY[0x1E6923350](*(v31 + 8), v29[6]);
                *(v31 + 17) = 0;
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v31 + 17) = 0;
                if (v37 == 1 && v36 < 0)
                {
                  operator delete(v35);
                }

                if ((v58[7] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                if (v30)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                }
              }
            }

            operator new();
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }
        }
      }

LABEL_74:
      v5 = v5->ifa_next;
      if (!v5)
      {
        v32 = v56;
        goto LABEL_77;
      }
    }
  }

  v32 = 0;
LABEL_77:
  MEMORY[0x1E6923A80](v32);
  result = *a1 != a1[1];
LABEL_78:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F10E88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t SimpleNetworkManager::copyInterfaceWithName(uint64_t a1, const void **a2)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = SimpleNetworkManager::copyInterfaces(&__p, a2);
  v3 = __p;
  if (v2)
  {
    v4 = *__p;
    if ((v10 - __p) >= 9)
    {
      v5 = (v10 - __p) >> 3;
      if (v5 <= 2)
      {
        v5 = 2;
      }

      v6 = v5 - 1;
      v7 = __p + 8;
      do
      {
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }

        ++v7;
        --v6;
      }

      while (v6);
    }

    goto LABEL_11;
  }

  v4 = 0;
  if (__p)
  {
LABEL_11:
    operator delete(v3);
  }

  return v4;
}

void sub_1E4F110A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __SCNetworkReachability *SimpleNetworkManager::isReachable(uint64_t a1, NetworkInterface *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v5 = (*(**a3 + 160))();
  NetworkInterface::firstAddress(a2, v5, 1, &v8);
  if (v8)
  {
    Reachability = ImsNetworkReachabilityMonitor::getReachability(&v8, a3);
  }

  else
  {
    Reachability = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return Reachability;
}

void sub_1E4F11168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SimpleNetworkManager::createTcpSocket(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    if (a2)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1E4F113D8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1E4F114E0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void SimpleNetworkManager::createListenSocket(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_1E4F11694(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t SimpleNetworkManager::dnsResolver(SimpleNetworkManager *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

void std::__shared_ptr_emplace<SipTlsTransportGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipInsecureTransportGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD5A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void XcapCDRule::XcapCDRule(XcapCDRule *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  v4 = 1;
  v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v4);
  bambi::XmlTreeItem::XmlTreeItem(v2, "rule", (v3 + 5));
  *this = &unk_1F5EDD5F8;
  *(this + 1) = &unk_1F5EDD670;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  SipUri::SipUri((this + 112));
  _ZNSt3__115allocate_sharedB8ne200100I15XcapCDConditionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E4F11928(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + 112));
  v5 = *(v1 + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
  _Unwind_Resume(a1);
}

void XcapCDRule::setAttribute(uint64_t a1, uint64_t a2, const std::string *a3)
{
  XcapNs::stripXcapNs(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size != 2)
  {
    v7 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v7 = LOWORD(p_p->__r_.__value_.__l.__data_) == 25705;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_9:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_10:
  if (v7)
  {
    std::string::operator=((a1 + 64), a3);
  }
}

uint64_t XcapCDRule::createChild(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size != 10)
  {
    if (size == 7)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      if (LODWORD(p_p->__r_.__value_.__l.__data_) ^ 0x69746361 | *(p_p->__r_.__value_.__r.__words + 3) ^ 0x736E6F69)
      {
        a1 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_23;
      }

      return a1;
    }

    goto LABEL_21;
  }

  v5 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  if (v5->__r_.__value_.__r.__words[0] != 0x2D64726177726F66 || LOWORD(v5->__r_.__value_.__r.__words[1]) != 28532)
  {
    v7 = v5->__r_.__value_.__r.__words[0];
    v8 = LOWORD(v5->__r_.__value_.__r.__words[1]);
    if (v7 == *"conditions" && v8 == *"ns")
    {
      a1 = *(a1 + 88);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_23;
    }

LABEL_21:
    a1 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_23:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void XcapCDRule::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(&v21, 0, sizeof(v21));
  XcapNs::stripXcapNs(a2, &v21);
  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  switch(size)
  {
    case 6uLL:
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v21;
      }

      else
      {
        v16 = v21.__r_.__value_.__r.__words[0];
      }

      data = v16->__r_.__value_.__l.__data_;
      v18 = WORD2(v16->__r_.__value_.__r.__words[0]);
      if (data == 1735549300 && v18 == 29797)
      {
        memset(&__p, 0, sizeof(__p));
        (*(*a1 + 72))(a1, a2, a3, &__p);
        SipUri::fromString(a1 + 112, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      break;
    case 0xAuLL:
      v11 = &v21;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v21.__r_.__value_.__r.__words[0];
      }

      if (v11->__r_.__value_.__r.__words[0] == 0x2D64726177726F66 && LOWORD(v11->__r_.__value_.__r.__words[1]) == 28532)
      {
        goto LABEL_25;
      }

      v13 = v11->__r_.__value_.__r.__words[0];
      v14 = LOWORD(v11->__r_.__value_.__r.__words[1]);
      if (v13 == *"conditions" && v14 == *"ns")
      {
        goto LABEL_25;
      }

      break;
    case 7uLL:
      v7 = &v21;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v21.__r_.__value_.__r.__words[0];
      }

      v8 = v7->__r_.__value_.__l.__data_;
      v9 = *(v7->__r_.__value_.__r.__words + 3);
      if (v8 != 1769235297 || v9 != 1936617321)
      {
        break;
      }

LABEL_25:
      bambi::XmlParserItem::parseChild(a1, a2, a3);
      break;
    default:
      break;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F11DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void XcapCDRule::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E4F1214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v32 = *(v27 + 8);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4F121D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a18)
  {
    JUMPOUT(0x1E4F121B0);
  }

  JUMPOUT(0x1E4F121ACLL);
}

void sub_1E4F121E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a22)
  {
    JUMPOUT(0x1E4F121BCLL);
  }

  JUMPOUT(0x1E4F121B8);
}

void sub_1E4F121F0()
{
  if (!*(v0 - 56))
  {
    JUMPOUT(0x1E4F121BCLL);
  }

  JUMPOUT(0x1E4F121B8);
}

void XcapCDRule::targetNumber(XcapCDRule *this@<X0>, std::string *a2@<X8>)
{
  if (SipUri::isTelUri((this + 112)))
  {
    if ((*(this + 311) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 18);
      v4 = *(this + 38);
LABEL_6:
      a2->__r_.__value_.__r.__words[2] = v4;
      return;
    }

    v5 = *(this + 36);
    v6 = *(this + 37);
  }

  else
  {
    if ((*(this + 263) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 15);
      v4 = *(this + 32);
      goto LABEL_6;
    }

    v5 = *(this + 30);
    v6 = *(this + 31);
  }

  std::string::__init_copy_ctor_external(a2, v5, v6);
}

uint64_t XcapCDRule::asString@<X0>(XcapCDRule *this@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *__src = 0u;
  v26 = 0u;
  v27 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Rule-Id: ", 9);
  v5 = *(this + 87);
  if (v5 >= 0)
  {
    v6 = this + 64;
  }

  else
  {
    v6 = *(this + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 87);
  }

  else
  {
    v7 = *(this + 9);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",  ", 3);
  v10 = *(this + 11);
  if (v10)
  {
    XcapCDCondition::asString(v10, v24);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "");
  }

  if ((v25 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v12 = v25;
  }

  else
  {
    v12 = v24[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Target : ", 11);
  XcapCDRule::targetNumber(this, &__p);
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

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, p_p, size);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v35, MEMORY[0x1E69E5318]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v35);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if ((BYTE8(v32) & 0x10) != 0)
  {
    v20 = v32;
    if (v32 < __src[1])
    {
      *&v32 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v19 = 0;
      a2[23] = 0;
      goto LABEL_39;
    }

    v21 = *(&v27 + 1);
    v20 = *(&v28 + 1);
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a2[23] = v19;
  if (v19)
  {
    memmove(a2, v21, v19);
  }

LABEL_39:
  a2[v19] = 0;
  *&v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v26 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  *(&v26 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v33);
}

void sub_1E4F12628(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a13 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a14, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void non-virtual thunk toXcapCDRule::~XcapCDRule(XcapCDRule *this)
{
  *(this - 1) = &unk_1F5EDD5F8;
  *this = &unk_1F5EDD670;
  SipUri::~SipUri((this + 104));
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  bambi::XmlTreeItem::~XmlTreeItem(this);
}

{
  *(this - 1) = &unk_1F5EDD5F8;
  *this = &unk_1F5EDD670;
  SipUri::~SipUri((this + 104));
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

void XcapDocumentSelector::XcapDocumentSelector(std::string *this, __int128 *a2, __int128 *a3)
{
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_1E4F128F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XcapDocumentSelector::asString@<X0>(XcapDocumentSelector *this@<X0>, _BYTE *a2@<X8>)
{
  v29 = 0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  *__p = 0u;
  v26 = 0u;
  v23 = 0u;
  *__src = 0u;
  v21 = 0u;
  v22 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (v4 >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/users/", 7);
  v11 = *(this + 3);
  v10 = this + 24;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "simservs.xml", 12);
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v18 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v18 = __src[1];
    }

    v19 = __src[0];
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_26;
    }

    v19 = *(&v22 + 1);
    v18 = *(&v23 + 1);
  }

  v17 = v18 - v19;
  if ((v18 - v19) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a2[23] = v17;
  if (v17)
  {
    memmove(a2, v19, v17);
  }

LABEL_26:
  a2[v17] = 0;
  *&v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v21 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v28);
}

void sub_1E4F12BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

void sub_1E4F12F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x1E69225A0](v32 + 72);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v32);
  operator delete(v34);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::NetworkServiceProxyHelperImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDD760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::NetworkServiceProxyHelperImpl::~NetworkServiceProxyHelperImpl(_anonymous_namespace_::NetworkServiceProxyHelperImpl *this)
{
  *this = &unk_1F5EDD7B0;
  *(this + 1) = &unk_1F5EDD7E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  MEMORY[0x1E69225A0](this + 48);
}

{

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::NetworkServiceProxyHelperImpl::generateAthmSpamTokenRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E69B37C0]) initATHMChallengeWithIssuerName:@"ircs-ppissuer.mtls.googleapis.com"];
  v7 = *(a1 + 64);
  *(a1 + 64) = v6;

  v8 = [*(a1 + 64) challengeData];
  if (*(a2 + 24) == 1)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:*a2 length:*(a2 + 8) - *a2];
    v10 = [objc_alloc(MEMORY[0x1E69B37C8]) initWithChallenge:v8 tokenKey:v9 originNameKey:0];
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = [objc_alloc(MEMORY[0x1E69B37C8]) initForKnownIssuerWithChallenge:v8];
  }

  v12 = *(a1 + 56);
  *(a1 + 56) = v10;

  [*(a1 + 56) setSystemClient:1];
  [*(a1 + 56) setMetadataSize:4];
  *(a1 + 72) = std::chrono::steady_clock::now();
  *(a1 + 80) = 1;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = *(a1 + 16), (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  p_shared_weak_owners = &v15->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v18 = *(a1 + 56);
  ims::getQueue(&v21);
  v19 = v21;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3321888768;
  v22[2] = ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNSt3__18optionalINS1_6vectorIhNS1_9allocatorIhEEEEEENS1_8functionIFv9ImsResultS6_EEE_block_invoke;
  v22[3] = &__block_descriptor_80_ea8_32c67_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEEEEE64c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE_e28_v24__0__NSData_8__NSError_16l;
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::__value_func[abi:ne200100](v23, a3);
  v23[4] = v14;
  v24 = v16;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  [v18 generateTokenRequestWithQueue:v19 completionHandler:v22];

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v23);
  std::__shared_weak_count::__release_weak(v16);

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E4F133E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v23 + 32);

  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(std::chrono::steady_clock::time_point *this, const PatAndReputationTokenParams *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  memset(v48, 0, 32);
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](v48, a2 + 136);
  if (!this[7].__d_.__rep_)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    memset(v47, 0, 64);
    *buf = &unk_1F5EBDEF8;
    v45 = &_bambiDomain;
    v46 = 1073741826;
    v5 = ImsResult::operator<<<char [18]>(buf, "nil token Fetcher");
    ImsResult::ImsResult(v33, v5);
    ImsResult::~ImsResult(buf);
    ims::getQueue(&v32);
    std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](buf, v48);
    ImsResult::ImsResult(&v47[1], v33);
    v6 = v32;
    operator new();
  }

  v31 = [MEMORY[0x1E695DEF0] dataWithBytes:*(a2 + 7) length:*(a2 + 8) - *(a2 + 7)];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*a2 length:*(a2 + 1) - *a2];
  if (*(a2 + 48) == 1)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithBytes:*(a2 + 3) length:*(a2 + 4) - *(a2 + 3)];
  }

  else
  {
    ims::getStaticLoggerFor("nsp", buf);
    v7 = v45;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "#D Using PAT key from known issuer", buf, 2u);
    }

    v30 = 0;
  }

  v28 = v4;
  if (*(a2 + 104) == 1)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:*(a2 + 10) length:{*(a2 + 11) - *(a2 + 10), v4, v30}];
  }

  else
  {
    ims::getStaticLoggerFor("nsp", buf);
    v9 = v45;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "#D Using Spam ATHM key from known issuer", buf, 2u);
    }

    v8 = 0;
  }

  v12 = *(a2 + 14);
  v11 = a2 + 112;
  v10 = v12;
  if (v11[23] >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v13, v28}];
  this[11].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  LOBYTE(this[12].__d_.__rep_) = 1;
  rep = this[3].__d_.__rep_;
  if (!rep || (v16 = this[2].__d_.__rep_, (v17 = std::__shared_weak_count::lock(rep)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  p_shared_weak_owners = &v17->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  v20 = this[7].__d_.__rep_;
  ims::getQueue(buf);
  v21 = *buf;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3321888768;
  v35[2] = ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParams_block_invoke;
  v35[3] = &unk_1F5EDD958;
  v40 = this;
  v41 = v16;
  v42 = v18;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](v43, v48);
  v22 = v14;
  v36 = v22;
  v23 = v29;
  v37 = v23;
  v24 = v30;
  v38 = v24;
  v25 = v8;
  v39 = v25;
  [v20 handleTokenResponse:v31 withQueue:v21 completionHandler:v35];

  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v43);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  std::__shared_weak_count::__release_weak(v18);

  result = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v48);
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F1393C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toanonymous namespace::NetworkServiceProxyHelperImpl::~NetworkServiceProxyHelperImpl(_anonymous_namespace_::NetworkServiceProxyHelperImpl *this)
{
}

{

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<anonymous namespace::NetworkServiceProxyHelperImpl>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  return a1;
}

void ims::SharedLoggable<anonymous namespace::NetworkServiceProxyHelperImpl>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);

  JUMPOUT(0x1E69235B0);
}

uint64_t ctu::SharedSynchronizable<anonymous namespace::NetworkServiceProxyHelperImpl>::~SharedSynchronizable(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNSt3__18optionalINS1_6vectorIhNS1_9allocatorIhEEEEEENS1_8functionIFv9ImsResultS6_EEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  memset(&v24[2], 0, 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24[0] = &unk_1F5EBDEF8;
  v24[1] = &_bambiDomain;
  if (v6)
  {
    memset(__p, 0, sizeof(__p));
    v8 = [v6 localizedDescription];
    v9 = v8;
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);

    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = &unk_1F5EBDEF8;
    v31 = &_bambiDomain;
    LODWORD(v32) = 0x40000000;
    v10 = ImsResult::operator<<<std::string>(&v30, __p);
    v11 = ImsResult::operator<<<char [3]>(v10, " (");
    v29 = [v7 code];
    v12 = ImsResult::operator<<<long>(v11, &v29);
    LOBYTE(v28) = 41;
    ImsResult::operator<<<char>(v12, &v28);
    ImsResult::operator=(v24, v12);
    ImsResult::~ImsResult(&v30);
    ims::getQueue(&v22);
    std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::__value_func[abi:ne200100](&v30, a1 + 32);
    ImsResult::ImsResult((&v33 + 8), v24);
    v13 = v22;
    operator new();
  }

  v14 = v5;
  v15 = [v5 bytes];
  v16 = v5;
  v17 = [v5 bytes];
  v18 = [v5 length];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v30, v15, v17 + v18, v17 + v18 - v15);
  v19 = v30;
  v20 = v31;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = &unk_1F5EBDEF8;
  v31 = &_bambiDomain;
  LODWORD(v32) = 0;
  ImsResult::operator=(v24, &v30);
  ImsResult::~ImsResult(&v30);
  ims::getQueue(&v28);
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::__value_func[abi:ne200100](&v30, a1 + 32);
  ImsResult::ImsResult((&v33 + 8), v24);
  memset(v37, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v37, v19, v20, v20 - v19);
  v21 = v28;
  operator new();
}

void sub_1E4F1402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v7)
  {
    operator delete(v7);
  }

  ImsResult::~ImsResult(va);

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char>(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  v4 = *(v3 + 8);
  v6 = *a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v6, 1);
  *(v3 + 17) = 0;
  return a1;
}

void anonymous namespace::NetworkServiceProxyHelperImpl::logTokenMetrics(uint64_t a1, int a2, unsigned __int8 a3, int a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = v9;
  v22 = 0;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v23 = 257;
  v11 = *(a1 + 159);
  if (v11 < 0)
  {
    v11 = *(a1 + 144);
  }

  BYTE2(v23) = v11 != 0;
  if (v9 && (a3 & 1) == 0)
  {
    v12 = v9;
    v13 = [v12 code];
    if ((v13 - 1001) >= 0x10)
    {
      ims::getStaticLoggerFor("nsp", buf);
      v15 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v12 code];
        *buf = 134217984;
        *&buf[4] = v16;
        _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "#D Unknown NSP error code %ld, using kNSPErrorCodeTypeServerFailure", buf, 0xCu);
      }

      v14 = 1007;
    }

    else
    {
      v14 = v13;
    }

    LODWORD(v22) = v14;
    BYTE4(v22) = 1;
  }

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
  (*(**(v18 + 184) + 232))(*(v18 + 184), v21);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E4F143E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c67_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEEEEE64c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE(uint64_t a1, uint64_t a2)
{
  result = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c67_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEEEEE64c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t *_ZNSt3__110unique_ptrIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNS_8optionalINS_6vectorIhNS_9allocatorIhEEEEEENS_8functionIFv9ImsResultS7_EEEEUb_E3__0NS_14default_deleteISF_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ImsResult::~ImsResult((v2 + 32));
    v3 = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E69235B0](v3, 0x10F2C40815FEED8);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNSt3__18optionalINS3_6vectorIhNS3_9allocatorIhEEEEEENS3_8functionIFv9ImsResultS8_EEEEUb_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectNS3_10unique_ptrIT_NS3_14default_deleteISL_EEEEENUlPvE_8__invokeESP_(uint64_t a1)
{
  v4 = a1;
  ImsResult::ImsResult(v8, (a1 + 32));
  __p = 0;
  v6 = 0;
  v7 = 0;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  ImsResult::~ImsResult(v8);
  return _ZNSt3__110unique_ptrIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNS_8optionalINS_6vectorIhNS_9allocatorIhEEEEEENS_8functionIFv9ImsResultS7_EEEEUb_E3__0NS_14default_deleteISF_EEED1B8ne200100Ev(&v4);
}

uint64_t std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void **_ZNSt3__110unique_ptrIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNS_8optionalINS_6vectorIhNS_9allocatorIhEEEEEENS_8functionIFv9ImsResultS7_EEEEUb_E3__1NS_14default_deleteISF_EEED1B8ne200100Ev(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[15];
    if (v3)
    {
      v2[16] = v3;
      operator delete(v3);
    }

    ImsResult::~ImsResult((v2 + 4));
    v4 = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E69235B0](v4, 0x10F2C40B3212235);
  }

  return a1;
}

void **_ZZN8dispatch5asyncIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNSt3__18optionalINS3_6vectorIhNS3_9allocatorIhEEEEEENS3_8functionIFv9ImsResultS8_EEEEUb_E3__1EEvPU28objcproto17OS_dispatch_queue8NSObjectNS3_10unique_ptrIT_NS3_14default_deleteISL_EEEEENUlPvE_8__invokeESP_(void *a1)
{
  v4 = a1;
  ImsResult::ImsResult(v8, (a1 + 4));
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1[15], a1[16], a1[16] - a1[15]);
  v2 = a1[3];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  ImsResult::~ImsResult(v8);
  return _ZNSt3__110unique_ptrIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNS_8optionalINS_6vectorIhNS_9allocatorIhEEEEEENS_8functionIFv9ImsResultS7_EEEEUb_E3__1NS_14default_deleteISF_EEED1B8ne200100Ev(&v4);
}

void sub_1E4F147AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  ImsResult::~ImsResult(&a14);
  _ZNSt3__110unique_ptrIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl28generateAthmSpamTokenRequestERKNS_8optionalINS_6vectorIhNS_9allocatorIhEEEEEENS_8functionIFv9ImsResultS7_EEEEUb_E3__1NS_14default_deleteISF_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParams_block_invoke(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[8];
  memset(&v36[2], 0, 24);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36[0] = &unk_1F5EBDEF8;
  v36[1] = &_bambiDomain;
  if (v6)
  {
    memset(__p, 0, sizeof(__p));
    v9 = [v6 localizedDescription];
    v10 = v9;
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);

    memset(v48, 0, 64);
    *buf = &unk_1F5EBDEF8;
    v46 = &_bambiDomain;
    v47 = 0x40000000;
    v11 = ImsResult::operator<<<char [43]>(buf, "Failed to handle Spam ATHM TokenResponse: ");
    v12 = ImsResult::operator<<<std::string>(v11, __p);
    v13 = ImsResult::operator<<<char [3]>(v12, " (");
    v41 = [v7 code];
    v14 = ImsResult::operator<<<long>(v13, &v41);
    LOBYTE(v40) = 41;
    ImsResult::operator<<<char>(v14, &v40);
    ImsResult::operator=(v36, v14);
    ImsResult::~ImsResult(buf);
    v15 = a1[10];
    if (v15)
    {
      if (std::__shared_weak_count::lock(v15))
      {
        v16 = a1[9];
        if (v16)
        {
          if (*(v16 + 96) == 1)
          {
            v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            v18 = ((v17.__d_.__rep_ - *(v16 + 88)) * 0x431BDE82D7B634DBLL) >> 64;
            v19 = (LODWORD(v17.__d_.__rep_) - *(v16 + 88)) / 1000000;
          }

          else
          {
            v19 = 0;
          }

          *(v16 + 96) = 0;
        }
      }
    }

    ims::getQueue(&v34);
    std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](buf, (a1 + 11));
    ImsResult::ImsResult(&v48[8], v36);
    v26 = v34;
    operator new();
  }

  v20 = a1[10];
  if (v20)
  {
    v21 = std::__shared_weak_count::lock(v20);
    if (v21)
    {
      v22 = a1[9];
      if (v22)
      {
        if (*(v22 + 96) == 1)
        {
          v23.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v24 = ((v23.__d_.__rep_ - *(v22 + 88)) * 0x431BDE82D7B634DBLL) >> 64;
          v25 = (LODWORD(v23.__d_.__rep_) - *(v22 + 88)) / 1000000;
        }

        else
        {
          v25 = 0;
        }

        *(v22 + 96) = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  ims::getStaticLoggerFor("nsp", buf);
  v27 = v46;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "#D Received Spam ATHM Token. Moving on to retrieving PAT & Reputation Tokens", buf, 2u);
  }

  [MEMORY[0x1E69B37C8] saveAuxiliaryAuthenticationDataToCache:v5 type:2 forLabel:@"unused" cacheKey:a1[4]];
  ims::getStaticLoggerFor("nsp", buf);
  v28 = v46;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "#D Using new API!", buf, 2u);
  }

  v29 = [*(v8 + 64) challengeData];
  v30 = [objc_alloc(MEMORY[0x1E69B37C8]) initWithChallenge:a1[5] tokenKey:a1[6] auxiliaryAuthenticationChallenge:v29 auxiliaryAuthenticationKey:a1[7] auxiliaryAuthenticationLabel:@"unused"];
  [v30 setSystemClient:1];
  [v30 setAuxiliaryAuthenticationCacheKey:a1[4]];
  *(v8 + 104) = std::chrono::steady_clock::now();
  *(v8 + 112) = 1;
  ims::getQueue(buf);
  v31 = *buf;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3321888768;
  v42[2] = ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParams_block_invoke_25;
  v42[3] = &__block_descriptor_80_ea8_32c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE48c70_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEES5_EEE_e39_v32__0__NSData_8__NSData_16__NSError_24l;
  v32 = a1[10];
  v42[4] = a1[9];
  v43 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](v44, (a1 + 11));
  [v30 fetchTokenAndAuxiliaryAuthenticationWithQueue:v31 completionHandler:v42];

  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v44);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ImsResult::~ImsResult(v36);

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1E4F14D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a17);

  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParams_block_invoke_25(uint64_t a1, void *a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  memset(&v46[2], 0, 24);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46[0] = &unk_1F5EBDEF8;
  v46[1] = &_bambiDomain;
  if (v9)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v11 = [v9 localizedDescription];
    v12 = v11;
    std::string::basic_string[abi:ne200100]<0>(&v43, [v11 UTF8String]);

    v54 = 0u;
    *__p_8 = 0u;
    v56 = 0u;
    v57 = 0u;
    v52[0] = &unk_1F5EBDEF8;
    v52[1] = &_bambiDomain;
    v53 = 0x40000000;
    v13 = ImsResult::operator<<<char [24]>(v52, "Failed to fetch tokens:");
    v14 = ImsResult::operator<<<std::string>(v13, &v43);
    v15 = ImsResult::operator<<<char [3]>(v14, " (");
    v40 = [v10 code];
    v16 = ImsResult::operator<<<long>(v15, &v40);
    LOBYTE(v51) = 41;
    ImsResult::operator<<<char>(v16, &v51);
    ImsResult::operator=(v46, v16);
    ImsResult::~ImsResult(v52);
    v17 = *(a1 + 40);
    if (v17)
    {
      if (std::__shared_weak_count::lock(v17))
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          if (*(v18 + 112) == 1)
          {
            v19.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            v20 = ((v19.__d_.__rep_ - *(v18 + 104)) * 0x431BDE82D7B634DBLL) >> 64;
            v21 = (LODWORD(v19.__d_.__rep_) - *(v18 + 104)) / 1000000;
          }

          else
          {
            v21 = 0;
          }

          *(v18 + 112) = 0;
        }
      }
    }

    ims::getQueue(&v50);
    std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](v52, a1 + 48);
    ImsResult::ImsResult((&v54 + 8), v46);
    v37 = v50;
    operator new();
  }

  v22 = v7;
  v23 = [v7 bytes];
  v24 = v7;
  v25 = [v7 bytes];
  v26 = [v7 length];
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v43, v23, v25 + v26, v25 + v26 - v23);
  v27 = v8;
  v28 = [v8 bytes];
  v29 = v8;
  v30 = [v8 bytes];
  v31 = [v8 length];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v40, v28, v30 + v31, v30 + v31 - v28);
  v32 = *(a1 + 40);
  if (v32)
  {
    if (std::__shared_weak_count::lock(v32))
    {
      v33 = *(a1 + 32);
      if (v33)
      {
        if (*(v33 + 112) == 1)
        {
          v34.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v35 = ((v34.__d_.__rep_ - *(v33 + 104)) * 0x431BDE82D7B634DBLL) >> 64;
          v36 = (LODWORD(v34.__d_.__rep_) - *(v33 + 104)) / 1000000;
        }

        else
        {
          v36 = 0;
        }

        *(v33 + 112) = 0;
      }
    }
  }

  ims::getQueue(&v39);
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](v52, a1 + 48);
  *(&v54 + 1) = 0;
  *__p_8 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v54 + 8, v43, v44, v44 - v43);
  v56 = 0uLL;
  *&v57 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v56, v40, v41, v41 - v40);
  v38 = v39;
  operator new();
}

void sub_1E4F153E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  ImsResult::~ImsResult(&a20);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE48c70_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEES5_EEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_1E4F15550(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE48c70_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEES5_EEE(uint64_t a1)
{
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_72c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE88c70_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEES5_EEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](a1 + 88, a2 + 88);
}

void sub_1E4F155F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_72c70_ZTSNSt3__18weak_ptrIN12_GLOBAL__N_129NetworkServiceProxyHelperImplEEE88c70_ZTSNSt3__18functionIFv9ImsResultNS_6vectorIhNS_9allocatorIhEEEES5_EEE(uint64_t a1)
{
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](a1 + 88);
  v2 = *(a1 + 80);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::unique_ptr<anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(PatAndReputationTokenParams const&)::$_0,std::default_delete<anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(PatAndReputationTokenParams const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ImsResult::~ImsResult((v2 + 32));
    v3 = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E69235B0](v3, 0x10F2C40815FEED8);
  }

  return a1;
}

uint64_t *dispatch::async<anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(PatAndReputationTokenParams const&)::$_0>(NSObject  {objcproto17OS_dispatch_queue}*,std::unique_ptr<anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(PatAndReputationTokenParams const&)::$_0,std::default_delete<anonymous namespace::NetworkServiceProxyHelperImpl::requestPatAndReputationTokens(PatAndReputationTokenParams const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v4 = a1;
  ImsResult::ImsResult(v11, (a1 + 32));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, v11, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  ImsResult::~ImsResult(v11);
}

uint64_t *_ZZN8dispatch5asyncIZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_E3__3EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NSA_14default_deleteISC_EEEEENUlPvE_8__invokeESG_(uint64_t a1)
{
  v4 = a1;
  ImsResult::ImsResult(v11, (a1 + 32));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, v11, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  ImsResult::~ImsResult(v11);
}

uint64_t *_ZZN8dispatch5asyncIZZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_EUb1_E3__4EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NSA_14default_deleteISC_EEEEENUlPvE_8__invokeESG_(uint64_t a1)
{
  v4 = a1;
  ImsResult::ImsResult(v11, (a1 + 32));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, v11, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  ImsResult::~ImsResult(v11);
}

void **_ZNSt3__110unique_ptrIZZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_EUb1_E3__5NS_14default_deleteIS6_EEED1B8ne200100Ev(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    v5 = std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E69235B0](v5, 0x1030C4083924F50);
  }

  return a1;
}

void **_ZZN8dispatch5asyncIZZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_EUb1_E3__5EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NSA_14default_deleteISC_EEEEENUlPvE_8__invokeESG_(void *a1)
{
  v6 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13[0] = &unk_1F5EBDEF8;
  v13[1] = &_bambiDomain;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v10, v2, v3, v3 - v2);
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1[7], a1[8], a1[8] - a1[7]);
  v4 = a1[3];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, v13, &v10, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  ImsResult::~ImsResult(v13);
  return _ZNSt3__110unique_ptrIZZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_EUb1_E3__5NS_14default_deleteIS6_EEED1B8ne200100Ev(&v6);
}

void sub_1E4F15BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a16);
  _ZNSt3__110unique_ptrIZZZN12_GLOBAL__N_129NetworkServiceProxyHelperImpl29requestPatAndReputationTokensERK27PatAndReputationTokenParamsEUb0_EUb1_E3__5NS_14default_deleteIS6_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

void sub_1E4F15F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  XcapServerInfo::~XcapServerInfo(v27);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v30);
  _Unwind_Resume(a1);
}

void XcapNafServerInfo::~XcapNafServerInfo(XcapNafServerInfo *this)
{
  *this = &unk_1F5EDD998;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, kXcapLoggingFacility);
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Deleting NafServerInfo: ", 24);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
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

  XcapServerInfo::~XcapServerInfo(this);
}

{
  XcapNafServerInfo::~XcapNafServerInfo(this);

  JUMPOUT(0x1E69235B0);
}

void XcapNafServerInfo::nafId(XcapNafServerInfo *this@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_16, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_16))
  {
    LODWORD(v29.__r_.__value_.__l.__data_) = 1;
    v29.__r_.__value_.__s.__data_[4] = 2;
    qword_1EE2BC630 = 0;
    unk_1EE2BC638 = 0;
    qword_1EE2BC628 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_1EE2BC628, &v29, v29.__r_.__value_.__r.__words + 5, 5);
    __cxa_atexit(std::vector<unsigned char>::~vector[abi:ne200100], &qword_1EE2BC628, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_16);
  }

  if ((atomic_load_explicit(&qword_1EE2BC618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC618))
  {
    LOWORD(v29.__r_.__value_.__l.__data_) = 1;
    v29.__r_.__value_.__s.__data_[2] = 1;
    qword_1EE2BC648 = 0;
    unk_1EE2BC650 = 0;
    qword_1EE2BC640 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_1EE2BC640, &v29, v29.__r_.__value_.__r.__words + 3, 3);
    __cxa_atexit(std::vector<unsigned char>::~vector[abi:ne200100], &qword_1EE2BC640, &dword_1E4C3F000);
    __cxa_guard_release(&qword_1EE2BC618);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (*(this + 204) == 1)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v24, qword_1EE2BC640, qword_1EE2BC648, qword_1EE2BC648 - qword_1EE2BC640);
    v4 = (*(**(this + 64) + 32))(*(this + 64));
    v29.__r_.__value_.__s.__data_[0] = HIBYTE(v4);
    std::vector<unsigned char>::push_back[abi:ne200100](&v24, &v29);
    v29.__r_.__value_.__s.__data_[0] = v4;
    std::vector<unsigned char>::push_back[abi:ne200100](&v24, &v29);
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v24, qword_1EE2BC628, qword_1EE2BC630, qword_1EE2BC630 - qword_1EE2BC628);
  }

  memset(&v23, 0, sizeof(v23));
  v5 = *(this + 66);
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = **v5;
  if (!v7)
  {
    goto LABEL_30;
  }

  memset(&v29, 0, sizeof(v29));
  v8 = (*(*v7 + 24))(v7);
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v8 + 8), "realm");
  v10 = (v9 + 5);
  if (!v9)
  {
    v10 = &ims::kEmptyString;
  }

  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *v10, *(v10 + 1));
  }

  else
  {
    v29 = *v10;
  }

  memset(&__str, 0, sizeof(__str));
  XcapNafServerInfo::_fetchMatchingRealm(&__str, this, &v29);
  memset(&v23, 0, sizeof(v23));
  v11 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v14 = memchr(p_str, 64, size)) == 0 || v14 - p_str == -1))
  {
    if (v11 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

LABEL_30:
    (*(*this + 80))(&v23, this);
    goto LABEL_31;
  }

  std::string::basic_string(&v27, &__str, v14 - p_str + 1, size, &v30);
  v23 = v27;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_31:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v23;
  }

  else
  {
    v15 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v23.__r_.__value_.__l.__size_;
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(a2, 0, v15, v15 + v16, v16);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a2, *(a2 + 8), v24, v25, v25 - v24);
  v17 = std::string::basic_string[abi:ne200100]<0>(&v29, kXcapLoggingFacility);
  v19[0] = 0;
  v22 = 0;
  v18 = ims::debug(v17, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ": ", 2);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "NAF_ID: ", 8);
  *(v18 + 17) = 0;
  logBytes(a2, &__str);
  (*(*v18 + 32))(v18, &__str);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

uint64_t std::vector<unsigned char>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void XcapNafServerInfo::host(XcapNafServerInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 199) < 0)
  {
    v4 = *(this + 23);
    if (v4)
    {
      v5 = *(this + 22);

      std::string::__init_copy_ctor_external(a2, v5, v4);
      return;
    }
  }

  else if (*(this + 199))
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 11);
    a2->__r_.__value_.__r.__words[2] = *(this + 24);
    return;
  }

  memset(&v18, 0, sizeof(v18));
  std::string::basic_string[abi:ne200100]<0>(&v18, "xcap.");
  memset(&__p, 0, sizeof(__p));
  XcapServerInfo::_constructHostSuffix(this, &__p);
  v6 = XcapServerInfo::k3gppDomain;
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

  v9 = strlen(XcapServerInfo::k3gppDomain);
  if (v9)
  {
    v10 = v9;
    if (size >= v9)
    {
      v11 = p_p + size;
      v12 = *XcapServerInfo::k3gppDomain;
      v13 = p_p;
      do
      {
        if (size - v10 == -1)
        {
          break;
        }

        v14 = memchr(v13, v12, size - v10 + 1);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        if (!memcmp(v14, v6, v10))
        {
          if (v15 == v11 || v15 - p_p == -1)
          {
            break;
          }

          goto LABEL_24;
        }

        v13 = (v15 + 1);
        size = v11 - (v15 + 1);
      }

      while (size >= v10);
    }
  }

  else
  {
LABEL_24:
    v16 = strlen(XcapServerInfo::kImsPrefix);
    std::string::append(&v18, XcapServerInfo::kImsPrefix, v16);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F1695C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapNafServerInfo::_constructInitialHeaders(std::__shared_weak_count **this)
{
  ((*this)[3].__shared_owners_)(v10);
  std::string::basic_string[abi:ne200100]<0>(__p, XcapServerInfo::kHostHeaderName);
  *&v12 = __p;
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 58), __p);
  v3 = v2;
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  *(v3 + 56) = *v10;
  *(v3 + 72) = *&v10[16];
  v10[23] = 0;
  v10[0] = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((v10[23] & 0x80000000) != 0)
    {
      operator delete(*v10);
    }
  }

  v12 = 0uLL;
  v13 = 0;
  v4 = this[8];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = this[7];
      if (v7)
      {
        if (SHIBYTE(v7[17].__shared_owners_) < 0)
        {
          std::string::__init_copy_ctor_external(v10, v7[16].__shared_weak_owners_, v7[17].__vftable);
        }

        else
        {
          *v10 = *&v7[16].__shared_weak_owners_;
          *&v10[16] = v7[17].__shared_owners_;
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12);
        }

        v12 = *v10;
        v13 = *&v10[16];
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  ImsStringOutStream::ImsStringOutStream(v10);
}

void sub_1E4F16ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, uint64_t a22, void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XcapNafServerInfo::setDigestCredentials(XcapNafServerInfo *this, const SipAuthResponse *a2)
{
  v4 = *(this + 67);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 16))(a2);
  *(this + 67) = result;
  return result;
}

void XcapNafServerInfo::setGbaNafCredentials(void *a1, uint64_t *a2)
{
  memset(&v23, 0, sizeof(v23));
  base64Encode(*a2, a2[1] - *a2, &v23);
  v3 = a1[66];
  if (v3)
  {
    v4 = **v3;
    {
      v5 = a1[67];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator new();
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
  v19[0] = 0;
  v22 = 0;
  v6 = ims::error(__p, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": ", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Auth response is not Digest", 27);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[8];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = a1[7];
      if (v10)
      {
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v12 = 0x40000000;
        v14 = 0;
        v15 = 0;
        XcapSession::operationFailure(v10, __p);
        ImsResult::~ImsResult(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F17A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, char a11, int a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{
  if (a11 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (*(v53 - 89) < 0)
  {
    operator delete(*(v53 - 112));
  }

  if (*(v53 - 65) < 0)
  {
    operator delete(*(v53 - 88));
  }

  _Unwind_Resume(exception_object);
}

void XcapNafServerInfo::_fetchMatchingRealm(uint64_t a1, _DWORD *a2, std::string *this)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE2BC620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC620))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC658, "3GPP-bootstrapping-uicc@");
    __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1EE2BC658, &dword_1E4C3F000);
    __cxa_guard_release(&qword_1EE2BC620);
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  memset(&__p, 0, sizeof(__p));
  v6 = std::string::find(this, 59, 0);
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    do
    {
      std::string::basic_string(&__str, this, v8, v7 - v8, v53);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __str;
      std::vector<std::string>::push_back[abi:ne200100](&v50, &__p);
      v8 = v7 + 1;
      v7 = std::string::find(this, 59, v7 + 1);
    }

    while (v7 != -1);
  }

  std::string::basic_string(&__str, this, v8, ~v8, v53);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __str;
  std::vector<std::string>::push_back[abi:ne200100](&v50, &__p);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = a2[74];
  if (v9 == 1)
  {
    v19 = v50;
    v20 = v51;
    if (v50 == v51)
    {
      goto LABEL_63;
    }

    while (1)
    {
      memset(&__str, 0, sizeof(__str));
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v19, *(v19 + 1));
      }

      else
      {
        v21 = *v19;
        __str.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&__str.__r_.__value_.__l.__data_ = v21;
      }

      v22 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
        v23 = __str.__r_.__value_.__l.__size_ >= 0x13 ? 19 : __str.__r_.__value_.__l.__size_;
      }

      else
      {
        v23 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >= 0x13 ? 19 : SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        p_str = &__str;
      }

      v25 = memcmp(p_str, "3GPP-bootstrapping@", v23);
      if (v23 >= 0x13 && v25 == 0)
      {
        break;
      }

      if (v22 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v19 = (v19 + 24);
      if (v19 == v20)
      {
        goto LABEL_63;
      }
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_63;
    }

    v10 = v50;
    v11 = v51;
    if (v50 == v51)
    {
      goto LABEL_63;
    }

    while (1)
    {
      memset(&__str, 0, sizeof(__str));
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v10, *(v10 + 1));
      }

      else
      {
        v12 = *v10;
        __str.__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&__str.__r_.__value_.__l.__data_ = v12;
      }

      v13 = byte_1EE2BC66F >= 0 ? byte_1EE2BC66F : qword_1EE2BC660;
      v14 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v13 == -1)
        {
LABEL_95:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v16 = __str.__r_.__value_.__r.__words[0];
        v15 = __str.__r_.__value_.__l.__size_ >= v13 ? v13 : __str.__r_.__value_.__l.__size_;
      }

      else
      {
        if (v13 == -1)
        {
          goto LABEL_95;
        }

        v15 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >= v13 ? v13 : SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        v16 = &__str;
      }

      v17 = byte_1EE2BC66F >= 0 ? &qword_1EE2BC658 : qword_1EE2BC658;
      if (!memcmp(v16, v17, v15) && v15 == v13)
      {
        break;
      }

      if (v14 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v10 = (v10 + 24);
      if (v10 == v11)
      {
        goto LABEL_63;
      }
    }
  }

  std::string::operator=(a1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_63:
  v27 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v27 = *(a1 + 23);
  }

  if (!v27)
  {
    v28 = a2[74];
    (*(*a2 + 80))(&__str, a2);
    v29 = "3GPP-bootstrapping@";
    if (!v28)
    {
      v29 = &qword_1EE2BC658;
    }

    v30 = byte_1EE2BC66F;
    if (v28)
    {
      v30 = 19;
    }

    v31 = qword_1EE2BC660;
    if (v28)
    {
      v31 = 0x6970706172747374;
    }

    if (v30 >= 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = *v29;
    }

    if (v30 >= 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = v31;
    }

    v34 = std::string::insert(&__str, 0, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[0];
    *v53 = v34->__r_.__value_.__l.__size_;
    *&v53[7] = *(&v34->__r_.__value_.__r.__words[1] + 7);
    v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v35;
    *(a1 + 8) = *v53;
    *(a1 + 15) = *&v53[7];
    *(a1 + 23) = v36;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, kXcapLoggingFacility);
  v44[0] = 0;
  v47 = 0;
  v37 = ims::debug(&__str, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), ": ", 2);
  *(v37 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "Realm from NAF Response: ", 25);
  *(v37 + 17) = 0;
  (*(*v37 + 32))(v37, this);
  (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v37 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, kXcapLoggingFacility);
  v40[0] = 0;
  v43 = 0;
  v38 = ims::debug(&__str, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), ": ", 2);
  *(v38 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Matching Realm: ", 16);
  *(v38 + 17) = 0;
  (*(*v38 + 32))(v38, a1);
  (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v38 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v39 = *MEMORY[0x1E69E9840];
}

void XcapNafServerInfo::handleHttpResponseSuccess(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      if (v5)
      {
        XcapSession::operationSuccess(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void XcapNafServerInfo::handleHttpResponseRedirect(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
  v15[0] = 0;
  v18 = 0;
  v2 = ims::warn(__p, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ": ", 2);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Not implemented", 15);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 56);
      if (v6)
      {
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v8 = 0x40000000;
        v10 = 0;
        v11 = 0;
        XcapSession::operationFailure(v6, __p);
        ImsResult::~ImsResult(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4F18564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  ImsResult::~ImsResult(&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void XcapNafServerInfo::handleHttpResponseAuthChallenge(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[66])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v37[0] = 0;
    v40 = 0;
    v5 = ims::error(&__p, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    (*(*a1 + 16))(v35, a1);
    (*(*v5 + 32))(v5, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " server has challenged us twice. Probably didn't like our response to the 1st challenge. Failing request", 104);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    v6 = a1[8];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = a1[7];
        if (v9)
        {
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          __p = &unk_1F5EBDEF8;
          v27 = &_bambiDomain;
          v28 = 0x40000000;
          v30 = 0;
          v31 = 0;
          XcapSession::operationFailure(v9, &__p);
LABEL_35:
          ImsResult::~ImsResult(&__p);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    XcapServerInfo::_saveCookie(a1, a4);
    v11 = SipAuthScheme::createFromString(a3);
    if (v11)
    {
      v12 = (*(*v11 + 64))(v11);
      a1[66] = v12;
      if (v12)
      {
        v13 = **v12;
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15)
            {
              v16 = v15;
              v17 = a1[7];
              if (v17)
              {
                XcapSession::handleNafChallenge(v17);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }
          }

          return;
        }
      }
    }

    else
    {
      a1[66] = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v22[0] = 0;
    v25 = 0;
    v18 = ims::error(&__p, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), ": ", 2);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Cannot create challenge from ", 29);
    *(v18 + 17) = 0;
    (*(*a1 + 16))(v35, a1);
    (*(*v18 + 32))(v18, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " client. Challenge Header:", 26);
    *(v18 + 17) = 0;
    (*(*v18 + 32))(v18, a3);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    v19 = a1[8];
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v8 = v20;
        v21 = a1[7];
        if (v21)
        {
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          __p = &unk_1F5EBDEF8;
          v27 = &_bambiDomain;
          v28 = 0x40000000;
          v30 = 0;
          v31 = 0;
          XcapSession::operationFailure(v21, &__p);
          goto LABEL_35;
        }

LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}