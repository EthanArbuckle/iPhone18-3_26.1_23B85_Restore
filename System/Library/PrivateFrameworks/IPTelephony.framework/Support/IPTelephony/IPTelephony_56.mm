void sub_1E50534FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::sendAck(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, ImsResult *a5@<X8>)
{
  v7 = *(a1 + 240);
  if (*(v7 + 2960) != 1)
  {
    v12 = 0;
LABEL_23:
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29[0] = &unk_1F5EBDEF8;
    v29[1] = &_bambiDomain;
    v30 = 1073741826;
    v19 = ImsResult::operator<<<char [32]>(v29, "sendAck called when dialog has ");
    v28 = *(*(a1 + 240) + 2960);
    v20 = ImsResult::operator<<<unsigned long>(v19, &v28);
    v21 = ImsResult::operator<<<char [7]>(v20, " forks");
    ImsResult::ImsResult(a5, v21);
    ImsResult::~ImsResult(v29);
    goto LABEL_24;
  }

  v10 = *(v7 + 2944);
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  if ((a4 & 1) == 0)
  {
    v13 = *(v11 + 768);
    v14 = *(v11 + 776);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = a2[1];
    v26[0] = *a2;
    v26[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipOfferAnswer::updateWithOutgoingRequest(v13, v26, *a3 + 312, v27);
    ImsResult::~ImsResult(v27);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v16 = *(a1 + 240);
  v17 = a2[1];
  v24 = *a2;
  v25 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a3[1];
  v22 = *a3;
  v23 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::sendAck(v16, &v24, &v22, a5);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_24:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E5053708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipSessionInterface::handleAck(uint64_t a1, uint64_t *a2)
{
  v4 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v4)
  {
    v5 = v4[15];
  }

  else
  {
    v5 = 0;
  }

  v12 = 0;
  v13 = 0;
  SipSessionInterface::ackReceiveHandlerForCseq(&v12, a1, v5);
  v6 = v12;
  if (v12)
  {
    v7 = a2[1];
    v10 = *a2;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipAckReceiveHandler::handleAck(v6);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v8 = (*(*a1 + 32))(a1);
    (*(*a1 + 16))(a1, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "no handler for incoming ACK with CSeq ", 38);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), v5);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " (maybe a dup?)", 15);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v6 != 0;
}

void sub_1E50538EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

