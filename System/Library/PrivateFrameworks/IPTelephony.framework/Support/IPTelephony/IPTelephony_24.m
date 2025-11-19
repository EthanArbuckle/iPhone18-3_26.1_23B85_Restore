void non-virtual thunk toBambiConferenceParticipant::~BambiConferenceParticipant(BambiConferenceParticipant *this)
{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 8));
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 16));
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 24));
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 160));
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant((this - 160));

  JUMPOUT(0x1E69235B0);
}

uint64_t BambiConferenceParticipant::start(std::__shared_weak_count **this)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  ((*this)[4].__vftable)(&v17);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11[0] = &unk_1F5EBDEF8;
  v11[1] = &_bambiDomain;
  v12 = 1073741826;
  if (*(&v17 + 1) != &_bambiDomain)
  {
    ImsResult::~ImsResult(v11);
    goto LABEL_5;
  }

  v2 = v18;
  ImsResult::~ImsResult(v11);
  if (v2 != 1073741826)
  {
LABEL_5:
    if ((*(**(&v17 + 1) + 24))(*(&v17 + 1), v18))
    {
      v4 = 0;
      goto LABEL_16;
    }

    v5 = this[27];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = this[26];
        if (v7)
        {
          if ((v7[20].__vftable & 0xFFFFFFFE) != 2)
          {
            v8 = (this[3][2].__shared_weak_owners_)(this + 24);
            (this[3]->__shared_weak_owners_)(this + 24, v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Putting participant ", 20);
            *(v8 + 17) = 0;
            (this[36][1].__shared_weak_owners_)(this + 288, v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " on hold", 8);
            *(v8 + 17) = 0;
            (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v8 + 17) = 0;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = (this[3][2].__shared_weak_owners_)(this + 24);
    (this[3]->__shared_weak_owners_)(this + 24, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "participant ", 12);
    *(v9 + 17) = 0;
    (this[36][1].__shared_weak_owners_)(this + 288, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " is already held", 16);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (!v6)
    {
LABEL_15:
      v4 = 1;
      goto LABEL_16;
    }

LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_15;
  }

  v3 = (this[3][2].__shared_weak_owners_)(this + 24);
  (this[3]->__shared_weak_owners_)(this + 24, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Participant ", 12);
  *(v3 + 17) = 0;
  (this[36][1].__shared_weak_owners_)(this + 288, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " has already joined conference", 30);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v4 = 0;
  *(v3 + 17) = 0;
LABEL_16:
  ImsResult::~ImsResult(&v17);
  return v4;
}

void sub_1E4DDE7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void BambiConferenceParticipant::handleParticipantLeftConference(BambiConferenceParticipant *this, uint64_t a2)
{
  v46 = 0;
  v47 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v40, this + 21);
  std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceParticipant,BambiCallParticipant>(&v46, &v40);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v4 = v46;
  if (!v46)
  {
    v11 = *(this + 3);
    v10 = this + 24;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Conference participant is null. Can't handle ParticipantLeftConference", 70);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    goto LABEL_66;
  }

  v5 = *(this + 139);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 138);
      if (v8)
      {
        v44 = v4;
        v45 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v8 + 16))(v8, &v44, a2);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        v9 = v7;
        goto LABEL_65;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (*(this + 1120))
  {
    v13 = *(this + 27);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(this + 26);
        if (v15)
        {
          v16 = *(v15 + 432);
          if (v16)
          {
            v17 = *(v15 + 424);
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v18 = std::__shared_weak_count::lock(v16);
            if (!v18)
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v40, this + 21);
          if (v40)
          {
            v29 = v40 + 8;
          }

          else
          {
            v29 = 0;
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          if (v17 == v29)
          {
            v30 = *(this + 28);
            v31 = *(this + 29);
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v32 = *(v15 + 432);
            *(v15 + 424) = v30;
            *(v15 + 432) = v31;
            if (v32)
            {
              std::__shared_weak_count::__release_weak(v32);
            }

            if (v31)
            {
              std::__shared_weak_count::__release_weak(v31);
            }

            v33 = *(v15 + 1520);
            *(v15 + 1512) = 0u;
            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v34 = *(this + 35);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = v35;
        v37 = *(this + 34);
        if (v37)
        {
          v38 = v47;
          v39[0] = v4;
          v39[1] = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            BambiConferenceCall::setParticipantState(v37, v39, 10);
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            BambiConferenceCall::setParticipantState(v37, v39, 10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }

    if (v14)
    {
      v9 = v14;
LABEL_65:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    bzero(&v40, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(&v40, 15, 11);
    v40 = &unk_1F5EC4038;
    v19 = *(this + 27);
    if (v19 && (v20 = std::__shared_weak_count::lock(v19)) != 0)
    {
      v21 = v20;
      v22 = 0;
      v23 = *(this + 26);
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v23 = 0;
      v21 = 0;
      v22 = 1;
    }

    v24 = v43;
    v42 = v23;
    v43 = v21;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if ((v22 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v25 = *(this + 29);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = v26;
        v28 = *(this + 28);
        if (v28)
        {
          (*(*v28 + 16))(v28, &v40);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&v40);
  }

LABEL_66:
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }
}

void sub_1E4DDEBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  v6 = *(v4 - 88);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceParticipant,BambiCallParticipant>(char ***a1, char ***a2)
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

void BambiConferenceParticipant::handleReferFailed(BambiConferenceParticipant *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v5 = this + 24;
  v4 = *(this + 3);
  *(this + 32) = 0;
  v6 = *(this + 66);
  v7 = (*(v4 + 64))(this + 24);
  (*(*(this + 3) + 16))(this + 24, v7);
  if (v6 != 7)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Unable to add ", 14);
    *(v7 + 17) = 0;
    (*(*(this + 36) + 40))(this + 288, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " to conference.", 15);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    v14 = *(this + 27);
    if (v14)
    {
      v10 = std::__shared_weak_count::lock(v14);
      if (v10)
      {
        v15 = *(this + 26);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v10 = 0;
    }

    v16 = *(this + 29);
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = *(this + 28) != 0;
        if (!v15)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = 0;
        if (!v15)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    if (!v18)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ReferFailed");
      BambiCall::endWithReason(v15, v23);
      ImsResult::~ImsResult(v23);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_27:
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v10)
      {
        goto LABEL_30;
      }

      return;
    }

LABEL_26:
    BambiCallParticipant::setState(this, 10, 1);
    goto LABEL_27;
  }

  (*(*(this + 36) + 40))(this + 288, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " is booted. Swallow refer error, go back to Joined state.", 57);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  BambiCallParticipant::setState(this, 6, 0);
  v8 = *(this + 35);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 34);
      if (v11)
      {
        v12 = v11[48];
        if (v12)
        {
          v12 = std::__shared_weak_count::lock(v12);
          v13 = v12;
          if (v12)
          {
            v12 = v11[47];
          }
        }

        else
        {
          v13 = 0;
        }

        v19 = SipStack::prefs(v12);
        v20 = ImsPrefs::EndConferenceOn405(v19);
        v21 = v20;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          if (v21)
          {
LABEL_37:
            v22 = (*(*v5 + 56))(v5);
            (*(*v5 + 16))(v5, v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Ending conference due to error response", 39);
            *(v22 + 17) = 0;
            (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v22 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(__p, "EmptyConference");
            (*(*v11 + 64))(v26, v11, __p);
            ImsResult::~ImsResult(v26);
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else if (v20)
        {
          goto LABEL_37;
        }
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4DDF10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

void sub_1E4DDF178()
{
  if (v0)
  {
    JUMPOUT(0x1E4DDF184);
  }

  JUMPOUT(0x1E4DDF164);
}

void BambiConferenceParticipant::handleReferNotification(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  {
    v17 = *(a1 + 24);
    v16 = a1 + 24;
    v18 = (*(v17 + 56))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "recevied refer notification that isn't a response", 49);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    return;
  }

  v7 = v6;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1 + 24;
  v10 = (*(*(a1 + 24) + 64))(a1 + 24);
  (*(*(a1 + 24) + 16))(a1 + 24, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Got ", 4);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), v7[32]);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " refer event for ", 17);
  *(v10 + 17) = 0;
  v11 = a1 + 288;
  (*(*(a1 + 288) + 40))(a1 + 288, v10);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v12 = *(a1 + 264);
  if ((v12 - 3) < 2)
  {
    v13 = *(a1 + 216);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14 && *(a1 + 208))
      {
        v15 = v7[32];
        if (v15 - 200 > 0x63)
        {
          if (v15 >= 0x12C)
          {
            v23 = (*(*v9 + 64))(a1 + 24);
            (*(*v9 + 16))(a1 + 24, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Unable to add ", 14);
            *(v23 + 17) = 0;
            (*(*v11 + 40))(a1 + 288, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " to conference.", 15);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            BambiCallParticipant::setState(a1, 10, 1);
          }
        }

        else
        {
          BambiConferenceParticipant::joinedSuccessfully(a1);
        }

LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    v21 = (*(*v9 + 48))(a1 + 24);
    (*(*v9 + 16))(v9, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "got refer notification without a call object", 44);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v12 != 7)
  {
    goto LABEL_22;
  }

  v19 = v7[32];
  if (v19 - 200 >= 0x64)
  {
    if (v19 < 0x12C)
    {
      goto LABEL_22;
    }

    v22 = (*(*v9 + 64))(a1 + 24);
    (*(*v9 + 16))(a1 + 24, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Unable to remove ", 17);
    *(v22 + 17) = 0;
    (*(*v11 + 40))(a1 + 288, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " from conference.", 17);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    v20 = 10;
  }

  else
  {
    v20 = 8;
  }

  BambiCallParticipant::setState(a1, v20, 1);
LABEL_22:
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4DDF758(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void BambiConferenceParticipant::joinedSuccessfully(BambiConferenceParticipant *this)
{
  if ((*(this + 66) - 3) >= 3)
  {
    v3 = this + 24;
    v4 = (*(*(this + 3) + 64))(this + 24);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Swallow duplicate join successful event", 39);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
  }

  else
  {
    SipTimerContainer::cancelAllTimers((this + 1128));
    v40 = 0;
    v41 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v37, this + 21);
    std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceParticipant,BambiCallParticipant>(&v40, &v37);
    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }

    if (v40)
    {
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v2 = v41;
      v36[0] = v40;
      v36[1] = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        BambiCallJoinedConferenceEvent::BambiCallJoinedConferenceEvent(&v37, v36);
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      else
      {
        BambiCallJoinedConferenceEvent::BambiCallJoinedConferenceEvent(&v37, v36);
      }

      v8 = *(this + 27);
      if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
      {
        v10 = v9;
        v11 = 0;
        v12 = *(this + 26);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v10 = 0;
        v12 = 0;
        v11 = 1;
      }

      v13 = *(&v38 + 1);
      *&v38 = v12;
      *(&v38 + 1) = v10;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if ((v11 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v14 = *(this + 29);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = *(this + 28);
          if (v17)
          {
            (*(*v17 + 16))(v17, &v37);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      BambiCallParticipant::setState(this, 6, 1);
      v18 = *(this + 27);
      if (v18)
      {
        v19 = std::__shared_weak_count::lock(v18);
        if (v19)
        {
          v20 = *(this + 26);
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      v21 = *(this + 35);
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v23 = *(this + 34);
          if (v23)
          {
            v24 = *(v23 + 1888);
            v25 = *(v23 + 1896);
            while (v24 != v25)
            {
              if (SipUri::equals(v24, (this + 288), 1))
              {
                if (!v20)
                {
                  goto LABEL_45;
                }

                v28 = (*(*(this + 3) + 64))(this + 24);
                (*(*(this + 3) + 16))(this + 24, v28);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Keeping headless participant session", 36);
                *(v28 + 17) = 0;
                (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v28 + 17) = 0;
                BambiCall::terminateMediaSession(v20);
                BambiCall::lendSipSession(v20, __p);
                v29 = *__p;
                __p[0] = 0;
                __p[1] = 0;
                v30 = *(this + 163);
                *(this + 81) = v29;
                if (v30)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                  if (__p[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
                  }
                }

                goto LABEL_39;
              }

              v24 = (v24 + 432);
            }
          }
        }
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "JoinedConference");
        (*(*v20 + 64))(v35, v20, __p);
        ImsResult::~ImsResult(v35);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_39:
        v26 = (*(*(this + 3) + 64))(this + 24);
        (*(*(this + 3) + 16))(this + 24, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Removing participant from original call", 39);
        *(v26 + 17) = 0;
        (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v26 + 17) = 0;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v31, this + 21);
        if (*(v20 + 189) == v31)
        {
          v27 = *(v20 + 190);
          *(v20 + 189) = 0;
          *(v20 + 190) = 0;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      if (v22)
      {
LABEL_45:
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      *&v37 = &unk_1F5ED0300;
      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v39 + 1));
      }

      *&v37 = &unk_1F5EC4090;
      if (*(&v38 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v38 + 1));
      }
    }

    else
    {
      v6 = *(this + 3);
      v5 = this + 24;
      v7 = (*(v6 + 64))(v5);
      (*(*v5 + 16))(v5, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Failed to set join. Conference participant is null", 50);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }
  }
}

void sub_1E4DDFD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  BambiCallJoinedConferenceEvent::~BambiCallJoinedConferenceEvent((v18 - 128));
  v20 = *(v18 - 72);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void BambiConferenceParticipant::handleReferSubscriptionTerminated(BambiConferenceParticipant *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v4 = *(this + 3);
  *(this + 32) = 0;
  v5 = *(this + 66);
  v6 = (*(v4 + 64))(this + 24);
  (*(*(this + 3) + 16))(this + 24, v6);
  if (v5 != 3)
  {
    if (v5 == 7)
    {
      (*(*(this + 36) + 40))(this + 288, v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " is booted. Swallow refer termination, go back to Joined state.", 63);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;

      BambiCallParticipant::setState(this, 6, 1);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "REFER subscription terminated", 29);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
    }

    return;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Unable to add ", 14);
  *(v6 + 17) = 0;
  (*(*(this + 36) + 40))(this + 288, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " to conference. REFER subscription terminated early.", 52);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = *(this + 27);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(this + 26);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(this + 29);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(this + 28) != 0;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = 0;
      if (!v9)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  if (!v12)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ReferFailed");
    BambiCall::endWithReason(v9, v15);
    ImsResult::~ImsResult(v15);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }

LABEL_25:
  BambiCallParticipant::setState(this, 10, 1);
LABEL_26:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4DE013C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (!v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  goto LABEL_5;
}

void BambiConferenceParticipant::handleEvent(BambiConferenceParticipant *this, BambiCallEvent *a2)
{
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *(a2 + 2);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v6 && v5)
    {
      v7 = (*(*(this + 3) + 64))(this + 24);
      (*(*(this + 3) + 16))(this + 24, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Event ", 6);
      *(v7 + 17) = 0;
      (*(*a2 + 40))(&v34, a2);
      LoggableString::LoggableString(&v35, &v34);
      (*(*v7 + 40))(v7, &v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for participant call ", 22);
      *(v7 + 17) = 0;
      ObfuscatedString::ObfuscatedString(&v31, v5 + 21);
      (*(*v7 + 56))(v7, &v31);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = (*(*(this + 3) + 64))(this + 24);
  (*(*(this + 3) + 16))(this + 24, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Event ", 6);
  *(v8 + 17) = 0;
  (*(*a2 + 40))(&v35, a2);
  LoggableString::LoggableString(&v31, &v35);
  (*(*v8 + 40))(v8, &v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " for participant call [UnknownCall]", 35);
  *(v8 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  v9 = *(a2 + 2);
  if (v9 > 13)
  {
    if (v9 <= 0x1A)
    {
      if (((1 << v9) & 0x60C0000) != 0)
      {
        goto LABEL_22;
      }

      if (v9 == 14)
      {
        *(this + 1120) = 0;
        if (*(this + 66) == 6)
        {
          return;
        }

        v27 = (*(*(this + 3) + 64))(this + 24);
        (*(*(this + 3) + 16))(this + 24, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " enter error state ", 19);
        *(v27 + 17) = 0;
        (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v27 + 17) = 0;
        goto LABEL_43;
      }

      if (v9 == 15)
      {
        *(this + 1120) = 0;
        if (*(this + 66) > 2)
        {
          return;
        }

        v19 = this + 24;
        v20 = (*(*(this + 3) + 64))(this + 24);
        (*(*(this + 3) + 16))(this + 24, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " before sending join request.", 29);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        v21 = *(this + 29);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = v22;
            v24 = *(this + 28);
            if (v24)
            {
              v25 = (*(*v19 + 64))(this + 24);
              (*(*v19 + 16))(this + 24, v25);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Pass event to old delegate ", 27);
              *(v25 + 17) = 0;
              (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v25 + 17) = 0;
              (*(*v24 + 16))(v24, a2);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

        v26 = (*(*(this + 3) + 64))(this + 24);
        (*(*(this + 3) + 16))(this + 24, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Transition participant to Error state.", 38);
        *(v26 + 17) = 0;
        (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v26 + 17) = 0;
LABEL_43:
        v17 = this;
        v18 = 10;
LABEL_44:
        BambiCallParticipant::setState(v17, v18, 1);
        return;
      }
    }

LABEL_45:
    v29 = *(this + 3);
    v28 = this + 24;
    v30 = (*(v29 + 64))(v28);
    (*(*v28 + 16))(v28, v30);
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v30[17] = 0;
    return;
  }

  if (v9 != 10 && v9 != 12)
  {
    if (v9 == 13)
    {
      if (*(this + 66) != 1)
      {
        return;
      }

      v17 = this;
      v18 = 2;
      goto LABEL_44;
    }

    goto LABEL_45;
  }

LABEL_22:
  v10 = *(this + 29);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 28);
      if (v13)
      {
        v15 = *(this + 3);
        v14 = this + 24;
        v16 = (*(v15 + 64))(v14);
        (*(*v14 + 16))(v14, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " passed on to old delegate ", 27);
        *(v16 + 17) = 0;
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        (*(*v13 + 16))(v13, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

uint64_t BambiConferenceParticipant::joinConference(BambiConferenceParticipant *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = &unk_1F5EBDEF8;
  v49 = &_bambiDomain;
  v52 = 0;
  if (*(this + 66) != 2)
  {
    v7 = 0;
    goto LABEL_60;
  }

  v2 = *(this + 35);
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
    goto LABEL_12;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v4 = *(this + 34);
  if (!v4)
  {
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  v5 = *(v4 + 1888);
  v6 = *(v4 + 1896);
  while (v5 != v6)
  {
    if (SipUri::equals(v5, (this + 288), 1))
    {
      BambiCallParticipant::setState(this, 5, 1);
      if ((BambiConferenceCall::supportsConferenceEvents(v4) & 1) == 0)
      {
        v35 = (*(*(this + 3) + 64))(this + 24);
        (*(*(this + 3) + 16))(this + 24, v35);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "call doesn't support conference events, and we have no REFER. Assuming participant join was successful", 102);
        *(v35 + 17) = 0;
        (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v35 + 17) = 0;
        BambiConferenceParticipant::joinedSuccessfully(this);
      }

      v7 = 1;
      goto LABEL_59;
    }

    v5 = (v5 + 432);
  }

  v8 = 0;
LABEL_13:
  v9 = *(this + 27);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = *(this + 26);
      v12 = v11 != 0;
      if (v11)
      {
        v13 = v8;
      }

      else
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        v44 = v4;
        v45 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = std::__shared_weak_count::lock(*(v11 + 384));
        v15 = *(v11 + 376);
        v16 = *(v15 + 248);
        v17 = *(v15 + 256);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = SipUserAgent::config(v16);
        (*(*this + 104))(&v46, this, &v44, *(v18 + 617));
        ImsResult::operator=(&v48, &v46);
        ImsResult::~ImsResult(&v46);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  if (((*(*v49 + 24))(v49, v50) & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_52;
    }

    v22 = std::__shared_weak_count::lock(*(v11 + 384));
    v23 = *(v11 + 376);
    v24 = *(v23 + 248);
    v25 = *(v23 + 256);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *(SipUserAgent::config(v24) + 624);
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v34 = *(SipUserAgent::config(v24) + 624);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (!v34)
      {
        goto LABEL_52;
      }
    }

    v27 = std::__shared_weak_count::lock(*(v11 + 384));
    v28 = *(v11 + 376);
    v29 = *(v28 + 248);
    v30 = *(v28 + 256);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *(SipUserAgent::config(v29) + 624);
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      v36 = *(SipUserAgent::config(v29) + 624);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_52:
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v46, this + 21);
    v37 = v47;
    if (v47)
    {
      p_shared_weak_owners = &v47->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    }

    v56 = 0;
    operator new();
  }

  v19 = this + 24;
  v20 = (*(*(this + 3) + 64))(this + 24);
  (*(*(this + 3) + 16))(this + 24, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Failed to send refer. ", 22);
  *(v20 + 17) = 0;
  v48[2](&v48, v20);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  v46 = 0;
  v47 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v42, this + 21);
  std::dynamic_pointer_cast[abi:ne200100]<BambiConferenceParticipant,BambiCallParticipant>(&v46, &v42);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v46)
  {
    v21 = v47;
    v41[0] = v46;
    v41[1] = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      BambiConferenceCall::setParticipantState(v4, v41, 10);
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      BambiConferenceCall::setParticipantState(v4, v41, 10);
    }

    v33 = (*(*v49 + 24))(v49, v50);
  }

  else
  {
    v32 = (*(*v19 + 64))(this + 24);
    (*(*v19 + 16))(v19, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Failed to set Error state. ", 27);
    *(v32 + 17) = 0;
    v48[2](&v48, v32);
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v32 + 17) = 0;
    v33 = (*(*v49 + 24))(v49, v50);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }

  v7 = v33 ^ 1u;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v3)
  {
LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_60:
  ImsResult::~ImsResult(&v48);
  v39 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E4DE11B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  ImsResult::~ImsResult(&a16);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  ImsResult::~ImsResult(&a27);
  _Unwind_Resume(a1);
}

uint64_t BambiConferenceParticipant::handleConferenceNotification(uint64_t a1, uint64_t a2, SipUri *this)
{
  if (a2 != 1)
  {
    if (a2 == 9)
    {
      v5 = *(a1 + 264);
      if (v5 == 6)
      {
        v11 = 8;
      }

      else
      {
        if (v5 == 7)
        {
          v6 = a1 + 24;
          v7 = (*(*(a1 + 24) + 64))(a1 + 24);
          (*(*v6 + 16))(v6, v7);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Swallow disconnected event in kStateLeaving", 43);
          *(v7 + 17) = 0;
          (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v7 + 17) = 0;
          return 1;
        }

        v11 = 10;
      }

      BambiCallParticipant::setState(a1, v11, 1);
      return 1;
    }

    v9 = a1 + 24;
    v10 = (*(*(a1 + 24) + 64))(a1 + 24, a2, this);
    (*(*v9 + 16))(v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Ignoring the conference event status ", 37);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923340](*(v10 + 8), a2);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    return 1;
  }

  if ((*(a1 + 823) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 808))
    {
      goto LABEL_8;
    }

LABEL_13:
    SipUri::operator=((a1 + 696), this);
    BambiConferenceParticipant::joinedSuccessfully(a1);
    return 1;
  }

  if (!*(a1 + 823))
  {
    goto LABEL_13;
  }

LABEL_8:

  return SipUri::equals(this, (a1 + 696), 1);
}

void BambiCallJoinedConferenceEvent::~BambiCallJoinedConferenceEvent(BambiCallJoinedConferenceEvent *this)
{
  *this = &unk_1F5ED0300;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_1F5ED0300;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_1F5ED0300;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceParticipant::handleTimer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 == 22 && (v4 >= 0 ? (v5 = a2) : (v5 = *a2), (v6 = *v5, v7 = v5[1], v8 = *(v5 + 14), v6 == 0x41726F4674696157) ? (v9 = v7 == 0x7365636375536464) : (v9 = 0), v9 ? (v10 = v8 == 0x72656D6954737365) : (v10 = 0), v10))
  {
    v13 = a1 + 24;
    v14 = (*(*(a1 + 24) + 56))(a1 + 24);
    (*(*v13 + 16))(a1 + 24, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Participant failed to join", 26);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;

    BambiCallParticipant::setState(a1, 10, 1);
  }

  else
  {
    v11 = a1 + 24;
    v12 = (*(*(a1 + 24) + 56))(a1 + 24);
    (*(*v11 + 16))(v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Unknown timer fired", 19);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
  }
}

void *BambiConferenceParticipant::logPrefix(BambiConferenceParticipant *this, ImsOutStream *a2)
{
  v4 = *(this + 35);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 34);
      if (v7)
      {
        (*(*v7 + 56))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ConferenceParticipant: ", 23);
  *(a2 + 17) = 0;
  return result;
}

void *std::__shared_ptr_emplace<BambiConferenceParticipant>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<BambiCall> &,std::shared_ptr<BambiConferenceCall> &,SipUri const&,std::allocator<BambiConferenceParticipant>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED0230;
  std::construct_at[abi:ne200100]<BambiConferenceParticipant,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiConferenceCall> &,SipUri const&,BambiConferenceParticipant*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<BambiConferenceParticipant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED0230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<BambiConferenceParticipant,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiConferenceCall> &,SipUri const&,BambiConferenceParticipant*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v7;
  v21 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v9 + 1872;
  if (!v9)
  {
    v10 = 0;
  }

  v18 = v10;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallParticipant::BambiCallParticipant(a1, &v20, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  *a1 = &unk_1F5ECFFB8;
  *(a1 + 8) = &unk_1F5ED0040;
  *(a1 + 16) = &unk_1F5ED0178;
  *(a1 + 24) = &unk_1F5ED01A8;
  *(a1 + 160) = &unk_1F5ED0208;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  SipUri::SipUri((a1 + 288));
  SipUri::SipUri((a1 + 696));
  *(a1 + 1104) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 1128));
  *(a1 + 1316) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 280);
  *(a1 + 272) = v9;
  *(a1 + 280) = v8;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 1120) = 1;
  SipUri::operator=((a1 + 288), a4);
  *(a1 + 1256) = a1 + 16;
  std::string::basic_string[abi:ne200100]<0>(&__str, "ims.call");
  BambiCall::clientConfig(v7, &v13);
  std::string::operator=((a1 + 1176), &__str);
  *(a1 + 1200) = v13;
  *(a1 + 1208) = v14;
  std::string::operator=((a1 + 1216), &__p);
  *(a1 + 1240) = v16;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    *(a1 + 1312) = *(v7 + 1529);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1E4DE1D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v30 = v28[163];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  SipTimerContainer::~SipTimerContainer((v28 + 141));
  v31 = v28[139];
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  SipUri::~SipUri((v28 + 87));
  SipUri::~SipUri((v28 + 36));
  v32 = v28[35];
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  BambiCallParticipant::~BambiCallParticipant(v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (!v26)
    {
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  goto LABEL_4;
}

void *std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED0280;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED0280;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED0280;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiConferenceParticipant::joinConference(void)::$_0,std::allocator<BambiConferenceParticipant::joinConference(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void XcapCBRule::XcapCBRule(XcapCBRule *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  v4 = 1;
  v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v4);
  bambi::XmlTreeItem::XmlTreeItem(v2, "rule", (v3 + 5));
  *this = &unk_1F5ED0370;
  *(this + 1) = &unk_1F5ED03E8;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  _ZNSt3__115allocate_sharedB8ne200100I15XcapCBConditionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E4DE2204(_Unwind_Exception *a1)
{
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

void XcapCBRule::setAttribute(uint64_t a1, uint64_t a2, const std::string *a3)
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

uint64_t XcapCBRule::createChild(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size == 10)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v6 = p_p->__r_.__value_.__r.__words[0];
    v7 = LOWORD(p_p->__r_.__value_.__r.__words[1]);
    if (v6 == *"conditions" && v7 == *"ns")
    {
      a1 = *(a1 + 88);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_18;
    }
  }

  else if (size == 7)
  {
    v4 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &__p;
    }

    if (LODWORD(v4->__r_.__value_.__l.__data_) ^ 0x69746361 | *(v4->__r_.__value_.__r.__words + 3) ^ 0x736E6F69)
    {
      a1 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

    return a1;
  }

  a1 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void XcapCBRule::parseChild(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  memset(&v28, 0, sizeof(v28));
  XcapNs::stripXcapNs(a2, &v28);
  size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  if (size == 5)
  {
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v28;
    }

    else
    {
      v15 = v28.__r_.__value_.__r.__words[0];
    }

    data = v15->__r_.__value_.__l.__data_;
    v17 = v15->__r_.__value_.__s.__data_[4];
    if (data != 1869376609 || v17 != 119)
    {
      goto LABEL_42;
    }

    __p = 0;
    v26 = 0;
    v27 = 0;
    (*(*a1 + 72))(a1, a2, a3, &__p);
    v19 = SHIBYTE(v27);
    if (SHIBYTE(v27) < 0)
    {
      if (v26 != 5)
      {
        goto LABEL_39;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v27) != 5)
      {
        goto LABEL_39;
      }

      p_p = &__p;
    }

    v21 = *p_p;
    v22 = p_p[4];
    if (v21 == 1936482662 && v22 == 101)
    {
      v24 = 0;
LABEL_40:
      a1[104] = v24;
      if (v19 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_42;
    }

LABEL_39:
    v24 = 1;
    goto LABEL_40;
  }

  if (size != 10)
  {
    if (size != 7)
    {
      goto LABEL_42;
    }

    v7 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v28.__r_.__value_.__r.__words[0];
    }

    v8 = v7->__r_.__value_.__l.__data_;
    v9 = *(v7->__r_.__value_.__r.__words + 3);
    if (v8 != 1769235297 || v9 != 1936617321)
    {
      goto LABEL_42;
    }

LABEL_21:
    bambi::XmlParserItem::parseChild(a1, a2, a3);
    goto LABEL_42;
  }

  v11 = &v28;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v28.__r_.__value_.__r.__words[0];
  }

  v12 = v11->__r_.__value_.__r.__words[0];
  v13 = LOWORD(v11->__r_.__value_.__r.__words[1]);
  if (v12 == *"conditions" && v13 == *"ns")
  {
    goto LABEL_21;
  }

LABEL_42:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DE2658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void XcapCBRule::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E4DE2954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v29 = *(v25 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4DE29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a18)
  {
    JUMPOUT(0x1E4DE29C8);
  }

  JUMPOUT(0x1E4DE29C4);
}

uint64_t XcapCBRule::asString@<X0>(XcapCBRule *this@<X0>, _BYTE *a2@<X8>)
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  *__src = 0u;
  *v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Rule-Id: ", 9);
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
    XcapCBCondition::asString(v10, __p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Allowed: ", 11);
  if (*(this + 104))
  {
    v15 = "Yes";
  }

  else
  {
    v15 = "No";
  }

  if (*(this + 104))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v34, MEMORY[0x1E69E5318]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v34);
  std::ostream::put();
  std::ostream::flush();
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if ((BYTE8(v31) & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < __src[1])
    {
      *&v31 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
  }

  else
  {
    if ((BYTE8(v31) & 8) == 0)
    {
      v19 = 0;
      a2[23] = 0;
      goto LABEL_37;
    }

    v21 = *(&v26 + 1);
    v20 = *(&v27 + 1);
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

LABEL_37:
  a2[v19] = 0;
  *&v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v25 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  *(&v25 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v32);
}

void sub_1E4DE2D74(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void XcapCBRule::~XcapCBRule(XcapCBRule *this)
{
  *this = &unk_1F5ED0370;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED03E8;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  *this = &unk_1F5ED0370;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED03E8;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED0370;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED03E8;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

void non-virtual thunk toXcapCBRule::~XcapCBRule(XcapCBRule *this)
{
  *(this - 1) = &unk_1F5ED0370;
  *this = &unk_1F5ED03E8;
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
  *(this - 1) = &unk_1F5ED0370;
  *this = &unk_1F5ED03E8;
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

void *_ZNSt3__120__shared_ptr_emplaceI15XcapCBConditionNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED0498;
  XcapCBCondition::XcapCBCondition((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<XcapCBCondition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED0498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void **std::vector<std::string>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SipContactParamList::~SipContactParamList(SipContactParamList *this)
{
  *this = &unk_1F5ED05B0;
  v1 = (this + 8);
  std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F5ED05B0;
  v2 = (this + 8);
  std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1E69235B0](this, 0xA1C4030951706);
}

BOOL SipContactHeader::mergeHeader(SipContactHeader *this, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    std::vector<SipContactParam>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SipContactParam const*>,std::__wrap_iter<SipContactParam const*>>(this + 9, *(this + 10), v4[9], v4[10], 0xEFBEFBEFBEFBEFBFLL * ((v4[10] - v4[9]) >> 3));
  }

  return v5 != 0;
}

void SipContactHeader::~SipContactHeader(SipContactHeader *this)
{
  *this = &unk_1F5ED04E8;
  *(this + 8) = &unk_1F5ED05B0;
  v2 = (this + 72);
  std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](&v2);
  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED04E8;
  *(this + 8) = &unk_1F5ED05B0;
  v2 = (this + 72);
  std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](&v2);
  SipHeader::~SipHeader(this);
  MEMORY[0x1E69235B0]();
}

void sub_1E4DE3600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void **a13)
{
  *(v13 + 64) = a12;
  a13 = a11;
  std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](&a13);
  SipHeader::~SipHeader(v13);
  MEMORY[0x1E69235B0](v13, 0x10B3C40010BB2DELL);
  _Unwind_Resume(a1);
}

void SipContactParam::~SipContactParam(SipContactParam *this)
{
  *this = &unk_1F5ED0580;
  v2 = *(this + 62);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 464, *(this + 59));
  *(this + 52) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 424, *(this + 54));
  SipUri::~SipUri((this + 8));
}

{
  *this = &unk_1F5ED0580;
  v2 = *(this + 62);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 464, *(this + 59));
  *(this + 52) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 424, *(this + 54));
  SipUri::~SipUri((this + 8));

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED0580;
  v2 = *(this + 62);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 464, *(this + 59));
  *(this + 52) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 424, *(this + 54));
  SipUri::~SipUri((this + 8));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipContactParam>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x82082082082083)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipContactParam>,SipContactParam*>(uint64_t result, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = result;
    v8 = 0;
    v9 = a4 - 504;
    v10 = a2;
    do
    {
      std::allocator_traits<std::allocator<SipContactParam>>::construct[abi:ne200100]<SipContactParam,SipContactParam const&,void,0>(v7, v4, v10);
      v10 += 504;
      v4 += 504;
      v8 -= 504;
      v9 += 504;
    }

    while (v10 != a3);
    v11 = v6;
    do
    {
      result = (**v6)(v6);
      v6 += 63;
      v11 += 63;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_1E4DE3948(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 504);
    do
    {
      (**v5)(v5);
      v5 -= 63;
      v3 -= 504;
      v2 += 504;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocator_traits<std::allocator<SipContactParam>>::construct[abi:ne200100]<SipContactParam,SipContactParam const&,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = &unk_1F5ED0580;
  SipUri::SipUri((a2 + 8), (a3 + 8));
  *(a2 + 416) = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>((a2 + 424), *(a3 + 424), (a3 + 432));
  *(a2 + 449) = 1;
  *(a2 + 448) = *(a3 + 448);
  *(a2 + 456) = *(a3 + 456);
  result = std::map<std::string,std::map<std::string,std::string>>::map[abi:ne200100]((a2 + 464), a3 + 464);
  v6 = *(a3 + 496);
  *(a2 + 488) = *(a3 + 488);
  *(a2 + 496) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1E4DE3A64(_Unwind_Exception *a1)
{
  *(v1 + 416) = v2;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 424, *(v1 + 432));
  SipUri::~SipUri((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::map<std::string,std::string>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::map<std::string,std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,std::string>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::map<std::string,std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,std::string>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::string>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::string>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__construct_node<std::pair<std::string const,std::map<std::string,std::string>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::map<std::string,std::string>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1E4DE3D30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__split_buffer<SipContactParam>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 504;
    (**(i - 504))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<SipContactParam>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 63;
      v7 = v4 - 63;
      do
      {
        (**v7)(v7);
        v6 -= 63;
        v8 = v7 == v2;
        v7 -= 63;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<SipContactParam>::__emplace_back_slow_path<SipContactParam const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEFBEFBEFBEFBEFBFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x82082082082082)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (0xDF7DF7DF7DF7DF7ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDF7DF7DF7DF7DF7ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEFBEFBEFBEFBEFBFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x41041041041041)
  {
    v6 = 0x82082082082082;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipContactParam>>(a1, v6);
  }

  v13 = 0;
  v14 = 504 * v2;
  std::allocator_traits<std::allocator<SipContactParam>>::construct[abi:ne200100]<SipContactParam,SipContactParam const&,void,0>(a1, 504 * v2, a2);
  v15 = 504 * v2 + 504;
  v7 = *(a1 + 8);
  v8 = 504 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipContactParam>,SipContactParam*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SipContactParam>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4DE4170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SipContactParam>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,std::string>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
          std::pair<std::string &,std::map<std::string,std::string> &>::operator=[abi:ne200100]<std::string const,std::map<std::string,std::string>,0>(v16, (v9 + 4));
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

    result = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_multi<std::pair<std::string const,std::map<std::string,std::string>> const&>();
  }

  return result;
}

void sub_1E4DE4304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::map<std::string,std::string> &>::operator=[abi:ne200100]<std::string const,std::map<std::string,std::string>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_multi<std::pair<std::string const,std::map<std::string,std::string>> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__construct_node<std::pair<std::string const,std::map<std::string,std::string>> const&>();
}

void sub_1E4DE4430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t XpcConnection::XpcConnection(uint64_t a1, char *name, dispatch_queue_t targetq)
{
  *a1 = 0;
  *(a1 + 8) = targetq;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (name[23] < 0)
  {
    name = *name;
  }

  *a1 = xpc_connection_create_mach_service(name, targetq, 0);
  XpcConnection::initializeConnection_nl(a1, 1);
  return a1;
}

void sub_1E4DE44D8(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v2, *v4);
  std::__tree<std::string>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

void XpcConnection::initializeConnection_nl(XpcConnection *this, int a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    dispatch_retain(v4);
  }

  v7[4] = this;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke;
  v8[3] = &__block_descriptor_tmp_4;
  v8[4] = this;
  v6[4] = this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke_3;
  v6[3] = &__block_descriptor_tmp_6_0;
  v5 = *this;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 1;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZL15setEventHandlerP17_xpc_connection_sU13block_pointerFvRKN3xpc4dictEEU13block_pointerFvvES8_PS8__block_invoke;
  handler[3] = &unk_1E8769F60;
  handler[4] = v7;
  handler[5] = v6;
  handler[6] = v8;
  handler[7] = v11;
  xpc_connection_set_event_handler(v5, handler);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZL15setEventHandlerP17_xpc_connection_sU13block_pointerFvRKN3xpc4dictEEU13block_pointerFvvES8_PS8__block_invoke_2;
  aBlock[3] = &unk_1E8769F88;
  aBlock[4] = v11;
  *(this + 11) = _Block_copy(aBlock);
  _Block_object_dispose(v11, 8);
  if (a2)
  {
    xpc_connection_resume(*this);
  }
}

void XpcConnection::~XpcConnection(XpcConnection *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    (*(v2 + 16))();
    _Block_release(*(this + 11));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__1;
  v3 = *(this + 8);
  v15 = __Block_byref_object_dispose__2;
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (v3)
  {
    std::vector<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back[abi:ne200100](&__p, this + 8);
  }

  if (*(this + 9))
  {
    std::vector<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back[abi:ne200100]((v12 + 5), this + 9);
  }

  if (*(this + 10))
  {
    std::vector<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back[abi:ne200100]((v20 + 5), this + 10);
  }

  v4 = *(this + 2);
  if (v4 != (this + 24))
  {
    do
    {
      std::vector<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back[abi:ne200100]((v20 + 5), v4 + 7);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 24));
  }

  v8 = *this;
  if (*this)
  {
    xpc_connection_cancel(*this);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN13XpcConnectionD2Ev_block_invoke;
  block[3] = &unk_1E8769ED8;
  block[4] = &v11;
  block[5] = &v19;
  block[6] = v8;
  v9 = *(this + 1);
  if (v9)
  {
    dispatch_async(v9, block);
    dispatch_release(*(this + 1));
    *(this + 1) = 0;
  }

  else
  {
    ___ZN13XpcConnectionD2Ev_block_invoke(block);
  }

  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v19, 8);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  std::__tree<std::string>::destroy(this + 40, *(this + 6));
  std::__tree<std::string>::destroy(this + 16, *(this + 3));
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void std::vector<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void ___ZN13XpcConnectionD2Ev_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(a1[4] + 8);
  for (i = *(v3 + 40); i != *(v3 + 48); ++i)
  {
    v5 = *i;
    _Block_release(v5);
    v3 = *(a1[4] + 8);
  }

  v6 = *(a1[5] + 8);
  for (j = *(v6 + 40); j != *(v6 + 48); ++j)
  {
    v8 = *j;
    _Block_release(v8);
    v6 = *(a1[5] + 8);
  }
}

void ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  original = v3;
  if (v3)
  {
    xpc_retain(v3);
    v4 = original;
  }

  else
  {
    v4 = xpc_null_create();
    original = v4;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v4);
  v6 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xstring = 0;
  __p[0] = &original;
  __p[1] = "request";
  xpc::dict::object_proxy::operator xpc::object(__p, &xstring);
  if (MEMORY[0x1E6924740](xstring) == MEMORY[0x1E69E9ED0])
  {
    xpc::dict::to_debug_string(__p, original);
    if (v27 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    syslog(5, "got no key named 'request'; got: %s\n", v12);
  }

  else
  {
    string_ptr = xpc_string_get_string_ptr(xstring);
    if (string_ptr)
    {
      v8 = *(v2 + 80);
      message = 0;
      reply = xpc_dictionary_create_reply(original);
      v10 = reply;
      v11 = MEMORY[0x1E69E9E80];
      if (reply)
      {
        message = reply;
      }

      else
      {
        v10 = xpc_null_create();
        message = v10;
        if (!v10)
        {
          v14 = xpc_null_create();
          v10 = 0;
          goto LABEL_26;
        }
      }

      if (MEMORY[0x1E6924740](v10) == v11)
      {
        xpc_retain(v10);
        goto LABEL_27;
      }

      v14 = xpc_null_create();
LABEL_26:
      message = v14;
LABEL_27:
      xpc_release(v10);
      v15 = message;
      if (MEMORY[0x1E6924740](message) == v11)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
        v19 = *(v2 + 48);
        v18 = v2 + 48;
        v17 = v19;
        if (!v19)
        {
          goto LABEL_41;
        }

        v20 = v18;
        do
        {
          v21 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 32), __p);
          if ((v21 & 0x80u) == 0)
          {
            v20 = v17;
          }

          v17 = *(v17 + ((v21 >> 4) & 8));
        }

        while (v17);
        if (v20 == v18 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v20 + 32)) & 0x80) != 0)
        {
LABEL_41:
          v20 = v18;
        }

        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v18 != v20)
        {
          v22 = *(v20 + 56);
          if (v22)
          {
            (*(v22 + 16))(v22, &original, &message);
            xpc_connection_send_message(v6, message);
            v15 = message;
            goto LABEL_55;
          }
        }

        xpc::dict::to_debug_string(__p, original);
        if (v27 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, string_ptr);
        v16 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v2 + 16, __p);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v2 + 24 != v16)
        {
          v8 = *(v16 + 56);
        }

        if (v8)
        {
          (*(v8 + 16))(v8, &original);
LABEL_55:
          xpc_release(v15);
          goto LABEL_56;
        }

        xpc::dict::to_debug_string(__p, original);
        if (v27 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }
      }

      syslog(5, "Unhandled message for request: %s\n", v23);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_55;
    }

    xpc::dict::to_debug_string(__p, original);
    if (v27 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    syslog(5, "got empty request, dropping; got: %s\n", v13);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_56:
  xpc_release(xstring);
  xpc_release(v6);
  xpc_release(original);
}

void sub_1E4DE4E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v20);
  xpc_release(object);
  xpc_release(v19);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t ___ZN13XpcConnection23initializeConnection_nlEb_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *XpcConnection::setDisconnectionHandler(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 64) = result;
  return result;
}

