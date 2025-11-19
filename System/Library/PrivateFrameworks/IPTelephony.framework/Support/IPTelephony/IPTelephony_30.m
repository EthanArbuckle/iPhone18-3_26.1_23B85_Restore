void sub_1E4E553A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  ImsResult::~ImsResult(&__p);
  ImsResult::~ImsResult((v31 - 152));
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

double BambiCall::prepareInvite@<D0>(uint64_t a1@<X8>)
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

void BambiCall::terminateMediaSession(BambiCall *this)
{
  v18 = 0;
  v19 = 0;
  IPTelephonyManager::getBambiClient(&v18);
  v2 = *(this + 24);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = &unk_1F5EBDEF8;
  v12 = &_bambiDomain;
  v13 = 0;
  v3 = *(v2 + 1904);
  v4 = (v2 + 1912);
  if (v3 != (v2 + 1912))
  {
    v5 = v18;
    while (1)
    {
      v6 = v3[5];
      RTPManager::terminateSessionWithId(*(this + 49), v6[6]);
      BambiClient::setMediaSessionIdForStream(v5, v6, 0);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = &unk_1F5EBDEF8;
      v21 = &_bambiDomain;
      v22 = 0;
      ImsResult::operator=(&v11, &v20);
      ImsResult::~ImsResult(&v20);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = &unk_1F5EBDEF8;
      v21 = &_bambiDomain;
      v22 = 0;
      if (v12 != &_bambiDomain)
      {
        break;
      }

      v7 = v13;
      ImsResult::~ImsResult(&v20);
      if (!v7)
      {
        v8 = v3[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v3 = v9;
        if (v9 != v4)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    ImsResult::~ImsResult(&v20);
  }

LABEL_13:
  ImsResult::~ImsResult(&v11);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1E4E55670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  ImsResult::~ImsResult(&a22);
  ImsResult::~ImsResult(&a9);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

void BambiCall::handleTimer(std::__shared_weak_count **this, uint64_t *a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v3 <= 17)
  {
    if (v3 != 13)
    {
      if (v3 == 16)
      {
        v5 = v4 >= 0 ? a2 : *a2;
        v7 = *v5;
        v6 = v5[1];
        if (v7 == 0x6863746157535045 && v6 == 0x72656D6954676F64)
        {
          v9 = std::__shared_weak_count::lock(this[48]);
          v10 = this[47];
          if (!ims::AccessNetwork::isLTE(&v10[143]))
          {
            v11 = this[54];
            if (v11)
            {
              v12 = std::__shared_weak_count::lock(v11);
              if (v12)
              {
                v13 = v12;
                v14 = this[53];
                if (v14)
                {
                  v16 = this[1];
                  v15 = (this + 1);
                  v17 = (v16[2].__shared_weak_owners_)(v15);
                  (*(*v15 + 16))(v15, v17);
                  v18 = ImsOutStream::operator<<(v17, "EPS Fallback timer fired");
                  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v18[17] = 0;
                  if (SHIBYTE(v10[185].__shared_owners_) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, v10[184].__shared_weak_owners_, v10[185].__vftable);
                  }

                  else
                  {
                    __p = *(v10 + 4432);
                  }

                  (v14->__vftable[6].__on_zero_shared)(v14, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      return;
    }

    if (v4 >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    v27 = *v26;
    v28 = *(v26 + 5);
    if (v27 != 0x676E69526F747541 || v28 != 0x72656D6954676E69)
    {
      return;
    }

    BambiCall::ring(this, v39);
    v25 = v39;
LABEL_43:
    ImsResult::~ImsResult(v25);
    return;
  }

  if (v3 != 18)
  {
    if (v3 != 22)
    {
      return;
    }

    v19 = v4 >= 0 ? a2 : *a2;
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 14);
    v23 = v20 == 0x6D6954616964654DLL && v21 == 0x6566654474756F65;
    if (!v23 || v22 != 0x72656D6954726566)
    {
      return;
    }

    BambiCall::endWithReason(this, v38);
    v25 = v38;
    goto LABEL_43;
  }

  if (v4 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 8);
  if (v31 == 0x746F67654E545452 && v32 == 0x6D69546465746169 && v33 == 29285 && *(this + 785) == 1)
  {
    v36 = this[24];
    if (LOBYTE(v36[55].__shared_owners_) != 1 || ((v36[43].__get_deleter)() & 1) == 0)
    {

      BambiCall::textSessionDeactivated(this);
    }
  }
}

void sub_1E4E55A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void BambiCall::sipSessionState(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 51);
  if (v3)
  {
    v4 = (*(*(v3 + 712) + 24))(v3 + 712);
    v5 = (*(*(v3 + 712) + 16))(v3 + 712, v4);
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
      v8 = *(v5 + 8);

      std::string::__init_copy_ctor_external(a2, v7, v8);
    }

    else
    {
      v6 = *v5;
      a2->__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&a2->__r_.__value_.__l.__data_ = v6;
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "UnknownState");
  }
}

void BambiCall::handleAudioStreamTokens(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1529) & 1) != 0 || (*(a1 + 1530))
  {
    v4 = *(a1 + 432);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 424);
        if (v7)
        {
          (*(*v7 + 224))(v7, *(a2 + 8));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    v8 = a1 + 8;
    v9 = (*(*(a1 + 8) + 64))(a1 + 8);
    (*(*v8 + 16))(a1 + 8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Audio stream tokens detected, but call is still hidden. Delaying notification", 77);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, (a1 + 152));
    v11 = v18;
    v10 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v12 = dispatch_time(0, 250000000);
    ims::getQueue(&v18);
    v13 = v18;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN9BambiCall23handleAudioStreamTokensEN3ims7CFArrayE_block_invoke;
    block[3] = &__block_descriptor_tmp_187;
    block[4] = a1;
    block[5] = v11;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 8);
    v17[0] = &unk_1F5EF3658;
    v17[1] = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    v17[0] = &unk_1F5EC8AD0;
    dispatch_after(v12, v13, block);
    if (v13)
    {
      dispatch_release(v13);
    }

    ims::CFType::~CFType(v17);
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_1E4E55E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v16);
      goto LABEL_8;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  if (!v16)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN9BambiCall23handleAudioStreamTokensEN3ims7CFArrayE_block_invoke(void *a1)
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
        v6 = a1[8];
        v7[0] = &unk_1F5EF3658;
        v7[1] = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        v7[0] = &unk_1F5EC8AD0;
        BambiCall::handleAudioStreamTokens(v3, v7);
        ims::CFType::~CFType(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

CFTypeRef __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE56c18_ZTSN3ims7CFArrayE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1 + 7;
  result = a2[8];
  a1[7] = &unk_1F5EF3658;
  a1[8] = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *v4 = &unk_1F5EC8AD0;
  return result;
}

void sub_1E4E55FAC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE56c18_ZTSN3ims7CFArrayE(uint64_t a1)
{
  ims::CFType::~CFType((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void BambiCall::handleTextStreamToken(uint64_t a1, uint64_t a2)
{
  if (((*(a1 + 1529) & 1) != 0 || *(a1 + 1530) == 1) && *(a1 + 1841) != 1)
  {
    v11 = *(a1 + 432);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 424);
        if (v14)
        {
          (*(*v14 + 232))(v14, *(a2 + 8));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  else
  {
    v4 = a1 + 8;
    v5 = (*(*(a1 + 8) + 64))(a1 + 8);
    (*(*v4 + 16))(a1 + 8, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Text stream token detected, but call is still hidden. Delaying notification", 75);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, (a1 + 152));
    v7 = v18;
    v6 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v8 = dispatch_time(0, 250000000);
    ims::getQueue(&v18);
    v9 = v18;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN9BambiCall21handleTextStreamTokenEN3ims8CFNumberE_block_invoke;
    block[3] = &__block_descriptor_tmp_190_1;
    block[4] = a1;
    block[5] = v7;
    v16 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 8);
    v17[0] = &unk_1F5EF3658;
    v17[1] = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    v17[0] = &unk_1F5EF3708;
    dispatch_after(v8, v9, block);
    if (v9)
    {
      dispatch_release(v9);
    }

    ims::CFType::~CFType(v17);
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void ___ZN9BambiCall21handleTextStreamTokenEN3ims8CFNumberE_block_invoke(void *a1)
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
        v6 = a1[8];
        v7[0] = &unk_1F5EF3658;
        v7[1] = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        v7[0] = &unk_1F5EF3708;
        BambiCall::handleTextStreamToken(v3, v7);
        ims::CFType::~CFType(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

CFTypeRef __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE56c19_ZTSN3ims8CFNumberE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1 + 7;
  result = a2[8];
  a1[7] = &unk_1F5EF3658;
  a1[8] = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *v4 = &unk_1F5EF3708;
  return result;
}

void sub_1E4E5645C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE56c19_ZTSN3ims8CFNumberE(uint64_t a1)
{
  ims::CFType::~CFType((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void BambiCall::handleIncomingDtmf(BambiCall *this, uint64_t a2)
{
  v3 = *(this + 54);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 53);
      if (v7)
      {
        (*(*v7 + 240))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void BambiCall::setRelayMode(BambiCall *this, uint64_t a2)
{
  v4 = this + 8;
  v5 = (*(*(this + 1) + 64))(this + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setRelayMode to ", 16);
  *(v5 + 17) = 0;
  if (a2)
  {
    v6 = "Enable";
  }

  else
  {
    v6 = "Disable";
  }

  if (a2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v4[778] = a2;
  v8 = *(v4 + 23);
  v9 = *(v8 + 1912);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v8 + 1912;
  v11 = v8 + 1912;
  do
  {
    if (*(v9 + 32) >= 2)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < 2));
  }

  while (v9);
  if (v11 != v10 && *(v11 + 32) <= 2 && (v12 = *(v11 + 40)) != 0)
  {
    RTPManager::setRelayMode(*(this + 49), *(v12 + 48), a2);
    if (!a2)
    {
      return;
    }
  }

  else
  {
LABEL_17:
    v13 = (*(*v4 + 56))(v4);
    (*(*v4 + 16))(v4, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No audio stream for relay", 25);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (!a2)
    {
      return;
    }
  }

  v14 = *(this + 49);
  if (v14)
  {

    RTPManager::handleAudioReadyEvent(v14);
  }
}

void BambiCall::setScreeningMode(BambiCall *this, uint64_t a2)
{
  v4 = (this + 8);
  v5 = (*(*(this + 1) + 64))(this + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setScreeningMode to ", 20);
  *(v5 + 17) = 0;
  if (a2)
  {
    v6 = "Enable";
  }

  else
  {
    v6 = "Disable";
  }

  if (a2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v8 = v4[23];
  v9 = *(v8 + 1912);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v8 + 1912;
  v11 = v8 + 1912;
  do
  {
    if (*(v9 + 32) >= 2)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < 2));
  }

  while (v9);
  if (v11 != v10 && *(v11 + 32) <= 2 && (v12 = *(v11 + 40)) != 0)
  {
    RTPManager::setScreeningMode(*(this + 49), *(v12 + 48), a2);
    if (!a2)
    {
      return;
    }
  }

  else
  {
LABEL_17:
    v13 = (*(*v4 + 56))(v4);
    (*(*v4 + 16))(v4, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No audio stream for screening", 29);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (!a2)
    {
      return;
    }
  }

  v14 = *(this + 49);
  if (v14)
  {

    RTPManager::handleAudioReadyEvent(v14);
  }
}

void BambiCall::handleEmptyInvite(BambiCall *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = &unk_1F5EBDEF8;
    v16 = &_bambiDomain;
    v17 = 0;
    v2 = *(v1 + 1904);
    v3 = (v1 + 1912);
    if (v2 != (v1 + 1912))
    {
      v5 = this + 8;
      while (1)
      {
        v6 = v2[5];
        if (*(v6 + 72))
        {
          if ((*(this + 120) & 0xFFFFFFFE) == 2)
          {
            BambiCall::setMediaDirection(this, v2[5], 1, 1);
          }

          else
          {
            BambiCall::setMediaDirection(this, v2[5], 1, 0);
            v8 = *(this + 49);
            v9 = *(v6 + 48);
            v10 = *(this + 25);
            v29 = *(this + 24);
            v30 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            RTPManager::updateSdpForSession(v8, v9, &v29, *(this + 121));
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            RTPManager::activateSessionWithId(*(this + 49), *(v6 + 48), *(this + 121), 1);
          }
        }

        else
        {
          v7 = (*(*v5 + 64))(v5);
          (*(*v5 + 16))(v5, v7);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleEmptyInvite: Ignoring disabled media type ", 48);
          *(v7 + 17) = 0;
          (*(*v7 + 32))(v7, &v29);
          (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v7 + 17) = 0;
          if (v31 < 0)
          {
            operator delete(v29);
          }
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = &unk_1F5EBDEF8;
        v23 = &_bambiDomain;
        v24 = 0;
        ImsResult::operator=(&v15, &v22);
        ImsResult::~ImsResult(&v22);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = &unk_1F5EBDEF8;
        v23 = &_bambiDomain;
        v24 = 0;
        if (v16 != &_bambiDomain)
        {
          break;
        }

        v11 = v17;
        ImsResult::~ImsResult(&v22);
        if (!v11)
        {
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
              v14 = *v13 == v2;
              v2 = v13;
            }

            while (!v14);
          }

          v2 = v13;
          if (v13 != v3)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      ImsResult::~ImsResult(&v22);
    }

LABEL_24:
    ImsResult::~ImsResult(&v15);
  }
}

void sub_1E4E56D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v22 = *(v20 - 104);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  ImsResult::~ImsResult(&a9);
  _Unwind_Resume(a1);
}

void BambiCall::spamInfo(BambiCall *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 51);
  if (v2)
  {
    *a2 = *(v2 + 1672);
    v3 = (a2 + 8);
    if (*(v2 + 1703) < 0)
    {
      std::string::__init_copy_ctor_external(v3, *(v2 + 1680), *(v2 + 1688));
    }

    else
    {
      v4 = (v2 + 1680);
      v5 = *v4;
      v3->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v3->__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void BambiCall::remoteCompanyName(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 51);
  if (v2)
  {
    if (*(v2 + 1751) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(v2 + 1728), *(v2 + 1736));
    }

    else
    {
      v3 = (v2 + 1728);
      v4 = *v3;
      a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&a2->__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, &str_31_1);
  }
}

void BambiCall::remoteImageUrl(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 51);
  if (v2)
  {
    if (*(v2 + 1727) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(v2 + 1704), *(v2 + 1712));
    }

    else
    {
      v3 = (v2 + 1704);
      v4 = *v3;
      a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&a2->__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, &str_31_1);
  }
}

void BambiCall::startEPSWatchdogTimer(BambiCall *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 47);
      if (v5)
      {
        v6 = SipStack::prefs(v5);
        ImsPrefs::EPSFallbackTimerSeconds(v6);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 19);
        v7 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 27, "EPSWatchdogTimer"))
        {
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = 0;
          operator new();
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4E56FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

const void **BambiCall::stopEPSWatchdogTimer(BambiCall *this)
{
  v1 = (this + 8);
  v2 = (*(*(this + 1) + 64))(this + 8);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "EPS Fallback detected", 21);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;

  return SipTimerContainer::cancelTimer(v1 + 25, "EPSWatchdogTimer");
}

void SipReason::SipReason(std::string *this, const SipReason *a2)
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

  this[1].__r_.__value_.__r.__words[0] = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), a2 + 5);
  this[2].__r_.__value_.__s.__data_[9] = 1;
  this[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
}

void sub_1E4E57234(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<BambiCall>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiCall>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3A08;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3A08;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3A08;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0,std::allocator<BambiCall::handleRttInSDP(std::shared_ptr<SDPModel>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9BambiCallEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9BambiCallEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<SDPSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED3CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3AD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3AD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3AD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiCall::processCallEvent(BambiCallEvent *)::$_0,std::allocator<BambiCall::processCallEvent(BambiCallEvent *)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiCall::suspendWithMediaError(std::string const&)::$_0,std::allocator<BambiCall::suspendWithMediaError(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3BD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED3BD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED3BD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<BambiCall::startEPSWatchdogTimer(void)::$_0,std::allocator<BambiCall::startEPSWatchdogTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void LazuliMessageEncodingMap::LazuliMessageEncodingMap(LazuliMessageEncodingMap *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v1, "");
  LazuliMessageIdHeader::create();
}

void sub_1E4E58088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  *(v12 - 96) = v11;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v12 - 96));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v10);
  _Unwind_Resume(a1);
}

void LazuliMessageEncodingMap::addHeaderPrototype(uint64_t a1, __int128 *a2)
{
  memset(&__p, 0, sizeof(__p));
  v4 = *a2;
  if (*(*a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
  }

  else
  {
    __p = *(v4 + 24);
  }

  ims::lowerCase(&__p);
  ims::chomp(&__p, "\r\n\t ", 3);
  p_p = &__p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &__p.__r_.__value_.__l.__data_);
  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = v5[6];
  v5[5] = v7;
  v5[6] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100]((a1 + 40), a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E5825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliMessageEncodingMap::createHeader(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  ims::lowerCase(&__str);
  ims::chomp(&__str, "\r\n\t ", 3);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, &__str.__r_.__value_.__l.__data_);
  if (v8)
  {
    (*(*v8[5] + 72))(v24);
    v10 = v24[0];
    v9 = v24[1];
    v11 = *(a3 + 8);
    if (*(a3 + 23) >= 0)
    {
      v11 = *(a3 + 23);
    }

    if (v11 && ((*(*v24[0] + 56))(v24[0], a3) & 1) == 0)
    {
      v14 = std::string::basic_string[abi:ne200100]<0>(v24, "laz.decode");
      v16[0] = 0;
      v19 = 0;
      v15 = ims::error(v14, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Unable to decode header: ", 25);
      *(v15 + 17) = 0;
      (*(*v15 + 32))(v15, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
      *(v15 + 17) = 0;
      (*(*v15 + 32))(v15, a3);
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      *a4 = 0;
      a4[1] = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      *a4 = v10;
      a4[1] = v9;
    }
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v24, "laz.decode");
    v20[0] = 0;
    v23 = 0;
    v13 = ims::error(v12, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "header not found: ", 18);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    *a4 = 0;
    a4[1] = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E585A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  _Unwind_Resume(exception_object);
}

SipHeader *SipAuthorizationHeader::SipAuthorizationHeader(SipHeader *a1, const SipHeader *a2)
{
  SipHeader::SipHeader(a1, a2);
  *v4 = &unk_1F5ED3CF0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = (*(*v5 + 16))(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

{
  SipHeader::SipHeader(a1, a2);
  *v3 = &unk_1F5ED3CF0;
  std::string::operator=((v3 + 8), "Authorization");
  *(a1 + 8) = 0;
  return a1;
}

void SipAuthorizationHeader::~SipAuthorizationHeader(SipAuthorizationHeader *this)
{
  *this = &unk_1F5ED3CF0;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  SipHeader::~SipHeader(this);
}

{
  SipAuthorizationHeader::~SipAuthorizationHeader(this);

  JUMPOUT(0x1E69235B0);
}

BOOL SipAuthorizationHeader::encodeValue(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    (*(*v1 + 72))(*(a1 + 64));
  }

  return v1 != 0;
}

BOOL SipAuthorizationHeader::setValueFromString(uint64_t a1, uint64_t a2)
{
  v3 = SipAuthScheme::createFromString(a2);
  if (v3)
  {
    v3 = (*(*v3 + 72))(v3);
  }

  *(a1 + 64) = v3;
  return v3 != 0;
}

void *SipClientInviteTransactionState::SipClientInviteTransactionState(void *a1, uint64_t *a2)
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

  *a1 = &unk_1F5ED3DA0;
  a1[1] = &unk_1F5ED3E20;
  a1[26] = &unk_1F5ED3E50;
  return a1;
}

void sub_1E4E589CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipClientInviteTransactionState::sendAckForResponse(void *a1, uint64_t *a2)
{
  v3 = a1[33];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[32];
      if (v7)
      {
        v8 = **v7;
        if (v9)
        {
          v10 = v9;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v11 = (v9 + 16);
          v12 = (*(v9[16] + 64))(v9 + 16);
          (*(*v11 + 16))(v11, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "sending ACK from transaction", 28);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          v13 = a2[1];
          v19 = *a2;
          v20 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipClientInviteTransaction::sendAckForResponse(v10, &v19, v21);
          ImsResult::~ImsResult(v21);
          v14 = v6;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            v14 = v6;
          }
        }

        else
        {
          v15 = (*(v7[16] + 7))(v7 + 16);
          (*(v7[16] + 2))(v7 + 16, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "How did a ", 10);
          *(v15 + 17) = 0;
          v16 = *(*(*a1 - 8) + 8);
          v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
          *(v15 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " end up in a ", 13);
          *(v15 + 17) = 0;
          v18 = strlen(("NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL, v18);
          *(v15 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "?", 1);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v14 = 0;
          *(v15 + 17) = 0;
        }

        (*(*v7 + 4))(v7, 4);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4E58D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t SipClientInviteCallingTransactionState::SipClientInviteCallingTransactionState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientInviteTransactionState::SipClientInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ED3E78;
  *(a1 + 8) = &unk_1F5ED3F00;
  *(a1 + 208) = &unk_1F5ED3F30;
  *(a1 + 272) = 1;
  return a1;
}

void sub_1E4E58E18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipClientInviteCallingTransactionState::enterState(SipClientInviteCallingTransactionState *this)
{
  v6 = *MEMORY[0x1E69E9840];
  *(this + 68) = 1;
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

void sub_1E4E59090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void SipClientInviteCallingTransactionState::handleTimer(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
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
        if (operator==(a2, &SipTimers::kTimerA))
        {
          if (SipTransaction::retryEnabled(v7))
          {
            (*(*v7 + 120))(v14, v7);
            ImsResult::~ImsResult(v14);
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, (a1 + 216));
            v8 = v16;
            if (v16)
            {
              p_shared_weak_owners = &v16->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              *(a1 + 272) *= 2;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            }

            else
            {
              *(a1 + 272) *= 2;
            }

            v17 = 0;
            operator new();
          }

          v11 = *(v7 + 16);
          v10 = (v7 + 128);
          v12 = (*(v11 + 64))(v10);
          (*(*v10 + 16))(v10, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "retry is no longer enabled. Not resending INVITE or resetting Timer A.", 70);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
        }

        else if (operator==(a2, &SipTimers::kTimerB))
        {
          SipTransaction::handleTimeout(v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4E59378(_Unwind_Exception *a1)
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

BOOL SipClientInviteCallingTransactionState::handleResponse(void *a1, uint64_t *a2)
{
  v3 = a1[33];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[32];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = *a2;
        v10 = *(*a2 + 128);
        if (v10 / 0x64 == 1)
        {
          v11 = 3;
          goto LABEL_15;
        }

        if (v10 / 0x64 == 2)
        {
          v11 = 5;
LABEL_15:
          (*(*v7 + 32))(v7, v11);
          goto LABEL_16;
        }

        if (v10 >= 0x12C)
        {
          v12 = a2[1];
          v14[0] = v9;
          v14[1] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipClientInviteTransactionState::sendAckForResponse(a1, v14);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          v11 = 4;
          goto LABEL_15;
        }
      }

LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v8;
    }
  }

  return 0;
}

void sub_1E4E594D8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipClientInviteCallingTransactionState::handleConnectionError(SipClientInviteCallingTransactionState *this)
{
  v7 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, this + 27);
  v2 = v5;
  if (v5)
  {
    p_shared_weak_owners = &v5->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    *(this + 68) = 1;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  }

  else
  {
    *(this + 68) = 1;
  }

  v6 = 0;
  operator new();
}

void sub_1E4E59618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void *SipClientInviteProceedingTransactionState::SipClientInviteProceedingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientInviteTransactionState::SipClientInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ED3F58;
  a1[1] = &unk_1F5ED3FE0;
  a1[26] = &unk_1F5ED4010;
  return a1;
}

void sub_1E4E59714(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipClientInviteProceedingTransactionState::handleResponse(void *a1, uint64_t *a2)
{
  v3 = a1[33];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[32];
      v8 = v7 != 0;
      if (!v7)
      {
        goto LABEL_16;
      }

      v9 = *a2;
      v10 = *(*a2 + 128);
      if (v10 / 0x64 == 1)
      {
        goto LABEL_16;
      }

      if (v10 / 0x64 == 2)
      {
        v11 = 5;
      }

      else
      {
        if (v10 < 0x12C)
        {
          v14 = v7[16];
          v13 = v7 + 16;
          v15 = (*(v14 + 56))(v13);
          (*(*v13 + 16))(v13, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "What the heck is this?", 22);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          v16 = *a2;
          v17 = (*(*v13 + 56))(v13);
          (*(*v13 + 16))(v13, v17);
          (*(*v16 + 104))(v16, v17);
          goto LABEL_16;
        }

        v12 = a2[1];
        v19[0] = v9;
        v19[1] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipClientInviteTransactionState::sendAckForResponse(a1, v19);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v11 = 4;
      }

      (*(*v7 + 32))(v7, v11);
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v8;
    }
  }

  return 0;
}

void sub_1E4E59974(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *SipClientInviteCompletedTransactionState::SipClientInviteCompletedTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientInviteTransactionState::SipClientInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ED4038;
  a1[1] = &unk_1F5ED40C0;
  a1[26] = &unk_1F5ED40F0;
  return a1;
}

void sub_1E4E59A54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipClientInviteCompletedTransactionState::enterState(SipClientInviteCompletedTransactionState *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = *(v4 + 112);
        if (v6)
        {
          v7 = *(v4 + 104);
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v8 = std::__shared_weak_count::lock(v6);
          std::__shared_weak_count::__release_weak(v6);
          if (v8)
          {
            if (v7 && (*(*v7 + 48))(v7))
            {
              if (byte_1EE2BCE50[23] < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCE50, *&byte_1EE2BCE50[8]);
              }

              else
              {
                __p = *byte_1EE2BCE50;
              }

              if (size)
              {
                atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = 0;
              operator new();
            }
          }
        }

        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4E59CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void SipClientInviteCompletedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerD))
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

uint64_t SipClientInviteCompletedTransactionState::handleResponse(void *a1, void *a2)
{
  if (*(*a2 + 128) < 0x12Cu)
  {
    v4 = a1[33];
    if (!v4)
    {
      return 0;
    }

    v5 = std::__shared_weak_count::lock(v4);
    if (!v5)
    {
      return 0;
    }

    v3 = v5;
    v6 = a1[32];
    if (v6)
    {
      v8 = *(v6 + 128);
      v7 = v6 + 128;
      v9 = (*(v8 + 64))(v7);
      (*(*v7 + 16))(v7, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "ignoring non-error response", 27);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    return 0;
  }

  v3 = a2[1];
  v11[0] = *a2;
  v11[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientInviteTransactionState::sendAckForResponse(a1, v11);
  if (v3)
  {
    goto LABEL_10;
  }

  return 0;
}

void *SipClientInviteTerminationPendingTransactionState::SipClientInviteTerminationPendingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientInviteTransactionState::SipClientInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ED4118;
  a1[1] = &unk_1F5ED4198;
  a1[26] = &unk_1F5ED41C8;
  return a1;
}

void sub_1E4E5A04C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *SipClientInviteTerminationPendingTransactionState::handleResponse(void *a1, void *a2)
{
  if (*(*a2 + 128) >= 0x12Cu)
  {
    v4 = a2[1];
    v10[0] = *a2;
    v10[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipClientInviteTransactionState::sendAckForResponse(a1, v10);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (*(*a2 + 128) - 200 < 0x64)
  {
    return 1;
  }

  result = a1[33];
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v4 = result;
      v6 = a1[32];
      if (v6)
      {
        v8 = *(v6 + 128);
        v7 = v6 + 128;
        v9 = (*(v8 + 64))(v7);
        (*(*v7 + 16))(v7, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "ignoring ", 9);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923350](*(v9 + 8), *(*a2 + 128));
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " response", 9);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
      }

LABEL_5:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return 0;
    }
  }

  return result;
}

void SipClientInviteCallingTransactionState::~SipClientInviteCallingTransactionState(SipClientInviteCallingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteCallingTransactionState::~SipClientInviteCallingTransactionState(SipClientInviteCallingTransactionState *this)
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

void SipClientInviteProceedingTransactionState::~SipClientInviteProceedingTransactionState(SipClientInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteProceedingTransactionState::~SipClientInviteProceedingTransactionState(SipClientInviteProceedingTransactionState *this)
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

void SipClientInviteCompletedTransactionState::~SipClientInviteCompletedTransactionState(SipClientInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteCompletedTransactionState::~SipClientInviteCompletedTransactionState(SipClientInviteCompletedTransactionState *this)
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

void SipClientInviteTerminationPendingTransactionState::~SipClientInviteTerminationPendingTransactionState(SipClientInviteTerminationPendingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteTerminationPendingTransactionState::~SipClientInviteTerminationPendingTransactionState(SipClientInviteTerminationPendingTransactionState *this)
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

void SipClientInviteTransactionState::~SipClientInviteTransactionState(SipClientInviteTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientInviteTransactionState::~SipClientInviteTransactionState(SipClientInviteTransactionState *this)
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

void *std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED4268;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED4268;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED4268;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCallingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED42E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED42E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED42E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED4368;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED4368;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED4368;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientInviteCallingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED43E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED43E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED43E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1E4E5B150(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XcapUri::constructUri(XcapUri *this)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v20 = 0u;
  *__src = 0u;
  *v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "/", 1);
  v2 = *this;
  if ((*(*this + 47) & 0x8000000000000000) != 0)
  {
    if (!*(v2 + 4))
    {
      goto LABEL_23;
    }
  }

  else if (!*(*this + 47))
  {
    goto LABEL_23;
  }

  XcapDocumentSelector::asString(v2, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *(this + 1);
  if (*v5 || v5[1])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "/", 1);
    XcapNodeSelector::fetchPath(*(this + 1), &__p);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_23:
  if ((BYTE8(v20) & 0x10) != 0)
  {
    v10 = v20;
    if (v20 < __src[1])
    {
      *&v20 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v20) & 8) == 0)
    {
      v9 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_36;
    }

    v11 = *(&v15 + 1);
    v10 = *(&v16 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v10 - v11;
  if (v9)
  {
    memmove(&__p, v11, v9);
  }

LABEL_36:
  __p.__r_.__value_.__s.__data_[v9] = 0;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 16) = __p;
  XcapNodeSelector::fetchQuery(*(this + 1), &__p);
  std::string::operator=((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v14 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  *(&v14 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v21);
}

void sub_1E4E5B4C8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void XcapUri::~XcapUri(XcapUri *this)
{
  v2 = *this;
  if (*this)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C403467C318);
  }

  v3 = *(this + 1);
  if (v3)
  {
    XcapNodeSelector::~XcapNodeSelector(v3);
    MEMORY[0x1E69235B0]();
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

ImsOutStream *XcapUri::log(XcapDocumentSelector **this, ImsOutStream *a2)
{
  if (*this)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Domain Selector: ", 17);
    *(a2 + 17) = 0;
    XcapDocumentSelector::asString(*this, __p);
    (*(*a2 + 32))(a2, __p);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (this[1])
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Node Selector: ", 15);
      *(a2 + 17) = 0;
      XcapNodeSelector::asString(this[1], __p);
      (*(*a2 + 32))(a2, __p);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a2;
}

void sub_1E4E5B73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipIdString::SipIdString(SipIdString *this)
{
  *this = &unk_1F5ED4468;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  ObfuscatedString::ObfuscatedString(this + 8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E5B7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipIdString::set(uint64_t a1, const std::string *a2)
{
  ObfuscatedString::ObfuscatedString(__p, a2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = *__p;
  *(a1 + 24) = v5;
  HIBYTE(v5) = 0;
  LOBYTE(__p[0]) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    v3 = SHIBYTE(v5);
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    HIBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }
}

void SipCallId::generate(SipCallId *this)
{
  v1[0] = 0;
  v1[1] = 0;
  ImsRandomNumberGenerator<unsigned char>::ImsRandomNumberGenerator(v1);
}

void sub_1E4E5B96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator((v15 - 32));
  _Unwind_Resume(a1);
}

void SipSessionId::generateFromCallId(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v3[0] = 0;
    v3[1] = 0;
    ImsRandomNumberGenerator<unsigned char>::ImsRandomNumberGenerator(v3);
  }
}

void sub_1E4E5BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (*(v22 - 49) < 0)
  {
    operator delete(*(v22 - 72));
  }

  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator((v22 - 48));
  _Unwind_Resume(a1);
}

void SipIdString::~SipIdString(void **this)
{
  *this = &unk_1F5ED4468;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED4468;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

std::string *SipIdString::loggableName@<X0>(SipIdString *this@<X0>, std::string *a2@<X8>)
{
  ObfuscatedString::str((this + 8));

  return LoggableString::LoggableString(a2, (this + 8));
}

void QMISipLogger::QMISipLogger(QMISipLogger *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "qmi.log");
  v9[0] = 0;
  v12 = 0;
  ImsLogContainer::ImsLogContainer(this, &v13, v9);
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  *(this + 17) = &unk_1F5EC4A00;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_1F5EC4A30;
  ims::getQueue(&v13);
  *(this + 23) = 0;
  *(this + 24) = 0;
  v2 = v13;
  *(this + 25) = v13;
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 26) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 216), "com.apple.ipTelephony", "qmi.log");
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_1F5ED44B0;
  *(this + 17) = &unk_1F5ED4600;
  *(this + 21) = &unk_1F5ED4630;
  *(this + 22) = &unk_1F5ED4750;
  *(this + 14) = 0u;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 15) = 0u;
  *(this + 128) = 0;
  *(this + 39) = this + 320;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v13, "qmi.log");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "QMISipLogger to start", 21);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_1E4E5BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(v29 + 320));
  if (*(v29 + 287) < 0)
  {
    operator delete(*(v29 + 264));
  }

  qmi::Client::~Client(v32);
  MEMORY[0x1E69225A0](v29 + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v31);
  *(v29 + 136) = v30;
  if (*(v29 + 167) < 0)
  {
    operator delete(*v33);
  }

  ImsLogContainer::~ImsLogContainer(v29);
  _Unwind_Resume(a1);
}

void QMISipLogger::~QMISipLogger(QMISipLogger *this)
{
  *this = &unk_1F5ED44B0;
  *(this + 17) = &unk_1F5ED4600;
  *(this + 21) = &unk_1F5ED4630;
  *(this + 22) = &unk_1F5ED4750;
  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(this + 40));
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  qmi::Client::~Client((this + 224));
  MEMORY[0x1E69225A0](this + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 23);
  *(this + 17) = &unk_1F5EC4A00;
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

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
  QMISipLogger::~QMISipLogger(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMISipLogger::~QMISipLogger(QMISipLogger *this)
{
  QMISipLogger::~QMISipLogger((this - 176));
}

{
  QMISipLogger::~QMISipLogger((this - 176));

  JUMPOUT(0x1E69235B0);
}

uint64_t QMISipLogger::start(QMISipLogger *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    v23 = 0;
    ims::getQueue(&v23);
    std::string::basic_string[abi:ne200100]<0>(&v19, "QMISipLogger:MAVIMS");
    v2 = v23;
    object = v23;
    if (v23)
    {
      dispatch_retain(v23);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ims");
    v3 = *(this + 24);
    if (!v3 || (v4 = *(this + 23), (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v14 = 0;
    v15 = 0;
    v7 = std::__shared_weak_count::lock(v6);
    v8 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v4 = 0;
    }

    v14 = v4;
    v15 = v7;
    std::__shared_weak_count::__release_weak(v6);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    IPTelephonyManager::getBBServerConnection(&v12);
    qmi::Client::createWithQueueLocal();
    v9 = v22;
    v22 = 0uLL;
    v10 = *(this + 31);
    *(this + 15) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    qmi::Client::~Client(v21);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    qmi::Client::setHandler();
    qmi::Client::start((this + 224));
    *(this + 256) = 1;
    *(this + 38) = 0;
    *(this + 292) = 0;
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  return 1;
}

{
  return (*(*this + 80))();
}

void sub_1E4E5C3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, dispatch_object_t object, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v25)
  {
    dispatch_release(v25);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12QMISipLogger5startEv_block_invoke()
{
  v0 = std::string::basic_string[abi:ne200100]<0>(&v6, "qmi.log");
  v2[0] = 0;
  v5 = 0;
  v1 = ims::debug(v0, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), "QMISipLogger Started", 20);
  *(v1 + 17) = 0;
  (*(*v1 + 64))(v1, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v1 + 17) = 0;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1E4E5C544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t non-virtual thunk toQMISipLogger::start(QMISipLogger *this)
{
  QMISipLogger::start((this - 136));
  return 1;
}

{
  return (*(*(this - 17) + 80))();
}

uint64_t QMISipLogger::stop(uint64_t this)
{
  if (*(this + 256) == 1)
  {
    return MEMORY[0x1EEE60718](this + 224);
  }

  return this;
}

uint64_t non-virtual thunk toQMISipLogger::stop(uint64_t this)
{
  if (*(this + 120) == 1)
  {
    return MEMORY[0x1EEE60718](this + 88);
  }

  return this;
}

void QMISipLogger::logIncomingPrack(_BYTE *a1, uint64_t a2, std::string **a3, uint64_t a4)
{
  v7 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "QMISipLogger::logIncomingPrack [appCallId=", 42);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a4);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (a1[256] == 1)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(aBlock, "qmi.log");
    v30[0] = 0;
    v33 = 0;
    v9 = ims::debug(v8, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "QMISipLogger::logIncomingPrack [appCallId=", 42);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923340](*(v9 + 8), a4);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(aBlock[0]);
    }

    memset(&v29, 0, sizeof(v29));
    v10 = *a3;
    if (SHIBYTE((*a3)[22].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v10[22].__r_.__value_.__l.__data_, v10[22].__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v10[22];
    }

    memset(v28, 0, sizeof(v28));
    qmi::MutableMessageBase::MutableMessageBase(v28);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1174405120;
    v24 = ___ZN12QMISipLogger16logIncomingPrackENSt3__110shared_ptrIK10SipRequestEENS1_I9BambiCallEEh_block_invoke;
    v25 = &__block_descriptor_tmp_10_2;
    v27 = a4;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v29;
    }

    v11 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(v28);
    v24(v23, v11);
    v12 = *a3;
    data = v12[16].__r_.__value_.__l.__data_;
    if (data && (v14 = std::__shared_weak_count::lock(data)) != 0)
    {
      v15 = *(v12[15].__r_.__value_.__r.__words[2] + 4372);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = MEMORY[0x1114];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN12QMISipLogger16logIncomingPrackENSt3__110shared_ptrIK10SipRequestEENS1_I9BambiCallEEh_block_invoke_11;
    v21[3] = &__block_descriptor_tmp_13;
    v22 = v15;
    v16 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(v28);
    ___ZN12QMISipLogger16logIncomingPrackENSt3__110shared_ptrIK10SipRequestEENS1_I9BambiCallEEh_block_invoke_11(v21, v16);
    v17[5] = a1 + 224;
    v17[6] = QMIServiceMsg::create();
    v18 = 25000;
    v19 = 0;
    v20 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN12QMISipLogger16logIncomingPrackENSt3__110shared_ptrIK10SipRequestEENS1_I9BambiCallEEh_block_invoke_2;
    v17[3] = &__block_descriptor_tmp_16_0;
    v17[4] = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    v35 = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v36 = &unk_1E876A4A8;
    v37 = v17;
    v20 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v20)
    {
      _Block_release(v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v28);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4E5CA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a36);
  if (*(v36 - 169) < 0)
  {
    operator delete(*(v36 - 192));
  }

  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger16logIncomingPrackENSt3__110shared_ptrIK10SipRequestEENS1_I9BambiCallEEh_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 2) = 3;
  *(a2 + 4) = 0;
  *(a2 + 6) = *(a1 + 56);
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    LOWORD(v4) = *(a1 + 40);
  }

  *(a2 + 12) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    do
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *v6;
      }

      v8 = *(v7 + v5);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  *(a2 + 7) = 31;
  *(a2 + 8) = 0;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

void QMISipLogger::handleResponse(uint64_t a1, const char *a2)
{
  if (*(a1 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "qmi.log");
    v9[0] = 0;
    v12 = 0;
    v4 = ims::debug(v13, v9);
    v5 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), a2, v5);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " request failed: ", 17);
    *(v4 + 17) = 0;
    v6 = *(a1 + 4);
    v7 = qmi::asString();
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v7, v8);
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
  }
}

