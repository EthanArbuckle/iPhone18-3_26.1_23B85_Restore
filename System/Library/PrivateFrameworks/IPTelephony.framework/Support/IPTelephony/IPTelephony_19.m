void sub_1E4D77AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipRetryAfterHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Retry-After");
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

void *SipMessage::header<SipPAssertedIdentityHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Asserted-Identity");
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

char **SipMessage::body<Sip3gppImsInfoBody>(uint64_t a1)
{
  result = SipMessage::bodyWithContentType(a1, &Sip3gppImsInfoBody::kContentType);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void SipClientTransaction::handleConnectionError(SipClientTransaction *this)
{
  if (!*(this + 7))
  {
    return;
  }

  v2 = *(this + 14);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v3 = *(this + 13);
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (!v4 || !v3 || (*(*v3 + 48))(v3))
  {
LABEL_8:
    (*(**(this + 7) + 80))(*(this + 7));
    if (!v4)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void SipClientTransaction::handleResponse(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1 + 128;
  v4 = (*(*(a1 + 128) + 64))(a1 + 128);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipClientTransaction::handleResponse", 36);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *a2;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4D791F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v35)
    {
LABEL_5:
      if (!v34)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v35)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (!v34)
  {
LABEL_6:
    if (!v33)
    {
LABEL_12:
      if (a33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a33);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    goto LABEL_12;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v33)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void SipClientInviteTransaction::constructStateMachine(SipClientInviteTransaction *this)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (this + *(*this - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(v1, v2);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }

  operator new();
}

void sub_1E4D79834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v19 - 64);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void SipClientInviteTransaction::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipClientInviteTransaction,std::allocator<SipClientInviteTransaction>,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,0>();
}

void sub_1E4D79934(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipClientInviteTransaction::~SipClientInviteTransaction(SipClientInviteTransaction *this)
{
  *this = &unk_1F5EC9238;
  *(this + 9) = &unk_1F5EC92E8;
  *(this + 75) = &unk_1F5EC93D0;
  *(this + 15) = &unk_1F5EC9330;
  *(this + 16) = &unk_1F5EC9360;
  v2 = *(this + 74);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipClientTransaction::~SipClientTransaction(this, &off_1F5EC93F0);
  MEMORY[0x1E69225A0](this + 640);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 76);
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteTransaction::~SipClientInviteTransaction(SipClientInviteTransaction *this)
{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 72));
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 120));
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 128));
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 72));

  JUMPOUT(0x1E69235B0);
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 120));

  JUMPOUT(0x1E69235B0);
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this - 128));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toSipClientInviteTransaction::~SipClientInviteTransaction(SipClientInviteTransaction *this)
{
  SipClientInviteTransaction::~SipClientInviteTransaction((this + *(*this - 24)));
}

{
  SipClientInviteTransaction::~SipClientInviteTransaction((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void SipClientInviteTransaction::sendAckForResponse(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + 73;
  if (!a1[73])
  {
    v6 = a1[33];
    v7 = a2[1];
    v28[0] = *a2;
    v28[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipRequest::createMatchingAckForResponse(v6, v28, &v16);
    v8 = a1[74];
    *v5 = v16;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v26 = 0;
  v27 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, (a1 + *(*a1 - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(&v16, &v26);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }

  v9 = a1[38];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  v12 = a1[37];
  if (!v12 || (v13 = v26) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_24:
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    *&v16 = &unk_1F5EBDEF8;
    *(&v16 + 1) = &_bambiDomain;
    v17 = 0x40000000;
    v15 = ImsResult::operator<<<char [26]>(&v16, "Transaction Layer is gone");
    ImsResult::ImsResult(a3, v15);
    ImsResult::~ImsResult(&v16);
    goto LABEL_25;
  }

  if (*v5)
  {
    v14 = a1[74];
    v24 = *v5;
    v25 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v13;
    v23 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransactionLayer::sendMessageInTransaction(v12, &v24, &v22, a3);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741825;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_25:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1E4D79DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v23 - 72);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  v26 = *(v23 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void SipClientNonInviteTransaction::constructStateMachine(SipClientNonInviteTransaction *this)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (this + *(*this - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(v1, v2);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }

  operator new();
}

void sub_1E4D7A22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteTransaction::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipClientNonInviteTransaction,std::allocator<SipClientNonInviteTransaction>,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,0>();
}

void sub_1E4D7A314(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteTransaction::initialize(SipClientNonInviteTransaction *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (this + *(*this - 24) + 8));
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

void sub_1E4D7A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteTransaction::handleTimer(SipTransaction *a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerF) && ((*(*a1 + 136))(a1) & 1) == 0)
  {

    SipTransaction::handleTimeout(a1);
  }
}

void SipClientNonInviteTransaction::~SipClientNonInviteTransaction(SipClientNonInviteTransaction *this)
{
  SipClientTransaction::~SipClientTransaction(this, &off_1F5EC9610);
  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 74);
}

{
  SipClientTransaction::~SipClientTransaction(this, &off_1F5EC9610);
  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 74);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientNonInviteTransaction::~SipClientNonInviteTransaction(SipClientNonInviteTransaction *this)
{
  SipClientTransaction::~SipClientTransaction((this - 72), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 552);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 65);
}

{
  SipClientTransaction::~SipClientTransaction((this - 72), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 552);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 65);

  JUMPOUT(0x1E69235B0);
}

{
  SipClientTransaction::~SipClientTransaction((this - 120), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 504);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);
}

{
  SipClientTransaction::~SipClientTransaction((this - 120), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 504);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);

  JUMPOUT(0x1E69235B0);
}

{
  SipClientTransaction::~SipClientTransaction((this - 128), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 496);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 58);
}

{
  SipClientTransaction::~SipClientTransaction((this - 128), &off_1F5EC9610);
  MEMORY[0x1E69225A0](this + 496);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 58);

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toSipClientNonInviteTransaction::~SipClientNonInviteTransaction(SipClientNonInviteTransaction *this)
{
  v1 = (this + *(*this - 24));
  SipClientTransaction::~SipClientTransaction(v1, &off_1F5EC9610);
  MEMORY[0x1E69225A0](v1 + 624);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 74);
}

{
  v1 = (this + *(*this - 24));
  SipClientTransaction::~SipClientTransaction(v1, &off_1F5EC9610);
  MEMORY[0x1E69225A0](v1 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 74);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientInviteCallingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9E20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientInviteProceedingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9E70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientInviteCompletedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9EC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientInviteTerminationPendingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipClientInviteTransaction>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,std::allocator<SipClientInviteTransaction>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC9F60;
  std::construct_at[abi:ne200100]<SipClientInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,SipClientInviteTransaction*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<SipClientInviteTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9F60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipClientInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,SipClientInviteTransaction*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ims::SharedLoggable<SipConnectionUser>::SharedLoggable((a1 + 600));
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = v11;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientTransaction::SipClientTransaction(a1, &off_1F5EC93F0, v9, v8, v13, a4, a5);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_1F5EC9238;
  *(a1 + 72) = &unk_1F5EC92E8;
  *(a1 + 600) = &unk_1F5EC93D0;
  *(a1 + 120) = &unk_1F5EC9330;
  *(a1 + 128) = &unk_1F5EC9360;
  *(a1 + 584) = 0u;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1E4D7AE9C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  MEMORY[0x1E69225A0](v2 + 640);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v2 + 608));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SipClientNonInviteTryingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC9FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientNonInviteProceedingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECA000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipClientNonInviteCompletedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECA050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipClientNonInviteTransaction>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,std::allocator<SipClientNonInviteTransaction>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ECA0A0;
  std::construct_at[abi:ne200100]<SipClientNonInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,SipClientNonInviteTransaction*>(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<SipClientNonInviteTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECA0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::construct_at[abi:ne200100]<SipClientNonInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest> &,std::shared_ptr<IpAddress> const&,std::string const&,SipClientNonInviteTransaction*>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ims::SharedLoggable<SipConnectionUser>::SharedLoggable(a1 + 73);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = v11;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientTransaction::SipClientTransaction(a1, &off_1F5EC9610, v9, v8, v13, a4, a5);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_1F5EC9458;
  a1[9] = &unk_1F5EC9508;
  a1[73] = &unk_1F5EC95F0;
  a1[15] = &unk_1F5EC9550;
  a1[16] = &unk_1F5EC9580;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1E4D7B408(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v2 + 592));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECA0F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECA0F0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECA0F0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipClientNonInviteTransaction::initialize(void)::$_0,std::allocator<SipClientNonInviteTransaction::initialize(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ims::rtp::createMediaSessionStateMachine(uint64_t *a1)
{
  v10 = 11;
  strcpy(v9, "rtp.session");
  v5[0] = 0;
  v8 = 0;
  v2 = ims::debug(v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "createMediaSessionStateMachine", 30);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MediaSessionStateMachine::create();
}

void sub_1E4D7B850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

ims::lazuli::Chat *ims::lazuli::Chat::Chat(ims::lazuli::Chat *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("LazuliChat", v2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 4) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_1F5ECA1E8;
  return this;
}

void sub_1E4D7C134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  v50 = v47[3];
  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  operator delete(v47);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v46);
  xpc_release(v45);
  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

ims::lazuli::ChatServices *ims::lazuli::ChatServices::ChatServices(ims::lazuli::ChatServices *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("LazuliChatServices", v2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 4) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_1F5ECA288;
  return this;
}

void sub_1E4D7C884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v31);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(&v29[1].__shared_owners_);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v33);
  _Unwind_Resume(a1);
}

void sub_1E4D7C968(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a31 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a20) < 0)
  {
    operator delete(a18);
  }

  JUMPOUT(0x1E4D7C9A0);
}

uint64_t anonymous namespace::ChatImpl::init(xpc::dict)::$_0::~$_0(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECA3D0;
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECA3D0;
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D7CC10(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

xpc_object_t std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5ECA3D0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v5;
  }

  v6 = *(a1 + 56);
  *(a2 + 56) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a2 + 56) = result;
  return result;
}