void *XpcConnection::setInterruptionHandler(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 72) = result;
  return result;
}

uint64_t XpcConnection::setHandlerForMessage(uint64_t a1, void **a2, const void *a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 16, a2);
  if (a1 + 24 != v6)
  {
    _Block_release(*(v6 + 56));
  }

  v7 = _Block_copy(a3);
  result = std::__tree<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
  *(result + 56) = v7;
  return result;
}

void *XpcConnection::setDefaultMessageHandler(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 80) = result;
  return result;
}

void xpc::dict::to_debug_string(xpc::dict *this, uint64_t a2)
{
  v3 = MEMORY[0x1E6924690](a2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::string::basic_string[abi:ne200100]<0>(this, v3);

  free(v3);
}

void ___ZL15setEventHandlerP17_xpc_connection_sU13block_pointerFvRKN3xpc4dictEEU13block_pointerFvvES8_PS8__block_invoke(void *a1, void *a2)
{
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v2 = a2;
    v4 = MEMORY[0x1E6924740](a2);
    if (v4 != MEMORY[0x1E69E9E98])
    {
      v5 = MEMORY[0x1E69E9E80];
      if (v4 != MEMORY[0x1E69E9E80])
      {
        syslog(5, "Got unexpected event\n");
        return;
      }

      v7 = a1[6];
      if (v2)
      {
        xpc_retain(v2);
        object = v2;
      }

      else
      {
        v2 = xpc_null_create();
        object = v2;
        if (!v2)
        {
          v9 = xpc_null_create();
          v2 = 0;
          goto LABEL_20;
        }
      }

      if (MEMORY[0x1E6924740](v2) == v5)
      {
        xpc_retain(v2);
LABEL_21:
        (*(v7 + 16))(v7, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v2);
        return;
      }

      v9 = xpc_null_create();
LABEL_20:
      object = v9;
      goto LABEL_21;
    }

    if (v2 == MEMORY[0x1E69E9E18])
    {
      syslog(5, "Connection interrupted!\n");
      v6 = a1[4];
      if (!v6)
      {
        return;
      }
    }

    else
    {
      if (v2 != MEMORY[0x1E69E9E20])
      {
        return;
      }

      syslog(5, "Connection invalid!\n");
      v6 = a1[5];
      if (!v6)
      {
        return;
      }
    }

    v8 = *(v6 + 16);

    v8();
  }
}

