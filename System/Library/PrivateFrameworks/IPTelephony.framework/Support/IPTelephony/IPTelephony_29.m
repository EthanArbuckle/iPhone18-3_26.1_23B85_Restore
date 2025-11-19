void sub_1E4E44FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  ImsResult::~ImsResult(&a15);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ImsResult::~ImsResult(&a45);
  _Unwind_Resume(a1);
}

void BambiCall::checkRemoteSdpForValidAddress(uint64_t a1, uint64_t *a2)
{
  *(a1 + 496) = 0;
  v4 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "0.0.0.0");
  v5 = SDPModel::validateRemoteAddress(v4, __p);
  v6 = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_12:
      *(a1 + 496) = 1;
      return;
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  v7 = *a2;
  v9 = *(*a2 + 448);
  v8 = *(v7 + 456);
  while (v9 != v8)
  {
    if (*(v9 + 12) == 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "0.0.0.0");
      v10 = SDPMedia::validateRemoteAddress(v9, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      if (!v10)
      {
        return;
      }

      goto LABEL_12;
    }

    v9 += 200;
  }
}

void BambiCall::initializeMediaForMTSession(BambiCall *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 24);
  if (v6 && SDPSession::hasStream(v6))
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    return;
  }

  v7 = *a2;
  if (*a2)
  {
    for (i = *(v7 + 448); i != *(v7 + 456); i += 200)
    {
      if (*(i + 12) == 4)
      {
        if (*(i + 16))
        {
          if ((*(this + 785) & 1) == 0)
          {
            BambiCall::textSessionDetected(this);
            v7 = *a2;
          }

          *(this + 392) = 256;
        }

        break;
      }
    }
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v9 = a2[1];
  v15[0] = v7;
  v15[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::initializeMediaForSession(&v16, this, v15);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((*(**(&v16 + 1) + 24))(*(&v16 + 1), v17))
  {
    v11 = *(this + 1);
    v10 = this + 8;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "unable to create media session for incoming call: ", 50);
    *(v12 + 17) = 0;
    (*(v16 + 16))(&v16, v12);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    v13 = &SipResultDomain::_domain;
    if (*(&v16 + 1) == &SipResultDomain::_domain)
    {
      ImsResult::ImsResult(a3, &v16);
      goto LABEL_22;
    }

    v14 = 500;
  }

  else
  {
    v14 = 0;
    v13 = &_bambiDomain;
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
LABEL_22:
  ImsResult::~ImsResult(&v16);
}

void sub_1E4E454C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::handleRttInSDP(BambiCall *this, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  while (a2 != a3)
  {
    if (*(a2 + 12) == 4)
    {
      goto LABEL_6;
    }

    a2 += 200;
  }

  a2 = 0;
LABEL_6:
  if (*(this + 785))
  {
    v4 = *(this + 24);
    if (*(v4 + 1328) != 1 || ((*(*(v4 + 1032) + 24))(v4 + 1032, a2) & 1) == 0)
    {
      v5 = *(this + 48);
      if (v5)
      {
        v5 = std::__shared_weak_count::lock(v5);
        v6 = v5;
        if (v5)
        {
          v5 = *(this + 47);
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = SipStack::prefs(v5);
      v9 = ImsPrefs::RTTNegotiationTimerSeconds(v8);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v9)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, this + 19);
        v10 = v15;
        if (v15)
        {
          p_shared_weak_owners = &v15->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v16 = 0;
        operator new();
      }

      v12 = *MEMORY[0x1E69E9840];

      BambiCall::textSessionDeactivated(this);
      return;
    }

LABEL_28:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!a2 || (*(this + 784) & 1) != 0 || !*(a2 + 16))
  {
    goto LABEL_28;
  }

  v7 = *MEMORY[0x1E69E9840];

  BambiCall::textSessionDetected(this);
}

void sub_1E4E45768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::handleSdpAnswerInFork(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 192);
  v9 = *(a1 + 400);
  v109[0] = *(a1 + 392);
  v109[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SDPSession::streamsValidForManager(v8, v109);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((v10 & 1) == 0)
  {
    v85 = *(a1 + 8);
    v84 = a1 + 8;
    v86 = (*(v85 + 56))(v84);
    (*(*v84 + 16))(v84, v86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v86 + 8), "recieved SDP, but one or more media streams are invalid", 55);
    *(v86 + 17) = 0;
    (*(*v86 + 64))(v86, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v86 + 17) = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    v87 = 1073741826;
LABEL_156:
    *(a4 + 16) = v87;
    return;
  }

  if (((*(**a3 + 24))() & 1) == 0)
  {
    v89 = *(a1 + 8);
    v88 = a1 + 8;
    v90 = (*(v89 + 56))(v88);
    (*(*v88 + 16))(v88, v90);
    v91 = *(v90 + 8);
    v92 = "received invalid SDP answer:";
    v93 = 28;
LABEL_155:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
    *(v90 + 17) = 0;
    (*(*v90 + 64))(v90, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v90 + 17) = 0;
    v95 = (*(*v88 + 56))(v88);
    (*(*v88 + 16))(v88, v95);
    (*(**a3 + 16))(*a3, v95);
    (*(*v95 + 64))(v95, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v95[17] = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &SipResultDomain::_domain;
    v87 = 488;
    goto LABEL_156;
  }

  v11 = *(a1 + 192);
  v12 = a2[1];
  v107 = *a2;
  v108 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  v105 = *a3;
  v106 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = SDPSession::handleOfferAnswer(v11, &v107, &v105, *(*a2 + 176));
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  if (v108)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v108);
  }

  if (!v14)
  {
    v94 = *(a1 + 8);
    v88 = a1 + 8;
    v90 = (*(v94 + 56))(v88);
    (*(*v88 + 16))(v88, v90);
    v91 = *(v90 + 8);
    v92 = "received rejection answer: ";
    v93 = 27;
    goto LABEL_155;
  }

  v15 = v14 == 2;
  v16 = a3[1];
  v104[0] = *a3;
  v104[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::checkRemoteSdpForValidAddress(a1, v104);
  v101 = a2;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 192);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  v18 = *(v17 + 1904);
  v102 = (v17 + 1912);
  if (v18 != (v17 + 1912))
  {
    v98 = a1 + 8;
    v99 = a3;
    while (1)
    {
      v19 = v18[5];
      if (!v19)
      {
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v110 = &unk_1F5EBDEF8;
        v111 = &_bambiDomain;
        v112 = 1073741825;
        goto LABEL_132;
      }

      v20 = *a3;
      v21 = *(v19 + 16);
      v22 = *(a1 + 384);
      if (v22)
      {
        v22 = std::__shared_weak_count::lock(v22);
        v23 = v22;
        if (v22)
        {
          v22 = *(a1 + 376);
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = SipStack::prefs(v22);
      v25 = ImsPrefs::UseRestrictiveDirectionWhenCreatingAnswer(v24);
      v26 = SDPModel::preferredDirection(v20, v21, v25);
      v103 = v15;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v27 = *(v19 + 16);
      v29 = *v101;
      v28 = v101[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = a3[1];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 493) != 1)
      {
LABEL_76:
        v55 = 0;
        goto LABEL_111;
      }

      v100 = v28;
      v31 = *(a1 + 384);
      if (v31)
      {
        v31 = std::__shared_weak_count::lock(v31);
        v32 = v31;
        if (v31)
        {
          v31 = *(a1 + 376);
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = SipStack::prefs(v31);
      v34 = ImsPrefs::UseRestrictiveDirectionWhenCreatingAnswer(v33);
      v35 = SDPModel::preferredDirection(v29, v27, v34);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      v36 = *(a1 + 480);
      if (v35 < 3)
      {
        v28 = v100;
        if (v36)
        {
          goto LABEL_76;
        }

        *(a1 + 480) = 1;
        *(a1 + 1842) = 0;
        v56 = (*(*(a1 + 8) + 64))();
        (*(*v98 + 16))(v98, v56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "resumed call ", 13);
        *(v56 + 17) = 0;
        ObfuscatedString::ObfuscatedString(&block, (a1 + 504));
        (*(*v56 + 56))(v56, &block);
        (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v56 + 17) = 0;
        if (SBYTE7(v131) < 0)
        {
          operator delete(v130);
        }

        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
        }

        v124 = MEMORY[0x1E69E9820];
        v125 = 0x40000000;
        v126 = ___ZN9BambiCall20localResumeCompletedEv_block_invoke;
        v127 = &__block_descriptor_tmp_27;
        v128 = a1;
        v134 = 0uLL;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v134, (a1 + 152));
        v57 = *(a1 + 168);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
        *&v130 = &unk_1F5ED3A80;
        v131 = v134;
        if (*(&v134 + 1))
        {
          atomic_fetch_add_explicit((*(&v134 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *(&v130 + 1) = &v124;
        dispatch_async(v57, &block);
        if (*(&v131 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v131 + 1));
        }

        if (*(&v134 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v134 + 1));
        }

        v58 = *(a1 + 192);
        v118 = &_bambiDomain;
        v119 = 0;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v117 = &unk_1F5EBDEF8;
        v59 = *(v58 + 1904);
        v60 = (v58 + 1912);
        if (v59 != (v58 + 1912))
        {
          while (1)
          {
            v61 = v59[5];
            BambiCall::localSdp(a1, &v134);
            v62 = *(v61 + 64);
            v63 = *(v134 + 448);
            if (*(v63 + 12) != v62)
            {
              v64 = v63 + 200;
              do
              {
                v65 = *(v64 + 12);
                v64 += 200;
              }

              while (v65 != v62);
              v63 = v64 - 200;
            }

              ;
            }

            v67 = *(i + 56) - 1;
            if (v67 > 2)
            {
              v68 = 0;
            }

            else
            {
              v68 = dword_1E517019C[v67];
            }

            *(v61 + 68) = v68;
            if (*(&v134 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v134 + 1));
            }

            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            block.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            block.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(block.__r_.__value_.__r.__words[2]) = 0;
            ImsResult::operator=(&v117, &block);
            ImsResult::~ImsResult(&block);
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            block.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            block.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(block.__r_.__value_.__r.__words[2]) = 0;
            if (v118 != &_bambiDomain)
            {
              goto LABEL_109;
            }

            v69 = v119;
            ImsResult::~ImsResult(v50);
            if (!v69)
            {
              v70 = v59[1];
              if (v70)
              {
                do
                {
                  v71 = v70;
                  v70 = *v70;
                }

                while (v70);
              }

              else
              {
                do
                {
                  v71 = v59[2];
                  v54 = *v71 == v59;
                  v59 = v71;
                }

                while (!v54);
              }

              v59 = v71;
              if (v71 != v60)
              {
                continue;
              }
            }

            break;
          }
        }
      }

      else
      {
        v28 = v100;
        if (v36 != 2)
        {
          goto LABEL_76;
        }

        *(a1 + 480) = 3;
        v37 = (*(*(a1 + 8) + 64))();
        (*(*v98 + 16))(v98, v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "held call ", 10);
        *(v37 + 17) = 0;
        ObfuscatedString::ObfuscatedString(&block, (a1 + 504));
        (*(*v37 + 56))(v37, &block);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), " to ", 4);
        *(v37 + 17) = 0;
        (*(*(a1 + 1080) + 40))(a1 + 1080, v37);
        (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v37 + 17) = 0;
        if (SBYTE7(v131) < 0)
        {
          operator delete(v130);
        }

        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
        }

        v124 = MEMORY[0x1E69E9820];
        v125 = 0x40000000;
        v126 = ___ZN9BambiCall18localHoldCompletedEv_block_invoke;
        v127 = &__block_descriptor_tmp_7;
        v128 = a1;
        v134 = 0uLL;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v134, (a1 + 152));
        v38 = *(a1 + 168);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
        *&v130 = &unk_1F5ED3A80;
        v131 = v134;
        if (*(&v134 + 1))
        {
          atomic_fetch_add_explicit((*(&v134 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *(&v130 + 1) = &v124;
        dispatch_async(v38, &block);
        if (*(&v131 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v131 + 1));
        }

        if (*(&v134 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v134 + 1));
        }

        v39 = *(a1 + 192);
        v118 = &_bambiDomain;
        v119 = 0;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v117 = &unk_1F5EBDEF8;
        v40 = *(v39 + 1904);
        v41 = (v39 + 1912);
        if (v40 != (v39 + 1912))
        {
          while (1)
          {
            v42 = v40[5];
            BambiCall::localSdp(a1, &v134);
            v43 = *(v42 + 64);
            v44 = *(v134 + 448);
            if (*(v44 + 12) != v43)
            {
              v45 = v44 + 200;
              do
              {
                v46 = *(v45 + 12);
                v45 += 200;
              }

              while (v46 != v43);
              v44 = v45 - 200;
            }

              ;
            }

            v48 = *(j + 56) - 1;
            if (v48 > 2)
            {
              v49 = 0;
            }

            else
            {
              v49 = dword_1E517019C[v48];
            }

            *(v42 + 68) = v49;
            if (*(&v134 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v134 + 1));
            }

            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            block.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            block.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(block.__r_.__value_.__r.__words[2]) = 0;
            ImsResult::operator=(&v117, &block);
            ImsResult::~ImsResult(&block);
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            block.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            block.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(block.__r_.__value_.__r.__words[2]) = 0;
            if (v118 != &_bambiDomain)
            {
              break;
            }

            v51 = v119;
            ImsResult::~ImsResult(v50);
            if (!v51)
            {
              v52 = v40[1];
              if (v52)
              {
                do
                {
                  v53 = v52;
                  v52 = *v52;
                }

                while (v52);
              }

              else
              {
                do
                {
                  v53 = v40[2];
                  v54 = *v53 == v40;
                  v40 = v53;
                }

                while (!v54);
              }

              v40 = v53;
              if (v53 != v41)
              {
                continue;
              }
            }

            goto LABEL_110;
          }

LABEL_109:
          ImsResult::~ImsResult(v50);
        }
      }

LABEL_110:
      ImsResult::~ImsResult(&v117);
      v55 = 1;
      v28 = v100;
LABEL_111:
      BambiCall::checkForPause(a1, v19, v26, v55);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (*(a1 + 496))
      {
        v72 = v26;
      }

      else
      {
        v72 = 4;
      }

      v73 = BambiCall::setMediaDirection(a1, v19, v72, 0);
      v74 = *(a1 + 384);
      if (v74)
      {
        v75 = std::__shared_weak_count::lock(v74);
        if (v75)
        {
          v76 = *(a1 + 392);
          if (*(v76 + 308) == 2)
          {
            v77 = *(a1 + 376);
            if (v77)
            {
              if (*(v77 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&block, *(v77 + 4432), *(v77 + 4440));
              }

              else
              {
                block = *(v77 + 4432);
              }

              v81 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v76 + 280, &block.__r_.__value_.__l.__data_);
              v82 = v76 + 288 != v81 && *(v81 + 56) == 2;
              if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(block.__r_.__value_.__l.__data_);
              }

              v83 = v103 || v73;
              if (!v82)
              {
                v83 = v103;
              }

              if (!v83)
              {
                v15 = 0;
                a3 = v99;
                goto LABEL_128;
              }

              a3 = v99;
              goto LABEL_126;
            }
          }
        }
      }

      else
      {
        v75 = 0;
      }

      a3 = v99;
      if (!v103)
      {
        v15 = 0;
        goto LABEL_128;
      }

LABEL_126:
      BambiCall::updateMediaSettings(a1, v19);
      v15 = 1;
LABEL_128:
      std::string::basic_string[abi:ne200100]<0>(&block, "HandleSdpAnswer");
      BambiCall::activateMediaSessionIfAppropriate(a1, v19, &block);
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
      }

      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v110 = &unk_1F5EBDEF8;
      v111 = &_bambiDomain;
      v112 = 0;
      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
      }

LABEL_132:
      ImsResult::operator=(a4, &v110);
      ImsResult::~ImsResult(&v110);
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      block.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      block.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(block.__r_.__value_.__r.__words[2]) = 0;
      if (*(a4 + 8) != &_bambiDomain)
      {
        ImsResult::~ImsResult(&block);
        break;
      }

      v78 = *(a4 + 16);
      ImsResult::~ImsResult(&block);
      if (!v78)
      {
        v79 = v18[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v18[2];
            v54 = *v80 == v18;
            v18 = v80;
          }

          while (!v54);
        }

        v18 = v80;
        if (v80 != v102)
        {
          continue;
        }
      }

      break;
    }
  }

  v96 = *a3;
  v97 = a3[1];
  if (v97)
  {
    atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::handleRttInSDP(a1, *(v96 + 448), *(v96 + 456));
  if (v97)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v97);
  }
}

void sub_1E4E46820(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  ImsResult::~ImsResult(v1);
  _Unwind_Resume(a1);
}

void BambiCall::textSessionDetected(BambiCall *this)
{
  if (*(this + 1529) & 1) != 0 || (*(this + 1530))
  {
    if ((*(this + 1840) & 1) == 0)
    {
      *(this + 920) = 1;
      v2 = *(this + 54);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          v4 = v3;
          v5 = *(this + 53);
          if (v5)
          {
            v11 = 0u;
            *v12 = 0u;
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 19);
            BambiCallEvent::BambiCallEvent(&v11, 29, &v9);
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            (*(*v5 + 16))(v5, &v11);
            *&v11 = &unk_1F5EC4090;
            if (v12[1])
            {
              std::__shared_weak_count::__release_weak(v12[1]);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }
      }
    }
  }

  else
  {
    v7 = *(this + 1);
    v6 = this + 8;
    *(this + 1841) = 1;
    v8 = (*(v7 + 64))(this + 8);
    (*(*v6 + 16))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Text session detected, but call is still hidden. Delaying notification", 70);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }
}