void sub_1E4D7CCD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && a1[2])
    {
      *&v35[0].__r_.__value_.__l.__data_ = 0uLL;
      (*(*v3 + 120))(&__p, v3);
      IMSClientManager::lazuliDelegateForStack(&__p, v35);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      v6 = v3 + 48;
      v5 = *(v3 + 48);
      if (v35[0].__r_.__value_.__r.__words[0])
      {
        v7 = (*(v5 + 64))(v3 + 48);
        (*(*v6 + 16))(v3 + 48, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Tracking Chat ", 14);
        *(v7 + 17) = 0;
        (*(*v7 + 32))(v7, v3 + 256);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        v8 = v35[0].__r_.__value_.__r.__words[0];
        if (*(v3 + 279) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, *(v3 + 256), *(v3 + 264));
        }

        else
        {
          v53 = *(v3 + 256);
        }

        v11 = *(v3 + 16);
        if (!v11 || (v12 = *(v3 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v51 = v12;
        v52 = v13;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        LazuliDelegate::addChat(v8, &v53, &v51);
        if (v52)
        {
          std::__shared_weak_count::__release_weak(v52);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = (*(v5 + 56))(v3 + 48);
        (*(*v6 + 16))(v3 + 48, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Unable to store Chat ", 21);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, v3 + 256);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
      }

      if (v35[0].__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35[0].__r_.__value_.__l.__size_);
      }

      memset(&v50[1], 0, sizeof(std::string));
      v14 = (a1 + 7);
      v35[0].__r_.__value_.__r.__words[0] = v14;
      v35[0].__r_.__value_.__l.__size_ = "kResourceXml";
      xpc::dict::object_proxy::operator xpc::object(v35, v50);
      __p = 0;
      v21 = 0;
      v22 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      xpc_release(v50[0].__r_.__value_.__l.__data_);
      memset(v50, 0, 24);
      v35[0].__r_.__value_.__r.__words[0] = v14;
      v35[0].__r_.__value_.__l.__size_ = "kSubject";
      xpc::dict::object_proxy::operator xpc::object(v35, &v49);
      __p = 0;
      v21 = 0;
      v22 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      xpc_release(v49.__r_.__value_.__l.__data_);
      memset(&v49, 0, sizeof(v49));
      v35[0].__r_.__value_.__r.__words[0] = v14;
      v35[0].__r_.__value_.__l.__size_ = "kTransactionId";
      xpc::dict::object_proxy::operator xpc::object(v35, &v46);
      __p = 0;
      v21 = 0;
      v22 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      xpc_release(v46);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v35[0].__r_.__value_.__r.__words[0] = v14;
      v35[0].__r_.__value_.__l.__size_ = "kMlsBinaryBlob";
      xpc::dict::object_proxy::operator xpc::object(v35, &object);
      __p = 0;
      v21 = 0;
      v22 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      xpc_release(object);
      size = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
      if ((v50[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v50[1].__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v16 = v46;
        if (v47 == v46)
        {
          goto LABEL_83;
        }
      }

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      memset(v37, 0, sizeof(v37));
      memset(v36, 0, sizeof(v36));
      memset(v35, 0, sizeof(v35));
      v17 = *(v3 + 200);
      if (*(v17 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v35, *(v17 + 24), *(v17 + 32));
      }

      else
      {
        v35[0] = *(v17 + 24);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v35[1], v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
      }

      else
      {
        v35[1] = v49;
      }

      if (*(v3 + 255) < 0)
      {
        std::string::__init_copy_ctor_external(v36, *(v3 + 232), *(v3 + 240));
      }

      else
      {
        v36[0] = *(v3 + 232);
      }

      if (*(v3 + 279) < 0)
      {
        std::string::__init_copy_ctor_external(&v36[1], *(v3 + 256), *(v3 + 264));
        if (*(v3 + 279) < 0)
        {
          std::string::__init_copy_ctor_external(v37, *(v3 + 256), *(v3 + 264));
          goto LABEL_52;
        }
      }

      else
      {
        v36[1] = *(v3 + 256);
      }

      *v37 = *(v3 + 256);
      *&v37[16] = *(v3 + 272);
LABEL_52:
      memset(&v37[24], 0, 128);
      if (SHIBYTE(v50[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37[152], v50[1].__r_.__value_.__l.__data_, v50[1].__r_.__value_.__l.__size_);
      }

      else
      {
        *&v37[152] = v50[1];
      }

      if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, v50[0].__r_.__value_.__l.__data_, v50[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v38 = *&v50[0].__r_.__value_.__l.__data_;
        *&v39 = *(&v50[0].__r_.__value_.__l + 2);
      }

      v40 = 0uLL;
      *(&v39 + 1) = 0;
      if (*(v3 + 303) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *(v3 + 280), *(v3 + 288));
      }

      else
      {
        v18 = *(v3 + 280);
        *&v42 = *(v3 + 296);
        v41 = v18;
      }

      v43 = 0uLL;
      *(&v42 + 1) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v42 + 8, v46, v47, v47 - v46);
      v44 = 0uLL;
      v45 = 0;
      v19 = *(v3 + 216);
      object = *"MOGroupCreate";
      v34 = 0xD00000000000000;
      __p = MEMORY[0x1E69E9820];
      v21 = 1174405120;
      v22 = ___ZZN12_GLOBAL__N_18ChatImpl4initEN3xpc4dictEENK3__0clEv_block_invoke;
      v23 = &__block_descriptor_tmp_36;
      v24 = v3;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = v49;
      }

      if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, v50[0].__r_.__value_.__l.__data_, v50[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v26 = v50[0];
      }

      if (SHIBYTE(v50[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, v50[1].__r_.__value_.__l.__data_, v50[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v50[1];
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v28, v46, v47, v47 - v46);
      LazuliSendParams::LazuliSendParams(v31, v35);
      aBlock = _Block_copy(&__p);
      RegistrationAwareQueue::addBlock(v19, &object, &aBlock);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(object);
      }

      LazuliSendParams::~LazuliSendParams(&v31[0].__r_.__value_.__l.__data_);
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      LazuliSendParams::~LazuliSendParams(&v35[0].__r_.__value_.__l.__data_);
      v16 = v46;
LABEL_83:
      if (v16)
      {
        v47 = v16;
        operator delete(v16);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50[1].__r_.__value_.__l.__data_);
      }

LABEL_91:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return;
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v35, "laz.cht");
  LOBYTE(__p) = 0;
  v25.__r_.__value_.__s.__data_[8] = 0;
  v9 = ims::error(v35, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Chat instance gone for ", 23);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a1 + 4);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v25.__r_.__value_.__s.__data_[8] == 1 && SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v35[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35[0].__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    goto LABEL_91;
  }
}

void sub_1E4D7D6F8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  v4 = *(v2 - 208);
  if (v4)
  {
    *(v2 - 200) = v4;
    operator delete(v4);
  }

  if (*(v2 - 161) < 0)
  {
    operator delete(*(v2 - 184));
  }

  if (*(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  if (*(v2 - 113) < 0)
  {
    operator delete(*(v2 - 136));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::ChatImpl::init(xpc::dict)::$_0,std::allocator<anonymous namespace::ChatImpl::init(xpc::dict)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZN12_GLOBAL__N_18ChatImpl4initEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[6];
  v2 += 6;
  v4 = (*(v3 + 64))(v2);
  (*(*v2 + 16))(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Creating Group Chat txn ", 24);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " subject '", 10);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "' xml ", 6);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " isE2ee=", 8);
  *(v4 + 17) = 0;
  if (a1[15] == a1[14])
  {
    v5 = "false";
  }

  else
  {
    v5 = "true";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v5);
  (*(*v4 + 32))(v4, &__p);
  v6 = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  IPTelephonyManager::getCallManager(v6, &__p);
  IMSCallManager::initializeMOLazuliSession(__p, (a1 + 17), 0, 0);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4D7DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE112c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE136c22_ZTS16LazuliSendParams(uint64_t a1, uint64_t a2)
{
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

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 112, *(a2 + 112), *(a2 + 120), *(a2 + 120) - *(a2 + 112));
  LazuliSendParams::LazuliSendParams((a1 + 136), (a2 + 136));
}

void sub_1E4D7DDE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE112c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE136c22_ZTS16LazuliSendParams(uint64_t a1)
{
  LazuliSendParams::~LazuliSendParams((a1 + 136));
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<anonymous namespace::ChatImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECA480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::ChatImpl::~ChatImpl(_anonymous_namespace_::ChatImpl *this)
{
  v17 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5ECA4D0;
  *(this + 5) = &unk_1F5ECA588;
  *(this + 6) = &unk_1F5ECA5B0;
  *(this + 23) = &unk_1F5ECA610;
  memset(&v15, 0, sizeof(v15));
  v2 = *(this + 25);
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v15 = *(v2 + 24);
  }

  memset(&v14, 0, sizeof(v14));
  if (*(this + 279) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(this + 32), *(this + 33));
  }

  else
  {
    v14 = *(this + 256);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "laz.cht");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(&v7, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Destroying Chat instance for conv ", 34);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, this + 256);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " client refcount ", 17);
  *(v3 + 17) = 0;
  v4 = *(this + 26);
  if (v4)
  {
    v5 = *(v4 + 8) + 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1E6923360](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *&v7.__r_.__value_.__l.__data_ = 0uLL;
  IMSClientManager::lazuliDelegateForStack(&v15.__r_.__value_.__l.__data_, &v7);
  v6 = v7.__r_.__value_.__r.__words[0];
  if (v7.__r_.__value_.__r.__words[0])
  {
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = v14;
    }

    LazuliDelegate::trackPendingBye(v6, &v9.__r_.__value_.__l.__data_);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (v7.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v15;
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v14;
  }

  v16 = 0;
  operator new();
}

{
}

void sub_1E4D7E400(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (v2[31] < 0)
    {
      operator delete(*v3);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ChatImpl::changeGroupChatInfo(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatImpl::sendMessage(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatImpl::addParticipant(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 56))(a1, &object);
  xpc_release(object);
}

void anonymous namespace::ChatImpl::removeParticipant(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 64))(a1, &object);
  xpc_release(object);
}

void anonymous namespace::ChatImpl::addParticipants(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatImpl::removeParticipants(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatImpl::requestMlsGroupInfo(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatImpl::contributionId(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void anonymous namespace::ChatImpl::conversationId(_anonymous_namespace_::ChatImpl *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 279) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 32), *(this + 33));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 16);
    a2->__r_.__value_.__r.__words[2] = *(this + 34);
  }
}

uint64_t anonymous namespace::ChatImpl::setContributionId(uint64_t a1)
{
  v1 = a1 + 48;
  v2 = (*(*(a1 + 48) + 56))(a1 + 48);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "deprecated-- setContributionId for ", 35);
  *(v2 + 17) = 0;
  (*(*v2 + 32))(v2, v1 + 208);
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

std::string *anonymous namespace::ChatImpl::setConversationId(uint64_t a1, const std::string *a2)
{
  v3 = a1 + 48;
  v4 = (*(*(a1 + 48) + 56))(a1 + 48);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "deprecated-- clobbering conversation ID ", 40);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, v3 + 208);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " as ", 4);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;

  return std::string::operator=((v3 + 208), a2);
}

void anonymous namespace::ChatImpl::chatId(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void anonymous namespace::ChatImpl::stackId(_anonymous_namespace_::ChatImpl *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 25);
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    v3 = *(v2 + 24);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 40);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void anonymous namespace::ChatImpl::leaveGroupChat(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

std::string *anonymous namespace::ChatImpl::newRemoteUriAvailable(uint64_t a1, const std::string *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ims::getStaticLoggerFor("laz.cht", &v10);
  v4 = *&v11[4];
  ctu::OsLogContext::~OsLogContext(&v10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v6 = *v6;
    }

    v7 = a2;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    v10 = 136315651;
    *v11 = v5;
    *&v11[8] = 2085;
    *&v11[10] = v6;
    v12 = 2085;
    v13 = v7;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "Updating URI of conversation %s from %{sensitive}s to %{sensitive}s", &v10, 0x20u);
  }

  result = std::string::operator=((a1 + 232), a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *anonymous namespace::ChatImpl::newMlsOpaqueTokenAvailable(uint64_t a1, const std::string *a2)
{
  v3 = a1 + 48;
  v4 = (*(*(a1 + 48) + 64))(a1 + 48);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Updating MLS opaque token of conversation ", 42);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, v3 + 208);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;

  return std::string::operator=((v3 + 232), a2);
}

void anonymous namespace::ChatImpl::remoteUri(_anonymous_namespace_::ChatImpl *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 255) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 29), *(this + 30));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 232);
    a2->__r_.__value_.__r.__words[2] = *(this + 31);
  }
}

void non-virtual thunk toanonymous namespace::ChatImpl::remoteUri(_anonymous_namespace_::ChatImpl *this@<X0>, std::string *a2@<X8>)
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

void non-virtual thunk toanonymous namespace::ChatImpl::~ChatImpl(_anonymous_namespace_::ChatImpl *this)
{
}

{
}

{
}

{
}

void ims::Loggable<anonymous namespace::ChatImpl>::~Loggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 8);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECA718;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECA718;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D7F478(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5ECA718;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }
}