void sub_1E4DE52C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void({block_pointer})(xpc::dict const&)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4DE5444(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void SipLocationDiscoveryData::SipLocationDiscoveryData(SipLocationDiscoveryData *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "requestForLocationInformation");
  bambi::XmlTreeItem::XmlTreeItem(v2, __p, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5ED0610;
  *(this + 1) = &unk_1F5ED0688;
  *(this + 64) = 0;
}

void sub_1E4DE5518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipLocationDiscoveryData::SipLocationDiscoveryData(SipLocationDiscoveryData *this, const SipLocationDiscoveryData *a2)
{
  *this = &unk_1F5ED5818;
  v4 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "requestForLocationInformation");
  bambi::XmlTreeItem::XmlTreeItem(v4, __p, 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5ED0610;
  *(this + 1) = &unk_1F5ED0688;
  *(this + 64) = *(a2 + 64);
}

void sub_1E4DE55FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLocationDiscoveryData::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 7)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 7)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }
  }

  v5 = *v4;
  v6 = *(v4 + 3);
  if (v5 == 1399156335 && v6 == 1953458259)
  {
    *(a1 + 64) = 1;
  }

  return bambi::XmlParserItem::parseChild(a1, a2, a3);
}

void SipLocationDiscoveryData::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E4DE574C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v19 = *(v17 + 8);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void SipLocationDiscoveryData::~SipLocationDiscoveryData(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipLocationDiscoveryData::~SipLocationDiscoveryData(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

void QMINasCache::~QMINasCache(QMINasCache *this)
{
  std::__tree<unsigned int>::destroy(this + 48, *(this + 7));
  std::__tree<unsigned int>::destroy(this + 24, *(this + 4));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t QMINasCache::mapRadioType(QMINasCache *this, const ims::AccessNetwork *a2)
{
  if (ims::AccessNetwork::isLTE(this))
  {
    return 8;
  }

  else if (ims::AccessNetwork::isWifi(this))
  {
    return 6;
  }

  else if (ims::AccessNetwork::isNR(this))
  {
    return 12;
  }

  else
  {
    return -1;
  }
}

double QMINasCache::start@<D0>(QMINasCache *this@<X0>, const ims::AccessNetwork *a2@<X3>, const ims::AccessNetwork *a3@<X1>, uint64_t a4@<X2>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v11 = 48;
  if (a3)
  {
    v11 = 24;
  }

  v12 = this + v11;
  v13 = 1;
  if ((a4 & 2) != 0)
  {
    v13 = 2;
  }

  if ((a4 & 4) != 0)
  {
    v13 = 4;
  }

  if (a5)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = QMINasCache::mapRadioType(a2, a3);
  v16 = v15;
  v18 = v12 + 8;
  v17 = *(v12 + 1);
  v59 = v8;
  v60 = a6;
  if (!v17)
  {
    *(v81 + 3) = 0;
    LODWORD(v81[0]) = 0;
    v29 = *(this + 4);
    *(this + 72) = v8;
    *(this + 10) = v14;
LABEL_40:
    operator new();
  }

  v58 = a5;
  v19 = v12 + 8;
  v20 = *(v12 + 1);
  do
  {
    v21 = *(v20 + 32);
    v22 = v21 >= v14;
    v23 = v21 < v14;
    if (v22)
    {
      v19 = v20;
    }

    v20 = *(v20 + 8 * v23);
  }

  while (v20);
  v24 = this;
  if (v19 == v18 || v14 < *(v19 + 4))
  {
    *(v81 + 3) = 0;
    LODWORD(v81[0]) = 0;
    v25 = (this + 16);
    v26 = *(this + 4);
    *(this + 72) = v59;
    *(this + 10) = v14;
    while (1)
    {
      while (1)
      {
        v27 = v17;
        v28 = v17[4];
        if (v28 <= v14)
        {
          break;
        }

        v17 = *v27;
        if (!*v27)
        {
          goto LABEL_40;
        }
      }

      if (v28 >= v14)
      {
        break;
      }

      v17 = v27[1];
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    v37 = std::string::basic_string[abi:ne200100]<0>(v81, "nas");
    v61[0] = 0;
    v64 = 0;
    v38 = ims::debug(v37, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Sending status request START on instance ", 41);
    *(v38 + 17) = 0;
    MEMORY[0x1E6923350](*(v38 + 8), *v25);
    *(v38 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " for media ", 11);
    *(v38 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E8769FC0[v14 - 1]);
    (*(*v38 + 32))(v38, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " and RAT ", 9);
    *(v38 + 17) = 0;
    v39 = nas::asString(v16);
    std::string::basic_string[abi:ne200100]<0>(v85, v39);
    (*(*v38 + 32))(v38, v85);
    (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v38 + 17) = 0;
    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    v40 = *(this + 1);
    if (!v40)
    {
      goto LABEL_55;
    }

    v41 = std::__shared_weak_count::lock(v40);
    if (!v41)
    {
      goto LABEL_55;
    }

    v36 = v41;
    if (*this)
    {
      (*(**this + 16))(*this, *v25, 0, v16, v14, v59);
    }

    goto LABEL_54;
  }

  v30 = v15;
  if (v19[69] == v15)
  {
    ++*(v19 + 10);
    v31 = std::string::basic_string[abi:ne200100]<0>(v81, "nas");
    v65[0] = 0;
    v68 = 0;
    v32 = ims::debug(v31, v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "ignoring duplicate START call status request (", 46);
    *(v32 + 17) = 0;
    MEMORY[0x1E6923350](*(v32 + 8), *(v19 + 10));
    *(v32 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " total) on instance ", 20);
    *(v32 + 17) = 0;
    MEMORY[0x1E6923350](*(v32 + 8), *(this + 4));
    *(v32 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " for media ", 11);
    *(v32 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E8769FC0[v14 - 1]);
    (*(*v32 + 32))(v32, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " and RAT ", 9);
    *(v32 + 17) = 0;
    v33 = nas::asString(v30);
    std::string::basic_string[abi:ne200100]<0>(v85, v33);
    (*(*v32 + 32))(v32, v85);
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v32 + 17) = 0;
    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (v68 == 1 && v67 < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    v34 = *(this + 1);
    if (!v34)
    {
      goto LABEL_55;
    }

    v35 = std::__shared_weak_count::lock(v34);
    if (!v35)
    {
      goto LABEL_55;
    }

    v36 = v35;
    if (*this)
    {
      (*(**this + 24))(*this, *(this + 4), a4, v58);
    }

LABEL_54:
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
LABEL_55:
    result = 0.0;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0u;
    *(v60 + 72) = 0u;
    *v60 = &unk_1F5EBDEF8;
    *(v60 + 8) = &_bambiDomain;
    *(v60 + 16) = 0;
    return result;
  }

  v43 = v18;
  do
  {
    v44 = v17[4];
    v22 = v44 >= v14;
    v45 = v44 < v14;
    if (v22)
    {
      v43 = v17;
    }

    v17 = v17[v45];
  }

  while (v17);
  if (v43 == v18 || v14 < *(v43 + 4))
  {
    result = 0.0;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = 1073741836;
  }

  else
  {
    if (v43[69] == v15)
    {
      v46 = std::string::basic_string[abi:ne200100]<0>(v85, "nas");
      LOBYTE(__p[0]) = 0;
      v72 = 0;
      v47 = ims::debug(v46, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "Ignoring UPDATE request on instance ", 36);
      *(v47 + 17) = 0;
      MEMORY[0x1E6923350](*(v47 + 8), *(v24 + 4));
      *(v47 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), " for media ", 11);
      *(v47 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(v79, off_1E8769FC0[v14 - 1]);
      (*(*v47 + 32))(v47, v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), ".  RAT type ", 12);
      *(v47 + 17) = 0;
      v48 = nas::asString(v30);
      std::string::basic_string[abi:ne200100]<0>(v77, v48);
      (*(*v47 + 32))(v47, v77);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), " has not changed!", 17);
      *(v47 + 17) = 0;
      (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v47 + 17) = 0;
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }

      if (v80 < 0)
      {
        operator delete(v79[0]);
      }

      if (v72 == 1 && v71 < 0)
      {
        operator delete(v70);
      }

      if (v86 < 0)
      {
        operator delete(v85[0]);
      }
    }

    else
    {
      v49 = std::string::basic_string[abi:ne200100]<0>(v85, "nas");
      LOBYTE(v81[0]) = 0;
      v84 = 0;
      v50 = ims::debug(v49, v81);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), "Updating status request ", 24);
      *(v50 + 17) = 0;
      v51 = *(v43 + 16);
      if (v51 > 2)
      {
        v52 = "???";
      }

      else
      {
        v52 = off_1E8769FA8[v51];
      }

      std::string::basic_string[abi:ne200100]<0>(v79, v52);
      (*(*v50 + 32))(v50, v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), " on instance ", 13);
      *(v50 + 17) = 0;
      MEMORY[0x1E6923350](*(v50 + 8), *(v24 + 4));
      *(v50 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), " for media ", 11);
      *(v50 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(v77, off_1E8769FC0[v14 - 1]);
      (*(*v50 + 32))(v50, v77);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), " and RAT ", 9);
      *(v50 + 17) = 0;
      v53 = nas::asString(v43[69]);
      std::string::basic_string[abi:ne200100]<0>(v75, v53);
      (*(*v50 + 32))(v50, v75);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), " to ", 4);
      *(v50 + 17) = 0;
      v54 = nas::asString(v16);
      std::string::basic_string[abi:ne200100]<0>(v73, v54);
      (*(*v50 + 32))(v50, v73);
      (*(*v50 + 64))(v50, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v50 + 17) = 0;
      if (v74 < 0)
      {
        operator delete(v73[0]);
      }

      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      if (v78 < 0)
      {
        operator delete(v77[0]);
      }

      if (v80 < 0)
      {
        operator delete(v79[0]);
      }

      if (v84 == 1 && v83 < 0)
      {
        operator delete(v82);
      }

      if (v86 < 0)
      {
        operator delete(v85[0]);
      }

      v43[69] = v16;
      v55 = *(v24 + 1);
      if (v55)
      {
        v56 = std::__shared_weak_count::lock(v55);
        if (v56)
        {
          v57 = v56;
          if (*v24)
          {
            (*(**v24 + 16))(*v24, *(v24 + 4), *(v43 + 16), v16, v14, v59);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }
    }

    result = 0.0;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = 0;
  }

  return result;
}