BOOL SipSessionInterface::handleResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = SipMessage::header<SipCSeqHeader>(*a2);
  v7 = (v6 + 64);
  if (!v6)
  {
    v7 = &ims::kEmptyString;
  }

  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 1);
  }

  if (v8 != 6)
  {
    return 0;
  }

  if (v9 < 0)
  {
    v7 = *v7;
  }

  v10 = *v7;
  v11 = *(v7 + 2);
  if (v10 != *"INVITE" || v11 != *"TE")
  {
    return 0;
  }

  if ((*(*a2 + 128) - 200) > 0x63)
  {
    return 0;
  }

  v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 608, (*a3 + 312));
  if (a1 + 616 == v13)
  {
    return 0;
  }

  v15 = *(v13 + 56);
  v14 = *(v13 + 64);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15)
  {
    SipAckRetransmitHandler::retransmitAck(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v15 != 0;
}

void sub_1E5053A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::sendResponseInTransaction(uint64_t a1@<X0>, std::__shared_weak_count **a2@<X1>, std::__shared_weak_count **a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 240);
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::sendQueuedResponseInTransaction(v4, &v9, &v7, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E5053AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void SipSessionInterface::removeClientTransaction(uint64_t **a1, uint64_t *a2)
{
  v4 = *(*a2 + 264);
  v5 = *(*a2 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 120))(v4);
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 6)
  {
    v13 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  v10 = *v9;
  v11 = *(v9 + 4);
  v13 = v10 == *"INVITE" && v11 == *"TE";
  if (v5)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_19:
  if (v13)
  {
    v14 = *a2;
    if (*(*a2 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v14 + 312), *(v14 + 320));
    }

    else
    {
      __p = *(v14 + 312);
    }

    SipSessionInterface::removeAckRetransmitHandler(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E5053BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionInterface::removeServerTransaction(SipSessionInterface *a1, uint64_t a2)
{
  v4 = *(*a2 + 264);
  v5 = *(*a2 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 120))(v4);
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 6)
  {
    v13 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  v10 = *v9;
  v11 = *(v9 + 4);
  v13 = v10 == *"INVITE" && v11 == *"TE";
  if (v5)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_19:
  if (v13)
  {
    v14 = *(*a2 + 264);
    v15 = *(*a2 + 272);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = SipMessage::header<SipCSeqHeader>(v14);
    if (v16)
    {
      v17 = v16[15];
    }

    else
    {
      v17 = 0;
    }

    SipSessionInterface::removeAckReceiveHandler(a1, v17);
    if (v15)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E5053D54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSessionInterface::deinitialize(SipSessionInterface *this)
{
  (*(*this + 88))(this);
  *(this + 600) = 0;
  v2 = *(*this + 104);

  return v2(this);
}

void SipSessionInterface::logPrefix(SipSessionInterface *this, ImsOutStream *a2)
{
  v4 = *(this + 30);
  if (v4 && (v5 = *(v4 + 232)) != 0)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(v4 + 224);
      if (v7)
      {
        (*(*v7 + 112))(v10);
        (*(*a2 + 40))(a2, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [", 2);
        *(a2 + 17) = 0;
        (*(*(this + 17) + 24))(__p, this + 136);
        (*(*a2 + 40))(a2, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        if (v11 < 0)
        {
          operator delete(v10[0]);
        }

LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(this + 17) + 24))(v10, this + 136);
  (*(*a2 + 40))(a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1E5053FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *SipSessionInterface::stack@<X0>(std::__shared_weak_count *this@<X0>, const void *(__cdecl **a2)(const std::__shared_weak_count *__hidden this, const std::type_info *)@<X8>)
{
  v3 = this[10].__vftable;
  if (v3)
  {
    *a2 = 0;
    a2[1] = 0;
    this = v3[5].__on_zero_shared_weak;
    if (this)
    {
      this = std::__shared_weak_count::lock(this);
      a2[1] = this;
      if (this)
      {
        *a2 = v3[5].__get_deleter;
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

void SipSessionInterface::setPreferredTransportGroup(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v6 = v5;
    if (v5)
    {
      v7 = *a2;
      if (v7)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        a1[82] = v7;
        v8 = a1[83];
        a1[83] = v6;
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v9 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "set preferred transport to ", 27);
        *(v9 + 17) = 0;
        (*(*v7 + 80))(v7, v9);
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
LABEL_11:

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = a1[83];
  *(a1 + 41) = 0u;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "cleared preferred transport", 27);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v6)
  {
    goto LABEL_11;
  }
}

void SipSessionInterface::terminationReason(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    v2 = *(v1 + 232);
    if (v2)
    {
      v2 = std::__shared_weak_count::lock(v2);
      if (v2)
      {
        v2 = *(v1 + 224);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  SipStack::callTerminationReason(v2);
}

void sub_1E5054374(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipSessionInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipSessionInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipAckReceiveHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEB4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSecurityMechanism::SipSecurityMechanism(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5EDB4E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F5EBEF50;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E5054568(_Unwind_Exception *a1)
{
  *(v1 + 32) = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4, *(v1 + 48));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void SipSecurityMechanism::logStr(SipSecurityMechanism *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5054674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

double SipSecurityMechanism::preference(SipSecurityMechanism *this)
{
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 40, &SipSecurityMechanism::kParameterPreference);
  if ((this + 48) == v2)
  {
    v3 = &ims::kEmptyString;
  }

  else
  {
    v3 = (v2 + 56);
  }

  if (*(v3 + 23) < 0)
  {
    if (!*(v3 + 1))
    {
      return 0.0;
    }

    v3 = *v3;
  }

  else if (!*(v3 + 23))
  {
    return 0.0;
  }

  return strtod(v3, 0);
}

uint64_t SipSecurityMechanism::fromString(std::string *a1)
{
  memset(&__p, 0, sizeof(__p));
  v9 = 1;
  v8[0] = 59;
  if (ims::nextToken(a1, 0, &__p, v8) != -1)
  {
    ims::chomp(&__p, "\r\n\t ", 3);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size == 10)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v3 = p_p->__r_.__value_.__r.__words[0];
      v4 = LOWORD(p_p->__r_.__value_.__r.__words[1]);
      if (v3 == *"ipsec-3gpp" && v4 == *"pp")
      {
        operator new();
      }
    }

    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E50548D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1E69235B0](v14, 0x10B3C40D6137D5ALL);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipGenericSecurityMechanism::~SipGenericSecurityMechanism(SipGenericSecurityMechanism *this)
{
  SipSecurityMechanism::~SipSecurityMechanism(this);

  JUMPOUT(0x1E69235B0);
}

void SipGeoPrivShapeCircle::SipGeoPrivShapeCircle(SipGeoPrivShapeCircle *this, double a2, double a3, double a4)
{
  *(this + 8) = 0u;
  v7 = (this + 8);
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5EEB5A0;
  *(this + 7) = 0;
  v8 = (this + 56);
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::to_string(&v9, a2);
  if (*(this + 31) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v9;
  std::to_string(&v9, a3);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *(this + 32) = v9;
  std::to_string(&v9, a4);
  if (*(this + 79) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v9;
}

void sub_1E5054B8C(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  SipWarning::~SipWarning(v1);
  _Unwind_Resume(a1);
}

void SipGeoPrivShapeCircle::~SipGeoPrivShapeCircle(void **this)
{
  *this = &unk_1F5EEB5A0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  SipWarning::~SipWarning(this);
}

{
  SipGeoPrivShapeCircle::~SipGeoPrivShapeCircle(this);

  JUMPOUT(0x1E69235B0);
}

std::string *SipGeoPrivShapeCircle::format@<X0>(SipGeoPrivShapeCircle *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (*(this + 2))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 31))
  {
LABEL_3:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    v4 = std::string::basic_string[abi:ne200100]<0>(a2, "<gs:Circle srsName=urn:ogc:def:crs:EPSG::4326>\r\n<gml:pos>");
    v5 = *(this + 31);
    if (v5 >= 0)
    {
      v6 = this + 8;
    }

    else
    {
      v6 = *(this + 1);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 31);
    }

    else
    {
      v7 = *(this + 2);
    }

    std::string::append(v4, v6, v7);
    std::string::append(a2, " ", 1uLL);
    v8 = *(this + 55);
    if (v8 >= 0)
    {
      v9 = this + 32;
    }

    else
    {
      v9 = *(this + 4);
    }

    if (v8 >= 0)
    {
      v10 = *(this + 55);
    }

    else
    {
      v10 = *(this + 5);
    }

    std::string::append(a2, v9, v10);
    std::string::append(a2, "</gml:pos>\r\n<gs:radius uom=urn:ogc:def:uom:EPSG::9001>", 0x38uLL);
    v13 = *(this + 7);
    v12 = this + 56;
    v11 = v13;
    v14 = v12[23];
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = v12[23];
    }

    else
    {
      v16 = *(v12 + 1);
    }

    std::string::append(a2, v15, v16);
    return std::string::append(a2, "</gs:radius>\r\n</gs:Circle>\r\n", 0x1CuLL);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_1E5054D78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5054E38(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  SipWarning::~SipWarning(v1);
  MEMORY[0x1E69235B0]();
  _Unwind_Resume(a1);
}

void SipGeoPrivShapeEllipsoid::SipGeoPrivShapeEllipsoid(SipGeoPrivShapeEllipsoid *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(this + 8) = 0u;
  v13 = this + 8;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5EEB5D0;
  *(this + 56) = 0u;
  v14 = this + 56;
  *(this + 104) = 0u;
  v15 = this + 104;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  toStringPrecision(a2, &v16, 5);
  if (*(this + 31) < 0)
  {
    operator delete(*v13);
  }

  *v13 = v16;
  *(v13 + 2) = v17;
  toStringPrecision(a3, &v16, 5);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *(this + 2) = v16;
  *(this + 6) = v17;
  toStringPrecision(a4, &v16, 1);
  if (*(this + 79) < 0)
  {
    operator delete(*v14);
  }

  *v14 = v16;
  *(v14 + 2) = v17;
  toStringPrecision(a5, &v16, 1);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *(this + 5) = v16;
  *(this + 12) = v17;
  toStringPrecision(a6, &v16, 1);
  if (*(this + 127) < 0)
  {
    operator delete(*v15);
  }

  *v15 = v16;
  *(v15 + 2) = v17;
  toStringPrecision(a7, &v16, 1);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  *(this + 8) = v16;
  *(this + 18) = v17;
}

void sub_1E5055030(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  SipWarning::~SipWarning(v1);
  _Unwind_Resume(a1);
}

uint64_t toStringPrecision(double a1, _BYTE *a2, int a3)
{
  v15 = 0;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v6 = v9;
  if (a3 >= 15)
  {
    v7 = 15;
  }

  else
  {
    v7 = a3;
  }

  *(v10 + *(v9 - 24)) = v7;
  *(&v10[-1] + *(v6 - 24) + 8) = *(&v10[-1] + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  MEMORY[0x1E6923330](&v9, a1);
  std::ostringstream::str[abi:ne200100](&v9, a2);
  *&v9 = *MEMORY[0x1E69E54E8];
  *(&v10[-1] + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v9 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v9 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v14);
}

void sub_1E505528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

void SipGeoPrivShapeEllipsoid::~SipGeoPrivShapeEllipsoid(void **this)
{
  *this = &unk_1F5EEB5D0;
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  SipWarning::~SipWarning(this);
}

{
  SipGeoPrivShapeEllipsoid::~SipGeoPrivShapeEllipsoid(this);

  JUMPOUT(0x1E69235B0);
}

std::string *SipGeoPrivShapeEllipsoid::format@<X0>(SipGeoPrivShapeEllipsoid *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (*(this + 2))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 31))
  {
LABEL_3:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    v4 = std::string::basic_string[abi:ne200100]<0>(a2, "<gs:Ellipsoid srsName=urn:ogc:def:crs:EPSG::4979>\r\n<gml:pos>");
    v5 = *(this + 31);
    if (v5 >= 0)
    {
      v6 = this + 8;
    }

    else
    {
      v6 = *(this + 1);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 31);
    }

    else
    {
      v7 = *(this + 2);
    }

    std::string::append(v4, v6, v7);
    std::string::append(a2, " ", 1uLL);
    v8 = *(this + 55);
    if (v8 >= 0)
    {
      v9 = this + 32;
    }

    else
    {
      v9 = *(this + 4);
    }

    if (v8 >= 0)
    {
      v10 = *(this + 55);
    }

    else
    {
      v10 = *(this + 5);
    }

    std::string::append(a2, v9, v10);
    std::string::append(a2, " ", 1uLL);
    v11 = *(this + 127);
    if (v11 >= 0)
    {
      v12 = this + 104;
    }

    else
    {
      v12 = *(this + 13);
    }

    if (v11 >= 0)
    {
      v13 = *(this + 127);
    }

    else
    {
      v13 = *(this + 14);
    }

    std::string::append(a2, v12, v13);
    std::string::append(a2, "</gml:pos>\r\n<gs:semiMajorAxis uom=urn:ogc:def:uom:EPSG::9001>", 0x3FuLL);
    v14 = *(this + 79);
    if (v14 >= 0)
    {
      v15 = this + 56;
    }

    else
    {
      v15 = *(this + 7);
    }

    if (v14 >= 0)
    {
      v16 = *(this + 79);
    }

    else
    {
      v16 = *(this + 8);
    }

    std::string::append(a2, v15, v16);
    std::string::append(a2, "</gs:semiMajorAxis>\r\n<gs:semiMinorAxis uom=urn:ogc:def:uom:EPSG::9001>", 0x48uLL);
    v17 = *(this + 103);
    if (v17 >= 0)
    {
      v18 = this + 80;
    }

    else
    {
      v18 = *(this + 10);
    }

    if (v17 >= 0)
    {
      v19 = *(this + 103);
    }

    else
    {
      v19 = *(this + 11);
    }

    std::string::append(a2, v18, v19);
    std::string::append(a2, "</gs:semiMinorAxis>\r\n<gs:verticalAxis uom=urn:ogc:def:uom:EPSG::9001>", 0x47uLL);
    v22 = *(this + 16);
    v21 = this + 128;
    v20 = v22;
    v23 = v21[23];
    if (v23 >= 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = v20;
    }

    if (v23 >= 0)
    {
      v25 = v21[23];
    }

    else
    {
      v25 = *(v21 + 1);
    }

    std::string::append(a2, v24, v25);
    return std::string::append(a2, "</gs:verticalAxis>\r\n<gs:orientation uom=urn:ogc:def:uom:EPSG::9102>0</gs:orientation>\r\n</gs:Ellipsoid>\r\n", 0x6AuLL);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_1E5055554(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5055654(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  SipWarning::~SipWarning(v1);
  MEMORY[0x1E69235B0]();
  _Unwind_Resume(a1);
}

uint64_t SipGeoLocationBody::SipGeoLocationBody(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t a4)
{
  *a1 = &unk_1F5EEB600;
  *(a1 + 8) = 0;
  SipUri::SipUri((a1 + 16));
  v8 = (a1 + 424);
  *(a1 + 644) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 8) = *(a4 + 919);
  SipUri::operator=((a1 + 16), a2);
  SipUri::asString(a1 + 16, &v12);
  if (*(a1 + 447) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v12;
  *(a1 + 440) = v13;
  if (*(a1 + 471) < 0)
  {
    *(a1 + 456) = 4;
    v9 = *(a1 + 448);
  }

  else
  {
    *(a1 + 471) = 4;
    v9 = (a1 + 448);
  }

  strcpy(v9, "Wifi");
  if (*(a1 + 495) < 0)
  {
    *(a1 + 480) = 0;
    v10 = *(a1 + 472);
  }

  else
  {
    *(a1 + 495) = 0;
    v10 = (a1 + 472);
  }

  *v10 = 0;
  std::string::operator=((a1 + 592), a3);
  *(a1 + 656) = *(a4 + 952);
  std::string::operator=((a1 + 616), (a4 + 928));
  return a1;
}

void sub_1E5055824(_Unwind_Exception *a1)
{
  v8 = *(v1 + 648);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(v1 + 639) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 615) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 591) < 0)
  {
    operator delete(*(v1 + 568));
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  if (*(v1 + 543) < 0)
  {
    operator delete(*(v1 + 520));
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  if (*(v1 + 495) < 0)
  {
    operator delete(*v6);
  }

  if (*(v1 + 471) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 447) < 0)
  {
    operator delete(*v4);
  }

  SipUri::~SipUri((v1 + 16));
  _Unwind_Resume(a1);
}

std::string *SipGeoLocationBody::_timeStamp(std::string *this, uint64_t a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v4 = std::string::basic_string[abi:ne200100]<0>(this, "<dm:timestamp>");
  v5 = *(a2 + 495);
  if (v5 >= 0)
  {
    v6 = (a2 + 472);
  }

  else
  {
    v6 = *(a2 + 472);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 495);
  }

  else
  {
    v7 = *(a2 + 480);
  }

  std::string::append(v4, v6, v7);
  return std::string::append(this, "</dm:timestamp>\r\n", 0x11uLL);
}

void sub_1E5055944(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double SipGeoLocationBody::setCountry(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 496), a2);
  if ((*(a1 + 495) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 480))
    {
      return result;
    }
  }

  else if (*(a1 + 495))
  {
    return result;
  }

  v4 = (a1 + 472);
  v8 = 0;
  memset(&v7[1], 0, 64);
  v7[0] = time(0);
  gmtime_r(v7, &v7[2]);
  ImsInternetDateTime::toString(v7, &v5);
  if (*(a1 + 495) < 0)
  {
    operator delete(*v4);
  }

  result = *&v5;
  *v4 = v5;
  *(a1 + 488) = v6;
  return result;
}

double SipGeoLocationBody::setTimestamp(SipGeoLocationBody *this, double a2)
{
  if (a2 == 0.0)
  {
    v3 = time(0);
  }

  else
  {
    v3 = a2;
  }

  v9 = 0;
  memset(&v8[1], 0, 64);
  v8[0] = v3;
  gmtime_r(v8, &v8[2]);
  ImsInternetDateTime::toString(v8, &v6);
  v4 = (this + 472);
  if (*(this + 495) < 0)
  {
    operator delete(*v4);
  }

  result = *&v6;
  *v4 = v6;
  *(this + 61) = v7;
  return result;
}

std::string *SipGeoLocationBody::setFullCivic(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4, const std::string *a5)
{
  SipGeoLocationBody::setCountry(a1, a2);
  std::string::operator=((a1 + 520), a3);
  std::string::operator=((a1 + 544), a4);

  return std::string::operator=((a1 + 568), a5);
}

void SipGeoLocationBody::encode(SipGeoLocationBody *this, ImsOutStream *a2)
{
  memset(&v65, 0, sizeof(v65));
  std::string::basic_string[abi:ne200100]<0>(&v65, "<?xml version=1.0?>\r\n");
  memset(&v69, 0, sizeof(v69));
  v4 = std::string::basic_string[abi:ne200100]<0>(&v69, "<presence xmlns=urn:ietf:params:xml:ns:pidf xmlns:dm=urn:ietf:params:xml:ns:pidf:data-model xmlns:gp=urn:ietf:params:xml:ns:pidf:geopriv10 xmlns:gml=http://www.opengis.net/gml xmlns:gs=http://www.opengis.net/pidflo/1.0");
  if ((*(this + 519) & 0x8000000000000000) != 0)
  {
    if (!*(this + 63))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(this + 519))
  {
LABEL_5:
    std::string::append(v4, " xmlns:cl=urn:ietf:params:xml:ns:pidf:geopriv10:civicAddr", 0x3BuLL);
  }

LABEL_6:
  v5 = *(this + 80);
  if (!v5)
  {
    goto LABEL_12;
  }

  if ((*(v5 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(v5 + 31))
  {
LABEL_11:
    std::string::append(&v69, " xmlns:con=urn:ietf:params:xml:ns:geopriv:conf", 0x30uLL);
  }

LABEL_12:
  std::string::append(&v69, " entity=", 9uLL);
  v6 = *(this + 447);
  if (v6 >= 0)
  {
    v7 = this + 424;
  }

  else
  {
    v7 = *(this + 53);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 447);
  }

  else
  {
    v8 = *(this + 54);
  }

  std::string::append(&v69, v7, v8);
  std::string::append(&v69, ">\r\n", 4uLL);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v69;
  }

  else
  {
    v9 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  std::string::append(&v65, v9, size);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (*(this + 10) == 1)
  {
    memset(&v69, 0, sizeof(v69));
    v11 = std::string::basic_string[abi:ne200100]<0>(&v69, "<tuple id=");
    v12 = *(this + 471);
    if (v12 >= 0)
    {
      v13 = this + 448;
    }

    else
    {
      v13 = *(this + 56);
    }

    if (v12 >= 0)
    {
      v14 = *(this + 471);
    }

    else
    {
      v14 = *(this + 57);
    }

    std::string::append(v11, v13, v14);
    std::string::append(&v69, ">\r\n<status>\r\n", 0xEuLL);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v69;
    }

    else
    {
      v15 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v69.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    memset(&v69, 0, sizeof(v69));
    v17 = std::string::basic_string[abi:ne200100]<0>(&v69, "<dm:device id=");
    v18 = *(this + 471);
    if (v18 >= 0)
    {
      v19 = this + 448;
    }

    else
    {
      v19 = *(this + 56);
    }

    if (v18 >= 0)
    {
      v20 = *(this + 471);
    }

    else
    {
      v20 = *(this + 57);
    }

    std::string::append(v17, v19, v20);
    std::string::append(&v69, ">\r\n", 4uLL);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v69;
    }

    else
    {
      v15 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v69.__r_.__value_.__l.__size_;
    }
  }

  std::string::append(&v65, v15, v16);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  memset(&v64, 0, sizeof(v64));
  std::string::basic_string[abi:ne200100]<0>(&v64, "<gp:geopriv>\r\n<gp:location-info>\r\n");
  v21 = *(this + 80);
  if (!v21)
  {
    goto LABEL_70;
  }

  (*(*v21 + 24))(&v69);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v69;
  }

  else
  {
    v22 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v69.__r_.__value_.__l.__size_;
  }

  std::string::append(&v64, v22, v23);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v24 = *(this + 80);
  if (!v24)
  {
    goto LABEL_70;
  }

  if ((*(v24 + 31) & 0x8000000000000000) != 0)
  {
    if (*(v24 + 16))
    {
      goto LABEL_65;
    }

LABEL_70:
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    goto LABEL_71;
  }

  if (!*(v24 + 31))
  {
    goto LABEL_70;
  }

LABEL_65:
  std::to_string(&v68, *(this + 164));
  v25 = std::string::insert(&v68, 0, "<con:confidence pdf=normal>", 0x1DuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v69, "</con:confidence>\r\n", 0x13uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v67 = v27->__r_.__value_.__r.__words[2];
  *__p = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

LABEL_71:
  if (v67 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v67 >= 0)
  {
    v30 = HIBYTE(v67);
  }

  else
  {
    v30 = __p[1];
  }

  std::string::append(&v64, v29, v30);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 519) & 0x8000000000000000) == 0)
  {
    if (*(this + 519))
    {
      goto LABEL_81;
    }

LABEL_91:
    std::string::basic_string[abi:ne200100]<0>(&v69, "");
    goto LABEL_123;
  }

  if (!*(this + 63))
  {
    goto LABEL_91;
  }

LABEL_81:
  memset(&v69, 0, sizeof(v69));
  v31 = std::string::basic_string[abi:ne200100]<0>(&v69, "<cl:civicAddress>\r\n<cl:country>");
  v32 = *(this + 519);
  if (v32 >= 0)
  {
    v33 = this + 496;
  }

  else
  {
    v33 = *(this + 62);
  }

  if (v32 >= 0)
  {
    v34 = *(this + 519);
  }

  else
  {
    v34 = *(this + 63);
  }

  std::string::append(v31, v33, v34);
  std::string::append(&v69, "</cl:country>\r\n", 0xFuLL);
  if ((*(this + 543) & 0x8000000000000000) != 0)
  {
    if (!*(this + 66))
    {
      goto LABEL_100;
    }
  }

  else if (!*(this + 543))
  {
    goto LABEL_100;
  }

  std::string::append(&v69, "<cl:A1>", 7uLL);
  v35 = *(this + 543);
  if (v35 >= 0)
  {
    v36 = this + 520;
  }

  else
  {
    v36 = *(this + 65);
  }

  if (v35 >= 0)
  {
    v37 = *(this + 543);
  }

  else
  {
    v37 = *(this + 66);
  }

  std::string::append(&v69, v36, v37);
  std::string::append(&v69, "</cl:A1>\r\n", 0xAuLL);
LABEL_100:
  if ((*(this + 567) & 0x8000000000000000) != 0)
  {
    if (!*(this + 69))
    {
      goto LABEL_111;
    }
  }

  else if (!*(this + 567))
  {
    goto LABEL_111;
  }

  std::string::append(&v69, "<cl:A3>", 7uLL);
  v38 = *(this + 567);
  if (v38 >= 0)
  {
    v39 = this + 544;
  }

  else
  {
    v39 = *(this + 68);
  }

  if (v38 >= 0)
  {
    v40 = *(this + 567);
  }

  else
  {
    v40 = *(this + 69);
  }

  std::string::append(&v69, v39, v40);
  std::string::append(&v69, "</cl:A3>\r\n", 0xAuLL);
LABEL_111:
  if ((*(this + 591) & 0x8000000000000000) == 0)
  {
    if (!*(this + 591))
    {
      goto LABEL_122;
    }

LABEL_115:
    std::string::append(&v69, "<cl:PC>", 7uLL);
    v41 = *(this + 591);
    if (v41 >= 0)
    {
      v42 = this + 568;
    }

    else
    {
      v42 = *(this + 71);
    }

    if (v41 >= 0)
    {
      v43 = *(this + 591);
    }

    else
    {
      v43 = *(this + 72);
    }

    std::string::append(&v69, v42, v43);
    std::string::append(&v69, "</cl:PC>\r\n", 0xAuLL);
    goto LABEL_122;
  }

  if (*(this + 72))
  {
    goto LABEL_115;
  }

LABEL_122:
  std::string::append(&v69, "</cl:civicAddress>\r\n", 0x14uLL);
LABEL_123:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v69;
  }

  else
  {
    v44 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v69.__r_.__value_.__l.__size_;
  }

  std::string::append(&v64, v44, v45);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  std::string::append(&v64, "</gp:location-info>\r\n", 0x15uLL);
  if ((*(this + 639) & 0x8000000000000000) != 0)
  {
    if (!*(this + 78))
    {
      goto LABEL_146;
    }
  }

  else if (!*(this + 639))
  {
    goto LABEL_146;
  }

  v46 = *(this + 80);
  if (!v46)
  {
    goto LABEL_146;
  }

  if ((*(v46 + 31) & 0x8000000000000000) != 0)
  {
    if (*(v46 + 16))
    {
      goto LABEL_138;
    }

LABEL_146:
    std::string::basic_string[abi:ne200100]<0>(&v69, "");
    goto LABEL_147;
  }

  if (!*(v46 + 31))
  {
    goto LABEL_146;
  }

LABEL_138:
  memset(&v69, 0, sizeof(v69));
  v47 = std::string::basic_string[abi:ne200100]<0>(&v69, "<gp:method>");
  v48 = *(this + 639);
  if (v48 >= 0)
  {
    v49 = this + 616;
  }

  else
  {
    v49 = *(this + 77);
  }

  if (v48 >= 0)
  {
    v50 = *(this + 639);
  }

  else
  {
    v50 = *(this + 78);
  }

  std::string::append(v47, v49, v50);
  std::string::append(&v69, "</gp:method>\r\n", 0xEuLL);
LABEL_147:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v69;
  }

  else
  {
    v51 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v69.__r_.__value_.__l.__size_;
  }

  std::string::append(&v64, v51, v52);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  std::string::append(&v64, "<gp:usage-rules/>\r\n</gp:geopriv>\r\n", 0x22uLL);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = &v64;
  }

  else
  {
    v53 = v64.__r_.__value_.__r.__words[0];
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v64.__r_.__value_.__l.__size_;
  }

  std::string::append(&v65, v53, v54);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (*(this + 10) == 1)
  {
    memset(&v68, 0, sizeof(v68));
    std::string::basic_string[abi:ne200100]<0>(&v68, "</status>\r\n");
    SipGeoLocationBody::_timeStamp(&v69, this);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v69;
    }

    else
    {
      v55 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v69.__r_.__value_.__l.__size_;
    }

    std::string::append(&v68, v55, v56);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    std::string::append(&v68, "</tuple>\r\n", 0xAuLL);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v68;
    }

    else
    {
      v57 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v68.__r_.__value_.__l.__size_;
    }

    std::string::append(&v65, v57, v58);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      v59 = v68.__r_.__value_.__r.__words[0];
LABEL_188:
      operator delete(v59);
    }
  }

  else
  {
    memset(&v69, 0, sizeof(v69));
    SipGeoLocationBody::_timeStamp(&v69, this);
    std::string::append(&v69, "</dm:device>\r\n", 0xEuLL);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v69;
    }

    else
    {
      v60 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v69.__r_.__value_.__l.__size_;
    }

    std::string::append(&v65, v60, v61);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      v59 = v69.__r_.__value_.__r.__words[0];
      goto LABEL_188;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "</presence>\r\n");
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &v69;
  }

  else
  {
    v62 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = v69.__r_.__value_.__l.__size_;
  }

  std::string::append(&v65, v62, v63);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  (*(*a2 + 32))(a2, &v65);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }
}