void sub_1E4D7F540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 8), &v18);
  v2 = v18;
  if (!v18)
  {
LABEL_25:
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, "laz.cht");
    LOBYTE(__p[0]) = 0;
    v17 = 0;
    v8 = ims::debug(&v18, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "terminate ", 10);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a1 + 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " on ", 4);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a1 + 8);
    v9 = (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    IPTelephonyManager::getCallManager(v9, &v12);
    v10 = v12;
    std::string::basic_string[abi:ne200100]<0>(&v18, "TerminateChat");
    object = xpc_null_create();
    IMSCallManager::terminateLazuli(v10, a1 + 32, &v18, &object, 0);
    xpc_release(object);
    object = 0;
    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    return;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v26 = *(a1 + 32);
  }

  hasPendingBye = LazuliDelegate::hasPendingBye(v2, &v26.__r_.__value_.__l.__data_);
  v4 = hasPendingBye;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if (v4)
    {
LABEL_7:
      std::string::basic_string[abi:ne200100]<0>(__p, "laz.cht");
      v22[0] = 0;
      v25 = 0;
      v5 = ims::debug(__p, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Removing Chat ", 14);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, a1 + 32);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v18;
      if (*(a1 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        v21 = *(a1 + 32);
      }

      LazuliDelegate::removeChat(v6, &v21.__r_.__value_.__l.__data_);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      goto LABEL_25;
    }
  }

  else if (hasPendingBye)
  {
    goto LABEL_7;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "laz.cht");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(__p, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Pending BYE has been reset by new chat with same conversationID. Not terminating session.", 89);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D7F994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, std::__shared_weak_count *a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<anonymous namespace::ChatImpl::~ChatImpl()::$_0,std::allocator<anonymous namespace::ChatImpl::~ChatImpl()::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0>(anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v3 = *v1++;
  v2 = v3;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v25[0].__r_.__value_.__r.__words[0] = v1;
  v25[0].__r_.__value_.__l.__size_ = "kBody";
  xpc::dict::object_proxy::operator xpc::object(v25, &v38);
  xpc::dyn_cast_or_default();
  xpc_release(v38.__r_.__value_.__l.__data_);
  memset(&v38, 0, sizeof(v38));
  v25[0].__r_.__value_.__r.__words[0] = v1;
  v25[0].__r_.__value_.__l.__size_ = "kContentType";
  xpc::dict::object_proxy::operator xpc::object(v25, &v37);
  xpc::dyn_cast_or_default();
  xpc_release(v37.__r_.__value_.__l.__data_);
  memset(&v37, 0, sizeof(v37));
  v25[0].__r_.__value_.__r.__words[0] = v1;
  v25[0].__r_.__value_.__l.__size_ = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(v25, object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    ImsUuid::generate(__p);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v25, *&__p[8], *&__p[16]);
    }

    else
    {
      v25[0] = *&__p[8];
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v37 = v25[0];
    *(&v25[0].__r_.__value_.__s + 23) = 0;
    v25[0].__r_.__value_.__s.__data_[0] = 0;
    *__p = &unk_1F5EBEE78;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    v5 = (*(*(v2 + 48) + 56))(v2 + 48);
    (*(*(v2 + 48) + 16))(v2 + 48, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "transaction not provided, using uuid ", 37);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, &v37);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
  }

  v6 = (*(*(v2 + 48) + 64))(v2 + 48);
  (*(*(v2 + 48) + 16))(v2 + 48, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "changing group chat info ", 25);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, v2 + 256);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " on ", 4);
  *(v6 + 17) = 0;
  v7 = *(v2 + 200);
  if (*(v7 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *(v7 + 24), *(v7 + 32));
  }

  else
  {
    *__p = *(v7 + 24);
  }

  (*(*v6 + 32))(v6, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " type is ", 9);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, &v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " body length ", 13);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923370](*(v6 + 8), v40 - v39);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v8 = *(v2 + 16);
  if (!v8 || (v9 = *(v2 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  memset(v36, 0, sizeof(v36));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v12 = *(v2 + 200);
  if (*(v12 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v25, *(v12 + 24), *(v12 + 32));
  }

  else
  {
    v25[0] = *(v12 + 24);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25[1], v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v25[1] = v37;
  }

  if (*(v2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v26, *(v2 + 232), *(v2 + 240));
  }

  else
  {
    v26[0] = *(v2 + 232);
  }

  if ((*(v2 + 279) & 0x80000000) == 0)
  {
    v26[1] = *(v2 + 256);
LABEL_31:
    v27[0] = *(v2 + 256);
    goto LABEL_32;
  }

  std::string::__init_copy_ctor_external(&v26[1], *(v2 + 256), *(v2 + 264));
  if ((*(v2 + 279) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external(v27, *(v2 + 256), *(v2 + 264));
LABEL_32:
  memset(&v27[1], 0, 48);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27[2], v39, v40, v40 - v39);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27[3], v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v27[3] = v38;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (*(v2 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(v36, *(v2 + 280), *(v2 + 288));
  }

  else
  {
    v13 = *(v2 + 280);
    v36[0].__r_.__value_.__r.__words[2] = *(v2 + 296);
    *&v36[0].__r_.__value_.__l.__data_ = v13;
  }

  memset(&v36[1], 0, 48);
  v14 = *(v2 + 216);
  *object = *"MOGroupModify";
  v24 = 0xD00000000000000;
  *__p = MEMORY[0x1E69E9820];
  *&__p[8] = 1174405120;
  *&__p[16] = ___ZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEv_block_invoke;
  *&__p[24] = &__block_descriptor_tmp_61_1;
  v19 = v9;
  v20 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LazuliSendParams::LazuliSendParams(v21, v25);
  aBlock = _Block_copy(__p);
  RegistrationAwareQueue::addBlock(v14, object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(object[0]);
  }

  LazuliSendParams::~LazuliSendParams(&v21[0].__r_.__value_.__l.__data_);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  LazuliSendParams::~LazuliSendParams(&v25[0].__r_.__value_.__l.__data_);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v16);
}

void sub_1E4D80290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a71);
  }

  std::__shared_weak_count::__release_weak(v71);
  if (*(v72 - 121) < 0)
  {
    operator delete(*(v72 - 144));
  }

  if (*(v72 - 89) < 0)
  {
    operator delete(*(v72 - 112));
  }

  v74 = *(v72 - 88);
  if (v74)
  {
    *(v72 - 80) = v74;
    operator delete(v74);
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::changeGroupChatInfo(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[4];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(v3, (a1 + 6));
  v4 = 0;
  operator new();
}

void sub_1E4D80690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11 - 72);
  _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a11);
  _Unwind_Resume(a1);
}

void sub_1E4D806D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x1E4D806D0);
}

uint64_t _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(uint64_t a1)
{
  LazuliSendParams::~LazuliSendParams((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void __copy_helper_block_e8_32c42_ZTSKNSt3__18weak_ptrIN3ims6lazuli4ChatEEE48c22_ZTS16LazuliSendParams(std::string *a1, void *a2)
{
  v2 = a2[5];
  a1[1].__r_.__value_.__l.__size_ = a2[4];
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a1 + 2, (a2 + 6));
}

void sub_1E4D80768(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c42_ZTSKNSt3__18weak_ptrIN3ims6lazuli4ChatEEE48c22_ZTS16LazuliSendParams(uint64_t a1)
{
  LazuliSendParams::~LazuliSendParams((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA7C8;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA7C8;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D8090C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7__cloneEPNS0_6__baseISA_EE(void *a1, std::string *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a2->__r_.__value_.__r.__words[0] = &unk_1F5ECA7C8;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a2 + 1, (a1 + 3));
}

void sub_1E4D80990(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v20);
      IMSSMSManager::changeLazuliGroupInfo(v20, (a1 + 24));
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

LABEL_45:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  BambiClient::clientConfigForStackId(&v28);
  std::string::basic_string[abi:ne200100]<0>(&v25, "laz.cht");
  v20 = v28;
  LODWORD(v21) = DWORD2(v28);
  if (SBYTE7(v30) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v29, *(&v29 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v29;
    __p.__r_.__value_.__r.__words[2] = v30;
  }

  v23 = BYTE8(v30);
  v24 = 1;
  v4 = ims::error(&v25, &v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Chat instance gone for ", 23);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 96);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 48);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v24 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v25 = 0;
  v26 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 24), &v25);
  if (v25)
  {
    v19 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v19 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v19 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_23;
      }
    }

    if (MEMORY[0x1E6924740](v6) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v6);
LABEL_24:
      xpc_release(v6);
      v17 = xpc_BOOL_create(0);
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v15, &v17, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v17);
      v17 = 0;
      if (*(a1 + 119) >= 0)
      {
        v8 = (a1 + 96);
      }

      else
      {
        v8 = *(a1 + 96);
      }

      v13 = xpc_string_create(v8);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
      xpc_release(v14);
      v14 = 0;
      xpc_release(v13);
      v13 = 0;
      if (*(a1 + 71) >= 0)
      {
        v9 = (a1 + 48);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      v11 = xpc_string_create(v9);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
      xpc_release(v12);
      v12 = 0;
      xpc_release(v11);
      v11 = 0;
      v10 = v25;
      v15 = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        v15 = xpc_null_create();
      }

      LazuliDelegate::handleGroupChatUpdate(v10, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v19);
      goto LABEL_40;
    }

    v7 = xpc_null_create();
LABEL_23:
    v19 = v7;
    goto LABEL_24;
  }

LABEL_40:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(v29);
  }

  if (v3)
  {
    goto LABEL_45;
  }
}

void sub_1E4D80E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(uint64_t a1)
{
  LazuliSendParams::~LazuliSendParams((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0>(anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v51 = a1;
  v52 = v1;
  v4 = *v1;
  v3 = v1 + 1;
  v2 = v4;
  v73 = 0;
  v72 = 0;
  v74 = 0;
  v55[0] = v3;
  v55[1] = "kBody";
  xpc::dict::object_proxy::operator xpc::object(v55, &object);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(object.__r_.__value_.__l.__data_);
  memset(&object, 0, sizeof(object));
  v55[0] = v3;
  v55[1] = "kContentType";
  xpc::dict::object_proxy::operator xpc::object(v55, &v69);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v69);
  v69 = 0uLL;
  v70 = 0;
  v55[0] = v3;
  v55[1] = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(v55, &v68);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v68.__r_.__value_.__l.__data_);
  memset(&v68, 0, sizeof(v68));
  v55[0] = v3;
  v55[1] = "kContributionId";
  xpc::dict::object_proxy::operator xpc::object(v55, &v67);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v67.__r_.__value_.__l.__data_);
  memset(&v67, 0, sizeof(v67));
  v55[0] = v3;
  v55[1] = "kInReplyToContributionId";
  xpc::dict::object_proxy::operator xpc::object(v55, &v66);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v66.__r_.__value_.__l.__data_);
  memset(&v66, 0, sizeof(v66));
  v55[0] = v3;
  v55[1] = "kMessageType";
  xpc::dict::object_proxy::operator xpc::object(v55, &v65);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v65.__r_.__value_.__l.__data_);
  __p.__r_.__value_.__r.__words[0] = v3;
  __p.__r_.__value_.__l.__size_ = "kOriginalMessageSize";
  xpc::dict::object_proxy::operator xpc::object(&__p, v55);
  v5 = xpc::dyn_cast_or_default(v55, 0);
  xpc_release(v55[0]);
  memset(&v65, 0, sizeof(v65));
  v6 = &v65;
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v65, v72, v73, v73 - v72);
  size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
  v9 = v65.__r_.__value_.__r.__words[0];
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v65.__r_.__value_.__l.__size_;
    v6 = v65.__r_.__value_.__r.__words[0];
  }

  if (size >= 12)
  {
    v10 = v6 + size;
    v11 = v6;
    do
    {
      v12 = memchr(v11, 67, size - 11);
      if (!v12)
      {
        break;
      }

      if (*v12 == *"Content-Type" && *(v12 + 2) == *"Type")
      {
        if (v12 == v10 || v12 - v6 == -1)
        {
          break;
        }

        std::string::basic_string(&__p, &v65, 0, v12 - v6, v55);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        v65 = __p;
        goto LABEL_33;
      }

      v11 = (v12 + 1);
      size = v10 - v11;
    }

    while (v10 - v11 >= 12);
  }

  if (v8 < 0)
  {
    v65.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    *(&v65.__r_.__value_.__s + 23) = 0;
    v9 = &v65;
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
LABEL_33:
  v14 = HIBYTE(v70);
  if (v70 < 0)
  {
    v14 = *(&v69 + 1);
  }

  if (!v14)
  {
    ImsUuid::generate(&__p);
    if (SHIBYTE(v76) < 0)
    {
      std::string::__init_copy_ctor_external(v55, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      *v55 = *&__p.__r_.__value_.__r.__words[1];
      *&v56[0] = v76;
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    v69 = *v55;
    v70 = *&v56[0];
    BYTE7(v56[0]) = 0;
    LOBYTE(v55[0]) = 0;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }

    v15 = (*(*(v2 + 48) + 56))(v2 + 48);
    (*(*(v2 + 48) + 16))(v2 + 48, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "transaction not provided, using uuid ", 37);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, &v69);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
  }

  v16 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v68.__r_.__value_.__l.__size_;
  }

  if (!v16)
  {
    ImsUuid::generate(&__p);
    if (SHIBYTE(v76) < 0)
    {
      std::string::__init_copy_ctor_external(v55, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      *v55 = *&__p.__r_.__value_.__r.__words[1];
      *&v56[0] = v76;
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    *&v68.__r_.__value_.__l.__data_ = *v55;
    v68.__r_.__value_.__r.__words[2] = *&v56[0];
    BYTE7(v56[0]) = 0;
    LOBYTE(v55[0]) = 0;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }

    v17 = (*(*(v2 + 48) + 56))(v2 + 48);
    (*(*(v2 + 48) + 16))(v2 + 48, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "contributionId not provided, using uuid ", 40);
    *(v17 + 17) = 0;
    (*(*v17 + 32))(v17, &v68);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
  }

  memset(&v64, 0, sizeof(v64));
  if (v5)
  {
    v18 = v5;
    goto LABEL_57;
  }

  v18 = v73 - v72;
  if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v66.__r_.__value_.__r.__words[2]) != 5)
    {
      if (HIBYTE(v66.__r_.__value_.__r.__words[2]) == 10)
      {
        v31 = v66.__r_.__value_.__r.__words[0];
        v32 = *"kComposing";
        v33 = LOWORD(v66.__r_.__value_.__r.__words[1]);
        v34 = *"ng";
      }

      else
      {
        if (HIBYTE(v66.__r_.__value_.__r.__words[2]) != 12)
        {
          goto LABEL_57;
        }

        v31 = v66.__r_.__value_.__r.__words[0];
        v32 = *"kMessageText";
        v33 = LODWORD(v66.__r_.__value_.__r.__words[1]);
        v34 = *"Text";
      }

      if (v31 != v32 || v33 != v34)
      {
        goto LABEL_57;
      }

      goto LABEL_155;
    }

    v44 = &v66;
LABEL_157:
    data = v44->__r_.__value_.__l.__data_;
    v49 = v44->__r_.__value_.__s.__data_[4];
    if (data != *"kImdn" || v49 != str_37_5[4])
    {
      goto LABEL_57;
    }

    v47 = "MOImdn";
LABEL_163:
    std::string::operator=(&v64, v47);
    goto LABEL_57;
  }

  switch(v66.__r_.__value_.__l.__size_)
  {
    case 5uLL:
      v44 = v66.__r_.__value_.__r.__words[0];
      goto LABEL_157;
    case 0xAuLL:
      v39 = *v66.__r_.__value_.__l.__data_;
      v40 = *"kComposing";
      v41 = *(v66.__r_.__value_.__r.__words[0] + 8);
      v42 = *"ng";
      break;
    case 0xCuLL:
      v39 = *v66.__r_.__value_.__l.__data_;
      v40 = *"kMessageText";
      v41 = *(v66.__r_.__value_.__r.__words[0] + 8);
      v42 = *"Text";
      break;
    default:
      goto LABEL_57;
  }

  if (v39 == v40 && v41 == v42)
  {
LABEL_155:
    v46 = (*(*(v2 + 48) + 56))(v2 + 48);
    (*(*(v2 + 48) + 16))(v2 + 48, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "original content size not provided for encoded user text, using encoded size", 76);
    *(v46 + 17) = 0;
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v46 + 17) = 0;
    v47 = "MOMessage";
    goto LABEL_163;
  }