double QMINasCache::connect@<D0>(QMINasCache *this@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = 48;
  if (a2)
  {
    v6 = 24;
  }

  v7 = this + v6;
  v8 = 1;
  if ((a3 & 2) != 0)
  {
    v8 = 2;
  }

  if ((a3 & 4) != 0)
  {
    v8 = 4;
  }

  if (a4)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v12 = *(v7 + 1);
  v10 = v7 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  v15 = v10;
  do
  {
    v16 = *(v11 + 32);
    v17 = v16 >= v9;
    v18 = v16 < v9;
    if (v17)
    {
      v15 = v11;
    }

    v11 = *(v11 + 8 * v18);
  }

  while (v11);
  if (v15 != v10 && v9 >= *(v15 + 4))
  {
    if (*(v15 + 16))
    {
      v20 = std::string::basic_string[abi:ne200100]<0>(v41, "nas");
      v29[0] = 0;
      v32 = 0;
      v21 = ims::debug(v20, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Ignoring duplicate CONNECT call status request on instance ", 59);
      *(v21 + 17) = 0;
      MEMORY[0x1E6923350](*(v21 + 8), *(this + 4));
      *(v21 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " for media ", 11);
      *(v21 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(v35, off_1E8769FC0[v9 - 1]);
      (*(*v21 + 32))(v21, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " and RAT ", 9);
      *(v21 + 17) = 0;
      v22 = nas::asString(v15[69]);
      std::string::basic_string[abi:ne200100]<0>(__p, v22);
      (*(*v21 + 32))(v21, __p);
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v32 == 1 && v31 < 0)
      {
        operator delete(v30);
      }

      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    else
    {
      *(v15 + 16) = 2;
      v23 = std::string::basic_string[abi:ne200100]<0>(v41, "nas");
      v37[0] = 0;
      v40 = 0;
      v24 = ims::debug(v23, v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Sending status request CONNECT on instance ", 43);
      *(v24 + 17) = 0;
      MEMORY[0x1E6923350](*(v24 + 8), *(this + 4));
      *(v24 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " for media ", 11);
      *(v24 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(v35, off_1E8769FC0[v9 - 1]);
      (*(*v24 + 32))(v24, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " and RAT ", 9);
      *(v24 + 17) = 0;
      v25 = nas::asString(v15[69]);
      std::string::basic_string[abi:ne200100]<0>(__p, v25);
      (*(*v24 + 32))(v24, __p);
      (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v24 + 17) = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      v26 = *(this + 1);
      if (v26)
      {
        v27 = std::__shared_weak_count::lock(v26);
        if (v27)
        {
          v28 = v27;
          if (*this)
          {
            (*(**this + 16))(*this, *(this + 4), 2, v15[69], v9, a2);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }
    }

    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_18:
    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 1073741836;
  }

  return result;
}

double QMINasCache::end@<D0>(QMINasCache *this@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = 48;
  if (a2)
  {
    v6 = 24;
  }

  v7 = this + v6;
  v8 = 1;
  if ((a3 & 2) != 0)
  {
    v8 = 2;
  }

  if ((a3 & 4) != 0)
  {
    v8 = 4;
  }

  if (a4)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v7 + 1);
  if (!v10)
  {
    goto LABEL_18;
  }

  v13 = v7 + 8;
  do
  {
    v14 = *(v10 + 32);
    v15 = v14 >= v9;
    v16 = v14 < v9;
    if (v15)
    {
      v13 = v10;
    }

    v10 = *(v10 + 8 * v16);
  }

  while (v10);
  if (v13 == v7 + 8 || v9 < *(v13 + 4))
  {
LABEL_18:
    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 1073741836;
    return result;
  }

  *(v13 + 16) = 1;
  v18 = *(v13 + 10) - 1;
  *(v13 + 10) = v18;
  if (v18)
  {
    v19 = std::string::basic_string[abi:ne200100]<0>(v41, "nas");
    v29[0] = 0;
    v32 = 0;
    v20 = ims::debug(v19, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Ignoring duplicate END call status request (", 44);
    *(v20 + 17) = 0;
    MEMORY[0x1E6923350](*(v20 + 8), *(v13 + 10));
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " remaining) on instance ", 24);
    *(v20 + 17) = 0;
    MEMORY[0x1E6923350](*(v20 + 8), *(this + 4));
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " for media ", 11);
    *(v20 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(v35, off_1E8769FC0[v9 - 1]);
    (*(*v20 + 32))(v20, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " and RAT ", 9);
    *(v20 + 17) = 0;
    v21 = nas::asString(v13[69]);
    std::string::basic_string[abi:ne200100]<0>(__p, v21);
    (*(*v20 + 32))(v20, __p);
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v22 = v41[0];
  }

  else
  {
    v23 = std::string::basic_string[abi:ne200100]<0>(v41, "nas");
    v37[0] = 0;
    v40 = 0;
    v24 = ims::debug(v23, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Sending status request END on instance ", 39);
    *(v24 + 17) = 0;
    MEMORY[0x1E6923350](*(v24 + 8), *(this + 4));
    *(v24 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " for media ", 11);
    *(v24 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(v35, off_1E8769FC0[v9 - 1]);
    (*(*v24 + 32))(v24, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " and RAT ", 9);
    *(v24 + 17) = 0;
    v25 = nas::asString(v13[69]);
    std::string::basic_string[abi:ne200100]<0>(__p, v25);
    (*(*v24 + 32))(v24, __p);
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    v26 = *(this + 1);
    if (v26)
    {
      v27 = std::__shared_weak_count::lock(v26);
      if (v27)
      {
        v28 = v27;
        if (*this)
        {
          (*(**this + 16))(*this, *(this + 4), 1, v13[69], v9, a2);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }

    std::__tree<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::__map_value_compare<nas::CallMediaType,std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::less<nas::CallMediaType>,true>,std::allocator<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>>>::__remove_node_pointer(v7, v13);
    v22 = v13;
  }

  operator delete(v22);
LABEL_45:
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *a5 = &unk_1F5EBDEF8;
  *(a5 + 8) = &_bambiDomain;
  *(a5 + 16) = 0;
  return result;
}

double QMINasCache::update@<D0>(QMINasCache *this@<X0>, const ims::AccessNetwork *a2@<X1>, uint64_t a3@<X8>)
{
  QMINasCache::update(this, 1, a2);
  QMINasCache::update(this, 0, a2);
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

void QMINasCache::update(QMINasCache *this, const ims::AccessNetwork *a2, const ims::AccessNetwork *a3)
{
  v5 = 48;
  if (a2)
  {
    v5 = 24;
  }

  v6 = (this + v5);
  v7 = QMINasCache::mapRadioType(a3, a2);
  v10 = *v6;
  v8 = v6 + 1;
  v9 = v10;
  if (v10 != v8)
  {
    v11 = v7;
    do
    {
      if (*(v9 + 69) != v11)
      {
        if (*(v9 + 16) != 1)
        {
          v12 = std::string::basic_string[abi:ne200100]<0>(&v38, "nas");
          v34[0] = 0;
          v37 = 0;
          v13 = ims::debug(v12, v34);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Updating status request ", 24);
          *(v13 + 17) = 0;
          v14 = *(v9 + 16);
          v15 = "???";
          if (v14 <= 2)
          {
            v15 = off_1E8769FA8[v14];
          }

          std::string::basic_string[abi:ne200100]<0>(v32, v15);
          (*(*v13 + 32))(v13, v32);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " on instance ", 13);
          *(v13 + 17) = 0;
          MEMORY[0x1E6923350](*(v13 + 8), *(this + 4));
          *(v13 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " for media ", 11);
          *(v13 + 17) = 0;
          v16 = v9[7] - 1;
          v17 = "???";
          if (v16 <= 7)
          {
            v17 = off_1E8769FC0[v16];
          }

          std::string::basic_string[abi:ne200100]<0>(v30, v17);
          (*(*v13 + 32))(v13, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " and RAT ", 9);
          *(v13 + 17) = 0;
          v18 = nas::asString(*(v9 + 69));
          std::string::basic_string[abi:ne200100]<0>(v28, v18);
          (*(*v13 + 32))(v13, v28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " to ", 4);
          *(v13 + 17) = 0;
          v19 = nas::asString(v11);
          std::string::basic_string[abi:ne200100]<0>(__p, v19);
          (*(*v13 + 32))(v13, __p);
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          if (v29 < 0)
          {
            operator delete(v28[0]);
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }

          if (v33 < 0)
          {
            operator delete(v32[0]);
          }

          if (v37 == 1 && v36 < 0)
          {
            operator delete(v35);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }

          v20 = *(this + 1);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = v21;
              if (*this)
              {
                (*(**this + 16))(*this, *(this + 4), *(v9 + 16), v11, v9[7], a2);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }
          }
        }

        *(v9 + 69) = v11;
      }

      v23 = v9[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v9[2];
          v25 = *v24 == v9;
          v9 = v24;
        }

        while (!v25);
      }

      v9 = v24;
    }

    while (v24 != v8);
  }
}

double QMINasCache::cancel@<D0>(QMINasCache *this@<X0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = 48;
  if (a2)
  {
    v6 = 24;
  }

  v7 = this + v6;
  v8 = 1;
  if ((a3 & 2) != 0)
  {
    v8 = 2;
  }

  if ((a3 & 4) != 0)
  {
    v8 = 4;
  }

  if (a4)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v7 + 1);
  if (!v10)
  {
    goto LABEL_18;
  }

  v12 = v7 + 8;
  do
  {
    v13 = *(v10 + 32);
    v14 = v13 >= v9;
    v15 = v13 < v9;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v15);
  }

  while (v10);
  if (v12 != v7 + 8 && v9 >= *(v12 + 4))
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(&v28, "nas");
    v24[0] = 0;
    v27 = 0;
    v18 = ims::debug(v17, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Removing call status record on instance ", 40);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), *(this + 4));
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " for media ", 11);
    *(v18 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(v22, off_1E8769FC0[v9 - 1]);
    (*(*v18 + 32))(v18, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " and RAT ", 9);
    *(v18 + 17) = 0;
    v19 = nas::asString(v12[69]);
    std::string::basic_string[abi:ne200100]<0>(__p, v19);
    (*(*v18 + 32))(v18, __p);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    std::__tree<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::__map_value_compare<nas::CallMediaType,std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::less<nas::CallMediaType>,true>,std::allocator<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>>>::__remove_node_pointer(v7, v12);
    operator delete(v12);
    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_18:
    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 1073741836;
  }

  return result;
}

void sub_1E4DE7934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a30 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  _Unwind_Resume(exception_object);
}

double QMINasCache::cancelLast@<D0>(QMINasCache *this@<X0>, BOOL *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 48;
  if (*(this + 72))
  {
    v5 = 24;
  }

  v6 = this + v5;
  if (a2)
  {
    *a2 = *(this + 72);
  }

  v7 = *(v6 + 1);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = *(this + 10);
  v9 = v6 + 8;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 == v6 + 8 || v8 < *(v9 + 4))
  {
LABEL_13:
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v14 = 1073741836;
LABEL_14:
    *(a3 + 16) = v14;
    return result;
  }

  if (*(v9 + 16))
  {
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v14 = 1073741826;
    goto LABEL_14;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(&v28, "nas");
  v24[0] = 0;
  v27 = 0;
  v16 = ims::debug(v15, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Removing call status record on instance ", 40);
  *(v16 + 17) = 0;
  MEMORY[0x1E6923350](*(v16 + 8), *(this + 4));
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " for media ", 11);
  *(v16 + 17) = 0;
  v17 = *(v9 + 7) - 1;
  if (v17 > 7)
  {
    v18 = "???";
  }

  else
  {
    v18 = off_1E8769FC0[v17];
  }

  std::string::basic_string[abi:ne200100]<0>(v22, v18);
  (*(*v16 + 32))(v16, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " and RAT ", 9);
  *(v16 + 17) = 0;
  v19 = nas::asString(v9[69]);
  std::string::basic_string[abi:ne200100]<0>(__p, v19);
  (*(*v16 + 32))(v16, __p);
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::__tree<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::__map_value_compare<nas::CallMediaType,std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::less<nas::CallMediaType>,true>,std::allocator<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>>>::__remove_node_pointer(v6, v9);
  operator delete(v9);
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

void sub_1E4DE7CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a30 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  _Unwind_Resume(exception_object);
}

double QMINasCache::setLastResponded@<D0>(QMINasCache *this@<X0>, uint64_t a2@<X8>)
{
  v2 = 1073741836;
  v3 = 48;
  if (*(this + 72))
  {
    v3 = 24;
  }

  v4 = (this + v3 + 8);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(this + 10);
    v7 = (this + v3 + 8);
    do
    {
      v8 = *(v5 + 4);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v5;
      }

      v5 = *&v5[8 * v10];
    }

    while (v5);
    if (v7 != v4 && v6 >= v7[4])
    {
      v2 = 1073741826;
      if (!*(v7 + 16) && (v7[6] & 1) == 0)
      {
        v2 = 0;
        *(v7 + 48) = 1;
      }
    }
  }

  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = v2;
  return result;
}

uint64_t *std::__tree<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::__map_value_compare<nas::CallMediaType,std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>,std::less<nas::CallMediaType>,true>,std::allocator<std::__value_type<nas::CallMediaType,QMINasCache::CallStatusRecord>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
}

uint64_t BambiCallEvent::BambiCallEvent(uint64_t a1, int a2, uint64_t *a3)
{
  *a1 = &unk_1F5EC4090;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  v4 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 24);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *(a1 + 16) = v4;
    *(a1 + 24) = 0;
  }

  return a1;
}