void sub_1E4E5CD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void qmi::Client::SendProxy::~SendProxy(qmi::Client::SendProxy *this)
{
  if (*(this + 1))
  {
    v2 = *this;
    qmi::Client::send();
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }
}

{
  if (*(this + 1))
  {
    v2 = *this;
    qmi::Client::send();
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }
}

void QMISipLogger::logPrackResponse(_BYTE *a1, uint64_t *a2, std::string **a3, uint64_t a4)
{
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "QMISipLogger::logPrackResponse [appCallId=", 42);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a4);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (a1[256] == 1)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(aBlock, "qmi.log");
    v34[0] = 0;
    v37 = 0;
    v10 = ims::debug(v9, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "QMISipLogger::logPrackResponse [appCallId=", 42);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923340](*(v10 + 8), a4);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(aBlock[0]);
    }

    memset(&v33, 0, sizeof(v33));
    v11 = *a3;
    if (SHIBYTE((*a3)[22].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, v11[22].__r_.__value_.__l.__data_, v11[22].__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v11[22];
    }

    memset(v32, 0, sizeof(v32));
    qmi::MutableMessageBase::MutableMessageBase(v32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1174405120;
    v26 = ___ZN12QMISipLogger16logPrackResponseENSt3__110shared_ptrIK11SipResponseEENS1_I9BambiCallEEh_block_invoke;
    v27 = &__block_descriptor_tmp_18_3;
    v12 = a2[1];
    v28 = *a2;
    v29 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = a4;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v33;
    }

    v13 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(v32);
    v26(v25, v13);
    v14 = *a3;
    data = v14[16].__r_.__value_.__l.__data_;
    if (data && (v16 = std::__shared_weak_count::lock(data)) != 0)
    {
      v17 = *(v14[15].__r_.__value_.__r.__words[2] + 4372);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v17 = MEMORY[0x1114];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___ZN12QMISipLogger16logPrackResponseENSt3__110shared_ptrIK11SipResponseEENS1_I9BambiCallEEh_block_invoke_19;
    v23[3] = &__block_descriptor_tmp_20_0;
    v24 = v17;
    v18 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(v32);
    ___ZN12QMISipLogger16logPrackResponseENSt3__110shared_ptrIK11SipResponseEENS1_I9BambiCallEEh_block_invoke_19(v23, v18);
    v19[5] = a1 + 224;
    v19[6] = QMIServiceMsg::create();
    v20 = 25000;
    v21 = 0;
    v22 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN12QMISipLogger16logPrackResponseENSt3__110shared_ptrIK11SipResponseEENS1_I9BambiCallEEh_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_22;
    v19[4] = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    v39 = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v40 = &unk_1E876A4A8;
    v41 = v19;
    v22 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v22)
    {
      _Block_release(v22);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v32);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4E5D280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a38);
  if (*(v38 - 185) < 0)
  {
    operator delete(*(v38 - 208));
  }

  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger16logPrackResponseENSt3__110shared_ptrIK11SipResponseEENS1_I9BambiCallEEh_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 2) = 3;
  *(a2 + 4) = *(*(a1 + 32) + 128);
  *(a2 + 6) = *(a1 + 72);
  v4 = *(a1 + 71);
  if (v4 < 0)
  {
    LOWORD(v4) = *(a1 + 56);
  }

  *(a2 + 12) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 48);
    do
    {
      v7 = a1 + 48;
      if (*(a1 + 71) < 0)
      {
        v7 = *v6;
      }

      v8 = *(v7 + v5);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  *(a2 + 7) = 38;
  *(a2 + 8) = 0;
}