LABEL_57:
  ims::getStaticLoggerFor("laz.cht", &__p);
  v19 = __p.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = (v2 + 232);
    if (*(v2 + 255) < 0)
    {
      v20 = *v20;
    }

    if (v70 >= 0)
    {
      v21 = &v69;
    }

    else
    {
      v21 = v69;
    }

    v22 = (v2 + 256);
    if (*(v2 + 279) < 0)
    {
      v22 = *v22;
    }

    (*(*v2 + 120))(v55, v2);
    if ((SBYTE7(v56[0]) & 0x80u) == 0)
    {
      v23 = v55;
    }

    else
    {
      v23 = v55[0];
    }

    p_object = &object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_object = object.__r_.__value_.__r.__words[0];
    }

    v25 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v65.__r_.__value_.__l.__size_;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136316674;
    *(__p.__r_.__value_.__r.__words + 4) = v20;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v21;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
    v76 = v22;
    *v77 = 2080;
    *&v77[2] = v23;
    *&v77[10] = 2080;
    *&v77[12] = p_object;
    v78 = 2048;
    v79 = v73 - v72;
    v80 = 2048;
    v81 = v25;
    _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "sending to %s trx %s conversation %s on %s type %s length %zu cpimHeaderLength %zu", &__p, 0x48u);
    if (SBYTE7(v56[0]) < 0)
    {
      operator delete(v55[0]);
    }
  }

  v26 = *(v2 + 16);
  if (!v26 || (v27 = *(v2 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  v60 = 0u;
  v61 = 0u;
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  *v55 = 0u;
  v30 = *(v2 + 200);
  if (*(v30 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v55, *(v30 + 24), *(v30 + 32));
  }

  else
  {
    *v55 = *(v30 + 24);
    *&v56[0] = *(v30 + 40);
  }

  if (SHIBYTE(v70) < 0)
  {
    std::string::__init_copy_ctor_external((v56 + 8), v69, *(&v69 + 1));
  }

  else
  {
    *(v56 + 8) = v69;
    *(&v56[1] + 1) = v70;
  }

  if (*(v2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v57, *(v2 + 232), *(v2 + 240));
  }

  else
  {
    v57[0] = *(v2 + 232);
  }

  if (*(v2 + 279) < 0)
  {
    std::string::__init_copy_ctor_external(&v57[1], *(v2 + 256), *(v2 + 264));
  }

  else
  {
    v57[1] = *(v2 + 256);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v58, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v58[0] = v68;
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58[1], v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v58[1] = v67;
  }

  memset(v59, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v59, v72, v73, v73 - v72);
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59[1], object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
  }

  else
  {
    v59[1] = object;
  }

  v60 = 0uLL;
  *&v61 = 0;
  *(&v61 + 1) = v18;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v62, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v62[0] = v66;
  }

  memset(&v62[1], 0, 48);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62[3], v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v62[3] = v65;
  }

  if (*(v2 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(v63, *(v2 + 280), *(v2 + 288));
  }

  else
  {
    v35 = *(v2 + 280);
    v63[0].__r_.__value_.__r.__words[2] = *(v2 + 296);
    *&v63[0].__r_.__value_.__l.__data_ = v35;
  }

  memset(&v63[1], 0, 48);
  v36 = *(v2 + 216);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v64;
  }

  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 1174405120;
  __p.__r_.__value_.__r.__words[2] = ___ZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEv_block_invoke;
  v76 = &__block_descriptor_tmp_68_1;
  *v77 = v27;
  *&v77[8] = v29;
  atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LazuliSendParams::LazuliSendParams(&v77[16], v55);
  aBlock = _Block_copy(&__p);
  RegistrationAwareQueue::addBlock(v36, &v54, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  LazuliSendParams::~LazuliSendParams(&v77[16]);
  if (*&v77[8])
  {
    std::__shared_weak_count::__release_weak(*&v77[8]);
  }

  LazuliSendParams::~LazuliSendParams(v55);
  std::__shared_weak_count::__release_weak(v29);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  result = std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v51);
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D81DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *aBlock, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  v73 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v73;
    operator delete(v73);
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::sendMessage(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[4];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(v3, (a1 + 6));
  v4 = 0;
  operator new();
}

void sub_1E4D82304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11 - 72);
  _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a11);
  _Unwind_Resume(a1);
}

void sub_1E4D8234C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x1E4D82344);
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA878;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA878;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D824A0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7__cloneEPNS0_6__baseISA_EE(void *a1, std::string *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a2->__r_.__value_.__r.__words[0] = &unk_1F5ECA878;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a2 + 1, (a1 + 3));
}

void sub_1E4D82524(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v23);
      IMSSMSManager::sendLazuli(v23, (a1 + 24));
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

LABEL_50:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  BambiClient::clientConfigForStackId(&v31);
  std::string::basic_string[abi:ne200100]<0>(&v28, "laz.cht");
  v23 = v31;
  LODWORD(v24) = DWORD2(v31);
  if (SBYTE7(v33) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v32, *(&v32 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v32;
    __p.__r_.__value_.__r.__words[2] = v33;
  }

  v26 = BYTE8(v33);
  v27 = 1;
  v4 = ims::error(&v28, &v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Chat instance gone for ", 23);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 96);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 48);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v28);
  }

  v28 = 0;
  v29 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 24), &v28);
  if (v28)
  {
    v22 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v22 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v22 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_23;
      }
    }

    if (MEMORY[0x1E6924740](v6) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v6);
LABEL_24:
      xpc_release(v6);
      v20 = xpc_BOOL_create(0);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      v18 = &v22;
      v19 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v18, &v20, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v20);
      v20 = 0;
      if (*(a1 + 119) >= 0)
      {
        v8 = (a1 + 96);
      }

      else
      {
        v8 = *(a1 + 96);
      }

      v16 = xpc_string_create(v8);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      v18 = &v22;
      v19 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v18, &v16, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v16);
      v16 = 0;
      if (*(a1 + 143) >= 0)
      {
        v9 = (a1 + 120);
      }

      else
      {
        v9 = *(a1 + 120);
      }

      v14 = xpc_string_create(v9);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      v18 = &v22;
      v19 = "kContributionId";
      xpc::dict::object_proxy::operator=(&v18, &v14, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v14);
      v14 = 0;
      if (*(a1 + 71) >= 0)
      {
        v10 = (a1 + 48);
      }

      else
      {
        v10 = *(a1 + 48);
      }

      v12 = xpc_string_create(v10);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      v18 = &v22;
      v19 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v18, &v12, &v13);
      xpc_release(v13);
      v13 = 0;
      xpc_release(v12);
      v12 = 0;
      v11 = v28;
      v18 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v18 = xpc_null_create();
      }

      LazuliDelegate::handleMessageSend(v11, &v18);
      xpc_release(v18);
      v18 = 0;
      xpc_release(v22);
      goto LABEL_45;
    }

    v7 = xpc_null_create();
LABEL_23:
    v22 = v7;
    goto LABEL_24;
  }

LABEL_45:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }

  if (v3)
  {
    goto LABEL_50;
  }
}

void sub_1E4D82A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl11sendMessageEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0>(anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  v51 = 0uLL;
  v52 = 0;
  object[0] = v2;
  object[1] = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(object, &v48);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  xpc_release(v48);
  __p.__r_.__value_.__r.__words[0] = v2;
  __p.__r_.__value_.__l.__size_ = "kRemoteUriList";
  xpc::dict::object_proxy::operator xpc::object(&__p, object);
  v5 = xpc_null_create();
  v6 = object[0];
  v7 = MEMORY[0x1E69E9E50];
  if (object[0] && MEMORY[0x1E6924740](object[0]) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x1E6924740](v6) != v7)
  {
    if (v5)
    {
      xpc_retain(v5);
      v8 = v5;
    }

    else
    {
      v8 = xpc_null_create();
    }

    xpc_release(v6);
    v6 = v8;
  }

  xpc_release(v5);
  xpc_release(object[0]);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::array::iterator::iterator(&v44, &__p.__r_.__value_.__l.__data_, 0);
  xpc_release(__p.__r_.__value_.__l.__data_);
  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  if (MEMORY[0x1E6924740](v6) == v7)
  {
    count = xpc_array_get_count(v6);
  }

  else
  {
    count = 0;
  }

  xpc::array::iterator::iterator(v33, &__p.__r_.__value_.__l.__data_, count);
  xpc_release(__p.__r_.__value_.__l.__data_);
  for (i = v45; i != v33[1] || v44 != v33[0]; i = ++v45)
  {
    v47 = 0;
    __p.__r_.__value_.__r.__words[0] = &v44;
    __p.__r_.__value_.__l.__size_ = i;
    xpc::array::object_proxy::operator xpc::object(&__p, &v47);
    memset(&__p, 0, sizeof(__p));
    object[0] = 0;
    object[1] = 0;
    *&v36[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v36[0]) < 0)
    {
      operator delete(object[0]);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v48, &__p);
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v12 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(v47);
  }

  xpc_release(v33[0]);
  xpc_release(v44);
  if (v48 == v49)
  {
    memset(&__p, 0, sizeof(__p));
    v44 = v2;
    v45 = "kRemoteUri";
    xpc::dict::object_proxy::operator xpc::object(&v44, v33);
    object[0] = 0;
    object[1] = 0;
    *&v36[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v36[0]) < 0)
    {
      operator delete(object[0]);
    }

    xpc_release(v33[0]);
    std::vector<std::string>::push_back[abi:ne200100](&v48, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  object[0] = v2;
  object[1] = "kMlsBinaryBlob";
  xpc::dict::object_proxy::operator xpc::object(object, v33);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v33[0]);
  v13 = HIBYTE(v52);
  if (v52 < 0)
  {
    v13 = *(&v51 + 1);
  }

  if (!v13)
  {
    ImsUuid::generate(&__p);
    if (SHIBYTE(v29) < 0)
    {
      std::string::__init_copy_ctor_external(object, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      *object = *&__p.__r_.__value_.__r.__words[1];
      *&v36[0] = v29;
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    v51 = *object;
    v52 = *&v36[0];
    BYTE7(v36[0]) = 0;
    LOBYTE(object[0]) = 0;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }

    v14 = (*(*(v3 + 48) + 56))(v3 + 48);
    (*(*(v3 + 48) + 16))(v3 + 48, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "transaction not provided, using uuid ", 37);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, &v51);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }

  v15 = (*(*(v3 + 48) + 64))(v3 + 48);
  (*(*(v3 + 48) + 16))(v3 + 48, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "adding ", 7);
  *(v15 + 17) = 0;
  MEMORY[0x1E6923370](*(v15 + 8), 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " group participant(s) trx ", 26);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, &v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " conversation ", 14);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, v3 + 256);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " on ", 4);
  *(v15 + 17) = 0;
  v16 = *(v3 + 200);
  if (*(v16 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v16 + 24), *(v16 + 32));
  }

  else
  {
    __p = *(v16 + 24);
  }

  (*(*v15 + 32))(v15, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " isE2ee=", 8);
  *(v15 + 17) = 0;
  if (v45 == v44)
  {
    v17 = "false";
  }

  else
  {
    v17 = "true";
  }

  std::string::basic_string[abi:ne200100]<0>(object, v17);
  (*(*v15 + 32))(v15, object);
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (SBYTE7(v36[0]) < 0)
  {
    operator delete(object[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(v3 + 16);
  if (!v18 || (v19 = *(v3 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  *object = 0u;
  memset(v36, 0, sizeof(v36));
  v22 = *(v3 + 200);
  if (*(v22 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(object, *(v22 + 24), *(v22 + 32));
  }

  else
  {
    *object = *(v22 + 24);
    *&v36[0] = *(v22 + 40);
  }

  if (SHIBYTE(v52) < 0)
  {
    std::string::__init_copy_ctor_external((v36 + 8), v51, *(&v51 + 1));
  }

  else
  {
    *(v36 + 8) = v51;
    *(&v36[1] + 1) = v52;
  }

  if (*(v3 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v37, *(v3 + 232), *(v3 + 240));
  }

  else
  {
    v37[0] = *(v3 + 232);
  }

  if ((*(v3 + 279) & 0x80000000) == 0)
  {
    v37[1] = *(v3 + 256);
LABEL_73:
    *v38 = *(v3 + 256);
    *&v38[16] = *(v3 + 272);
    goto LABEL_74;
  }

  std::string::__init_copy_ctor_external(&v37[1], *(v3 + 256), *(v3 + 264));
  if ((*(v3 + 279) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

  std::string::__init_copy_ctor_external(v38, *(v3 + 256), *(v3 + 264));
LABEL_74:
  memset(&v38[24], 0, 96);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v38[96], v48, v49, 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  memset(&v38[120], 0, 104);
  if (*(v3 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(v3 + 280), *(v3 + 288));
  }

  else
  {
    v23 = *(v3 + 280);
    *&v40 = *(v3 + 296);
    v39 = v23;
  }

  v41 = 0uLL;
  *(&v40 + 1) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v40 + 8, v44, v45, v45 - v44);
  v42 = 0uLL;
  v43 = 0;
  v24 = *(v3 + 216);
  *v33 = *"MOGroupModify";
  v34 = 0xD00000000000000;
  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 1174405120;
  __p.__r_.__value_.__r.__words[2] = ___ZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEv_block_invoke;
  v29 = &__block_descriptor_tmp_74_0;
  v30 = v19;
  v31 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LazuliSendParams::LazuliSendParams(v32, object);
  v47 = _Block_copy(&__p);
  RegistrationAwareQueue::addBlock(v24, v33, &v47);
  if (v47)
  {
    _Block_release(v47);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  LazuliSendParams::~LazuliSendParams(&v32[0].__r_.__value_.__l.__data_);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  LazuliSendParams::~LazuliSendParams(object);
  std::__shared_weak_count::__release_weak(v21);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  object[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](object);
  xpc_release(v6);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v26);
}

void sub_1E4D835DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a71);
  }

  std::__shared_weak_count::__release_weak(v72);
  v75 = *(v73 - 168);
  if (v75)
  {
    *(v73 - 160) = v75;
    operator delete(v75);
  }

  a71 = (v73 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a71);
  xpc_release(v71);
  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::addParticipants(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[4];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(v3, (a1 + 6));
  v4 = 0;
  operator new();
}

void sub_1E4D83B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11 - 72);
  _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a11);
  _Unwind_Resume(a1);
}

void sub_1E4D83B48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x1E4D83B40);
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA928;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA928;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D83CD0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7__cloneEPNS0_6__baseISA_EE(void *a1, std::string *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a2->__r_.__value_.__r.__words[0] = &unk_1F5ECA928;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a2 + 1, (a1 + 3));
}