void BambiCallEvent::BambiCallEvent(BambiCallEvent *this, const BambiCallEvent *a2)
{
  *this = &unk_1F5EC4090;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 2) = *(a2 + 2);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = *(this + 3);
    *(this + 2) = v3;
    *(this + 3) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *(this + 2) = v3;
    *(this + 3) = 0;
  }
}

uint64_t BambiCallNamedEvent::BambiCallNamedEvent(uint64_t a1, __int128 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = BambiCallEvent::BambiCallEvent(a1, 0, v8);
  *v4 = &unk_1F5ED0738;
  v5 = (v4 + 4);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  return a1;
}

void sub_1E4DE7FB4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallNamedEvent::fullName(BambiCallNamedEvent *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void BambiCallSessionRequestedEvent::~BambiCallSessionRequestedEvent(BambiCallSessionRequestedEvent *this)
{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiCallProvisionalResponseEvent::BambiCallProvisionalResponseEvent(void *a1, uint64_t *a2)
{
  v4 = *(*a2 + 128) - 180;
  if (v4 > 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = dword_1E516DB30[v4];
  }

  v7[0] = 0;
  v7[1] = 0;
  BambiCallEvent::BambiCallEvent(a1, v5, v7);
  v6 = *a2;
  *a1 = &unk_1F5ECD4E0;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4DE8160(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCallPreconditionsSatisfiedEvent::BambiCallPreconditionsSatisfiedEvent(uint64_t a1, const std::string *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v4 = BambiCallEvent::BambiCallEvent(a1, 23, v6);
  *v4 = &unk_1F5ED0A70;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::string::operator=((v4 + 32), a2);
  return a1;
}

void sub_1E4DE8210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F5EC4090;
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

BambiCallEvent *BambiCallPreconditionsSatisfiedEvent::BambiCallPreconditionsSatisfiedEvent(BambiCallEvent *a1, uint64_t a2)
{
  BambiCallEvent::BambiCallEvent(a1, a2);
  *v4 = &unk_1F5ED0A70;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::string::operator=((v4 + 32), (a2 + 32));
  return a1;
}

void sub_1E4DE82BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F5EC4090;
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void SessionTerminatedResultDomain::~SessionTerminatedResultDomain(void **this)
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

uint64_t BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(uint64_t a1, int a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = BambiCallEvent::BambiCallEvent(a1, a2, v10);
  *v5 = &unk_1F5ED0980;
  *(v5 + 32) = 10;
  *(v5 + 64) = 0u;
  v6 = (v5 + 64);
  *(v5 + 120) = 0;
  v7 = (v5 + 120);
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0x10000;
  *(v5 + 148) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  SipUri::SipUri((v5 + 184));
  *(a1 + 32) = *(a3 + 64);
  std::string::operator=(v6, (a3 + 32));
  *(a1 + 148) = *(a3 + 134);
  std::string::operator=(v7, (a3 + 32));
  *(a1 + 147) = *(a3 + 133);
  v8 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

{
  v8[0] = 0;
  v8[1] = 0;
  v5 = BambiCallEvent::BambiCallEvent(a1, a2, v8);
  *v5 = &unk_1F5ED0980;
  *(v5 + 32) = 10;
  *(v5 + 64) = 0u;
  *(v5 + 120) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0x10000;
  *(v5 + 148) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  SipUri::SipUri((v5 + 184));
  if (*(a3 + 8) == &SessionTerminatedResultDomain::_domain)
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = 10;
  }

  *(a1 + 32) = v6;
  return a1;
}

void sub_1E4DE8448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F5EC4090;
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(uint64_t a1, int a2, int a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v5 = BambiCallEvent::BambiCallEvent(a1, a2, v8);
  *v5 = &unk_1F5ED0980;
  *(v5 + 32) = 10;
  *(v5 + 64) = 0u;
  *(v5 + 120) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0x10000;
  *(v5 + 148) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  SipUri::SipUri((v5 + 184));
  *(a1 + 32) = a3;
  v6 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1E4DE85A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F5EC4090;
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(uint64_t a1, int a2, BambiCallEvent *a3)
{
  BambiCallEvent::BambiCallEvent(a1, a3);
  *v6 = &unk_1F5ED0980;
  *(v6 + 32) = 10;
  *(v6 + 64) = 0u;
  v7 = (v6 + 64);
  *(v6 + 120) = 0;
  v8 = (v6 + 120);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0x10000;
  *(v6 + 148) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  SipUri::SipUri((v6 + 184));
  *(a1 + 8) = a2;
  *(a1 + 32) = *(a3 + 8);
  if (*(a3 + 5))
  {
    std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
  }

  v9 = *(a1 + 48);
  *(a1 + 40) = 0uLL;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 56) = *(a3 + 56);
  std::string::operator=(v7, (a3 + 64));
  std::string::operator=(v8, a3 + 5);
  *(a1 + 144) = *(a3 + 144);
  *(a1 + 147) = *(a3 + 147);
  return a1;
}

void sub_1E4DE8758(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + 184));
  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F5EC4090;
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1E4DE88C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F5EC4090;
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(void **this)
{
  *this = &unk_1F5ED0980;
  SipUri::~SipUri((this + 23));
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DE9294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionTerminationBaseEvent::setReasonFromIncomingByeOrCancelRequest(uint64_t a1, uint64_t a2, void (***a3)(uint64_t *__return_ptr))
{
  *(a1 + 56) = 0;
  SipMessage::reasonText(*a2, &__str);
  std::string::operator=((a1 + 64), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  SipMessage::reasonProtocol(*a2, &__str);
  std::string::operator=((a1 + 88), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 112) = SipMessage::reasonCause(*a2);
  v45 = 0;
  v46 = 0;
  v6 = *(a2 + 8);
  v43 = *a2;
  v44 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallIncomingTerminationReasons::reasonForByeOrCancelRequest(a3, &v43, &v45);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v45)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&__str, "bambi.call");
    v39[0] = 0;
    v42 = 0;
    v8 = ims::debug(v7, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "incoming ", 9);
    *(v8 + 17) = 0;
    v9 = (*(**a2 + 120))();
    LoggableString::LoggableString(&v38, v9);
    (*(*v8 + 40))(v8, &v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " request matched termination reason ", 36);
    *(v8 + 17) = 0;
    LoggableString::LoggableString(&v37, (v45 + 8));
    (*(*v8 + 40))(v8, &v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " with event ", 12);
    *(v8 + 17) = 0;
    v10 = *(v45 + 64);
    if (v10 <= 37)
    {
      v11 = (reasonStrings + 24 * v10);
    }

    else
    {
      v11 = (reasonStrings + 240);
    }

    LoggableString::LoggableString(&__p, v11);
    (*(*v8 + 40))(v8, &__p);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v12 = v45;
    *(a1 + 32) = *(v45 + 64);
    *(a1 + 147) = *(v12 + 133);
    goto LABEL_58;
  }

  v13 = (*(**a2 + 120))();
  v14 = *(v13 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v13 + 8);
  }

  if (v14 == 6 && (v15 >= 0 ? (v16 = v13) : (v16 = *v13), (v17 = *v16, v18 = *(v16 + 4), v17 == *"CANCEL") ? (v19 = v18 == *"EL") : (v19 = 0), v19))
  {
    v26 = 5;
  }

  else
  {
    *(a1 + 32) = 1;
    v20 = *(a1 + 111);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a1 + 96);
    }

    if (v20 != 3)
    {
      goto LABEL_50;
    }

    v22 = v21 >= 0 ? (a1 + 88) : *(a1 + 88);
    v23 = *v22;
    v24 = *(v22 + 2);
    v25 = v23 == SipReason::kProtocolSip && v24 == 80;
    if (!v25 || (*(a1 + 112) - 300) > 0x18F)
    {
      goto LABEL_50;
    }

    v26 = 11;
  }

  *(a1 + 32) = v26;