void __copy_helper_block_e8_32c40_ZTSNSt3__110shared_ptrIK11SipResponseEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_1E4E5D434(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c40_ZTSNSt3__110shared_ptrIK11SipResponseEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void QMISipLogger::logEarlyMTSessionRequestedEvent(QMISipLogger *a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = 0;
  v4 = *(v3 + 384);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v7 = v5;
    if (v5)
    {
      v6 = *(v3 + 376);
    }
  }

  else
  {
    v5 = 0;
  }

  QMISipLogger::recordProcedure(a1, &v6, 6u, 1, 0);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E5D568(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::recordProcedure(QMISipLogger *this, void *a2, unsigned int a3, int a4, int a5)
{
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    v12 = *(v11 + 4372);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = 0;
  if (v10)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_6:
  v27 = v12;
  v13 = QMISipLogger::procedureForInstance(this, v12);
  if (!ims::AccessNetwork::isWifi((*a2 + 3432)) || a5 != 0)
  {
    v15 = 1 << a3;
    __p[0] = &v27;
    v16 = std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 312, v12);
    if (a4)
    {
      v17 = *(v16 + 16) | v15;
    }

    else
    {
      v17 = v16[4] & ~v15;
    }

    *(v16 + 16) = v17;
    __p[0] = &v27;
    v18 = *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 312, v27) + 16);
    v19 = (*(*this + 64))(this);
    (*(*this + 16))(this, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Procedure ", 10);
    *(v19 + 17) = 0;
    v20 = nas::asString(a3);
    if (v13 == v18)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v20);
      (*(*v19 + 32))(v19, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " already ", 9);
      *(v19 + 17) = 0;
      if (a4)
      {
        v21 = "started";
      }

      else
      {
        v21 = "ended";
      }

      if (a4)
      {
        v22 = 7;
      }

      else
      {
        v22 = 5;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v21, v22);
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " for instance ", 14);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923350](*(v19 + 8), v27);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v20);
      (*(*v19 + 32))(v19, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " ", 1);
      *(v19 + 17) = 0;
      if (a4)
      {
        v23 = "started";
      }

      else
      {
        v23 = "ended";
      }

      if (a4)
      {
        v24 = 7;
      }

      else
      {
        v24 = 5;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v23, v24);
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " for instance ", 14);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923350](*(v19 + 8), v27);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      QMISipLogger::reportHighestProcedure(this, v27);
    }
  }
}