void sub_1E4D83D54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v20);
      IMSSMSManager::addParticipants(v20, (a1 + 24));
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

LABEL_45:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  BambiClient::clientConfigForStackId(&v28);
  std::string::basic_string[abi:ne200100]<0>(&v25, "laz.cht");
  v20 = v28;
  LODWORD(v21) = DWORD2(v28);
  if (SBYTE7(v30) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v29, *(&v29 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v29;
    __p.__r_.__value_.__r.__words[2] = v30;
  }

  v23 = BYTE8(v30);
  v24 = 1;
  v4 = ims::error(&v25, &v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Chat instance gone for ", 23);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 96);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 48);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v24 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v25 = 0;
  v26 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 24), &v25);
  if (v25)
  {
    v19 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v19 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v19 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_23;
      }
    }

    if (MEMORY[0x1E6924740](v6) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v6);
LABEL_24:
      xpc_release(v6);
      v17 = xpc_BOOL_create(0);
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v15, &v17, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v17);
      v17 = 0;
      if (*(a1 + 119) >= 0)
      {
        v8 = (a1 + 96);
      }

      else
      {
        v8 = *(a1 + 96);
      }

      v13 = xpc_string_create(v8);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
      xpc_release(v14);
      v14 = 0;
      xpc_release(v13);
      v13 = 0;
      if (*(a1 + 71) >= 0)
      {
        v9 = (a1 + 48);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      v11 = xpc_string_create(v9);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
      xpc_release(v12);
      v12 = 0;
      xpc_release(v11);
      v11 = 0;
      v10 = v25;
      v15 = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        v15 = xpc_null_create();
      }

      LazuliDelegate::handleParticipantAdded(v10, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v19);
      goto LABEL_40;
    }

    v7 = xpc_null_create();
LABEL_23:
    v19 = v7;
    goto LABEL_24;
  }

LABEL_40:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(v29);
  }

  if (v3)
  {
    goto LABEL_45;
  }
}

void sub_1E4D841FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl15addParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0>(anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  v51 = 0uLL;
  v52 = 0;
  object[0] = v2;
  object[1] = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(object, &v48);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  xpc_release(v48);
  __p.__r_.__value_.__r.__words[0] = v2;
  __p.__r_.__value_.__l.__size_ = "kRemoteUriList";
  xpc::dict::object_proxy::operator xpc::object(&__p, object);
  v5 = xpc_null_create();
  v6 = object[0];
  v7 = MEMORY[0x1E69E9E50];
  if (object[0] && MEMORY[0x1E6924740](object[0]) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x1E6924740](v6) != v7)
  {
    if (v5)
    {
      xpc_retain(v5);
      v8 = v5;
    }

    else
    {
      v8 = xpc_null_create();
    }

    xpc_release(v6);
    v6 = v8;
  }

  xpc_release(v5);
  xpc_release(object[0]);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::array::iterator::iterator(&v44, &__p.__r_.__value_.__l.__data_, 0);
  xpc_release(__p.__r_.__value_.__l.__data_);
  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  if (MEMORY[0x1E6924740](v6) == v7)
  {
    count = xpc_array_get_count(v6);
  }

  else
  {
    count = 0;
  }

  xpc::array::iterator::iterator(v33, &__p.__r_.__value_.__l.__data_, count);
  xpc_release(__p.__r_.__value_.__l.__data_);
  for (i = v45; i != v33[1] || v44 != v33[0]; i = ++v45)
  {
    v47 = 0;
    __p.__r_.__value_.__r.__words[0] = &v44;
    __p.__r_.__value_.__l.__size_ = i;
    xpc::array::object_proxy::operator xpc::object(&__p, &v47);
    memset(&__p, 0, sizeof(__p));
    object[0] = 0;
    object[1] = 0;
    *&v36[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v36[0]) < 0)
    {
      operator delete(object[0]);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v48, &__p);
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v12 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(v47);
  }

  xpc_release(v33[0]);
  xpc_release(v44);
  if (v48 == v49)
  {
    memset(&__p, 0, sizeof(__p));
    v44 = v2;
    v45 = "kRemoteUri";
    xpc::dict::object_proxy::operator xpc::object(&v44, v33);
    object[0] = 0;
    object[1] = 0;
    *&v36[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v36[0]) < 0)
    {
      operator delete(object[0]);
    }

    xpc_release(v33[0]);
    std::vector<std::string>::push_back[abi:ne200100](&v48, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  object[0] = v2;
  object[1] = "kMlsBinaryBlob";
  xpc::dict::object_proxy::operator xpc::object(object, v33);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v33[0]);
  v13 = HIBYTE(v52);
  if (v52 < 0)
  {
    v13 = *(&v51 + 1);
  }

  if (!v13)
  {
    ImsUuid::generate(&__p);
    if (SHIBYTE(v29) < 0)
    {
      std::string::__init_copy_ctor_external(object, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      *object = *&__p.__r_.__value_.__r.__words[1];
      *&v36[0] = v29;
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    v51 = *object;
    v52 = *&v36[0];
    BYTE7(v36[0]) = 0;
    LOBYTE(object[0]) = 0;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }

    v14 = (*(*(v3 + 48) + 56))(v3 + 48);
    (*(*(v3 + 48) + 16))(v3 + 48, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "transaction not provided, using uuid ", 37);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, &v51);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }

  v15 = (*(*(v3 + 48) + 64))(v3 + 48);
  (*(*(v3 + 48) + 16))(v3 + 48, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "removing ", 9);
  *(v15 + 17) = 0;
  MEMORY[0x1E6923370](*(v15 + 8), 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " group participant(s) trx ", 26);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, &v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " from group conversation ", 25);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, v3 + 256);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " on ", 4);
  *(v15 + 17) = 0;
  v16 = *(v3 + 200);
  if (*(v16 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v16 + 24), *(v16 + 32));
  }

  else
  {
    __p = *(v16 + 24);
  }

  (*(*v15 + 32))(v15, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " isE2ee=", 8);
  *(v15 + 17) = 0;
  if (v45 == v44)
  {
    v17 = "false";
  }

  else
  {
    v17 = "true";
  }

  std::string::basic_string[abi:ne200100]<0>(object, v17);
  (*(*v15 + 32))(v15, object);
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (SBYTE7(v36[0]) < 0)
  {
    operator delete(object[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(v3 + 16);
  if (!v18 || (v19 = *(v3 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  *object = 0u;
  memset(v36, 0, sizeof(v36));
  v22 = *(v3 + 200);
  if (*(v22 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(object, *(v22 + 24), *(v22 + 32));
  }

  else
  {
    *object = *(v22 + 24);
    *&v36[0] = *(v22 + 40);
  }

  if (SHIBYTE(v52) < 0)
  {
    std::string::__init_copy_ctor_external((v36 + 8), v51, *(&v51 + 1));
  }

  else
  {
    *(v36 + 8) = v51;
    *(&v36[1] + 1) = v52;
  }

  if (*(v3 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v37, *(v3 + 232), *(v3 + 240));
  }

  else
  {
    v37[0] = *(v3 + 232);
  }

  if ((*(v3 + 279) & 0x80000000) == 0)
  {
    v37[1] = *(v3 + 256);
LABEL_73:
    *v38 = *(v3 + 256);
    *&v38[16] = *(v3 + 272);
    goto LABEL_74;
  }

  std::string::__init_copy_ctor_external(&v37[1], *(v3 + 256), *(v3 + 264));
  if ((*(v3 + 279) & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

  std::string::__init_copy_ctor_external(v38, *(v3 + 256), *(v3 + 264));
LABEL_74:
  memset(&v38[24], 0, 96);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v38[96], v48, v49, 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  memset(&v38[120], 0, 104);
  if (*(v3 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(v3 + 280), *(v3 + 288));
  }

  else
  {
    v23 = *(v3 + 280);
    *&v40 = *(v3 + 296);
    v39 = v23;
  }

  v41 = 0uLL;
  *(&v40 + 1) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v40 + 8, v44, v45, v45 - v44);
  v42 = 0uLL;
  v43 = 0;
  v24 = *(v3 + 216);
  *v33 = *"MOGroupModify";
  v34 = 0xD00000000000000;
  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 1174405120;
  __p.__r_.__value_.__r.__words[2] = ___ZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEv_block_invoke;
  v29 = &__block_descriptor_tmp_79_0;
  v30 = v19;
  v31 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LazuliSendParams::LazuliSendParams(v32, object);
  v47 = _Block_copy(&__p);
  RegistrationAwareQueue::addBlock(v24, v33, &v47);
  if (v47)
  {
    _Block_release(v47);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  LazuliSendParams::~LazuliSendParams(&v32[0].__r_.__value_.__l.__data_);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  LazuliSendParams::~LazuliSendParams(object);
  std::__shared_weak_count::__release_weak(v21);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  object[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](object);
  xpc_release(v6);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v26);
}

void sub_1E4D84D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a71);
  }

  std::__shared_weak_count::__release_weak(v72);
  v75 = *(v73 - 168);
  if (v75)
  {
    *(v73 - 160) = v75;
    operator delete(v75);
  }

  a71 = (v73 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a71);
  xpc_release(v71);
  if (*(v73 - 89) < 0)
  {
    operator delete(*(v73 - 112));
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::removeParticipants(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[4];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(v3, (a1 + 6));
  v4 = 0;
  operator new();
}

void sub_1E4D852B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11 - 72);
  _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a11);
  _Unwind_Resume(a1);
}

void sub_1E4D85300(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x1E4D852F8);
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA9D8;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECA9D8;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D85454(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7__cloneEPNS0_6__baseISA_EE(void *a1, std::string *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a2->__r_.__value_.__r.__words[0] = &unk_1F5ECA9D8;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a2 + 1, (a1 + 3));
}

void sub_1E4D854D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v20);
      IMSSMSManager::removeParticipants(v20, (a1 + 24));
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

LABEL_45:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  BambiClient::clientConfigForStackId(&v28);
  std::string::basic_string[abi:ne200100]<0>(&v25, "laz.cht");
  v20 = v28;
  LODWORD(v21) = DWORD2(v28);
  if (SBYTE7(v30) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v29, *(&v29 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v29;
    __p.__r_.__value_.__r.__words[2] = v30;
  }

  v23 = BYTE8(v30);
  v24 = 1;
  v4 = ims::error(&v25, &v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Chat instance gone for ", 23);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 96);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " / ", 3);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 48);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v24 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v25 = 0;
  v26 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 24), &v25);
  if (v25)
  {
    v19 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v19 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v19 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_23;
      }
    }

    if (MEMORY[0x1E6924740](v6) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v6);
LABEL_24:
      xpc_release(v6);
      v17 = xpc_BOOL_create(0);
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v15, &v17, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v17);
      v17 = 0;
      if (*(a1 + 119) >= 0)
      {
        v8 = (a1 + 96);
      }

      else
      {
        v8 = *(a1 + 96);
      }

      v13 = xpc_string_create(v8);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
      xpc_release(v14);
      v14 = 0;
      xpc_release(v13);
      v13 = 0;
      if (*(a1 + 71) >= 0)
      {
        v9 = (a1 + 48);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      v11 = xpc_string_create(v9);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
      xpc_release(v12);
      v12 = 0;
      xpc_release(v11);
      v11 = 0;
      v10 = v25;
      v15 = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        v15 = xpc_null_create();
      }

      LazuliDelegate::handleParticipantRemoved(v10, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v19);
      goto LABEL_40;
    }

    v7 = xpc_null_create();