LABEL_50:
  v27 = std::string::basic_string[abi:ne200100]<0>(&__str, "bambi.call");
  v32[0] = 0;
  v35 = 0;
  v28 = ims::debug(v27, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "incoming ", 9);
  *(v28 + 17) = 0;
  v29 = (*(**a2 + 120))();
  (*(*v28 + 32))(v28, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " request didn't match a termination reason. Defaulting to ", 58);
  *(v28 + 17) = 0;
  v30 = *(a1 + 32);
  if (v30 <= 37)
  {
    v31 = reasonStrings + 24 * v30;
  }

  else
  {
    v31 = reasonStrings + 240;
  }

  (*(*v28 + 32))(v28, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ".", 1);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_58:
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void sub_1E4DE9970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  v48 = *(v46 - 80);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionTerminationBaseEvent::setReferrerFromIncomingByeRequest(uint64_t a1, SipMessage **a2)
{
  SipMessage::referredBy(*a2, &__str);
  std::string::operator=((a1 + 152), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DE9AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *BambiCallSessionTerminationBaseEvent::setReason(BambiCallSessionTerminationBaseEvent *this, const BambiCallTerminationReason *a2)
{
  *(this + 8) = *(a2 + 16);
  std::string::operator=((this + 64), (a2 + 32));
  result = std::string::operator=(this + 5, (a2 + 32));
  *(this + 147) = *(a2 + 133);
  return result;
}

uint64_t BambiCallSessionTerminationBaseEvent::reasonForName(uint64_t a1)
{
  v1 = 0;
  v2 = reasonStrings;
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  do
  {
    if (*(v2 + 23) >= 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = *v2;
    }

    if (!strcasecmp(v4, v3))
    {
      break;
    }

    ++v1;
    v2 += 24;
  }

  while (v1 != 38);
  return v1;
}

uint64_t BambiCallSessionTerminationBaseEvent::fullName@<X0>(BambiCallSessionTerminationBaseEvent *this@<X0>, _BYTE *a2@<X8>)
{
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *__p = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v4 = eventNames + 24 * *(this + 2);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = eventNames + 24 * *(this + 2);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v6, v7);
  v23 = 58;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v23, 1);
  v10 = *(this + 8);
  if (v10 <= 37)
  {
    v11 = reasonStrings + 24 * v10;
  }

  else
  {
    v11 = reasonStrings + 240;
  }

  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v13, v14);
  std::ostringstream::str[abi:ne200100](&v16, a2);
  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v21);
}

uint64_t BambiCallJoinedConferenceEvent::BambiCallJoinedConferenceEvent(uint64_t a1, uint64_t *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = BambiCallEvent::BambiCallEvent(a1, 20, v9);
  *v4 = &unk_1F5ED0300;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t BambiCallConferenceEvent::BambiCallConferenceEvent(uint64_t a1, int a2, uint64_t **a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v6 = BambiCallEvent::BambiCallEvent(a1, 21, v8);
  *v6 = &unk_1F5ED0908;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = a2;
  if ((v6 + 32) != a3)
  {
    std::vector<std::weak_ptr<BambiConferenceParticipant>>::__assign_with_size[abi:ne200100]<std::weak_ptr<BambiConferenceParticipant>*,std::weak_ptr<BambiConferenceParticipant>*>((v6 + 32), *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  return a1;
}

void sub_1E4DE9EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](va);
  *v4 = &unk_1F5EC4090;
  v6 = v4[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void *BambiCallConferenceEvent::BambiCallConferenceEvent(void *a1, int a2, __int128 *a3)
{
  v23[0] = 0;
  v23[1] = 0;
  v6 = BambiCallEvent::BambiCallEvent(a1, 21, v23);
  *v6 = &unk_1F5ED0908;
  *(v6 + 32) = 0;
  v7 = (v6 + 32);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = a2;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100]((v6 + 32));
  v8 = *a3;
  v9 = *(a3 + 1);
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v11 = a1[5];
  v10 = a1[6];
  if (v11 >= v10)
  {
    v13 = *v7;
    v14 = v11 - *v7;
    v15 = v14 >> 4;
    v16 = (v14 >> 4) + 1;
    if (v16 >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF0;
    v19 = 0xFFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    v24[4] = v7;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(v7, v19);
    }

    *(16 * v15) = v8;
    v12 = 16 * v15 + 16;
    memcpy(0, v13, v14);
    v20 = a1[4];
    a1[4] = 0;
    a1[5] = v12;
    v21 = a1[6];
    a1[6] = 0;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<std::weak_ptr<BambiConferenceParticipant>>::~__split_buffer(v24);
  }

  else
  {
    *v11 = v8;
    *(v11 + 1) = v9;
    v12 = (v11 + 16);
  }

  a1[5] = v12;
  return a1;
}

void sub_1E4DEA05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a13);
  *v13 = &unk_1F5EC4090;
  v16 = v13[3];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

uint64_t BambiCallConferenceEvent::fullName@<X0>(BambiCallConferenceEvent *this@<X0>, _BYTE *a2@<X8>)
{
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *__p = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v4 = eventNames + 24 * *(this + 2);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = eventNames + 24 * *(this + 2);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v6, v7);
  v23 = 58;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v23, 1);
  v10 = *(this + 14);
  if (v10 > 6)
  {
    v10 = 0;
  }

  v11 = &kCodeStrings + 24 * v10;
  v12 = v11[23];
  if (v12 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = v11[23];
  }

  else
  {
    v14 = *(v11 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v13, v14);
  std::ostringstream::str[abi:ne200100](&v16, a2);
  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v21);
}

void BambiCallSessionIntervalTooSmallEvent::BambiCallSessionIntervalTooSmallEvent(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v3 = BambiCallEvent::BambiCallEvent(a1, 22, v5);
  v4 = *a2;
  *v3 = &unk_1F5ED09C0;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4DEA364(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionIntervalTooSmallEvent::BambiCallSessionIntervalTooSmallEvent(BambiCallSessionIntervalTooSmallEvent *this, const BambiCallSessionIntervalTooSmallEvent *a2)
{
  BambiCallEvent::BambiCallEvent(this, a2);
  *v3 = &unk_1F5ED09C0;
  v4 = *(a2 + 4);
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4DEA3FC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionMovedEvent::BambiCallSessionMovedEvent(BambiCallSessionMovedEvent *this, const SipUri *a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = BambiCallEvent::BambiCallEvent(this, 32, v7);
  *v6 = &unk_1F5ED0A18;
  SipUri::SipUri((v6 + 4), a2);
  *(this + 110) = a3;
}

void sub_1E4DEA4A4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallSessionMovedEvent::BambiCallSessionMovedEvent(BambiCallSessionMovedEvent *this, const BambiCallSessionMovedEvent *a2)
{
  BambiCallEvent::BambiCallEvent(this, a2);
  *v4 = &unk_1F5ED0A18;
  SipUri::SipUri((v4 + 4), (a2 + 32));
  *(this + 110) = *(a2 + 110);
}

void sub_1E4DEA530(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EC4090;
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCallHoldResumeIndicationEvent::BambiCallHoldResumeIndicationEvent(uint64_t a1, int a2, int a3, int a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  if (a2)
  {
    v10 = 18;
  }

  else
  {
    v10 = 19;
  }

  v12[0] = *a5;
  v12[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    BambiCallEvent::BambiCallEvent(a1, v10, v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    BambiCallEvent::BambiCallEvent(a1, v10, v12);
  }

  *a1 = &unk_1F5ED07F8;
  *(a1 + 32) = a4;
  *(a1 + 36) = a3;
  return a1;
}

void BambiCallNamedEvent::~BambiCallNamedEvent(void **this)
{
  *this = &unk_1F5ED0738;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5EC4090;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5ED0738;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5EC4090;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiCallConferenceEvent::~BambiCallConferenceEvent(BambiCallConferenceEvent *this)
{
  *this = &unk_1F5ED0908;
  v3 = (this + 32);
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5ED0908;
  v3 = (this + 32);
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69235B0](this, 0x10A1C40CA4ADF0DLL);
}

{
  *this = &unk_1F5ED0908;
  v3 = (this + 32);
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1E4DEA930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](va);
  *v3 = &unk_1F5EC4090;
  v5 = v3[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x1E69235B0](v3, v2);
  _Unwind_Resume(a1);
}

void BambiCallSessionConfirmedEvent::~BambiCallSessionConfirmedEvent(BambiCallSessionConfirmedEvent *this)
{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiCallPreconditionsSatisfiedEvent::~BambiCallPreconditionsSatisfiedEvent(void **this)
{
  *this = &unk_1F5ED0A70;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5EC4090;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5ED0A70;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5EC4090;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED0A70;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5EC4090;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void BambiCallSessionIntervalTooSmallEvent::~BambiCallSessionIntervalTooSmallEvent(BambiCallSessionIntervalTooSmallEvent *this)
{
  *this = &unk_1F5ED09C0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_1F5ED09C0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED09C0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void BambiCallSessionMovedEvent::~BambiCallSessionMovedEvent(BambiCallSessionMovedEvent *this)
{
  *this = &unk_1F5ED0A18;
  SipUri::~SipUri((this + 32));
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  *this = &unk_1F5ED0A18;
  SipUri::~SipUri((this + 32));
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED0A18;
  SipUri::~SipUri((this + 32));
  *this = &unk_1F5EC4090;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void BambiCallHoldResumeIndicationEvent::~BambiCallHoldResumeIndicationEvent(BambiCallHoldResumeIndicationEvent *this)
{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5EC4090;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SessionTerminatedResultDomain::textForResultCode(int a1@<W1>, std::string *a2@<X8>)
{
  v3 = reasonStrings + 24 * a1;
  if (a1 > 37)
  {
    v3 = reasonStrings + 240;
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void std::vector<std::weak_ptr<BambiConferenceParticipant>>::__assign_with_size[abi:ne200100]<std::weak_ptr<BambiConferenceParticipant>*,std::weak_ptr<BambiConferenceParticipant>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      if (!(v10 >> 60))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a1, v10);
      }
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *>(a2, a3, v8);
    for (i = a1[1]; i != v15; i -= 2)
    {
      v17 = *(i - 1);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    a1[1] = v15;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *>(a2, (a2 + v11), v8);
    for (j = a1[1]; v12 != a3; j += 2)
    {
      v14 = v12[1];
      *j = *v12;
      j[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = j;
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *,std::weak_ptr<BambiConferenceParticipant> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void **std::__split_buffer<std::weak_ptr<BambiConferenceParticipant>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void __cxx_global_array_dtor()
{
  v0 = &byte_1EE2BBF9F;
  v1 = -120;
  v2 = &byte_1EE2BBF9F;
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

uint64_t _GLOBAL__sub_I_BambiCallEvent_cpp()
{
  v42 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(v5, "Trying");
  std::string::basic_string[abi:ne200100]<0>(v6, "SessionRequested");
  std::string::basic_string[abi:ne200100]<0>(v7, "ProvisionalResponse");
  std::string::basic_string[abi:ne200100]<0>(v8, "Ringing");
  std::string::basic_string[abi:ne200100]<0>(v9, "PlayLRBT");
  std::string::basic_string[abi:ne200100]<0>(v10, "StopLRBT");
  std::string::basic_string[abi:ne200100]<0>(v11, "CallIsBeingForwarded");
  std::string::basic_string[abi:ne200100]<0>(v12, "SessionProgress");
  std::string::basic_string[abi:ne200100]<0>(v13, "SessionConfirmed");
  std::string::basic_string[abi:ne200100]<0>(v14, "SessionActivated");
  std::string::basic_string[abi:ne200100]<0>(v15, "SessionActivationAccepted");
  std::string::basic_string[abi:ne200100]<0>(v16, "SessionDeactivated");
  std::string::basic_string[abi:ne200100]<0>(v17, "SessionDeactivationAccepted");
  std::string::basic_string[abi:ne200100]<0>(v18, "SessionTerminating");
  std::string::basic_string[abi:ne200100]<0>(v19, "SessionTerminated");
  std::string::basic_string[abi:ne200100]<0>(v20, "SessionHoldFailed");
  std::string::basic_string[abi:ne200100]<0>(v21, "SessionResumeFailed");
  std::string::basic_string[abi:ne200100]<0>(v22, "SessionHoldIndication");
  std::string::basic_string[abi:ne200100]<0>(v23, "SessionResumeIndication");
  std::string::basic_string[abi:ne200100]<0>(v24, "JoinedConference");
  std::string::basic_string[abi:ne200100]<0>(v25, "ConferenceEvent");
  std::string::basic_string[abi:ne200100]<0>(v26, "SessionIntervalTooSmall");
  std::string::basic_string[abi:ne200100]<0>(v27, "PreconditionsSatisfied");
  std::string::basic_string[abi:ne200100]<0>(v28, "MediaInitialized");
  std::string::basic_string[abi:ne200100]<0>(v29, "MediaActivated");
  std::string::basic_string[abi:ne200100]<0>(v30, "MediaDeactivated");
  std::string::basic_string[abi:ne200100]<0>(v31, "MediaConfigured");
  std::string::basic_string[abi:ne200100]<0>(v32, "ActiveForkChanged");
  std::string::basic_string[abi:ne200100]<0>(v33, "TextSessionDetected");
  std::string::basic_string[abi:ne200100]<0>(v34, "SessionAcknowledged");
  std::string::basic_string[abi:ne200100]<0>(v35, "TextSessionDeactivated");
  std::string::basic_string[abi:ne200100]<0>(v36, "SessionMoved");
  eventNames = 0;
  *algn_1EE2BD6E8 = 0;
  qword_1EE2BD6F0 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&eventNames, &__p, v37, 0x21uLL);
  v0 = 792;
  do
  {
    if (__p.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&__p.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
  __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &eventNames, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "SessionTerminated");
  ImsResultDomain::ImsResultDomain(&SessionTerminatedResultDomain::_domain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SessionTerminatedResultDomain::_domain = &unk_1F5ED08C0;
  __cxa_atexit(SessionTerminatedResultDomain::~SessionTerminatedResultDomain, &SessionTerminatedResultDomain::_domain, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "LocalHangup");
  std::string::basic_string[abi:ne200100]<0>(v5, "RemoteHangup");
  std::string::basic_string[abi:ne200100]<0>(v6, "LocalCallRejected");
  std::string::basic_string[abi:ne200100]<0>(v7, "RemoteCallRejected");
  std::string::basic_string[abi:ne200100]<0>(v8, "LocalRequestCanceled");
  std::string::basic_string[abi:ne200100]<0>(v9, "RemoteRequestCanceled");
  std::string::basic_string[abi:ne200100]<0>(v10, "CallAnsweredElsewhere");
  std::string::basic_string[abi:ne200100]<0>(v11, "SecondaryDeviceInUse");
  std::string::basic_string[abi:ne200100]<0>(v12, "SilentHangup");
  std::string::basic_string[abi:ne200100]<0>(v13, "TransferredToOtherDevice");
  std::string::basic_string[abi:ne200100]<0>(v14, "UnknownError");
  std::string::basic_string[abi:ne200100]<0>(v15, "NetworkError");
  std::string::basic_string[abi:ne200100]<0>(v16, "RemoteRequestTerminated");
  std::string::basic_string[abi:ne200100]<0>(v17, "RequestTimeout");
  std::string::basic_string[abi:ne200100]<0>(v18, "TemporarilyUnavailable");
  std::string::basic_string[abi:ne200100]<0>(v19, "EmergencySessionRequired");
  std::string::basic_string[abi:ne200100]<0>(v20, "Forbidden");
  std::string::basic_string[abi:ne200100]<0>(v21, "InviteResponseTimeout");
  std::string::basic_string[abi:ne200100]<0>(v22, "LocalError");
  std::string::basic_string[abi:ne200100]<0>(v23, "MediaError");
  std::string::basic_string[abi:ne200100]<0>(v24, "MediaTimeout");
  std::string::basic_string[abi:ne200100]<0>(v25, "MediaHeartbeatTimeout");
  std::string::basic_string[abi:ne200100]<0>(v26, "LocalSocketError");
  std::string::basic_string[abi:ne200100]<0>(v27, "WaitForRingingTimeout");
  std::string::basic_string[abi:ne200100]<0>(v28, "LocalQosTimeout");
  std::string::basic_string[abi:ne200100]<0>(v29, "VoiceNotSupported");
  std::string::basic_string[abi:ne200100]<0>(v30, "EmergencyStateExited");
  std::string::basic_string[abi:ne200100]<0>(v31, "AccessBarring");
  std::string::basic_string[abi:ne200100]<0>(v32, "OnEmergencyCall");
  std::string::basic_string[abi:ne200100]<0>(v33, "SdpError");
  std::string::basic_string[abi:ne200100]<0>(v34, "Deinitializing");
  std::string::basic_string[abi:ne200100]<0>(v35, "NoEmergencyCallLocation");
  std::string::basic_string[abi:ne200100]<0>(v36, "AudioUnit");
  std::string::basic_string[abi:ne200100]<0>(v37, "AVConferenceCrash");
  std::string::basic_string[abi:ne200100]<0>(v38, "LocalBusy");
  std::string::basic_string[abi:ne200100]<0>(v39, "BasebandCrash");
  std::string::basic_string[abi:ne200100]<0>(v40, "NetworkUnreachable");
  std::string::basic_string[abi:ne200100]<0>(v41, "RequiresRedialReasonMax");
  reasonStrings = 0;
  *algn_1EE2BD578 = 0;
  qword_1EE2BD580 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&reasonStrings, &__p, &v42, 0x26uLL);
  v1 = 912;
  do
  {
    if (__p.__r_.__value_.__s.__data_[v1 - 1] < 0)
    {
      operator delete(*(&__p.__r_.__value_.__l + v1 - 24));
    }

    v1 -= 24;
  }

  while (v1);
  __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &reasonStrings, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(kCodeStrings, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBF40, "AllParticipantsJoined");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBF58, "MergeFailed");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBF70, "ConferenceSubscriptionFailed");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BBF88, "ConferenceSubscriptionSuccess");
  result = __cxa_atexit(__cxx_global_array_dtor, 0, &dword_1E4C3F000);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DEBC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 911);
  v18 = -912;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 24;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 24;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void SipDigestAuthScheme::SipDigestAuthScheme(SipDigestAuthScheme *this, const SipDigestAuthScheme *a2)
{
  SipAuthScheme::SipAuthScheme(this, a2);
  *v4 = &unk_1F5ED0AC8;
  *(v4 + 56) = 0u;
  *(v4 + 104) = 0u;
  v5 = (v4 + 104);
  v6 = (v4 + 80);
  *(v4 + 160) = 0;
  v7 = (v4 + 160);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 48) = *(a2 + 12);
  std::string::operator=((v4 + 56), (a2 + 56));
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  }

  std::string::operator=(v5, (a2 + 104));
  *(this + 152) = *(a2 + 152);
  std::string::operator=((this + 128), (a2 + 128));
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v7, *(a2 + 20), *(a2 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 21) - *(a2 + 20)) >> 3));
  }
}

void sub_1E4DEBE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
  }

  if (*(v2 + 127) < 0)
  {
    operator delete(*v4);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v2 = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 8);
  _Unwind_Resume(a1);
}

void SipDigestAuthScheme::clear(SipDigestAuthScheme *this)
{
  *(this + 12) = 0;
  if (*(this + 79) < 0)
  {
    **(this + 7) = 0;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 56) = 0;
    *(this + 79) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](this + 10);
  if (*(this + 127) < 0)
  {
    **(this + 13) = 0;
    *(this + 14) = 0;
  }

  else
  {
    *(this + 104) = 0;
    *(this + 127) = 0;
  }

  *(this + 152) = 0;
  if (*(this + 151) < 0)
  {
    **(this + 16) = 0;
    *(this + 17) = 0;
  }

  else
  {
    *(this + 128) = 0;
    *(this + 151) = 0;
  }
}

uint64_t SipDigestAuthScheme::encodeNonceCount(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *v4;
  v6 = *v4;
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(a2 + 17) = 0;
  v7 = (v4 + *(v6 - 24));
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v8 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
    v9 = (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v12);
    v7[1].__fmtflags_ = v9;
    v4 = *(a2 + 8);
    v5 = *v4;
  }

  v7[1].__fmtflags_ = 48;
  *(v4 + *(v5 - 24) + 24) = 8;
  v10 = *(a1 + 48);
  result = MEMORY[0x1E6923350]();
  *(a2 + 17) = 0;
  return result;
}