void sub_1E5056538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipGeoLocationBody::contentLength(SipGeoLocationBody *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E505675C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipGeoLocationBody::decode()
{
  return 1;
}

{
  return 1;
}

void SipGeoLocationBody::addedToPart(SipGeoLocationBody *this, SipBodyPart *a2)
{
  if (*(this + 8) == 1)
  {
    v4 = *(this + 9);
    SipUri::getContentIdString();
  }

  SipUri::asString(this + 16, __p);
  SipBodyPart::setHeader(a2, "Content-ID", __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 11) == 1)
  {
    SipBodyPart::setHeader(a2, "Content-Disposition", &SipGeoLocationBody::kContentDisposition);
  }
}

void sub_1E5056890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipGeoLocationBody::~SipGeoLocationBody(SipGeoLocationBody *this)
{
  SipGeoLocationBody::~SipGeoLocationBody(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EEB600;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  SipUri::~SipUri((this + 16));
}

void sub_1E5056ABC(_Unwind_Exception *a1)
{
  v10 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v12 = *(v1 + 648);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(v1 + 639) < 0)
  {
    operator delete(*v8);
  }

  if (*(v1 + 615) < 0)
  {
    operator delete(*v7);
  }

  if (*(v1 + 591) < 0)
  {
    operator delete(*v6);
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 543) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  if (*(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 471) < 0)
  {
    operator delete(*(v1 + 448));
  }

  if (*(v1 + 447) < 0)
  {
    operator delete(*v3);
  }

  SipUri::~SipUri((v1 + 16));
  MEMORY[0x1E69235B0](v1, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SipGeoPrivShape *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShape>,std::allocator<SipGeoPrivShape>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShape *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShape>,std::allocator<SipGeoPrivShape>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShape *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShape>,std::allocator<SipGeoPrivShape>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1E5056DBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<SipGeoPrivShapeEllipsoid *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeEllipsoid>,std::allocator<SipGeoPrivShapeEllipsoid>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShapeEllipsoid *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeEllipsoid>,std::allocator<SipGeoPrivShapeEllipsoid>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShapeEllipsoid *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeEllipsoid>,std::allocator<SipGeoPrivShapeEllipsoid>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1E5056F08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<SipGeoPrivShapeCircle *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeCircle>,std::allocator<SipGeoPrivShapeCircle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShapeCircle *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeCircle>,std::allocator<SipGeoPrivShapeCircle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SipGeoPrivShapeCircle *,std::shared_ptr<SipGeoPrivShape>::__shared_ptr_default_delete<SipGeoPrivShape,SipGeoPrivShapeCircle>,std::allocator<SipGeoPrivShapeCircle>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipGeoLocationBody_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(SipGeoLocationBody::kContentDisposition, "render; handling=optional");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, SipGeoLocationBody::kContentDisposition, &dword_1E4C3F000);
}

void LazuliToPathHeader::LazuliToPathHeader(LazuliToPathHeader *this, const LazuliRouteSet *a2)
{
  v3 = LazuliHeader::LazuliHeader(this, "To-Path");
  v3->__r_.__value_.__r.__words[0] = &unk_1F5EEB860;
  LazuliRouteSet::LazuliRouteSet(&v3[2].__r_.__value_.__r.__words[1], a2);
}

void sub_1E50571D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliToPathHeader::encodeValue(LazuliToPathHeader *this, ImsOutStream *a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ImsStringOutStream::ImsStringOutStream(v2);
}

void sub_1E5057370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
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

BOOL LazuliToPathHeader::setValueFromString(uint64_t a1, std::string *a2)
{
  v3 = LazuliRouteSet::fromString((a1 + 56), a2);
  if (!v3)
  {
    LazuliRouteSet::clear((a1 + 56));
  }

  return v3;
}

std::string::size_type LazuliToPathHeader::findParameterMarker(int a1, std::string *this)
{
  v3 = 0;
  while (1)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (v3 >= size)
    {
      return -1;
    }

    v5 = std::string::find(this, 60, v3);
    if (v5 == -1)
    {
      break;
    }

    v6 = std::string::find(this, 62, v5);
    v3 = v6 + 1;
    if (v6 == -1)
    {
      return -1;
    }
  }

  return std::string::find(this, 59, v3);
}

void LazuliToPathHeader::~LazuliToPathHeader(void **this)
{
  *this = &unk_1F5EEB860;
  LazuliRouteSet::~LazuliRouteSet((this + 7));

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EEB860;
  LazuliRouteSet::~LazuliRouteSet((this + 7));
  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E505769C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliToPathHeader::create(void)::HeaderWrapper,std::allocator<LazuliToPathHeader::create(void)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEB8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliToPathHeader::create(void)::HeaderWrapper::~HeaderWrapper(void **a1)
{
  *a1 = &unk_1F5EEB860;
  LazuliRouteSet::~LazuliRouteSet((a1 + 7));

  LazuliHeader::~LazuliHeader(a1);
}

{
  *a1 = &unk_1F5EEB860;
  LazuliRouteSet::~LazuliRouteSet((a1 + 7));
  LazuliHeader::~LazuliHeader(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipTcpTransport::SipTcpTransport(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2[1];
  v33[0] = *a2;
  v33[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    SipTransport::SipTransport(a1, v33, a5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    SipTransport::SipTransport(a1, v33, a5);
  }

  *(a1 + 32) = &unk_1F5ED9DB0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "sip.tport");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v29, a4);
  ImsLogContainer::ImsLogContainer(a1 + 40, &v35, v29);
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  *(a1 + 176) = &unk_1F5EEBC88;
  std::string::basic_string[abi:ne200100]<0>(v27, "sip.tport");
  v23 = *a4;
  v24 = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v25 = *(a4 + 16);
  }

  v26 = *(a4 + 40);
  ims::getQueue(&v37);
  ClientConfig::getLogTag(&v23, &v34);
  if ((v28 & 0x80u) == 0)
  {
    v11 = v27;
  }

  else
  {
    v11 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v12 = v28;
  }

  else
  {
    v12 = v27[1];
  }

  v13 = std::string::insert(&v34, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v36 = v13->__r_.__value_.__r.__words[2];
  v35 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v36 >= 0)
  {
    v15 = &v35;
  }

  else
  {
    v15 = v35;
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v16 = v37;
  *(a1 + 208) = v37;
  if (v16)
  {
    dispatch_retain(v16);
  }

  *(a1 + 216) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 224), "com.apple.ipTelephony", v15);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  *(a1 + 184) = &unk_1F5EEBD00;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_1F5EEB9B0;
  *(a1 + 32) = &unk_1F5EEBA60;
  *(a1 + 40) = &unk_1F5EEBA88;
  *(a1 + 176) = &unk_1F5EEBAE8;
  *(a1 + 184) = &unk_1F5EEBB60;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 360) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 368), *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    *(a1 + 384) = *(a3 + 2);
    *(a1 + 368) = v17;
  }

  v18 = *a4;
  *(a1 + 400) = *(a4 + 8);
  *(a1 + 392) = v18;
  v19 = (a1 + 408);
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(v19, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v20 = *(a4 + 16);
    *(a1 + 424) = *(a4 + 32);
    *&v19->__r_.__value_.__l.__data_ = v20;
  }

  *(a1 + 432) = *(a4 + 40);
  *(a1 + 304) = 1;
  v21 = *(a1 + 256);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  *(a1 + 440) = a6;
  return a1;
}

void sub_1E5057BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 391) < 0)
  {
    operator delete(*(v24 + 368));
  }

  if (*(v24 + 367) < 0)
  {
    operator delete(*(v24 + 344));
  }

  v27 = *(v24 + 336);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v24 + 320);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::~__hash_table(v24 + 264);
  v29 = *(v24 + 256);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v24 + 240);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  MEMORY[0x1E69225A0](v24 + 224);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v24 + 192));
  ImsLogContainer::~ImsLogContainer(v25);
  *v24 = &unk_1F5ECF248;
  v31 = *(v24 + 16);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  _Unwind_Resume(a1);
}

void sub_1E5057D1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  JUMPOUT(0x1E5057CECLL);
}

void SipTcpTransport::~SipTcpTransport(SipTcpTransport *this)
{
  *this = &unk_1F5EEB9B0;
  *(this + 4) = &unk_1F5EEBA60;
  *(this + 5) = &unk_1F5EEBA88;
  *(this + 22) = &unk_1F5EEBAE8;
  *(this + 23) = &unk_1F5EEBB60;
  SipTcpTransport::close(this);
  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::~__hash_table(this + 264);
  v4 = *(this + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x1E69225A0](this + 224);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 24);
  *(this + 5) = &unk_1F5ED7318;
  if (*(this + 120) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F5ECF248;
  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  SipTcpTransport::~SipTcpTransport(this);

  JUMPOUT(0x1E69235B0);
}

void SipTcpTransport::close(SipTcpTransport *this)
{
  SipTcpTransport::removeConnections(this, 0, 0, 1);
  v2 = *(this + 29);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (!v4 || (v5 = *(v2 + 32), std::__shared_weak_count::__release_shared[abi:ne200100](v4), !v5))
      {
        v6 = *(v2 + 40);
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }

    else
    {
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }

    if (*(this + 41))
    {
      SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::delegateForRemoteAddress(*(this + 29), this + 41, &__p);
      if (!v15)
      {
        goto LABEL_17;
      }

      v7 = std::__shared_weak_count::lock(v15);
      if (!v7)
      {
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

LABEL_17:
        __p = 0;
        v15 = 0;
        v16 = 0;
        v9 = *(this + 41);
        IpAddress::asString();
      }

      v8 = __p;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (!v8)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = *(this + 30);
  *(this + 29) = 0;
  *(this + 30) = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 32);
  *(this + 31) = 0;
  *(this + 32) = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 40);
  *(this + 39) = 0;
  *(this + 40) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 42);
  *(this + 41) = 0;
  *(this + 42) = 0;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E50580E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSipTcpTransport::~SipTcpTransport(SipTcpTransport *this)
{
  SipTcpTransport::~SipTcpTransport((this - 32));
}

{
  SipTcpTransport::~SipTcpTransport((this - 40));
}

{
  SipTcpTransport::~SipTcpTransport((this - 176));
}

{
  SipTcpTransport::~SipTcpTransport((this - 184));
}

{
  SipTcpTransport::~SipTcpTransport((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpTransport::~SipTcpTransport((this - 40));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpTransport::~SipTcpTransport((this - 176));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpTransport::~SipTcpTransport((this - 184));

  JUMPOUT(0x1E69235B0);
}

void *SipTcpTransport::logPrefix(SipTcpTransport *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipTcpTransport: ", 17);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toSipTcpTransport::logPrefix(SipTcpTransport *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipTcpTransport: ", 17);
  *(a2 + 17) = 0;
  return result;
}

void SipTcpTransport::logPrefixStr(SipTcpTransport *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5058424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void SipTcpTransport::handleIncomingConnection(uint64_t a1, uint64_t *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, (a1 + 192));
  if (v6)
  {
    v3 = v6 + 176;
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  v9 = v7;
  v6 = 0;
  v7 = 0;
  v4 = a2[1];
  v5 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  SipTcpConnection::create(0, &v10);
}

void sub_1E5058544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpTransport::addConnection(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 304);
  *(a1 + 304) = v3 + 1;
  *(v2 + 336) = v3;
  v4 = *(v2 + 256);
  if (v4)
  {
    (*(*v4 + 104))(v5);
  }

  else
  {
    v5[0] = 0;
    v5[1] = 0;
  }

  IpAddress::asString();
}

void sub_1E50588B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>>>>::~unique_ptr[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipTcpTransport::initialize(SipTcpTransport *this, int a2, int a3, std::string *__str)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 29))
  {
    SipTcpTransport::close(this);
  }

  std::string::operator=((this + 344), __str);
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 24);
  operator new();
}

void sub_1E50598AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_object_t object, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  ImsResult::~ImsResult(v41);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void SipTcpTransport::initialize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*a2 + 232))
  {
    std::string::operator=((a1 + 344), (*a2 + 344));
    v8 = *(*a2 + 232);
    v9 = *(*a2 + 240);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 240);
    *(a1 + 232) = v8;
    *(a1 + 240) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v8 = *(a1 + 232);
    }

    *(a1 + 440) = *(*a2 + 440);
    v11 = *(v8 + 48);
    v12 = *(v8 + 56);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 64))(&v16);
    (*(*v16 + 32))(&v18);
    v13 = v18;
    v18 = 0uLL;
    v14 = *(a1 + 320);
    *(a1 + 312) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v18 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    (*(**(a1 + 312) + 64))(*(a1 + 312), a3);
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    *&v18 = &unk_1F5EBDEF8;
    *(&v18 + 1) = &_bambiDomain;
    v19 = 1073741825;
    v15 = ImsResult::operator<<<char [30]>(&v18, "old transport not initialized");
    ImsResult::ImsResult(a4, v15);
    ImsResult::~ImsResult(&v18);
  }
}

void sub_1E5059CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpTransport::removeConnections(SipTcpTransport *this, int a2, int a3, char a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = *(this + 35);
  if (v5)
  {
    v18 = a3;
    if (a3)
    {
      v7 = &v28;
    }

    else
    {
      v7 = &v25;
    }

    do
    {
      for (i = v5[7]; i; i = *i)
      {
        if (a2 && SipTcpConnection::hasActiveUsers(*(i + 2)))
        {
          if (os_log_type_enabled(*(this + 28), OS_LOG_TYPE_DEFAULT))
          {
            (*(*this + 64))(v24, this);
            SipTcpConnection::logStr(*(i + 2));
          }
        }

        else
        {
          std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](v7, i + 1);
        }
      }

      v5 = *v5;
    }

    while (v5);
    v9 = v28;
    for (j = v29; v9 != j; v9 += 16)
    {
      if (os_log_type_enabled(*(this + 28), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 64))(v24, this);
        SipTcpConnection::logStr(*v9);
      }

      v11 = *v9;
      *(v11 + 514) = v18;
      v12 = *(v9 + 8);
      v22 = v11;
      v23 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*this + 88))(this, &v22);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }
  }

  v13 = v25;
  for (k = v26; v13 != k; v13 += 16)
  {
    if (os_log_type_enabled(*(this + 28), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 64))(v24, this);
      SipTcpConnection::logStr(*v13);
    }

    SipTcpConnection::shutdown(*v13, a4, v21);
    ImsResult::~ImsResult(v21);
    v15 = *(v13 + 8);
    v19 = *v13;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 88))(this, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  *buf = &v25;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v28;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](buf);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E505A1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  *(v38 - 160) = &a38;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v38 - 160));
  *(v38 - 160) = v38 - 184;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v38 - 160));
  _Unwind_Resume(a1);
}