void sub_1E4E46B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void BambiCall::textSessionDeactivated(BambiCall *this)
{
  *(this + 1840) = 0;
  *(this + 785) = 0;
  v2 = *(this + 54);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 53);
      if (v5)
      {
        v8 = 0u;
        *v9 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 19);
        BambiCallEvent::BambiCallEvent(&v8, 31, &v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        (*(*v5 + 16))(v5, &v8);
        *&v8 = &unk_1F5EC4090;
        if (v9[1])
        {
          std::__shared_weak_count::__release_weak(v9[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E46C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void BambiCall::sendHoldResumeIndication(BambiCall *this, uint64_t a2)
{
  v4 = this + 8;
  v5 = (*(*(this + 1) + 64))(this + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "BambiCall::sendHoldResumeIndication called for ", 47);
  *(v5 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v29, (v4 + 496));
  (*(*v5 + 56))(v5, &v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " with isHeld = ", 15);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923320](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v29);
  }

  v6 = *(this + 24);
  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = &unk_1F5EBDEF8;
    v23 = &_bambiDomain;
    v24 = 0;
    v7 = *(v6 + 1904);
    v8 = (v6 + 1912);
    if (v7 != (v6 + 1912))
    {
      while (1)
      {
        v9 = v7[5];
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        v10 = *(v9 + 64) - 1;
        if (v10 > 3)
        {
          v11 = 0;
        }

        else
        {
          v11 = dword_1E51701B0[v10];
        }

        v12 = *(v9 + 68);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v37, this + 19);
        BambiCallHoldResumeIndicationEvent::BambiCallHoldResumeIndicationEvent(&v39, a2, v12, v11, &v37);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        v13 = *(this + 54);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = *(this + 53);
            if (v16)
            {
              (*(*v16 + 16))(v16, &v39);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        __p = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v29 = &unk_1F5EBDEF8;
        v30 = &_bambiDomain;
        v31 = 0;
        *&v39 = &unk_1F5EC4090;
        if (*(&v40 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v40 + 1));
        }

        ImsResult::operator=(&v22, &v29);
        ImsResult::~ImsResult(&v29);
        __p = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v29 = &unk_1F5EBDEF8;
        v30 = &_bambiDomain;
        v31 = 0;
        if (v23 != &_bambiDomain)
        {
          break;
        }

        v17 = v24;
        ImsResult::~ImsResult(&v29);
        if (!v17)
        {
          v18 = v7[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v7[2];
              v20 = *v19 == v7;
              v7 = v19;
            }

            while (!v20);
          }

          v7 = v19;
          if (v19 != v8)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

      ImsResult::~ImsResult(&v29);
    }

LABEL_30:
    ImsResult::~ImsResult(&v22);
  }

  else
  {
    v21 = (*(*v4 + 64))(v4);
    (*(*v4 + 16))(v4, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "BambiCall::sendHoldResumeIndication _sdpSession no longer valid", 63);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
  }
}

void sub_1E4E470D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  *(v10 - 128) = &unk_1F5EC4090;
  v12 = *(v10 - 104);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  ImsResult::~ImsResult(&a9);
  _Unwind_Resume(a1);
}

void ___ZN9BambiCall18localHoldCompletedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 47);
      if (v5)
      {
        v6 = *(v5 + 3144);
        v7 = *(v5 + 3152);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 136))(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *(v1 + 54);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(v1 + 53);
      if (v11)
      {
        v18 = 0u;
        *v19 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, v1 + 19);
        BambiCallEvent::BambiCallEvent(&v18, 12, &v16);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        (*(*v11 + 16))(v11, &v18);
        v14 = 0u;
        *v15 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, v1 + 19);
        BambiCallEvent::BambiCallEvent(&v14, 13, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        (*(*v11 + 16))(v11, &v14);
        BambiCall::sendHoldResumeIndication(v1, 1);
        *&v14 = &unk_1F5EC4090;
        if (v15[1])
        {
          std::__shared_weak_count::__release_weak(v15[1]);
        }

        *&v18 = &unk_1F5EC4090;
        if (v19[1])
        {
          std::__shared_weak_count::__release_weak(v19[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E47324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void ___ZN9BambiCall20localResumeCompletedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 47);
      if (v5)
      {
        v6 = *(v5 + 3144);
        v7 = *(v5 + 3152);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 144))(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *(v1 + 54);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(v1 + 53);
      if (v11)
      {
        v18 = 0u;
        *v19 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, v1 + 19);
        BambiCallEvent::BambiCallEvent(&v18, 10, &v16);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        (*(*v11 + 16))(v11, &v18);
        v14 = 0u;
        *v15 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, v1 + 19);
        BambiCallEvent::BambiCallEvent(&v14, 11, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        (*(*v11 + 16))(v11, &v14);
        BambiCall::sendHoldResumeIndication(v1, 0);
        *&v14 = &unk_1F5EC4090;
        if (v15[1])
        {
          std::__shared_weak_count::__release_weak(v15[1]);
        }

        *&v18 = &unk_1F5EC4090;
        if (v19[1])
        {
          std::__shared_weak_count::__release_weak(v19[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E47594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void BambiCall::initializeMobileOriginated(BambiCall *this@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(this + 48);
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = *(this + 47);
  v27 = 0;
  v28 = 0;
  if (!v10)
  {
LABEL_19:
    v27 = 0;
    v28 = 0;
LABEL_20:
    v17 = *(this + 1);
    v16 = this + 8;
    v18 = (*(v17 + 56))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "unable to create SipSession for call to ", 40);
    *(v18 + 17) = 0;
    (*(*a2 + 40))(a2, v18);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21[0] = &unk_1F5EBDEF8;
    v21[1] = &_bambiDomain;
    v22 = 0x40000000;
    v19 = ImsResult::operator<<<char [28]>(v21, "unable to create SipSession");
    ImsResult::ImsResult(a3, v19);
    ImsResult::~ImsResult(v21);
    goto LABEL_21;
  }

  v11 = *(v10 + 248);
  v12 = *(v10 + 256);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 248);
  v14 = *(v11 + 256);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogManager::initializeSession(v13, &v27);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!v27)
  {
    goto LABEL_20;
  }

  v15 = v28;
  v20[0] = v27;
  v20[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::attachSipSession(this, v20);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *(this + 1529) = 1;
  *(this + 492) = 1;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
LABEL_21:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4E478BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = *(v14 - 72);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

double BambiCall::attachSipSession(BambiCall *this, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*(this + 51))
    {
      BambiCall::detachSipSession(this);
      v2 = *a2;
    }

    v5 = v2[30];
    v6 = v2[31];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=(this + 21, v5 + 99);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 52);
    *(this + 51) = v8;
    *(this + 52) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v8 = *(this + 51);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v25, this + 19);
    SipSession::setCall(v8, &v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v10 = *(*a2 + 240);
    v11 = *(*a2 + 248);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = 240;
    if (*(v10 + 1056))
    {
      v12 = 648;
    }

    SipUri::operator=((this + 1080), v10 + v12);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v13 = *(*a2 + 240);
    v14 = *(*a2 + 248);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=(this + 62, (v13 + 1480));
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v15 = *a2;
    *(this + 352) = *(v15 + 840);
    std::string::operator=((this + 712), (v15 + 848));
    v17 = *(v15 + 888);
    v16 = *(v15 + 904);
    v18 = *(v15 + 872);
    *(this + 781) = *(v15 + 917);
    *(this + 47) = v17;
    *(this + 48) = v16;
    *(this + 46) = v18;
    std::string::operator=(this + 33, (v15 + 928));
    std::string::operator=(this + 34, (v15 + 952));
    *(this + 840) = *(v15 + 976);
    v19 = *(v15 + 984);
    v20 = *(v15 + 1016);
    *(this + 54) = *(v15 + 1000);
    *(this + 55) = v20;
    *(this + 53) = v19;
    std::string::operator=((this + 896), (v15 + 1032));
    std::string::operator=((this + 920), (v15 + 1056));
    std::string::operator=((this + 944), (v15 + 1080));
    std::string::operator=((this + 968), (v15 + 1104));
    std::string::operator=((this + 992), (v15 + 1128));
    *(this + 1016) = *(v15 + 1152);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 1024), (v15 + 1160));
    ims::makeAwdCallId(this + 504, &v23);
    v21 = (this + 528);
    if (*(this + 551) < 0)
    {
      operator delete(*v21);
    }

    result = *&v23;
    *v21 = v23;
    *(this + 68) = v24;
  }

  return result;
}

void sub_1E4E47B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::initializeMediaForSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 384);
  if (v6)
  {
    v6 = std::__shared_weak_count::lock(v6);
    v7 = v6;
    if (v6)
    {
      v6 = *(a2 + 376);
    }
  }

  else
  {
    v7 = 0;
  }

  memset(&v64, 0, sizeof(v64));
  v8 = SipStack::prefs(v6);
  ImsPrefs::OriginUsername(v8, &v64);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    *v61 = 0u;
    SipUri::SipUri(v61);
    if (*(a2 + 705) == 1)
    {
      SipUri::makeAnonymous(v61);
    }

    else
    {
      v10 = std::__shared_weak_count::lock(*(a2 + 384));
      v11 = *(a2 + 376);
      v12 = *(v11 + 248);
      v13 = *(v11 + 256);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = SipUserAgent::publicUri(v12);
      SipUri::operator=(v61, v14);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    std::string::basic_string[abi:ne200100]<0>(__str, &str_31_1);
    std::string::operator=((&v62[11] + 8), __str);
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    SipUri::asString(v61, __str);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    v64 = *__str;
    SipUri::~SipUri(v61);
  }

  std::string::basic_string[abi:ne200100]<0>(__str, " ");
  std::string::basic_string[abi:ne200100]<0>(&v65, &str_31_1);
  ims::substituteVar(&v64, __str, &v65, v61);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  *&v64.__r_.__value_.__l.__data_ = *v61;
  v64.__r_.__value_.__r.__words[2] = *&v62[0];
  BYTE7(v62[0]) = 0;
  LOBYTE(v61[0]) = 0;
  if (v67 < 0)
  {
    operator delete(v65);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v60 = 0;
  v59 = 0u;
  memset(__str, 0, sizeof(__str));
  v15 = *(a2 + 384);
  if (v15)
  {
    v15 = std::__shared_weak_count::lock(v15);
    v16 = v15;
    if (v15)
    {
      v15 = *(a2 + 376);
    }
  }

  else
  {
    v16 = 0;
  }

  SipStack::mediaAddress(v15, __str);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v56 = 0;
  v57 = 0;
  SipHost::address(__str, &v56);
  v17 = std::__shared_weak_count::lock(*(a2 + 384));
  v18 = *(a2 + 376);
  v19 = *(v18 + 248);
  v20 = *(v18 + 256);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PreferredMedia = SipUserAgent::getPreferredMedia(v19, a2 + 816);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (HIDWORD(PreferredMedia) != 3)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v55, (a2 + 152));
    *(a2 + 785);
    v24 = *(a2 + 384);
    if (v24 && std::__shared_weak_count::lock(v24))
    {
      v25 = *(a2 + 376);
    }

    operator new();
  }

  v22 = (*(*(a2 + 8) + 32))(a2 + 8);
  (*(*(a2 + 8) + 16))(a2 + 8, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Requested to create outgoing video call - behavior is undefined", 63);
  *(v22 + 17) = 0;
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  v23 = *(a2 + 200);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v26 = *(a2 + 192);
  if (!v26)
  {
    v32 = *(a2 + 8);
    v31 = a2 + 8;
    v33 = (*(v32 + 56))(v31);
    (*(*v31 + 16))(v31, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Unable to create SDP session", 28);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *a1 = &unk_1F5EBDEF8;
    *(a1 + 8) = &SipResultDomain::_domain;
    *(a1 + 16) = 500;
    goto LABEL_101;
  }

  if (*(a2 + 1856) == 1)
  {
    BambiCall::setTextMediaSessionMode(a2, *(a2 + 1852));
    v26 = *(a2 + 192);
  }

  if (*a3)
  {
    v27 = a3[1];
    v53 = *a3;
    v54 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = 0;
    v52 = 0;
    v28 = SDPSession::handleOfferAnswer(v26, &v53, &v51, 0);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (v28 != 2)
    {
      v29 = *(a2 + 384);
      if (v29)
      {
        if (std::__shared_weak_count::lock(v29))
        {
          v30 = *(a2 + 376);
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v65, "CodecNotSupported");
      SipStack::callTerminationReason(v30);
    }
  }

  else
  {
    SDPSession::initializeOffer(v26);
  }

  v34 = *(a2 + 192);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  v35 = *(v34 + 1904);
  v50 = (v34 + 1912);
  if (v35 != (v34 + 1912))
  {
    v36 = a2 + 8;
    while (1)
    {
      v37 = v35[5];
      v38 = *(v37 + 40);
      if (v38)
      {
        v39 = *(v37 + 32);
        atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v40 = std::__shared_weak_count::lock(v38);
        if (!v40)
        {
          v39 = 0;
        }

        std::__shared_weak_count::__release_weak(v38);
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      v41 = (*(*v36 + 64))(a2 + 8);
      (*(*v36 + 16))(a2 + 8, v41);
      if (*(v37 + 64) == 4 && (*(v39 + 785) & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Skip creating text session for ", 31);
        *(v41 + 17) = 0;
        (*(*v41 + 32))(v41, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), " because RTT is disabled", 24);
        *(v41 + 17) = 0;
        (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v41 + 17) = 0;
        if (v67 < 0)
        {
          operator delete(v65);
        }

        memset(v62 + 8, 0, 64);
        v61[0] = &unk_1F5EBDEF8;
        v61[1] = &_bambiDomain;
        LODWORD(v62[0]) = 0;
        if (v40)
        {
LABEL_83:
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "creating media session for ", 27);
        *(v41 + 17) = 0;
        (*(*v41 + 32))(v41, &v65);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), " stream on ", 11);
        *(v41 + 17) = 0;
        if (v67 < 0)
        {
          operator delete(v65);
        }

        v42 = *(v41 + 8);
        if (v39)
        {
          MEMORY[0x1E6923310](v42, v39);
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Unknown Call", 12);
        }

        *(v41 + 17) = 0;
        (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v41 + 17) = 0;
        IPTelephonyManager::getBambiClient(&v65);
        v43 = v65;
        v44 = *(a2 + 484);
        v45 = *(a2 + 200);
        v68 = *(a2 + 192);
        v69 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BambiClient::createMediaSessionForStream(v43, v37, v44, &v68, v61);
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (v40)
        {
          goto LABEL_83;
        }
      }

      ImsResult::operator=(a1, v61);
      ImsResult::~ImsResult(v61);
      memset(v62 + 8, 0, 64);
      v61[0] = &unk_1F5EBDEF8;
      v61[1] = &_bambiDomain;
      LODWORD(v62[0]) = 0;
      if (*(a1 + 8) != &_bambiDomain)
      {
        ImsResult::~ImsResult(v61);
        break;
      }

      v46 = *(a1 + 16);
      ImsResult::~ImsResult(v61);
      if (!v46)
      {
        v47 = v35[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v35[2];
            v49 = *v48 == v35;
            v35 = v48;
          }

          while (!v49);
        }

        v35 = v48;
        if (v48 != v50)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_101:
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  SipHost::~SipHost(__str);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E48670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  SipUri::~SipUri(&a30);
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  _Unwind_Resume(a1);
}

void BambiCall::setTextMediaSessionMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 384);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  if (!*(a1 + 376))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v7 = std::__shared_weak_count::lock(*(a1 + 384));
  v8 = *(a1 + 376);
  v9 = *(v8 + 4512);
  v10 = *(v8 + 4520);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v9 && *(v9 + 251) == 1)
  {
    v11 = (*(*(a1 + 8) + 64))(a1 + 8);
    (*(*(a1 + 8) + 16))(a1 + 8, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "setTextMediaSessionMode for pending emergency call ", 51);
    *(v11 + 17) = 0;
    (*(*v11 + 32))(v11, a1 + 504);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    *(a1 + 1852) = a2;
    *(a1 + 1856) = 1;
    goto LABEL_37;
  }

LABEL_11:
  if (*(a1 + 785))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == a2)
  {
    goto LABEL_37;
  }

  v13 = a1 + 8;
  v14 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8, v14);
  if (a2 == 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "setTextMediaSessionMode to RTT for call ", 40);
    *(v14 + 17) = 0;
    v15 = (v14 + 17);
    (*(*v14 + 32))(v14, a1 + 504);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v16 = 1;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "setTextMediaSessionMode to OFF for call ", 40);
    *(v14 + 17) = 0;
    v15 = (v14 + 17);
    (*(*v14 + 32))(v14, a1 + 504);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v16 = 0;
  }

  *v15 = 0;
  *(a1 + 785) = v16;
  *(a1 + 784) = 0;
  SDPSession::setTextMediaSessionMode(*(a1 + 192), a2);
  v17 = *(a1 + 192);
  v18 = *(v17 + 239);
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = (v17 + 1912);
  do
  {
    if (v18[8] >= 4)
    {
      v19 = v18;
    }

    v18 = *&v18[2 * (v18[8] < 4)];
  }

  while (v18);
  if (v19 != (v17 + 1912) && v19[8] <= 4 && (v20 = *(v19 + 5)) != 0)
  {
    if (!*(v20 + 6))
    {
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v24 = *(a1 + 384);
      if (v24)
      {
        v24 = std::__shared_weak_count::lock(v24);
        v25 = v24;
        if (v24)
        {
          v24 = *(a1 + 376);
        }
      }

      else
      {
        v25 = 0;
      }

      SipStack::mediaAddress(v24, v37);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      SipHost::address(v37, &v35);
      IPTelephonyManager::getBambiClient(&v32);
      v26 = v32;
      v27 = *(a1 + 484);
      v28 = *(a1 + 200);
      v30 = *(a1 + 192);
      v31 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BambiClient::createMediaSessionForStream(v26, v20, v27, &v30, v34);
      ImsResult::~ImsResult(v34);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      SipHost::~SipHost(v37);
      goto LABEL_31;
    }

    if (*(a1 + 785) != 1)
    {
      if (!a2)
      {
        SDPSession::setRttPortInSDP(v17, 0);
      }

      goto LABEL_31;
    }

    v21 = (*(*v13 + 64))(a1 + 8);
    (*(*v13 + 16))(a1 + 8, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Found existing text media session ID ", 37);
    *(v21 + 17) = 0;
    MEMORY[0x1E69233B0](*(v21 + 8), *(v20 + 6));
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
LABEL_29:
    v21 = (*(*v13 + 56))(a1 + 8);
    (*(*v13 + 16))(a1 + 8, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "No text stream available", 24);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v21 + 17) = 0;
LABEL_31:
  v22 = *(a1 + 408);
  if (!v22 || SipSession::terminating(v22))
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 408);
  if (v23)
  {
    if ((*(v23->__r_.__value_.__r.__words[0] + 264))(v23))
    {
      goto LABEL_37;
    }

    v23 = *(a1 + 408);
  }

  SipSession::upgradeToRtt(v23, 1, v29);
  ImsResult::~ImsResult(v29);
LABEL_37:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4E48F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v26 = *(v24 - 136);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  SipHost::~SipHost((v24 - 128));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void BambiCall::initializeMobileTerminated(BambiCall *this, void *a2)
{
  v3 = a2[1];
  v11[0] = *a2;
  v11[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::attachSipSession(this, v11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 1529) = 0;
  v4 = std::__shared_weak_count::lock(*(this + 48));
  v5 = *(this + 47);
  std::string::operator=(this + 67, (v5 + 3432));
  std::string::operator=(this + 68, (v5 + 3456));
  v6 = *(v5 + 3480);
  *(this + 1672) = *(v5 + 3496);
  *(this + 1656) = v6;
  std::string::operator=(this + 64, this + 67);
  std::string::operator=(this + 65, this + 68);
  *(this + 99) = *(this + 1656);
  *(this + 1600) = *(this + 1672);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v7 = *(this + 1631);
  if (v7 < 0)
  {
    v7 = *(this + 202);
  }

  if (v7)
  {
    v8 = *(this + 1655);
    if (v8 < 0)
    {
      v8 = *(this + 205);
    }

    if (v8)
    {
      v9 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "starting MT call on access network ", 35);
      *(v9 + 17) = 0;
      v10 = ims::operator<<(v9, this + 1608);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v10[17] = 0;
    }
  }
}