void SipDigestAuthScheme::encodeDirectives(_BYTE *a1, void *a2, int a3)
{
  SipAuthScheme::encodeDirectives(a1, a2);
  if (!a3)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    ImsStringOutStream::ImsStringOutStream(&v12);
  }

  if ((a1[79] & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      goto LABEL_8;
    }
  }

  else if (!a1[79])
  {
LABEL_8:
    if (*(a1 + 12))
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      ImsStringOutStream::ImsStringOutStream(&v12);
    }

    v6 = a1[127];
    if (v6 < 0)
    {
      v6 = *(a1 + 14);
    }

    if (v6)
    {
      *&v12 = &SipDigestAuthScheme::kDirectiveQualityOfProtection;
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &SipDigestAuthScheme::kDirectiveQualityOfProtection);
      std::string::operator=((v7 + 5), (a1 + 104));
    }

    memset(&__str, 0, sizeof(__str));
    (*(*a1 + 120))(a1, &__str);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      *&v12 = "algorithm";
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, "algorithm");
      std::string::operator=((v9 + 5), &__str);
    }

    memset(__p, 0, sizeof(__p));
    if ((*(*a1 + 88))(a1))
    {
      (*(*a1 + 104))(a1, __p);
    }

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    ImsStringOutStream::ImsStringOutStream(&v12);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  ImsStringOutStream::ImsStringOutStream(&v12);
}

void sub_1E4DEC73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a30 == 1)
  {
    if (a29)
    {
      (*(*a29 + 8))(a29);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDigestAuthScheme::parseDirective(uint64_t a1, unsigned __int16 *a2, std::string *__str)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v5 = *(a2 + 23);
    if (v5 <= 4)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          if (*a2 != 29301 || *(a2 + 2) != 105)
          {
            if (*a2 != 28529 || *(a2 + 2) != 112)
            {
              goto LABEL_62;
            }

LABEL_27:
            v14 = 0;
            memset(&__stra, 0, sizeof(__stra));
            while (1)
            {
              BYTE7(v28) = 1;
              LOWORD(v27) = 44;
              v14 = ims::nextToken(__str, v14, &__stra, &v27);
              if (v14 == -1)
              {
                break;
              }

              ims::chomp(&__stra, "\r\n\t ", 3);
              std::vector<std::string>::push_back[abi:ne200100](a1 + 80, &__stra);
            }

            if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__stra.__r_.__value_.__l.__data_);
            }

            if (std::string::find(__str, 44, 0) != -1)
            {
              return 1;
            }

            v26 = (a1 + 104);
LABEL_63:
            std::string::operator=(v26, __str);
            return 1;
          }

          goto LABEL_51;
        }

LABEL_62:
        *&v27 = a2;
        v26 = (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2) + 5);
        goto LABEL_63;
      }

      v21 = *a2;
LABEL_53:
      if (v21 == 25454)
      {
        if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = __str;
        }

        else
        {
          v24 = __str->__r_.__value_.__r.__words[0];
        }

        *(a1 + 48) = strtoul(v24, 0, 16);
        return 1;
      }

      goto LABEL_62;
    }

    if (v5 != 5)
    {
      v15 = a2;
      if (v5 != 9)
      {
        goto LABEL_62;
      }

LABEL_36:
      v16 = *v15;
      v17 = v15[8];
      if (v16 != 0x687469726F676C61 || v17 != 109)
      {
        goto LABEL_62;
      }

      v19 = *(*a1 + 112);

      return v19();
    }

    if (*a2 != 1668181870 || *(a2 + 4) != 101)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v8 = *(a2 + 1);
  if (v8 > 4)
  {
    if (v8 != 5)
    {
      if (v8 != 9)
      {
        goto LABEL_62;
      }

      v15 = *a2;
      goto LABEL_36;
    }

    if (**a2 != 1668181870 || *(*a2 + 4) != 101)
    {
      goto LABEL_62;
    }

LABEL_66:
    v19 = *(*a1 + 96);

    return v19();
  }

  if (v8 == 2)
  {
    v21 = **a2;
    goto LABEL_53;
  }

  if (v8 != 3)
  {
    goto LABEL_62;
  }

  v9 = *a2;
  if (**a2 != 29301 || *(*a2 + 2) != 105)
  {
    v11 = *v9;
    v12 = *(v9 + 2);
    if (v11 != 28529 || v12 != 112)
    {
      goto LABEL_62;
    }

    goto LABEL_27;
  }

LABEL_51:
  std::string::operator=((a1 + 56), __str);
  v52 = 0;
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
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  SipUri::SipUri(&v27);
  v23 = SipUri::fromString(&v27, __str);
  SipUri::~SipUri(&v27);
  return v23;
}

void SipDigestAuthScheme::_computeResponse()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4DECE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23 == 1)
  {
    if (a22)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipDigestAuthScheme::_computeResponse(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  if (*(a1 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    v4 = *(a1 + 128);
  }

  size = HIBYTE(v4.__r_.__value_.__r.__words[2]);
  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v4.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v4, &SipDigestAlgorithm::kAlgorithmMD5);
  }

  v3 = 0;
  memset(v2, 0, sizeof(v2));
  SipDigestAlgorithmManager::SipDigestAlgorithmManager(v2);
}

void sub_1E4DEDE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator(&a73);
  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (*(v73 - 233) < 0)
  {
    operator delete(*(v73 - 256));
  }

  if (*(v73 - 209) < 0)
  {
    operator delete(*(v73 - 232));
  }

  *(v73 - 208) = &unk_1F5EDED18;
  if (*(v73 - 192) == 1)
  {
    v75 = *(v73 - 200);
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  SipDigestAlgorithmManager::~SipDigestAlgorithmManager(&a65);
  if (a72 < 0)
  {
    operator delete(a71);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_1E4DEE438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_SipDigestAuthScheme_cpp()
{
  v5 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v3, "auth");
  std::string::basic_string[abi:ne200100]<0>(v4, "auth-int");
  kPreferredQopList = 0;
  unk_1EE2BBED0 = 0;
  qword_1EE2BBED8 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&kPreferredQopList, v3, &v5, 2uLL);
  for (i = 0; i != -48; i -= 24)
  {
    if (v4[i + 23] < 0)
    {
      operator delete(*&v3[i + 24]);
    }
  }

  result = __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &kPreferredQopList, &dword_1E4C3F000);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DEE534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ims::analytics::populateCellularInfo(void *a1, uint64_t a2)
{
  v26 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (*a2)
  {
    HIDWORD(v26) = ims::strToUint32((*a2 + 4008), 0);
    LODWORD(v26) = ims::strToUint32((*a2 + 3984), 0);
    ims::AccessNetworks::cellular((*a2 + 3432), &v17);
    ims::AccessNetwork::extractCellularInfo(&v17, &v26, &v26 + 1, &v25, &v22);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v17);
    }

    v15 = xpc_int64_create(v26);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v17 = a1;
    v18 = "mcc";
    xpc::dict::object_proxy::operator=(&v17, &v15, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v15);
    v15 = 0;
    v13 = xpc_int64_create(HIDWORD(v26));
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v17 = a1;
    v18 = "mnc";
    xpc::dict::object_proxy::operator=(&v17, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    isIwlanOverCellular = ims::AccessNetworks::isIwlanOverCellular((*a2 + 3432));
    v11 = xpc_BOOL_create(isIwlanOverCellular);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v17 = a1;
    v18 = "over_cellular";
    xpc::dict::object_proxy::operator=(&v17, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0)
    {
      v6 = __cxa_guard_acquire(&_MergedGlobals_9);
      if (v6)
      {
        ims::analytics::CoreLocationState::create(v6);
      }
    }

    if ((*(*qword_1EE2BC338 + 16))(qword_1EE2BC338))
    {
      v9 = xpc_int64_create(v25);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      v17 = a1;
      v18 = "area_id";
      xpc::dict::object_proxy::operator=(&v17, &v9, &v10);
      xpc_release(v10);
      v10 = 0;
      xpc_release(v9);
      v9 = 0;
      if (SHIBYTE(v24) < 0)
      {
        if (!v23)
        {
          goto LABEL_24;
        }

        v5 = v22;
      }

      else
      {
        if (!HIBYTE(v24))
        {
          goto LABEL_24;
        }

        v5 = &v22;
      }

      v7 = xpc_string_create(v5);
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      v17 = a1;
      v18 = "cell_id";
      xpc::dict::object_proxy::operator=(&v17, &v7, &v8);
      xpc_release(v8);
      v8 = 0;
      xpc_release(v7);
      v7 = 0;
    }
  }

LABEL_24:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }
}

void sub_1E4DEE8F4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&_MergedGlobals_9);
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<ims::analytics::CoreLocationState>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<anonymous namespace::CTAnalyticsSender>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED0B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::CTAnalyticsSender::sendEvent(uint64_t a1, uint64_t *a2, xpc_object_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(v21, "ims.ca.util");
  v17[0] = 0;
  v20 = 0;
  v6 = ims::debug(v5, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Sending ", 8);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  v16 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v16 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_13;
    }
  }

  if (MEMORY[0x1E6924740](v8) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v8);
    goto LABEL_14;
  }

  v9 = xpc_null_create();
LABEL_13:
  v16 = v9;
LABEL_14:
  xpc_release(v8);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  std::string::basic_string[abi:ne200100]<0>(v21, *MEMORY[0x1E6997740]);
  v14 = xpc_BOOL_create(1);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v10 = v21;
  if (v22 < 0)
  {
    v10 = v21[0];
  }

  v13[0] = &v16;
  v13[1] = v10;
  xpc::dict::object_proxy::operator=(v13, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  v12 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v12 = xpc_null_create();
  }

  analytics_send_event_lazy_with_options();
  xpc_release(v12);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  xpc_release(v16);
}

void sub_1E4DEED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  xpc_release(object);
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  xpc_release(a18);
  _Unwind_Resume(a1);
}

xpc_object_t ___ZN12_GLOBAL__N_117CTAnalyticsSender9sendEventERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

xpc_object_t __copy_helper_block_e8_32c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

void SDPMediaPath::SDPMediaPath(SDPMediaPath *this, const LazuliRouteSet *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "path");
  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 1) = *__p;
    *(this + 4) = v5;
  }

  *this = &unk_1F5ED0C48;
  LazuliRouteSet::LazuliRouteSet((this + 40), a2);
}

void sub_1E4DEEF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaPath::SDPMediaPath(SDPMediaPath *this, const SDPMediaPath *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5ED0C48;
  LazuliRouteSet::LazuliRouteSet((this + 40), (a2 + 40));
}