double SipTcpTransport::setRemoteOutboundAddress@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 232))
  {
    (*(**a2 + 32))(&v11);
    v5 = v11;
    v11 = 0uLL;
    v6 = *(a1 + 336);
    *(a1 + 328) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, (a1 + 192));
    if (v11)
    {
      v7 = v11 + 32;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 232);
    v10[0] = v7;
    v10[1] = *(&v11 + 1);
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::addDelegateForRemoteAddress(v8, v10, a2);
  }

  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741827;
  return result;
}

void sub_1E505A3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void SipSocketMultiplexer<ImsListenSocketInterfaceDelegate>::addDelegateForRemoteAddress(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v3 = *a3;
  IpAddress::asString();
}

void sub_1E505A4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *SipTcpTransport::printConnectionMap(ImsOutStream *this, ImsOutStream *a2)
{
  if (*(this + 36))
  {
    for (i = *(this + 35); i; i = *i)
    {
      for (j = i[7]; j; j = *j)
      {
        this = SipTcpConnection::printDebugInfo(j[2], a2);
      }
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "no connections", 14);
    *(a2 + 17) = 0;
    this = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  return this;
}

void SipTcpTransport::removeConnection(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  (*(*a1 + 112))(buf);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      v3 = *buf;
    }

    else
    {
      v3 = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v3)
    {
      (*(*v3 + 128))(buf, v3);
      if (v7)
      {
        if (std::__shared_weak_count::lock(v7))
        {
          v4 = *buf;
        }

        else
        {
          v4 = 0;
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        if (v4 && *(v4 + 2817) == 1)
        {
          (*(*v3 + 136))(v3, 24, 0);
        }
      }
    }
  }

  v5 = *(*a2 + 256);
  if (v5)
  {
    (*(*v5 + 104))(buf);
  }

  else
  {
    *buf = 0;
    v7 = 0;
  }

  IpAddress::asString();
}

void sub_1E505ABAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  goto LABEL_6;
}

void SipTcpTransport::setServiceClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    while (1)
    {
      v4 = v2[7];
      if (v4)
      {
        break;
      }

LABEL_15:
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

    while (1)
    {
      v5 = v4[2];
      if (!v5 || !(*(*v5 + 168))(v5))
      {
        goto LABEL_14;
      }

      v6 = v4[2];
      v8 = *(v6 + 256);
      v7 = *(v6 + 264);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (v8)
        {
          v9 = v4[2];
          v8 = *(v9 + 256);
          v10 = *(v9 + 264);
          if (!v10)
          {
            goto LABEL_11;
          }

          v11 = 0;
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_12;
        }
      }

      else if (v8)
      {
        v10 = 0;
LABEL_11:
        v11 = 1;
LABEL_12:
        (*(*v8 + 168))(v8, a2);
        if ((v11 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

LABEL_14:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_15;
      }
    }
  }
}

void sub_1E505AD38(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpTransport::updateCrlfKeepAliveInterval(SipTcpTransport *this, __int32 a2)
{
  for (i = *(this + 35); i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v5 = j[2];
      if (v5)
      {
        if ((*(*v5 + 168))(v5))
        {
          SipTcpConnection::updateCrlfKeepAliveInterval(j[2], a2);
        }
      }
    }
  }
}

void SipTcpTransport::updateCrlfKeepAliveNetwork(SipTcpTransport *this)
{
  for (i = *(this + 35); i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v3 = j[2];
      if (v3)
      {
        if ((*(*v3 + 168))(v3))
        {
          SipTcpConnection::updateCrlfKeepAliveNetwork(j[2]);
        }
      }
    }
  }
}

uint64_t SipTcpTransport::handleKeepAliveWake(SipTcpTransport *this)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  std::unordered_map<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>::unordered_map(&v5, this + 264);
  for (i = v6; i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v3 = j[2];
      if (v3 && (*(*v3 + 168))(v3))
      {
        SipTcpConnection::handleKeepAliveWake(j[2]);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::~__hash_table(&v5);
}

uint64_t SipTcpTransport::handleTcpIdleExtend(SipTcpTransport *this)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  std::unordered_map<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>::unordered_map(&v5, this + 264);
  for (i = v6; i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v3 = j[2];
      if (v3 && (*(*v3 + 168))(v3))
      {
        SipTcpConnection::handleTcpIdleExtend(j[2]);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::~__hash_table(&v5);
}

void SipTcpTransport::localAddress(SipTcpTransport *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 64))(v3);
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1E505B044(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpTransport::send(os_log_t *a1@<X0>, IpAddress **a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(**a2 + 88))())
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13[0] = &unk_1F5EBDEF8;
    v13[1] = &_bambiDomain;
    v13[2] = 0x40000000;
    if (!a3 || (v8 = *a3) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v10 = *a2;
      IpAddress::asString();
    }

    v9 = *(a3 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a3 + 8);
    *a3 = v8;
    *(a3 + 8) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    SipTcpConnection::sendData(v8, a4);
    ImsResult::~ImsResult(v13);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    if (os_log_type_enabled(a1[28], OS_LOG_TYPE_ERROR))
    {
      ((*a1)[8].isa)(v13, a1);
      IpAddress::logStr(*a2);
    }

    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 1073741825;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E505BA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  ImsResult::~ImsResult(&a14);
  _Unwind_Resume(a1);
}

void SipTcpTransport::sendMessageFromConnection(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = std::__shared_weak_count::lock(v6);
  if (!v9 || (v10 = *(a1 + 8)) == 0)
  {
LABEL_9:
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0x40000000;
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  v11 = a2[1];
  v12 = *a2;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 96))(v10, &v12, a3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1E505BCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipTcpTransport::triggerSocketErrors(SipTcpTransport *this, const ImsResult *a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = *(this + 35);
  if (v2)
  {
    do
    {
      for (i = (v2 + 7); ; std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v10, i + 1))
      {
        i = *i;
        if (!i)
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
    v5 = v10;
    for (j = v11; v5 != j; v5 += 2)
    {
      v7 = *v5;
      v9 = *(*v5 + 256);
      v8 = *(*v5 + 264);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v9)
        {
          v7 = *v5;
LABEL_11:
          (*(*v7 + 128))(v7, a2);
        }
      }

      else if (v9)
      {
        goto LABEL_11;
      }
    }
  }

  v13 = &v10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1E505BE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SipTcpTransport::handleErrorFromConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        (*(*v8 + 152))(v8, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void SipTcpTransport::processIncomingMessage(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a6[1];
  v8[0] = *a6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransport::processIncomingMessage(a1, v9, a3, a4, a5, v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E505BF70(_Unwind_Exception *exception_object)
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

void SipTcpTransport::setPort(NSObject **this)
{
  v19 = *MEMORY[0x1E69E9840];
  ((*this)[14].isa)(&__p);
  if (v8)
  {
    v2 = std::__shared_weak_count::lock(v8);
    if (v2)
    {
      v3 = __p;
    }

    else
    {
      v3 = 0;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    if (v3)
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      __p = &unk_1F5EBDEF8;
      v8 = &_bambiDomain;
      v9 = 0;
      (*(*v3 + 152))(v3, &__p);
      ImsResult::~ImsResult(&__p);
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = this[28];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ((*this)[8].isa)(&__p, this);
    v6 = v10 >= 0 ? &__p : __p;
    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v6;
    _os_log_error_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSipTcpTransport::setPort Transport layer is null ", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_11:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E505C178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTcpTransport::group@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void SipTcpTransport::transportLayer(SipTcpTransport *this@<X0>, void *a2@<X8>)
{
  SipTransport::transportLayer(this, v4);
  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipTcpTransport::stackId(SipTcpTransport *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 391) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 46), *(this + 47));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 23);
    a2->__r_.__value_.__r.__words[2] = *(this + 48);
  }
}

void SipTcpTransport::clientConfig(SipTcpTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 49);
  *(a2 + 8) = *(this + 100);
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(this + 51), *(this + 52));
  }

  else
  {
    *(a2 + 16) = *(this + 408);
    *(a2 + 32) = *(this + 53);
  }

  *(a2 + 40) = *(this + 432);
}

uint64_t non-virtual thunk toSipTcpTransport::group@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this - 160);
  *a2 = *(this - 168);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void non-virtual thunk toSipTcpTransport::stackId(SipTcpTransport *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 215) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 24), *(this + 25));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 12);
    a2->__r_.__value_.__r.__words[2] = *(this + 26);
  }
}

uint64_t ims::SharedLoggable<SipTcpTransport>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTcpTransport>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,0>(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<SipTcpConnection>,std::hash<std::shared_ptr<SipTcpConnection>>,std::equal_to<std::shared_ptr<SipTcpConnection>>,std::allocator<std::shared_ptr<SipTcpConnection>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::shared_ptr<SipTcpConnection>,std::hash<std::shared_ptr<SipTcpConnection>>,std::equal_to<std::shared_ptr<SipTcpConnection>>,std::allocator<std::shared_ptr<SipTcpConnection>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<SipTcpConnection>,std::hash<std::shared_ptr<SipTcpConnection>>,std::equal_to<std::shared_ptr<SipTcpConnection>>,std::allocator<std::shared_ptr<SipTcpConnection>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<SipTcpConnection>,std::hash<std::shared_ptr<SipTcpConnection>>,std::equal_to<std::shared_ptr<SipTcpConnection>>,std::allocator<std::shared_ptr<SipTcpConnection>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<SipListenSocketMultiplexer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEBD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ImsListenSocketInterfaceDelegate>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::shared_ptr<SipTcpConnection>,std::hash<std::shared_ptr<SipTcpConnection>>,std::equal_to<std::shared_ptr<SipTcpConnection>>,std::allocator<std::shared_ptr<SipTcpConnection>>>::__emplace_unique_key_args<std::shared_ptr<SipTcpConnection>,std::shared_ptr<SipTcpConnection> const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<SipTcpConnection>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unordered_map<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_set<std::shared_ptr<SipTcpConnection>>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_set<std::shared_ptr<SipTcpConnection>>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E505CD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<SipTcpConnection>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SipProxyAuthorizationHeader::SipProxyAuthorizationHeader(SipProxyAuthorizationHeader *this)
{
  v1 = SipHeader::SipHeader(this, "Authorization");
  *(v1 + 64) = 0;
  *v1 = &unk_1F5EEBD78;
  std::string::operator=((v1 + 8), "Proxy-Authorization");
}

void SipProxyAuthorizationHeader::SipProxyAuthorizationHeader(SipProxyAuthorizationHeader *this, const SipAuthenticateHeader *a2)
{
  v2 = SipAuthorizationHeader::SipAuthorizationHeader(this, a2);
  *v2 = &unk_1F5EEBD78;
  std::string::operator=((v2 + 8), "Proxy-Authorization");
}

void SipProxyAuthorizationHeader::~SipProxyAuthorizationHeader(SipProxyAuthorizationHeader *this)
{
  SipAuthorizationHeader::~SipAuthorizationHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E505CF40(_Unwind_Exception *a1)
{
  SipAuthorizationHeader::~SipAuthorizationHeader(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void BambiConferenceCallStateMachine::setCall(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[12];
  a1[11] = v5;
  a1[12] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *a2;
  v8 = a2[1];
  if (v7)
  {
    v9 = v7 + 1864;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[10];
  a1[9] = v9;
  a1[10] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v8)
  {

    std::__shared_weak_count::__release_weak(v8);
  }
}

void BambiConferenceCallStateMachine::stateMachineName(BambiConferenceCallStateMachine *this@<X0>, LoggableString *a2@<X8>)
{
  v4 = *(this + 12);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 11)) == 0)
  {
LABEL_6:
    LoggableString::LoggableString(a2, "Unknown Conference");
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(*v6 + 24))(v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void BambiConferenceCall::constructStateMachine(BambiConferenceCall *this)
{
  v4 = 0;
  v5 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 19);
  std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceCall,BambiCall>(&v4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v2 = v5;
  v3[0] = v4;
  v3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    BambiConferenceCallStateMachine::setCall(this + 242, v3);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    BambiConferenceCallStateMachine::setCall(this + 242, v3);
  }

  operator new();
}

void sub_1E505D5B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceCall,BambiCall>(char ***a1, char ***a2)
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

void SipTypedStateMachine<BambiConferenceCallState>::addState(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return;
  }

  v4 = (*(**a2 + 48))(*a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v5 <= v4)
    {
      v7 = v4 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v4;
  }

  v8 = *(*(a1 + 16) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_18;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[4];
  v9[3] = v12;
  v9[4] = v11;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void BambiConferenceCall::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<BambiConferenceCall,std::allocator<BambiConferenceCall>,std::shared_ptr<SipStack> &,std::shared_ptr<RTPManager> &,0>();
}

void sub_1E505DB8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCall::invalidate(BambiConferenceCall *this)
{
  v2 = (this + 8);
  v3 = (*(*(this + 1) + 64))(this + 8);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "BambiConferenceCall::invalidate()", 33);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = v2[238];
  for (i = v2[239]; v4 != i; v4 += 2)
  {
    v6 = *(*v4 + 216);
    if (v6)
    {
      v7 = *(*v4 + 208);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (v8)
      {
        if (v7)
        {
          v9 = *v4;
          v10 = v4[1];
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v7 + 1512) == v9)
          {
            v11 = *(v7 + 1520);
            *(v7 + 1512) = 0;
            *(v7 + 1520) = 0;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](v2 + 238);
  v12 = *(this + 249);
  if (v12)
  {
    (*(*v12 + 64))(v12, 0);
    v13 = *(this + 250);
    *(this + 249) = 0;
    *(this + 250) = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  BambiCall::invalidate(this);
}

uint64_t BambiConferenceCall::addCalls(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 1992);
  if (v4 && (*(*v4 + 48))(v4) == 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "bambi.conf");
    v17[0] = 0;
    v20 = 0;
    v5 = ims::debug(&v21, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Can't add calls to a terminated conference", 42);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v21);
    }

    return 0;
  }

  else
  {
    v8 = *a2;
    v7 = a2[1];
    *(a1 + 2044) = 0;
    for (*(a1 + 2040) += (v7 - v8) >> 4; v8 != v7; v8 += 16)
    {
      v10 = *v8;
      v9 = *(v8 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = 0;
      v22 = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, (a1 + 152));
      std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceCall,BambiCall>(&v21, &v26);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v10)
      {
        v11 = v21;
        if (v21)
        {
          v15 = 0;
          v16 = 0;
          v26 = v10;
          v27 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = v11;
          v25 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          BambiConferenceParticipant::create(&v15);
        }
      }

      v15 = 0;
      v16 = 0;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    v12 = *(a1 + 1912);
    v13 = *(a1 + 1920);
    while (v12 != v13)
    {
      v14 = *v12;
      v12 += 2;
      BambiConferenceParticipant::start(v14);
    }

    return 1;
  }
}

void sub_1E505DFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a20 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTypedStateMachine<BambiConferenceCallState>::currentStateId(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void **BambiConferenceCall::weakParticipants@<X0>(void **this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[239];
  v3 = this[240];
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v16 = *v2;
      v6 = *(v2 + 1);
      if (v6)
      {
        atomic_fetch_add_explicit(((*(v2 + 8) >> 64) + 16), 1uLL, memory_order_relaxed);
        v5 = a2[1];
      }

      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = (v9 >> 4) + 1;
        if (v10 >> 60)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 3 > v10)
        {
          v10 = v11 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        v17[4] = a2;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a2, v12);
        }

        v13 = (16 * (v9 >> 4));
        *v13 = v16;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        v15 = a2[2];
        a2[2] = 0;
        v17[2] = v14;
        v17[3] = v15;
        v17[0] = v14;
        v17[1] = v14;
        this = std::__split_buffer<std::weak_ptr<BambiConferenceParticipant>>::~__split_buffer(v17);
      }

      else
      {
        *v5 = v16;
        *(v5 + 1) = v6;
        v5 += 16;
      }

      a2[1] = v5;
      v2 += 16;
    }

    while (v2 != v3);
  }

  return this;
}