void sub_1E4E49144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::AccessNetwork::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  return a1;
}

void BambiCall::setInputFrequencyLevel(BambiCall *this, const __CFData *a2)
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
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 19);
        (*(*v7 + 200))(v7, &v8, a2);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4E4924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiCall::setOutputFrequencyLevel(BambiCall *this, const __CFData *a2)
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
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 19);
        (*(*v7 + 208))(v7, &v8, a2);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4E49314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiCall::fakeNetworkBasedCallWaiting(BambiCall *this)
{
  memset(v6, 0, sizeof(v6));
  BambiCallOptions::BambiCallOptions(v6, (*(this + 51) + 840));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  SipUri::SipUri(v4, (this + 1080));
  BambiCall::initializeMobileOriginated(this, v4, v3);
  ImsResult::~ImsResult(v3);
  SipSession::sendInvite(*(this + 51), &SipSession::kInviteTypeFakeNetworkBasedCallWaiting, v2);
  ImsResult::~ImsResult(v2);
  SipUri::~SipUri(v4);
  BambiCallOptions::~BambiCallOptions(v6);
}

void *SipMessage::header<SipMinSEHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Min-SE");
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

void BambiCall::processCallEvent(BambiCall *this, BambiCallEvent *a2)
{
  v266 = *MEMORY[0x1E69E9840];
  v4 = *(this + 23);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*(this + 18) + 16))(&v224);
    v5 = SHIBYTE(v225[1]);
    v6 = v224;
    (*(*a2 + 40))(__p, a2);
    v7 = &v224;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if (v243 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 141558531;
    *(buf[0].__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2081;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v7;
    HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
    buf[1].__r_.__value_.__r.__words[0] = v8;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sprocessing call event %s", buf, 0x20u);
    if (v243 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v225[1]) < 0)
    {
      operator delete(v224);
    }
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v216, this + 19);
  v10 = v216;
  v9 = v217;
  if (v217)
  {
    atomic_fetch_add_explicit(&v217->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 3);
  *(a2 + 2) = v10;
  *(a2 + 3) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
    v9 = v217;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v12 = *(a2 + 2) & 0xFFFFFFFE;
  v13 = v12 != 14;
  if (v12 == 14)
  {
    v14 = **a2;
    if (v15)
    {
      v16 = v15[147];
      lpsrc = v15;
      if ((v15[145] & 1) == 0)
      {
        v17 = *(this + 48);
        if (v17)
        {
          v18 = std::__shared_weak_count::lock(v17);
          if (v18)
          {
            v19 = *(this + 47);
            if (!v19)
            {
              goto LABEL_27;
            }

            v20 = *(lpsrc + 8);
            if (v20 != 23)
            {
              if (v20 == 24)
              {
                if (*(this + 1529) == 1)
                {
                  v21 = v19[361];
                }

                else
                {
                  v21 = v19[362];
                }

LABEL_33:
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                if ((v21 & 1) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_34;
              }

              if (v20 == 29)
              {
                v21 = v19[1242];
                goto LABEL_33;
              }

LABEL_27:
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              goto LABEL_35;
            }

            v22 = v19[360];
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            if (v22 == 1)
            {
LABEL_34:
              lpsrc[144] = 1;
            }
          }
        }
      }

LABEL_35:
      v23 = *(this + 48);
      if (v23)
      {
        v24 = std::__shared_weak_count::lock(v23);
        if (v24)
        {
          v25 = *(this + 47);
          goto LABEL_40;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = 0;
LABEL_40:
      v27 = *(lpsrc + 5);
      v26 = *(lpsrc + 6);
      v210 = v24;
      v211 = v25;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          goto LABEL_62;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        if (!v25)
        {
          goto LABEL_62;
        }

        v27 = *(lpsrc + 5);
        v28 = *(lpsrc + 6);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = *(v27 + 128);
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          goto LABEL_48;
        }
      }

      else if (!v27 || !v25)
      {
        goto LABEL_62;
      }

      v29 = *(v27 + 128);
LABEL_48:
      std::string::basic_string[abi:ne200100]<0>(buf, "INVITE");
      v30 = SipResponseCodeMap::containsResponseCodeForMethod(v25 + 1352, &buf[0].__r_.__value_.__l.__data_, v29, 0);
      v31 = v30;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
        if (v31)
        {
LABEL_50:
          if ((lpsrc[146] & 1) != 0 && !*(this + 69) && ims::AccessNetwork::isNR((v25 + 3432)) && (*(v25 + 3496) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "INVITE");
            v32 = SipResponseCodeMap::containsResponseCodeForMethod(v25 + 1384, &buf[0].__r_.__value_.__l.__data_, v29, 0);
            if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf[0].__r_.__value_.__l.__data_);
            }

            if (v32)
            {
              v33 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v33);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "disallowing redial because of RedialNRSANonEmBlockedResponses", 61);
              *(v33 + 17) = 0;
              (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_61:
              *(v33 + 17) = 0;
              lpsrc[146] = 0;
            }
          }

LABEL_62:
          v34 = *(lpsrc + 2);
          if (v34 != 15)
          {
            v42 = 1;
            v209 = v16;
            v43 = lpsrc;
LABEL_114:
            if (v34 == 14 && BambiCall::isWPSCall(this))
            {
              v55 = this + 8;
              v56 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v56);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Ending WPS call", 15);
              *(v56 + 17) = 0;
              (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v56 + 17) = 0;
              if (v43[144] == 1)
              {
                v57 = *(this + 51);
                if (v57)
                {
                  v58 = *(v57 + 768);
                  if (v58)
                  {
                    if ((*(*v58 + 48))(v58) == 14)
                    {
                      v59 = (*(*v55 + 64))(this + 8);
                      (*(*v55 + 16))(this + 8, v59);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "WPS Call requiring CSFB ended in cleanup state - defer sending event until timer expires", 88);
                      *(v59 + 17) = 0;
                      (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v59 + 17) = 0;
                    }
                  }
                }

LABEL_207:
                if (v210)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v210);
                }

                goto LABEL_209;
              }

              v60 = (*(*v55 + 64))(this + 8);
              (*(*v55 + 16))(this + 8, v60);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "WPS call ended normally, not performing CSFB", 44);
              *(v60 + 17) = 0;
              (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v60 + 17) = 0;
              SipSession::exitWPSCleanup(*(this + 51));
            }

            v208 = v42;
            v61 = *(this + 54);
            if (v61)
            {
              v62 = std::__shared_weak_count::lock(v61);
              v63 = v211;
              if (v62)
              {
                v64 = *(this + 53);
              }

              else
              {
                v64 = 0;
              }
            }

            else
            {
              v64 = 0;
              v62 = 0;
              v63 = v211;
            }

            if ((*(this + 1529) & 1) != 0 || *(this + 1530) == 1)
            {
              if (v64)
              {
                (*(*v64 + 16))(v64, v43);
              }

              IPTelephonyManager::getBambiClient(buf);
              BambiClient::handleCallTerminationEvent(buf[0].__r_.__value_.__l.__data_, v43);
              if (buf[0].__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](buf[0].__r_.__value_.__l.__size_);
              }

              goto LABEL_158;
            }

            if (*(v43 + 8) < 10)
            {
              if (!v64)
              {
                goto LABEL_158;
              }

              v68 = (*v64 + 16);
            }

            else
            {
              if (v63)
              {
                IPTelephonyManager::getBambiClient(&v224);
                v65 = v224;
                v66 = *(v43 + 8);
                if (v66 <= 37)
                {
                  v67 = reasonStrings + 24 * v66;
                }

                else
                {
                  v67 = reasonStrings + 240;
                }

                if (*(v63 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(buf, *(v63 + 554), *(v63 + 555));
                }

                else
                {
                  buf[0] = *(v63 + 4432);
                }

                BambiClient::requestStateDump(v65, v67, buf);
                if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf[0].__r_.__value_.__l.__data_);
                }

                if (*(&v224 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v224 + 1));
                }
              }

              if (!v64)
              {
LABEL_158:
                std::string::basic_string[abi:ne200100]<0>(__p, "processSessionTerminationCallEvent");
                v76 = *(this + 24);
                if (v76)
                {
                  v77 = 0uLL;
                  *&v224 = &unk_1F5EBDEF8;
                  *(&v224 + 1) = &_bambiDomain;
                  memset(v225, 0, 72);
                  v78 = *(v76 + 1904);
                  v79 = (v76 + 1912);
                  if (v78 != (v76 + 1912))
                  {
                    v80 = this + 8;
                    while (1)
                    {
                      v81 = v78[5];
                      if (v81 && v81[6])
                      {
                        v82 = v13;
                        v83 = (*(*v80 + 64))(this + 8);
                        (*(*v80 + 16))(this + 8, v83);
                        (*(*v83 + 32))(v83, __p);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), ": terminating media session ", 28);
                        *(v83 + 17) = 0;
                        MEMORY[0x1E69233B0](*(v83 + 8), v81[6]);
                        *(v83 + 17) = 0;
                        (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v83 + 17) = 0;
                        RTPManager::terminateSessionWithId(*(this + 49), v81[6]);
                        IPTelephonyManager::getBambiClient(&v222);
                        BambiClient::setMediaSessionIdForStream(v222, v81, 0);
                        v13 = v82;
                        if (v223)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v223);
                        }

                        v77 = 0uLL;
                      }

                      *&buf[1].__r_.__value_.__l.__data_ = v77;
                      *&buf[1].__r_.__value_.__r.__words[2] = v77;
                      *&buf[2].__r_.__value_.__r.__words[1] = v77;
                      *&buf[3].__r_.__value_.__l.__data_ = v77;
                      buf[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                      buf[0].__r_.__value_.__l.__size_ = &_bambiDomain;
                      LODWORD(buf[0].__r_.__value_.__r.__words[2]) = 0;
                      ImsResult::operator=(&v224, buf);
                      ImsResult::~ImsResult(buf);
                      memset(&buf[1], 0, 64);
                      buf[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                      buf[0].__r_.__value_.__l.__size_ = &_bambiDomain;
                      LODWORD(buf[0].__r_.__value_.__r.__words[2]) = 0;
                      if (*(&v224 + 1) != &_bambiDomain)
                      {
                        break;
                      }

                      v84 = v225[0];
                      ImsResult::~ImsResult(buf);
                      v77 = 0uLL;
                      if (!v84)
                      {
                        v85 = v78[1];
                        if (v85)
                        {
                          do
                          {
                            v86 = v85;
                            v85 = *v85;
                          }

                          while (v85);
                        }

                        else
                        {
                          do
                          {
                            v86 = v78[2];
                            v87 = *v86 == v78;
                            v78 = v86;
                          }

                          while (!v87);
                        }

                        v78 = v86;
                        if (v86 != v79)
                        {
                          continue;
                        }
                      }

                      goto LABEL_176;
                    }

                    ImsResult::~ImsResult(buf);
                  }

LABEL_176:
                  ImsResult::~ImsResult(&v224);
                  v63 = v211;
                  v43 = lpsrc;
                }

                if (v243 < 0)
                {
                  operator delete(__p[0]);
                  if (!v63)
                  {
                    goto LABEL_205;
                  }
                }

                else if (!v63)
                {
LABEL_205:
                  if (v62)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
                  }

                  goto LABEL_207;
                }

                v88 = SipStack::prefs(v63);
                if (ImsPrefs::NoFallbackVoiceService(v88) && v209)
                {
                  v89 = *(v63 + 31);
                  v90 = *(v63 + 32);
                  if (v90)
                  {
                    atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
                  }

                  v91 = *(v89 + 336);
                  v92 = *(v89 + 344);
                  if (v92)
                  {
                    atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
                  }

                  SipRegistrationClient::dropRegistrationWhenCallsEnd(v91, 0x15u);
                }

                if (v43[147] == 1)
                {
                  v93 = *(v63 + 31);
                  v94 = *(v63 + 32);
                  if (v94)
                  {
                    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v95 = *(v93 + 336);
                  v96 = *(v93 + 344);
                  if (v96)
                  {
                    atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v95 + 176))(v95, 18, 0, 0);
                  if (v96)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
                  }

                  if (v94)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
                  }

                  SipTransportLayer::removeConnections(*(v63 + 35), 0, 1, 1);
                  IPTelephonyManager::getBambiClient(&v224);
                  v97 = v224;
                  if (*(v63 + 4455) < 0)
                  {
                    std::string::__init_copy_ctor_external(buf, *(v63 + 554), *(v63 + 555));
                  }

                  else
                  {
                    buf[0] = *(v63 + 4432);
                  }

                  BambiClient::requestNetworkReset(v97, buf);
                  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf[0].__r_.__value_.__l.__data_);
                  }

                  if (*(&v224 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v224 + 1));
                  }
                }

                else if ((v208 & 1) == 0)
                {
                  SipStack::handleFallbackRequested(v63);
                }

                goto LABEL_205;
              }

              v68 = (*v64 + 280);
            }

            (*v68)(v64, v43);
            goto LABEL_158;
          }

          v35 = **lpsrc;
          if (!v36)
          {
            goto LABEL_112;
          }

          v37 = v36;
          v39 = *(v36 + 5);
          v38 = *(v36 + 6);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            if (!v39)
            {
              goto LABEL_95;
            }

            v39 = *(v37 + 5);
            v40 = *(v37 + 6);
            v207 = v13;
            if (v40)
            {
              v41 = 0;
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_72;
            }
          }

          else
          {
            if (!v39)
            {
              goto LABEL_95;
            }

            v207 = v13;
            v40 = 0;
          }

          v41 = 1;
LABEL_72:
          if (!v211)
          {
            goto LABEL_93;
          }

          v44 = *(v211 + 31);
          v45 = *(v211 + 32);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = *(v44 + 336);
          v46 = *(v44 + 344);
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v220 = v39;
          v221 = v40;
          if ((v41 & 1) == 0)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v37[87] < 0)
          {
            std::string::__init_copy_ctor_external(buf, *(v37 + 8), *(v37 + 9));
          }

          else
          {
            buf[0] = *(v37 + 64);
          }

          v48 = SipRegistrationClient::disableIfInWrongCountry(v47, &v220, buf);
          if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }

          if (v221)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v221);
          }

          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            if ((v48 & 1) == 0)
            {
LABEL_93:
              v13 = v207;
              if ((v41 & 1) == 0)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

LABEL_95:
              v49 = *(v37 + 8);
              v209 = v49 == 17;
              if ((v49 == 17 || v37[144] == 1) && ((*(this + 1529) & 1) != 0 || *(this + 1530) == 1))
              {
                IPTelephonyManager::getBambiClient(buf);
                v50 = buf[0].__r_.__value_.__r.__words[0];
                std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v218, this + 19);
                v43 = lpsrc;
                v51 = BambiClient::callCountExcludingCall(v50, &v218);
                if (v219)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v219);
                }

                if (buf[0].__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](buf[0].__r_.__value_.__l.__size_);
                }

                if (v51)
                {
                  v52 = (*(*(this + 1) + 64))(this + 8);
                  (*(*(this + 1) + 16))(this + 8, v52);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "not terminating registration due to ", 36);
                  *(v52 + 17) = 0;
                  v53 = *(v37 + 8);
                  if (v53 <= 37)
                  {
                    v54 = (reasonStrings + 24 * v53);
                  }

                  else
                  {
                    v54 = (reasonStrings + 240);
                  }

                  LoggableString::LoggableString(buf, v54);
                  (*(*v52 + 40))(v52, buf);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), " since we have another ongoing call", 35);
                  *(v52 + 17) = 0;
                  (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_108:
                  *(v52 + 17) = 0;
LABEL_109:
                  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf[0].__r_.__value_.__l.__data_);
                  }

                  v42 = 1;
                  goto LABEL_113;
                }

                if (!v211)
                {
                  goto LABEL_408;
                }

                v69 = *(v211 + 31);
                v70 = *(v211 + 32);
                if (v70)
                {
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                  v71 = *(SipUserAgent::config(v69) + 456);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                  if (v71)
                  {
LABEL_145:
                    if (v49 == 17 && ims::AccessNetwork::isNR((v211 + 3432)))
                    {
                      v43 = lpsrc;
                      v72 = (*(*(this + 1) + 64))(this + 8);
                      (*(*(this + 1) + 16))(this + 8, v72);
                      v73 = ImsOutStream::operator<<(v72, "triggering registration termination for EPSFB due to ");
                      v74 = *(v37 + 8);
                      if (v74 <= 37)
                      {
                        v75 = (reasonStrings + 24 * v74);
                      }

                      else
                      {
                        v75 = (reasonStrings + 240);
                      }

LABEL_411:
                      LoggableString::LoggableString(buf, v75);
                      (*(*v73 + 40))(v73, buf);
                      (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v73 + 17) = 0;
                      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf[0].__r_.__value_.__l.__data_);
                      }

                      v209 = 0;
                      v42 = 0;
                      goto LABEL_113;
                    }

                    v43 = lpsrc;
                    if (*(v211 + 1240) == 1)
                    {
                      v185 = (*(*(this + 1) + 64))(this + 8);
                      (*(*(this + 1) + 16))(this + 8, v185);
                      v186 = ImsOutStream::operator<<(v185, "not terminating registration due to ");
                      v187 = *(v37 + 8);
                      if (v187 <= 37)
                      {
                        v188 = (reasonStrings + 24 * v187);
                      }

                      else
                      {
                        v188 = (reasonStrings + 240);
                      }

                      LoggableString::LoggableString(buf, v188);
                      (*(*v186 + 40))(v186, buf);
                      v189 = ImsOutStream::operator<<(v186, " since CSFB is disabled");
                      (*(*v189 + 64))(v189, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_418:
                      v189[17] = 0;
                      goto LABEL_109;
                    }

                    v190 = *(v211 + 31);
                    v191 = *(v211 + 32);
                    if (v191)
                    {
                      atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
                      v192 = *(SipUserAgent::config(v190) + 1120);
                      std::__shared_weak_count::__release_shared[abi:ne200100](v191);
                      if (v192)
                      {
                        goto LABEL_396;
                      }
                    }

                    else if (*(SipUserAgent::config(v190) + 1120))
                    {
LABEL_396:
                      v43 = lpsrc;
                      if (*(this + 69))
                      {
                        v193 = SipStack::prefs(v211);
                        if (ImsPrefs::EmergencyAnonymousAutomaticRedial(v193))
                        {
                          v194 = (*(*(this + 1) + 64))(this + 8);
                          (*(*(this + 1) + 16))(this + 8, v194);
                          v195 = ImsOutStream::operator<<(v194, "not terminating registration due to ");
                          v196 = *(v37 + 8);
                          if (v196 <= 37)
                          {
                            v197 = (reasonStrings + 24 * v196);
                          }

                          else
                          {
                            v197 = (reasonStrings + 240);
                          }

                          LoggableString::LoggableString(buf, v197);
                          (*(*v195 + 40))(v195, buf);
                          v189 = ImsOutStream::operator<<(v195, " since automatic emergency redial is enabled");
                          (*(*v189 + 64))(v189, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          goto LABEL_418;
                        }
                      }

                      if ((*(v211 + 3980) & 1) == 0)
                      {
                        v203 = (*(*(this + 1) + 64))(this + 8);
                        (*(*(this + 1) + 16))(this + 8, v203);
                        v204 = ImsOutStream::operator<<(v203, "not terminating registration due to ");
                        v205 = *(v37 + 8);
                        if (v205 <= 37)
                        {
                          v206 = (reasonStrings + 24 * v205);
                        }

                        else
                        {
                          v206 = (reasonStrings + 240);
                        }

                        LoggableString::LoggableString(buf, v206);
                        (*(*v204 + 40))(v204, buf);
                        v189 = ImsOutStream::operator<<(v204, " since no legacy RAT types are available");
                        (*(*v189 + 64))(v189, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        goto LABEL_418;
                      }

LABEL_408:
                      v73 = (*(*(this + 1) + 64))(this + 8);
                      (*(*(this + 1) + 16))(this + 8, v73);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "triggering registration termination due to ", 43);
                      *(v73 + 17) = 0;
                      v202 = *(v37 + 8);
                      if (v202 <= 37)
                      {
                        v75 = (reasonStrings + 24 * v202);
                      }

                      else
                      {
                        v75 = (reasonStrings + 240);
                      }

                      goto LABEL_411;
                    }

                    v43 = lpsrc;
                    v198 = (*(*(this + 1) + 64))(this + 8);
                    (*(*(this + 1) + 16))(this + 8, v198);
                    v199 = ImsOutStream::operator<<(v198, "not terminating registration due to ");
                    v200 = *(v37 + 8);
                    if (v200 <= 37)
                    {
                      v201 = (reasonStrings + 24 * v200);
                    }

                    else
                    {
                      v201 = (reasonStrings + 240);
                    }

                    LoggableString::LoggableString(buf, v201);
                    (*(*v199 + 40))(v199, buf);
                    v189 = ImsOutStream::operator<<(v199, " since our prefs say not to");
                    (*(*v189 + 64))(v189, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    goto LABEL_418;
                  }
                }

                else if (*(SipUserAgent::config(v69) + 456))
                {
                  goto LABEL_145;
                }

                v43 = lpsrc;
                v52 = (*(*(this + 1) + 64))(this + 8);
                (*(*(this + 1) + 16))(this + 8, v52);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "not terminating registration due to ", 36);
                *(v52 + 17) = 0;
                v183 = *(v37 + 8);
                if (v183 <= 37)
                {
                  v184 = (reasonStrings + 24 * v183);
                }

                else
                {
                  v184 = (reasonStrings + 240);
                }

                LoggableString::LoggableString(buf, v184);
                (*(*v52 + 40))(v52, buf);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), " since this is a secondary device", 33);
                *(v52 + 17) = 0;
                (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                goto LABEL_108;
              }