void sub_1E4DEF068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaPath::~SDPMediaPath(void **this)
{
  *this = &unk_1F5ED0C48;
  LazuliRouteSet::~LazuliRouteSet((this + 5));
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaPath::~SDPMediaPath(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaPath::value(SDPMediaPath *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4DEF294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipState::SipState(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 8;
  *a1 = &unk_1F5ED0CA0;
  *(a1 + 8) = &unk_1F5ED0CF8;
  SipTimerContainer::SipTimerContainer((a1 + 16));
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 136) = a1;
  *(a1 + 144) = v4;
  v5 = a2[1];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *a2;
      if (*a2)
      {
        v9 = *(v8 + 248);
        v10 = *(v8 + 256);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          *(a1 + 176) = SipUserAgent::config(v9) + 512;
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        *(&__str.__r_.__value_.__s + 23) = 9;
        strcpy(&__str, "sip.state");
        std::string::operator=((a1 + 64), &__str);
        v11 = *(v8 + 200);
        *(a1 + 96) = *(v8 + 208);
        *(a1 + 88) = v11;
        std::string::operator=((a1 + 104), (v8 + 216));
        *(a1 + 128) = *(v8 + 240);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return a1;
}

void sub_1E4DEF44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (*(v15 + 207) < 0)
  {
    operator delete(*v17);
  }

  SipTimerContainer::~SipTimerContainer((v15 + 16));
  _Unwind_Resume(a1);
}

BOOL SipState::timersEnabled(SipState *this)
{
  v2 = (*(*this + 40))(this);
  v3 = (*(*v2 + 24))(v2);
  return v3 == (*(*this + 48))(this);
}

void SipState::loggableName(SipState *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 207) & 0x8000000000000000) != 0)
  {
    if (!*(this + 24))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 207))
  {
LABEL_5:
    if ((*(*this + 40))(this))
    {
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      ImsStringOutStream::ImsStringOutStream(v3);
    }

    (*(*this + 48))(this);
    ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
  }

  if (*(this + 207) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 23), *(this + 24));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 184);
    a2->__r_.__value_.__r.__words[2] = *(this + 25);
  }
}

void sub_1E4DEF820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipState::stateMachine(SipState *this)
{
  return 0;
}

{
  return 0;
}

void non-virtual thunk toSipState::~SipState(SipState *this)
{
  SipState::~SipState((this - 8));
}

{
  SipState::~SipState((this - 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t MsrpTransportTcp::MsrpTransportTcp(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = a3[1];
  v22[0] = *a3;
  v22[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    MsrpTransportInterface::MsrpTransportInterface(a1, a2 + 1, v22);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    MsrpTransportInterface::MsrpTransportInterface(a1, a2 + 1, v22);
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "msrp.tport");
  (*(**a3 + 56))(&v10);
  v15 = v10;
  v16 = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = __p;
  }

  v18 = v13;
  v19 = 1;
  ImsLogContainer::ImsLogContainer(a1 + 64, &v20, &v15);
  if (v19 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[3];
  *(a1 + 232) = 0u;
  v8 = (a1 + 232);
  *(a1 + 8) = &unk_1F5ED0DF0;
  *(a1 + 64) = &unk_1F5ED0E40;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 241) = 0u;
  (*(**a3 + 64))(&v10);
  SipStackConfig::getRcsNetworkBundleId(&v10, &v20);
  if (*(a1 + 255) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v20;
  *(a1 + 248) = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20) = 0;
  SipStackConfig::~SipStackConfig(&v10);
  (*(**a3 + 64))(&v10);
  *(a1 + 256) = v14;
  SipStackConfig::~SipStackConfig(&v10);
  return a1;
}

void sub_1E4DEFC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  MsrpTransportInterface::~MsrpTransportInterface(v16, v17);
  _Unwind_Resume(a1);
}

void MsrpTransportTcp::~MsrpTransportTcp(MsrpTransportTcp *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 1) = &unk_1F5ED0DF0;
  *(this + 8) = &unk_1F5ED0E40;
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v5 = *(this + 28);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(this + 8) = &unk_1F5ED7318;
  if (*(this + 144) == 1 && *(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  MsrpTransportInterface::~MsrpTransportInterface(this, a2 + 1);
}

void MsrpTransportTcp::~MsrpTransportTcp(MsrpTransportTcp *this)
{
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 34);
}

{
  MsrpTransportTcp::~MsrpTransportTcp(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMsrpTransportTcp::~MsrpTransportTcp(MsrpTransportTcp *this)
{
  MsrpTransportTcp::~MsrpTransportTcp((this - 8));
}

{
  MsrpTransportTcp::~MsrpTransportTcp((this - 64));
}

{
  MsrpTransportTcp::~MsrpTransportTcp((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  MsrpTransportTcp::~MsrpTransportTcp((this - 64));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMsrpTransportTcp::~MsrpTransportTcp(MsrpTransportTcp *this)
{
  MsrpTransportTcp::~MsrpTransportTcp((this + *(*this - 24)));
}

{
  MsrpTransportTcp::~MsrpTransportTcp((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void MsrpTransportTcp::initListener(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (_os_feature_enabled_impl())
  {
    if ((*(a1 + 256) & 1) == 0)
    {
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, (a1 + *(*a1 - 24) + 8));
      operator new();
    }
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, (a1 + *(*a1 - 24) + 8));
  LODWORD(v8) = 0;
  std::allocate_shared[abi:ne200100]<ImsListenSocket,std::allocator<ImsListenSocket>,std::shared_ptr<MsrpTransportInterface>,DscpClass,0>();
}

void MsrpTransportTcp::initConnection(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 40);
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (_os_feature_enabled_impl())
  {
    if ((*(a1 + 256) & 1) == 0)
    {
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (a1 + *(*a1 - 24) + 8));
      operator new();
    }
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (a1 + *(*a1 - 24) + 8));
  operator new();
}

void sub_1E4DF0CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, dispatch_object_t object, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(v45);
  ImsTcpSocketInterface::TcpTlsInitParams::~TcpTlsInitParams(&a29);
  _Unwind_Resume(a1);
}

void sub_1E4DF1204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  ImsResult::~ImsResult((v42 - 176));
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  _Unwind_Resume(a1);
}

void sub_1E4DF1798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  ImsResult::~ImsResult((v46 - 192));
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

void MsrpTransportTcp::send(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[27];
  if (v6)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    (*(*v6 + 40))(&v28);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22[0] = &unk_1F5EBDEF8;
    v22[1] = &_bambiDomain;
    v23 = 0;
    if (*(&v28 + 1) == &_bambiDomain)
    {
      v13 = v29;
      ImsResult::~ImsResult(v22);
      if (!v13)
      {
LABEL_23:
        ImsResult::~ImsResult(&v28);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(v22);
    }

    v14 = (*(a1[8] + 56))(a1 + 8);
    (*(a1[8] + 16))(a1 + 8, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "send ", 5);
    *(v14 + 17) = 0;
    if (*(a2 + 23) >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    MEMORY[0x1E6923370](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " bytes failed to ", 17);
    *(v14 + 17) = 0;
    v16 = a1[4];
    if (v16)
    {
      (*(*v16 + 40))(v16, v14);
    }

    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    v17 = a1[7];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = a1[6];
        if (v20)
        {
          ImsResult::ImsResult(v21, &v28);
          (*(*v20 + 40))(v20, a3, v21);
          ImsResult::~ImsResult(v21);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    goto LABEL_23;
  }

  v7 = (*(a1[8] + 56))(a1 + 8);
  (*(a1[8] + 16))(a1 + 8, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "drop ", 5);
  *(v7 + 17) = 0;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " bytes on null socket", 21);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v9 = a1[7];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = a1[6];
      if (v12)
      {
        v36 = 0u;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v34[0] = &unk_1F5EBDEF8;
        v34[1] = &_bambiDomain;
        v35 = 1073741840;
        (*(*v12 + 40))(v12, a3, v34);
        ImsResult::~ImsResult(v34);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4DF1C8C(_Unwind_Exception *a1)
{
  ImsResult::~ImsResult((v2 - 152));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

ImsOutStream *MsrpTransportTcp::toStream(MsrpTransportTcp *this, ImsOutStream *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "MSRP transport w/o local info", 29);
    *(a2 + 17) = 0;
LABEL_6:
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    return a2;
  }

  v5 = *(this + 4);
  (*(*v4 + 40))(v4, a2);
  v6 = *(a2 + 1);
  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " <-> ", 5);
    *(a2 + 17) = 0;
    v7 = *(this + 4);
    if (v7)
    {
      (*(*v7 + 40))(v7, a2);
    }

    goto LABEL_6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is ", 4);
  *(a2 + 17) = 0;
  if (*(this + 25))
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "not ");
  }

  (*(*a2 + 32))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "listening", 9);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E4DF1EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTcp::handleIncomingConnection(uint64_t a1, void *a2)
{
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  if (*(a1 + 216))
  {
    v6 = (*(v4 + 56))(a1 + 64);
    (*(*(a1 + 64) + 16))(v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "socket already set: ", 20);
    *(v6 + 17) = 0;
    (*(**(a1 + 216) + 104))(&v23);
    if (v23)
    {
      (*(*v23 + 40))(v23, v6);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " ignoring: ", 11);
    *(v6 + 17) = 0;
    (*(**a2 + 104))(&v21);
    if (v21)
    {
      (*(*v21 + 40))(v21, v6);
    }

    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v7 = v24;
    if (!v24)
    {
      return;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return;
  }

  v8 = (*(v4 + 64))(a1 + 64);
  (*(*v5 + 16))(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "incoming connection ", 20);
  *(v8 + 17) = 0;
  (*(**a2 + 104))(&v23);
  if (v23)
  {
    (*(*v23 + 40))(v23, v8);
  }

  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 224);
  *(a1 + 216) = v10;
  *(a1 + 224) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v10 = *(a1 + 216);
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v23, (a1 + *(*a1 - 24) + 8));
  if (v23)
  {
    v12 = v23 + 8;
  }

  else
  {
    v12 = 0;
  }

  v19 = v12;
  v20 = v24;
  v23 = 0;
  v24 = 0;
  (*(*v10 + 192))(v10, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 48);
      if (v16)
      {
        (*(**a2 + 104))(&v17);
        (*(*v16 + 16))(v16, &v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      v7 = v15;
      goto LABEL_31;
    }
  }
}

void sub_1E4DF22E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void MsrpTransportTcp::handleDisconnect(MsrpTransportTcp *this)
{
  if (*(this + 27))
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(this + 6);
        if (v5)
        {
          (*(**(this + 27) + 104))(&v9);
          (*(*v5 + 24))(v5, &v9);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    v6 = *(this + 28);
    *(this + 27) = 0;
    *(this + 28) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v7 = this + 64;
    v8 = (*(*(this + 8) + 56))(this + 64);
    (*(*v7 + 16))(v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Cannot handle disconnect due to null socket", 43);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }
}

void sub_1E4DF24CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void MsrpTransportTcp::connectionClosedByPeer(MsrpTransportTcp *this)
{
  v2 = (this + 64);
  v3 = (*(*(this + 8) + 48))(this + 64);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "closed by peer ", 15);
  *(v3 + 17) = 0;
  v4 = v2[19];
  if (v4)
  {
    (*(*v4 + 104))(&v5, v4);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v3 + 32))(v3, __p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTcp::handleDisconnect(this);
}

void sub_1E4DF2680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTcp::connectionResetByPeer(MsrpTransportTcp *this)
{
  v2 = (this + 64);
  v3 = (*(*(this + 8) + 56))(this + 64);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "reset by peer ", 14);
  *(v3 + 17) = 0;
  v4 = v2[19];
  if (v4)
  {
    (*(*v4 + 104))(&v5, v4);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v3 + 32))(v3, __p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTcp::handleDisconnect(this);
}

void sub_1E4DF2848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTcp::handleConnectError(MsrpTransportTcp *this, const ImsResult *a2)
{
  v4 = (this + 64);
  v5 = (*(*(this + 8) + 56))(this + 64);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "connection error ", 17);
  *(v5 + 17) = 0;
  v6 = v4[19];
  if (v6)
  {
    (*(*v6 + 104))(&v8, v6);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v5 + 32))(v5, __p);
  v7 = *(v5 + 8);
  v11 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v11, 1);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTcp::handleDisconnect(this);
}

void sub_1E4DF2A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTcp::handleSocketError(MsrpTransportTcp *this, const ImsResult *a2)
{
  v4 = (this + 64);
  v5 = (*(*(this + 8) + 56))(this + 64);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "socket error ", 13);
  *(v5 + 17) = 0;
  v6 = v4[19];
  if (v6)
  {
    (*(*v6 + 104))(&v8, v6);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v5 + 32))(v5, __p);
  v7 = *(v5 + 8);
  v11 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v11, 1);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTcp::handleDisconnect(this);
}

void sub_1E4DF2C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTcp::processDataFromSocket(void *a1, const void *a2, size_t a3, void *a4)
{
  v7 = a1[7];
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = a1[6];
      if (v10)
      {
        v12 = a1[8];
        v11 = a1 + 8;
        v13 = (*(v12 + 64))(v11);
        (*(*v11 + 16))(v11, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Received ", 9);
        *(v13 + 17) = 0;
        MEMORY[0x1E6923370](*(v13 + 8), a3);
        *(v13 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " bytes from ", 12);
        *(v13 + 17) = 0;
        if (*a4)
        {
          (*(**a4 + 40))(*a4, v13);
        }

        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        __dst[0] = 0;
        __dst[1] = 0;
        v18 = 0;
        if (a3 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a3 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v18) = a3;
        if (a3)
        {
          memcpy(__dst, a2, a3);
        }

        *(__dst + a3) = 0;
        (*(*v10 + 32))(v10, __dst);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__dst[0]);
        }

LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = a1[8];
  v14 = a1 + 8;
  v16 = (*(v15 + 56))(v14);
  (*(*v14 + 16))(v14, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No delegate: dropping ", 22);
  *(v16 + 17) = 0;
  MEMORY[0x1E6923370](*(v16 + 8), a3);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " bytes from ", 12);
  *(v16 + 17) = 0;
  if (*a4)
  {
    (*(**a4 + 40))(*a4, v16);
  }

  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v9)
  {
    goto LABEL_19;
  }
}

void sub_1E4DF2FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsTcpNw>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsTcpSocket>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<MsrpTransportInterface>::execute_wrapped<MsrpTransportTcp::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>)::$_0>(MsrpTransportTcp::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MsrpTransportTcp::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>)::$_0,std::default_delete<MsrpTransportTcp::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      if (*v1)
      {
        v6 = v1[3];
        v10 = v1[2];
        v11 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v10);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>::~unique_ptr[abi:ne200100](&v9);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_1E4DF3224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<MsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper,std::allocator<MsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED0FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

MsrpTransportTcp *MsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper::~MsrpTransportTcpWrapper(MsrpTransportTcp *a1)
{
  MsrpTransportTcp::~MsrpTransportTcp(a1, &off_1F5ED1160);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);
  return a1;
}

void MsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper::~MsrpTransportTcpWrapper(MsrpTransportTcp *a1)
{
  MsrpTransportTcp::~MsrpTransportTcp(a1, &off_1F5ED1160);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);

  JUMPOUT(0x1E69235B0);
}

void *non-virtual thunk toMsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper::~MsrpTransportTcpWrapper(uint64_t a1)
{
  MsrpTransportTcp::~MsrpTransportTcp((a1 - 8), &off_1F5ED1160);
  MEMORY[0x1E69225A0](a1 + 296);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));
}

{
  MsrpTransportTcp::~MsrpTransportTcp((a1 - 64), &off_1F5ED1160);
  MEMORY[0x1E69225A0](a1 + 240);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));
}

void non-virtual thunk toMsrpTransportTcp::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>)::MsrpTransportTcpWrapper::~MsrpTransportTcpWrapper(uint64_t a1)
{
  MsrpTransportTcp::~MsrpTransportTcp((a1 - 8), &off_1F5ED1160);
  MEMORY[0x1E69225A0](a1 + 296);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));

  JUMPOUT(0x1E69235B0);
}

{
  MsrpTransportTcp::~MsrpTransportTcp((a1 - 64), &off_1F5ED1160);
  MEMORY[0x1E69225A0](a1 + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));

  JUMPOUT(0x1E69235B0);
}