void sub_1E4E5D908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logSessionRequestedEvent(std::string *a1, std::string **a2, uint64_t a3, int a4)
{
  v8 = *a2;
  v70 = 0;
  v71 = 0;
  data = v8[16].__r_.__value_.__l.__data_;
  if (data)
  {
    v10 = std::__shared_weak_count::lock(data);
    v71 = v10;
    if (v10)
    {
      v70 = v8[15].__r_.__value_.__r.__words[2];
    }
  }

  else
  {
    v10 = 0;
  }

  QMISipLogger::recordProcedure(a1, &v70, 6u, 1, 0);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
  (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "QMISipLogger::logSessionRequestedEvent [appCallId=", 50);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923340](*(v11 + 8), a3);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  v12 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
  v66[0] = 0;
  v69 = 0;
  v13 = ims::debug(v12, v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "QMISipLogger::logSessionRequestedEvent [appCallId=", 50);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923340](*(v13 + 8), a3);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "]", 1);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v69 == 1 && v68 < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(aBlock.__r_.__value_.__l.__data_);
  }

  if (a1[10].__r_.__value_.__s.__data_[16])
  {
    v64 = 0;
    v65 = 0;
    IPTelephonyManager::getBambiClient(&v64);
    memset(&__str, 0, sizeof(__str));
    v14 = *a2;
    if (SHIBYTE((*a2)[22].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v14[22].__r_.__value_.__l.__data_, v14[22].__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v14[22];
    }

    v15 = time(0);
    a1[12].__r_.__value_.__s.__data_[0] = a3;
    v16 = v64;
    *&aBlock.__r_.__value_.__l.__data_ = 0uLL;
    if (BambiClient::callCountExcludingCall(v64, &aBlock) < 2 || a4)
    {
      std::string::operator=(a1 + 11, &__str);
    }

    a1[12].__r_.__value_.__r.__words[2] = v15;
    v17 = *a2;
    v18 = (*a2)[16].__r_.__value_.__l.__data_;
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = v17[15].__r_.__value_.__r.__words[2];
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

    if (*(v20 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&aBlock, *(v20 + 4432), *(v20 + 4440));
    }

    else
    {
      aBlock = *(v20 + 4432);
    }

    v21 = *(v16 + 216);
    if (v21)
    {
      v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v21 + 280, &aBlock.__r_.__value_.__l.__data_);
      LOBYTE(v21) = v21 + 288 != v22 && *(v22 + 56) == 1;
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if ((v21 & 1) == 0)
    {
      v61 = 0u;
      v62 = 0u;
      qmi::MutableMessageBase::MutableMessageBase(&v61);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 1174405120;
      v56 = ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke;
      v57 = &__block_descriptor_tmp_26_0;
      v59 = a4;
      v60 = a3;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v58, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v58 = __str;
      }

      v23 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(&v61);
      v56(v55, v23);
      v24 = *a2;
      v25 = (*a2)[16].__r_.__value_.__l.__data_;
      if (v25 && (v26 = std::__shared_weak_count::lock(v25)) != 0)
      {
        v27 = *(v24[15].__r_.__value_.__r.__words[2] + 4372);
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v27 = MEMORY[0x1114];
      }

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 0x40000000;
      v53[2] = ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_27;
      v53[3] = &__block_descriptor_tmp_28;
      v54 = v27;
      v28 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(&v61);
      ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_27(v53, v28);
      if ((a4 & 1) != 0 || !(*(a1->__r_.__value_.__r.__words[0] + 312))(a1))
      {
        v41 = &a1[9].__r_.__value_.__s.__data_[8];
        v42 = QMIServiceMsg::create();
        v43 = 25000;
        v44 = 0;
        v45 = 0;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v37[2] = ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_33;
        v37[3] = &__block_descriptor_tmp_34;
        v37[4] = a1;
        aBlock.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
        aBlock.__r_.__value_.__l.__size_ = 0x40000000;
        aBlock.__r_.__value_.__r.__words[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
        v73 = &unk_1E876A4A8;
        v74 = v37;
        v45 = _Block_copy(&aBlock);
        qmi::Client::send();
        if (v45)
        {
          _Block_release(v45);
        }
      }

      else
      {
        memset(&v52, 0, sizeof(v52));
        v29 = *a2;
        if ((*a2)[53].__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&v52, v29[52].__r_.__value_.__l.__size_, v29[52].__r_.__value_.__r.__words[2]);
          v29 = *a2;
        }

        else
        {
          v52 = *(v29 + 1256);
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 1174405120;
        v47 = ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_2;
        v48 = &__block_descriptor_tmp_29_0;
        v30 = a2[1];
        v49 = v29;
        v50 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v52;
        }

        v31 = *(&v61 + 1);
        if (*(&v61 + 1) != v62)
        {
          while (*(*v31 + 8) != 18)
          {
            if (++v31 == v62)
            {
              goto LABEL_62;
            }
          }
        }

        if (v31 == v62)
        {
LABEL_62:
          operator new();
        }

        v32 = ***v31;
        if (!v33)
        {
          __cxa_bad_cast();
        }

        v47(v46, v33 + 16);
        v41 = &a1[9].__r_.__value_.__s.__data_[8];
        v42 = QMIServiceMsg::create();
        v43 = 25000;
        v44 = 0;
        v45 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 1174405120;
        v38[2] = ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_30;
        v38[3] = &__block_descriptor_tmp_32;
        v35 = *a2;
        v34 = a2[1];
        v38[4] = a1;
        v38[5] = v35;
        v39 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = a3;
        aBlock.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
        aBlock.__r_.__value_.__l.__size_ = 0x40000000;
        aBlock.__r_.__value_.__r.__words[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
        v73 = &unk_1E876A4A8;
        v74 = v38;
        v36 = _Block_copy(&aBlock);
        v45 = v36;
        if (v42)
        {
          qmi::Client::send();
          v36 = v45;
        }

        if (v36)
        {
          _Block_release(v36);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v61);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }
  }
}

void sub_1E4E5E214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, char a62)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a62);
  if (*(v62 - 233) < 0)
  {
    operator delete(*(v62 - 256));
  }

  v64 = *(v62 - 224);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  *a2 = v4;
  *(a2 + 1) = 513;
  *(a2 + 4) = 0;
  *(a2 + 6) = *(a1 + 57);
  v5 = *(a1 + 55);
  if (v5 < 0)
  {
    LOWORD(v5) = *(a1 + 40);
  }

  *(a2 + 12) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    do
    {
      v8 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v8 = *v7;
      }

      v10 = *(v8 + v6);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v10);
      ++v6;
    }

    while (v6 < *(a2 + 12));
    v4 = *(a1 + 56);
  }

  if (v4)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  *(a2 + 7) = v9;
  *(a2 + 8) = 0;
}

void ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 4) = BambiCall::senderIsPrivate(*(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 384);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    *(a2 + 8) = *(*(v4 + 376) + 296);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 8) = MEMORY[0x128];
  }

  *(a2 + 12) = 0x300000001;
  *(a2 + 20) = 0;
  if (*(a1 + 71) < 0)
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = *(a1 + 71);
  }

  *(a2 + 24) = v7;
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = a1 + 48;
      if (*(a1 + 71) < 0)
      {
        v9 = *(a1 + 48);
      }

      v10 = *(v9 + v8);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 32, &v10);
      ++v8;
    }

    while (v8 < *(a2 + 24));
  }
}