void sub_1E505E1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<BambiConferenceParticipant>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

uint64_t BambiConferenceCall::removeParticipant(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = (a1 + 8);
  v7 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "BambiConferenceCall::removeParticipant", 38);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (!v6[50])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "bambi.conf");
    v45[0] = 0;
    v48 = 0;
    v10 = ims::error(&__p, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "removeParticipant: no SIP session", 33);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v48 != 1 || (v47 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v11 = v46;
LABEL_20:
    operator delete(v11);
    goto LABEL_21;
  }

  v8 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "bambi.conf");
    v41[0] = 0;
    v44 = 0;
    v16 = ims::error(&__p, v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "removeParticipant: can't remove unknown participant", 51);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v44 != 1 || (v43 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v11 = v42;
    goto LABEL_20;
  }

  for (i = *(a1 + 1912); i != *(a1 + 1920); i += 2)
  {
    if (*i == v8)
    {
      if (a3)
      {
        v19 = 9;
      }

      else
      {
        v19 = 7;
      }

      v17 = 1;
      BambiCallParticipant::setState(v8, v19, 1);
      *(a1 + 2074) = a3;
      if ((a3 & 1) == 0)
      {
        if (*(a1 + 1920) - *(a1 + 1912) == 16)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "EmptyConference");
          (*(*a1 + 64))(v36, a1, &__p);
          ImsResult::~ImsResult(v36);
          if (v34 < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v35 = 0;
          v20 = *(a1 + 408);
          v21 = *a2;
          v22 = *(*a2 + 823);
          if (v22 < 0)
          {
            v22 = *(v21 + 808);
          }

          v23 = a2[1];
          v24 = 288;
          if (v22)
          {
            v24 = 696;
          }

          v30[0] = *a2;
          v30[1] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::refer(v20, (v21 + v24), &SipRequest::kMethodBye, v30, &__p);
          v25 = (*(*v32 + 24))(v32, v33);
          ImsResult::~ImsResult(&__p);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          v17 = v25 ^ 1u;
          v26 = *a2;
          v27 = v35;
          v28 = *(v26 + 256);
          if (v28)
          {
            v29 = *(v28 + 48);
            *(v28 + 40) = 0;
            *(v28 + 48) = 0;
            if (v29)
            {
              std::__shared_weak_count::__release_weak(v29);
            }
          }

          *(v26 + 256) = v27;
        }
      }

      return v17;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bambi.conf");
  v37[0] = 0;
  v40 = 0;
  v12 = ims::error(&__p, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "removeParticipant: ", 19);
  *(v12 + 17) = 0;
  (*(*(*a2 + 288) + 40))(*a2 + 288, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " is not a participant in call ", 30);
  *(v12 + 17) = 0;
  v13 = *(a1 + 408);
  v14 = *(v13 + 240);
  v15 = *(v13 + 248);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*(v14 + 2344) + 16))(v14 + 2344, v12);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v40 == 1 && v39 < 0)
  {
    v11 = v38;
    goto LABEL_20;
  }

LABEL_21:
  if (v34 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1E505E810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  ImsResult::~ImsResult(&__p);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(a1);
}

void BambiConferenceCall::setParticipantState(uint64_t a1, uint64_t *a2, int a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZN19BambiConferenceCall19setParticipantStateENSt3__110shared_ptrI26BambiConferenceParticipantEEN20BambiCallParticipant16ParticipantStateE_block_invoke;
  v7[3] = &__block_descriptor_tmp_58;
  v5 = *a2;
  v4 = a2[1];
  v7[4] = a1;
  v7[5] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (a1 + 152));
  v6 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  block[3] = &unk_1F5EEC3A0;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void ___ZN19BambiConferenceCall19setParticipantStateENSt3__110shared_ptrI26BambiConferenceParticipantEEN20BambiCallParticipant16ParticipantStateE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 1912);
    v4 = *(v2 + 1920);
    while (v3 != v4)
    {
      if (*v3 == v1)
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);

        BambiCallParticipant::setState(v11, v10, 1);
        return;
      }

      v3 += 2;
    }

    v5 = std::string::basic_string[abi:ne200100]<0>(v20, "bambi.conf");
    v12[0] = 0;
    v15 = 0;
    v6 = ims::debug(v5, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Can't set state for unknown participant", 39);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      v7 = v13;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v20, "bambi.conf");
    v16[0] = 0;
    v19 = 0;
    v9 = ims::debug(v8, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Can't set state for NULL participant", 36);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      v7 = __p;
LABEL_12:
      operator delete(v7);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1E505EBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__110shared_ptrI26BambiConferenceParticipantEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__110shared_ptrI26BambiConferenceParticipantEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

BOOL BambiConferenceCall::start(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v43, "bambi.conf");
    v48[0] = 0;
    v51 = 0;
    v34 = ims::error(v43, v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "Can't start a conference call with no participants", 50);
    *(v34 + 17) = 0;
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v34 + 17) = 0;
    if (v51 == 1 && v50 < 0)
    {
      operator delete(v49);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }
  }

  else
  {
    v37 = *a2;
    v36 = a2[1];
    SipTypedStateMachine<BambiConferenceCallState>::transitionToState((a1 + 1936), 1);
    if (a3)
    {
      v7 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        v9 = (a1 + 1888);
        do
        {
          v10 = *v7;
          SipUri::SipUri(v43, &(*v7)[45]);
          if (SHIBYTE(v10[21].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v10[21].__r_.__value_.__l.__data_, v10[21].__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v10[21];
          }

          v11 = *(a1 + 1896);
          v12 = *(a1 + 1904);
          if (v11 >= v12)
          {
            v14 = 0x84BDA12F684BDA13 * ((v11 - *v9) >> 4);
            v15 = v14 + 1;
            if (v14 + 1 > 0x97B425ED097B42)
            {
              std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
            }

            v16 = 0x84BDA12F684BDA13 * ((v12 - *v9) >> 4);
            if (2 * v16 > v15)
            {
              v15 = 2 * v16;
            }

            if (v16 >= 0x4BDA12F684BDA1)
            {
              v17 = 0x97B425ED097B42;
            }

            else
            {
              v17 = v15;
            }

            v56 = v9;
            if (v17)
            {
              if (v17 <= 0x97B425ED097B42)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v18 = v9;
            v52 = 0;
            v53 = 432 * v14;
            v54 = 432 * v14;
            v55 = 0;
            SipUri::SipUri((432 * v14), v43);
            v19 = *(a1 + 1896);
            v20 = *(a1 + 1888);
            v21 = v54;
            v22 = v53 - (v19 - v20);
            v23[17] = __p;
            memset(&__p, 0, sizeof(__p));
            v24 = v21 + 432;
            v54 = v21 + 432;
            if (v19 == v20)
            {
              v9 = v18;
            }

            else
            {
              v25 = 0;
              do
              {
                SipUri::SipUri((v22 + v25 * 8), &v20[v25]);
                v27 = v26 + 17;
                v28 = &v20[v25 + 51];
                if (SHIBYTE(v20[v25 + 53]) < 0)
                {
                  std::string::__init_copy_ctor_external(v27, *v28, v20[v25 + 52]);
                }

                else
                {
                  v29 = *v28;
                  v27->__r_.__value_.__r.__words[2] = v20[v25 + 53];
                  *&v27->__r_.__value_.__l.__data_ = v29;
                }

                v25 += 54;
              }

              while (&v20[v25] != v19);
              do
              {
                std::__destroy_at[abi:ne200100]<std::pair<SipUri,std::string>,0>(v20);
                v20 += 54;
              }

              while (v20 != v19);
              v9 = v18;
              v20 = *v18;
              v24 = v54;
            }

            *(a1 + 1888) = v22;
            *(a1 + 1896) = v24;
            v30 = *(a1 + 1904);
            *(a1 + 1904) = v55;
            v54 = v20;
            v55 = v30;
            v52 = v20;
            v53 = v20;
            std::__split_buffer<std::pair<SipUri,std::string>>::~__split_buffer(&v52);
            v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            *(a1 + 1896) = v24;
            if (v31 < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            SipUri::SipUri(*(a1 + 1896), v43);
            v13 = *&__p.__r_.__value_.__l.__data_;
            *(v11 + 424) = *(&__p.__r_.__value_.__l + 2);
            *(v11 + 408) = v13;
            memset(&__p, 0, sizeof(__p));
            *(a1 + 1896) = v11 + 432;
          }

          SipUri::~SipUri(v43);
          v32 = std::string::basic_string[abi:ne200100]<0>(&v52, "bambi.conf");
          v39[0] = 0;
          v42 = 0;
          v33 = ims::debug(v32, v39);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Adding initial invitee (", 24);
          *(v33 + 17) = 0;
          (*((*v7)[45].__r_.__value_.__r.__words[0] + 40))(*v7 + 45, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), ", ", 2);
          *(v33 + 17) = 0;
          ObfuscatedString::ObfuscatedString(v43, *v7 + 21);
          (*(*v33 + 56))(v33, v43);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), ")", 1);
          *(v33 + 17) = 0;
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v33 + 17) = 0;
          if (v46 < 0)
          {
            operator delete(v45);
          }

          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          if (v42 == 1 && v41 < 0)
          {
            operator delete(v40);
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(v52);
          }

          v7 += 2;
        }

        while (v7 != v8);
      }
    }

    BambiConferenceCall::addCalls(a1, a2);
    v3 = v37;
  }

  return v3 != v4;
}

void sub_1E505F194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 136) == 1 && *(v30 - 145) < 0)
  {
    operator delete(*(v30 - 168));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTypedStateMachine<BambiConferenceCallState>::transitionToState(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(a1[2] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == a2)
        {
          if (*(i + 4) == a2)
          {
            v15 = a1[7];
            v14 = a1[8];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v15)
            {
              v16 = (*(*v15 + 48))(v15);
              (*(*v15 + 64))(v15, a2);
            }

            else
            {
              v16 = 0;
            }

            v17 = i[3];
            v18 = i[4];
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = a1[8];
            a1[7] = v17;
            a1[8] = v18;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              v17 = a1[7];
            }

            (*(*v17 + 56))(v17, v16);
            v23 = v15;
            v24 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = a1[8];
            v21 = a1[7];
            v22 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 56))(a1, &v23, &v21);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            return 1;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= v4)
            {
              v9 %= v4;
            }
          }

          else
          {
            v9 &= v4 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = (*(*v10 + 56))(a1[1]);
    (*(*v10 + 16))(v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "transitionToState: no such state ", 33);
    *(v11 + 17) = 0;
    v12 = (*(*a1 + 16))(a1, a2);
    LoggableString::LoggableString(&__p, v12);
    (*(*v11 + 40))(v11, &__p);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1E505F608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiConferenceCall::startSessionWithConferenceServer(BambiConferenceCall *this)
{
  BambiCall::internalStart(this, v3);
  *(this + 2072) = (*(*v4 + 24))(v4, v5) ^ 1;
  ImsResult::~ImsResult(v3);
  return *(this + 2072);
}

void sub_1E505F6C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t BambiConferenceCall::supportsConferenceEvents(std::__shared_weak_count **this)
{
  v1 = this;
  v2 = this[51];
  if (v2)
  {
    v9 = 0;
    v10 = 0;
    SipSessionInterface::stack(v2, &v9);
    if (!v9)
    {
      goto LABEL_17;
    }

    v4 = *(v9 + 31);
    v3 = *(v9 + 32);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      if (*(SipUserAgent::config(v4) + 618))
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        v5 = v1[51];
        v6 = v5[10].__vftable;
        shared_owners = v5[10].__shared_owners_;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOBYTE(v1) = SipDialog::remoteSideAllowsEvent(v6, "conference");
        if (shared_owners)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
        }
      }
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (!v4)
    {
LABEL_17:
      LOBYTE(v1) = 0;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

void sub_1E505F7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCall::subscribeToConferenceEvents(BambiConferenceCall *this)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(this + 51);
  if (!v2 || (SipSession::confirmed(v2) & 1) == 0)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
    v69[0] = 0;
    v72 = 0;
    v7 = ims::debug(v6, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Invalid session, don't send subscribe", 37);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v72 == 1 && v71 < 0)
    {
      v5 = v70;
      goto LABEL_11;
    }

LABEL_12:
    if (v75 < 0)
    {
      operator delete(v73);
    }

    goto LABEL_14;
  }

  if ((*(this + 2071) & 0x8000000000000000) != 0)
  {
    if (*(this + 257))
    {
      goto LABEL_5;
    }
  }

  else if (*(this + 2071))
  {
LABEL_5:
    v3 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
    v65[0] = 0;
    v68 = 0;
    v4 = ims::debug(v3, v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Already subscribed to Conference Events", 39);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v68 == 1 && v67 < 0)
    {
      v5 = v66;
LABEL_11:
      operator delete(v5);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v63 = 0;
  v64 = 0;
  SipSessionInterface::stack(*(this + 51), &v63);
  if (!v63)
  {
    v18 = *(this + 23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 18) + 16))(&v73, this + 144);
      v19 = v75 >= 0 ? &v73 : v73;
      buf[0] = 141558275;
      *&buf[1] = 1752392040;
      v77 = 2081;
      v78 = v19;
      _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v75 < 0)
      {
        operator delete(v73);
      }
    }

    goto LABEL_64;
  }

  v10 = *(v63 + 31);
  v9 = *(v63 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v10)
  {
    v20 = *(this + 23);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 18) + 16))(&v73, this + 144);
      v21 = v75 >= 0 ? &v73 : v73;
      buf[0] = 141558275;
      *&buf[1] = 1752392040;
      v77 = 2081;
      v78 = v21;
      _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (v75 < 0)
      {
        operator delete(v73);
      }
    }

    goto LABEL_62;
  }

  v11 = *(this + 51);
  v12 = *(v11 + 240);
  v13 = *(v11 + 248);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = SipDialog::remoteSideAllowsEvent(v12, "conference");
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v14)
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
    v59[0] = 0;
    v62 = 0;
    v16 = ims::debug(v15, v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Conference server supports conference events.  Great!", 53);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v62 != 1 || (v61 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v17 = v60;
    goto LABEL_44;
  }

  if (*(SipUserAgent::config(v10) + 618) != 1)
  {
    v28 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
    v51[0] = 0;
    v54 = 0;
    v29 = ims::debug(v28, v51);
    v30 = ImsOutStream::operator<<(v29, "Conference server doesn't say it supports conference events. No Local override either.");
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v30[17] = 0;
    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (v75 < 0)
    {
      operator delete(v73);
    }

    (*(*this + 152))(this);
    goto LABEL_62;
  }

  v22 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
  v55[0] = 0;
  v58 = 0;
  v23 = ims::debug(v22, v55);
  v24 = ImsOutStream::operator<<(v23, "Local override to always Subscribe.");
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v24[17] = 0;
  if (v58 == 1 && v57 < 0)
  {
    v17 = __p;
LABEL_44:
    operator delete(v17);
  }