LABEL_112:
              v42 = 1;
              v209 = v16;
              v43 = lpsrc;
LABEL_113:
              v34 = *(v43 + 2);
              goto LABEL_114;
            }
          }

          else if (!v48)
          {
            goto LABEL_93;
          }

          lpsrc[144] = 0;
          SipTransportLayer::removeConnections(*(v211 + 35), 0, 1, 1);
          goto LABEL_93;
        }
      }

      else if (v30)
      {
        goto LABEL_50;
      }

      v33 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "disallowing redial because response code not in silentRedialAllowedResponses", 76);
      *(v33 + 17) = 0;
      (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      goto LABEL_61;
    }
  }

LABEL_209:
  if ((*(this + 1529) & 1) != 0 || (*(this + 1530) & 1) != 0 || (v98 = *(a2 + 2), v98 == 2) || v98 == 23)
  {
    v99 = *(this + 48);
    if (v99)
    {
      v100 = std::__shared_weak_count::lock(v99);
      if (v100)
      {
        v101 = *(this + 47);
        if (v101)
        {
          SipStack::handleCallEvent(*(this + 47), a2);
          v102 = 1;
        }

        else
        {
          v102 = 0;
        }
      }

      else
      {
        v102 = 0;
        v101 = 0;
      }
    }

    else
    {
      v102 = 0;
      v101 = 0;
      v100 = 0;
    }

    v103 = *(a2 + 2);
    if (v103 > 7)
    {
      if (v103 > 21)
      {
        if (v103 == 22)
        {
          if (!*(this + 51))
          {
            goto LABEL_369;
          }

          v117 = **a2;
          if (!v118)
          {
            goto LABEL_369;
          }

          v119 = v118;
          v120 = v118[4];
          v121 = v119[5];
          if (v121)
          {
            atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v122 = SipMessage::header<SipMinSEHeader>(v120);
          if (v121)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v121);
          }

          v124 = this + 8;
          v123 = *(this + 1);
          if (!v122)
          {
            v107 = (*(v123 + 56))(this + 8);
            (*(*v124 + 16))(this + 8, v107);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v107 + 8), "no Min-SE header in Interval Too Small response", 47);
            *(v107 + 17) = 0;
            (*(*v107 + 64))(v107, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            goto LABEL_363;
          }

          v125 = (*(v123 + 64))(this + 8);
          (*(*v124 + 16))(this + 8, v125);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v125 + 8), "received 422 response for initial invite.  Starting over in new dialog with Min-SE = ", 85);
          *(v125 + 17) = 0;
          MEMORY[0x1E6923350](*(v125 + 8), v122[26]);
          *(v125 + 17) = 0;
          (*(*v125 + 64))(v125, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v125 + 17) = 0;
          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v224 = 0u;
          memset(v225, 0, sizeof(v225));
          BambiCallOptions::BambiCallOptions(&v224, (*(this + 51) + 840));
          v265 = 0;
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
          v251 = 0u;
          v252 = 0u;
          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          v246 = 0u;
          memset(buf, 0, sizeof(buf));
          SipUri::SipUri(buf, (this + 1080));
          v225[5] = v122[26];
          BambiCall::initializeMobileOriginated(this, buf, __p);
          ImsResult::~ImsResult(__p);
          if (BYTE2(v225[8]))
          {
            v126 = "InitialInvite";
          }

          else
          {
            v126 = "EmptyInvite";
          }

          SipSession::sendInvite(*(this + 51), v126, &v222);
          ImsResult::~ImsResult(&v222);
          *(this + 492) = 0;
          SipUri::~SipUri(buf);
          v127 = &v224;
          goto LABEL_368;
        }

        if (v103 != 23)
        {
          if (v103 == 32)
          {
            if (!*(this + 51))
            {
              goto LABEL_369;
            }

            v104 = **a2;
            if (!v105)
            {
              goto LABEL_369;
            }

            v106 = *(this + 461) + 1;
            *(this + 461) = v106;
            if (v106 >= 4)
            {
              v107 = (*(*(this + 1) + 56))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v107);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v107 + 8), "too many subsequent redirection requests.", 41);
              *(v107 + 17) = 0;
              (*(*v107 + 64))(v107, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_363:
              *(v107 + 17) = 0;
LABEL_369:
              LOBYTE(v13) = 0;
              goto LABEL_370;
            }

            v153 = v105;
            v154 = time(0);
            v155 = v153[110];
            v157 = this + 8;
            v156 = *(this + 1);
            if (v155 && v155 < v154)
            {
              v107 = (*(v156 + 56))(this + 8);
              (*(*v157 + 16))(this + 8, v107);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v107 + 8), "received session moved response to initial invite with expired contact.", 71);
              *(v107 + 17) = 0;
              (*(*v107 + 64))(v107, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_363;
            }

            v169 = (*(v156 + 64))(this + 8);
            (*(*v157 + 16))(this + 8, v169);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v169 + 8), "received session moved response for initial invite.  Redialing to new URI ", 74);
            *(v169 + 17) = 0;
            v171 = *(v153 + 4);
            v170 = (v153 + 8);
            (*(v171 + 40))(v170, v169);
            (*(*v169 + 64))(v169, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v169 + 17) = 0;
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
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            memset(buf, 0, sizeof(buf));
            BambiCallOptions::BambiCallOptions(buf, (*(this + 51) + 840));
            BambiCall::initializeMobileOriginated(this, v170, &v224);
            ImsResult::~ImsResult(&v224);
            if (buf[2].__r_.__value_.__s.__data_[2])
            {
              v172 = "InitialInvite";
            }

            else
            {
              v172 = "EmptyInvite";
            }

            SipSession::sendInvite(*(this + 51), v172, __p);
            ImsResult::~ImsResult(__p);
            *(this + 492) = 0;
            v127 = buf;
LABEL_368:
            BambiCallOptions::~BambiCallOptions(&v127->__r_.__value_.__l.__data_);
            goto LABEL_369;
          }

LABEL_370:
          v173 = *(this + 54);
          if (v173)
          {
            v174 = std::__shared_weak_count::lock(v173);
            if (v174)
            {
              v175 = v174;
              v176 = *(this + 53);
              v177 = v13 ^ 1;
              if (!v176)
              {
                v177 = 1;
              }

              if ((v177 & 1) == 0)
              {
                v178 = *(this + 51);
                if (v178 && !(*(*v178 + 264))(v178))
                {
                  (*(*v176 + 16))(v176, a2);
                }

                else
                {
                  v180 = *(this + 1);
                  v179 = this + 8;
                  v181 = (*(v180 + 64))(v179);
                  (*(*v179 + 16))(v179, v181);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v181 + 8), "call ended while processing ", 28);
                  *(v181 + 17) = 0;
                  (*(*a2 + 24))(buf, a2);
                  (*(*v181 + 40))(v181, buf);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v181 + 8), " event", 6);
                  *(v181 + 17) = 0;
                  (*(*v181 + 64))(v181, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v181 + 17) = 0;
                  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf[0].__r_.__value_.__l.__data_);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v175);
            }
          }

          if (v100)
          {
LABEL_382:
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
            goto LABEL_383;
          }

          goto LABEL_383;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "PreconditionsSatisfied");
        BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
LABEL_296:
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_370;
      }

      if (v103 == 8)
      {
        if (!*(this + 216))
        {
          *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
          gettimeofday(buf, 0);
          *(this + 216) = 1000 * buf[0].__r_.__value_.__r.__words[0] + SLODWORD(buf[0].__r_.__value_.__r.__words[1]) / 1000 + 2208988800000;
        }

        if (*(*(this + 51) + 1500) != 2)
        {
          goto LABEL_370;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "SessionProgress");
        BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
        goto LABEL_296;
      }

      if (v103 != 9)
      {
        goto LABEL_370;
      }

      v108 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v108);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v108 + 8), "confirmed session with ", 23);
      *(v108 + 17) = 0;
      (*(*(this + 135) + 40))(this + 1080, v108);
      (*(*v108 + 64))(v108, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v108 + 17) = 0;
      if (v102)
      {
        v110 = *(v101 + 280);
        v109 = *(v101 + 288);
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "successful call");
        SipTransportLayer::resetTransportErrors(v110, buf);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }

        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }
      }

      *(this + 58) = time(0);
      *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
      gettimeofday(buf, 0);
      *(this + 222) = 1000 * buf[0].__r_.__value_.__r.__words[0] + SLODWORD(buf[0].__r_.__value_.__r.__words[1]) / 1000 + 2208988800000;
      v111 = *(this + 24);
      if (v111)
      {
        SDPSession::enableRTCPBandwidthSpecifiers(v111);
      }

      if (!v102 || *(v101 + 2809) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "SessionConfirmed");
        BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
        goto LABEL_296;
      }

      v215[0] = MEMORY[0x1E69E9820];
      v215[1] = 0x40000000;
      v215[2] = ___ZN9BambiCall16processCallEventEP14BambiCallEvent_block_invoke;
      v215[3] = &__block_descriptor_tmp_56;
      v215[4] = this;
      v224 = 0uLL;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v224, this + 19);
      v112 = *(this + 21);
      buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      buf[0].__r_.__value_.__l.__size_ = 1174405120;
      buf[0].__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      buf[1].__r_.__value_.__r.__words[0] = &unk_1F5ED3A80;
      *&buf[1].__r_.__value_.__r.__words[2] = v224;
      if (*(&v224 + 1))
      {
        atomic_fetch_add_explicit((*(&v224 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      buf[1].__r_.__value_.__l.__size_ = v215;
      dispatch_async(v112, buf);
      if (buf[2].__r_.__value_.__r.__words[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf[2].__r_.__value_.__l.__data_);
      }

      v113 = *(&v224 + 1);
      if (!*(&v224 + 1))
      {
        goto LABEL_370;
      }

LABEL_317:
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      goto LABEL_370;
    }

    if (v103 <= 3)
    {
      if (v103 == 2)
      {
        *(this + 1530) = 1;
        *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
        gettimeofday(buf, 0);
        *(this + 218) = 1000 * buf[0].__r_.__value_.__r.__words[0] + SLODWORD(buf[0].__r_.__value_.__r.__words[1]) / 1000 + 2208988800000;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 19);
        v114 = *&buf[0].__r_.__value_.__l.__data_;
        if (buf[0].__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((buf[0].__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v114 + 1));
          atomic_fetch_add_explicit((*(&v114 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        if (v102 && *(v101 + 2812))
        {
          if (*(&v114 + 1))
          {
            atomic_fetch_add_explicit((*(&v114 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v244 = 0;
          operator new();
        }

        v132 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v132);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v132 + 8), "no auto-ring timer set", 22);
        *(v132 + 17) = 0;
        (*(*v132 + 64))(v132, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v132 + 17) = 0;
        if (*(this + 1841) == 1)
        {
          v133 = dispatch_time(0, 500);
          ims::getQueue(buf);
          v134 = buf[0].__r_.__value_.__r.__words[0];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 1174405120;
          block[2] = ___ZN9BambiCall16processCallEventEP14BambiCallEvent_block_invoke_2;
          block[3] = &__block_descriptor_tmp_59_1;
          block[4] = this;
          v214 = v114;
          if (*(&v114 + 1))
          {
            atomic_fetch_add_explicit((*(&v114 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          dispatch_after(v133, v134, block);
          if (v134)
          {
            dispatch_release(v134);
          }

          if (*(&v214 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v214 + 1));
          }
        }

        if (*(&v114 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v114 + 1));
          std::__shared_weak_count::__release_weak(*(&v114 + 1));
        }

        goto LABEL_370;
      }

      if (v103 != 3 || *(*(this + 51) + 1500) != 2)
      {
        goto LABEL_370;
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "ProvisionalResponse");
      BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
      goto LABEL_296;
    }

    if (v103 != 4)
    {
      if (v103 != 7)
      {
        goto LABEL_370;
      }

      if (*(*(this + 51) + 1500) != 2)
      {
        v135 = *(this + 48);
        if (v135)
        {
          v135 = std::__shared_weak_count::lock(v135);
          v136 = v135;
          if (v135)
          {
            v135 = *(this + 47);
          }
        }

        else
        {
          v136 = 0;
        }

        v158 = SipStack::prefs(v135);
        v159 = ImsPrefs::StopLocalRingbackToneOn181(v158);
        if (v136)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v136);
        }

        v160 = this + 8;
        v161 = *(*(this + 1) + 64);
        if (v159)
        {
          v162 = v161(this + 8);
          (*(*v160 + 16))(this + 8, v162);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v162 + 8), "Received a 181, stopping local ringback tone", 44);
          *(v162 + 17) = 0;
          (*(*v162 + 64))(v162, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v162 + 17) = 0;
          v163 = *(this + 24);
          v164 = *(v163 + 1912);
          if (v164)
          {
            v165 = v163 + 1912;
            v166 = v163 + 1912;
            do
            {
              if (*(v164 + 32) >= 2)
              {
                v166 = v164;
              }

              v164 = *(v164 + 8 * (*(v164 + 32) < 2));
            }

            while (v164);
            if (v166 != v165 && *(v166 + 32) <= 2)
            {
              v167 = *(v166 + 40);
              if (v167)
              {
                (*(**(this + 49) + 48))(*(this + 49), *(v167 + 48));
              }
            }
          }
        }

        else
        {
          v168 = v161(this + 8);
          (*(*v160 + 16))(this + 8, v168);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v168 + 8), "Received a 181, not stopping local ringback tone", 48);
          *(v168 + 17) = 0;
          (*(*v168 + 64))(v168, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v168 + 17) = 0;
        }

        goto LABEL_370;
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "CallIsBeingForwarded");
      BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
      goto LABEL_296;
    }

    if (!*(this + 216))
    {
      *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
      gettimeofday(buf, 0);
      *(this + 216) = 1000 * buf[0].__r_.__value_.__r.__words[0] + SLODWORD(buf[0].__r_.__value_.__r.__words[1]) / 1000 + 2208988800000;
    }

    if (!*(this + 217))
    {
      *&buf[0].__r_.__value_.__l.__data_ = 0uLL;
      gettimeofday(buf, 0);
      *(this + 217) = 1000 * buf[0].__r_.__value_.__r.__words[0] + SLODWORD(buf[0].__r_.__value_.__r.__words[1]) / 1000 + 2208988800000;
    }

    v115 = *(this + 48);
    if (v115)
    {
      v115 = std::__shared_weak_count::lock(v115);
      v116 = v115;
      if (v115)
      {
        v115 = *(this + 47);
      }
    }

    else
    {
      v116 = 0;
    }

    v137 = SipStack::prefs(v115);
    if (ImsPrefs::EnableRingbackAudioForTextCalls(v137))
    {
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }
    }

    else
    {
      if (*(this + 784))
      {
        if (!v116)
        {
          goto LABEL_370;
        }

        v113 = v116;
        goto LABEL_317;
      }

      v138 = *(this + 785);
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      if (v138)
      {
        goto LABEL_370;
      }
    }

    if (*(*(this + 51) + 1500) == 2)
    {
      if (*(this + 122) != 4)
      {
        v139 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v139);
        v140 = ImsOutStream::operator<<(v139, "early media is enforced. Activating session for network ringback tone.");
        (*(*v140 + 64))(v140, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v140[17] = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "Ringing");
      BambiCall::activateAllMediaSessionIfAppropriate(this, buf);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (*(this + 122) != 4)
      {
        goto LABEL_370;
      }

      v141 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v141);
      v142 = ImsOutStream::operator<<(v141, "early media is enforced. Activating session and starting local ringback tone.");
      (*(*v142 + 64))(v142, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v142[17] = 0;
      v143 = *(this + 24);
      v144 = *(v143 + 1912);
      if (!v144)
      {
        goto LABEL_370;
      }

      v145 = v143 + 1912;
      v146 = v143 + 1912;
      do
      {
        if (*(v144 + 32) >= 2)
        {
          v146 = v144;
        }

        v144 = *(v144 + 8 * (*(v144 + 32) < 2));
      }

      while (v144);
      if (v146 == v145)
      {
        goto LABEL_370;
      }

      if (*(v146 + 32) > 2)
      {
        goto LABEL_370;
      }

      v147 = *(v146 + 40);
      if (!v147)
      {
        goto LABEL_370;
      }
    }

    else
    {
      v148 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v148);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v148 + 8), "early media is not enforced. Starting local ringback tone.", 58);
      *(v148 + 17) = 0;
      (*(*v148 + 64))(v148, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v148 + 17) = 0;
      v149 = *(this + 24);
      v150 = *(v149 + 1912);
      if (!v150)
      {
        goto LABEL_370;
      }

      v151 = v149 + 1912;
      v152 = v149 + 1912;
      do
      {
        if (*(v150 + 32) >= 2)
        {
          v152 = v150;
        }

        v150 = *(v150 + 8 * (*(v150 + 32) < 2));
      }

      while (v150);
      if (v152 == v151)
      {
        goto LABEL_370;
      }

      if (*(v152 + 32) > 2)
      {
        goto LABEL_370;
      }

      v147 = *(v152 + 40);
      if (!v147)
      {
        goto LABEL_370;
      }
    }

    (*(**(this + 49) + 40))(*(this + 49), *(v147 + 48));
    goto LABEL_370;
  }

  v128 = (*(*(this + 1) + 64))(this + 8);
  (*(*(this + 1) + 16))(this + 8, v128);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v128 + 8), "suppressing call event ", 23);
  *(v128 + 17) = 0;
  (*(*a2 + 16))(a2, v128);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v128 + 8), " for hidden call ", 17);
  *(v128 + 17) = 0;
  ObfuscatedString::ObfuscatedString(buf, this + 21);
  (*(*v128 + 56))(v128, buf);
  (*(*v128 + 64))(v128, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v128 + 17) = 0;
  if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  v129 = *(this + 54);
  if (v129)
  {
    v130 = std::__shared_weak_count::lock(v129);
    if (v130)
    {
      v100 = v130;
      v131 = *(this + 53);
      if (v131)
      {
        (*(*v131 + 288))(v131, a2);
      }

      goto LABEL_382;
    }
  }