void __copy_helper_block_e8_32c36_ZTSNSt3__110shared_ptrI9BambiCallEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_1E4E5E570(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c36_ZTSNSt3__110shared_ptrI9BambiCallEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN12QMISipLogger24logSessionRequestedEventENSt3__110shared_ptrI9BambiCallEEhb_block_invoke_30(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 56);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v47 = -1;
  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.log");
  v42[0] = 0;
  v45 = 0;
  v7 = ims::debug(__p, v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "logSessionRequestedEvent", 24);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " handleResponseForIncomingCall  for incoming call ", 50);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), v6);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 1))
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(aBlock, "qmi.log");
    LOBYTE(__p[0]) = 0;
    v33.__r_.__value_.__s.__data_[16] = 0;
    v9 = ims::debug(v8, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "logSessionRequestedEvent", 24);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " request failed for incoming call", 33);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_17;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v39 = ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke;
  v40 = &unk_1E876A418;
  v41 = v46;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v12 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_16;
  }

  v13 = v11;
  __p[0] = TlvValue;
  LOBYTE(aBlock[0]) = tlv::parseV<mavims::tlv::IncomingCallBasebandCallId>(__p, v11);
  if (!__p[0])
  {
    if ((*MEMORY[0x1E69E5140])(*a2, 18, v12, v13))
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = std::string::basic_string[abi:ne200100]<0>(aBlock, "qmi.log");
    LOBYTE(__p[0]) = 0;
    v33.__r_.__value_.__s.__data_[16] = 0;
    v9 = ims::error(v14, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "QMISipLogger::handleResponseForIncomingCall did not contain a baseband Call Id", 78);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_17:
    *(v9 + 17) = 0;
    if (v33.__r_.__value_.__s.__data_[16] == 1 && v33.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(aBlock[0]);
    }

    goto LABEL_45;
  }

  v39(v38, aBlock);
LABEL_14:
  v36 = 0u;
  v37 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  memset(&v35, 0, sizeof(v35));
  if (*(v4 + 551) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(v4 + 528), *(v4 + 536));
  }

  else
  {
    v35 = *(v4 + 528);
  }

  __p[0] = MEMORY[0x1E69E9820];
  __p[1] = 1174405120;
  v31 = ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_2;
  v32 = &__block_descriptor_tmp_106;
  v34 = v6;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v35;
  }

  v15 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(&v36);
  v31(__p, v15);
  v16 = *(v4 + 384);
  if (v16 && (v17 = std::__shared_weak_count::lock(v16)) != 0)
  {
    v18 = *(*(v4 + 376) + 4372);
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  else
  {
    v18 = MEMORY[0x1114];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_107;
  v28[3] = &__block_descriptor_tmp_108;
  v29 = v18;
  v19 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(&v36);
  ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_107(v28, v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_2_109;
  v27[3] = &unk_1E876A460;
  v27[4] = v46;
  v20 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    while (*(*v20 + 8) != 19)
    {
      if (++v20 == v37)
      {
        goto LABEL_37;
      }
    }
  }

  if (v20 == v37)
  {
LABEL_37:
    operator new();
  }

  v21 = ***v20;
  if (!v22)
  {
    __cxa_bad_cast();
  }

  ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_2_109(v27, v22 + 12);
  v23[5] = v3 + 224;
  v23[6] = QMIServiceMsg::create();
  v24 = 25000;
  v25 = 0;
  v26 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_3;
  v23[3] = &__block_descriptor_tmp_113;
  v23[4] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  v49 = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v50 = &unk_1E876A4A8;
  v51 = v23;
  v26 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v26)
  {
    _Block_release(v26);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v36);
LABEL_45:
  _Block_object_dispose(v46, 8);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E5ECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, void *__p, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (SHIBYTE(a41) < 0)
  {
    operator delete(__p);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a46);
  _Block_object_dispose((v48 - 168), 8);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__110shared_ptrI9BambiCallEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__110shared_ptrI9BambiCallEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QMISipLogger::logSessionConfirmedEvent(_BYTE *a1, std::string **a2, uint64_t a3, char a4)
{
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "QMISipLogger::logSessionConfirmedEvent [appCallId=", 50);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (a1[256] == 1)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v63[0] = 0;
    v66 = 0;
    v10 = ims::debug(v9, v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "QMISipLogger::logSessionConfirmedEvent [appCallId=", 50);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923340](*(v10 + 8), a3);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v66 == 1 && v65 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    v61 = 0;
    v62 = 0;
    IPTelephonyManager::getBambiClient(&v61);
    v11 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v57[0] = 0;
    v60 = 0;
    v12 = ims::debug(v11, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Current call count is ", 22);
    *(v12 + 17) = 0;
    v13 = v61;
    v33 = 0;
    v34 = 0;
    v14 = BambiClient::callCountExcludingCall(v61, &v33);
    MEMORY[0x1E6923370](*(v12 + 8), v14);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v60 == 1 && v59 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    memset(&v56, 0, sizeof(v56));
    v15 = *a2;
    if (SHIBYTE((*a2)[22].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, v15[22].__r_.__value_.__l.__data_, v15[22].__r_.__value_.__l.__size_);
      v15 = *a2;
    }

    else
    {
      v56 = v15[22];
    }

    v16 = v15[63].__r_.__value_.__s.__data_[17];
    data = v15[16].__r_.__value_.__l.__data_;
    if (data)
    {
      v18 = std::__shared_weak_count::lock(data);
      if (v18)
      {
        v19 = v15[15].__r_.__value_.__r.__words[2];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if (*(v19 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&aBlock, *(v19 + 4432), *(v19 + 4440));
    }

    else
    {
      aBlock = *(v19 + 4432);
    }

    v20 = *(v13 + 216);
    if (v20)
    {
      v21 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v20 + 280, &aBlock.__r_.__value_.__l.__data_);
      LOBYTE(v20) = v20 + 288 != v21 && *(v21 + 56) == 1;
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((v20 & 1) == 0)
    {
      v54 = 0u;
      v55 = 0u;
      qmi::MutableMessageBase::MutableMessageBase(&v54);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 1174405120;
      v49 = ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke;
      v50 = &__block_descriptor_tmp_39;
      v52 = v16;
      v53 = a3;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
      }

      else
      {
        v51 = v56;
      }

      v22 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(&v54);
      v49(v48, v22);
      v23 = *a2;
      v24 = (*a2)[16].__r_.__value_.__l.__data_;
      if (v24 && (v25 = std::__shared_weak_count::lock(v24)) != 0)
      {
        v26 = *(v23[15].__r_.__value_.__r.__words[2] + 4372);
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        v26 = MEMORY[0x1114];
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v45 = ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_40;
      v46 = &__block_descriptor_tmp_41;
      v47 = v26;
      v27 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(&v54);
      v45(v44, v27);
      if ((*(*a1 + 312))(a1))
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 1174405120;
        v39 = ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_2;
        v40 = &__block_descriptor_tmp_43;
        v43 = a4;
        v28 = a2[1];
        v41 = *a2;
        v42 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *(&v54 + 1);
        if (*(&v54 + 1) != v55)
        {
          while (*(*v29 + 8) != 17)
          {
            if (++v29 == v55)
            {
              goto LABEL_49;
            }
          }
        }

        if (v29 == v55)
        {
LABEL_49:
          operator new();
        }

        v30 = ***v29;
        if (!v31)
        {
          __cxa_bad_cast();
        }

        v39(v38, v31 + 12);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }
      }

      v33 = a1 + 224;
      v34 = QMIServiceMsg::create();
      v35 = 25000;
      v36 = 0;
      v37 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v32[2] = ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_44;
      v32[3] = &__block_descriptor_tmp_46;
      v32[4] = a1;
      aBlock.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      aBlock.__r_.__value_.__l.__size_ = 0x40000000;
      aBlock.__r_.__value_.__r.__words[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
      v68 = &unk_1E876A4A8;
      v69 = v32;
      v37 = _Block_copy(&aBlock);
      qmi::Client::send();
      if (v37)
      {
        _Block_release(v37);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v54);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }
}

void sub_1E4E5F5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, char a62)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a42);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  v64 = *(v62 - 208);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  *a2 = v4 ^ 1;
  *(a2 + 1) = 513;
  *(a2 + 4) = 200;
  *(a2 + 6) = *(a1 + 57);
  v5 = *(a1 + 55);
  if (v5 < 0)
  {
    LOWORD(v5) = *(a1 + 40);
  }

  *(a2 + 12) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    do
    {
      v8 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v8 = *v7;
      }

      v10 = *(v8 + v6);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v10);
      ++v6;
    }

    while (v6 < *(a2 + 12));
    v4 = *(a1 + 56);
  }

  if (v4)
  {
    v9 = 13;
  }

  else
  {
    v9 = 12;
  }

  *(a2 + 7) = v9;
  *(a2 + 8) = 0;
}

void ___ZN12QMISipLogger24logSessionConfirmedEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 48);
  *(a2 + 4) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 384);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    *(a2 + 8) = *(*(v3 + 376) + 296);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *(a2 + 8) = MEMORY[0x128];
  }

  *(a2 + 12) = 1;
}

uint64_t __copy_helper_block_e8_32c37_ZTSKNSt3__110shared_ptrI9BambiCallEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c37_ZTSKNSt3__110shared_ptrI9BambiCallEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QMISipLogger::logSessionProgressEvent(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "QMISipLogger::logSessionProgressEvent [appCallId=", 49);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923340](*(v6 + 8), a3);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (a1[256] == 1)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(v26, "qmi.log");
    v22[0] = 0;
    v25 = 0;
    v8 = ims::debug(v7, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "QMISipLogger::logSessionProgressEvent", 37);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v9 = std::string::basic_string[abi:ne200100]<0>(v26, "qmi.log");
    v18[0] = 0;
    v21 = 0;
    v10 = ims::debug(v9, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "P-Asserted-Identity tel phone number ", 37);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, *a2 + 1256);
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

    v11 = std::string::basic_string[abi:ne200100]<0>(v26, "qmi.log");
    v14[0] = 0;
    v17 = 0;
    v12 = ims::debug(v11, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "P-Asserted-Identity Context ", 28);
    *(v12 + 17) = 0;
    v13 = SipUri::phoneContext((*a2 + 1080));
    (*(*v12 + 32))(v12, v13);
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
  }
}

void sub_1E4E5FBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
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

void QMISipLogger::logRingingEvent(_BYTE *a1, std::string **a2, uint64_t a3, char a4)
{
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "QMISipLogger::logRingingEvent [appCallId=", 41);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (a1[256] == 1)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v69[0] = 0;
    v72 = 0;
    v10 = ims::debug(v9, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "QMISipLogger::logRingingEvent [appCallId=", 41);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923340](*(v10 + 8), a3);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v72 == 1 && v71 < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    v11 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v65[0] = 0;
    v68 = 0;
    v12 = ims::debug(v11, v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "QMISipLogger::logRingingEvent", 29);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v68 == 1 && v67 < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v61[0] = 0;
    v64 = 0;
    v14 = ims::debug(v13, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "P-Asserted-Identity tel phone number ", 37);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, &(*a2)[52].__r_.__value_.__l.__size_);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
    v57[0] = 0;
    v60 = 0;
    v16 = ims::debug(v15, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "P-Asserted-Identity Context ", 28);
    *(v16 + 17) = 0;
    v17 = SipUri::phoneContext(&(*a2)[45]);
    (*(*v16 + 32))(v16, v17);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v60 == 1 && v59 < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    memset(&v56, 0, sizeof(v56));
    v18 = *a2;
    if (SHIBYTE((*a2)[22].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, v18[22].__r_.__value_.__l.__data_, v18[22].__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = v18[22];
    }

    v54 = 0;
    v55 = 0;
    IPTelephonyManager::getBambiClient(&v54);
    v19 = v54;
    v20 = *a2;
    data = (*a2)[16].__r_.__value_.__l.__data_;
    if (data)
    {
      v22 = std::__shared_weak_count::lock(data);
      if (v22)
      {
        v23 = v20[15].__r_.__value_.__r.__words[2];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    if (*(v23 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&aBlock, *(v23 + 4432), *(v23 + 4440));
    }

    else
    {
      aBlock = *(v23 + 4432);
    }

    v24 = *(v19 + 216);
    if (v24)
    {
      v25 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v24 + 280, &aBlock.__r_.__value_.__l.__data_);
      LOBYTE(v24) = v24 + 288 != v25 && *(v25 + 56) == 1;
    }

    if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(aBlock.__r_.__value_.__l.__data_);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if ((v24 & 1) == 0)
    {
      v52 = 0u;
      v53 = 0u;
      qmi::MutableMessageBase::MutableMessageBase(&v52);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 1174405120;
      v48 = ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke;
      v49 = &__block_descriptor_tmp_55_1;
      v51 = a3;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = v56;
      }

      v26 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(&v52);
      v48(v47, v26);
      v27 = *a2;
      v28 = (*a2)[16].__r_.__value_.__l.__data_;
      if (v28 && (v29 = std::__shared_weak_count::lock(v28)) != 0)
      {
        v30 = *(v27[15].__r_.__value_.__r.__words[2] + 4372);
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      else
      {
        v30 = MEMORY[0x1114];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 0x40000000;
      v45[2] = ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_56;
      v45[3] = &__block_descriptor_tmp_57;
      v46 = v30;
      v31 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(&v52);
      ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_56(v45, v31);
      if ((*(*a1 + 312))(a1))
      {
        memset(&aBlock, 0, sizeof(aBlock));
        v32 = *a2;
        if ((*a2)[53].__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&aBlock, v32[52].__r_.__value_.__l.__size_, v32[52].__r_.__value_.__r.__words[2]);
        }

        else
        {
          aBlock = *(v32 + 1256);
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 1174405120;
        v41 = ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_2;
        v42 = &__block_descriptor_tmp_60_0;
        v44 = a4;
        if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v43, aBlock.__r_.__value_.__l.__data_, aBlock.__r_.__value_.__l.__size_);
        }

        else
        {
          v43 = aBlock;
        }

        v33 = *(&v52 + 1);
        if (*(&v52 + 1) != v53)
        {
          while (*(*v33 + 8) != 16)
          {
            if (++v33 == v53)
            {
              goto LABEL_63;
            }
          }
        }

        if (v33 == v53)
        {
LABEL_63:
          operator new();
        }

        v34 = ***v33;
        if (!v35)
        {
          __cxa_bad_cast();
        }

        v41(v40, v35 + 16);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(aBlock.__r_.__value_.__l.__data_);
        }
      }

      v36[5] = a1 + 224;
      v36[6] = QMIServiceMsg::create();
      v37 = 25000;
      v38 = 0;
      v39 = 0;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 0x40000000;
      v36[2] = ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_61;
      v36[3] = &__block_descriptor_tmp_63;
      v36[4] = a1;
      aBlock.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      aBlock.__r_.__value_.__l.__size_ = 0x40000000;
      aBlock.__r_.__value_.__r.__words[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
      v74 = &unk_1E876A4A8;
      v75 = v36;
      v39 = _Block_copy(&aBlock);
      qmi::Client::send();
      if (v39)
      {
        _Block_release(v39);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v52);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4E605C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (*(v55 - 121) < 0)
  {
    operator delete(*(v55 - 144));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a44);
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 2) = 2;
  *(a2 + 4) = 180;
  *(a2 + 6) = *(a1 + 56);
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    LOWORD(v4) = *(a1 + 40);
  }

  *(a2 + 12) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    do
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *v6;
      }

      v8 = *(v7 + v5);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  *(a2 + 7) = 9;
  *(a2 + 8) = 0;
}