LABEL_45:
  if (v75 < 0)
  {
    operator delete(v73);
  }

  v49 = 0;
  v50 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v73, this + 19);
  std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceCall,BambiCall>(&v49, &v73);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (*(SipUserAgent::config(v10) + 619) != 1 || (*(this + 2073) & 1) != 0)
  {
    v25 = *(this + 51);
    v27 = *(v25 + 240);
    v26 = *(v25 + 248);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v31 = *(this + 51);
  v33 = *(v31 + 240);
  v32 = *(v31 + 248);
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v33 + 2960) == 1)
    {
      v34 = *(v33 + 2944);
      v36 = *(v34 + 56);
      v35 = *(v34 + 64);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  else if (*(v33 + 2960) == 1)
  {
    v37 = *(v33 + 2944);
    v36 = *(v37 + 56);
    v35 = *(v37 + 64);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v38 = *(this + 48);
  if (v38)
  {
    v39 = std::__shared_weak_count::lock(v38);
    if (v39 && v36 && *(this + 47))
    {
      v41 = *(v10 + 31);
      v40 = *(v10 + 32);
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    v39 = 0;
  }

  v42 = std::string::basic_string[abi:ne200100]<0>(&v73, "bambi.conf");
  v45[0] = 0;
  v48 = 0;
  v43 = ims::debug(v42, v45);
  v44 = ImsOutStream::operator<<(v43, "No active fork. Can't subscribe");
  (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v44[17] = 0;
  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v75 < 0)
  {
    operator delete(v73);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  (*(*this + 152))(this);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

LABEL_62:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_64:
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E50601CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (*(v60 - 113) < 0)
  {
    operator delete(*(v60 - 136));
    if (!v59)
    {
LABEL_3:
      if (!v57)
      {
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (a23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](a23);
        }

        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (a55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](a55);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      goto LABEL_8;
    }
  }

  else if (!v59)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v59);
  if (!v57)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void BambiConferenceCall::handleSubscribeFailed(NSObject **this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
  v10[0] = 0;
  v13 = 0;
  v2 = ims::debug(__p, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Failed to subscribe to conference event", 39);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  BambiConferenceCall::clearConferenceEventSubscription(this, 0);
  if (*(this + 2073) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN19BambiConferenceCall21handleSubscribeFailedEv_block_invoke;
    v9[3] = &__block_descriptor_tmp_25;
    v9[4] = this;
    v14 = 0;
    v15 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, this + 19);
    v3 = this[21];
    __p[0] = MEMORY[0x1E69E9820];
    __p[1] = 1174405120;
    *&v6 = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
    *(&v6 + 1) = &unk_1F5EEC3A0;
    *(&v7 + 1) = v14;
    *&v8 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v7 = v9;
    dispatch_async(v3, __p);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    *__p = 0u;
    v6 = 0u;
    BambiConferenceCall::weakParticipants(this, v4);
    BambiCallConferenceEvent::BambiCallConferenceEvent(__p, 3, v4);
    v14 = v4;
    std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v14);
    ((*this)[4].isa)(this, __p);
    __p[0] = &unk_1F5ED0908;
    v14 = &v7;
    std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v14);
    __p[0] = &unk_1F5EC4090;
    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v6 + 1));
    }
  }
}

void BambiConferenceCall::clearConferenceEventSubscription(BambiConferenceCall *this, int a2)
{
  v4 = *(this + 48);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 47);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  if ((*(this + 2071) & 0x8000000000000000) != 0)
  {
    if (!*(this + 257))
    {
      goto LABEL_35;
    }
  }

  else if (!*(this + 2071))
  {
    goto LABEL_35;
  }

  v24 = 0;
  v25 = 0;
  if (v6)
  {
    v7 = *(v6 + 248);
    v8 = *(v6 + 256);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v7 + 248);
    v9 = *(v7 + 256);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    SipDialogManager::getSubscription(v10, "conference", this + 2048, __p, &v24);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v11 = v24;
    if (v24)
    {
      if (a2)
      {
        std::__shared_weak_count::lock(*(this + 48));
        v12 = *(this + 47);
        v13 = *(v12 + 248);
        v14 = *(v12 + 256);
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = SipUserAgent::config(v13);
        v16 = SipTimers::timerValue((v15 + 512), &SipTimers::kTimerT1, 0);
        SipSubscription::scheduleTermination(v11, 2 * v16, *(this + 2074));
      }

      v17 = *(v24 + 31);
      if (v17)
      {
        v18 = **v17;
        if (v19)
        {
          v20 = v19;
          v21 = v19[5];
          v20[4] = 0;
          v20[5] = 0;
          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }
      }
    }
  }

  if (*(this + 2071) < 0)
  {
    **(this + 256) = 0;
    *(this + 257) = 0;
  }

  else
  {
    *(this + 2048) = 0;
    *(this + 2071) = 0;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_35:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E50608E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if (!v17)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  goto LABEL_6;
}

void ___ZN19BambiConferenceCall21handleSubscribeFailedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "bambi.conf");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Try Subscribe in dialog.", 24);
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

  BambiConferenceCall::subscribeToConferenceEvents(v1);
}

void sub_1E5060A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void BambiConferenceCall::handleSubscribeSuccess(void **this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
  v7[0] = 0;
  v10 = 0;
  v2 = ims::debug(__p, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Successfully subscribed to conference event", 43);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (SBYTE7(v5) < 0)
  {
    operator delete(__p[0]);
  }

  memset(v6, 0, sizeof(v6));
  *__p = 0u;
  v5 = 0u;
  BambiConferenceCall::weakParticipants(this, v3);
  BambiCallConferenceEvent::BambiCallConferenceEvent(__p, 4, v3);
  v11 = v3;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v11);
  (*(*this + 4))(this, __p);
  __p[0] = &unk_1F5ED0908;
  v11 = v6;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v11);
  __p[0] = &unk_1F5EC4090;
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }
}

void BambiConferenceCall::processCallEvent(std::__shared_weak_count **this, char **a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  SipSessionInterface::stack(this[51], &v61);
  if (v61)
  {
    v5 = *(v61 + 31);
    v4 = *(v61 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v5)
    {
      v20 = this[23];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        (this[18]->__shared_weak_owners_)(v59, this + 144);
        v21 = v60 >= 0 ? v59 : v59[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
        _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }
      }

      goto LABEL_74;
    }

    v6 = *(a2 + 2);
    if (v6 == 9)
    {
      if ((*(SipUserAgent::config(v5) + 620) & 1) == 0)
      {
        BambiConferenceCall::subscribeToConferenceEvents(this);
      }

      if (*(this + 121) == 1)
      {
        v22 = std::string::basic_string[abi:ne200100]<0>(v59, "bambi.conf");
        v55[0] = 0;
        v58 = 0;
        v23 = ims::debug(v22, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Call is confirmed, and media is active. Moving to SessionConfirmed state.", 73);
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v58 == 1 && v57 < 0)
        {
          operator delete(v56);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        SipTypedStateMachine<BambiConferenceCallState>::transitionToState(this + 242, 3);
      }

      else
      {
        v24 = std::string::basic_string[abi:ne200100]<0>(v59, "bambi.conf");
        v51[0] = 0;
        v54 = 0;
        v25 = ims::debug(v24, v51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Call is confirmed, but media is not active. Waiting for Media to get activated.", 79);
        *(v25 + 17) = 0;
        (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v25 + 17) = 0;
        if (v54 == 1 && v53 < 0)
        {
          operator delete(v52);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }
      }
    }

    else
    {
      if (v6 != 15)
      {
        goto LABEL_49;
      }

      BambiConferenceCall::clearConferenceEventSubscription(this, 1);
      v7 = **a2;
      if (v8)
      {
        v9 = v8;
        v10 = std::string::basic_string[abi:ne200100]<0>(v59, "bambi.conf");
        v47[0] = 0;
        v50 = 0;
        v11 = ims::debug(v10, v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Saving termination reason : ", 28);
        *(v11 + 17) = 0;
        v12 = v9[8];
        if (v12 <= 37)
        {
          v13 = (reasonStrings + 24 * v12);
        }

        else
        {
          v13 = (reasonStrings + 240);
        }

        LoggableString::LoggableString(&buf, v13);
        (*(*v11 + 40))(v11, &buf);
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v50 == 1 && v49 < 0)
        {
          operator delete(__p);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        v14 = this[239];
        v15 = this[240];
        if (v14 != v15)
        {
          v16 = v9[8];
          do
          {
            v17 = v14->__vftable;
            v14 = (v14 + 16);
            HIDWORD(v17[32].__on_zero_shared_weak) = v16;
          }

          while (v14 != v15);
        }
      }

      SipTypedStateMachine<BambiConferenceCallState>::transitionToState(this + 242, 5);
    }

    v6 = *(a2 + 2);
LABEL_49:
    if ((v6 & 0xFFFFFFFE) == 0xE)
    {
      v26 = **a2;
      if (v27)
      {
        if (this[51])
        {
          v28 = v27;
          if ((*(v27 + 145) & 1) == 0)
          {
            v30 = v27[5];
            v29 = v27[6];
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            if (v30)
            {
              v31 = SipUserAgent::config(v5);
              v32 = v28[5];
              v33 = v28[6];
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *(this + 2075) = SipResponseCodeMap::containsResponseCodeForMethod(v31 + 1312, "INVITE", v32[5].__shared_owners_, 0);
              if (v33)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }
            }
          }
        }
      }
    }

    v34 = **a2;
    if (v35 && (v36 = v35, v35[14] == 2))
    {
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v45, this + 19);
      v38 = v45;
      v37 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = *(v36 + 3);
      *(v36 + 2) = v38;
      *(v36 + 3) = v37;
      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
        v37 = v46;
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v40 = this[54];
      if (v40)
      {
        v41 = std::__shared_weak_count::lock(v40);
        if (v41)
        {
          v42 = v41;
          v43 = this[53];
          if (v43)
          {
            (v43->__on_zero_shared)(v43, v36);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }
      }
    }

    else
    {
      BambiCall::processCallEvent(this, a2);
    }

LABEL_74:
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    goto LABEL_76;
  }

  v18 = this[23];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    (this[18]->__shared_weak_owners_)(v59, this + 144);
    v19 = v60 >= 0 ? v59 : v59[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
    _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }
  }

LABEL_76:
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v44 = *MEMORY[0x1E69E9840];
}