LABEL_383:
  v182 = *MEMORY[0x1E69E9840];
}

void sub_1E4E4C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiCall::activateAllMediaSessionIfAppropriate(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 192);
  if (!v2)
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = &unk_1F5EBDEF8;
  v16 = &_bambiDomain;
  v17 = 0;
  v3 = *(v2 + 1904);
  v4 = (v2 + 1912);
  if (v3 != (v2 + 1912))
  {
    while (1)
    {
      v7 = BambiCall::activateMediaSessionIfAppropriate(a1, v3[5], a2);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v22 = &unk_1F5EBDEF8;
      v23 = &_bambiDomain;
      v8 = v7 ? 0 : 0x40000000;
      v24 = v8;
      v25 = 0uLL;
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

      v9 = v17;
      ImsResult::~ImsResult(&v22);
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

      goto LABEL_17;
    }

    ImsResult::~ImsResult(&v22);
  }

LABEL_17:
  v13 = (*(*v16 + 24))(v16, v17) ^ 1;
  ImsResult::~ImsResult(&v15);
  return v13;
}

void ___ZN9BambiCall16processCallEventEP14BambiCallEvent_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&__p, "DeferredSessionConfirmed");
  BambiCall::activateAllMediaSessionIfAppropriate(v1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E4CB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9BambiCall16processCallEventEP14BambiCallEvent_block_invoke_2(void *a1)
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
        BambiCall::textSessionDetected(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9BambiCallEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void BambiCall::internalStart(BambiCall *this@<X0>, uint64_t a2@<X8>)
{
  v21.tv_sec = 0;
  *&v21.tv_usec = 0;
  gettimeofday(&v21, 0);
  *(this + 218) = 1000 * v21.tv_sec + v21.tv_usec / 1000 + 2208988800000;
  *(this + 216) = 0;
  v4 = *(this + 48);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 51);
      if (v6)
      {
        v7 = *(this + 47);
        if (v7)
        {
          v8 = *(v7 + 248);
          v9 = *(v7 + 256);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ImsRandomStringGenerator::randomString((v8 + 688), 24, &v21);
          std::string::operator=(v6 + 63, &v21);
          if (SBYTE7(v22) < 0)
          {
            operator delete(v21.tv_sec);
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          v10 = *(this + 51);
          v11 = *(v10 + 240);
          v12 = *(v10 + 248);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipDialog::updateLocalUri(v11);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0;
  v20[0] = 0;
  v20[1] = 0;
  BambiCall::initializeMediaForSession(&v21, this, v20);
  if ((*(**&v21.tv_usec + 24))(*&v21.tv_usec, v22))
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14[0] = &unk_1F5EBDEF8;
    v14[1] = &_bambiDomain;
    v15 = 1073741826;
    v13 = ImsResult::operator<<<char [26]>(v14, "No media session for call");
    ims::result::resultWithCause(v13, &v21, v20);
  }

  ImsResult::ImsResult(a2, &v21);
  ImsResult::~ImsResult(&v21);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E4CE9C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiCall::detachSipSession(BambiCall *this)
{
  if (*(this + 51))
  {
    v2 = (this + 8);
    v3 = (*(*(this + 1) + 64))(this + 8);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "detaching SipSession", 20);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    v4 = v2[50];
    v6[0] = 0;
    v6[1] = 0;
    SipSession::setCall(v4, v6);
    v5 = v2[51];
    *(this + 51) = 0;
    *(this + 52) = 0;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void BambiCall::lendSipSession(BambiCall *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 8);
  v5 = (*(*(this + 1) + 64))(this + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Lending SipSession. This call object will return false for isValid()", 68);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = v4[51];
  *a2 = v4[50];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(this + 52);
    v4[50] = 0;
    v4[51] = 0;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v4[50] = 0;
    v4[51] = 0;
  }
}

uint64_t BambiCall::shouldFakeLocalQOS(BambiCall *this)
{
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
        isWifi = ims::AccessNetwork::isWifi((v5 + 3432));
        if (isWifi)
        {
          IPTelephonyManager::getBambiClient(&v24, isWifi);
          isWifi = v25;
          v7 = *(v24 + 298);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v7)
          {
            v9 = *(this + 1);
            v8 = this + 8;
            v10 = (*(v9 + 64))(v8);
            (*(*v8 + 16))(v8, v10);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "faking QoS indication for WiFi call", 35);
            *(v10 + 17) = 0;
            (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v10 + 17) = 0;
LABEL_32:
            v11 = 1;
            goto LABEL_25;
          }
        }

        if ((*(v5 + 2772) & 1) == 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          IPTelephonyManager::getBambiClient(&v24, isWifi);
          for (i = *(v24 + 46); i; i = *i)
          {
            std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](&v29, i + 1);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v14 = v29;
          v13 = v30;
          while (1)
          {
            if (v14 == v13)
            {
              v18 = *(this + 1);
              v17 = this + 8;
              v19 = (*(v18 + 64))(v17);
              (*(*v17 + 16))(v17, v19);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "no existing calls with QoS established", 38);
              *(v19 + 17) = 0;
              (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v19 + 17) = 0;
              v24 = &v29;
              std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v24);
              goto LABEL_24;
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v24, this + 19);
            v15 = *v14;
            v16 = v24;
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

            if (v15 != v16 && (*v14)[17].__r_.__value_.__r.__words[0] && (*v14)[20].__r_.__value_.__s.__data_[15] == 1)
            {
              break;
            }

            v14 += 2;
          }

          v22 = *(this + 1);
          v21 = this + 8;
          v23 = (*(v22 + 64))(v21);
          (*(*v21 + 16))(v21, v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "QoS already established for call ", 33);
          *(v23 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&v24, *v14 + 21);
          (*(*v23 + 56))(v23, &v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ". Faking QoS indication.", 24);
          *(v23 + 17) = 0;
          (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v23 + 17) = 0;
          if (v28 < 0)
          {
            operator delete(__p);
          }

          if (v26 < 0)
          {
            operator delete(v24);
          }

          v24 = &v29;
          std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v24);
          goto LABEL_32;
        }
      }

LABEL_24:
      v11 = 0;
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return v11;
    }
  }

  return 0;
}

void sub_1E4E4D51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a10 = &a16;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

double BambiCall::ring@<D0>(int8x8_t *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelTimer(this + 26, "AutoRingTimer");
  v4 = this[51];
  if (v4)
  {

    SipSession::sendRingingNotification(v4, a2);
  }

  else
  {
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741826;
  }

  return result;
}

void BambiCall::answer(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::operator=((a1 + 992), a2);
  v5 = *(a1 + 384);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6 || (v7 = *(a1 + 376)) == 0)
  {
LABEL_11:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0x40000000;
    if (!v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v8 = *(v7 + 3144);
  v9 = *(v7 + 3152);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, (a1 + 152));
  (*(*v8 + 128))(v8, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_12:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4E4D740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

double BambiCall::answerFromHandler@<D0>(BambiCall *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 8);
  v4 = (*(*(this + 1) + 64))(this + 8);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "BambiCall::answerFromHandler", 28);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = v3[50];
  if (v5)
  {

    SipSession::acceptInvitation(v5, a2);
  }

  else
  {
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741826;
  }

  return result;
}

void BambiCall::endWithReason(BambiCall *a1@<X0>, uint64_t a2@<X8>)
{
  BambiCall::terminationReason(a1, v4);
  BambiCall::endWithReason(a1, v4, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_1E4E4D948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void BambiCall::endWithReason(BambiCall *this@<X0>, const BambiCallTerminationReason *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (this + 8);
  v7 = (*(*(this + 1) + 64))(this + 8);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "BambiCall::endWithReason", 24);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (!v6[50])
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20[0] = &unk_1F5EBDEF8;
    v20[1] = &_bambiDomain;
    v21 = 1073741826;
    v10 = ImsResult::operator<<<char [15]>(v20, "no SIP session");
    v11 = ImsLogContainer::logResult(v6, v10);
    ImsResult::ImsResult(a3, v11);
    ImsResult::~ImsResult(v20);
    return;
  }

  SipTimerContainer::cancelTimer(this + 26, "MediaTimeoutDeferTimer");
  v8 = a2 + 8;
  v9 = *(a2 + 31);
  if (v9 < 0)
  {
    if (*(a2 + 2) != 5)
    {
LABEL_12:
      SipSession::hangUp(*(this + 51), a3);
      return;
    }

    v8 = *v8;
  }

  else if (v9 != 5)
  {
    goto LABEL_12;
  }

  v12 = *v8;
  v13 = v8[4];
  if (v12 != *"SRVCC" || v13 != str_7_10[4])
  {
    goto LABEL_12;
  }

  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  BambiCall::silentHangUp(this, *(a2 + 16), a3);
  v15 = *(this + 49);
  if (v15)
  {
    RTPManager::srvccHandoverCompleted(v15);
  }

  v16 = *(this + 48);
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = v17;
      v19 = *(this + 47);
      if (v19)
      {
        SipStack::handleSRVCCRequested(v19);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_1E4E4DBC4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  ImsResult::~ImsResult(v1);
  _Unwind_Resume(a1);
}

void BambiCall::terminationReason(uint64_t a1@<X0>, BambiCallTerminationReason *a2@<X8>)
{
  v4 = *(a1 + 384);
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    if (v4)
    {
      v5 = *(a1 + 376);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (v5)
      {
        v6 = *(a1 + 384);
        if (v6)
        {
          v6 = std::__shared_weak_count::lock(v6);
          if (v6)
          {
            v6 = *(a1 + 376);
          }
        }

        SipStack::callTerminationReason(v6);
      }
    }
  }

  v7 = BambiCallTerminationReasons::defaultReason(v4);

  BambiCallTerminationReason::BambiCallTerminationReason(a2, v7);
}

void sub_1E4E4DCD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::silentHangUp(uint64_t a1@<X0>, int a2@<W1>, ImsResult *a3@<X8>)
{
  v5 = *(a1 + 408);
  if (v5)
  {

    SipSession::silentHangUp(v5, a2, a3);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8[0] = &unk_1F5EBDEF8;
    v8[1] = &_bambiDomain;
    v9 = 1073741826;
    v6 = ImsResult::operator<<<char [15]>(v8, "no SIP session");
    v7 = ImsLogContainer::logResult(a1 + 8, v6);
    ImsResult::ImsResult(a3, v7);
    ImsResult::~ImsResult(v8);
  }
}