void ___ZN12QMISipLogger15logRingingEventENSt3__110shared_ptrI9BambiCallEEhh_block_invoke_2(unsigned __int8 *a1, uint64_t a2)
{
  *a2 = a1[56];
  *(a2 + 4) = 0x100000003;
  if (a1[55] < 0)
  {
    v4 = a1[40];
  }

  else
  {
    v4 = a1[55];
  }

  *(a2 + 12) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    do
    {
      v7 = a1 + 32;
      if (a1[55] < 0)
      {
        v7 = *v6;
      }

      v8 = v7[v5];
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }
}

uint64_t QMISipLogger::logSessionTerminationEvent(QMISipLogger *this, const BambiCallSessionTerminationBaseEvent *a2, uint64_t a3, char a4)
{
  v8 = (*(*this + 64))(this);
  (*(*this + 16))(this, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "QMISipLogger::logSessionTerminationEvent [appCallId=", 52);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (*(this + 256) != 1)
  {
    return 1013;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "qmi.log");
  v78[0] = 0;
  v81 = 0;
  v9 = ims::debug(&__p, v78);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "QMISipLogger::logSessionTerminationEvent [appCallId=", 52);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923340](*(v9 + 8), a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v81 == 1 && v80 < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a2)
    {
      return 1013;
    }
  }

  else if (!a2)
  {
    return 1013;
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    return 1013;
  }

  v11 = *(a2 + 2);
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = std::__shared_weak_count::lock(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!v12)
  {
    return 1013;
  }

  if (v11)
  {
    v76 = 0;
    v77 = 0;
    v39 = v12;
    IPTelephonyManager::getBambiClient(&v76);
    memset(&v75, 0, sizeof(v75));
    if (*(v11 + 551) < 0)
    {
      std::string::__init_copy_ctor_external(&v75, *(v11 + 528), *(v11 + 536));
    }

    else
    {
      v75 = *(v11 + 528);
    }

    std::string::basic_string[abi:ne200100]<0>(&v41, "qmi.log");
    v71[0] = 0;
    v74 = 0;
    v15 = ims::debug(&v41, v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Current call count is ", 22);
    *(v15 + 17) = 0;
    v16 = v76;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v17 = BambiClient::callCountExcludingCall(v76, &__p);
    MEMORY[0x1E6923370](*(v15 + 8), v17);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " SIP callID=", 12);
    *(v15 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&__p, (v11 + 504));
    (*(*v15 + 56))(v15, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " handover ", 10);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), *(this + 73));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v70 < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v74 == 1 && v73 < 0)
    {
      operator delete(v72);
    }

    if (v44 < 0)
    {
      operator delete(v41);
    }

    v18 = *(a2 + 5);
    v19 = *(a2 + 6);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = v19;
    if (v18)
    {
      v20 = *(a2 + 56);
      v21 = *(v18 + 128);
      if (v21 == 408)
      {
        v22 = 23;
      }

      else
      {
        v22 = 22;
      }

      v37 = v22;
      v23 = 2;
    }

    else
    {
      v24 = *(a2 + 8);
      if (v24 > 0xD)
      {
        v23 = 0;
        v21 = 0;
        v37 = 23;
        v20 = 1;
      }

      else
      {
        v21 = 0;
        v20 = dword_1E5170AA4[v24];
        v23 = dword_1E5170ADC[v24];
        v37 = dword_1E5170B14[v24];
      }
    }

    v25 = *(v11 + 384);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = *(v11 + 376);
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    if (*(v27 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v27 + 4432), *(v27 + 4440));
    }

    else
    {
      __p = *(v27 + 4432);
    }

    v28 = *(v16 + 216);
    if (v28)
    {
      v29 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v28 + 280, &__p.__r_.__value_.__l.__data_);
      LOBYTE(v28) = v28 + 288 != v29 && *(v29 + 56) == 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if ((v28 & 1) == 0)
    {
      memset(v66, 0, sizeof(v66));
      qmi::MutableMessageBase::MutableMessageBase(v66);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 1174405120;
      v58 = ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke;
      v59 = &__block_descriptor_tmp_69_0;
      v61 = v20;
      v62 = v23;
      v63 = v21;
      v65 = a3;
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
      }

      else
      {
        v60 = v75;
      }

      v64 = v37;
      v30 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(v66);
      v58(v57, v30);
      v31 = *(v11 + 384);
      if (v31 && (v32 = std::__shared_weak_count::lock(v31)) != 0)
      {
        v33 = *(*(v11 + 376) + 4372);
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        v33 = MEMORY[0x1114];
      }

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 0x40000000;
      v54 = ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke_70;
      v55 = &__block_descriptor_tmp_71;
      v56 = v33;
      v34 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(v66);
      v54(v53, v34);
      if ((*(*this + 312))(this))
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 0x40000000;
        v48 = ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke_2;
        v49 = &__block_descriptor_tmp_72;
        v52 = a4;
        v50 = this;
        v51 = a2;
        v35 = qmi::MutableMessageBase::getTLV<mavims::tlv::ReleasedCallInfo>(v66);
        v48(v47, v35);
      }

      v41 = this + 224;
      v42 = QMIServiceMsg::create();
      v43 = 25000;
      v45 = 0;
      aBlock = 0;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke_3;
      v40[3] = &__block_descriptor_tmp_74;
      v40[4] = this;
      __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      __p.__r_.__value_.__l.__size_ = 0x40000000;
      __p.__r_.__value_.__r.__words[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
      v68 = &unk_1E876A4A8;
      v69 = v40;
      v36 = _Block_copy(&__p);
      aBlock = v36;
      if (v42)
      {
        qmi::Client::send();
        v36 = aBlock;
      }

      if (v36)
      {
        _Block_release(v36);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      qmi::MutableMessageBase::~MutableMessageBase(v66);
    }

    *(this + 38) = 0;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    v12 = v39;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    v13 = 1003;
  }

  else
  {
    v13 = 1013;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  return v13;
}

void sub_1E4E610D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a45);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (*(v45 - 185) < 0)
  {
    operator delete(*(v45 - 208));
  }

  v47 = *(v45 - 168);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 60);
  *a2 = *(a1 + 56);
  *(a2 + 1) = 0;
  *(a2 + 2) = v4;
  *(a2 + 4) = *(a1 + 64);
  *(a2 + 6) = *(a1 + 72);
  v5 = *(a1 + 55);
  if (v5 < 0)
  {
    LOWORD(v5) = *(a1 + 40);
  }

  *(a2 + 12) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    do
    {
      v8 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v8 = *v7;
      }

      v9 = *(v8 + v6);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v9);
      ++v6;
    }

    while (v6 < *(a2 + 12));
  }

  *(a2 + 7) = *(a1 + 68);
  *(a2 + 8) = 0;
}

void ___ZN12QMISipLogger26logSessionTerminationEventEPK36BambiCallSessionTerminationBaseEventhhb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 48);
  v3 = *(a1 + 40);
  std::string::basic_string[abi:ne200100]<0>(v13, "qmi.log");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " callEndCauseFromEvent for call", 31);
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

  v6 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v7 = *(v3 + 32);
    if (v7 <= 0x11)
    {
      v8 = dword_1E5170B4C[v7];
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v8 = 4;
  if (v5)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_14:
  *(a2 + 4) = v8;
  v9[0] = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2 + 8, v9);
}

void sub_1E4E61410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void QMISipLogger::logSessionTerminatedEvent(QMISipLogger *this, const BambiCallSessionTerminatedEvent *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    v4 = *(a2 + 2);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v5)
    {
      if (v4)
      {
        IPTelephonyManager::getBambiClient(&v16);
        v6 = v16;
        v7 = *(v4 + 384);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = *(v4 + 376);
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

        if (*(v9 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *(v9 + 4432), *(v9 + 4440));
        }

        else
        {
          v15 = *(v9 + 4432);
        }

        v10 = BambiClient::callCountForStack(v6, &v15.__r_.__value_.__l.__data_);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (!v10)
        {
          v13 = 0;
          v14 = 0;
          v11 = *(v4 + 384);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            v14 = v12;
            if (v12)
            {
              v13 = *(v4 + 376);
            }
          }

          else
          {
            v12 = 0;
          }

          QMISipLogger::recordProcedure(this, &v13, 6u, 0, 0);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4E615D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void QMISipLogger::logWiFiHandover(QMISipLogger *this, void *a2, int a3)
{
  v6 = *a2;
  if (*a2)
  {
    IPTelephonyManager::getBambiClient(&aBlock);
    locale = aBlock.__locale_;
    v8 = *a2;
    if (*(*a2 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(v45, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v9 = v8 + 4432;
      *v45 = *v9;
      *&v45[16] = *(v9 + 16);
    }

    v10 = BambiClient::callCountForStack(locale, v45);
    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (!v10)
    {
      return;
    }

    v6 = *a2;
  }

  if (a3)
  {
    v11 = a2[1];
    v58[0] = v6;
    v58[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMISipLogger::recordProcedure(this, v58, 6u, 0, 1);
  }

  else
  {
    v11 = a2[1];
    v57[0] = v6;
    v57[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMISipLogger::recordProcedure(this, v57, 6u, 1, 0);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 38) && *(this + 256) == 1)
  {
    ++*(this + 73);
    if ((a3 & 1) == 0)
    {
      ++*(this + 74);
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "qmi.log");
    v53[0] = 0;
    v56 = 0;
    v12 = ims::debug(v45, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "handover total ", 15);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923350](*(v12 + 8), *(this + 73));
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " wifiToCellHandovers ", 21);
    *(v12 + 17) = 0;
    MEMORY[0x1E6923350](*(v12 + 8), *(this + 74));
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v56 == 1 && v55 < 0)
    {
      operator delete(v54);
    }

    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    v52 = 0;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    *v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    *__src = 0u;
    memset(v45, 0, sizeof(v45));
    std::ostringstream::basic_ostringstream[abi:ne200100](v45);
    v13 = *(this + 287);
    if (v13 >= 0)
    {
      v14 = this + 264;
    }

    else
    {
      v14 = *(this + 33);
    }

    if (v13 >= 0)
    {
      v15 = *(this + 287);
    }

    else
    {
      v15 = *(this + 34);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v14, v15);
    v16 = *v45;
    v17 = &v45[*(*v45 - 24)];
    if (*(v17 + 36) == -1)
    {
      std::ios_base::getloc(&v45[*(*v45 - 24)]);
      v18 = std::locale::use_facet(&aBlock, MEMORY[0x1E69E5318]);
      (v18->__vftable[2].~facet_0)(v18, 32);
      std::locale::~locale(&aBlock);
      v16 = *v45;
    }

    *(v17 + 36) = 48;
    *&v45[*(v16 - 24) + 24] = 4;
    *&v45[*(v16 - 24) + 8] = *&v45[*(v16 - 24) + 8] & 0xFFFFFFB5 | 8;
    MEMORY[0x1E6923350](v45, *(this + 74));
    memset(&__dst, 0, sizeof(__dst));
    if ((BYTE8(v50) & 0x10) != 0)
    {
      v20 = v50;
      if (v50 < __src[1])
      {
        *&v50 = __src[1];
        v20 = __src[1];
      }

      v21 = __src[0];
    }

    else
    {
      if ((BYTE8(v50) & 8) == 0)
      {
        v19 = 0;
LABEL_50:
        __dst.__r_.__value_.__s.__data_[v19] = 0;
        v22 = std::string::basic_string[abi:ne200100]<0>(&aBlock, "qmi.log");
        v40[0] = 0;
        v43 = 0;
        v23 = ims::debug(v22, v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "QMISipLogger::logWiFiHandover handover total ", 45);
        *(v23 + 17) = 0;
        MEMORY[0x1E6923350](*(v23 + 8), *(this + 73));
        *(v23 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " notify BB call ID ", 19);
        *(v23 + 17) = 0;
        (*(*v23 + 32))(v23, &__dst);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "_currentAppCallId ", 18);
        *(v23 + 17) = 0;
        MEMORY[0x1E6923340](*(v23 + 8), *(this + 288));
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v43 == 1 && v42 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(aBlock.__locale_);
        }

        memset(v39, 0, sizeof(v39));
        qmi::MutableMessageBase::MutableMessageBase(v39);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 1174405120;
        v34 = ___ZN12QMISipLogger15logWiFiHandoverENSt3__110shared_ptrI8SipStackEEbb_block_invoke;
        v35 = &__block_descriptor_tmp_80;
        v36 = this;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v37 = __dst;
        }

        v38 = a3;
        v24 = qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(v39);
        v34(v33, v24);
        v25 = *a2;
        if (*a2)
        {
          LODWORD(v25) = *(v25 + 4372);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 0x40000000;
        v31[2] = ___ZN12QMISipLogger15logWiFiHandoverENSt3__110shared_ptrI8SipStackEEbb_block_invoke_81;
        v31[3] = &__block_descriptor_tmp_82;
        v32 = v25;
        v26 = qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(v39);
        ___ZN12QMISipLogger15logWiFiHandoverENSt3__110shared_ptrI8SipStackEEbb_block_invoke_81(v31, v26);
        v27[5] = this + 224;
        v27[6] = QMIServiceMsg::create();
        v28 = 25000;
        v29 = 0;
        v30 = 0;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___ZN12QMISipLogger15logWiFiHandoverENSt3__110shared_ptrI8SipStackEEbb_block_invoke_2;
        v27[3] = &__block_descriptor_tmp_84;
        v27[4] = this;
        aBlock.__locale_ = MEMORY[0x1E69E9820];
        v60 = 0x40000000;
        v61 = ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
        v62 = &unk_1E876A4A8;
        v63 = v27;
        v30 = _Block_copy(&aBlock);
        qmi::Client::send();
        if (v30)
        {
          _Block_release(v30);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        qmi::MutableMessageBase::~MutableMessageBase(v39);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        *v45 = *MEMORY[0x1E69E54E8];
        *&v45[*(*v45 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
        *&v45[8] = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48[1]);
        }

        *&v45[8] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v45[16]);
        std::ostream::~ostream();
        MEMORY[0x1E6923510](v51);
        return;
      }

      v21 = *&v45[24];
      v20 = *(&v46 + 1);
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

    *(&__dst.__r_.__value_.__s + 23) = v20 - v21;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_50;
  }
}

void sub_1E4E61EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a36);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a56, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a72);
  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger15logWiFiHandoverENSt3__110shared_ptrI8SipStackEEbb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *a2 = 0;
  *(a2 + 2) = 2;
  *(a2 + 6) = *(v4 + 288);
  v5 = *(a1 + 63);
  if (v5 < 0)
  {
    LOWORD(v5) = *(a1 + 48);
  }

  *(a2 + 12) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 40);
    do
    {
      v8 = a1 + 40;
      if (*(a1 + 63) < 0)
      {
        v8 = *v7;
      }

      v10 = *(v8 + v6);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v10);
      ++v6;
    }

    while (v6 < *(a2 + 12));
  }

  if (*(a1 + 64))
  {
    v9 = 44;
  }

  else
  {
    v9 = 45;
  }

  *(a2 + 7) = v9;
  *(a2 + 8) = 0;
}