void sub_1E506136C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v44 = *(v42 - 104);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCall::handleConferenceNotification(BambiConferenceCall *this, const SipConferenceInfo *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
  v79[0] = 0;
  v82 = 0;
  v4 = ims::debug(&v143, v79);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "BambiConferenceCall::handleConferenceNotification", 49);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v82 == 1 && v81 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  v77 = 0;
  v78 = 0;
  SipSessionInterface::stack(*(this + 51), &v77);
  if (!v77)
  {
    v27 = 1;
    goto LABEL_89;
  }

  v5 = *(v77 + 31);
  v6 = *(v77 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 && (*(SipUserAgent::config(v5) + 621) & 1) == 0)
  {
    v7 = *(a2 + 104);
    if (v7 == 3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v110, "bambi.conf");
      LOBYTE(v113) = 0;
      LOBYTE(v116) = 0;
      v28 = ims::debug(&v110, &v113);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Received conference notification with state deleted", 51);
      *(v28 + 17) = 0;
      (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v28 + 17) = 0;
      if (v116 == 1 && SBYTE7(v115) < 0)
      {
        operator delete(v114);
      }

      if (v112 < 0)
      {
        operator delete(v110);
      }

      v29 = *(a2 + 105);
      if (v29 <= *(this + 519))
      {
        std::string::basic_string[abi:ne200100]<0>(&v110, "bambi.conf");
        LOBYTE(v139) = 0;
        v142 = 0;
        v32 = ims::debug(&v110, &v139);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Stale notification (version = ", 30);
        *(v32 + 17) = 0;
        MEMORY[0x1E6923350](*(v32 + 8), *(a2 + 105));
        *(v32 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "), ignoring it.", 15);
        *(v32 + 17) = 0;
        (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v32 + 17) = 0;
        if (v142 == 1 && v141 < 0)
        {
          operator delete(v140);
        }
      }

      else
      {
        *(this + 519) = v29;
        std::string::basic_string[abi:ne200100]<0>(&v110, "EmptyConference");
        (*(*this + 64))(&v143, this, &v110);
        ImsResult::~ImsResult(&v143);
      }

      if ((v112 & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      v31 = v110;
      goto LABEL_86;
    }

    if (v7 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
      v106[0] = 0;
      v109 = 0;
      v8 = ims::debug(&v143, v106);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Received conference notification with state Full", 48);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v109 == 1 && v108 < 0)
      {
        operator delete(v107);
      }

      if (SBYTE7(v144) < 0)
      {
        operator delete(v143);
      }

      v9 = *(a2 + 105);
      if (v9 > *(this + 519))
      {
        *(this + 519) = v9;
        v62 = *(a2 + 55);
        v63 = *(a2 + 56);
        std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
        LOBYTE(v98[0]) = 0;
        v101 = 0;
        v10 = ims::debug(&v143, v98);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Users in the NOTIFY = ", 22);
        v11 = v63 - v62;
        *(v10 + 17) = 0;
        MEMORY[0x1E6923340](*(v10 + 8), (v63 - v62) >> 3);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v101 == 1 && v100 < 0)
        {
          operator delete(v99);
        }

        if (SBYTE7(v144) < 0)
        {
          operator delete(v143);
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        std::vector<std::shared_ptr<BambiConferenceParticipant>>::__init_with_size[abi:ne200100]<std::shared_ptr<BambiConferenceParticipant>*,std::shared_ptr<BambiConferenceParticipant>*>(&v95, *(this + 239), *(this + 240), (*(this + 240) - *(this + 239)) >> 4);
        v12 = v95;
        v13 = v96;
        if (v95 != v96)
        {
          if ((v11 >> 3) <= 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = v11 >> 3;
          }

          do
          {
            v168 = 0;
            v166 = 0u;
            v167 = 0u;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v143 = 0u;
            SipUri::SipUri(&v143);
            v15 = *(this + 48);
            if (v15)
            {
              v15 = std::__shared_weak_count::lock(v15);
              v16 = v15;
              if (v15)
              {
                v15 = *(this + 47);
              }
            }

            else
            {
              v16 = 0;
            }

            SipStack::makeOutgoingSipUri(v15, (*v12 + 288), &v143, &v139);
            ImsResult::~ImsResult(&v139);
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            v138 = 0;
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
            v113 = 0u;
            SipUri::SipUri(&v113);
            if (v63 == v62)
            {
LABEL_47:
              MatchingEndpointStatus = 9;
            }

            else
            {
              v17 = 0;
              while (1)
              {
                v18 = *(a2 + 55);
                v19 = v17 >= (*(a2 + 56) - v18) >> 3 ? 0 : *(v18 + 8 * v17);
                SipUri::clear(&v113);
                v20 = *(this + 48);
                if (v20)
                {
                  v20 = std::__shared_weak_count::lock(v20);
                  v21 = v20;
                  if (v20)
                  {
                    v20 = *(this + 47);
                  }
                }

                else
                {
                  v21 = 0;
                }

                SipStack::makeOutgoingSipUri(v20, (v19 + 8), &v113, &v110);
                ImsResult::~ImsResult(&v110);
                if (v21)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                }

                if (SipUri::userMatch(&v143, &v113))
                {
                  break;
                }

                if (v14 == ++v17)
                {
                  goto LABEL_47;
                }
              }

              MatchingEndpointStatus = BambiConferenceCall::findMatchingEndpointStatus(v19, v22);
            }

            if (*(*v12 + 264) <= 5 && MatchingEndpointStatus == 9)
            {
              std::string::basic_string[abi:ne200100]<0>(v93, "bambi.conf");
              LOBYTE(v89[0]) = 0;
              v92 = 0;
              v24 = ims::debug(v93, v89);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Participant ", 12);
              *(v24 + 17) = 0;
              (*(v143 + 40))(&v143, v24);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " has not yet joined, so ignoring disconnected notification", 58);
              *(v24 + 17) = 0;
              (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v24 + 17) = 0;
              if (v92 == 1 && v91 < 0)
              {
                operator delete(v90);
              }

              if (v94 < 0)
              {
                operator delete(v93[0]);
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v93, "bambi.conf");
              v85[0] = 0;
              v88 = 0;
              v25 = ims::debug(v93, v85);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Participant ", 12);
              *(v25 + 17) = 0;
              (*(v143 + 40))(&v143, v25);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", status = ", 11);
              *(v25 + 17) = 0;
              SipConferenceEndpoint::statusAsString(MatchingEndpointStatus, v83);
              (*(*v25 + 32))(v25, v83);
              (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v25 + 17) = 0;
              if (v84 < 0)
              {
                operator delete(v83[0]);
              }

              if (v88 == 1 && v87 < 0)
              {
                operator delete(v86);
              }

              if (v94 < 0)
              {
                operator delete(v93[0]);
              }

              BambiConferenceParticipant::handleConferenceNotification(*v12, MatchingEndpointStatus, &v113);
            }

            SipUri::~SipUri(&v113);
            SipUri::~SipUri(&v143);
            v12 += 2;
          }

          while (v12 != v13);
        }

        *&v143 = &v95;
        std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v143);
LABEL_87:
        v26 = 0;
        v27 = 0;
        if (!v6)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
      v102[0] = 0;
      v105 = 0;
      v30 = ims::debug(&v143, v102);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Stale notification (version = ", 30);
      *(v30 + 17) = 0;
      MEMORY[0x1E6923350](*(v30 + 8), *(a2 + 105));
      *(v30 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "), ignoring it.", 15);
      *(v30 + 17) = 0;
      (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v30 + 17) = 0;
      if (v105 == 1 && v104 < 0)
      {
        operator delete(v103);
      }

      if ((SBYTE7(v144) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      v31 = v143;
LABEL_86:
      operator delete(v31);
      goto LABEL_87;
    }
  }

  v26 = 1;
  v27 = 1;
  if (v6)
  {
LABEL_88:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v27 = v26;
  }

LABEL_89:
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  if (!v27)
  {
    return;
  }

  if (*(a2 + 104) == 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
    v73[0] = 0;
    v76 = 0;
    v33 = ims::debug(&v143, v73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Received conference notification with state partial", 51);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    if (v76 == 1 && v75 < 0)
    {
      v34 = v74;
LABEL_99:
      operator delete(v34);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
    v69[0] = 0;
    v72 = 0;
    v35 = ims::debug(&v143, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "Treating notification as Partial.", 33);
    *(v35 + 17) = 0;
    (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v35 + 17) = 0;
    if (v72 == 1 && v71 < 0)
    {
      v34 = v70;
      goto LABEL_99;
    }
  }

  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  v37 = *(a2 + 55);
  v36 = *(a2 + 56);
  std::string::basic_string[abi:ne200100]<0>(&v143, "bambi.conf");
  v65[0] = 0;
  v68 = 0;
  v38 = ims::info(&v143, v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Users in the NOTIFY = ", 22);
  v39 = v36 - v37;
  *(v38 + 17) = 0;
  MEMORY[0x1E6923340](*(v38 + 8), (v36 - v37) >> 3);
  *(v38 + 17) = 0;
  (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v38 + 17) = 0;
  if (v68 == 1 && v67 < 0)
  {
    operator delete(v66);
  }

  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  if (v36 != v37)
  {
    v41 = 0;
    v42 = v39 >> 3;
    v43 = this + 8;
    if ((v39 >> 3) <= 1)
    {
      v42 = 1;
    }

    v64 = v42;
    while (1)
    {
      v44 = *(a2 + 55);
      v45 = v41 >= (*(a2 + 56) - v44) >> 3 ? 0 : *(v44 + 8 * v41);
      if (v45[104] == 3)
      {
        break;
      }

      v46 = BambiConferenceCall::findMatchingEndpointStatus(v45, v40);
      if (v46)
      {
        goto LABEL_117;
      }

LABEL_134:
      v53 = (v45 + 2);
      v54 = *(this + 236);
      v55 = *(this + 237);
      while (1)
      {
        if (v54 == v55)
        {
          v56 = (*(*v43 + 64))(this + 8);
          (*(*v43 + 16))(this + 8, v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "User (", 6);
          *(v56 + 17) = 0;
          (*(*v53 + 40))(v53, v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), ") is not a participant", 22);
          *(v56 + 17) = 0;
          (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v56 + 17) = 0;
          goto LABEL_169;
        }

        if (SipUri::equals(v54, v53, 1))
        {
          break;
        }

        v54 = (v54 + 432);
      }

      v57 = (*(*v43 + 64))(this + 8);
      (*(*v43 + 16))(this + 8, v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "adding initial invitee ", 23);
      *(v57 + 17) = 0;
      (*(*v53 + 40))(v53, v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " as a participant", 17);
      *(v57 + 17) = 0;
      (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v57 + 17) = 0;
      v111 = 0;
      v110 = 0;
      v143 = 0uLL;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v113, this + 19);
      std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceCall,BambiCall>(&v143, &v113);
      if (*(&v113 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v113 + 1));
      }

      v111 = 0;
      v110 = 0;
      if (v143)
      {
        v113 = 0uLL;
        v139 = v143;
        if (*(&v143 + 1))
        {
          atomic_fetch_add_explicit((*(&v143 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        BambiConferenceParticipant::create(&v110);
      }

      if (*(&v143 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v143 + 1));
      }

      if (v111)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      }

LABEL_169:
      if (++v41 == v64)
      {
        return;
      }
    }

    v46 = 9;
LABEL_117:
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    SipUri::SipUri(&v143);
    v47 = *(this + 48);
    if (v47)
    {
      v47 = std::__shared_weak_count::lock(v47);
      v48 = v47;
      if (v47)
      {
        v47 = *(this + 47);
      }
    }

    else
    {
      v48 = 0;
    }

    SipStack::makeOutgoingSipUri(v47, (v45 + 2), &v143, &v139);
    ImsResult::~ImsResult(&v139);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v49 = *(this + 239);
    v50 = *(this + 240);
    while (1)
    {
      if (v49 == v50)
      {
        SipUri::~SipUri(&v143);
        goto LABEL_134;
      }

      v138 = 0;
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
      v113 = 0u;
      SipUri::SipUri(&v113);
      v51 = *(this + 48);
      if (v51)
      {
        v51 = std::__shared_weak_count::lock(v51);
        v52 = v51;
        if (v51)
        {
          v51 = *(this + 47);
        }
      }

      else
      {
        v52 = 0;
      }

      SipStack::makeOutgoingSipUri(v51, (*v49 + 288), &v113, &v110);
      ImsResult::~ImsResult(&v110);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (SipUri::userMatch(&v113, &v143))
      {
        break;
      }

      SipUri::~SipUri(&v113);
      v49 += 2;
    }

    v58 = v46 == 9 && *(*v49 + 264) <= 5;
    v59 = !v58;
    if (v58)
    {
      std::string::basic_string[abi:ne200100]<0>(v98, "bambi.conf");
      v106[0] = 0;
      v109 = 0;
      v61 = ims::debug(v98, v106);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), "Participant ", 12);
      *(v61 + 17) = 0;
      (*(v113 + 40))(&v113, v61);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), " has not yet joined, so ignoring disconnected notification", 58);
      *(v61 + 17) = 0;
      (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v61 + 17) = 0;
      if (v109 == 1 && v108 < 0)
      {
        operator delete(v107);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98[0]);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v98, "bambi.conf");
      v102[0] = 0;
      v105 = 0;
      v60 = ims::debug(v98, v102);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "Participant ", 12);
      *(v60 + 17) = 0;
      (*(v113 + 40))(&v113, v60);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), ", status = ", 11);
      *(v60 + 17) = 0;
      SipConferenceEndpoint::statusAsString(v46, v89);
      (*(*v60 + 32))(v60, v89);
      (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v60 + 17) = 0;
      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89[0]);
      }

      if (v105 == 1 && v104 < 0)
      {
        operator delete(v103);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98[0]);
      }

      BambiConferenceParticipant::handleConferenceNotification(*v49, v46, &v143);
    }

    SipUri::~SipUri(&v113);
    SipUri::~SipUri(&v143);
    if (v59)
    {
      goto LABEL_169;
    }

    goto LABEL_134;
  }
}

void sub_1E5062754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiConferenceCall::findMatchingEndpointStatus(BambiConferenceCall *this, const SipConferenceUser *a2)
{
  v3 = *(this + 57);
  v2 = *(this + 58);
  v4 = v2 - v3;
  if (v2 == v3)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(v16, "bambi.conf");
    v12[0] = 0;
    v15 = 0;
    v10 = ims::debug(v16, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "No matching endpoint in the notify ", 35);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    return 0;
  }

  else
  {
    v6 = 0;
    if ((v4 >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 3;
    }

    while (1)
    {
      v8 = *(*(this + 57) + 8 * v6);
      v9 = SipUri::equals((v8 + 8), (this + 8), 1);
      if (v4 == 8 || v9)
      {
        return *(v8 + 448);
      }

      if (v7 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_1E5062BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void BambiConferenceCall::handleParticipantStateChange(uint64_t a1, char ***a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 8;
  v9 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v8 + 16))(v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "BambiConferenceCall::handleParticipantStateChange", 49);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v10 = *a2;
  if (*a2)
  {
    v11 = **v10;
    if (v12)
    {
      v13 = a2[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }
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

  v14 = *(a1 + 1992);
  v15 = *(a1 + 2000);
  if (!v15)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    v16 = 0;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 2000);
  v14 = *(a1 + 1992);
  if (!v16)
  {
LABEL_13:
    v17 = 1;
    goto LABEL_14;
  }

  v17 = 0;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_14:
  v70 = v12;
  v71 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 72))(v14, &v70, a3, a4);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if ((v17 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

LABEL_20:
  if ((a4 - 8) <= 2)
  {
    v18 = *(a1 + 1912);
    v19 = *(a1 + 1920);
    if (v18 != v19)
    {
      v20 = -v18;
      while (*v18 != v12)
      {
        v18 += 16;
        v20 -= 16;
        if (v18 == v19)
        {
          goto LABEL_52;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
      v66[0] = 0;
      v69 = 0;
      v21 = ims::debug(__p, v66);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "removing participant ", 21);
      *(v21 + 17) = 0;
      (*(v12[36] + 40))(v12 + 36, v21);
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v69 == 1 && v68 < 0)
      {
        operator delete(v67);
      }

      if (SBYTE7(v59) < 0)
      {
        operator delete(__p[0]);
      }

      v22 = *(a1 + 1920);
      if (16 - v20 == v22)
      {
        v28 = -v20;
      }

      else
      {
        v23 = *(a1 + 1912);
        v24 = v23 - v20;
        do
        {
          v25 = v24 - v23;
          v26 = *(v24 - v23 + 16);
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          v27 = *(v24 - v23 + 8);
          *v25 = v26;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v24 += 16;
        }

        while (v24 - v23 + 16 != v22);
        v22 = *(a1 + 1920);
        v28 = v24 - v23;
      }

      while (v22 != v28)
      {
        v29 = *(v22 - 8);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v22 -= 16;
      }

      *(a1 + 1920) = v28;
      v30 = (*a2)[27];
      if (v30)
      {
        v31 = (*a2)[26];
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v32 = std::__shared_weak_count::lock(v30);
        std::__shared_weak_count::__release_weak(v30);
        if (v32)
        {
          if (v31)
          {
            v33 = *(v31 + 190);
            *(v31 + 1512) = 0u;
            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      v34 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        v13 = 0;
      }
    }

LABEL_52:
    std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
    v62[0] = 0;
    v65 = 0;
    v35 = ims::debug(__p, v62);
    MEMORY[0x1E6923370](*(v35 + 8), (*(a1 + 1920) - *(a1 + 1912)) >> 4);
    *(v35 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), " participants remaining", 23);
    *(v35 + 17) = 0;
    (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v35 + 17) = 0;
    if (v65 == 1 && v64 < 0)
    {
      operator delete(v63);
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 != 6)
  {
    if (a4 != 10)
    {
      goto LABEL_71;
    }

    ++*(a1 + 2044);
  }

  v36 = *(a1 + 2040);
  if (v36)
  {
    v37 = v36 - 1;
    *(a1 + 2040) = v37;
    if (v37)
    {
      v38 = (*(*v8 + 64))(v8);
      (*(*v8 + 16))(v8, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "still waiting for ", 18);
      *(v38 + 17) = 0;
      MEMORY[0x1E6923350](*(v38 + 8), *(a1 + 2040));
      *(v38 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " participant", 12);
      *(v38 + 17) = 0;
      v39 = *(a1 + 2040);
      if (v39 == 1)
      {
        v40 = "";
      }

      else
      {
        v40 = "s";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), v40, v39 != 1);
      *(v38 + 17) = 0;
      (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v38 + 17) = 0;
    }

    else
    {
      if (*(a1 + 2044))
      {
        v60 = 0u;
        v61 = 0u;
        *__p = 0u;
        v59 = 0u;
        BambiConferenceCall::weakParticipants(a1, v56);
        BambiCallConferenceEvent::BambiCallConferenceEvent(__p, 2, v56);
        v72[0] = v56;
        std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v72);
        (*(*a1 + 32))(a1, __p);
        *(a1 + 2044) = 0;
      }

      else
      {
        v41 = (*(*v8 + 64))(v8);
        (*(*v8 + 16))(v8, v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "everyone joined", 15);
        *(v41 + 17) = 0;
        (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v41 + 17) = 0;
        v60 = 0u;
        v61 = 0u;
        *__p = 0u;
        v59 = 0u;
        BambiConferenceCall::weakParticipants(a1, v57);
        BambiCallConferenceEvent::BambiCallConferenceEvent(__p, 1, v57);
        v72[0] = v57;
        std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v72);
        (*(*a1 + 32))(a1, __p);
      }

      __p[0] = &unk_1F5ED0908;
      v72[0] = &v60;
      std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v72);
      __p[0] = &unk_1F5EC4090;
      if (*(&v59 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v59 + 1));
      }
    }
  }

LABEL_71:
  if (*(a1 + 1912) != *(a1 + 1920))
  {
    goto LABEL_87;
  }

  v42 = *(a1 + 1992);
  if (v42 && (*(*v42 + 48))(v42) == 3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
    v48[0] = 0;
    v51 = 0;
    v43 = ims::debug(__p, v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "All participants left, ending the conference call", 49);
    *(v43 + 17) = 0;
    (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v43 + 17) = 0;
    if (v51 != 1 || (v50 & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    v44 = v49;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "bambi.conf");
    v52[0] = 0;
    v55 = 0;
    v45 = ims::error(__p, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "All participants failed to join, ending the conference call", 59);
    *(v45 + 17) = 0;
    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v45 + 17) = 0;
    if (v55 != 1 || (v54 & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    v44 = v53;
  }

  operator delete(v44);
LABEL_81:
  if (SBYTE7(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 2074) == 1)
  {
    BambiConferenceCall::clearConferenceEventSubscription(a1, 1);
    BambiCall::silentHangUp(a1, 8, v47);
    ImsResult::~ImsResult(v47);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "EmptyConference");
    (*(*a1 + 64))(v46, a1, __p);
    ImsResult::~ImsResult(v46);
    if (SBYTE7(v59) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_87:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E5063654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  BambiCallConferenceEvent::~BambiCallConferenceEvent(&__p);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTypedStateMachine<BambiConferenceCallState>::currentState@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

uint64_t BambiConferenceCall::conferenceCallActivated(BambiConferenceCall *this)
{
  result = *(this + 249);
  if (result)
  {
    result = (*(*result + 48))(result);
    if (result == 4)
    {
      v3 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Back to confirmed state", 23);
      *(v3 + 17) = 0;
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;

      return SipTypedStateMachine<BambiConferenceCallState>::transitionToState(this + 242, 3);
    }
  }

  return result;
}

void BambiConferenceCall::resumeConferenceCall(BambiConferenceCall *this)
{
  if ((*(this + 120) & 0xFFFFFFFE) == 2)
  {
    v3 = this + 8;
    v4 = (*(*(this + 1) + 64))(this + 8);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Resume the conference call", 26);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;

    BambiCall::performLocalResume(this);
  }
}

void BambiConferenceCall::cleanupOnTimeout(void **this)
{
  memset(v8, 0, sizeof(v8));
  v6 = 0u;
  v7 = 0u;
  BambiConferenceCall::weakParticipants(this, v5);
  BambiCallConferenceEvent::BambiCallConferenceEvent(&v6, 2, v5);
  __p[0] = v5;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](__p);
  (*(*this + 4))(this, &v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmptyConference");
  (*(*this + 8))(v4, this, __p);
  ImsResult::~ImsResult(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *&v6 = &unk_1F5ED0908;
  __p[0] = v8;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](__p);
  *&v6 = &unk_1F5EC4090;
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v7 + 1));
  }
}

void sub_1E5063B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  BambiCallConferenceEvent::~BambiCallConferenceEvent((v15 - 80));
  _Unwind_Resume(a1);
}