LABEL_23:
    v19 = v7;
    goto LABEL_24;
  }

LABEL_40:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(v29);
  }

  if (v3)
  {
    goto LABEL_45;
  }
}

void sub_1E4D85980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl18removeParticipantsEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0>(anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v3 = *(v2 + 200);
  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v25, *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v25[0] = *(v3 + 24);
  }

  *&v22 = v1 + 1;
  *(&v22 + 1) = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(&v22, &object);
  __p = 0;
  v16 = 0;
  v17 = 0;
  xpc::dyn_cast_or_default();
  if (*(v2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v26, *(v2 + 232), *(v2 + 240));
  }

  else
  {
    v26[0] = *(v2 + 232);
  }

  if ((*(v2 + 279) & 0x80000000) == 0)
  {
    v26[1] = *(v2 + 256);
LABEL_10:
    *v27 = *(v2 + 256);
    *&v27[16] = *(v2 + 272);
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(&v26[1], *(v2 + 256), *(v2 + 264));
  if ((*(v2 + 279) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  std::string::__init_copy_ctor_external(v27, *(v2 + 256), *(v2 + 264));
LABEL_11:
  memset(&v27[24], 0, 200);
  if (*(v2 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(v2 + 280), *(v2 + 288));
  }

  else
  {
    v4 = *(v2 + 280);
    *&v29 = *(v2 + 296);
    v28 = v4;
  }

  v30 = 0uLL;
  *(&v29 + 1) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v31, "MLS-Group-Info-Pull");
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  v5 = (*(*(v2 + 48) + 64))(v2 + 48);
  (*(*(v2 + 48) + 16))(v2 + 48, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "request mls info trx ", 21);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, &v25[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " conf ", 6);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, &v26[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " on ", 4);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, v25);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = *(v2 + 16);
  if (!v6 || (v7 = *(v2 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v11 = *(v2 + 216);
  v22 = *"MOOptions";
  v23 = 0x900000000000000;
  __p = MEMORY[0x1E69E9820];
  v16 = 1174405120;
  v17 = ___ZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEv_block_invoke;
  v18 = &__block_descriptor_tmp_85;
  v19 = v7;
  v20 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  LazuliSendParams::LazuliSendParams(v21, v25);
  v33 = _Block_copy(&__p);
  RegistrationAwareQueue::addBlock(v11, &v22, &v33);
  if (v33)
  {
    _Block_release(v33);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  LazuliSendParams::~LazuliSendParams(&v21[0].__r_.__value_.__l.__data_);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_weak(v9);
  LazuliSendParams::~LazuliSendParams(&v25[0].__r_.__value_.__l.__data_);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v13);
}

void sub_1E4D85F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  xpc_release(object);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a73);
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::requestMlsGroupInfo(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEv_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[4];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(v3, (a1 + 6));
  v4 = 0;
  operator new();
}

void sub_1E4D86280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11 - 72);
  _ZZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a11);
  _Unwind_Resume(a1);
}

void sub_1E4D862C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x1E4D862C0);
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAA88;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAA88;
  LazuliSendParams::~LazuliSendParams((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D8641C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7__cloneEPNS0_6__baseISA_EE(void *a1, std::string *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a2->__r_.__value_.__r.__words[0] = &unk_1F5ECAA88;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  LazuliSendParams::LazuliSendParams(a2 + 1, (a1 + 3));
}

void sub_1E4D864A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZZZN12_GLOBAL__N_18ChatImpl19changeGroupChatInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      v27 = 0;
      v28 = 0;
      IPTelephonyManager::getBambiClient(&v22);
      (*(*v22 + 184))(&v27);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v27)
      {
        v4 = *(v27 + 31);
        v5 = *(v27 + 32);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          v7 = *(v4 + 296);
          v6 = *(v4 + 304);
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7)
          {
            SipLazuliManager::sendInfoRequest(v7, (a1 + 24));
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v30, "laz.cht");
            std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(&v22, v27 + 25);
            v14 = ims::error(&v30, &v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Lazuli manager is null ", 23);
            *(v14 + 17) = 0;
            (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v14 + 17) = 0;
            if (v26 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SBYTE7(v31) < 0)
            {
              operator delete(v30);
            }
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
        }

        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

LABEL_60:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  BambiClient::clientConfigForStackId(&v30);
  std::string::basic_string[abi:ne200100]<0>(&v27, "laz.cht");
  v22 = v30;
  LODWORD(v23) = DWORD2(v30);
  if (SBYTE7(v32) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31, *(&v31 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v31;
    __p.__r_.__value_.__r.__words[2] = v32;
  }

  v25 = BYTE8(v32);
  v26 = 1;
  v8 = ims::error(&v27, &v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Chat instance gone for trx ", 27);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a1 + 48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " conv ", 6);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a1 + 96);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v26 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v27);
  }

  v27 = 0;
  v28 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 24), &v27);
  if (v27)
  {
    v21 = 0;
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v9;
    if (v9)
    {
      v21 = v9;
    }

    else
    {
      v10 = xpc_null_create();
      v21 = v10;
      if (!v10)
      {
        v11 = xpc_null_create();
        v10 = 0;
        goto LABEL_31;
      }
    }

    if (MEMORY[0x1E6924740](v10) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v10);
LABEL_32:
      xpc_release(v10);
      v19 = xpc_BOOL_create(0);
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v17 = &v21;
      v18 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v17, &v19, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v19);
      v19 = 0;
      if (*(a1 + 71) >= 0)
      {
        v12 = (a1 + 48);
      }

      else
      {
        v12 = *(a1 + 48);
      }

      v15 = xpc_string_create(v12);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      v17 = &v21;
      v18 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v17, &v15, &v16);
      xpc_release(v16);
      v16 = 0;
      xpc_release(v15);
      v15 = 0;
      v13 = v27;
      v17 = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        v17 = xpc_null_create();
      }

      (*(*v13 + 128))(v13, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v21);
      goto LABEL_43;
    }

    v11 = xpc_null_create();
LABEL_31:
    v21 = v11;
    goto LABEL_32;
  }

LABEL_43:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (v3)
  {
    goto LABEL_60;
  }
}

void sub_1E4D869F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v33)
  {
LABEL_5:
    if (a28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a28);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  goto LABEL_5;
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl19requestMlsGroupInfoEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::Chat>::execute_wrapped<anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0>(anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *v1 + 48;
  v4 = (*(*v3 + 64))(v3);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Leave Group Chat ", 17);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, v2 + 256);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " on stack ", 10);
  *(v4 + 17) = 0;
  (*(*v2 + 120))(&__p, v2);
  (*(*v4 + 32))(v4, &__p);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  v5 = *(v2 + 16);
  if (!v5 || (v6 = *(v2 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  memset(&v34, 0, sizeof(v34));
  (*(*v2 + 120))(&v34, v2);
  memset(&v33, 0, sizeof(v33));
  if (*(v2 + 279) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(v2 + 256), *(v2 + 264));
  }

  else
  {
    v33 = *(v2 + 256);
  }

  memset(&v32, 0, sizeof(v32));
  v29 = (v1 + 1);
  v30 = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(&v29, &object);
  __p = 0;
  v14 = 0;
  v15 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *&object = v1 + 1;
  *(&object + 1) = "kMlsBinaryBlob";
  xpc::dict::object_proxy::operator xpc::object(&object, &v28);
  __p = 0;
  v14 = 0;
  v15 = 0;
  xpc::dyn_cast_or_default();
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  xpc_release(v28);
  v9 = *(v2 + 216);
  object = *"MOGroupLeave";
  v27 = 0xC00000000000000;
  __p = MEMORY[0x1E69E9820];
  v14 = 1174405120;
  v15 = ___ZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEv_block_invoke;
  v16 = &__block_descriptor_tmp_94_1;
  v17 = v2;
  v18 = v6;
  v19 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v33;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v32;
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v34;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v23, v29, v30, v30 - v29);
  v28 = _Block_copy(&__p);
  RegistrationAwareQueue::addBlock(v9, &object, &v28);
  if (v28)
  {
    _Block_release(v28);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(object);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v8);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v11);
}

void sub_1E4D87080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, uint64_t a42, xpc_object_t object, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (a48 < 0)
  {
    operator delete(object);
  }

  v51 = *(v49 - 160);
  if (v51)
  {
    *(v49 - 152) = v51;
    operator delete(v51);
  }

  if (*(v49 - 113) < 0)
  {
    operator delete(*(v49 - 136));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (*(v49 - 65) < 0)
  {
    operator delete(*(v49 - 88));
  }

  std::__shared_weak_count::__release_weak(v48);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatImpl::leaveGroupChat(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEv_block_invoke(uint64_t a1)
{
  __p[7] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v4 = *(a1 + 56);
  }

  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v5 = *(a1 + 80);
  }

  if (*(a1 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v6 = *(a1 + 104);
  }

  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *(a1 + 128), *(a1 + 136), *(a1 + 136) - *(a1 + 128));
  __p[6] = 0;
  operator new();
}

void sub_1E4D874C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 + 79) < 0)
  {
    operator delete(*(v29 + 56));
  }

  if (*(v29 + 55) < 0)
  {
    operator delete(*(v29 + 32));
  }

  v31 = *(v29 + 24);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  operator delete(v29);
  _ZZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3ims6lazuli4ChatEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE104c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE128c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 128, *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
}

void sub_1E4D876E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3ims6lazuli4ChatEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE104c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE128c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAB38;
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAB38;
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E69235B0);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(char *__p)
{
  v2 = *(__p + 13);
  if (v2)
  {
    *(__p + 14) = v2;
    operator delete(v2);
  }

  if (__p[103] < 0)
  {
    operator delete(*(__p + 10));
  }

  if (__p[79] < 0)
  {
    operator delete(*(__p + 7));
  }

  if (__p[55] < 0)
  {
    operator delete(*(__p + 4));
  }

  v3 = *(__p + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && *(a1 + 16))
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      memset(v21, 0, sizeof(v21));
      memset(v20, 0, sizeof(v20));
      memset(v19, 0, sizeof(v19));
      v5 = *(v3 + 200);
      if (*(v5 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v19, *(v5 + 24), *(v5 + 32));
      }

      else
      {
        v19[0] = *(v5 + 24);
      }

      if (*(a1 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&v19[1], *(a1 + 56), *(a1 + 64));
      }

      else
      {
        v19[1] = *(a1 + 56);
      }

      if (*(v3 + 255) < 0)
      {
        std::string::__init_copy_ctor_external(v20, *(v3 + 232), *(v3 + 240));
      }

      else
      {
        v20[0] = *(v3 + 232);
      }

      if (*(v3 + 279) < 0)
      {
        std::string::__init_copy_ctor_external(&v20[1], *(v3 + 256), *(v3 + 264));
        if (*(v3 + 279) < 0)
        {
          std::string::__init_copy_ctor_external(v21, *(v3 + 256), *(v3 + 264));
          goto LABEL_30;
        }
      }

      else
      {
        v20[1] = *(v3 + 256);
      }

      *v21 = *(v3 + 256);
      *&v21[16] = *(v3 + 272);
LABEL_30:
      memset(&v21[24], 0, 200);
      if (*(v3 + 303) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *(v3 + 280), *(v3 + 288));
      }

      else
      {
        v11 = *(v3 + 280);
        *&v23 = *(v3 + 296);
        v22 = v11;
      }

      *(&v23 + 1) = 0;
      v24 = 0uLL;
      v12 = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v23 + 8, *(a1 + 104), *(a1 + 112), *(a1 + 112) - *(a1 + 104));
      v25 = 0uLL;
      v26 = 0;
      IPTelephonyManager::getCallManager(v12, &v36);
      IMSCallManager::leaveGroupChat(v36, v19);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      LazuliSendParams::~LazuliSendParams(&v19[0].__r_.__value_.__l.__data_);
LABEL_57:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(&v36, "laz.cht");
  v19[0].__r_.__value_.__s.__data_[0] = 0;
  v20[0].__r_.__value_.__s.__data_[0] = 0;
  v7 = ims::error(v6, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Chat instance gone for ", 23);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a1 + 32);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v20[0].__r_.__value_.__s.__data_[0] == 1 && v19[1].__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v19[0].__r_.__value_.__r.__words[2]);
  }

  if (v38 < 0)
  {
    operator delete(v36);
  }

  v36 = 0;
  v37 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 80), &v36);
  if (v36)
  {
    v35 = 0;
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (v8)
    {
      v35 = v8;
    }

    else
    {
      v9 = xpc_null_create();
      v35 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_37;
      }
    }

    if (MEMORY[0x1E6924740](v9) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v9);