void QMISipLogger::logRegistrationRequest(QMISipLogger *a1, void *a2, uint64_t a3)
{
  if ((*(a3 + 112) & 1) == 0)
  {
    v3 = a2[1];
    v4[0] = *a2;
    v4[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMISipLogger::recordProcedure(a1, v4, 4u, 1, 0);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E4E62168(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logRegistrationSuccess(QMISipLogger *a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMISipLogger::recordProcedure(a1, v3, 4u, 0, 0);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4E62200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logRegistrationError(QMISipLogger *a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMISipLogger::recordProcedure(a1, v3, 4u, 0, 0);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4E62298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logRegistrationStateChange(QMISipLogger *this, void *a2, _DWORD *a3)
{
  if (*a3)
  {
    if (*a3 != 1)
    {
      return;
    }

    v4 = a2[1];
    v8[0] = *a2;
    v8[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMISipLogger::recordProcedure(this, v8, 4u, 1, 0);
  }

  else
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v6 = *(v5 + 4372);
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v7 = (*(*this + 64))(this);
    (*(*this + 16))(this, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Clearing Procedure flags for instance ", 38);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), v6);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    v10 = &v9;
    *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 312, v6) + 16) = 0;
    QMISipLogger::reportHighestProcedure(this, v9);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4E62464(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logSmsSendAttemptedEvent(QMISipLogger *a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMISipLogger::recordProcedure(a1, v3, 2u, 1, 0);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4E62500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::logSmsSendCompletedEvent(QMISipLogger *a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMISipLogger::recordProcedure(a1, v3, 2u, 0, 0);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4E62598(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMISipLogger::setATCommandMode(QMISipLogger *this, int a2)
{
  if (*(this + 257) != a2)
  {
    *(this + 257) = a2;
    v3 = std::string::basic_string[abi:ne200100]<0>(&v13, "qmi.log");
    v9[0] = 0;
    v12 = 0;
    v4 = ims::debug(v3, v9);
    v5 = v4;
    if (a2)
    {
      v6 = "Enabling";
    }

    else
    {
      v6 = "Disabling";
    }

    v7 = *(v4 + 8);
    if (a2)
    {
      v8 = 8;
    }

    else
    {
      v8 = 9;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "AT Command Mode", 15);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }
}

void sub_1E4E626C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t QMISipLogger::procedureForInstance(QMISipLogger *this, unsigned int a2)
{
  v9 = a2;
  v2 = *(this + 40);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = (this + 320);
  do
  {
    v4 = v2[7];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[2 * v6];
  }

  while (v2);
  if (v3 != (this + 320) && v3[7] <= a2)
  {
    v10 = &v9;
    return *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 312, a2) + 16);
  }

  else
  {
LABEL_9:
    v10 = &v9;
    v7 = std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 312, a2);
    result = 0;
    *(v7 + 16) = 0;
  }

  return result;
}

void QMISipLogger::reportHighestProcedure(QMISipLogger *this, uint64_t a2)
{
  v4 = __clz(QMISipLogger::procedureForInstance(this, a2) | 1) ^ 0x1F;
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Highest procedure is ", 21);
  *(v5 + 17) = 0;
  v6 = nas::asString(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  (*(*v5 + 32))(v5, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " for instance ", 14);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (*(this + 256))
  {
    v20 = 0u;
    v21 = 0u;
    qmi::MutableMessageBase::MutableMessageBase(&v20);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZN12QMISipLogger22reportHighestProcedureEj_block_invoke;
    v18[3] = &__block_descriptor_tmp_97;
    v19 = v4;
    v7 = *(&v20 + 1);
    if (*(&v20 + 1) != v21)
    {
      while (*(*v7 + 8) != 1)
      {
        if (++v7 == v21)
        {
          goto LABEL_11;
        }
      }
    }

    if (v7 == v21)
    {
LABEL_11:
      operator new();
    }

    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    ___ZN12QMISipLogger22reportHighestProcedureEj_block_invoke(v18, v9 + 3);
    v16 = 0;
    v17 = 0;
    IPTelephonyManager::getBambiClient(&__p);
    v10 = *(__p + 38);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v10)
    {
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v23 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v16 = v14;
        v17 = v12;
        p_p = &__p;
      }

      else
      {
        p_p = &v16;
      }

      *p_p = 0;
      p_p[1] = 0;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v16 && (v16[128] & 1) != 0)
      {
        qmi::ClientRouter::get();
        operator new();
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v20);
  }
}

void sub_1E4E62CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a19);
  _Unwind_Resume(a1);
}

void ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 2) = 0;
  *(a2 + 4) = 180;
  *(a2 + 6) = *(a1 + 56);
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    LOWORD(v4) = *(a1 + 40);
  }

  *(a2 + 12) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    do
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *v6;
      }

      v8 = *(v7 + v5);
      std::vector<unsigned char>::push_back[abi:ne200100](a2 + 16, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  *(a2 + 7) = 9;
  *(a2 + 8) = 0;
}

uint64_t ___ZN12QMISipLogger29handleResponseForIncomingCallERKN6mavims17SendSipPacketInfo8ResponseENSt3__110shared_ptrI9BambiCallEEPKch_block_invoke_2_109(uint64_t result, uint64_t a2)
{
  *a2 = *(*(*(result + 32) + 8) + 24);
  *(a2 + 4) = 1;
  return result;
}

void qmi::ClientRouter::SendProxy::~SendProxy(qmi::ClientRouter::SendProxy *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (v1[1])
    {
      v2 = *v1;
      qmi::Client::send();
    }

    v3 = v1[4];
    if (v3)
    {
      _Block_release(v3);
    }

    MEMORY[0x1E69235B0](v1, 0x10F0C401BA14CC5);
  }
}

{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    if (v1[1])
    {
      v2 = *v1;
      qmi::Client::send();
    }

    v3 = v1[4];
    if (v3)
    {
      _Block_release(v3);
    }

    MEMORY[0x1E69235B0](v1, 0x10F0C401BA14CC5);
  }
}

char *qmi::MutableMessageBase::getTLV<mavims::tlv::SipPacketInfo>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 1)
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

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::SipPacketInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4AE0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<mavims::tlv::SipPacketInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4AE0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<mavims::tlv::SipPacketInfo>::write(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = mavims::tlv::writeField(v5, a1 + 16);
  *a2 = result;
  *v4 = v3;
  *(v4 + 1) = result - v5;
  return result;
}

char *qmi::MutableMessageBase::getTLV<mavims::tlv::PairedSub>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 2)
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

uint64_t qmi::MutableMessageBase::TlvWrapper<mavims::tlv::PairedSub>::write(uint64_t result, uint64_t *a2)
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

void ___ZNO3qmi6Client9SendProxy8callbackIRKN6mavims17SendSipPacketInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4E634E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::IncomingCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4B80;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<mavims::tlv::IncomingCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4B80;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::IncomingCallInfo>::write(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = tlv::writeV<mavims::tlv::IncomingCallInfo>(a2, a1 + 16);
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<mavims::tlv::ConnectedCallInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 4) = *(result + 16);
  *(v3 + 5) = *(result + 20);
  *(v3 + 6) = *(result + 24);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::OutgoingCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4C20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<mavims::tlv::OutgoingCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4C20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::OutgoingCallInfo>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 += 3;
  *(v5 + 3) = *(a1 + 16);
  *(v5 + 4) = *(a1 + 20);
  *(v5 + 5) = *(a1 + 24);
  *(v5 + 6) = *(a1 + 28);
  result = memcpy((v5 + 7), *(a1 + 32), *(a1 + 40) - *(a1 + 32));
  v8 = v5 + 7 + *(a1 + 40) - *(a1 + 32);
  *a2 = v8;
  *v5 = v4;
  *(v5 + 1) = v8 - v6;
  return result;
}

char *qmi::MutableMessageBase::getTLV<mavims::tlv::ReleasedCallInfo>(uint64_t a1)
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

  return v4 + 16;
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::ReleasedCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void qmi::MutableMessageBase::TlvWrapper<mavims::tlv::ReleasedCallInfo>::~TlvWrapper(void *a1)
{
  *a1 = &unk_1F5ED4C70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *qmi::MutableMessageBase::TlvWrapper<mavims::tlv::ReleasedCallInfo>::write(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a2 + 3;
  *a2 += 3;
  *(v5 + 3) = *(a1 + 16);
  *(v5 + 4) = *(a1 + 20);
  result = memcpy((v5 + 8), *(a1 + 24), *(a1 + 32) - *(a1 + 24));
  v8 = v5 + 8 + *(a1 + 32) - *(a1 + 24);
  *a2 = v8;
  *v5 = v4;
  *(v5 + 1) = v8 - v6;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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
      v4 = *(v2 + 28);
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

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::ProcType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t __copy_helper_block_e8_32c73_ZTSNSt3__110shared_ptrIZN12QMISipLogger22reportHighestProcedureEjE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c73_ZTSNSt3__110shared_ptrIZN12QMISipLogger22reportHighestProcedureEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMISipLogger::reportHighestProcedure(unsigned int)::$_0,std::allocator<QMISipLogger::reportHighestProcedure(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED4D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas14SetImsProcType8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_1E4E63FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<mavims::tlv::RingingInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 4) = *(result + 16);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

void IMSMetricsManager::IMSMetricsManager(IMSMetricsManager *this)
{
  std::string::basic_string[abi:ne200100]<0>(object, "ims.metrics.mgr");
  v3[0] = 0;
  v6 = 0;
  ImsLogContainer::ImsLogContainer(this, object, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(object[0]);
  }

  ims::getQueue(object);
  *(this + 18) = 0;
  *(this + 19) = 0;
  v2 = object[0];
  *(this + 20) = object[0];
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 21) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 176), "com.apple.ipTelephony", "ims.metrics.mgr");
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_1F5ED4DD8;
  *(this + 17) = &unk_1F5ED4E38;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = this + 216;
  *(this + 28) = this + 216;
  *(this + 29) = 0;
  *(this + 30) = this + 240;
  *(this + 31) = this + 240;
  *(this + 32) = 0;
  operator new();
}

void sub_1E4E6492C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(v32);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(v31);
  v35 = *(v29 + 208);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v29 + 192);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  MEMORY[0x1E69225A0](v29 + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v30);
  ImsLogContainer::~ImsLogContainer(v29);
  _Unwind_Resume(a1);
}

void IMSMetricsManager::~IMSMetricsManager(IMSMetricsManager *this)
{
  *this = &unk_1F5ED4DD8;
  *(this + 17) = &unk_1F5ED4E38;
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 30);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 27);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
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
  IMSMetricsManager::~IMSMetricsManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSMetricsManager::~IMSMetricsManager(IMSMetricsManager *this)
{
  IMSMetricsManager::~IMSMetricsManager((this - 136));
}

{
  IMSMetricsManager::~IMSMetricsManager((this - 136));

  JUMPOUT(0x1E69235B0);
}

void sub_1E4E64CF8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void IMSMetricsManager::logSipRequest(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(*a2 + 2817) == 1)
  {
    v9 = *(a1 + 184);
    v10 = a2[1];
    v23 = *a2;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 112))(v9, &v23, &v21, a4, a5);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    v12 = a1 + 240;
    v13 = *(a1 + 248);
    if (v13 != a1 + 240)
    {
      do
      {
        v14 = *(v13 + 16);
        v15 = a2[1];
        v19 = *a2;
        v20 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = a3[1];
        v17 = *a3;
        v18 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v14)(v14, &v19, &v17, a4, a5);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v13 = *(v13 + 8);
      }

      while (v13 != v12);
    }
  }
}