void BambiConferenceCall::loggableName(BambiConferenceCall *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5063D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 == 1)
  {
    if (a19)
    {
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiConferenceCall::nameForStateId(BambiConferenceCall *this, unsigned int a2)
{
  if (a2 <= 6)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return &stateNames + 24 * v2;
}

uint64_t non-virtual thunk toBambiConferenceCall::nameForStateId(BambiConferenceCall *this, unsigned int a2)
{
  if (a2 <= 6)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return &stateNames + 24 * v2;
}

void BambiConferenceCall::handleStateTransition(BambiConferenceCall *this, uint64_t a2, uint64_t a3)
{
  v5 = this + 8;
  v6 = (*(*(this + 1) + 64))(this + 8);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "state transition [", 18);
  *(v6 + 17) = 0;
  v7 = SipSimpleStateMachine<BambiConferenceCallState>::nameForStateId((v5 + 1928), a2);
  LoggableString::LoggableString(&v10, v7);
  (*(*v6 + 40))(v6, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " --> ", 5);
  *(v6 + 17) = 0;
  v8 = SipSimpleStateMachine<BambiConferenceCallState>::nameForStateId((v5 + 1928), a3);
  LoggableString::LoggableString(&__p, v8);
  (*(*v6 + 40))(v6, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1E5063F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *SipSimpleStateMachine<BambiConferenceCallState>::nameForStateId(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return "Unknown";
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return "Unknown";
  }

  v6 = v5;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = (*(*v7 + 16))(v7, a2);
  }

  else
  {
    v8 = "Unknown";
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void BambiConferenceCall::prepareInvite(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = 0;
  v7 = *(a3 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = &unk_1F5EBDEF8;
  v17 = &_bambiDomain;
  LODWORD(v18) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v8 = v17;
    v9 = v18;
  }

  else
  {
    v9 = 0;
    v8 = &_bambiDomain;
  }

  if ((*(*v8 + 24))(v8, v9))
  {
    goto LABEL_17;
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 == 13 && (v11 >= 0 ? (v12 = a2) : (v12 = *a2), (v13 = *v12, v14 = *(v12 + 5), v13 == *"InitialInvite") ? (v15 = v14 == *"alInvite") : (v15 = 0), v15))
  {
    if (*(a1 + 1888) != *(a1 + 1896))
    {
      operator new();
    }

    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
LABEL_17:
    ImsResult::ImsResult(a4, &v16);
  }

  ImsResult::~ImsResult(&v16);
}

void sub_1E5064784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ImsResult::~ImsResult(&__p);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  ImsResult::~ImsResult(&a34);
  _Unwind_Resume(a1);
}

void BambiConferenceCall::deferredEndWithReason(BambiConferenceCall *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  BambiConferenceCall::clearConferenceEventSubscription(a1, 1);

  BambiCall::deferredEndWithReason(a1, a2, a3);
}

void BambiConferenceCall::handleMediaSessionActivated(BambiConferenceCall *this)
{
  v2 = *(this + 51);
  if (v2)
  {
    if (SipSession::confirmed(v2))
    {
      v3 = *(this + 249);
      if (v3)
      {
        if ((*(*v3 + 48))(v3) == 2)
        {
          v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "bambi.conf");
          v6[0] = 0;
          v9 = 0;
          v5 = ims::debug(v4, v6);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Media is active and call is confirmed, Moving to SessionConfirmed state.", 72);
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

          SipTypedStateMachine<BambiConferenceCallState>::transitionToState(this + 242, 3);
        }
      }
    }
  }

  BambiCall::handleMediaSessionActivated(this);
}

void sub_1E50649DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void BambiConferenceCallStateMachine::~BambiConferenceCallStateMachine(BambiConferenceCallStateMachine *this)
{
  *this = &unk_1F5EEC020;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(this);
}

{
  *this = &unk_1F5EEC020;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(this);

  JUMPOUT(0x1E69235B0);
}

void SipSimpleStateMachine<BambiConferenceCallState>::handleStateTransition(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      if (v9)
      {
        if (*a2)
        {
          v10 = (*(**a2 + 48))(*a2);
        }

        else
        {
          v10 = 0;
        }

        v11 = (*(**a3 + 48))();
        (*(*v9 + 24))(v9, v10, v11);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void BambiConferenceCall::~BambiConferenceCall(BambiConferenceCall *this)
{
  BambiConferenceCall::~BambiConferenceCall(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EEBE10;
  *(this + 1) = &unk_1F5EEBED0;
  *(this + 18) = &unk_1F5EEBF30;
  *(this + 233) = &unk_1F5EEBF58;
  *(this + 234) = &unk_1F5EEBF88;
  *(this + 235) = &unk_1F5EEBFB0;
  if (*(this + 2071) < 0)
  {
    operator delete(*(this + 256));
  }

  *(this + 242) = &unk_1F5EEC020;
  v2 = *(this + 254);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(this + 1936);
  v6 = (this + 1912);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 236);
  if (v3)
  {
    v4 = *(this + 237);
    v5 = *(this + 236);
    if (v4 != v3)
    {
      do
      {
        v4 -= 54;
        std::__destroy_at[abi:ne200100]<std::pair<SipUri,std::string>,0>(v4);
      }

      while (v4 != v3);
      v5 = *(this + 236);
    }

    *(this + 237) = v3;
    operator delete(v5);
  }

  BambiCall::~BambiCall(this);
}

void non-virtual thunk toBambiConferenceCall::~BambiConferenceCall(BambiConferenceCall *this)
{
  BambiConferenceCall::~BambiConferenceCall((this - 8));
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 144));
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1864));
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1864));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1872));
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1872));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1880));
}

{
  BambiConferenceCall::~BambiConferenceCall((this - 1880));

  JUMPOUT(0x1E69235B0);
}

void SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(uint64_t a1)
{
  SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSimpleStateMachine<BambiConferenceCallState>::~SipSimpleStateMachine(uint64_t a1)
{
  *a1 = &unk_1F5EEC118;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = &unk_1F5EEC170;
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
    *(a1 + 32) = 0;
    v3 = *(a1 + 24);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 16) + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<SipUri,std::string>,0>(void **this)
{
  if (*(this + 431) < 0)
  {
    operator delete(this[51]);
  }

  SipUri::~SipUri(this);
}

uint64_t std::__split_buffer<std::pair<SipUri,std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    std::__destroy_at[abi:ne200100]<std::pair<SipUri,std::string>,0>((i - 432));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<BambiConferenceCallWaitingForHoldState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiConferenceCallSessionRequestedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiConferenceCallSessionConfirmedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiConferenceCallWaitToResumeConfirmedSessionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC2B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiConferenceCallSessionTerminatedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<BambiConferenceCall>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipStack> &,std::shared_ptr<RTPManager> &,std::allocator<BambiConferenceCall>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEC358;
  std::construct_at[abi:ne200100]<BambiConferenceCall,std::shared_ptr<SipStack> &,std::shared_ptr<RTPManager> &,BambiConferenceCall*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<BambiConferenceCall>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<BambiConferenceCall,std::shared_ptr<SipStack> &,std::shared_ptr<RTPManager> &,BambiConferenceCall*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v4;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::BambiCall(a1, &v11, &v9, 0);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *a1 = &unk_1F5EEBE10;
  *(a1 + 8) = &unk_1F5EEBED0;
  *(a1 + 144) = &unk_1F5EEBF30;
  *(a1 + 1864) = &unk_1F5EEBF58;
  *(a1 + 1872) = &unk_1F5EEBF88;
  *(a1 + 1880) = &unk_1F5EEBFB0;
  *(a1 + 1976) = 0;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1984) = 1065353216;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 1936) = &unk_1F5EEC020;
  *(a1 + 2072) = 0;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2024) = 0u;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1E5065720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  goto LABEL_7;
}

void __cxx_global_array_dtor_4()
{
  v0 = &byte_1EE2BC02F;
  v1 = -144;
  v2 = &byte_1EE2BC02F;
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

uint64_t _GLOBAL__sub_I_BambiConferenceCall_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(stateNames, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(&stateNames[24], "WaitingForHold");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBFD0, "SessionRequested");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBFE8, "SessionConfirmed");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC000, "WaitToResumeConfirmedSession");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC018, "SessionTerminated");

  return __cxa_atexit(__cxx_global_array_dtor_4, 0, &dword_1E4C3F000);
}

void sub_1E506589C(_Unwind_Exception *exception_object)
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

uint64_t SipSubscription::SipSubscription(uint64_t a1, void *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.sub");
  v6 = *a2;
  v7 = std::__shared_weak_count::lock(*(*a2 + 232));
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v33, (*(v6 + 224) + 200));
  ImsLogContainer::ImsLogContainer(a1, &__str, v33);
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 136) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(v31, "sip.sub");
  v8 = *a2;
  v9 = std::__shared_weak_count::lock(*(*a2 + 232));
  v10 = *(v8 + 224);
  v27 = *(v10 + 200);
  v28 = *(v10 + 208);
  if (*(v10 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *(v10 + 216), *(v10 + 224));
  }

  else
  {
    v29 = *(v10 + 216);
  }

  v30 = *(v10 + 240);
  ims::getQueue(&v39);
  ClientConfig::getLogTag(&v27, &v37);
  if ((v32 & 0x80u) == 0)
  {
    v11 = v31;
  }

  else
  {
    v11 = v31[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v12 = v32;
  }

  else
  {
    v12 = v31[1];
  }

  v13 = std::string::insert(&v37, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v16 = v39;
  *(a1 + 168) = v39;
  if (v16)
  {
    dispatch_retain(v16);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  *(a1 + 144) = &unk_1F5EEC5A0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  *a1 = &unk_1F5EEC3E0;
  *(a1 + 136) = &unk_1F5EEC468;
  *(a1 + 144) = &unk_1F5EEC498;
  *(a1 + 208) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 192) = &unk_1F5EBEF50;
  *(a1 + 216) = 0;
  *(a1 + 224) = 256;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 256));
  v17 = (a1 + 440);
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v19 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 240);
  *(a1 + 232) = v19;
  *(a1 + 240) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::string::operator=((a1 + 496), a3);
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.sub");
  v21 = *a2;
  v22 = *(v21 + 232);
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = *(v21 + 224);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  std::string::operator=((a1 + 304), &__str);
  v25 = *(v24 + 200);
  *(a1 + 336) = *(v24 + 208);
  *(a1 + 328) = v25;
  std::string::operator=((a1 + 344), (v24 + 216));
  *(a1 + 368) = *(v24 + 240);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 384) = a1 + 136;
  *(a1 + 488) = 1;
  if (*(a1 + 463) < 0)
  {
    *(a1 + 448) = 7;
    v17 = *(a1 + 440);
  }

  else
  {
    *(a1 + 463) = 7;
  }

  strcpy(v17, "unknown");
  *(a1 + 520) = 0;
  *(a1 + 522) = 0;
  return a1;
}

void sub_1E5065CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v40);
  _Unwind_Resume(a1);
}

void SipSubscription::initializeEventPackage(std::string *this, SipEventPackage *a2)
{
  this[10].__r_.__value_.__l.__size_ = a2;
  if (a2)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, &this[6].__r_.__value_.__l.__size_);
    v5 = v8;
    v4 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 3);
    *(a2 + 2) = v5;
    *(a2 + 3) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
      v4 = v9;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v7 = *(this[10].__r_.__value_.__l.__size_ + 8);
    if (v7)
    {
      SipParameterMap::addParameters(this + 8, v7);
    }
  }

  this[21].__r_.__value_.__s.__data_[19] = 1;
}

void SipSubscription::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipSubscription,std::allocator<SipSubscription>,std::shared_ptr<SipDialog> &,std::string const&,0>();
}

void sub_1E5065F30(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipSubscription::~SipSubscription(SipSubscription *this)
{
  *this = &unk_1F5EEC3E0;
  *(this + 17) = &unk_1F5EEC468;
  *(this + 18) = &unk_1F5EEC498;
  v2 = ImsLogContainer::debugStream(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SipSubscription::~SipSubscription()", 35);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (*(this + 523) != 1)
  {
    goto LABEL_24;
  }

  SipTimerContainer::cancelAllTimers((this + 256));
  v3 = this + 440;
  if ((*(this + 463) & 0x80000000) == 0)
  {
    v4 = *(this + 463);
    if (v4 != 7)
    {
      if (v4 != 10)
      {
        goto LABEL_20;
      }

LABEL_9:
      v6 = *v3;
      v7 = *(v3 + 4);
      if (v6 == 0x74616E696D726574 && v7 == 25701)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v5 = *(this + 56);
  if (v5 == 7)
  {
    v3 = *v3;
LABEL_16:
    v9 = *v3;
    v10 = *(v3 + 3);
    if (v9 == 1852534389 && v10 == 1853321070)
    {
      v14 = *(this + 31);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v16[0] = &unk_1F5EBDEF8;
      v16[1] = &_bambiDomain;
      v17 = 0x40000000;
      v15 = ImsResult::operator<<<char [28]>(v16, "destructed in unknown state");
      (*(*v14 + 40))(v14, v15, 0);
      ImsResult::~ImsResult(v16);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v5 == 10)
  {
    v3 = *v3;
    goto LABEL_9;
  }

LABEL_20:
  (*(**(this + 31) + 32))(*(this + 31), 0);
LABEL_21:
  v12 = *(this + 31);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 523) = 0;
LABEL_24:
  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  SipTimerContainer::~SipTimerContainer((this + 256));
  v13 = *(this + 30);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  *(this + 24) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 200, *(this + 26));
  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SipSubscription::~SipSubscription(this);

  JUMPOUT(0x1E69235B0);
}