LABEL_38:
      xpc_release(v9);
      v33 = xpc_BOOL_create(0);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v31, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      if (*(a1 + 55) >= 0)
      {
        v13 = (a1 + 32);
      }

      else
      {
        v13 = *(a1 + 32);
      }

      v29 = xpc_string_create(v13);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v31, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v16 = *(a1 + 56);
      v15 = a1 + 56;
      v14 = v16;
      if (*(v15 + 23) >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      v27 = xpc_string_create(v17);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v31, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      v18 = v36;
      v31 = v35;
      if (v35)
      {
        xpc_retain(v35);
      }

      else
      {
        v31 = xpc_null_create();
      }

      LazuliDelegate::handleLeaveGroupChat(v18, &v31);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v35);
      goto LABEL_54;
    }

    v10 = xpc_null_create();
LABEL_37:
    v35 = v10;
    goto LABEL_38;
  }

LABEL_54:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v4)
  {
    goto LABEL_57;
  }
}

void sub_1E4D87F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZZZZN12_GLOBAL__N_18ChatImpl14leaveGroupChatEN3xpc4dictEENK3__0clEvEUb_ENUlvE_C1ERKS4_(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 96, *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
  return a1;
}

void sub_1E4D882C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<anonymous namespace::ChatServicesImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECABB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::ChatServicesImpl::~ChatServicesImpl(_anonymous_namespace_::ChatServicesImpl *this)
{
  *this = &unk_1F5ECAC08;
  *(this + 5) = &unk_1F5ECAC40;
  *(this + 22) = &unk_1F5ECACA0;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](this + 184);
  *(this + 5) = &unk_1F5ED7318;
  if (*(this + 120) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  *this = &unk_1F5ECAC08;
  *(this + 5) = &unk_1F5ECAC40;
  *(this + 22) = &unk_1F5ECACA0;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](this + 184);
  *(this + 5) = &unk_1F5ED7318;
  if (*(this + 120) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::ChatServicesImpl::sendSpamReport(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void anonymous namespace::ChatServicesImpl::getCapabilities(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void non-virtual thunk toanonymous namespace::ChatServicesImpl::~ChatServicesImpl(_anonymous_namespace_::ChatServicesImpl *this)
{
  *(this - 5) = &unk_1F5ECAC08;
  *this = &unk_1F5ECAC40;
  *(this + 17) = &unk_1F5ECACA0;
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this - 4);
}

{
}

{
  *(this - 22) = &unk_1F5ECAC08;
  *(this - 17) = &unk_1F5ECAC40;
  *this = &unk_1F5ECACA0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    operator delete(*(this - 16));
  }

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this - 21);
}

{
}

void ims::Loggable<anonymous namespace::ChatServicesImpl>::~Loggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 8);

  JUMPOUT(0x1E69235B0);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::ChatServices>::execute_wrapped<anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0>(anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0,dispatch_queue_s *::default_delete<anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v39 = a1;
  v40 = v1;
  v4 = *v1;
  v3 = (v1 + 1);
  v2 = v4;
  *__p = v3;
  *&__p[8] = "kIsChatbot";
  xpc::dict::object_proxy::operator xpc::object(__p, &v80);
  v5 = xpc::dyn_cast_or_default(&v80, 0);
  xpc_release(v80.__r_.__value_.__l.__data_);
  memset(&v80, 0, sizeof(v80));
  v79.__r_.__value_.__r.__words[0] = v3;
  v79.__r_.__value_.__l.__size_ = "kConversationId";
  xpc::dict::object_proxy::operator xpc::object(&v79, &v78);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(v78.__r_.__value_.__l.__data_);
  memset(&v79, 0, sizeof(v79));
  v78.__r_.__value_.__r.__words[0] = v3;
  v78.__r_.__value_.__l.__size_ = "kTransactionId";
  xpc::dict::object_proxy::operator xpc::object(&v78, &v77);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(v77.__r_.__value_.__l.__data_);
  memset(&v78, 0, sizeof(v78));
  v77.__r_.__value_.__r.__words[0] = v3;
  v77.__r_.__value_.__l.__size_ = "kSpamReportingUri";
  xpc::dict::object_proxy::operator xpc::object(&v77, &v74);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(v74);
  memset(&v77, 0, sizeof(v77));
  v74 = v3;
  v75 = "kRemoteUri";
  xpc::dict::object_proxy::operator xpc::object(&v74, &__str);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(__str.__r_.__value_.__l.__data_);
  *__p = v3;
  *&__p[8] = "kMessageIDList";
  xpc::dict::object_proxy::operator xpc::object(__p, &v74);
  v6 = xpc_null_create();
  v7 = v74;
  v8 = MEMORY[0x1E69E9E50];
  if (v74 && MEMORY[0x1E6924740](v74) == v8)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (MEMORY[0x1E6924740](v7) != v8)
  {
    if (v6)
    {
      xpc_retain(v6);
      v9 = v6;
    }

    else
    {
      v9 = xpc_null_create();
    }

    xpc_release(v7);
    v7 = v9;
  }

  xpc_release(v6);
  xpc_release(v74);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  __str.__r_.__value_.__r.__words[0] = v3;
  __str.__r_.__value_.__l.__size_ = "kSpamContent";
  xpc::dict::object_proxy::operator xpc::object(&__str, &v70);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  xpc_release(v70);
  memset(&__str, 0, sizeof(__str));
  v70 = v3;
  v71 = "kSpamType";
  xpc::dict::object_proxy::operator xpc::object(&v70, &object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(object.__r_.__value_.__l.__data_);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  object.__r_.__value_.__r.__words[0] = v3;
  object.__r_.__value_.__l.__size_ = "kFreeText";
  xpc::dict::object_proxy::operator xpc::object(&object, &v68);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  xpc_release(v68.__r_.__value_.__l.__data_);
  memset(&object, 0, sizeof(object));
  std::string::basic_string[abi:ne200100]<0>(&object, "");
  size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v77.__r_.__value_.__l.__size_;
  }

  v11 = size != 0;
  if (!size)
  {
    std::string::__assign_external(&object, "Can't send a spam report for empty remoteUri", 0x2CuLL);
    v12 = (*(v2[5] + 56))(v2 + 5);
    (*(v2[5] + 16))(v2 + 5, v12);
    (*(*v12 + 32))(v12, &object);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v12[17] = 0;
  }

  if (MEMORY[0x1E6924740](v7) != v8 || !xpc_array_get_count(v7))
  {
    std::string::__assign_external(&object, "Can't send a spam report without any message IDs", 0x30uLL);
    v13 = (*(v2[5] + 56))(v2 + 5);
    (*(v2[5] + 16))(v2 + 5, v13);
    (*(*v13 + 32))(v13, &object);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v11 = 0;
    v13[17] = 0;
  }

  v14 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v79.__r_.__value_.__l.__size_;
  }

  if (v14)
  {
    if (v5)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  ImsUuid::generate(__p);
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v68, *&__p[8], *&__p[16]);
  }

  else
  {
    v68 = *&__p[8];
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v79 = v68;
  *(&v68.__r_.__value_.__s + 23) = 0;
  v68.__r_.__value_.__s.__data_[0] = 0;
  *__p = &unk_1F5EBEE78;
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  v15 = (*(v2[5] + 56))(v2 + 5);
  (*(v2[5] + 16))(v2 + 5, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "transaction not provided, using uuid ", 37);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, &v79);
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if ((v5 & 1) == 0)
  {
LABEL_44:
    v16 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v78.__r_.__value_.__l.__size_;
    }

    if (!v16)
    {
      std::string::__assign_external(&object, "Can't send a spam report without valid Spam reporting URI", 0x39uLL);
      v17 = (*(v2[5] + 56))(v2 + 5);
      (*(v2[5] + 16))(v2 + 5, v17);
      (*(*v17 + 32))(v17, &object);
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v11 = 0;
      v17[17] = 0;
    }
  }

LABEL_48:
  memset(&v68, 0, sizeof(v68));
  v18 = v2[24];
  if (*(v18 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(v18 + 24), *(v18 + 32));
  }

  else
  {
    v68 = *(v18 + 24);
  }

  if (v11)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__str.__r_.__value_.__l.__size_ > 1)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
LABEL_60:
        if (p_str->__r_.__value_.__s.__data_[0] == 107)
        {
          std::string::basic_string(&v58, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &aBlock);
          ims::lowerCase(&v58, __p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = *__p;
          __p[23] = 0;
          __p[0] = 0;
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if (HIBYTE(__str.__r_.__value_.__r.__words[2]) > 1u)
    {
      p_str = &__str;
      goto LABEL_60;
    }

    v26 = (*(v2[5] + 64))(v2 + 5);
    (*(v2[5] + 16))(v2 + 5, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "sending spam report message on ", 31);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, &v68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " for trx ", 9);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, &v79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " with spam type ", 16);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, &__str);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    v27 = v2[2];
    if (!v27 || (v28 = v2[1], (v29 = std::__shared_weak_count::lock(v27)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v30 = v29;
    p_shared_weak_owners = &v29->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    v32 = v2[26];
    *&v58.__r_.__value_.__l.__data_ = *"MOSpam";
    v58.__r_.__value_.__r.__words[2] = 0x600000000000000;
    *__p = MEMORY[0x1E69E9820];
    *&__p[8] = 1174405120;
    *&__p[16] = ___ZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEv_block_invoke;
    *&__p[24] = &__block_descriptor_tmp_115;
    v42 = v28;
    v43 = v30;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = v79;
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = v80;
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    }

    else
    {
      v46 = v68;
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v77;
    }

    v57 = v5;
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v48, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
    }

    else
    {
      v48 = v78;
    }

    v49 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v50, v74, v75, v75 - v74);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = __str;
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v54, v70, v71, v71 - v70);
    aBlock = _Block_copy(__p);
    RegistrationAwareQueue::addBlock(v32, &v58, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    xpc_release(v49);
    v49 = 0;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_weak(v43);
    }

    std::__shared_weak_count::__release_weak(v30);
    goto LABEL_140;
  }

  v21 = v2[5];
  v20 = v2 + 5;
  v22 = (*(v21 + 56))(v20);
  (*(*v20 + 16))(v20, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Can't send spam report message on ", 34);
  *(v22 + 17) = 0;
  (*(*v22 + 32))(v22, &v68);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " for trx ", 9);
  *(v22 + 17) = 0;
  (*(*v22 + 32))(v22, &v79);
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  *__p = 0uLL;
  IMSClientManager::lazuliDelegateForStack(&v68.__r_.__value_.__l.__data_, __p);
  if (*__p)
  {
    v23 = (*(*v20 + 56))(v20);
    (*(*v20 + 16))(v20, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Returning failure status.", 25);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    aBlock = 0;
    v24 = xpc_dictionary_create(0, 0, 0);
    v25 = v24;
    if (v24)
    {
      aBlock = v24;
    }

    else
    {
      v25 = xpc_null_create();
      aBlock = v25;
      if (!v25)
      {
        v33 = xpc_null_create();
        v25 = 0;
        goto LABEL_116;
      }
    }

    if (MEMORY[0x1E6924740](v25) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v25);
LABEL_117:
      xpc_release(v25);
      v65 = xpc_BOOL_create(0);
      if (!v65)
      {
        v65 = xpc_null_create();
      }

      v58.__r_.__value_.__r.__words[0] = &aBlock;
      v58.__r_.__value_.__l.__size_ = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v58, &v65, &v66);
      xpc_release(v66);
      v66 = 0;
      xpc_release(v65);
      v65 = 0;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v80;
      }

      else
      {
        v34 = v80.__r_.__value_.__r.__words[0];
      }

      v63 = xpc_string_create(v34);
      if (!v63)
      {
        v63 = xpc_null_create();
      }

      v58.__r_.__value_.__r.__words[0] = &aBlock;
      v58.__r_.__value_.__l.__size_ = "kConversationId";
      xpc::dict::object_proxy::operator=(&v58, &v63, &v64);
      xpc_release(v64);
      v64 = 0;
      xpc_release(v63);
      v63 = 0;
      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v79;
      }

      else
      {
        v35 = v79.__r_.__value_.__r.__words[0];
      }

      v61 = xpc_string_create(v35);
      if (!v61)
      {
        v61 = xpc_null_create();
      }

      v58.__r_.__value_.__r.__words[0] = &aBlock;
      v58.__r_.__value_.__l.__size_ = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v58, &v61, &v62);
      xpc_release(v62);
      v62 = 0;
      xpc_release(v61);
      v61 = 0;
      if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_object = &object;
      }

      else
      {
        p_object = object.__r_.__value_.__r.__words[0];
      }

      v59 = xpc_string_create(p_object);
      if (!v59)
      {
        v59 = xpc_null_create();
      }

      v58.__r_.__value_.__r.__words[0] = &aBlock;
      v58.__r_.__value_.__l.__size_ = "kReason";
      xpc::dict::object_proxy::operator=(&v58, &v59, &v60);
      xpc_release(v60);
      v60 = 0;
      xpc_release(v59);
      v59 = 0;
      v37 = *__p;
      v58.__r_.__value_.__r.__words[0] = aBlock;
      if (aBlock)
      {
        xpc_retain(aBlock);
      }

      else
      {
        v58.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      (*(*v37 + 120))(v37, &v58);
      xpc_release(v58.__r_.__value_.__l.__data_);
      v58.__r_.__value_.__r.__words[0] = 0;
      xpc_release(aBlock);
      goto LABEL_138;
    }

    v33 = xpc_null_create();
LABEL_116:
    aBlock = v33;
    goto LABEL_117;
  }