void sub_1E4E64E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSipResponse(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(*a2 + 2817) == 1)
  {
    v9 = *(a1 + 184);
    v10 = a2[1];
    v23 = *a2;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 120))(v9, &v23, &v21, a4, a5);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    v12 = a1 + 240;
    v13 = *(a1 + 248);
    if (v13 != a1 + 240)
    {
      do
      {
        v14 = *(v13 + 16);
        v15 = a2[1];
        v19 = *a2;
        v20 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = a3[1];
        v17 = *a3;
        v18 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v14 + 8))(v14, &v19, &v17, a4, a5);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v13 = *(v13 + 8);
      }

      while (v13 != v12);
    }
  }
}

void sub_1E4E65040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSipRequestFromNonProxyDropped(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 184);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 128))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E650F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logEarlyMTSessionRequestedEvent(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 240;
  v3 = *(a1 + 248);
  if (v3 != a1 + 240)
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = a2[1];
      v7 = *a2;
      v8 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 32))(v5, &v7);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void sub_1E4E651A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSessionRequestedEvent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 40))(v9, &v11, a3, a4);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E65274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRingingEvent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 64))(v9, &v11, a3, a4);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E65340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSessionProgress(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
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

      (*(*v9 + 88))(v9, &v14, &v12, a4);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E6542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void IMSMetricsManager::logSessionConfirmedEvent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 48))(v9, &v11, a3, a4);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E65504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSMetricsManager::logSessionTerminationEvent(IMSMetricsManager *this, const BambiCallSessionTerminationBaseEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this + 240;
  v6 = *(this + 31);
  if (v6 == (this + 240))
  {
    return 0;
  }

  v11 = 0;
  do
  {
    v12 = (*(**(v6 + 16) + 72))(*(v6 + 16), a2, a3, a4, a5);
    v13 = *(v6 + 16);
    if (v13)
    {
      v14 = **v13;
      {
        v15 = *(v6 + 24);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v11 = v12;
      }
    }

    v6 = *(v6 + 8);
  }

  while (v6 != v5);
  return v11;
}

void IMSMetricsManager::logIncomingPrack(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
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

      (*(*v9 + 16))(v9, &v14, &v12, a4);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E65714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void IMSMetricsManager::logWiFiHandover(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*a2 + 2817) == 1)
  {
    v7 = *(a1 + 184);
    v8 = a2[1];
    v15 = *a2;
    v16 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 296))(v7, &v15, a3, a4);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v9 = a1 + 240;
    v10 = *(a1 + 248);
    if (v10 != a1 + 240)
    {
      do
      {
        v11 = *(v10 + 16);
        v12 = a2[1];
        v13 = *a2;
        v14 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v11 + 176))(v11, &v13, a3, a4);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v9);
    }
  }
}

void sub_1E4E65860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logPrackResponse(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1 + 240;
  v5 = *(a1 + 248);
  if (v5 != a1 + 240)
  {
    do
    {
      v9 = *(v5 + 16);
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

      (*(*v9 + 24))(v9, &v14, &v12, a4);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }
}

void sub_1E4E6595C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void IMSMetricsManager::logRegistrationSuccess(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*a2 + 2817) == 1)
  {
    v5 = *(a1 + 184);
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 304))(v5, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v7 = a1 + 240;
    v8 = *(a1 + 248);
    if (v8 != a1 + 240)
    {
      do
      {
        v9 = *(v8 + 16);
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 192))(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v8 = *(v8 + 8);
      }

      while (v8 != v7);
    }
  }
}

void sub_1E4E65A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRegistrationError(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*a2 + 2817) == 1)
  {
    v5 = *(a1 + 184);
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 312))(v5, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v7 = a1 + 240;
    v8 = *(a1 + 248);
    if (v8 != a1 + 240)
    {
      do
      {
        v9 = *(v8 + 16);
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 200))(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v8 = *(v8 + 8);
      }

      while (v8 != v7);
    }
  }
}

void sub_1E4E65BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRegistrationRequest(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*a2 + 2817) == 1)
  {
    v5 = *(a1 + 184);
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 320))(v5, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v7 = a1 + 240;
    v8 = *(a1 + 248);
    if (v8 != a1 + 240)
    {
      do
      {
        v9 = *(v8 + 16);
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 184))(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v8 = *(v8 + 8);
      }

      while (v8 != v7);
    }
  }
}

void sub_1E4E65D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRegistrationTerminated(uint64_t a1, void *a2)
{
  if (*(*a2 + 2817) == 1)
  {
    v3 = *(a1 + 184);
    v4 = a2[1];
    v11 = *a2;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 328))(v3, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v5 = a1 + 240;
    v6 = *(a1 + 248);
    if (v6 != a1 + 240)
    {
      do
      {
        v7 = *(v6 + 16);
        v8 = a2[1];
        v9 = *a2;
        v10 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v7 + 216))(v7, &v9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v6 = *(v6 + 8);
      }

      while (v6 != v5);
    }
  }
}

void sub_1E4E65E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRegistrationTerminated(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*a2 + 2817) == 1)
  {
    v5 = *(a1 + 184);
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 336))(v5, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v7 = a1 + 240;
    v8 = *(a1 + 248);
    if (v8 != a1 + 240)
    {
      do
      {
        v9 = *(v8 + 16);
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 208))(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v8 = *(v8 + 8);
      }

      while (v8 != v7);
    }
  }
}

void sub_1E4E65F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logRegistrationStateChange(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(*a2 + 2817) == 1)
  {
    v5 = *(a1 + 184);
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 344))(v5, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v7 = a1 + 240;
    v8 = *(a1 + 248);
    if (v8 != a1 + 240)
    {
      do
      {
        v9 = *(v8 + 16);
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 224))(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v8 = *(v8 + 8);
      }

      while (v8 != v7);
    }
  }
}

void sub_1E4E660DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logDeRegistration(uint64_t a1, void *a2)
{
  if (*(*a2 + 2817) == 1)
  {
    v3 = *(a1 + 184);
    v4 = a2[1];
    v11 = *a2;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 352))(v3, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v5 = a1 + 240;
    v6 = *(a1 + 248);
    if (v6 != a1 + 240)
    {
      do
      {
        v7 = *(v6 + 16);
        v8 = a2[1];
        v9 = *a2;
        v10 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v7 + 232))(v7, &v9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v6 = *(v6 + 8);
      }

      while (v6 != v5);
    }
  }
}

void sub_1E4E6620C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSmsSendAttemptedEvent(void *a1, void *a2)
{
  if (*(*a2 + 2817) == 1)
  {
    v4 = a1[23];
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 360))(v4, &v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else if (TelephonyRadiosGetRadioVendor() == 3 && ims::AccessNetwork::isWifi((*a2 + 3432)))
  {
    v6 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "On WiFi: skipped SMSOIP SESSION_ATTEMPTED event to BB", 53);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }

  else
  {
    v7 = a1 + 30;
    for (i = a1[31]; i != v7; i = i[1])
    {
      v9 = i[2];
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 240))(v9, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_1E4E6640C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSmsSendCompletedEvent(void *a1, void *a2)
{
  if (*(*a2 + 2817) == 1)
  {
    v4 = a1[23];
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 368))(v4, &v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else if (TelephonyRadiosGetRadioVendor() == 3 && ims::AccessNetwork::isWifi((*a2 + 3432)))
  {
    v6 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "On WiFi: skipped SMSOIP SESSION_FINISHED event to BB", 52);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }

  else
  {
    v7 = a1 + 30;
    for (i = a1[31]; i != v7; i = i[1])
    {
      v9 = i[2];
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 248))(v9, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_1E4E6660C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::logSignalingReduction(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 184);
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  AnalyticsLogger::logSignalingReduction(v2, v4);
}

void sub_1E4E666A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void IMSMetricsManager::addCallEndInfo(uint64_t a1, void **a2)
{
  v2 = *(a1 + 184);
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

  AnalyticsLogger::addCallEndInfo(v2, &object);
  xpc_release(object);
}

void IMSMetricsManager::logLazuliRefer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a1 + 184);
  v12 = a2[1];
  v15 = *a2;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a3, *(a3 + 8));
  }

  else
  {
    v14 = *a3;
  }

  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a7, *(a7 + 8));
  }

  else
  {
    __p = *a7;
  }

  (*(*v11 + 176))(v11, &v15, &v14, a4, a5, a6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1E4E66850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void *IMSMetricsManager::logPrefix(IMSMetricsManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ims_metrics: ", 13);
  *(a2 + 17) = 0;
  return result;
}

void std::__shared_ptr_emplace<powerlog::PowerLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED4F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<AnalyticsLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED4FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IBISipLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED4FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<INTSipLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED5040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMISipLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED5090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSMetricsManager::create_default_global(void)::ManagerWrapper,std::allocator<IMSMetricsManager::create_default_global(void)::ManagerWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED50E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void IMSMetricsManager::create_default_global(void)::ManagerWrapper::~ManagerWrapper(IMSMetricsManager *a1)
{
  IMSMetricsManager::~IMSMetricsManager(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSMetricsManager::create_default_global(void)::ManagerWrapper::~ManagerWrapper(uint64_t a1)
{
  IMSMetricsManager::~IMSMetricsManager((a1 - 136));
}

{
  IMSMetricsManager::~IMSMetricsManager((a1 - 136));

  JUMPOUT(0x1E69235B0);
}

void sub_1E4E674B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E676FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ImsLogContainer::~ImsLogContainer(v25);
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v27);
  _Unwind_Resume(a1);
}

void ims::analytics::RegistrationResultEvent::createRegistrationTerminated()
{
  _ZNSt3__111make_sharedB8ne200100IN12_GLOBAL__N_127RegistrationResultEventImplEJELi0EEENS_10shared_ptrIT_EEDpOT0_();
}

{
  _ZNSt3__111make_sharedB8ne200100IN12_GLOBAL__N_127RegistrationResultEventImplEJELi0EEENS_10shared_ptrIT_EEDpOT0_();
}

void sub_1E4E678CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::RegistrationResultEventImpl::processPcscfPinningDroppedRequestsCount(_anonymous_namespace_::RegistrationResultEventImpl *this, int64_t value)
{
  v4 = xpc_int64_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = this + 160;
  v3[1] = "pcscf_pinning_message_count";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_1E4E67F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::ostringstream::~ostringstream(va);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E68A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::ostringstream::~ostringstream(&a35);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::RegistrationResultEventImpl::getTransientRegistrationType(std::string *this, const SipRegistrationMetrics *a2)
{
  v2 = (a2 + 144);
  v3 = *(a2 + 167);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 19);
  }

  if (v3 <= 8)
  {
    if (v3 == 2)
    {
      v26 = *v2;
      if (v4 >= 0)
      {
        v26 = a2 + 144;
      }

      if (*v26 != SipRegistrationMetrics::kTransientOperationMT)
      {
        goto LABEL_61;
      }

      v11 = "ATM_REG_TRANSIENT_MT";
      goto LABEL_23;
    }

    if (v3 == 6)
    {
      v12 = *v2;
      if (v4 >= 0)
      {
        v12 = a2 + 144;
      }

      if (*v12 == *"MOSpam" && *(v12 + 2) == *"am")
      {
        v11 = "ATM_REG_TRANSIENT_MO_SPAM";
      }

      else
      {
        v14 = *v12;
        v15 = *(v12 + 2);
        if (v14 != *"MOImdn" || v15 != *"dn")
        {
          goto LABEL_61;
        }

        v11 = "ATM_REG_TRANSIENT_MO_IMDN";
      }

      goto LABEL_23;
    }
  }

  else
  {
    switch(v3)
    {
      case 13:
        v17 = *v2;
        if (v4 >= 0)
        {
          v17 = a2 + 144;
        }

        if (*v17 == *"MOGroupModify" && *(v17 + 5) == *"upModify")
        {
          v11 = "ATM_REG_TRANSIENT_MO_GROUP_MODIFY";
        }

        else
        {
          v19 = *v17;
          v20 = *(v17 + 5);
          if (v19 != *"MOGroupCreate" || v20 != *"upCreate")
          {
            break;
          }

          v11 = "ATM_REG_TRANSIENT_MO_GROUP_CREATE";
        }

        goto LABEL_23;
      case 12:
        v22 = *v2;
        if (v4 >= 0)
        {
          v22 = a2 + 144;
        }

        v23 = *v22;
        v24 = *(v22 + 2);
        if (v23 != *"MOGroupLeave" || v24 != *"eave")
        {
          break;
        }

        v11 = "ATM_REG_TRANSIENT_MO_LEAVE_GROUP";
        goto LABEL_23;
      case 9:
        v5 = *v2;
        if (v4 >= 0)
        {
          v5 = a2 + 144;
        }

        if (*v5 == *"PushSetup" && *(v5 + 8) == SipRegistrationMetrics::kTransientOperationPushSetup[8])
        {
          v11 = "ATM_REG_PUSH_SETUP";
        }

        else if (*v5 == *"MOOptions" && *(v5 + 8) == SipRegistrationMetrics::kTransientOperationOptions[8])
        {
          v11 = "ATM_REG_TRANSIENT_MO_OPTIONS";
        }

        else
        {
          v8 = *v5;
          v9 = *(v5 + 8);
          if (v8 != *"MOMessage" || v9 != SipRegistrationMetrics::kTransientOperationMessage[8])
          {
            break;
          }

          v11 = "ATM_REG_TRANSIENT_MO_MESSAGE";
        }

LABEL_23:
        std::string::basic_string[abi:ne200100]<0>(this, v11);
        return;
    }
  }

LABEL_61:
  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(this, *v2, *(a2 + 19));
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *v2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 20);
  }
}