void sub_1E4E4DDB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void BambiCall::suspendWithMediaError(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 1727) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 1712))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 1727))
  {
    goto LABEL_3;
  }

  v9 = a1 + 8;
  v10 = (*(*(a1 + 8) + 48))(a1 + 8);
  (*(*v9 + 16))(a1 + 8, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Continuing SIP session despite media timeout ", 45);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  std::string::operator=((a1 + 1704), a2);
LABEL_3:
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, (a1 + 152));
  v6 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 384);
  if (v7)
  {
    v7 = std::__shared_weak_count::lock(v7);
    v8 = v7;
    if (v7)
    {
      v7 = *(a1 + 376);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = SipStack::prefs(v7);
  v12 = ImsPrefs::EmergencyMediaTimeoutDeferalTimerSeconds(v11);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v12)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = 0;
    operator new();
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4E4E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void BambiCall::deferredEndWithReason(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4002000000;
  v7[3] = __Block_byref_object_copy__1;
  v7[4] = __Block_byref_object_dispose__1;
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN9BambiCall21deferredEndWithReasonERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v6[3] = &unk_1E876A190;
  v6[4] = v7;
  v6[5] = a1;
  v11 = 0;
  v12 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, (a1 + 152));
  v5 = *(a1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5ED3A80;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  _Block_object_dispose(v7, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN9BambiCall21deferredEndWithReasonERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (v2 + 8);
  v4 = (*(*(v2 + 1) + 64))(v2 + 1);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "BambiCall::deferredEndWithReason", 32);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (*(v2 + 51))
  {
    v5 = *(*(a1 + 32) + 8) + 40;
    BambiCall::endWithReason(v2, v8);
    ImsResult::~ImsResult(v8);
  }

  else
  {
    v6 = (*(*(v2 + 1) + 64))(v3);
    (*(*(v2 + 1) + 16))(v3, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No valid SIP session, invalidating call...", 42);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    v7 = *(*v2 + 48);

    v7(v2);
  }
}

uint64_t BambiCall::senderIsPrivate(BambiCall *this)
{
  v1 = *(this + 51);
  if (v1)
  {
    v2 = *(v1 + 240);
    v3 = *(v1 + 248);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      v4 = *(this + 51);
      v6 = *(v4 + 240);
      v5 = *(v4 + 248);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(v6 + 2760);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        if (!v3)
        {
          return v7 & 1;
        }
      }

      else
      {
        v7 = *(v6 + 2760);
        if (!v3)
        {
          return v7 & 1;
        }
      }

      goto LABEL_10;
    }

    v7 = 0;
    if (v3)
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

ImsOutStream *BambiCall::printCallInfo(BambiCall *this, ImsOutStream *a2, int a3)
{
  v6 = *(this + 51);
  if (v6)
  {
    (*(*v6 + 248))(v6, a2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Local Hold State: ", 20);
  *(a2 + 17) = 0;
  v7 = *(this + 120);
  if (v7 == 3)
  {
    v27.__r_.__value_.__r.__words[2] = 0x400000000000000;
    v8 = "held";
  }

  else if (v7 == 2)
  {
    v27.__r_.__value_.__r.__words[2] = 0x700000000000000;
    v8 = "holding";
  }

  else if (v7)
  {
    v27.__r_.__value_.__r.__words[2] = 0x700000000000000;
    v8 = "resumed";
  }

  else
  {
    v27.__r_.__value_.__r.__words[2] = 0x800000000000000;
    v8 = "resuming";
  }

  *&v27.__r_.__value_.__l.__data_ = *v8;
  LoggableString::LoggableString(&__p, &v27);
  (*(*a2 + 40))(a2, &__p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  media direction:    ", 22);
  *(a2 + 17) = 0;
  ims::toString<MediaDirection>(this + 121, &v27);
  LoggableString::LoggableString(&__p, &v27);
  (*(*a2 + 40))(a2, &__p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Created:        ", 18);
  *(a2 + 17) = 0;
  ims::formatTimeAndIntervalFromNow(*(this + 57), a2, v9);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 58))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Confirmed:      ", 18);
    *(a2 + 17) = 0;
    ims::formatTimeAndIntervalFromNow(*(this + 58), a2, v10);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  v11 = *(this + 24);
  if (v11)
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = &unk_1F5EBDEF8;
    v21 = &_bambiDomain;
    v22 = 0;
    v12 = *(v11 + 1904);
    v13 = (v11 + 1912);
    if (v12 != (v11 + 1912))
    {
      while (1)
      {
        v14 = v12[5];
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Media Session:  ", 18);
        *(a2 + 17) = 0;
        MEMORY[0x1E69233B0](*(a2 + 1), *(v14 + 48));
        *(a2 + 17) = 0;
        (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(a2 + 17) = 0;
        if (a3 && *(v14 + 48))
        {
          *&v27.__r_.__value_.__l.__data_ = 0uLL;
          BambiCall::localSdp(this, &v27);
          if (v27.__r_.__value_.__r.__words[0])
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  SDP:", 6);
            *(a2 + 17) = 0;
            (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(a2 + 17) = 0;
            (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(a2 + 17) = 0;
            (*(*v27.__r_.__value_.__l.__data_ + 16))(v27.__r_.__value_.__r.__words[0], a2);
            (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(a2 + 17) = 0;
          }

          if (v27.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
          }
        }

        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        __p.__r_.__value_.__l.__size_ = &_bambiDomain;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
        ImsResult::operator=(&v20, &__p);
        ImsResult::~ImsResult(&__p);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        __p.__r_.__value_.__l.__size_ = &_bambiDomain;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
        if (v21 != &_bambiDomain)
        {
          break;
        }

        v15 = v22;
        ImsResult::~ImsResult(&__p);
        if (!v15)
        {
          v16 = v12[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v12[2];
              v18 = *v17 == v12;
              v12 = v17;
            }

            while (!v18);
          }

          v12 = v17;
          if (v17 != v13)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      ImsResult::~ImsResult(&__p);
    }

LABEL_38:
    ImsResult::~ImsResult(&v20);
  }

  return a2;
}

void sub_1E4E4EB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCall::checkForActivate(BambiCall *this, unsigned int a2, int a3)
{
  v5 = *(this + 24);
  if (!v5 || (SDPSession::hasStream(v5) & 1) == 0)
  {
    if (!a3)
    {
      return 0;
    }

    v15 = *(this + 1);
    v14 = this + 8;
    v16 = (*(v15 + 56))(v14);
    (*(*v14 + 16))(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "checkForActivate: no media session for call ", 44);
    *(v16 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v39, (v14 + 496));
    (*(*v16 + 56))(v16, v39);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_15:
    *(v16 + 17) = 0;
    goto LABEL_16;
  }

  v7 = *(this + 51);
  if (!v7)
  {
    if (!a3)
    {
      return 0;
    }

    v18 = *(this + 1);
    v17 = this + 8;
    v16 = (*(v18 + 56))(v17);
    (*(*v17 + 16))(v17, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "checkForActivate: no SIP session for call ", 42);
    *(v16 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v39, (v17 + 496));
    (*(*v16 + 56))(v16, v39);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_15;
  }

  if ((SipSession::confirmed(v7) & 1) == 0)
  {
    if (a3)
    {
      v20 = *(this + 1);
      v19 = this + 8;
      v10 = (*(v20 + 64))(v19);
      (*(*v19 + 16))(v19, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "checkForActivate: session ", 26);
      *(v10 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v39, (v19 + 496));
      (*(*v10 + 56))(v10, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " is not confirmed, so call can't be made ", 41);
      *(v10 + 17) = 0;
      if (a2)
      {
        v11 = "active";
      }

      else
      {
        v11 = "inactive";
      }

      v12 = *(v10 + 8);
      if (a2)
      {
        v13 = 6;
      }

      else
      {
        v13 = 8;
      }

      goto LABEL_29;
    }

    return 0;
  }

  if ((*(**(this + 51) + 264))(*(this + 51)))
  {
    if (a3)
    {
      v9 = *(this + 1);
      v8 = this + 8;
      v10 = (*(v9 + 64))(v8);
      (*(*v8 + 16))(v8, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "checkForActivate: session ", 26);
      *(v10 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v39, (v8 + 496));
      (*(*v10 + 56))(v10, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " is terminated, so call can't be made ", 38);
      *(v10 + 17) = 0;
      if (a2)
      {
        v11 = "active";
      }

      else
      {
        v11 = "inactive";
      }

      v12 = *(v10 + 8);
      if (a2)
      {
        v13 = 6;
      }

      else
      {
        v13 = 8;
      }

LABEL_29:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v11, v13);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
LABEL_16:
      if (v42 < 0)
      {
        operator delete(__p);
      }

LABEL_18:
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      return 0;
    }

    return 0;
  }

  if (SipSession::terminating(*(this + 51)))
  {
    if (a3)
    {
      v22 = *(this + 1);
      v21 = this + 8;
      v23 = (*(v22 + 64))(v21);
      (*(*v21 + 16))(v21, v23);
      v24 = ImsOutStream::operator<<(v23, "checkForActivate: session ");
      ObfuscatedString::ObfuscatedString(v39, (v21 + 496));
      (*(*v24 + 56))(v24, v39);
      v25 = ImsOutStream::operator<<(v24, " is terminating, so call can't be made ");
      if (a2)
      {
        v26 = "active";
      }

      else
      {
        v26 = "inactive";
      }

      v27 = ImsOutStream::operator<<(v25, v26);
      (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v27[17] = 0;
      ims::AccessNetwork::~AccessNetwork(v39);
    }

    return 0;
  }

  result = ((*(this + 120) & 0xFFFFFFFE) != 2) ^ a2;
  if (((((*(this + 120) & 0xFFFFFFFE) != 2) ^ a2) & 1) == 0 && a3)
  {
    v30 = *(this + 1);
    v29 = (this + 8);
    v31 = (*(v30 + 64))(v29);
    (*(*v29 + 16))(v29, v31);
    v32 = ImsOutStream::operator<<(v31, "checkForActivate: already ");
    v33 = v32;
    v34 = v29[118];
    if (v34 == 3)
    {
      v40 = 0x400000000000000;
      v35 = "held";
    }

    else if (v34 == 2)
    {
      v40 = 0x700000000000000;
      v35 = "holding";
    }

    else if (v34)
    {
      v40 = 0x700000000000000;
      v35 = "resumed";
    }

    else
    {
      v40 = 0x800000000000000;
      v35 = "resuming";
    }

    *v39 = *v35;
    (*(*v32 + 32))(v32, v39);
    v36 = ImsOutStream::operator<<(v33, ", so call can't be made ");
    if (a2)
    {
      v37 = "active";
    }

    else
    {
      v37 = "inactive";
    }

    v38 = ImsOutStream::operator<<(v36, v37);
    (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v38[17] = 0;
    goto LABEL_18;
  }

  return result;
}

void sub_1E4E4F344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::performLocalHold(BambiCall *this)
{
  if (BambiCall::checkForActivate(this, 0, 1))
  {
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
          v6 = *(v5 + 3144);
          v7 = *(v5 + 3152);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 19);
          (*(*v6 + 104))(v6, &v8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }
}

void sub_1E4E4F44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiCall::performLocalResume(BambiCall *this)
{
  if (BambiCall::checkForActivate(this, 1u, 1))
  {
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
          v6 = *(v5 + 3144);
          v7 = *(v5 + 3152);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 19);
          (*(*v6 + 112))(v6, &v8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }
}

void sub_1E4E4F54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiCall::performLocalHoldFromHandler(BambiCall *this)
{
  v2 = *(this + 51);
  if (!v2 || !SipSession::confirmed(v2) || (v3 = *(this + 51)) != 0 && (SipSession::terminating(v3) || (v4 = *(this + 51)) != 0 && ((*(*v4 + 264))(v4) & 1) != 0) || (SDPSession::hasStream(*(this + 24)) & 1) != 0)
  {
    if (BambiCall::checkForActivate(this, 0, 1))
    {
      v5 = *(this + 24);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = &unk_1F5EBDEF8;
      v21 = &_bambiDomain;
      v22 = 0;
      v6 = *(v5 + 1904);
      v7 = (v5 + 1912);
      if (v6 != (v5 + 1912))
      {
        while (1)
        {
          v8 = *(this + 49);
          v9 = *(v6[5] + 48);
          v10 = TelephonyRadiosGetRadioVendor() == 1 ? 2 : 4;
          RTPManager::deactivateSessionWithId(v8, v9, v10);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          block = &unk_1F5EBDEF8;
          v31 = &_bambiDomain;
          LODWORD(v32) = 0;
          ImsResult::operator=(&v20, &block);
          ImsResult::~ImsResult(&block);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          block = &unk_1F5EBDEF8;
          v31 = &_bambiDomain;
          LODWORD(v32) = 0;
          if (v21 != &_bambiDomain)
          {
            break;
          }

          v12 = v22;
          ImsResult::~ImsResult(v11);
          if (!v12)
          {
            v13 = v6[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v6[2];
                v15 = *v14 == v6;
                v6 = v14;
              }

              while (!v15);
            }

            v6 = v14;
            if (v14 != v7)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        ImsResult::~ImsResult(v11);
      }

LABEL_29:
      ImsResult::~ImsResult(&v20);
      if (*(this + 51) && *(this + 120) == 1)
      {
        IPTelephonyManager::getBambiClient(&block);
        v17 = block[296];
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if ((v17 & 1) == 0)
        {
          SipSession::sendInvite(*(this + 51), "HoldInvite", &block);
          v18 = (*(*v31 + 24))(v31, v32);
          ImsResult::~ImsResult(&block);
          if ((v18 & 1) == 0)
          {
            *(this + 120) = 2;
            *(this + 59) = time(0);
          }
        }
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZN9BambiCall27performLocalHoldFromHandlerEv_block_invoke;
      v27[3] = &__block_descriptor_tmp_92;
      v27[4] = this;
      v29 = 0uLL;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, this + 19);
      v16 = *(this + 21);
      block = MEMORY[0x1E69E9820];
      v31 = 1174405120;
      v32 = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      *&v33 = &unk_1F5ED3A80;
      v34 = v29;
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *(&v33 + 1) = v27;
      dispatch_async(v16, &block);
      if (*(&v34 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
      }

      if (*(&v29 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
      }
    }
  }

  else
  {
    v19 = (*(*(this + 1) + 56))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "performLocalHold: we're confirmed but don't have a media session. Killing call object.", 86);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    BambiCall::silentHangUp(this, 18, v28);
    ImsResult::~ImsResult(v28);
  }
}

void ___ZN9BambiCall27performLocalHoldFromHandlerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 376);
      if (v5)
      {
        v6 = *(v5 + 3144);
        v7 = *(v5 + 3152);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 136))(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E4FAC8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiCall::performLocalResumeFromHandler(BambiCall *this)
{
  v2 = *(this + 51);
  if (!v2 || !SipSession::confirmed(v2) || (v3 = *(this + 51)) != 0 && (SipSession::terminating(v3) || (v4 = *(this + 51)) != 0 && ((*(*v4 + 264))(v4) & 1) != 0) || (SDPSession::hasStream(*(this + 24)) & 1) != 0)
  {
    if (BambiCall::checkForActivate(this, 1u, 1))
    {
      if (*(this + 51) && *(this + 120) == 3)
      {
        IPTelephonyManager::getBambiClient(&block);
        v5 = *(block + 296);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if ((v5 & 1) == 0)
        {
          SipSession::sendInvite(*(this + 51), "ResumeInvite", &block);
          v6 = (*(*v10 + 24))(v10, v11);
          ImsResult::~ImsResult(&block);
          if ((v6 & 1) == 0)
          {
            *(this + 120) = 0;
            *(this + 59) = 0;
          }
        }
      }
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN9BambiCall29performLocalResumeFromHandlerEv_block_invoke;
      v16[3] = &__block_descriptor_tmp_94;
      v16[4] = this;
      v18 = 0;
      v19 = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, this + 19);
      v7 = *(this + 21);
      block = MEMORY[0x1E69E9820];
      v10 = 1174405120;
      v11 = ___ZNK3ctu20SharedSynchronizableI9BambiCallE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      v12 = &unk_1F5ED3A80;
      v14 = v18;
      v15 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v16;
      dispatch_async(v7, &block);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }

  else
  {
    v8 = (*(*(this + 1) + 56))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "performLocalResume: we're confirmed but don't have a media session. Killing call object.", 88);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    BambiCall::silentHangUp(this, 18, v17);
    ImsResult::~ImsResult(v17);
  }
}

void sub_1E4E4FDC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void ___ZN9BambiCall29performLocalResumeFromHandlerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 384);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 376);
      if (v5)
      {
        v6 = *(v5 + 3144);
        v7 = *(v5 + 3152);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 144))(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E4FE90(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiCall::localHoldFailed(BambiCall *this)
{
  *(this + 120) = 1;
  *(this + 1842) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "SessionHoldFailed");
  v2 = BambiCall::activateAllMediaSessionIfAppropriate(this, __p);
  v3 = v2;
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else if ((v2 & 1) == 0)
  {
    return;
  }

  v4 = *(this + 54);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 53);
      if (v6)
      {
        *__p = 0u;
        v19 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, this + 19);
        BambiCallEvent::BambiCallEvent(__p, 16, &v16);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        (*(*v6 + 16))(v6, __p);
        __p[0] = &unk_1F5EC4090;
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v19 + 1));
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  v8 = *(this + 48);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 47);
      if (v11)
      {
        v12 = *(v11 + 3144);
        v13 = *(v11 + 3152);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v12 + 144))(v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v7)
  {
    BambiCall::sendHoldResumeIndication(this, 0);
    *__p = 0u;
    v19 = 0u;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, this + 19);
    BambiCallEvent::BambiCallEvent(__p, 11, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    (*(*v6 + 16))(v6, __p);
    __p[0] = &unk_1F5EC4090;
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v19 + 1));
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E5010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void BambiCall::localResumeFailed(BambiCall *this)
{
  v2 = *(this + 54);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 53);
      if (v4)
      {
        v16 = 0u;
        *v17 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, this + 19);
        BambiCallEvent::BambiCallEvent(&v16, 17, &v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        (*(*v4 + 16))(v4, &v16);
        *&v16 = &unk_1F5EC4090;
        if (v17[1])
        {
          std::__shared_weak_count::__release_weak(v17[1]);
        }

        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  v6 = *(this + 48);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 47);
      if (v9)
      {
        v10 = *(v9 + 3144);
        v11 = *(v9 + 3152);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v10 + 136))(v10);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v5)
  {
    BambiCall::sendHoldResumeIndication(this, 1);
    v16 = 0u;
    *v17 = 0u;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, this + 19);
    BambiCallEvent::BambiCallEvent(&v16, 13, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    (*(*v4 + 16))(v4, &v16);
    *&v16 = &unk_1F5EC4090;
    if (v17[1])
    {
      std::__shared_weak_count::__release_weak(v17[1]);
    }
  }

  *(this + 120) = 3;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4E503E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void BambiCall::prepareCall(BambiCall *this)
{
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
        if (*(this + 69))
        {
          v6 = v5[564];
          v7 = v5[565];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 19);
          BambiEmergencyCallHandler::prepareCall(v6, &v9, v11);
          ImsResult::~ImsResult(v11);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        else
        {
          *(this + 497) = 1;
          v8 = v5[393];
          v7 = v5[394];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v8 + 152))(v8);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E50578(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

double BambiCall::refer@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 408);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *(*a2 + 408);
  if (!v9)
  {
    goto LABEL_15;
  }

  v13 = *(v9 + 240);
  v12 = *(v9 + 248);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (v13)
    {
      v7 = *(a1 + 408);
      v14 = *(*a2 + 408);
      v16 = *(v14 + 240);
      v15 = *(v14 + 248);
      v21 = v16;
      v22 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_9;
    }

LABEL_15:
    result = 0.0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 1073741826;
    return result;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  v21 = v13;
  v22 = 0;
LABEL_9:
  v17 = a4[1];
  v19 = *a4;
  v20 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSession::refer(v7, &v21, a3, &v19, a5);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  return result;
}

void sub_1E4E50700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t BambiCall::isWPSCall(BambiCall *this)
{
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
        v6 = SipStack::prefs(*(this + 47));
        if (ImsPrefs::IgnoreWPSCallsOverNR(v6) && ((v7 = *(this + 51)) != 0 && (*(v7 + 1782) & 1) != 0 || ims::AccessNetwork::isNR((v5 + 3432))))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          return 0;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  memset(&__p, 0, sizeof(__p));
  isTelUri = SipUri::isTelUri((this + 1080));
  v10 = 1208;
  if (isTelUri)
  {
    v10 = 1256;
  }

  v11 = this + v10;
  if (v11[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
  }

  else
  {
    __p = *v11;
  }

  p_p = &__p;
  v13 = isPhoneNumber(&__p);
  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v13)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size >= 4)
    {
      v16 = p_p + size;
      v17 = p_p;
      do
      {
        v18 = memchr(v17, 42, size - 3);
        if (!v18)
        {
          break;
        }

        if (*v18 == 842478122)
        {
          if (v18 == v16 || v18 - p_p == -1)
          {
            break;
          }

          v8 = 1;
          if ((v14 & 0x80) == 0)
          {
            return v8;
          }

          goto LABEL_30;
        }

        v17 = (v18 + 1);
        size = v16 - v17;
      }

      while (v16 - v17 >= 4);
    }
  }

  v8 = 0;
  if (v14 < 0)
  {
LABEL_30:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void BambiCall::notifyMergedCallInitialized(BambiCall *this)
{
  memset(v5, 0, sizeof(v5));
  v3 = 0u;
  *v4 = 0u;
  v2 = 0uLL;
  BambiCallConferenceEvent::BambiCallConferenceEvent(&v3, 5, &v2);
  (*(*this + 32))(this, &v3);
  *&v3 = &unk_1F5ED0908;
  v6 = v5;
  std::vector<std::weak_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v6);
  *&v3 = &unk_1F5EC4090;
  if (v4[1])
  {
    std::__shared_weak_count::__release_weak(v4[1]);
  }
}

void sub_1E4E50984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BambiCallConferenceEvent::~BambiCallConferenceEvent(va);
  _Unwind_Resume(a1);
}

void BambiCall::setMediaSessionCreated(BambiCall *this)
{
  *(this + 492) = 0;
  v2 = *(this + 51);
  if (!v2)
  {
    v5 = *(this + 1);
    v4 = this + 8;
    v6 = (*(v5 + 56))(v4);
    (*(*v4 + 16))(v4, v6);
    v7 = *(v6 + 8);
    v8 = "BambiCall::setMediaSessionCreated, No SIP session";
    v9 = 49;
LABEL_39:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    return;
  }

  if (SipSession::confirmed(v2))
  {
    goto LABEL_38;
  }

  SipSession::clientInviteTransaction(*(this + 51), &v66);
  if (v66)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 1529);
  }

  if (*(&v66 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
  }

  if ((v3 & 1) == 0)
  {
LABEL_38:
    v26 = *(this + 1);
    v25 = this + 8;
    v6 = (*(v26 + 64))(v25);
    (*(*v25 + 16))(v25, v6);
    v7 = *(v6 + 8);
    v8 = "BambiCall::setMediaSessionCreated() is being ignored";
    v9 = 52;
    goto LABEL_39;
  }

  v10 = *(this + 54);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 53);
      if (v13)
      {
        v66 = 0u;
        *v67 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v64, this + 19);
        BambiCallEvent::BambiCallEvent(&v66, 24, &v64);
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        (*(*v13 + 16))(v13, &v66);
        *&v66 = &unk_1F5EC4090;
        if (*&v67[8])
        {
          std::__shared_weak_count::__release_weak(*&v67[8]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  BambiCall::localSdp(this, &v66);
  v14 = v66;
  if (*(&v66 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
  }

  if (v14)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *v51 = 0u;
    if (*(this + 754))
    {
      v15 = "InitialInvite";
    }

    else
    {
      v15 = "EmptyInvite";
    }

    SipSession::sendInvite(*(this + 51), v15, v51);
    if ((*(*v51[1] + 24))(v51[1], v52))
    {
      v16 = *(this + 24);
      if (SDPSession::hasStream(v16))
      {
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v44 = &unk_1F5EBDEF8;
        v45 = &_bambiDomain;
        v46 = 0;
        v17 = *(v16 + 238);
        v18 = (v16 + 1912);
        if (v17 != (v16 + 1912))
        {
          while (1)
          {
            v19 = v17[5];
            RTPManager::terminateSessionWithId(*(this + 49), v19[6]);
            IPTelephonyManager::getBambiClient(&v71);
            BambiClient::setMediaSessionIdForStream(v71, v19, 0);
            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v72);
            }

            *&v67[8] = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            *&v66 = &unk_1F5EBDEF8;
            *(&v66 + 1) = &_bambiDomain;
            *v67 = 0;
            ImsResult::operator=(&v44, &v66);
            ImsResult::~ImsResult(&v66);
            *&v67[8] = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            *&v66 = &unk_1F5EBDEF8;
            *(&v66 + 1) = &_bambiDomain;
            *v67 = 0;
            if (v45 != &_bambiDomain)
            {
              break;
            }

            v21 = v46;
            ImsResult::~ImsResult(v20);
            if (!v21)
            {
              v22 = v17[1];
              if (v22)
              {
                do
                {
                  v23 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v23 = v17[2];
                  v24 = *v23 == v17;
                  v17 = v23;
                }

                while (!v24);
              }

              v17 = v23;
              if (v23 != v18)
              {
                continue;
              }
            }

            goto LABEL_62;
          }

          ImsResult::~ImsResult(v20);
        }

LABEL_62:
        ImsResult::~ImsResult(&v44);
      }
    }

    else
    {
      v36 = std::__shared_weak_count::lock(*(this + 48));
      v37 = *(this + 47);
      std::string::operator=(this + 67, (v37 + 3432));
      std::string::operator=(this + 68, (v37 + 3456));
      v38 = *(v37 + 3480);
      *(this + 1672) = *(v37 + 3496);
      *(this + 1656) = v38;
      std::string::operator=(this + 64, this + 67);
      std::string::operator=(this + 65, this + 68);
      *(this + 99) = *(this + 1656);
      *(this + 1600) = *(this + 1672);
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      v39 = *(this + 1631);
      if (v39 < 0)
      {
        v39 = *(this + 202);
      }

      if (v39)
      {
        v40 = *(this + 1655);
        if (v40 < 0)
        {
          v40 = *(this + 205);
        }

        if (v40)
        {
          v41 = (*(*(this + 1) + 64))(this + 8);
          (*(*(this + 1) + 16))(this + 8, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "starting MO call on access network ", 35);
          *(v41 + 17) = 0;
          v42 = ims::operator<<(v41, this + 1608);
          (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v42[17] = 0;
        }
      }
    }

    v43 = v51;
  }

  else
  {
    v27 = (*(*(this + 1) + 56))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "BambiCall::setMediaSessionCreated, No SDP for call", 50);
    *(v27 + 17) = 0;
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v27 + 17) = 0;
    v28 = *(this + 24);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v57 = &unk_1F5EBDEF8;
    v58 = &_bambiDomain;
    v59 = 0;
    v29 = *(v28 + 1904);
    v30 = (v28 + 1912);
    if (v29 != (v28 + 1912))
    {
      while (1)
      {
        v31 = v29[5];
        RTPManager::terminateSessionWithId(*(this + 49), v31[6]);
        IPTelephonyManager::getBambiClient(v51);
        BambiClient::setMediaSessionIdForStream(v51[0], v31, 0);
        if (v51[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51[1]);
        }

        *&v67[8] = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        *&v66 = &unk_1F5EBDEF8;
        *(&v66 + 1) = &_bambiDomain;
        *v67 = 0;
        ImsResult::operator=(&v57, &v66);
        ImsResult::~ImsResult(&v66);
        *&v67[8] = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        *&v66 = &unk_1F5EBDEF8;
        *(&v66 + 1) = &_bambiDomain;
        *v67 = 0;
        if (v58 != &_bambiDomain)
        {
          break;
        }

        v33 = v59;
        ImsResult::~ImsResult(v32);
        if (!v33)
        {
          v34 = v29[1];
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v29[2];
              v24 = *v35 == v29;
              v29 = v35;
            }

            while (!v24);
          }

          v29 = v35;
          if (v35 != v30)
          {
            continue;
          }
        }

        goto LABEL_60;
      }

      ImsResult::~ImsResult(v32);
    }