LABEL_138:
  if (*&__p[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
  }

LABEL_140:
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  xpc_release(v7);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v39);
}

void sub_1E4D89C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, xpc_object_t aBlock, xpc_object_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  v73 = *(v71 - 248);
  if (v73)
  {
    *(v71 - 240) = v73;
    operator delete(v73);
  }

  if (*(v71 - 201) < 0)
  {
    operator delete(*(v71 - 224));
  }

  v74 = *(v71 - 200);
  if (v74)
  {
    *(v71 - 192) = v74;
    operator delete(v74);
  }

  xpc_release(v70);
  if (*(v71 - 153) < 0)
  {
    operator delete(*(v71 - 176));
  }

  if (*(v71 - 129) < 0)
  {
    operator delete(*(v71 - 152));
  }

  if (*(v71 - 105) < 0)
  {
    operator delete(*(v71 - 128));
  }

  if (*(v71 - 81) < 0)
  {
    operator delete(*(v71 - 104));
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0,std::default_delete<anonymous namespace::ChatServicesImpl::sendSpamReport(xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1E69235B0](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEv_block_invoke(uint64_t a1)
{
  v15[7] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 48);
  }

  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v7 = *(a1 + 72);
  }

  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    v8 = *(a1 + 96);
  }

  if (*(a1 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    v9 = *(a1 + 120);
  }

  v10 = *(a1 + 248);
  if (*(a1 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v11 = *(a1 + 144);
  }

  v3 = *(a1 + 168);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(v13, 0, sizeof(v13));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v13, *(a1 + 176), *(a1 + 184), *(a1 + 184) - *(a1 + 176));
  if (*(a1 + 223) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 200), *(a1 + 208));
  }

  else
  {
    v14 = *(a1 + 200);
  }

  memset(v15, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v15, *(a1 + 224), *(a1 + 232), *(a1 + 232) - *(a1 + 224));
  v15[6] = 0;
  operator new();
}

void sub_1E4D8A4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, xpc_object_t object, void *__p, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v56 = *v54;
  if (*v54)
  {
    *(v52 + 168) = v56;
    operator delete(v56);
  }

  xpc::array::~array(v53);
  if (*(v52 + 151) < 0)
  {
    operator delete(*(v52 + 128));
  }

  if (*(v52 + 119) < 0)
  {
    operator delete(*(v52 + 96));
  }

  if (*(v52 + 95) < 0)
  {
    operator delete(*(v52 + 72));
  }

  if (*(v52 + 71) < 0)
  {
    operator delete(*(v52 + 48));
  }

  if (*(v52 + 47) < 0)
  {
    operator delete(*(v52 + 24));
  }

  v57 = *(v52 + 16);
  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  operator delete(v52);
  _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  xpc_release(*(a1 + 144));
  *(a1 + 144) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatServicesEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE144c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE168c17_ZTSKN3xpc5arrayE176c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE200c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE224c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
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

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v9 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v9;
  }

  v10 = *(a2 + 168);
  *(a1 + 168) = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *(a1 + 168) = xpc_null_create();
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 176, *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v11 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v11;
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 224, *(a2 + 224), *(a2 + 232), *(a2 + 232) - *(a2 + 224));
}

void sub_1E4D8A908(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 184) = v5;
    operator delete(v5);
  }

  xpc::array::~array(v2);
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrIN3ims6lazuli12ChatServicesEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE144c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE168c17_ZTSKN3xpc5arrayE176c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE200c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE224c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  xpc_release(*(a1 + 168));
  *(a1 + 168) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void *_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_1F5ECADA0;
  _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_1F5ECADA0;
  _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev((a1 + 1));

  JUMPOUT(0x1E69235B0);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_D1Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v35);
      v4 = v35;
      v5 = *(a1 + 120);
      if (*(a1 + 151) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        v28 = *(a1 + 128);
        v29.__r_.__value_.__r.__words[0] = *(a1 + 144);
      }

      IMSSMSManager::reportLazuliSpam(v4, a1 + 72, a1 + 24, (a1 + 96), v5, &v28, a1 + 48, (a1 + 152), (a1 + 160), a1 + 184, (a1 + 208));
      if (v29.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v28);
      }

      if (*(&v35 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
      }

LABEL_57:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  std::string::basic_string[abi:ne200100]<0>(v38, "ChatServices instance is gone");
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  BambiClient::clientConfigForStackId(&v35);
  std::string::basic_string[abi:ne200100]<0>(&v32, "laz.cht.svc");
  *&v28 = v35;
  DWORD2(v28) = DWORD2(v35);
  if (SBYTE7(v37) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, v36, *(&v36 + 1));
  }

  else
  {
    *&v29.__r_.__value_.__l.__data_ = v36;
    v29.__r_.__value_.__r.__words[2] = v37;
  }

  v30 = BYTE8(v37);
  v31 = 1;
  v6 = ims::error(&v32, &v28);
  (*(*v6 + 32))(v6, v38);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v6[17] = 0;
  if (v31 == 1 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v32);
  }

  v32 = 0;
  v33 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 72), &v32);
  if (v32)
  {
    v27 = 0;
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (v7)
    {
      v27 = v7;
    }

    else
    {
      v8 = xpc_null_create();
      v27 = v8;
      if (!v8)
      {
        v9 = xpc_null_create();
        v8 = 0;
        goto LABEL_28;
      }
    }

    if (MEMORY[0x1E6924740](v8) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v8);
LABEL_29:
      xpc_release(v8);
      v25 = xpc_BOOL_create(0);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      v23 = &v27;
      v24 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v23, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      if (*(a1 + 71) >= 0)
      {
        v10 = (a1 + 48);
      }

      else
      {
        v10 = *(a1 + 48);
      }

      v21 = xpc_string_create(v10);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      v23 = &v27;
      v24 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v23, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      v13 = *(a1 + 24);
      v12 = a1 + 24;
      v11 = v13;
      if (*(v12 + 23) >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      v19 = xpc_string_create(v14);
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v23 = &v27;
      v24 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v23, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      if (v39 >= 0)
      {
        v15 = v38;
      }

      else
      {
        v15 = v38[0];
      }

      v17 = xpc_string_create(v15);
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      v23 = &v27;
      v24 = "kReason";
      xpc::dict::object_proxy::operator=(&v23, &v17, &v18);
      xpc_release(v18);
      v18 = 0;
      xpc_release(v17);
      v17 = 0;
      v16 = v32;
      v23 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v23 = xpc_null_create();
      }

      (*(*v16 + 120))(v16, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v27);
      goto LABEL_50;
    }

    v9 = xpc_null_create();
LABEL_28:
    v27 = v9;
    goto LABEL_29;
  }

LABEL_50:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v3)
  {
    goto LABEL_57;
  }
}

void sub_1E4D8B0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  v38 = *(v36 - 120);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_NS_9allocatorIS7_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZZZZN12_GLOBAL__N_116ChatServicesImpl14sendSpamReportEN3xpc4dictEENK3__0clEvEUb_ENUlvE_C1ERKS4_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  *(a1 + 112) = *(a2 + 112);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v9;
  }

  v10 = *(a2 + 144);
  *(a1 + 144) = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *(a1 + 144) = xpc_null_create();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 152, *(a2 + 152), *(a2 + 160), *(a2 + 160) - *(a2 + 152));
  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v11 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v11;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 200, *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
  return a1;
}

void sub_1E4D8B408(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  xpc::array::~array(v2);
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ims::lazuli::ChatServices>::execute_wrapped<anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0>(anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0,std::default_delete<anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  memset(&v37, 0, sizeof(v37));
  v3 = v2[24];
  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v37 = *(v3 + 24);
  }

  v4 = v2[2];
  if (!v4 || (v5 = v2[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  memset(&v36, 0, sizeof(v36));
  ImsUuid::generate(&aBlock);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    aBlock = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v36 = __p;
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  BambiClient::clientConfigForStackId(&v33);
  std::string::basic_string[abi:ne200100]<0>(&aBlock, "laz.cht");
  v28 = v33;
  v29 = DWORD2(v33);
  if (SBYTE7(v35) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v34, *(&v34 + 1));
  }

  else
  {
    *&v30.__r_.__value_.__l.__data_ = v34;
    v30.__r_.__value_.__r.__words[2] = v35;
  }

  v31 = BYTE8(v35);
  v32 = 1;
  v8 = ims::debug(&aBlock, &v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "get capabilities transaction id ", 32);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, &v36);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v32 == 1 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(aBlock);
  }

  v9 = v2[26];
  *v26 = *"MOOptions";
  v27 = 0x900000000000000;
  aBlock = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__r.__words[0] = 1174405120;
  __p.__r_.__value_.__l.__size_ = ___ZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEv_block_invoke;
  __p.__r_.__value_.__r.__words[2] = &__block_descriptor_tmp_118_0;
  v16 = v5;
  v17 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v36;
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v37;
  }

  v20 = v33;
  v21 = DWORD2(v33);
  if (SBYTE7(v35) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v34, *(&v34 + 1));
  }

  else
  {
    *&v22.__r_.__value_.__l.__data_ = v34;
    v22.__r_.__value_.__r.__words[2] = v35;
  }

  v23 = BYTE8(v35);
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v10 = *(v1 + 8);
    v24.__r_.__value_.__r.__words[2] = *(v1 + 24);
    *&v24.__r_.__value_.__l.__data_ = v10;
  }

  v25 = _Block_copy(&aBlock);
  RegistrationAwareQueue::addBlock(v9, v26, &v25);
  if (v25)
  {
    _Block_release(v25);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v12);
}

void sub_1E4D8B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *aBlock, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  std::__shared_weak_count::__release_weak(v47);
  if (*(v48 - 73) < 0)
  {
    operator delete(*(v48 - 96));
  }

  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0,std::default_delete<anonymous namespace::ChatServicesImpl::getCapabilities(std::string const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x1032C402793DAF4);
  }

  return a1;
}

void ___ZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEv_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v4 = *(a1 + 48);
  }

  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  if (*(a1 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    v8 = *(a1 + 112);
  }

  v9 = *(a1 + 136);
  if (*(a1 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    __p = *(a1 + 144);
  }

  v11 = 0;
  operator new();
}

void sub_1E4D8BDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 + 111) < 0)
  {
    operator delete(*(v30 + 88));
  }

  if (*(v30 + 71) < 0)
  {
    operator delete(*(v30 + 48));
  }

  if (*(v30 + 47) < 0)
  {
    operator delete(*(v30 + 24));
  }

  v32 = *(v30 + 16);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  operator delete(v30);
  _ZZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEvEUb_ENUlvE_D1Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEvEUb_ENUlvE_D1Ev(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void __copy_helper_block_e8_32c51_ZTSKNSt3__18weak_ptrIN3ims6lazuli12ChatServicesEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c18_ZTS12ClientConfig144c68_ZTSRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
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
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v7;
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

  *(a1 + 136) = *(a2 + 136);
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v9 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v9;
  }
}

void sub_1E4D8BFEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c51_ZTSKNSt3__18weak_ptrIN3ims6lazuli12ChatServicesEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c18_ZTS12ClientConfig144c68_ZTSRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAE50;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F5ECAE50;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEE18destroy_deallocateEv(void **__p)
{
  if (*(__p + 143) < 0)
  {
    operator delete(__p[15]);
  }

  if (*(__p + 111) < 0)
  {
    operator delete(__p[11]);
  }

  if (*(__p + 71) < 0)
  {
    operator delete(__p[6]);
  }

  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(a1 + 8))
    {
      IPTelephonyManager::getSMSManager(&v17);
      IMSSMSManager::getCapabilities(v17, (a1 + 48), a1 + 24, a1 + 120);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

LABEL_35:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "laz.cht");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(&v17, (a1 + 72));
  v4 = ims::error(&v22, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "ChatServices instance gone for ", 31);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 24);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }

  v22 = 0;
  v23 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 48), &v22);
  if (v22)
  {
    v16 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      v16 = v5;
    }

    else
    {
      v6 = xpc_null_create();
      v16 = v6;
      if (!v6)
      {
        v7 = xpc_null_create();
        v6 = 0;
        goto LABEL_20;
      }
    }

    if (MEMORY[0x1E6924740](v6) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v6);
LABEL_21:
      xpc_release(v6);
      v14 = xpc_BOOL_create(0);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      v12 = &v16;
      v13 = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v12, &v14, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v14);
      v14 = 0;
      if (*(a1 + 47) >= 0)
      {
        v8 = (a1 + 24);
      }

      else
      {
        v8 = *(a1 + 24);
      }

      v10 = xpc_string_create(v8);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      v12 = &v16;
      v13 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
      xpc_release(v11);
      v11 = 0;
      xpc_release(v10);
      v10 = 0;
      v9 = v22;
      v12 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        v12 = xpc_null_create();
      }

      (*(*v9 + 96))(v9, &v12);
      xpc_release(v12);
      v12 = 0;
      xpc_release(v16);
      goto LABEL_32;
    }

    v7 = xpc_null_create();
LABEL_20:
    v16 = v7;
    goto LABEL_21;
  }

LABEL_32:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v3)
  {
    goto LABEL_35;
  }
}