LABEL_60:
    v43 = &v57;
  }

  ImsResult::~ImsResult(v43);
}

void sub_1E4E51144(_Unwind_Exception *a1)
{
  *(v2 - 176) = &unk_1F5EC4090;
  v4 = *(v2 - 152);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t BambiCall::localSdp@<X0>(BambiCall *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 24);
  result = SDPSession::hasStream(v4);
  if (result)
  {
    v6 = *(this + 120) & 0xFFFFFFFE;

    SDPSession::localSdp(v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void BambiCall::setMediaSessionConfigured(BambiCall *this)
{
  if (*(this + 51))
  {
    v2 = *(this + 54);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(this + 53);
        if (v5)
        {
          *__p = 0u;
          *v11 = 0u;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 19);
          BambiCallEvent::BambiCallEvent(__p, 27, &v8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          (*(*v5 + 16))(v5, __p);
          __p[0] = &unk_1F5EC4090;
          if (v11[1])
          {
            std::__shared_weak_count::__release_weak(v11[1]);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    *(this + 493) = 1;
    std::string::basic_string[abi:ne200100]<0>(__p, "MediaConfigured");
    BambiCall::activateAllMediaSessionIfAppropriate(this, __p);
    if (SHIBYTE(v11[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = this + 8;
    v7 = (*(*(this + 1) + 56))(this + 8);
    (*(*v6 + 16))(v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "BambiCall::setMediaSessionConfigured, No SIP session", 52);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }
}

void sub_1E4E5144C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void BambiCall::handleMediaSessionActivated(BambiCall *this)
{
  v2 = *(this + 54);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 53);
      if (v5)
      {
        v8 = 0u;
        *v9 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 19);
        BambiCallEvent::BambiCallEvent(&v8, 25, &v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        (*(*v5 + 16))(v5, &v8);
        *&v8 = &unk_1F5EC4090;
        if (v9[1])
        {
          std::__shared_weak_count::__release_weak(v9[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *(this + 1842) = 0;
}

void sub_1E4E51588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void BambiCall::handleMediaSessionDeactivated(BambiCall *this)
{
  v2 = *(this + 54);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 53);
      if (v5)
      {
        v8 = 0u;
        *v9 = 0u;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 19);
        BambiCallEvent::BambiCallEvent(&v8, 26, &v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        (*(*v5 + 16))(v5, &v8);
        *&v8 = &unk_1F5EC4090;
        if (v9[1])
        {
          std::__shared_weak_count::__release_weak(v9[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E516A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t BambiCall::applyMediaSettingsUsingForkIfRequired(BambiCall *a1, BambiCallMediaStream *a2, uint64_t a3, int a4)
{
  v8 = *(*a3 + 768);
  v9 = *(*a3 + 776);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipOfferAnswer::local(v8, &v48);
  v11 = *v48;
  v10 = v48[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v12 = *(*a3 + 768);
  v13 = *(*a3 + 776);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipOfferAnswer::remote(v12, &v48);
  v15 = *v48;
  v14 = v48[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = *(*a3 + 768);
  v17 = *(*a3 + 776);
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
    v21 = *(v20 + 40) == *(v20 + 24);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    v21 = *(v20 + 40) == *(v20 + 24);
  }

  v43 = a4;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v21)
  {
    v22 = v15;
  }

  else
  {
    v22 = v11;
  }

  if (v21)
  {
    v23 = v14;
  }

  else
  {
    v23 = v10;
  }

  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v24 = v21;
  }

  else
  {
    v24 = 1;
  }

  if (v21)
  {
    v25 = 0;
  }

  else
  {
    v25 = v15;
  }

  if (v24)
  {
    v26 = 0;
  }

  else
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = v15;
    v26 = v14;
  }

  if (!*(a2 + 6))
  {
    v34 = *(a1 + 1);
    v33 = (a1 + 8);
    v35 = (*(v34 + 48))(v33);
    (*(*v33 + 16))(v33, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "applyMediaSettingsUsingForkIfRequired: media session not valid", 62);
    *(v35 + 17) = 0;
    v36 = (v35 + 17);
    (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_62;
  }

  if (!v11)
  {
    v38 = *(a1 + 1);
    v37 = (a1 + 8);
    v39 = (*(v38 + 56))(v37);
    (*(*v37 + 16))(v37, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "applyMediaSettingsUsingForkIfRequired: no local SDP", 51);
    *(v39 + 17) = 0;
    v36 = (v39 + 17);
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_62;
  }

  v42 = a2;
  v28 = (a1 + 8);
  v27 = *(a1 + 1);
  if (!v15)
  {
    v40 = (*(v27 + 56))(a1 + 1);
    (*(*v28 + 16))(v28, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "applyMediaSettingsUsingForkIfRequired: no remote SDP", 52);
    *(v40 + 17) = 0;
    v36 = (v40 + 17);
    (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_62:
    v32 = 0;
    *v36 = 0;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v29 = (*(v27 + 64))(a1 + 1);
  (*(*v28 + 16))(a1 + 1, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "applyMediaSettingsUsingForkIfRequired: updating sdp for session", 63);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v29 + 17) = 0;
  v30 = *(a1 + 24);
  v46 = v22;
  v47 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = v25;
  v45 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SDPSession::handleOfferAnswer(v30, &v46, &v44, *(v11 + 176)) == 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = v43;
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v31)
  {
    BambiCall::updateMediaSettings(a1, v42);
  }

  v32 = 1;
  if (v26)
  {
LABEL_63:
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

LABEL_64:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v32;
}

void sub_1E4E51C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    if (!v17)
    {
LABEL_5:
      if (!v16)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v17)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (!v16)
  {
LABEL_6:
    if (!v15)
    {
LABEL_12:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_12;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (!v15)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void SipOfferAnswer::local(SipOfferAnswer *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 27);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipOfferAnswer::remote(SipOfferAnswer *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 27);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void BambiCall::updateMediaSettings(BambiCall *this, BambiCallMediaStream *a2)
{
  if (a2 && *(this + 496) == 1)
  {
    if (BambiCall::shouldContinueUpdatingSession(this))
    {
      v12 = 0;
      v13 = 0;
      SipSession::getMostRecentRemoteFork(*(this + 51), &v12);
      if (v12)
      {
        std::string::operator=(this + 44, v12 + 11);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v4 = *(this + 49);
      v5 = *(a2 + 6);
      v6 = *(this + 25);
      v10 = *(this + 24);
      v11 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RTPManager::updateSdpForSession(v4, v5, &v10, *(this + 121));
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v8 = *(this + 1);
      v7 = this + 8;
      v9 = (*(v8 + 64))(v7);
      (*(*v7 + 16))(v7, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Skipped updating sdp for media session (", 40);
      *(v9 + 17) = 0;
      MEMORY[0x1E69233B0](*(v9 + 8), *(a2 + 6));
      *(v9 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ")", 1);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
    }
  }
}

void sub_1E4E51EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::handleActiveForkChanged(BambiCall *a1, void *a2, int a3)
{
  v4 = *(a1 + 24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = &unk_1F5EBDEF8;
  v25 = &_bambiDomain;
  v26 = 0;
  v5 = *(v4 + 1904);
  v6 = (v4 + 1912);
  if (v5 != (v4 + 1912))
  {
    while (1)
    {
      v9 = v5[5];
      v10 = a2[1];
      v36[0] = *a2;
      v36[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = BambiCall::applyMediaSettingsUsingForkIfRequired(a1, v9, v36, a3);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0x40000000;
      }

      *v32 = v12;
      *&v32[8] = 0;
      *&v32[16] = 0;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      ImsResult::operator=(&v24, __p);
      ImsResult::~ImsResult(__p);
      *&v32[8] = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      *v32 = 0;
      if (v25 != &_bambiDomain)
      {
        break;
      }

      v13 = v26;
      ImsResult::~ImsResult(__p);
      if (!v13)
      {
        v14 = v5[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v5[2];
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        v5 = v15;
        if (v15 != v6)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    ImsResult::~ImsResult(__p);
  }

LABEL_19:
  if (((*(*v25 + 24))(v25, v26) & 1) == 0)
  {
    v17 = *(a1 + 54);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = *(a1 + 53);
        if (v20)
        {
          *__p = 0u;
          *v32 = 0u;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v22, a1 + 19);
          BambiCallEvent::BambiCallEvent(__p, 28, &v22);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          (*(*v20 + 16))(v20, __p);
          __p[0] = &unk_1F5EC4090;
          if (*&v32[8])
          {
            std::__shared_weak_count::__release_weak(*&v32[8]);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    v21 = (*(*(a1 + 1) + 64))(a1 + 1);
    (*(*(a1 + 1) + 16))(a1 + 1, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "handleActiveForkChanged", 23);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "ActiveForkChanged");
    BambiCall::activateAllMediaSessionIfAppropriate(a1, __p);
    if ((v32[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }
  }

  ImsResult::~ImsResult(&v24);
}

void sub_1E4E5226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::__shared_weak_count *a29)
{
  __p = &unk_1F5EC4090;
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  ImsResult::~ImsResult(&a12);
  _Unwind_Resume(a1);
}

void BambiCall::invalidate(BambiCall *this)
{
  v2 = (this + 8);
  v3 = (*(*(this + 1) + 64))(this + 8);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "BambiCall::invalidate()", 23);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v2[50])
  {
    BambiCall::detachSipSession(this);
  }

  if ((*(*this + 88))(this))
  {
    v4 = (*(*(this + 1) + 64))(v2);
    (*(*(this + 1) + 16))(v2, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "BambiCall is in a conference/call-transfer, keeping it around until participant joins/fails. Marking pending invalidation.", 122);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    *(this + 1528) = 1;
  }

  else
  {
    v5 = *(this + 54);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 53);
        if (v8)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v39, this + 19);
          (*(*v8 + 192))(v8, &v39);
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    v9 = *(this + 48);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(this + 47);
        if (v12)
        {
          if (*(this + 69))
          {
            v13 = v12[564];
            v14 = v12[565];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v37, this + 19);
            BambiEmergencyCallHandler::handleCallInvalidated(v13, &v37);
            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }
          }

          v15 = v12[393];
          v16 = v12[394];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v35, this + 19);
          (*(*v15 + 168))(v15, &v35);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    v17 = *(this + 24);
    if (v17)
    {
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v28 = &unk_1F5EBDEF8;
      v29 = &_bambiDomain;
      v30 = 0;
      v18 = *(v17 + 1904);
      v19 = (v17 + 1912);
      if (v18 != (v17 + 1912))
      {
        while (1)
        {
          v20 = v18[5];
          IPTelephonyManager::getBambiClient(&v48);
          BambiClient::invalidateStream(v48, v20);
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v41 = &unk_1F5EBDEF8;
          v42 = &_bambiDomain;
          v43 = 0;
          ImsResult::operator=(&v28, &v41);
          ImsResult::~ImsResult(&v41);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v41 = &unk_1F5EBDEF8;
          v42 = &_bambiDomain;
          v43 = 0;
          if (v29 != &_bambiDomain)
          {
            break;
          }

          v21 = v30;
          ImsResult::~ImsResult(&v41);
          if (!v21)
          {
            v22 = v18[1];
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = v18[2];
                v24 = *v23 == v18;
                v18 = v23;
              }

              while (!v24);
            }

            v18 = v23;
            if (v23 != v19)
            {
              continue;
            }
          }

          goto LABEL_42;
        }

        ImsResult::~ImsResult(&v41);
      }

LABEL_42:
      ImsResult::~ImsResult(&v28);
    }

    IPTelephonyManager::getBambiClient(&v41);
    v25 = v41;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, this + 19);
    BambiClient::invalidateCall(v25, &v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }
}

void sub_1E4E527C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void BambiCall::loggableName(BambiCall *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E529B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
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

void BambiCall::logPrefix(BambiCall *this, ImsOutStream *a2)
{
  v4 = *(this + 48);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 47);
      if (v6)
      {
        (*(*v6 + 112))(v9);
        (*(*a2 + 40))(a2, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [", 2);
        *(a2 + 17) = 0;
        (*(*this + 24))(__p, this);
        (*(*a2 + 40))(a2, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }

        if (v10 < 0)
        {
          operator delete(v9[0]);
        }

LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*this + 24))(v9, this);
  (*(*a2 + 40))(a2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v5)
  {
    goto LABEL_12;
  }
}

void sub_1E4E52C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

uint64_t BambiCall::handleInitializationFailure(BambiCall *this)
{
  v2 = (this + 8);
  v3 = (*(*(this + 1) + 56))(this + 8);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "BambiCall::handleInitializationFailure", 38);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = v2[50];
  if (v4)
  {
    SipSession::handleInitializationFailure(v4);
  }

  v5 = *(*this + 48);

  return v5(this);
}

void BambiCall::createLocalSdpForFork(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v4 = *(a1 + 192);
  LODWORD(v3) = *(v3 + 480) & 0xFFFFFFFE;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SDPSession::createLocalSdpForFork(v4, &v6, a3);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E52E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::setDirectionForSdpBasedOnHoldState(void *a1, void **a2)
{
  v4 = a1[48];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = a1[47];
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

  if (*a2 && (!v6 || *(v6 + 1144) == 1))
  {
    v7 = a1[51];
    if (!v7 || (SipSession::confirmed(v7) & 1) == 0)
    {
      v8 = (*(a1[1] + 64))(a1 + 1);
      (*(a1[1] + 16))(a1 + 1, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "setting direction of outgoing SDP to ", 37);
      *(v8 + 17) = 0;
      v9 = a1 + 121;
      ims::toString<MediaDirection>(v9, &v10);
      LoggableString::LoggableString(&__p, &v10);
      (*(*v8 + 40))(v8, &__p);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      SDPModel::setDirectionForSessionAndMedia(*a2, *v9);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4E52FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::interface(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 48);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v6 = v5;
  v7 = *(this + 47);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = *(v7 + 280);
  v9 = *(v7 + 288);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_21;
    }

    v8 = *(v7 + 280);
    v10 = *(v7 + 288);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    v10 = 0;
  }

  v11 = (*(*v8 + 112))(v8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    v12 = *(v7 + 280);
    v13 = *(v7 + 288);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (*(*v12 + 112))(v12);
    if (*(v14 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(v14 + 32), *(v14 + 40));
    }

    else
    {
      v15 = *(v14 + 32);
      a2->__r_.__value_.__r.__words[2] = *(v14 + 48);
      *&a2->__r_.__value_.__l.__data_ = v15;
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_22;
  }

LABEL_21:
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_22:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4E531D0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiCall::address(BambiCall *this)
{
  v2 = *(this + 48);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 47);
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  SipStack::mediaAddress(v2, v6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = 0;
  v5 = 0;
  SipHost::address(v6, &v4);
  (*(*v4 + 32))(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SipHost::~SipHost(v6);
}

void sub_1E4E532CC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  SipHost::~SipHost(va);
  _Unwind_Resume(a1);
}

uint64_t BambiCall::setQualityOfServiceRevoked(BambiCall *this, uint64_t a2)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v3 = *(this + 51);
  if (!v3)
  {
    goto LABEL_12;
  }

  v6 = *(v3 + 240);
  v5 = *(v3 + 248);
  if (!v5)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = *(this + 1);
    v10 = this + 8;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "setQualityOfServiceRevoked: no SIP session", 42);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v13 = 0;
    *(v12 + 17) = 0;
    goto LABEL_57;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (!v6)
  {
    goto LABEL_12;
  }

  v3 = *(this + 51);
LABEL_6:
  if (*(v3 + 1544) == a2)
  {
    *(v3 + 1544) = -1;
    *(v3 + 1576) = 0;
    *(v3 + 1560) = *(v3 + 1552);
    SipSessionInterface::stack(v3, &__p);
    v7 = SipStack::prefs(__p);
    v8 = ImsPrefs::EndCallOnAudioBearerRevoked(v7);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v8)
    {
      v9 = (*(*(this + 1) + 32))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Local QoS bearer revoked. Ending call!", 38);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(&__p, "BearerRevoked");
      BambiCall::endWithReason(this, v43);
      ImsResult::~ImsResult(v43);
      if (v42 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_56:
    v13 = 1;
    goto LABEL_57;
  }

  v14 = *(v3 + 240);
  v15 = *(v3 + 248);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::allForks(v14, &v44);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v44;
  v17 = v45;
  if (v44 != v45)
  {
    while (1)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v19)
      {
        v20 = *(v19 + 1000);
        if (v20)
        {
          v21 = (v19 + 1000);
          v22 = v19 + 1000;
          v23 = *(v19 + 1000);
          do
          {
            v24 = *(v23 + 32);
            v25 = v24 >= a2;
            v26 = v24 < a2;
            if (v25)
            {
              v22 = v23;
            }

            v23 = *(v23 + 8 * v26);
          }

          while (v23);
          if (v22 != v21 && *(v22 + 32) <= a2)
          {
            break;
          }
        }
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v16 += 2;
      if (v16 == v17)
      {
        goto LABEL_32;
      }
    }

    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      v20 = *v21;
    }

    if (v20)
    {
      v30 = v19 + 1000;
      do
      {
        v31 = *(v20 + 32);
        v25 = v31 >= a2;
        v32 = v31 < a2;
        if (v25)
        {
          v30 = v20;
        }

        v20 = *(v20 + 8 * v32);
      }

      while (v20);
      if (v30 != v21 && *(v30 + 32) <= a2)
      {
        v33 = *(v30 + 44);
        if (v33)
        {
          if (v33 != 2)
          {
            goto LABEL_50;
          }

          SipSessionInterface::stack(*(this + 51), &__p);
          v34 = SipStack::prefs(__p);
          v35 = ImsPrefs::EndCallOnAudioBearerRevoked(v34);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v35)
          {
            v36 = (*(*(this + 1) + 48))(this + 8);
            (*(*(this + 1) + 16))(this + 8, v36);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Audio bearer revoked.  Ending call!", 35);
            *(v36 + 17) = 0;
            (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v36 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&__p, "BearerRevoked");
            BambiCall::endWithReason(this, v39);
            ImsResult::~ImsResult(v39);
            if (v42 < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
LABEL_50:
            v37 = (*(*(this + 1) + 32))(this + 8);
            (*(*(this + 1) + 16))(this + 8, v37);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "Bearer revoked for media type ", 30);
            *(v37 + 17) = 0;
            (*(*v37 + 32))(v37, &__p);
            (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v37 + 17) = 0;
            if (v42 < 0)
            {
              operator delete(__p);
            }

            if (v33 == 4)
            {
              BambiCall::setTextMediaSessionMode(this, 0);
            }
          }
        }
      }
    }

    v47 = a2;
    std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::__erase_unique<unsigned int>(v19 + 992, &v47);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    goto LABEL_56;
  }

LABEL_32:
  v28 = *(this + 1);
  v27 = this + 8;
  v29 = (*(v28 + 48))(v27);
  (*(*v27 + 16))(v27, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Call does not own a fork using bearer ", 38);
  *(v29 + 17) = 0;
  MEMORY[0x1E6923350](*(v29 + 8), a2);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v13 = 0;
  *(v29 + 17) = 0;
LABEL_57:
  __p = &v44;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v13;
}

void sub_1E4E539A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  __p = (v27 - 112);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t BambiCall::setQualityOfServiceEstablished(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  __p = 0;
  v40 = 0;
  v41 = 0;
  v8 = *(a1 + 408);
  if (!v8)
  {
    goto LABEL_33;
  }

  v10 = *(v8 + 240);
  v9 = *(v8 + 248);
  if (!v9)
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_33:
    v38[0] = &__p;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v38);
    goto LABEL_34;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = *(a1 + 408);
  v10 = *(v11 + 240);
  v12 = *(v11 + 248);
  if (v12)
  {
    v13 = 0;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_9;
  }

LABEL_8:
  v13 = 1;
LABEL_9:
  SipDialog::allForks(v10, &__p);
  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v14 = __p;
  v15 = v40;
  if (__p == v40)
  {
    goto LABEL_33;
  }

  v16 = a1 + 8;
  while (1)
  {
    v17 = *v14;
    v18 = *(v14 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v17)
    {
      goto LABEL_26;
    }

    v19 = *(v17 + 125);
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = (v17 + 1000);
    do
    {
      v21 = *(v19 + 32);
      v22 = v21 >= a2;
      v23 = v21 < a2;
      if (v22)
      {
        v20 = v19;
      }

      v19 = *(v19 + 8 * v23);
    }

    while (v19);
    if (v20 == (v17 + 1000) || *(v20 + 8) > a2 || !SipDialogFork::getBearerPortCount(v17, a2) || a4[1] != *a4)
    {
LABEL_26:
      v24 = 1;
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_27:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_28;
    }

    v25 = (*(*v16 + 48))(a1 + 8);
    (*(*v16 + 16))(a1 + 8, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "An existing bearer has been updated without ports.  Revoking bearer.", 68);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    v4 = BambiCall::setQualityOfServiceRevoked(a1, a2);
    v24 = 0;
    if (v18)
    {
      goto LABEL_27;
    }

LABEL_28:
    if ((v24 & 1) == 0)
    {
      break;
    }

    v14 += 16;
    if (v14 == v15)
    {
      goto LABEL_33;
    }
  }

  v38[0] = &__p;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v38);
  if (v4)
  {
    return 0;
  }

LABEL_34:
  v26 = *(a1 + 408);
  if ((!v26 || (SipSession::confirmed(v26) & 1) == 0) && (*(a1 + 492) & 1) == 0)
  {
    v27 = *(a1 + 408);
    if (v27)
    {
      if (((*(*v27 + 264))(v27) & 1) == 0 && *(a1 + 408))
      {
        v28 = (*(*(a1 + 8) + 64))(a1 + 8);
        (*(*(a1 + 8) + 16))(a1 + 8, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Local QoS established for bearer ", 33);
        *(v28 + 17) = 0;
        MEMORY[0x1E6923350](*(v28 + 8), a2);
        *(v28 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " on ", 4);
        *(v28 + 17) = 0;
        if (a3)
        {
          v29 = "local";
        }

        else
        {
          v29 = "remote";
        }

        if (a3)
        {
          v30 = 5;
        }

        else
        {
          v30 = 6;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), v29, v30);
        *(v28 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " ports: ", 8);
        *(v28 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(v38, ", ");
        v31 = *a4;
        v32 = a4[1];
        ims::join<std::__wrap_iter<unsigned short const*>>();
      }
    }
  }

  v34 = *(a1 + 8);
  v33 = a1 + 8;
  v35 = (*(v34 + 64))(v33);
  (*(*v33 + 16))(v33, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "it's not time for QoS", 21);
  *(v35 + 17) = 0;
  (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  result = 0;
  *(v35 + 17) = 0;
  return result;
}

void sub_1E4E53FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::clientConfig(BambiCall *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 48);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 47);
    if (v7)
    {
      v8 = *(v7 + 200);
      *(a2 + 8) = *(v7 + 208);
      *a2 = v8;
      if (*(v7 + 239) < 0)
      {
        std::string::__init_copy_ctor_external((a2 + 16), *(v7 + 216), *(v7 + 224));
      }

      else
      {
        v9 = *(v7 + 216);
        *(a2 + 32) = *(v7 + 232);
        *(a2 + 16) = v9;
      }

      *(a2 + 40) = *(v7 + 240);
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }
}

void BambiCall::remoteDisplayNumber(BambiCall *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::basic_string[abi:ne200100]<0>(a2, &str_31_1);
  if (SipUri::isValidUri((this + 1080)))
  {
    if (BambiCall::senderIsPrivate(this))
    {
      if (*(a2 + 23) < 0)
      {
        *(a2 + 8) = 0;
        v4 = *a2;
      }

      else
      {
        *(a2 + 23) = 0;
        v4 = a2;
      }

      *v4 = 0;
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      isTelUri = SipUri::isTelUri((this + 1080));
      v6 = 1208;
      if (isTelUri)
      {
        v6 = 1256;
      }

      v7 = this + v6;
      if (v7[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
      }

      else
      {
        __p = *v7;
      }

      if (isPhoneNumber(&__p))
      {
        std::string::operator=(a2, &__p);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v8 = *(this + 48);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 47);
      if (v11)
      {
        SipStack::massageIncomingDisplayNumber(v11, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4E54220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void BambiCall::remoteDisplayName(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  if (BambiCall::senderIsPrivate(this))
  {

    std::string::basic_string[abi:ne200100]<0>(a2, &str_31_1);
  }

  else if (*(this + 1511) < 0)
  {
    v4 = *(this + 186);
    v5 = *(this + 187);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 93);
    a2->__r_.__value_.__r.__words[2] = *(this + 188);
  }
}

void BambiCall::remoteDisplayCountryCode(BambiCall *this@<X0>, std::string *a2@<X8>)
{
  if ((BambiCall::senderIsPrivate(this) & 1) != 0 || !SipUri::isValidUri((this + 1080)))
  {

    std::string::basic_string[abi:ne200100]<0>(a2, &str_31_1);
  }

  else
  {

    SipUri::countryCodeFromPhoneContext((this + 1080), a2);
  }
}

void BambiCall::sendEmergencyLocationUpdate(uint64_t a1@<X0>, const ims::LocationInfo *a2@<X1>, ImsResult *a3@<X8>)
{
  if (*(a1 + 408))
  {
    ims::LocationInfo::LocationInfo(v6, a2);
    BambiCall::setEmergencyLocationInfo(a1, v6);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }

    SipSession::sendUpdate(*(a1 + 408), &SipSession::kUpdateTypeEmergencyLocationUpdate, a3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15[0] = &unk_1F5EBDEF8;
    v15[1] = &_bambiDomain;
    v16 = 1073741827;
    v5 = ImsResult::operator<<<char [15]>(v15, "No SIP session");
    ImsResult::ImsResult(a3, v5);
    ImsResult::~ImsResult(v15);
  }
}

void sub_1E4E5448C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ims::LocationInfo::~LocationInfo(va);
  _Unwind_Resume(a1);
}

void BambiCall::sendEmergencyLocationPublish(uint64_t a1@<X0>, const ims::LocationInfo *a2@<X1>, ImsResult *a3@<X8>)
{
  if (*(a1 + 408))
  {
    ims::LocationInfo::LocationInfo(v6, a2);
    BambiCall::setEmergencyLocationInfo(a1, v6);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }

    SipSession::sendPublish(*(a1 + 408), &SipSession::kPublishTypeEmergencyLocation, a3);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15[0] = &unk_1F5EBDEF8;
    v15[1] = &_bambiDomain;
    v16 = 1073741827;
    v5 = ImsResult::operator<<<char [15]>(v15, "No SIP session");
    ImsResult::ImsResult(a3, v5);
    ImsResult::~ImsResult(v15);
  }
}

void sub_1E4E545C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ims::LocationInfo::~LocationInfo(va);
  _Unwind_Resume(a1);
}

void BambiCall::sendReinvite(ImsResult *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    SipSession::sendInvite(a2, a3, a1);
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
    v4 = ImsResult::operator<<<char [15]>(v5, "No SIP session");
    ImsResult::ImsResult(a1, v4);
    ImsResult::~ImsResult(v5);
  }
}

void sub_1E4E546A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void BambiCall::handleSRVCCFailure(RTPManager **this@<X0>, int a2@<W1>, ImsResult *a3@<X8>)
{
  if (this[51])
  {
    RTPManager::srvccHandoverFailed(this[49]);
    v6 = this[51];
    if (v6 && SipSession::confirmed(v6))
    {
      v7 = this[51];

      BambiCall::sendReinvite(a3, v7, "SRVCCFailureInvite");
    }

    else
    {
      *v18 = 0u;
      memset(v19, 0, 48);
      if (a2)
      {
        v8 = "handover cancelled";
      }

      else
      {
        v8 = "failure to transition to CS domain";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      SipReason::SipReason(v18, &SipReason::kProtocolSip, 487, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = this[51];
      if (SBYTE7(v19[0]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v18[0], v18[1]);
      }

      else
      {
        *&v11.__r_.__value_.__l.__data_ = *v18;
        v11.__r_.__value_.__r.__words[2] = *&v19[0];
      }

      v12 = &unk_1F5EBEF50;
      std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v13, *&v19[1], &v19[1] + 1);
      v15 = 1;
      v14 = BYTE8(v19[2]);
      SipSession::sendUpdateWithLocalSdpInAllForks(v9, "UpdateTypeSRVCCFailure", &v11, a3);
      v12 = &unk_1F5EBEF50;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v13, v13[1]);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      *(&v19[0] + 1) = &unk_1F5EBEF50;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v19[1], *(&v19[1] + 1));
      if (SBYTE7(v19[0]) < 0)
      {
        operator delete(v18[0]);
      }
    }
  }

  else
  {
    memset(v19 + 8, 0, 48);
    *(&v19[3] + 8) = 0u;
    v18[0] = &unk_1F5EBDEF8;
    v18[1] = &_bambiDomain;
    LODWORD(v19[0]) = 1073741826;
    v10 = ImsResult::operator<<<char [15]>(v18, "No SIP session");
    ImsResult::ImsResult(a3, v10);
    ImsResult::~ImsResult(v18);
  }
}

void BambiCall::handleAccessNetworkChange(BambiCall *this@<X0>, const ims::AccessNetwork *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    isWifi = ims::AccessNetwork::isWifi((this + 1608));
    if (isWifi == ims::AccessNetwork::isWifi(a2))
    {
      v21 = *(this + 1);
      v20 = this + 8;
      v22 = (*(v21 + 64))(v20);
      (*(*v20 + 16))(v20, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "handleAccessNetworkChange: access network hasn't changed", 56);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      *a4 = &unk_1F5EBDEF8;
      *(a4 + 8) = &_bambiDomain;
      *(a4 + 16) = 0;
      return;
    }
  }

  v8 = *(this + 51);
  if (!v8)
  {
    v17 = *(this + 1);
    v16 = this + 8;
    v18 = (*(v17 + 48))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "handleAccessNetworkChange: no SIP session", 41);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v51 = &unk_1F5EBDEF8;
    v52 = &_bambiDomain;
    LODWORD(v53) = 1073741826;
    v19 = ImsResult::operator<<<char [15]>(&v51, "No SIP session");
    ImsResult::ImsResult(a4, v19);
LABEL_14:
    ImsResult::~ImsResult(&v51);
    return;
  }

  if ((SipSession::confirmed(v8) & 1) == 0)
  {
    v24 = *(this + 1);
    v23 = this + 8;
    v25 = (*(v24 + 64))(v23);
    (*(*v23 + 16))(v23, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "handleAccessNetworkChange: call is not confirmed", 48);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v51 = &unk_1F5EBDEF8;
    v52 = &_bambiDomain;
    LODWORD(v53) = 1073741826;
    v26 = ImsResult::operator<<<char [14]>(&v51, "Not confirmed");
    ImsResult::ImsResult(a4, v26);
    goto LABEL_14;
  }

  v9 = *(this + 48);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = *(this + 47);
  if (*(this + 120) & 0xFFFFFFFE) != 2 || !v11 || (*(v11 + 1312))
  {
LABEL_17:
    v27 = *(this + 51);
    if (v27)
    {
      if (SipSession::terminating(v27) || (v28 = *(this + 51)) != 0 && (*(*v28 + 264))(v28))
      {
        v30 = *(this + 1);
        v29 = this + 8;
        v31 = (*(v30 + 64))(v29);
        (*(*v29 + 16))(v29, v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "handleAccessNetworkChange: call is terminating", 46);
        *(v31 + 17) = 0;
        (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v31 + 17) = 0;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v51 = &unk_1F5EBDEF8;
        v52 = &_bambiDomain;
        LODWORD(v53) = 1073741826;
        v32 = ImsResult::operator<<<char [11]>(&v51, "Terminated");
        ImsResult::ImsResult(a4, v32);
        goto LABEL_44;
      }
    }

    if (*(this + 69))
    {
      v34 = *(this + 1);
      v33 = this + 8;
      v35 = (*(v34 + 64))(v33);
      (*(*v33 + 16))(v33, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "handleAccessNetworkChange: not refreshing access network for emergency call", 75);
      *(v35 + 17) = 0;
      (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v35 + 17) = 0;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v51 = &unk_1F5EBDEF8;
      v52 = &_bambiDomain;
      LODWORD(v53) = 1073741826;
      operator new();
    }

    v53 = 0;
    v54 = 0uLL;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v51 = &unk_1F5EBDEF8;
    v52 = &_bambiDomain;
    if (v11)
    {
      v36 = (v11 + 1288);
      v37 = *(v11 + 1311);
      v38 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v37 = *(v11 + 1296);
      }

      if (v37 == 6)
      {
        v39 = v38 >= 0 ? v11 + 1288 : *v36;
        v40 = *v39;
        v41 = *(v39 + 4);
        if (v40 == *"INVITE" && v41 == *"TE")
        {
          BambiCall::sendReinvite(__p, *(this + 51), &SipSession::kInviteTypeAccessNetworkRefresh);
          ImsResult::operator=(&v51, __p);
          ImsResult::~ImsResult(__p);
LABEL_41:
          if (((*(*v52 + 24))(v52, v53) & 1) == 0)
          {
            ims::AccessNetwork::operator=(this + 1608, a2);
          }

          ImsResult::ImsResult(a4, &v51);
LABEL_44:
          ImsResult::~ImsResult(&v51);
          if (!v10)
          {
            return;
          }

          goto LABEL_45;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v36, "UPDATE"))
      {
        memset(v48, 0, sizeof(v48));
        std::string::basic_string[abi:ne200100]<0>(__p, "Access Network Refresh");
        SipReason::SipReason(v48, &SipReason::kProtocolSip, 200, __p);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }

        v43 = *(this + 51);
        SipReason::SipReason(v47, v48);
        SipSession::sendUpdateWithLocalSdpInAllForks(v43, &SipSession::kUpdateTypeAccessNetworkRefresh, v47, __p);
        ImsResult::operator=(&v51, __p);
        ImsResult::~ImsResult(__p);
        SipReason::~SipReason(v47);
        SipReason::~SipReason(v48);
        goto LABEL_41;
      }
    }

    v45 = *(this + 1);
    v44 = this + 8;
    v46 = (*(v45 + 64))(v44);
    (*(*v44 + 16))(v44, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "not sending access network refresh: no refresh method configured", 64);
    *(v46 + 17) = 0;
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v46 + 17) = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    goto LABEL_44;
  }

  v13 = *(this + 1);
  v12 = this + 8;
  v14 = (*(v13 + 64))(v12);
  (*(*v12 + 16))(v12, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleAccessNetworkChange: call is not active", 45);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = &unk_1F5EBDEF8;
  v52 = &_bambiDomain;
  LODWORD(v53) = 1073741826;
  v15 = ImsResult::operator<<<char [11]>(&v51, "Not active");
  ImsResult::ImsResult(a4, v15);
  ImsResult::~ImsResult(&v51);
LABEL_45:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}