void sub_1E4FBA96C(_Unwind_Exception *a1)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*(v2 - 120));
  }

  xpc_release(*(v2 - 96));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

double SipOfferAnswer::updateWithIncomingSdp(uint64_t a1, SipOfferAnswer *this, uint64_t *a3, std::string *a4, uint64_t a5, int a6, void **a7)
{
  if (!SipOfferAnswer::satisfied(this))
  {
    goto LABEL_18;
  }

  v12 = *(this + 28);
  if (v12 == (this + 216))
  {
LABEL_17:
    v21 = (*(*(this + 1) + 64))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "starting new offer/answer exchange", 34);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    SipOfferAnswer::startNewExchange(this);
    goto LABEL_18;
  }

  v13 = *(a5 + 23);
  if (v13 >= 0)
  {
    v14 = *(a5 + 23);
  }

  else
  {
    v14 = *(a5 + 8);
  }

  if (v13 >= 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = *a5;
  }

  while (1)
  {
    v16 = v12[2];
    v17 = *(v16 + 95);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v16 + 80);
    }

    if (v17 == v14)
    {
      v19 = v18 >= 0 ? (v16 + 72) : *(v16 + 72);
      if (!memcmp(v19, v15, v14))
      {
        break;
      }
    }

    v12 = v12[1];
    if (v12 == (this + 216))
    {
      goto LABEL_17;
    }
  }

  v48 = v12[3];
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*(v16 + 40) || (v49 = *(v16 + 56)) == 0)
  {
    v59 = (*(*(this + 1) + 56))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "received SDP for previous unsatisfied exchange ", 47);
    *(v59 + 17) = 0;
    (*(*v16 + 16))(v16, v59);
    (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v59 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v112, "InvalidSdp");
    *v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741826;
    BambiCallTerminationResult::makeResult(a1, &v112, &__p);
LABEL_82:
    ImsResult::~ImsResult(&__p);
    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    goto LABEL_84;
  }

  v50 = *(v16 + 24);
  if (v49 != v50)
  {
    v51 = this + 8;
    v52 = (*(*(this + 1) + 48))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "already have offer and answer for transaction ", 46);
    *(v52 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&__p, a5);
    (*(*v52 + 56))(v52, &__p);
    (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v52 + 17) = 0;
    if (SBYTE7(v109) < 0)
    {
      operator delete(v108[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v53 = (*(*v51 + 48))(this + 8);
    (*(*v51 + 16))(this + 8, v53);
    (*(*this + 16))(this, v53);
    (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v53[17] = 0;
    if (*(this + 208) == 1)
    {
      v54 = 0;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *a1 = &unk_1F5EBDEF8;
      *(a1 + 8) = &_bambiDomain;
      *(a1 + 16) = 0;
      if (!v48)
      {
        goto LABEL_86;
      }

LABEL_85:
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      goto LABEL_86;
    }

    std::string::basic_string[abi:ne200100]<0>(&v112, "InvalidSdp");
    *v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741826;
    BambiCallTerminationResult::makeResult(a1, &v112, &__p);
    goto LABEL_82;
  }

  v62 = *(v16 + 32);
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v63 = *v50;
  v64 = v50[1];
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v63)
  {
    v65 = SDPOrigin::valid((v63 + 72)) ? *(v63 + 176) : 0;
    v92 = *a3;
    v93 = SDPOrigin::valid((*a3 + 72)) ? *(v92 + 176) : 0;
    if (v65 == v93)
    {
      v94 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v94);
      v95 = ImsOutStream::operator<<(v94, "ignoring duplicate SDP answer in txn ");
      ObfuscatedString::ObfuscatedString(&__p, a5);
      (*(*v95 + 56))(v95, &__p);
      v96 = ImsOutStream::operator<<(v95, " with the same session version");
      (*(*v96 + 64))(v96, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v96[17] = 0;
      ims::AccessNetwork::~AccessNetwork(&__p.__r_.__value_.__l.__data_);
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *a1 = &unk_1F5EBDEF8;
      *(a1 + 8) = &_bambiDomain;
      *(a1 + 16) = 0;
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

LABEL_84:
      v54 = 0;
      if (!v48)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v54 = 1;
  if (v48)
  {
    goto LABEL_85;
  }

LABEL_86:
  if ((v54 & 1) == 0)
  {
    return result;
  }

LABEL_18:
  SipOfferAnswer::remote(this, &__p);
  v23 = *__p.__r_.__value_.__l.__data_;
  v22 = *(__p.__r_.__value_.__r.__words[0] + 8);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v23)
  {
    if (SDPOrigin::valid((v23 + 72)))
    {
      v24 = *(v23 + 176);
    }

    else
    {
      v24 = 0;
    }

    v25 = *a3;
    if (SDPOrigin::valid((*a3 + 72)))
    {
      v26 = *(v25 + 176);
    }

    else
    {
      v26 = 0;
    }

    v28 = this + 8;
    v27 = *(this + 1);
    if (v24 == v26)
    {
      v29 = (*(v27 + 64))(this + 8);
      (*(*v28 + 16))(this + 8, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "ignoring duplicate SDP offer with the same session version", 58);
      *(v29 + 17) = 0;
      (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v29 + 17) = 0;
LABEL_34:
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *a1 = &unk_1F5EBDEF8;
      *(a1 + 8) = &_bambiDomain;
      *(a1 + 16) = 0;
      goto LABEL_35;
    }

    v30 = (*(v27 + 48))(this + 8);
    (*(*v28 + 16))(this + 8, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "received duplicate remote offer from ", 37);
    *(v30 + 17) = 0;
    LoggableString::LoggableString(&__p, a4);
    (*(*v30 + 40))(v30, &__p);
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v31 = (*(*v28 + 48))(this + 8);
    (*(*v28 + 16))(this + 8, v31);
    (*(*this + 16))(this, v31);
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v31[17] = 0;
    v32 = (*(*v28 + 48))(this + 8);
    (*(*v28 + 16))(this + 8, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "ignoreDuplicateSdp == ", 22);
    *(v32 + 17) = 0;
    MEMORY[0x1E6923320](*(v32 + 8), *(this + 208));
    *(v32 + 17) = 0;
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v32 + 17) = 0;
    if (*(this + 208) == 1)
    {
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(&v112, "InvalidSdp");
    *v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741826;
    BambiCallTerminationResult::makeResult(a1, &v112, &__p);
    ImsResult::~ImsResult(&__p);
    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }
  }

LABEL_35:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (!v23)
  {
    SipOfferAnswer::local(this, &__p);
    v34 = *__p.__r_.__value_.__l.__data_;
    v33 = *(__p.__r_.__value_.__r.__words[0] + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (v34)
    {
      v35 = *(this + 27);
      v36 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = SipOfferAnswerExchange::validateSdpSource(v36, a4, a5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        if (v38)
        {
          goto LABEL_45;
        }
      }

      else if (SipOfferAnswerExchange::validateSdpSource(v36, a4, a5))
      {
LABEL_45:
        v39 = *(this + 25);
        if (v39)
        {
          v40 = std::__shared_weak_count::lock(v39);
          if (v40)
          {
            v41 = *(this + 24);
            if (v41)
            {
              *(a1 + 80) = 0;
              *(a1 + 48) = 0u;
              *(a1 + 64) = 0u;
              *(a1 + 16) = 0u;
              *(a1 + 32) = 0u;
              *a1 = 0u;
              v105 = v34;
              v106 = v33;
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v42 = a3[1];
              v103 = *a3;
              v104 = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v43 = *a7;
              v102 = v43;
              if (v43)
              {
                xpc_retain(v43);
              }

              else
              {
                v102 = xpc_null_create();
              }

              (*(*v41 + 24))(v41, &v105, &v103, &v102);
              xpc_release(v102);
              v102 = 0;
              if (v104)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v104);
              }

              if (v106)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v106);
              }

              if ((*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 16)))
              {
LABEL_138:
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
                v58 = 0;
LABEL_161:
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                }

                if (v58)
                {
                  v87 = (*(*(this + 1) + 64))(this + 8);
                  (*(*(this + 1) + 16))(this + 8, v87);
                  (*(*this + 16))(this, v87);
                  (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v87[17] = 0;
                  v88 = *(this + 25);
                  if (v88)
                  {
                    v89 = std::__shared_weak_count::lock(v88);
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *(this + 24);
                      if (v91)
                      {
                        if (SipOfferAnswer::satisfied(this))
                        {
                          (*(*v91 + 32))(v91);
                        }
                      }

                      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                    }
                  }

                  result = 0.0;
                  *(a1 + 24) = 0u;
                  *(a1 + 40) = 0u;
                  *(a1 + 56) = 0u;
                  *(a1 + 72) = 0u;
                  *a1 = &unk_1F5EBDEF8;
                  *(a1 + 8) = &_bambiDomain;
                  *(a1 + 16) = 0;
                }

                return result;
              }

              ImsResult::~ImsResult(a1);
LABEL_140:
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
LABEL_141:
              v77 = *(this + 27);
              v78 = *(v77 + 16);
              v79 = *(v77 + 24);
              if (v79)
              {
                atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v81 = *a3;
              v80 = a3[1];
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v82 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v82);
              v83 = v78[3];
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipOfferAnswerItem::set(v83, v81, v80, a4);
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              v85 = v78[3];
              v84 = v78[4];
              if (v84)
              {
                atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
              }

              v86 = v78[8];
              v78[7] = v85;
              v78[8] = v84;
              if (v86)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v86);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v82 + 8), "setting remote answer from ", 27);
              *(v82 + 17) = 0;
              LoggableString::LoggableString(&__p, a4);
              (*(*v82 + 40))(v82, &__p);
              (*(*v82 + 64))(v82, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v82 + 17) = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              if (!v79)
              {
                goto LABEL_160;
              }

              v76 = v79;
LABEL_159:
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
LABEL_160:
              v58 = 1;
              goto LABEL_161;
            }
          }
        }

        else
        {
          v40 = 0;
        }

        v61 = (*(*(this + 1) + 56))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v61);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), "no delegate to handle incoming answer", 37);
        *(v61 + 17) = 0;
        (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v61 + 17) = 0;
        if (!v40)
        {
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      v55 = this + 8;
      v56 = (*(*(this + 1) + 48))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "received answer in unexpected transaction ", 42);
      *(v56 + 17) = 0;
      ObfuscatedString::ObfuscatedString(&__p, a5);
      (*(*v56 + 56))(v56, &__p);
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v56 + 17) = 0;
      if (SBYTE7(v109) < 0)
      {
        operator delete(v108[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v57 = (*(*v55 + 48))(this + 8);
      (*(*v55 + 16))(this + 8, v57);
      (*(*this + 16))(this, v57);
      (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v58 = 0;
      v57[17] = 0;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *a1 = &unk_1F5EBDEF8;
      *(a1 + 8) = &SipResultDomain::_domain;
      *(a1 + 16) = 491;
      goto LABEL_161;
    }

    v44 = *(this + 25);
    if (v44)
    {
      v40 = std::__shared_weak_count::lock(v44);
      if (v40)
      {
        v45 = *(this + 24);
        if (v45)
        {
          *(a1 + 80) = 0;
          *(a1 + 48) = 0u;
          *(a1 + 64) = 0u;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *a1 = 0u;
          v46 = a3[1];
          v100 = *a3;
          v101 = v46;
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = *a7;
          object = v47;
          if (v47)
          {
            xpc_retain(v47);
          }

          else
          {
            object = xpc_null_create();
          }

          (*(*v45 + 16))(v45, &v100, &object);
          xpc_release(object);
          object = 0;
          if (v101)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          if ((*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 16)))
          {
            goto LABEL_138;
          }

          ImsResult::~ImsResult(a1);
LABEL_109:
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
LABEL_110:
          v66 = *(this + 27);
          v67 = *(v66 + 16);
          v68 = *(v66 + 24);
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v70 = *a3;
          v69 = a3[1];
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = (*(*(this + 1) + 64))(this + 8);
          (*(*(this + 1) + 16))(this + 8, v71);
          std::string::operator=((v67 + 72), a5);
          *(v67 + 96) = a6;
          v72 = *(v67 + 24);
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipOfferAnswerItem::set(v72, v70, v69, a4);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          v74 = *(v67 + 24);
          v73 = *(v67 + 32);
          if (v73)
          {
            atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
          }

          v75 = *(v67 + 48);
          *(v67 + 40) = v74;
          *(v67 + 48) = v73;
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v71 + 8), "setting remote offer from ", 26);
          *(v71 + 17) = 0;
          LoggableString::LoggableString(&v112, a4);
          (*(*v71 + 40))(v71, &v112);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v71 + 8), " in transaction ", 16);
          *(v71 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&__p, a5);
          (*(*v71 + 56))(v71, &__p);
          (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v71 + 17) = 0;
          if (SBYTE7(v109) < 0)
          {
            operator delete(v108[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v112.__r_.__value_.__l.__data_);
          }

          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          if (!v68)
          {
            goto LABEL_160;
          }

          v76 = v68;
          goto LABEL_159;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v60 = (*(*(this + 1) + 56))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "no delegate to handle incoming offer", 36);
    *(v60 + 17) = 0;
    (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v60 + 17) = 0;
    if (!v40)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  return result;
}

void sub_1E4FBC278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipOfferAnswer::answerPending(SipOfferAnswer *this, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SipOfferAnswerExchange::remoteAnswerPending(this))
  {
    v4 = 1;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = SipOfferAnswerExchange::localAnswerPending(this);
  if (a2)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v4;
}

void SipOfferAnswer::updateWithIncomingResponse(SipOfferAnswer *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = SipMessage::body<SipSdpBody>(*a2);
  if (v8)
  {
    v10 = v8[1];
    v9 = v8[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      memset(&v33, 0, sizeof(v33));
      SipOfferAnswer::remote(a1, __p);
      v12 = *__p[0];
      v11 = *(__p[0] + 1);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }

      if (v12)
      {
        *__p = 0u;
        memset(v30, 0, 24);
        ImsStringOutStream::ImsStringOutStream(__p);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v31 = 0uLL;
      v32 = 0;
      *__p = 0u;
      memset(v30, 0, 24);
      ImsStringOutStream::ImsStringOutStream(__p);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = (*(*(a1 + 1) + 64))(a1 + 1);
  (*(*(a1 + 1) + 16))(a1 + 1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Remote answers no SDP", 21);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if ((*(*a2 + 128) - 200) > 0xFFFFFF9B || !SipOfferAnswer::remoteAnswerPending(a1))
  {
    goto LABEL_32;
  }

  v14 = *(a1 + 27);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = a3[1];
  }

  v19 = *(v16 + 95);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v16 + 80);
  }

  if (v18 == v19 && (v17 >= 0 ? (v21 = a3) : (v21 = *a3), (v24 = *(v16 + 72), v23 = (v16 + 72), v22 = v24, v20 >= 0) ? (v25 = v23) : (v25 = v22), !memcmp(v21, v25, v18)))
  {
    v27 = *(a1 + 1);
    v26 = (a1 + 8);
    v28 = (*(v27 + 48))(v26);
    (*(*v26 + 16))(v26, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "expected SDP answer in incoming ", 32);
    *(v28 + 17) = 0;
    (*(**a2 + 40))(&v33);
    LoggableString::LoggableString(__p, &v33);
    (*(*v28 + 40))(v28, __p);
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (SBYTE7(v30[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v33, "MissingSdp");
    *(v30 + 8) = 0u;
    *(&v30[1] + 8) = 0u;
    *(&v30[2] + 8) = 0u;
    *(&v30[3] + 8) = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    LODWORD(v30[0]) = 1073741826;
    BambiCallTerminationResult::makeResult(a4, &v33, __p);
    ImsResult::~ImsResult(__p);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_32:
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4FBD394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, char a13, int a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  ImsResult::~ImsResult(&__p);
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void BambiCallTerminationResult::makeResult(uint64_t a1, __int128 *a2, const ImsResult *a3)
{
  *__p = 0u;
  v8 = 0u;
  BambiCallTerminationResult::BambiCallTerminationResult(__p, a2);
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ImsResult::ImsResult(a1, a3);
  v5 = (*(__p[0] + 4))(__p);
  v6 = *(a1 + 56);
  if (v6 != v5)
  {
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 56) = v5;
  }

  __p[0] = &unk_1F5EE4F78;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_1E4FBD724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  ImsResult::~ImsResult(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipOfferAnswer::updateWithOutgoingRequest(SipOfferAnswer *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipOfferAnswer::updateWithOutgoingMessage(a1, v5, a3, a4);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4FBD7D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipOfferAnswer::updateWithOutgoingMessage(SipOfferAnswer *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = SipMessage::body<SipSdpBody>(*a2);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v10 = v8[1];
  v9 = v8[2];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v10)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v9;
      goto LABEL_7;
    }

    v11 = v9;
LABEL_10:
    v14 = *(a1 + 1);
    v13 = (a1 + 8);
    v15 = (*(v14 + 64))(v13);
    (*(*v13 + 16))(v13, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "outgoing ", 9);
    *(v15 + 17) = 0;
    (*(**a2 + 40))(&v71);
    LoggableString::LoggableString(&__p, &v71);
    (*(*v15 + 40))(v15, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " message does not contain SDP", 29);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    if (v11)
    {
      goto LABEL_96;
    }

    return;
  }

  v11 = 0;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_7:
  (*(**a2 + 40))(&__str);
  v12 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v12)
  {
    v65 = v12[15];
  }

  else
  {
    v65 = 0;
  }

  if (SipOfferAnswer::satisfied(a1))
  {
    v16 = *(a1 + 27);
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    v21 = *(v18 + 95);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(v18 + 80);
    }

    if (v20 == v21)
    {
      v23 = v19 >= 0 ? a3 : *a3;
      v26 = *(v18 + 72);
      v25 = v18 + 72;
      v24 = v26;
      v27 = (v22 >= 0 ? v25 : v24);
      if (!memcmp(v23, v27, v20))
      {
        v54 = (a1 + 8);
        v55 = (*(*(a1 + 1) + 56))(a1 + 1);
        (*(*(a1 + 1) + 16))(a1 + 1, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "already have offer and answer for transaction ", 46);
        *(v55 + 17) = 0;
        ObfuscatedString::ObfuscatedString(&__p, a3);
        (*(*v55 + 56))(v55, &__p);
        if (v70 < 0)
        {
          operator delete(v69);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v56 = (*(*v54 + 56))(a1 + 1);
        (*(*v54 + 16))(a1 + 1, v56);
        (*(*a1 + 16))(a1, v56);
        (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v56[17] = 0;
        v53 = 1073741826;
LABEL_91:
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 8) = &_bambiDomain;
        *(a4 + 16) = v53;
        goto LABEL_92;
      }
    }

    v28 = (*(*(a1 + 1) + 64))(a1 + 1);
    (*(*(a1 + 1) + 16))(a1 + 1, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "starting new offer/answer", 25);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    SipOfferAnswer::startNewExchange(a1);
  }

  SipOfferAnswer::local(a1, &__p);
  v30 = *__p.__r_.__value_.__l.__data_;
  v29 = *(__p.__r_.__value_.__r.__words[0] + 8);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v30)
  {
    v31 = (a1 + 8);
    v32 = (*(*(a1 + 1) + 56))(a1 + 1);
    (*(*(a1 + 1) + 16))(a1 + 1, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "received duplicate local offer from ", 36);
    *(v32 + 17) = 0;
    LoggableString::LoggableString(&__p, &__str);
    (*(*v32 + 40))(v32, &__p);
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v32 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = (*(*v31 + 56))(a1 + 1);
    (*(*v31 + 16))(a1 + 1, v33);
    (*(*a1 + 16))(a1, v33);
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v33[17] = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 1073741826;
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (!v30)
  {
    SipOfferAnswer::remote(a1, &__p);
    v35 = *__p.__r_.__value_.__l.__data_;
    v34 = *(__p.__r_.__value_.__r.__words[0] + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v36 = *(a1 + 27);
    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v66 = v11;
    if (!v35)
    {
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v42 = (*(*(a1 + 1) + 64))(a1 + 1);
      (*(*(a1 + 1) + 16))(a1 + 1, v42);
      std::string::operator=((v38 + 72), a3);
      *(v38 + 96) = v65;
      v43 = *(v38 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipOfferAnswerItem::set(v43, v10, v11, &__str);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v45 = *(v38 + 8);
      v44 = *(v38 + 16);
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v46 = *(v38 + 48);
      *(v38 + 40) = v45;
      *(v38 + 48) = v44;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "setting local offer from ", 25);
      *(v42 + 17) = 0;
      LoggableString::LoggableString(&v71, &__str);
      (*(*v42 + 40))(v42, &v71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), " in transaction ", 16);
      *(v42 + 17) = 0;
      ObfuscatedString::ObfuscatedString(&__p, a3);
      (*(*v42 + 56))(v42, &__p);
      (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v42 + 17) = 0;
      if (v70 < 0)
      {
        operator delete(v69);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (!v37)
      {
LABEL_76:
        v47 = 1;
        if (!v34)
        {
LABEL_78:
          v11 = v66;
          if (!v47)
          {
            goto LABEL_92;
          }

          v48 = (*(*(a1 + 1) + 64))(a1 + 1);
          (*(*(a1 + 1) + 16))(a1 + 1, v48);
          (*(*a1 + 16))(a1, v48);
          (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v48[17] = 0;
          v49 = *(a1 + 25);
          if (v49)
          {
            v50 = std::__shared_weak_count::lock(v49);
            if (v50)
            {
              v51 = v50;
              v52 = *(a1 + 24);
              if (v52 && SipOfferAnswer::satisfied(a1))
              {
                (*(*v52 + 32))(v52);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            }
          }

          v53 = 0;
          goto LABEL_91;
        }

LABEL_77:
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        goto LABEL_78;
      }

LABEL_75:
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      goto LABEL_76;
    }

    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = SipOfferAnswerExchange::validateSdpSource(v38, &__str, a3);
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      if (v39)
      {
        v40 = *(a1 + 27);
        v38 = *(v40 + 16);
        v37 = *(v40 + 24);
        if (v37)
        {
          v41 = 0;
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_101;
        }

LABEL_100:
        v41 = 1;
LABEL_101:
        if (v9)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = (*(*(a1 + 1) + 64))(a1 + 1);
        (*(*(a1 + 1) + 16))(a1 + 1, v57);
        v58 = *(v38 + 8);
        if (v9)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipOfferAnswerItem::set(v58, v10, v66, &__str);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        v60 = *(v38 + 8);
        v59 = *(v38 + 16);
        if (v59)
        {
          atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
        }

        v61 = *(v38 + 64);
        *(v38 + 56) = v60;
        *(v38 + 64) = v59;
        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "setting local answer from ", 26);
        *(v57 + 17) = 0;
        LoggableString::LoggableString(&__p, &__str);
        (*(*v57 + 40))(v57, &__p);
        (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v57 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (v41)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }
    }

    else if (SipOfferAnswerExchange::validateSdpSource(v38, &__str, a3))
    {
      v37 = 0;
      goto LABEL_100;
    }

    v62 = (a1 + 8);
    v63 = (*(*(a1 + 1) + 56))(a1 + 1);
    (*(*(a1 + 1) + 16))(a1 + 1, v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "unexpected transaction for local answer: ", 41);
    *(v63 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&__p, a3);
    (*(*v63 + 56))(v63, &__p);
    (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v63 + 17) = 0;
    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v64 = (*(*v62 + 56))(a1 + 1);
    (*(*v62 + 16))(a1 + 1, v64);
    (*(*a1 + 16))(a1, v64);
    (*(*v64 + 64))(v64, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v47 = 0;
    v64[17] = 0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 1073741826;
    if (!v34)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_92:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_96:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4FBE754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void SipOfferAnswer::updateWithOutgoingResponse(SipOfferAnswer *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipOfferAnswer::updateWithOutgoingMessage(a1, v5, a3, a4);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4FBE990(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipOfferAnswer::log(SipOfferAnswer *this, ImsOutStream *a2)
{
  v2 = *(this + 27);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 16))(v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E4FBEA14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipOfferAnswerExchange::~SipOfferAnswerExchange(void **this)
{
  *this = &unk_1F5EE4CC8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  *this = &unk_1F5EE4CC8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  JUMPOUT(0x1E69235B0);
}

void BambiCallTerminationResult::~BambiCallTerminationResult(void **this)
{
  *this = &unk_1F5EE4F78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EE4F78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void *BambiCallTerminationResult::BambiCallTerminationResult(void *a1, __int128 *a2)
{
  *a1 = &unk_1F5EE4F78;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void std::__shared_ptr_emplace<SipOfferAnswerItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipOfferAnswerItem>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ims::SharedLoggable<SipOfferAnswer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipOfferAnswer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipOfferAnswerExchange>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPPrecondition::parse(unsigned int *a1, std::string *a2)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v58, " ");
  v4 = ims::tokenize(a2, &v59, &v58);
  v5 = v4;
  if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = std::string::basic_string[abi:ne200100]<0>(&v58, "sdp.parse");
    v54[0] = 0;
    v57 = 0;
    v8 = ims::error(v7, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Precondition has no tokens", 26);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v9 = 0;
    goto LABEL_92;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  memset(&v58, 0, sizeof(v58));
  if (*(v59 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *v59, *(v59 + 1));
  }

  else
  {
    v6 = *v59;
    v58.__r_.__value_.__r.__words[2] = *(v59 + 2);
    *&v58.__r_.__value_.__l.__data_ = v6;
  }

  if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 3)
    {
      v10 = &v58;
      goto LABEL_18;
    }

LABEL_22:
    v14 = std::string::basic_string[abi:ne200100]<0>(&v53, "sdp.parse");
    v49[0] = 0;
    v52 = 0;
    v15 = ims::warn(v14, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Precondition has unsupported type: ", 35);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, &v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for status: ", 13);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, &__p);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v52 == 1 && v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v16 = 0;
    goto LABEL_30;
  }

  if (v58.__r_.__value_.__l.__size_ != 3)
  {
    goto LABEL_22;
  }

  v10 = v58.__r_.__value_.__r.__words[0];
LABEL_18:
  data_low = LOWORD(v10->__r_.__value_.__l.__data_);
  v12 = v10->__r_.__value_.__s.__data_[2];
  if (data_low != 28529 || v12 != 115)
  {
    goto LABEL_22;
  }

  v16 = 1;
LABEL_30:
  a1[1] = v16;
  v17 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_33;
  }

  if (v17 != 1)
  {
    if (v17)
    {
      v23 = std::string::basic_string[abi:ne200100]<0>(&v53, "sdp.parse");
      v35[0] = 0;
      v38 = 0;
      v24 = ims::error(v23, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Precondition has invalid status: ", 33);
      *(v24 + 17) = 0;
      MEMORY[0x1E6923340](*(v24 + 8), *a1);
      *(v24 + 17) = 0;
      (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v24 + 17) = 0;
      if (v38 != 1 || (v37 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

      v22 = v36;
LABEL_53:
      operator delete(v22);
LABEL_54:
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      v9 = 0;
      goto LABEL_90;
    }

LABEL_33:
    v18 = v59;
    if (v60 - v59 == 72)
    {
      memset(&v53, 0, sizeof(v53));
      if (*(v59 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v53, *(v59 + 3), *(v59 + 4));
        v18 = v59;
      }

      else
      {
        v53 = *(v59 + 1);
      }

      memset(&__p, 0, sizeof(__p));
      if (*(v18 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v18 + 6), *(v18 + 7));
      }

      else
      {
        __p = *(v18 + 2);
      }

      {
      }

      else
      {
        v9 = 0;
      }

      a1[2] = 0;
      goto LABEL_86;
    }

    v20 = std::string::basic_string[abi:ne200100]<0>(&v53, "sdp.parse");
    v44[0] = 0;
    v47 = 0;
    v21 = ims::error(v20, v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Precondition has invalid number of tokens: ", 43);
    *(v21 + 17) = 0;
    MEMORY[0x1E6923370](*(v21 + 8), 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
    *(v21 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " for status: ", 13);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, &__p);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47 != 1 || (v46 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v22 = v45;
    goto LABEL_53;
  }

  v19 = v59;
  if (v60 - v59 != 96)
  {
    v25 = std::string::basic_string[abi:ne200100]<0>(&v53, "sdp.parse");
    v40[0] = 0;
    v43 = 0;
    v26 = ims::error(v25, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Precondition has invalid number of tokens: ", 43);
    *(v26 + 17) = 0;
    MEMORY[0x1E6923370](*(v26 + 8), 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " for status: ", 13);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, &__p);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v43 != 1 || (v42 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v22 = v41;
    goto LABEL_53;
  }

  memset(&v53, 0, sizeof(v53));
  if (*(v59 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(v59 + 3), *(v59 + 4));
    v19 = v59;
  }

  else
  {
    v53 = *(v59 + 1);
  }

  memset(&__p, 0, sizeof(__p));
  if (*(v19 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v19 + 6), *(v19 + 7));
    v19 = v59;
  }

  else
  {
    __p = *(v19 + 2);
  }

  memset(&v39, 0, sizeof(v39));
  if (*(v19 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(v19 + 9), *(v19 + 10));
  }

  else
  {
    v39 = *(v19 + 3);
  }

  v27 = 0;
  v28 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  v29 = 40;
  v30 = *&v53.__r_.__value_.__l.__data_;
  while (1)
  {
    v32 = v31;
    if ((v28 & 0x80) != 0)
    {
      break;
    }

    if (v31 == v28)
    {
      v33 = &v53;
      goto LABEL_78;
    }

LABEL_79:
    ++v27;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_83;
    }
  }

  if (v31 != *(&v30 + 1))
  {
    goto LABEL_79;
  }

  v33 = v30;
  if (*(&v30 + 1) == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_78:
  {
    goto LABEL_79;
  }

  a1[2] = v27;
  {
    goto LABEL_84;
  }

LABEL_83:
  v9 = 0;
LABEL_84:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_86:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_90:
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_92:
  v58.__r_.__value_.__r.__words[0] = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
  return v9;
}

void sub_1E4FBF750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (*(v59 - 185) < 0)
  {
    operator delete(*(v59 - 208));
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  *(v59 - 128) = v59 - 104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v59 - 128));
  _Unwind_Resume(a1);
}

uint64_t operator<<(uint64_t a1, unsigned int *a2)
{
  (*(*a1 + 32))(a1, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), ":", 1);
  *(a1 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "qos", 3);
  *(a1 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " ", 1);
  *(a1 + 17) = 0;
  v4 = *a2;
  if (*a2 == 2)
  {
    goto LABEL_6;
  }

  if (v4 == 1)
  {
    (*(*a1 + 32))(a1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " ", 1);
    *(a1 + 17) = 0;
    (*(*a1 + 32))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " ", 1);
    *(a1 + 17) = 0;
    (*(*a1 + 32))(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_6:
    (*(*a1 + 32))(a1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " ", 1);
    *(a1 + 17) = 0;
    (*(*a1 + 32))(a1, v15);
LABEL_9:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v5 = v15[0];
    goto LABEL_14;
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v17, "sdp");
  v9[0] = 0;
  v12 = 0;
  v7 = ims::error(v6, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Precondition has invalid status: ", 33);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    v5 = v10;
LABEL_14:
    operator delete(v5);
  }

LABEL_15:
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return a1;
}

{
  LoggableString::LoggableString(&__p, &registrationModeNames[24 * *a2]);
  (*(*a1 + 40))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E4FBFC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::enumValueFromString<PreconditionStatusType,std::array<char const*,4ul>>(const void **a1, _DWORD *a2)
{
  v4 = 0;
  v5 = *(a1 + 23);
  v7 = *a1;
  v6 = a1[1];
  v8 = 32;
  while (1)
  {
    v10 = v9;
    if ((v5 & 0x80) == 0)
    {
      break;
    }

    if (v9 == v6)
    {
      v11 = v7;
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_7;
    }

LABEL_8:
    ++v4;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  v11 = a1;
  if (v10 != v5)
  {
    goto LABEL_8;
  }

LABEL_7:
  {
    goto LABEL_8;
  }

  *a2 = v4;
  return 1;
}

uint64_t anonymous namespace::enumValueFromString<PreconditionDirection,std::array<char const*,4ul>>(const void **a1, _DWORD *a2)
{
  v4 = 0;
  v5 = *(a1 + 23);
  v7 = *a1;
  v6 = a1[1];
  v8 = 32;
  while (1)
  {
    v10 = v9;
    if ((v5 & 0x80) == 0)
    {
      break;
    }

    if (v9 == v6)
    {
      v11 = v7;
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_7;
    }

LABEL_8:
    ++v4;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  v11 = a1;
  if (v10 != v5)
  {
    goto LABEL_8;
  }

LABEL_7:
  {
    goto LABEL_8;
  }

  *a2 = v4;
  return 1;
}

void SDPPreconditionTable::SDPPreconditionTable(SDPPreconditionTable *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = 0x100000000uLL;
  v5 = 0;
  if (a2)
  {
    *(&v4 + 1) = 0x100000001;
    std::vector<SDPPreconditionRow>::push_back[abi:ne200100](this, &v4);
    v3 = 2;
    HIDWORD(v4) = 2;
    std::vector<SDPPreconditionRow>::push_back[abi:ne200100](this, &v4);
  }

  else
  {
    v3 = 3;
  }

  *(&v4 + 1) = v3 | 0x100000000;
  std::vector<SDPPreconditionRow>::push_back[abi:ne200100](this, &v4);
  HIDWORD(v4) = 2;
  std::vector<SDPPreconditionRow>::push_back[abi:ne200100](this, &v4);
}

void sub_1E4FBFEF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SDPPreconditionRow>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SDPPreconditionRow>>(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
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
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

void SDPPreconditionTable::SDPPreconditionTable(SDPPreconditionTable *this, char **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (this != a2)
  {
    std::vector<SDPPreconditionRow>::__assign_with_size[abi:ne200100]<SDPPreconditionRow*,SDPPreconditionRow*>(this, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
  }
}

void sub_1E4FC006C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPPreconditionTable::rowsAreSatisfied(void *a1, int a2)
{
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = (*a1 + 16);
    v5 = 1;
    while (1)
    {
      v6 = v4 - 4;
      if (*(v4 - 2) == a2)
      {
        if (*v4 == 3)
        {
          if (!*(v4 - 3))
          {
            v5 = 0;
            return v5 & 1;
          }

          v5 &= *(v4 - 16);
        }

        else
        {
          v7 = std::string::basic_string[abi:ne200100]<0>(v24, "sdp.precon");
          v20[0] = 0;
          v23 = 0;
          v8 = ims::debug(v7, v20);
          (*(*v8 + 32))(v8, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " row is not mandatory", 21);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21);
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }
        }
      }

      v4 += 5;
      if (v6 + 5 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 1;
LABEL_17:
  v9 = std::string::basic_string[abi:ne200100]<0>(v24, "sdp.precon");
  v14[0] = 0;
  v17 = 0;
  v10 = ims::debug(v9, v14);
  (*(*v10 + 32))(v10, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " rows of precondition table are ", 32);
  *(v10 + 17) = 0;
  if (v5)
  {
    v11 = "";
  }

  else
  {
    v11 = "not ";
  }

  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "satisfied", 9);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  return v5 & 1;
}

void sub_1E4FC0364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPPreconditionTable::processPrecondition(uint64_t *a1, int *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      if (*(v8 + 4) == v3)
      {
        v11 = *(v8 + 12) == v7 || v7 == 3;
        if (v11 && *(v8 + 8) == v5)
        {
          if (v4)
          {
            if (v4 == 2)
            {
              *(v8 + 1) = 1;
            }

            else if (v4 == 1)
            {
              if (*(v8 + 16) < v6)
              {
                *(v8 + 16) = v6;
                v10 = 1;
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v20, "sdp.precon");
              v16[0] = 0;
              v19 = 0;
              v13 = ims::warn(&v20, v16);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Received an unknown precondition type, not sure what to do", 58);
              *(v13 + 17) = 0;
              (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v13 + 17) = 0;
              if (v19 == 1 && v18 < 0)
              {
                operator delete(__p);
              }

              if (v22 < 0)
              {
                operator delete(v20);
              }
            }
          }

          else
          {
            v10 = 1;
            *v8 = 1;
          }
        }
      }

      v8 += 20;
    }

    while (v8 != v9);
  }

  if ((v10 & 1) == 0)
  {
    if (v3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4 == 1;
    }

    if (v14)
    {
      *&v20 = 0;
      v21 = v6;
      *(&v20 + 1) = __PAIR64__(v7, v5);
      std::vector<SDPPreconditionRow>::push_back[abi:ne200100](a1, &v20);
      v10 = 1;
    }
  }

  return v10 & 1;
}

void sub_1E4FC05AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t operator<<(uint64_t a1, unsigned __int8 **this)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  SDPPreconditionTable::getPreconditions(this, &v10);
  for (i = v11; i != &v10; i = *(i + 8))
  {
    v9 = 0;
    v8 = 0;
    *v7 = *(i + 16);
    *&v7[13] = *(i + 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "\r\n", 2);
    *(a1 + 17) = 0;
    v4 = *(a1 + 8);
    v13 = 97;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v13, 1);
    *(a1 + 17) = 0;
    v5 = *(a1 + 8);
    v13 = 61;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v13, 1);
    *(a1 + 17) = 0;
    operator<<(a1, v7);
  }

  std::__list_imp<unsigned long long>::clear(&v10);
  return a1;
}

void sub_1E4FC06DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__list_imp<unsigned long long>::clear(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **SDPPreconditionTable::getPreconditions@<X0>(unsigned __int8 **this@<X0>, unsigned __int8 **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    return this;
  }

  do
  {
    if (v2[4] >= 1)
    {
      v5 = *v2;
      v6 = *(v2 + 1);
      v8 = v2[1];
      v7 = v2[2];
      v9 = v2[3];
      operator new();
    }

    v2 += 5;
  }

  while (v2 != v3);
  v10 = a2[1];
  if (v10 == a2)
  {
    return this;
  }

  do
  {
    this = v10[1];
    if (this == a2)
    {
      goto LABEL_25;
    }

    do
    {
      if (*(v10 + 4) != *(this + 4) || *(v10 + 5) != *(this + 5) || *(v10 + 6) != *(this + 6) || *(v10 + 7) != *(this + 7))
      {
LABEL_19:
        this = this[1];
        continue;
      }

      v11 = *(v10 + 8);
      if (v11 != *(this + 8))
      {
        if (v11 > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = dword_1E5178D20[v11];
        }

        v13 = *(this + 8);
        if (v12 == v13)
        {
          *(v10 + 8) = 3;
        }

        else
        {
          if (v11)
          {
            if (v13)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v11 = *(this + 8);
          }

          *(v10 + 8) = v11;
        }
      }

      v14 = *this;
      v15 = this[1];
      *(v14 + 1) = v15;
      *v15 = v14;
      --a2[2];
      operator delete(this);
      this = v15;
    }

    while (this != a2);
    this = v10[1];
LABEL_25:
    v10 = this;
  }

  while (this != a2);
  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SDPPreconditionRow>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<SDPPreconditionRow>::__assign_with_size[abi:ne200100]<SDPPreconditionRow*,SDPPreconditionRow*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<SDPPreconditionRow>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<SDPPreconditionRow>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SDPPreconditionRow>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void SipReplacesHeader::~SipReplacesHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsResultSet::fromString(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v4 = a1 + 8;
  std::__tree<unsigned int>::destroy(a1 + 8, *(a1 + 16));
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    ims::tokenize(a2, &v13, 0x2Cu);
    v6 = v13;
    v7 = v14;
    while (1)
    {
      if (v6 == v7)
      {
        v16 = &v13;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
        return 1;
      }

      LODWORD(v16) = 0;
      v8 = v6[23];
      if (v8 < 0)
      {
        v9 = *v6;
        if (*(v6 + 1) != 1)
        {
          goto LABEL_13;
        }

        v10 = *v9;
      }

      else
      {
        v9 = v6;
        if (v8 != 1)
        {
          goto LABEL_13;
        }

        v10 = *v6;
        v9 = v6;
      }

      if (v10 == 42)
      {
        v11 = -1;
        goto LABEL_14;
      }

LABEL_13:
      v11 = strtoul(v9, 0, 10);
LABEL_14:
      LODWORD(v16) = v11;
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v4, &v16);
      v6 += 24;
    }
  }

  return 1;
}

void sub_1E4FC0E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL ImsResultSet::containsResult(ImsResultSet *this, unsigned int a2)
{
  v4 = *(this + 2);
  v2 = this + 16;
  v3 = v4;
  v5 = v2;
  if (!v4)
  {
    return v5 != v2;
  }

  v6 = v2;
  v7 = v3;
  do
  {
    v8 = *(v7 + 7);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *&v7[8 * v10];
  }

  while (v7);
  if (v6 == v2 || *(v6 + 7) > a2)
  {
    do
    {
      v11 = *(v3 + 7);
      v12 = v11 == -1;
      v13 = v11 != -1;
      if (v12)
      {
        v5 = v3;
      }

      v3 = *&v3[8 * v13];
    }

    while (v3);
    return v5 != v2;
  }

  return 1;
}

void ImsResultSet::log(ImsResultSet *this, ImsOutStream *a2)
{
  v4 = 1;
  LOWORD(__p) = 44;
  v2 = *(this + 1);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  ImsStringOutStream::ImsStringOutStream(v5);
}

void sub_1E4FC1110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsResultSet::operator==(void *a1, uint64_t a2)
{
  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 == a1 + 2)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  do
  {
    v5 = *(v2 + 7);
    v6 = *(v4 + 7);
    result = v5 == v6;
    if (v5 != v6)
    {
      break;
    }

    v8 = v2[1];
    v9 = v2;
    if (v8)
    {
      do
      {
        v2 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v2 = v9[2];
        v10 = *v2 == v9;
        v9 = v2;
      }

      while (!v10);
    }

    v11 = v4[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v4[2];
        v10 = *v12 == v4;
        v4 = v12;
      }

      while (!v10);
    }

    v4 = v12;
  }

  while (v2 != v3);
  return result;
}

void ImsResultSet::~ImsResultSet(ImsResultSet *this)
{
  *this = &unk_1F5EE5038;
  std::__tree<unsigned int>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F5EE5038;
  std::__tree<unsigned int>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1E69235B0);
}

BOOL SipPLastAccessNetworkInfoHeader::setAccessNetworkInfo(SipPLastAccessNetworkInfoHeader *this, std::string *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v6 = SipPAccessNetworkInfoHeader::setAccessNetworkInfo(this, a2, __p, 0);
  v7 = v6;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      return v7;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    *(this + 17) = a2[2].__r_.__value_.__l.__size_;
    *(this + 36) = 0;
    *(this + 52) = 0;
    gmtime_r(this + 17, (this + 152));
    *(this + 27) = a3;
    v8 = this + 216;
    *(v8 + 2) = 0;
    *(v8 + 18) = 0;
    gmtime_r(v8, (v8 + 16));
  }

  return v7;
}

void sub_1E4FC13CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPLastAccessNetworkInfoHeader::encode(SipPLastAccessNetworkInfoHeader *this, ImsOutStream *a2, int a3)
{
  SipHeader::encode(this, a2, a3);
  SipParameterMap::toStream((this + 64), a2, 0, 0, 0, 0);
  v5 = (this + 216);
  if (*(this + 27))
  {
    v7 = *(this + 17);
    v6 = (this + 136);
    if (v7)
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
      ImsInternetDateTime::toString(v6, &__p);
      ims::addPercentEscapes(&__p, 0, 0);
      ims::addQuotes(&__p, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ";", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, &__p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v9 = 0;
    v10 = 0;
    ImsInternetDateTime::toString(v5, &__p);
    ims::addPercentEscapes(&__p, 0, 0);
    ims::addQuotes(&__p, 0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ";", 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, &__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1E4FC1558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPLastAccessNetworkInfoHeader::decode(uint64_t a1, std::string *__str)
{
  v2 = __str;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = v4 < 0;
  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
    while (size)
    {
      v9 = v8[size--];
      if (v9 == 59)
      {
        goto LABEL_13;
      }
    }
  }

  size = -1;
LABEL_13:
  memset(&__stra, 0, sizeof(__stra));
  std::string::basic_string(&__stra, __str, 0, size, &v30);
  memset(&v36, 0, sizeof(v36));
  v10 = std::string::basic_string(&v36, v2, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v30);
  ims::chomp(v10, "\r\n\t ", 3);
  ims::removeQuotes(&v36);
  ims::removePercentEscapes(&v36);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  ImsInternetDateTime::fromString(&v36, a1 + 216, &v30);
  if ((*(**(&v30 + 1) + 24))(*(&v30 + 1), v31))
  {
    std::string::basic_string[abi:ne200100]<0>(&v25, "sip.parse");
    v26[0] = 0;
    v29 = 0;
    v11 = ims::debug(&v25, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Unable to parse P-Last-Access-Network-Info header reg timestamp: ", 65);
    *(v11 + 17) = 0;
    (*(v30 + 16))(&v30, v11);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = HIBYTE(__stra.__r_.__value_.__r.__words[2]);
    p_stra = &__stra;
    if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __stra.__r_.__value_.__l.__size_;
      p_stra = __stra.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      v14 = v12 + 1;
      while (1)
      {
        v15 = v14 - 1;
        if (v14 == 1)
        {
          break;
        }

        v16 = p_stra->__r_.__value_.__s.__data_[v14-- - 2];
        if (v16 == 59)
        {
          if (v15)
          {
            v17 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
            if ((v17 & 0x80u) != 0)
            {
              v17 = v2->__r_.__value_.__l.__size_;
            }

            if (v17 != v15)
            {
              std::string::basic_string(&v25, &__stra, v15, 0xFFFFFFFFFFFFFFFFLL, &v38);
              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v36.__r_.__value_.__l.__data_);
              }

              v36 = v25;
              ims::chomp(&v36, "\r\n\t ", 3);
              ims::removeQuotes(&v36);
              ims::removePercentEscapes(&v36);
              ImsInternetDateTime::fromString(&v36, a1 + 136, &v25);
              ImsResult::operator=(&v30, &v25);
              ImsResult::~ImsResult(&v25);
              if ((*(**(&v30 + 1) + 24))(*(&v30 + 1), v31))
              {
                std::string::basic_string[abi:ne200100]<0>(&v25, "sip.parse");
                v21[0] = 0;
                v24 = 0;
                v18 = ims::debug(&v25, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Unable to parse P-Last-Access-Network-Info header timestamp: ", 61);
                *(v18 + 17) = 0;
                (*(v30 + 16))(&v30, v18);
                (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v18 + 17) = 0;
                if (v24 == 1 && v23 < 0)
                {
                  operator delete(v22);
                }

                if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v25.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                std::string::basic_string(&v25, &__stra, 0, v15 - 1, &v38);
                if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__stra.__r_.__value_.__l.__data_);
                }

                __stra = v25;
              }
            }
          }

          break;
        }
      }
    }

    v2 = &__stra;
  }

  v19 = SipParameterHeader::decode(a1, v2);
  ImsResult::~ImsResult(&v30);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  return v19;
}

void sub_1E4FC19E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  ImsResult::~ImsResult(&a45);
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  _Unwind_Resume(a1);
}

void SipPLastAccessNetworkInfoHeader::~SipPLastAccessNetworkInfoHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

ImsOutStream *SipSecurityAgreementConfig::log(SipSecurityAgreementConfig *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(&__p, (this + 8));
  (*(*a2 + 40))(a2, &__p);
  v4 = *(a2 + 1);
  v7 = 59;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v7, 1);
  *(a2 + 17) = 0;
  (*(*(this + 4) + 16))(this + 32, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_1E4FC1D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayerConfig::initializeFromPrefs(SipTransportLayerConfig *this, const ImsPrefs *a2, const ims::StackConfig *a3, const ClientConfig *a4)
{
  v5 = this;
  v96 = *MEMORY[0x1E69E9840];
  *(this + 596) = *(a3 + 731);
  *(this + 597) = *(a3 + 366);
  *(this + 126) = ImsPrefs::MaxUdpMessageSize(a2);
  *(v5 + 439) = ImsPrefs::ForceTcp(a2);
  *(v5 + 441) = ImsPrefs::ForceTls(a2);
  *(v5 + 111) = ImsPrefs::TLSIdlePingIntervalSeconds(a2);
  *(v5 + 112) = ImsPrefs::TCPIdlePingIntervalSeconds(a2);
  *(v5 + 113) = ImsPrefs::CRLFMinimumPingIntervalSeconds(a2);
  *(v5 + 114) = ImsPrefs::CRLFPingIntervalDeltaSeconds(a2);
  *(v5 + 115) = ImsPrefs::SuccessfulCRLFPingsUntilIntervalGrowth(a2);
  *(v5 + 442) = ImsPrefs::UseCrlfIntervalFromRegistrationKeep(a2);
  *(v5 + 116) = ImsPrefs::TLSKeepAliveIntervalSeconds(a2);
  ImsPrefs::PCSCFDomainName(a2, __p);
  v6 = (v5 + 472);
  if (*(v5 + 495) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *__p;
  *(v5 + 61) = *&__p[16];
  *(v5 + 440) = ImsPrefs::AllowResponsesOverDifferentTransport(a2);
  *(v5 + 124) = ImsPrefs::TcpIdleTimeoutSeconds(a2);
  *(v5 + 125) = ImsPrefs::ShutdownWaitTimeSeconds(a2);
  *(v5 + 438) = ImsPrefs::UseIPSec(a2);
  *(v5 + 537) = ImsPrefs::EnableLastAccessNetworkInfo(a2);
  *(v5 + 538) = ImsPrefs::EnableCellularNetworkInfo(a2);
  *(v5 + 217) = ImsPrefs::DefaultRemoteSipPort(a2);
  *(v5 + 216) = ImsPrefs::DefaultLocalSipPort(a2);
  *(v5 + 436) = ImsPrefs::UseEphemeralSipSourcePortForTcp(a2);
  *(v5 + 135) = ImsPrefs::MaxTransportErrors(a2);
  ImsPrefs::FatalTransportErrors(a2, __p);
  ImsResultSet::fromString(v5 + 544, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(&v75, 0, sizeof(v75));
  ImsPrefs::SecurityAgreementOptions(a2, &v75);
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  v66 = a2;
  v67 = v5;
  if (!size)
  {
    ims::getStaticLoggerFor("sip.tport", __p);
    v8 = *&__p[8];
    ctu::OsLogContext::~OsLogContext(__p);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "generating SecurityAgreementOptions", __p, 2u);
    }

    memset(&__str, 0, sizeof(__str));
    std::string::basic_string[abi:ne200100]<0>(&__str, "ipsec-3gpp");
    v82 = 0;
    v83 = 0;
    v84 = 0;
    std::string::basic_string[abi:ne200100]<0>(&v82, "mod=trans;prot=esp");
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "SecurityAgreementAlgs");
    ImsPrefs::stringArrayValues(a2, __p, &v79);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "SecurityAgreementEalgs");
    ImsPrefs::stringArrayValues(a2, __p, &v76);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v92 = 0;
    v90 = 0u;
    memset(v91, 0, sizeof(v91));
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    __src = 0u;
    memset(__p, 0, sizeof(__p));
    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v10 = v79;
    for (i = v80; v10 != i; v10 += 3)
    {
      v12 = v76;
      v11 = v77;
      while (v12 != v11)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __str.__r_.__value_.__l.__size_;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, p_str, v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ";alg=", 5);
        v17 = *(v10 + 23);
        if (v17 >= 0)
        {
          v18 = v10;
        }

        else
        {
          v18 = *v10;
        }

        if (v17 >= 0)
        {
          v19 = *(v10 + 23);
        }

        else
        {
          v19 = v10[1];
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ";ealg=", 6);
        v22 = *(v12 + 23);
        if (v22 >= 0)
        {
          v23 = v12;
        }

        else
        {
          v23 = *v12;
        }

        if (v22 >= 0)
        {
          v24 = *(v12 + 23);
        }

        else
        {
          v24 = v12[1];
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ";", 1);
        if (v84 >= 0)
        {
          v27 = &v82;
        }

        else
        {
          v27 = v82;
        }

        if (v84 >= 0)
        {
          v28 = HIBYTE(v84);
        }

        else
        {
          v28 = v83;
        }

        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",", 1);
        v12 += 3;
      }
    }

    if ((BYTE8(v90) & 0x10) != 0)
    {
      v31 = v90;
      if (v90 < *(&__src + 1))
      {
        *&v90 = *(&__src + 1);
        v31 = *(&__src + 1);
      }

      v32 = __src;
    }

    else
    {
      if ((BYTE8(v90) & 8) == 0)
      {
        v30 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_56:
        v33 = MEMORY[0x1E69E54E8];
        __dst.__r_.__value_.__s.__data_[v30] = 0;
        *__p = *v33;
        *&__p[*(*__p - 24)] = v33[3];
        *&__p[8] = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v89) < 0)
        {
          operator delete(*(&v88 + 1));
        }

        *&__p[8] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&__p[16]);
        std::ostream::~ostream();
        MEMORY[0x1E6923510](v91);
        *__p = &v76;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        *__p = &v79;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v84) < 0)
        {
          operator delete(v82);
        }

        v5 = v67;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        v75 = __dst;
        goto LABEL_65;
      }

      v32 = *&__p[24];
      v31 = *(&v86 + 1);
    }

    v30 = v31 - v32;
    if ((v31 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v31 - v32;
    if (v30)
    {
      memmove(&__dst, v32, v30);
    }

    goto LABEL_56;
  }

LABEL_65:
  ims::getStaticLoggerFor("sip.tport", __p);
  v34 = *&__p[8];
  ctu::OsLogContext::~OsLogContext(__p);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = &v75;
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v75.__r_.__value_.__r.__words[0];
    }

    *__p = 136315138;
    *&__p[4] = v35;
    _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_DEFAULT, "configured SecurityAgreementOptions : %s", __p, 0xCu);
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  ims::tokenize(&v75, &v82, 0x2Cu);
  v37 = v82;
  v36 = v83;
  if (v82 != v83)
  {
    v69 = (v5 + 512);
    v70 = v83;
    do
    {
      v38 = std::string::find(v37, 59, 0);
      if (v38 == -1)
      {
        ims::getStaticLoggerFor("sip.tport", __p);
        v43 = *&__p[8];
        ctu::OsLogContext::~OsLogContext(__p);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = v37;
          if (SHIBYTE(v37->__r_.__value_.__r.__words[2]) < 0)
          {
            v44 = v37->__r_.__value_.__r.__words[0];
          }

          *__p = 136315138;
          *&__p[4] = v44;
          _os_log_error_impl(&dword_1E4C3F000, v43, OS_LOG_TYPE_ERROR, "#E no semicolon in security agreement option %s", __p, 0xCu);
        }
      }

      else
      {
        v39 = v38;
        *&v88 = 256;
        *__p = &unk_1F5EE5120;
        memset(&__p[8], 0, 24);
        __src = 0uLL;
        *&v86 = &unk_1F5EBEF50;
        *(&v86 + 1) = &__src;
        std::string::basic_string(&__str, v37, 0, v38, &v79);
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        *&__p[8] = __str;
        std::string::basic_string(&__str, v37, v39 + 1, 0xFFFFFFFFFFFFFFFFLL, &v79);
        SipParameterMap::fromString(&v86, &__str, 0, 0);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (*(&__src + 1))
        {
          v40 = *(v5 + 65);
          v41 = *(v5 + 66);
          if (v40 >= v41)
          {
            v47 = 0x8E38E38E38E38E39 * ((v40 - *v69) >> 3);
            v48 = v47 + 1;
            if (v47 + 1 > 0x38E38E38E38E38ELL)
            {
              std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
            }

            v49 = 0x8E38E38E38E38E39 * ((v41 - *v69) >> 3);
            if (2 * v49 > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x1C71C71C71C71C7)
            {
              v50 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v50 = v48;
            }

            v95 = v69;
            if (v50)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<SipSecurityAgreementConfig>>(v69, v50);
            }

            __str.__r_.__value_.__r.__words[0] = 0;
            __str.__r_.__value_.__l.__size_ = 72 * v47;
            __str.__r_.__value_.__r.__words[2] = 72 * v47;
            v94 = 0;
            std::allocator_traits<std::allocator<SipSecurityAgreementConfig>>::construct[abi:ne200100]<SipSecurityAgreementConfig,SipSecurityAgreementConfig const&,void,0>(72 * v47, __p);
            v51 = *(v5 + 65);
            v52 = *(v5 + 64);
            v53 = __str.__r_.__value_.__l.__size_ - (v51 - v52);
            v42 = __str.__r_.__value_.__r.__words[2] + 72;
            __str.__r_.__value_.__r.__words[2] += 72;
            if (v51 != v52)
            {
              v54 = 0;
              v55 = __str.__r_.__value_.__l.__size_ - 8 * ((v51 - v52) >> 3) - 72;
              v56 = __str.__r_.__value_.__l.__size_ - (v51 - v52);
              v57 = v52;
              v68 = v56;
              do
              {
                std::allocator_traits<std::allocator<SipSecurityAgreementConfig>>::construct[abi:ne200100]<SipSecurityAgreementConfig,SipSecurityAgreementConfig const&,void,0>(v56, v57);
                v57 += 72;
                v56 += 72;
                v54 -= 72;
                v55 += 72;
              }

              while (v57 != v51);
              v58 = v52;
              v59 = v52;
              do
              {
                v60 = *v59;
                v59 += 9;
                (*v60)(v52);
                v58 += 72;
                v52 = v59;
              }

              while (v59 != v51);
              v53 = v68;
              v52 = *v69;
              v42 = __str.__r_.__value_.__r.__words[2];
              v5 = v67;
            }

            *(v5 + 64) = v53;
            *(v5 + 65) = v42;
            v61 = *(v5 + 66);
            *(v5 + 66) = v94;
            __str.__r_.__value_.__r.__words[2] = v52;
            v94 = v61;
            __str.__r_.__value_.__r.__words[0] = v52;
            __str.__r_.__value_.__l.__size_ = v52;
            std::__split_buffer<SipSecurityAgreementConfig>::~__split_buffer(&__str);
          }

          else
          {
            std::allocator_traits<std::allocator<SipSecurityAgreementConfig>>::construct[abi:ne200100]<SipSecurityAgreementConfig,SipSecurityAgreementConfig const&,void,0>(*(v5 + 65), __p);
            v42 = v40 + 72;
            *(v5 + 65) = v40 + 72;
          }

          *(v5 + 65) = v42;
          v36 = v70;
        }

        else
        {
          ims::getStaticLoggerFor("sip.tport", &__str);
          v45 = __str.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(&__str);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = v37;
            if (SHIBYTE(v37->__r_.__value_.__r.__words[2]) < 0)
            {
              v46 = v37->__r_.__value_.__r.__words[0];
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
            *(__str.__r_.__value_.__r.__words + 4) = v46;
            _os_log_error_impl(&dword_1E4C3F000, v45, OS_LOG_TYPE_ERROR, "#E no params in security agreement option %s", &__str, 0xCu);
          }
        }

        *__p = &unk_1F5EE5120;
        *&v86 = &unk_1F5EBEF50;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v86 + 8, __src);
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }
      }

      ++v37;
    }

    while (v37 != v36);
  }

  *__p = &v82;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *(v5 + 144) = ImsPrefs::TransportInitTimeoutSeconds(v66);
  *(v5 + 580) = ImsPrefs::DisableAccessNetworkInfoForAckAndCancel(v66);
  *(v5 + 588) = ImsPrefs::AddAccessNetworkInfoToInsecureMessages(v66);
  *(v5 + 589) = ImsPrefs::EnableRport(v66);
  *(v5 + 581) = ImsPrefs::ResetConnectionsWhenClosedByPeer(v66);
  *(v5 + 582) = ImsPrefs::RequireExplicitPortsForEmergencyRoutes(v66);
  *(v5 + 146) = ImsPrefs::IPSecSegmentOffset(v66);
  *(v5 + 590) = ImsPrefs::DeferIncomingMessagesUntilWake(v66);
  *(v5 + 148) = ImsPrefs::SystemWakeWaitTimeoutMilliseconds(v66);
  ImsPrefs::NetworkInterface(v66, __p);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *__p;
  *(v5 + 2) = *&__p[16];
  ImsPrefs::ServiceClass(v66, v73);
  std::string::basic_string[abi:ne200100]<0>(__p, "Hotspot");
  ImsServiceClass::ImsServiceClass(&__str, v73, __p);
  if ((v5 + 600) != &__str)
  {
    *(v5 + 75) = __str.__r_.__value_.__r.__words[0];
    *(v5 + 152) = __str.__r_.__value_.__r.__words[1];
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  ims::CFType::~CFType(v73);
  ImsPrefs::ServiceClass(v66, v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Cellular");
  ImsServiceClass::ImsServiceClass(&__str, v72, __p);
  if ((v5 + 624) != &__str)
  {
    *(v5 + 78) = __str.__r_.__value_.__r.__words[0];
    *(v5 + 158) = __str.__r_.__value_.__r.__words[1];
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  ims::CFType::~CFType(v72);
  ImsPrefs::ServiceClass(v66, v71);
  std::string::basic_string[abi:ne200100]<0>(__p, "WiFi");
  ImsServiceClass::ImsServiceClass(&__str, v71, __p);
  if ((v5 + 612) != &__str)
  {
    *(v5 + 612) = __str.__r_.__value_.__r.__words[0];
    *(v5 + 155) = __str.__r_.__value_.__r.__words[1];
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  ims::CFType::~CFType(v71);
  if (*(v5 + 597) == 1)
  {
    *(v5 + 444) = vmin_u32(*(v5 + 444), 0x3C0000003CLL);
    v62 = *(v5 + 113);
    if (v62 >= 0x3C)
    {
      v62 = 60;
    }

    *(v5 + 113) = v62;
    *(v5 + 442) = 0;
    v63 = *(v5 + 124);
    if (v63 >= 0x78)
    {
      v63 = 120;
    }

    *(v5 + 124) = v63;
    v64 = *(v5 + 144);
    if (v64 >= 0xA)
    {
      v64 = 10;
    }

    *(v5 + 144) = v64;
  }

  v65 = *MEMORY[0x1E69E9840];
}

void sub_1E4FC2ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  a45 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a45);
  a45 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a45);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void SipSecurityAgreementConfig::~SipSecurityAgreementConfig(SipSecurityAgreementConfig *this)
{
  *this = &unk_1F5EE5120;
  *(this + 4) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5EE5120;
  *(this + 4) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EE5120;
  *(this + 4) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::allocator_traits<std::allocator<SipSecurityAgreementConfig>>::construct[abi:ne200100]<SipSecurityAgreementConfig,SipSecurityAgreementConfig const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EE5120;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = &unk_1F5EBEF50;
  result = std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>((a1 + 40), *(a2 + 40), (a2 + 48));
  *(a1 + 65) = 1;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_1E4FC2EC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SipSecurityAgreementConfig>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void SipRegistrationMetrics::registrationAttemptStarted(uint64_t a1, _DWORD *a2)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  gettimeofday(&v4, 0);
  *a1 = 1000 * v4.tv_sec + v4.tv_usec / 1000 + 2208988800000;
  *(a1 + 8) = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4.tv_sec = &unk_1F5EBDEF8;
  *&v4.tv_usec = &_bambiDomain;
  v5 = 0;
  ImsResult::operator=(a1 + 16, &v4);
  ImsResult::~ImsResult(&v4);
  *(a1 + 104) = *a2 == 2;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
}

void sub_1E4FC30B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t SipRegistrationMetrics::registrationAttemptCompleted(SipRegistrationMetrics *this, const ImsResult *a2, int a3)
{
  ImsResult::operator=(this + 16, a2);
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  result = gettimeofday(&v6, 0);
  *(this + 1) = 1000 * v6.tv_sec + v6.tv_usec / 1000 + 2208988800000;
  *(this + 43) = a3;
  return result;
}

void SipPPreferredIdentityHeader::~SipPPreferredIdentityHeader(void **this)
{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipAuthResponse::SipAuthResponse(SipAuthResponse *this, const SipAuthChallenge *a2)
{
  *this = &unk_1F5EE51F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::string::operator=((this + 8), (a2 + 8));
  std::string::operator=((this + 32), (a2 + 32));
  *(this + 14) = *(a2 + 14);
}

void sub_1E4FC3310(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAuthResponse::encode(SipAuthResponse *this, ImsOutStream *a2)
{
  v2 = *(*(*(*this + 32))(this) + 48);

  return v2();
}

uint64_t SipAuthResponse::log(SipAuthResponse *this, ImsOutStream *a2)
{
  v2 = *(*(*(*this + 32))(this) + 56);

  return v2();
}

void sub_1E4FC3548(_Unwind_Exception *a1)
{
  dispatch::queue::~queue(v2);

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::CoreLocationStateImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE5268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void dispatch::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

void anonymous namespace::CoreLocationStateImpl::~CoreLocationStateImpl(_anonymous_namespace_::CoreLocationStateImpl *this)
{
  *this = &unk_1F5EE52B8;
  v2 = *(this + 2);
  *(this + 2) = 0;
}

{

  JUMPOUT(0x1E69235B0);
}

void SipAuthInfo::SipAuthInfo(SipAuthInfo *this, SipAuthClient *a2, SipAuthenticateHeader *a3, SipAuthChallengeSource *a4)
{
  *this = &unk_1F5EBEEC0;
  v8 = a2 + 264;
  SipAuthInfoInterface::SipAuthInfoInterface((this + 8), (a2 + 264));
  *this = &unk_1F5EE5308;
  *(this + 1) = &unk_1F5EE5388;
  SipTimerContainer::SipTimerContainer((this + 96));
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 28) = this;
  std::string::operator=(this + 6, (a2 + 8));
  v9 = *v8;
  *(this + 44) = *(v8 + 2);
  *(this + 21) = v9;
  std::string::operator=((this + 184), (a2 + 280));
  *(this + 208) = *(a2 + 304);
  v10 = *(this + 8);
  v11 = *(v10 + 31);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v10 + 16);
  }

  if (v11 == 18)
  {
    v15 = *(v10 + 8);
    v13 = (v10 + 8);
    v14 = v15;
    if (v12 < 0)
    {
      v13 = v14;
    }

    v16 = *v13;
    v17 = v13[1];
    v18 = *(v13 + 8);
    v21 = v16 == *"Proxy-Authenticate" && v17 == *"thenticate" && v18 == *"te";
  }

  else
  {
    v21 = 0;
  }

  *(this + 264) = v21;
}

void sub_1E4FC3834(_Unwind_Exception *a1)
{
  MEMORY[0x1E69225A0](v1 + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v1 + 16));
  _Unwind_Resume(a1);
}

void SipAuthInfo::~SipAuthInfo(SipAuthInfo *this)
{
  *this = &unk_1F5EE5308;
  *(this + 1) = &unk_1F5EE5388;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  SipTimerContainer::~SipTimerContainer((this + 96));
  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  SipAuthInfo::~SipAuthInfo(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipAuthInfo::~SipAuthInfo(SipAuthInfo *this)
{
  SipAuthInfo::~SipAuthInfo((this - 8));
}

{
  SipAuthInfo::~SipAuthInfo((this - 8));

  JUMPOUT(0x1E69235B0);
}

void SipAuthInfo::loggableName(SipAuthInfo *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = *(v1 + 64);
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  ImsStringOutStream::ImsStringOutStream(v3);
}

void sub_1E4FC3BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    if (a19)
    {
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(exception_object);
}

SipAuthChallenge *SipAuthInfo::setAuthchallenge(SipAuthChallenge *this, SipAuthChallenge *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    this = *(v2 + 64);
    if (this != a2)
    {
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      *(v2 + 64) = a2;
    }
  }

  return this;
}

SipAuthChallenge *non-virtual thunk toSipAuthInfo::setAuthchallenge(SipAuthChallenge *this, SipAuthChallenge *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    this = *(v2 + 64);
    if (this != a2)
    {
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      *(v2 + 64) = a2;
    }
  }

  return this;
}

void SipAuthInfo::sendChallengeToDelegate(SipAuthInfo *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  IPTelephonyManager::getBambiClient(&v25);
  v2 = *(v25 + 744);
  if (v2)
  {
    v3 = *(v25 + 736);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  __p = 0;
  v24 = 0;
  v6 = *(this + 7);
  v7 = *(v6 + 200);
  if (v7)
  {
    v8 = *(v6 + 192);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = std::__shared_weak_count::lock(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v9 && v8)
    {
      if (*(v8 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v8 + 4432), *(v8 + 4440));
      }

      else
      {
        v30 = *(v8 + 4432);
      }

      __p = v30.__r_.__value_.__r.__words[0];
      v24 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      v12 = *(v8 + 248);
      v11 = *(v8 + 256);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        if (v5)
        {
          v13 = *(this + 3);
          if (v13)
          {
            v14 = *(this + 2);
            v15 = std::__shared_weak_count::lock(v13);
            if (v15)
            {
              p_shared_weak_owners = &v15->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              v31 = 0;
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v19 = *(this + 7);
        v20 = (*(*v19 + 56))(v19);
        (*(*v19 + 16))(v19, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "no BambiClientDelegate to handle auth challenge", 47);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        SipAuthInfo::triggerTimeout(this);
      }

      else
      {
        v17 = *(this + 6);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          (*(*(this + 1) + 16))(&v30, this + 8);
          v18 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
          buf[0] = 141558275;
          *&buf[1] = 1752392040;
          v28 = 2081;
          v29 = v18;
          _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_39;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 1) + 16))(&v30, this + 8);
    v21 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
    buf[0] = 141558275;
    *&buf[1] = 1752392040;
    v28 = 2081;
    v29 = v21;
    _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E4FC4668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v43);
  std::__shared_weak_count::__release_weak(v43);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

void SipAuthInfo::triggerTimeout(SipAuthInfo *this)
{
  if (!*(this + 10))
  {
    v1 = *(this + 7);
    v3 = *(this + 2);
    v2 = *(this + 3);
    v4 = v3;
    if (!v2 || (v5 = std::__shared_weak_count::lock(v2)) == 0)
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    (*(*v1 + 128))(v1, &v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FC4840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAuthInfo::setResponse(SipAuthInfo *this, const SipAuthResponse *a2)
{
  SipTimerContainer::cancelAllTimers((this + 96));
  v4 = *(this + 10);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 10) = (*(*a2 + 16))(a2);
  result = *(this + 9);
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

void SipAuthInfo::handleTimer(SipAuthInfo *this, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 19)
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
    v6 = v4[1];
    v7 = *(v4 + 11);
    if (v5 == 0x7073655268747541 && v6 == 0x656D695465736E6FLL && v7 == 0x74756F656D695465)
    {
      SipAuthInfo::triggerTimeout(this);
    }
  }
}

double SipAuthInfo::addAuthorizationToRequest@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = (*(**(a1 + 64) + 120))(*(a1 + 64));
  SipMessage::removeHeadersWithName(v6, v7);
  v8 = (*(**(a1 + 80) + 16))(*(a1 + 80));
  v9 = v8;
  v10 = *(a2 + 8);
  v50 = *a2;
  v51 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(*v8 + 40))(v8, &v50);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v12 = *v9;
  if ((v11 & 1) == 0)
  {
    (*(v12 + 1))(v9);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v52 = &unk_1F5EBDEF8;
    v53 = &_bambiDomain;
    v54 = 1073741848;
    v32 = ImsResult::operator<<<char [24]>(&v52, "compute response failed");
    ImsResult::ImsResult(a3, v32);
    ImsResult::~ImsResult(&v52);
    return result;
  }

  v13 = *v12;
  if (v14)
  {
    v15 = *(a1 + 56);
    v16 = *(v15 + 200);
    if (v16)
    {
      v17 = v14;
      v18 = *(v15 + 192);
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19 = std::__shared_weak_count::lock(v16);
      std::__shared_weak_count::__release_weak(v16);
      if (v19 && v18)
      {
        v43 = *(a1 + 56);
        v20 = (*(*v17 + 24))(v17);
        v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v20 + 8), "response");
        if (v21)
        {
          v22 = (v21 + 5);
        }

        else
        {
          v22 = &ims::kEmptyString;
        }

        v23 = *(v22 + 23);
        v24 = *v22;
        v25 = (*(*v17 + 24))(v17);
        if (v23 >= 0)
        {
          v26 = v22;
        }

        else
        {
          v26 = v24;
        }

        v27 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v25 + 8), "response");
        v28 = (v27 + 5);
        if (!v27)
        {
          v28 = &ims::kEmptyString;
        }

        v29 = *(v28 + 23);
        v30 = *(v28 + 1);
        if ((v29 & 0x80u) == 0)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v52 = v18;
        v53 = v19;
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        SipAuthClient::signWithAttestationService(v43, v26, v31, v18 + 353, &v52);
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v44[0] = &unk_1F5EBDEF8;
        v44[1] = &_bambiDomain;
        v45 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v52 = &unk_1F5EBDEF8;
    v53 = &_bambiDomain;
    v54 = 1073741826;
    v34 = ImsResult::operator<<<char [12]>(&v52, "no sipstack");
    ImsResult::ImsResult(v44, v34);
    ImsResult::~ImsResult(&v52);
    if (!v19)
    {
LABEL_28:
      ImsResult::~ImsResult(v44);
      goto LABEL_29;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    goto LABEL_28;
  }

LABEL_29:
  v35 = *(a1 + 80);
  if (v35)
  {
    v36 = (*(*v35 + 24))(v35);
    {
      ++v38[12];
    }

    else
    {
      v39 = *(a1 + 56);
      v40 = (*(*v39 + 56))(v39);
      (*(*v39 + 16))(v39, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "current AuthInfo doesn't have a Digest auth scheme", 50);
      *(v40 + 17) = 0;
      (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v40 + 17) = 0;
    }
  }

  v41 = (*(*a1 + 96))(a1);
  v42 = *(v41 + 8);
  if (v42 != v9)
  {
    if (v42)
    {
      (*(*v42 + 1))(v42);
    }

    *(v41 + 8) = v9;
  }

  SipMessage::addHeader(*a2, v41, 0);
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

void sub_1E4FC4FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t SipAuthInfo::hasAuthSyncResponse(SipAuthInfo *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = **v1;
    if (v3 && (v4 = v3, (*(*v3 + 32))(v3)))
    {
      v5 = *((*(*v4 + 32))(v4) + 313);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE5430;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE5430;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE5430;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 32))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipAuthInfo::sendChallengeToDelegate(void)::$_0,std::allocator<SipAuthInfo::sendChallengeToDelegate(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void SipLegacyUssdDataBody::encode(SipLegacyUssdDataBody *this, ImsOutStream *a2, int a3)
{
  if (a3)
  {
    if (*(this + 2) != *(this + 1))
    {
      v5 = 0;
      do
      {
        v6 = *(a2 + 1);
        LOBYTE(v13.__locale_) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v13, 1);
        *(a2 + 17) = 0;
        MEMORY[0x1E6923340](*(a2 + 1), *(*(this + 1) + v5));
        *(a2 + 17) = 0;
        v7 = *(a2 + 1);
        v8 = *v7;
        v9 = *v7;
        *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
        *(a2 + 17) = 0;
        v10 = (v7 + *(v9 - 24));
        if (v10[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v10);
          v11 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
          v12 = (v11->__vftable[2].~facet_0)(v11, 32);
          std::locale::~locale(&v13);
          v10[1].__fmtflags_ = v12;
          v7 = *(a2 + 1);
          v8 = *v7;
        }

        v10[1].__fmtflags_ = 48;
        *(v7 + *(v8 - 24) + 24) = 2;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
        *(a2 + 17) = 0;
        MEMORY[0x1E6923390](*(a2 + 1), *(*(this + 1) + v5));
        *(a2 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
        *(a2 + 17) = 0;
        if (80 * (v5 / 0x50) == v5)
        {
          (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(a2 + 17) = 0;
        }

        ++v5;
      }

      while (v5 < *(this + 2) - *(this + 1));
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v13, *(this + 1), *(this + 2), *(this + 2) - *(this + 1));
    (*(*a2 + 32))(a2, &v13);
    if (v14 < 0)
    {
      operator delete(v13.__locale_);
    }
  }
}

void sub_1E4FC5684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLegacyUssdDataBody::decode(uint64_t a1, const void **a2)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = (a1 + 8);
  v9 = v7 - v6;
  if (v5 <= v9)
  {
    if (v5 < v9)
    {
      *(a1 + 16) = &v6[v5];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v8, v5 - v9);
    v6 = *v8;
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (v11)
  {
    v12 = *a2;
    if (v10 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(v6, v13, v11);
  }

  return 1;
}

void SipLegacyUssdDataBody::~SipLegacyUssdDataBody(SipLegacyUssdDataBody *this)
{
  *this = &unk_1F5EE54B0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5EE54B0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t TMORegistrationPolicy::TMORegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2, char a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Rfc5626RegistrationPolicy::Rfc5626RegistrationPolicy(a1, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_1F5EE5540;
  *(a1 + 136) = &unk_1F5EE57A0;
  *(a1 + 144) = &unk_1F5EE57D0;
  *(a1 + 152) = &unk_1F5EE57E8;
  *(a1 + 2384) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2409) = a3;
  *(a1 + 2424) = 0;
  *(a1 + 2432) = 0;
  *(a1 + 2472) = 0;
  *(a1 + 2440) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2416) = &unk_1F5EC3620;
  *(a1 + 2480) = 0x7800001C20;
  return a1;
}

void sub_1E4FC59F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void TMORegistrationPolicy::clearFailureFlags(TMORegistrationPolicy *this)
{
  SipRegistrationPolicy::clearFailureFlags(this);
  *(this + 594) = 0;
  *(this + 2408) = 0;
}

uint64_t TMORegistrationPolicy::handleForbiddenUser(SipRegistrationPolicy *a1, SipResponse **a2)
{
  SipResponse::asImsResult(*a2, v5);
  v3 = SipRegistrationPolicy::handleGeneralError(a1, v5);
  ImsResult::~ImsResult(v5);
  return v3;
}

void sub_1E4FC5A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t TMORegistrationPolicy::handleGeneralErrorFromAllProxies(TMORegistrationPolicy *this, const ImsResult *a2)
{
  *(this + 2408) = 1;
  if (*(this + 2409))
  {
    return -1;
  }

  else
  {
    return Rfc5626RegistrationPolicy::handleGeneralErrorFromAllProxies(this, a2);
  }
}

uint64_t TMORegistrationPolicy::handleGeneralErrorFromOneProxy(TMORegistrationPolicy *this, const ImsResult *a2)
{
  v4 = SipRegistrationPolicy::retryTimeFromResult(this, a2);
  if (v4 == -1)
  {
    if (*(this + 2408) == 1)
    {
      v5 = Rfc5626RegistrationPolicy::computeRetryInterval(this);
    }

    else
    {
      v5 = (*(*this + 200))(this);
    }

    v4 = v5;
  }

  v6 = (*(*this + 320))(this);
  v7 = (*(*this + 64))(this);
  (*(*this + 16))(this, v7);
  if (v6)
  {
    v8 = "time to switch proxies";
    v9 = 22;
  }

  else
  {
    v8 = "will try again with the same proxy.";
    v9 = 35;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v10 = *(*this + 488);

  return v10(this, a2, v4, v6);
}

uint64_t TMORegistrationPolicy::maxRetryInterval(TMORegistrationPolicy *this)
{
  if (*(this + 2408) == 1)
  {
    return *(this + 464);
  }

  else
  {
    return *(*(this + 299) - 16) + *(*(this + 299) - 8);
  }
}

uint64_t TMORegistrationPolicy::generalErrorRetryInterval(TMORegistrationPolicy *this)
{
  if (*(this + 2408))
  {
    return 0;
  }

  v1 = *(this + 50);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 - 1);
  v3 = *(this + 299);
  v4 = *(this + 298);
  v5 = v3 - v4;
  v6 = (v4 + 16 * v2);
  v7 = (v3 - 16);
  if (v2 >= v5 >> 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = *v8;
  if (*(v8 + 2))
  {
    v9 += random() % *(v8 + 2);
  }

  return v9;
}

uint64_t TMORegistrationPolicy::fatalErrorRetryInterval(TMORegistrationPolicy *this)
{
  if (*(this + 2408))
  {
    return 0;
  }

  v2 = *(this + 298);
  v1 = *v2;
  if (*(v2 + 2))
  {
    v1 += random() % *(v2 + 2);
  }

  return v1;
}

uint64_t TMORegistrationPolicy::forbiddenErrorRetryInterval(TMORegistrationPolicy *this)
{
  if (*(this + 2408))
  {
    return 0;
  }

  v2 = *(this + 298);
  v1 = *v2;
  if (*(v2 + 2))
  {
    v1 += random() % *(v2 + 2);
  }

  return v1;
}

void TMORegistrationPolicy::updateConfig(TMORegistrationPolicy *this, const SipRegistrationConfig *a2)
{
  v4 = this + 2384;
  if (this + 2384 != a2 + 960)
  {
    std::vector<SipRetryInfo>::__assign_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>(this + 298, *(a2 + 120), *(a2 + 121), (*(a2 + 121) - *(a2 + 120)) >> 4);
  }

  v5 = *(this + 298);
  v6 = *(this + 299);
  if (v5 == v6)
  {
    v7 = *(this + 300);
    if (v5 >= v7)
    {
      v8 = v7 - v5;
      v9 = (v7 - v5) >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(v4, v10);
    }

    *v6 = 30;
    *(v6 + 8) = 0;
    *(this + 299) = v6 + 16;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, this + 20);
  v11 = v14;
  if (v13)
  {
    v12 = v13 + 144;
  }

  else
  {
    v12 = 0;
  }

  v15[0] = v12;
  v15[1] = v14;
  v13 = 0;
  v14 = 0;
  Rfc5626BackoffTimer::initialize(this + 2416, this + 224, v15, &SipRegistrationPolicy::kSubscriptionRetryTimerName, *(a2 + 338), *(a2 + 339));
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  SipRegistrationPolicy::updateConfig(this, a2);
}

void sub_1E4FC5F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
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

void TMORegistrationPolicy::~TMORegistrationPolicy(TMORegistrationPolicy *this)
{
  *this = &unk_1F5EE5540;
  *(this + 17) = &unk_1F5EE57A0;
  *(this + 18) = &unk_1F5EE57D0;
  *(this + 19) = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2416));
  v2 = *(this + 298);
  if (v2)
  {
    *(this + 299) = v2;
    operator delete(v2);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(this);
}

{
  *this = &unk_1F5EE5540;
  *(this + 17) = &unk_1F5EE57A0;
  *(this + 18) = &unk_1F5EE57D0;
  *(this + 19) = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2416));
  v2 = *(this + 298);
  if (v2)
  {
    *(this + 299) = v2;
    operator delete(v2);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toTMORegistrationPolicy::~TMORegistrationPolicy(TMORegistrationPolicy *this)
{
  v2 = (this - 136);
  *(this - 17) = &unk_1F5EE5540;
  *this = &unk_1F5EE57A0;
  *(this + 1) = &unk_1F5EE57D0;
  *(this + 2) = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2280));
  v3 = *(this + 281);
  if (v3)
  {
    *(this + 282) = v3;
    operator delete(v3);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(v2);
}

{
  v2 = (this - 136);
  *(this - 17) = &unk_1F5EE5540;
  *this = &unk_1F5EE57A0;
  *(this + 1) = &unk_1F5EE57D0;
  *(this + 2) = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2280));
  v3 = *(this + 281);
  if (v3)
  {
    *(this + 282) = v3;
    operator delete(v3);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 152);
  *(this - 19) = &unk_1F5EE5540;
  *(this - 2) = &unk_1F5EE57A0;
  *(this - 1) = &unk_1F5EE57D0;
  *this = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2264));
  v3 = *(this + 279);
  if (v3)
  {
    *(this + 280) = v3;
    operator delete(v3);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(v2);
}

{
  v2 = (this - 152);
  *(this - 19) = &unk_1F5EE5540;
  *(this - 2) = &unk_1F5EE57A0;
  *(this - 1) = &unk_1F5EE57D0;
  *this = &unk_1F5EE57E8;
  SipBackoffTimer::~SipBackoffTimer((this + 2264));
  v3 = *(this + 279);
  if (v3)
  {
    *(this + 280) = v3;
    operator delete(v3);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(v2);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4FC65F8(_Unwind_Exception *a1)
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

uint64_t HttpClient::HttpClient(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5EE5828;
  *(a1 + 8) = &unk_1F5EE58A0;
  *(a1 + 16) = &unk_1F5EE58D8;
  *(a1 + 40) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v8;
  }

  v9 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 144) = *(a5 + 2);
    *(a1 + 128) = v10;
  }

  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  std::string::basic_string[abi:ne200100]<0>(v17, kXcapLoggingFacility);
  v13[0] = 0;
  v16 = 0;
  v11 = ims::debug(v17, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ": ", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Creating HttpClient: ", 21);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923310](*(v11 + 8), a1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return a1;
}

void sub_1E4FC6824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 127) < 0)
  {
    operator delete(*(v24 + 104));
  }

  v26 = *(v24 + 96);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v24 + 80);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (*(v24 + 71) < 0)
  {
    operator delete(*(v24 + 48));
  }

  v28 = *(v24 + 32);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  _Unwind_Resume(exception_object);
}

void HttpClient::~HttpClient(HttpClient *this)
{
  *this = &unk_1F5EE5828;
  *(this + 1) = &unk_1F5EE58A0;
  *(this + 2) = &unk_1F5EE58D8;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v13, kXcapLoggingFacility);
  v9[0] = 0;
  v12 = 0;
  v3 = ims::debug(v2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": ", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Deleting HttpClient: ", 21);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  HttpClient::deinitialize(this);
  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v6 = *(this + 12);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v8 = *(this + 4);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

{
  HttpClient::~HttpClient(this);

  JUMPOUT(0x1E69235B0);
}

void HttpClient::deinitialize(HttpClient *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 88))(v2);
    v3 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 22);
  v6 = *(this + 23);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 22);
  }

  *(this + 23) = v5;
  v7 = *(this + 25);
  if (v7)
  {
    CFRelease(v7);
    *(this + 25) = 0;
  }
}

void non-virtual thunk toHttpClient::~HttpClient(HttpClient *this)
{
  HttpClient::~HttpClient((this - 8));
}

{
  HttpClient::~HttpClient((this - 8));

  JUMPOUT(0x1E69235B0);
}

void HttpClient::initialize(uint64_t a1, uint64_t a2, const std::string *a3, int a4)
{
  HttpClient::deinitialize(a1);
  std::string::operator=((a1 + 104), a3);
  *(a1 + 152) = a4;
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v11[0] = v8;
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    v11[1] = v9;
    if (v9)
    {
      if (v8)
      {
        v12 = v8 + 16;
        v13 = v9;
        v10 = v11;
      }

      else
      {
        v10 = &v12;
      }

      *v10 = 0;
      v10[1] = 0;
      v11[2] = v12;
      v11[3] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      HttpStreamPair::create();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4FC6FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 56);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v29);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t HttpClient::sendRequest(HttpClient *this, const HttpRequest *a2)
{
  if (CFWriteStreamCanAcceptBytes(*(*(this + 11) + 72)))
  {
    v4 = (*(*a2 + 16))(a2);
    HttpClient::_sendRequest(this, v4);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v24, kXcapLoggingFacility);
    v20[0] = 0;
    v23 = 0;
    v5 = ims::info(v24, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Stream not ready for data to be written. Buffering request..", 60);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v6 = (*(*a2 + 16))(a2);
    v8 = *(this + 23);
    v7 = *(this + 24);
    if (v8 >= v7)
    {
      v10 = *(this + 22);
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = (v8 - v10) >> 3;
      v17 = (8 * v12);
      v18 = (8 * v12 - 8 * v16);
      *v17 = v6;
      v9 = v17 + 1;
      memcpy(v18, v10, v11);
      *(this + 22) = v18;
      *(this + 23) = v9;
      *(this + 24) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = v6;
      v9 = v8 + 1;
    }

    *(this + 23) = v9;
  }

  return 1;
}

void sub_1E4FC7338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void HttpClient::_sendRequest(HttpClient *this, HttpRequest *a2)
{
  if (!a2)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v25, kXcapLoggingFacility);
    v21[0] = 0;
    v24 = 0;
    v8 = ims::error(v7, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "NULL HTTP request!", 18);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v24 != 1 || (v23 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v9 = v22;
    goto LABEL_20;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  HttpMessage::copySerializedMessage(a2, &v25);
  v4 = HIBYTE(v27);
  if (v27 < 0)
  {
    v4 = v26;
  }

  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, kXcapLoggingFacility);
    v15[0] = 0;
    v18 = 0;
    v5 = ims::debug(v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sending HTTP request", 20);
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

    HttpClient::_logMsg(this, a2);
    (*(**(this + 20) + 136))(*(this + 20), &v25);
    v6 = *(this + 25);
    if (v6)
    {
      CFRelease(v6);
      *(this + 25) = 0;
    }

    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(v19, kXcapLoggingFacility);
  v11[0] = 0;
  v14 = 0;
  v10 = ims::debug(v19, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Failed to serialize HTTP request", 32);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  if (v20 < 0)
  {
    v9 = v19[0];
LABEL_20:
    operator delete(v9);
  }

LABEL_21:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }
}

void sub_1E4FC7664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (v35 < 0)
  {
    operator delete(*(v36 - 72));
  }

  _Unwind_Resume(exception_object);
}

void HttpClient::getConnectionServiceType(HttpClient *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 10);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 9);
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void HttpClient::bytesAvailable(HttpClient *this)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *(this + 20);
  {
    v5 = v4;
    v6 = *(this + 21);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (((*(*v4 + 104))(v4) & 1) == 0 && !(*(*v5 + 112))(v5))
    {
      *(this + 104) = (*(*v5 + 120))(v5);
      v7 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
      v74[0] = 0;
      v77 = 0;
      v8 = ims::debug(v7, v74);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Negotiated Cipher: ", 19);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923390](*(v8 + 8), *(this + 104));
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v77 == 1 && v76 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  memset(&v73, 0, sizeof(v73));
  v9 = (*(**(this + 20) + 128))(*(this + 20), &v73);
  size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v73.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v55 = v6;
    v11 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
    v69[0] = 0;
    v72 = 0;
    v12 = ims::debug(v11, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": ", 2);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "***** INCOMING DATA *****", 25);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v72 == 1 && v71 < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
    v65[0] = 0;
    v68 = 0;
    v14 = ims::debug(v13, v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ": ", 2);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, &v73);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v68 == 1 && v67 < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
    v61[0] = 0;
    v64 = 0;
    v16 = ims::debug(v15, v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), ": ", 2);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "*************************", 25);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v60, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
    }

    else
    {
      v60 = v73;
    }

    v82 = 0;
    v83 = 0;
    if ((atomic_load_explicit(&_MergedGlobals_24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_24))
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "1.0");
      std::string::basic_string[abi:ne200100]<0>(&v85, "1.1");
      qword_1EE2BC8C8 = 0;
      unk_1EE2BC8D0 = 0;
      qword_1EE2BC8D8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_1EE2BC8C8, &v84, &v87[8], 2uLL);
      for (i = 0; i != -48; i -= 24)
      {
        if (v87[i + 7] < 0)
        {
          operator delete(*(&v84 + i + 24));
        }
      }

      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_1EE2BC8C8, &dword_1E4C3F000);
      __cxa_guard_release(&_MergedGlobals_24);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = v60.__r_.__value_.__r.__words[0];
      if (v60.__r_.__value_.__l.__size_ >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v60.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      v18 = &v60;
    }

    v19 = memcmp(v18, "HTTP", v17);
    v20 = v17 >= 4 && v19 == 0;
    if (!v20 || (v21 = qword_1EE2BC8C8, v22 = unk_1EE2BC8D0, qword_1EE2BC8C8 == unk_1EE2BC8D0))
    {
LABEL_87:
      v34 = *(this + 25);
      if (!v34)
      {
        v38 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
        LOBYTE(v78[0]) = 0;
        v81 = 0;
        v39 = ims::error(v38, v78);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), ": ", 2);
        *(v39 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Ignoring body without HTTP response", 35);
        *(v39 + 17) = 0;
        (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v39 + 17) = 0;
        if (v81 == 1 && v80 < 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        v40 = *(this + 10);
        if (v40)
        {
          v41 = std::__shared_weak_count::lock(v40);
          if (v41)
          {
            v42 = v41;
            v43 = *(this + 9);
            if (v43)
            {
              memset(v87, 0, sizeof(v87));
              v84.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
              v84.__r_.__value_.__l.__size_ = &_bambiDomain;
              LODWORD(v84.__r_.__value_.__r.__words[2]) = 0x40000000;
              v85 = 0;
              v86 = 0;
              (*(*v43 + 64))(v43, this, &v84);
              ImsResult::~ImsResult(&v84);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }
        }

        goto LABEL_116;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v60;
      }

      else
      {
        v35 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v60.__r_.__value_.__l.__size_;
      }

      CFHTTPMessageAppendBytes(v34, v35, v36);
      if (CFHTTPMessageIsHeaderComplete(*(this + 25)))
      {
        if (!HttpClient::_isFullBodyPresentInMessage(this, &v83, &v82, v37))
        {
          goto LABEL_144;
        }

        goto LABEL_96;
      }
    }

    else
    {
      while (1)
      {
        memset(&v84, 0, sizeof(v84));
        if (*(v21 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v84, *v21, *(v21 + 8));
        }

        else
        {
          v23 = *v21;
          v84.__r_.__value_.__r.__words[2] = *(v21 + 16);
          *&v84.__r_.__value_.__l.__data_ = v23;
        }

        v24 = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
        v25 = v84.__r_.__value_.__r.__words[0];
        v26 = (v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v84.__r_.__value_.__r.__words[2]) : v84.__r_.__value_.__l.__size_;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v26 == -1 || v60.__r_.__value_.__l.__size_ < 5)
          {
LABEL_146:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v28 = v60.__r_.__value_.__l.__size_ - 5 >= v26 ? v26 : v60.__r_.__value_.__l.__size_ - 5;
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v26 == -1 || SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 5)
          {
            goto LABEL_146;
          }

          v28 = SHIBYTE(v60.__r_.__value_.__r.__words[2]) - 5 >= v26 ? v26 : SHIBYTE(v60.__r_.__value_.__r.__words[2]) - 5;
          v29 = &v60;
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v84;
        }

        else
        {
          v31 = v84.__r_.__value_.__r.__words[0];
        }

        v33 = !memcmp(v29->__r_.__value_.__r.__words + 5, v31, v28) && v28 == v26;
        if (v24 < 0)
        {
          operator delete(v25);
        }

        if (v33)
        {
          break;
        }

        v21 += 24;
        if (v21 == v22)
        {
          goto LABEL_87;
        }
      }

      if (*(this + 25))
      {
        std::string::basic_string[abi:ne200100]<0>(v78, kXcapLoggingFacility);
        v84.__r_.__value_.__s.__data_[0] = 0;
        v87[8] = 0;
        v44 = ims::error(v78, &v84);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ": ", 2);
        *(v44 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "Ignoring HTTP response since one is already pending", 51);
        *(v44 + 17) = 0;
        (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        goto LABEL_111;
      }

      Empty = CFHTTPMessageCreateEmpty(*MEMORY[0x1E695E480], 0);
      *(this + 25) = Empty;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v60;
      }

      else
      {
        v51 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v60.__r_.__value_.__l.__size_;
      }

      CFHTTPMessageAppendBytes(Empty, v51, v52);
      if (CFHTTPMessageIsHeaderComplete(*(this + 25)))
      {
        if (!HttpClient::_isFullBodyPresentInMessage(this, &v83, &v82, v53))
        {
LABEL_144:
          std::string::basic_string[abi:ne200100]<0>(v78, kXcapLoggingFacility);
          v84.__r_.__value_.__s.__data_[0] = 0;
          v87[8] = 0;
          v44 = ims::debug(v78, &v84);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ": ", 2);
          *(v44 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "HTTP response doesn't have full body. Waiting for more data. Expected:", 70);
          *(v44 + 17) = 0;
          MEMORY[0x1E6923370](*(v44 + 8), v83);
          *(v44 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ", Actual:", 9);
          *(v44 + 17) = 0;
          MEMORY[0x1E6923370](*(v44 + 8), v82);
          *(v44 + 17) = 0;
          (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_111:
          *(v44 + 17) = 0;
          if (v87[8] == 1 && SHIBYTE(v86) < 0)
          {
            operator delete(v84.__r_.__value_.__r.__words[2]);
          }

          if (SHIBYTE(v79) < 0)
          {
            operator delete(v78[0]);
          }

          goto LABEL_116;
        }

LABEL_96:
        HttpClient::_handleHttpResponse(this, *(this + 25));
LABEL_116:
        v6 = v55;
        v9 = v9;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        goto LABEL_118;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v78, kXcapLoggingFacility);
    v84.__r_.__value_.__s.__data_[0] = 0;
    v87[8] = 0;
    v44 = ims::warn(v78, &v84);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), ": ", 2);
    *(v44 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "Incomplete headers for HTTP response. Waiting for more data", 59);
    *(v44 + 17) = 0;
    (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_111;
  }

LABEL_118:
  if (v9 != -9805 && v9 != -9803 && v9 != 0)
  {
    v48 = std::string::basic_string[abi:ne200100]<0>(&v84, kXcapLoggingFacility);
    v56 = 0;
    v59 = 0;
    v49 = ims::error(v48, &v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), ": ", 2);
    *(v49 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "App data read from transport failed. Error: ", 44);
    *(v49 + 17) = 0;
    MEMORY[0x1E6923340](*(v49 + 8), v9);
    *(v49 + 17) = 0;
    (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v49 + 17) = 0;
    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1E4FC85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = (v52 + 47);
  v55 = -48;
  v56 = v54;
  while (1)
  {
    v57 = *v56;
    v56 -= 24;
    if (v57 < 0)
    {
      operator delete(*(v54 - 23));
    }

    v54 = v56;
    v55 += 24;
    if (!v55)
    {
      __cxa_guard_abort(&_MergedGlobals_24);
      if (a24 < 0)
      {
        operator delete(__p);
      }

      if (a52 < 0)
      {
        operator delete(a47);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      _Unwind_Resume(a1);
    }
  }
}

void HttpClient::canAcceptBytes(HttpClient *this)
{
  v2 = *(this + 20);
  {
    v5 = v4;
    v6 = *(this + 21);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (((*(*v4 + 104))(v4) & 1) == 0 && !(*(*v5 + 112))(v5))
    {
      *(this + 104) = (*(*v5 + 120))(v5);
      std::string::basic_string[abi:ne200100]<0>(v15, kXcapLoggingFacility);
      v11[0] = 0;
      v14 = 0;
      v7 = ims::debug(v15, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ": ", 2);
      *(v7 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Negotiated Cipher: ", 19);
      *(v7 + 17) = 0;
      MEMORY[0x1E6923390](*(v7 + 8), *(this + 104));
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v14 == 1 && v13 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*(**(this + 20) + 104))(*(this + 20)))
  {
    v8 = *(this + 22);
    v9 = *(this + 23);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        HttpClient::_sendRequest(this, *v8);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        ++v8;
      }

      while (v8 != v9);
      v8 = *(this + 22);
    }

    *(this + 23) = v8;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4FC8A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void HttpClient::errorOccured(uint64_t a1, int a2, __CFError *a3)
{
  if (a2)
  {
    v5 = "Write";
  }

  else
  {
    v5 = "Read";
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, v5);
  v6 = std::string::append(&v20, "Stream Callback", 0xFuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26 = v6->__r_.__value_.__r.__words[2];
  *v25 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if (!a3)
    {
      goto LABEL_26;
    }
  }

  else if (!a3)
  {
    goto LABEL_26;
  }

  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  Domain = CFErrorGetDomain(a3);
  if (Domain)
  {
    ims::convertCFString(Domain, &v34, 0x8000100u);
  }

  Code = CFErrorGetCode(a3);
  v10 = CFErrorCopyFailureReason(a3);
  v11 = v10;
  if (v10)
  {
    ims::convertCFString(v10, &v33, 0x8000100u);
    CFRelease(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
  v20.__r_.__value_.__s.__data_[0] = 0;
  BYTE8(v22) = 0;
  v12 = ims::error(__p, &v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": ", 2);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Error while connecting to ", 26);
  *(v12 + 17) = 0;
  (*(*v12 + 32))(v12, a1 + 104);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ":", 1);
  *(v12 + 17) = 0;
  MEMORY[0x1E6923350](*(v12 + 8), *(a1 + 152));
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (BYTE8(v22) == 1 && SHIBYTE(v21) < 0)
  {
    operator delete(v20.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(&v31, kXcapLoggingFacility);
  LOBYTE(__p[0]) = 0;
  v30 = 0;
  v14 = ims::error(v13, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ": ", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Context: ", 9);
  *(v14 + 17) = 0;
  (*(*v14 + 32))(v14, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " - Domain: ", 11);
  *(v14 + 17) = 0;
  (*(*v14 + 32))(v14, &v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ", Code: ", 8);
  *(v14 + 17) = 0;
  MEMORY[0x1E6923360](*(v14 + 8), Code);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ", Reason: ", 10);
  *(v14 + 17) = 0;
  (*(*v14 + 32))(v14, &v33);
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_26:
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 72);
      if (v18)
      {
        v19 = CFErrorGetCode(a3);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v20.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        v20.__r_.__value_.__l.__size_ = &_posixDomain;
        LODWORD(v20.__r_.__value_.__r.__words[2]) = v19;
        (*(*v18 + 64))(v18, a1, &v20);
        ImsResult::~ImsResult(&v20);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1E4FC8F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  ImsResult::~ImsResult(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void HttpClient::endEncountered(uint64_t a1, int a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v12, kXcapLoggingFacility);
  v8[0] = 0;
  v11 = 0;
  v4 = ims::debug(v3, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "End of ", 7);
  *(v4 + 17) = 0;
  if (a2)
  {
    v5 = "Write";
  }

  else
  {
    v5 = "Read";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  (*(*v4 + 32))(v4, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " stream", 7);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }
}

void sub_1E4FC91AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  _Unwind_Resume(exception_object);
}

void HttpClient::_logMsg(HttpClient *this, const HttpMessage *a2)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  HttpMessage::copySerializedMessage(a2, &v68);
  v4 = (*(*a2 + 24))(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
  v64[0] = 0;
  v67 = 0;
  v5 = ims::debug(__p, v64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(v65);
  }

  if (SBYTE7(v56) < 0)
  {
    operator delete(__p[0]);
  }

  v63 = 0;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  __src = 0u;
  *__p = 0u;
  v56 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "==================== ", 21);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "[SID:", 5);
  v8 = MEMORY[0x1E69233B0](v7, *(this + 5));
  v9 = *(this + 71);
  if (v9 >= 0)
  {
    v10 = this + 48;
  }

  else
  {
    v10 = *(this + 6);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 71);
  }

  else
  {
    v11 = *(this + 7);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "] ", 2);
  if (*(this + 156))
  {
    v14 = "HTTPS";
  }

  else
  {
    v14 = "HTTP";
  }

  if (*(this + 156))
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  if (v4)
  {
    v17 = " Request ";
  }

  else
  {
    v17 = " Response ";
  }

  if (v4)
  {
    v18 = 9;
  }

  else
  {
    v18 = 10;
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  HttpStreamPair::localHostPortInfo(*(this + 11), &v52);
  if ((v54 & 0x80u) == 0)
  {
    locale = &v52;
  }

  else
  {
    locale = v52.__locale_;
  }

  if ((v54 & 0x80u) == 0)
  {
    v21 = v54;
  }

  else
  {
    v21 = v53;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, locale, v21);
  if (v4)
  {
    v23 = " -----> ";
  }

  else
  {
    v23 = " <----- ";
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, 8);
  HttpStreamPair::remoteHostPortInfo(*(this + 11), __dst);
  if ((v51 & 0x80u) == 0)
  {
    v25 = __dst;
  }

  else
  {
    v25 = __dst[0];
  }

  if ((v51 & 0x80u) == 0)
  {
    v26 = v51;
  }

  else
  {
    v26 = __dst[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " [", 2);
  v29 = *(this + 127);
  if (v29 >= 0)
  {
    v30 = this + 104;
  }

  else
  {
    v30 = *(this + 13);
  }

  if (v29 >= 0)
  {
    v31 = *(this + 127);
  }

  else
  {
    v31 = *(this + 14);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x1E6923350](v33, *(this + 38));
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "] ====================", 22);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v71, MEMORY[0x1E69E5318]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v71);
  std::ostream::put();
  std::ostream::flush();
  if (v51 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  if (v70 >= 0)
  {
    v37 = &v68;
  }

  else
  {
    v37 = v68;
  }

  if (v70 >= 0)
  {
    v38 = HIBYTE(v70);
  }

  else
  {
    v38 = v69;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v37, v38);
  std::ios_base::getloc((__p + *(__p[0] - 3)));
  v39 = std::locale::use_facet(&v52, MEMORY[0x1E69E5318]);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v52);
  std::ostream::put();
  std::ostream::flush();
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "==============================================================================================================================================", 142);
  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v52, MEMORY[0x1E69E5318]);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v52);
  std::ostream::put();
  std::ostream::flush();
  std::string::basic_string[abi:ne200100]<0>(&v52, kXcapLoggingFacility);
  v46[0] = 0;
  v49 = 0;
  v42 = ims::debug(&v52, v46);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 1), ": ", 2);
  v42[17] = 0;
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v42[17] = 0;
  if ((BYTE8(v61) & 0x10) != 0)
  {
    v44 = v61;
    if (v61 < *(&__src + 1))
    {
      *&v61 = *(&__src + 1);
      v44 = *(&__src + 1);
    }

    v45 = __src;
  }

  else
  {
    if ((BYTE8(v61) & 8) == 0)
    {
      v43 = 0;
      v51 = 0;
      goto LABEL_68;
    }

    v45 = *(&v56 + 1);
    v44 = *(&v57 + 1);
  }

  v43 = v44 - v45;
  if ((v44 - v45) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v43 >= 0x17)
  {
    operator new();
  }

  v51 = v44 - v45;
  if (v43)
  {
    memmove(__dst, v45, v43);
  }

LABEL_68:
  *(__dst + v43) = 0;
  (*(*v42 + 32))(v42, __dst);
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v42[17] = 0;
  if (v51 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  __p[0] = *MEMORY[0x1E69E54E8];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  __p[1] = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(*(&v59 + 1));
  }

  __p[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v56);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v62);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }
}

void sub_1E4FC99A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::ostringstream::~ostringstream(&a32, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a49);
  if (*(v49 - 57) < 0)
  {
    operator delete(*(v49 - 80));
  }

  _Unwind_Resume(a1);
}

BOOL HttpClient::_isFullBodyPresentInMessage(CFHTTPMessageRef *this, __CFHTTPMessage *a2, CFIndex *a3, unint64_t *a4)
{
  v7 = CFHTTPMessageCopyHeaderFieldValue(this[25], @"Content-Length");
  v14[0] = &unk_1F5EF36B0;
  v14[1] = v7;
  if (!v7)
  {
    ims::CFType::~CFType(v14);
    *a2 = 0;
    return 1;
  }

  ims::CFString::asString(v7, 0x8000100, &__str);
  v8 = std::stoi(&__str, 0, 10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  ims::CFType::~CFType(v14);
  *a2 = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = CFHTTPMessageCopyBody(this[25]);
  __str.__r_.__value_.__r.__words[0] = &unk_1F5EE1298;
  __str.__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    Length = CFDataGetLength(v9);
    *a3 = Length;
    v11 = Length == *a2;
  }

  else
  {
    v11 = 0;
  }

  ims::CFType::~CFType(&__str);
  return v11;
}

void HttpClient::_handleHttpResponse(HttpClient *this, __CFHTTPMessage *a2)
{
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  std::string::basic_string[abi:ne200100]<0>(&__p, "1.1");
  HttpMessage::HttpMessage(v43, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v43[0] = &unk_1F5EDA180;
  *(&v44 + 1) = 0;
  v45 = 0uLL;
  *&v44 = CFHTTPMessageGetResponseStatusCode(a2);
  if ((HttpMessage::deserialize(v43, a2) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v39[0] = 0;
    v42 = 0;
    v10 = ims::error(&__p, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ": ", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Failed to deserialize Http response", 35);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v42 != 1 || (v41 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v11 = v40;
    goto LABEL_18;
  }

  HttpClient::_logMsg(this, v43);
  v4 = v44;
  std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
  v35[0] = 0;
  v38 = 0;
  v5 = ims::debug(&__p, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Received ", 9);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923370](*(v5 + 8), v4);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " response", 9);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4 - 200) <= 0x63)
  {
    v6 = *(this + 10);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(this + 9);
        if (v9)
        {
          if (SHIBYTE(v43[9]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v43[7], v43[8]);
          }

          else
          {
            __p = *&v43[7];
          }

          (*(*v9 + 40))(v9, this, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    goto LABEL_77;
  }

  if ((v4 - 300) <= 0x63)
  {
    memset(&v51, 0, sizeof(v51));
    std::string::basic_string[abi:ne200100]<0>(&__p, "Location");
    HttpMessage::findHeader(v43, &__p, &v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v55, kXcapLoggingFacility);
    __p.__r_.__value_.__s.__data_[0] = 0;
    BYTE8(v48) = 0;
    v14 = ims::debug(v13, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ": ", 2);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "HTTP request to be redirected: ", 31);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, &v51);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (BYTE8(v48) == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    v15 = *(this + 10);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = v16;
        v18 = *(this + 9);
        if (v18)
        {
          (*(*v18 + 56))(v18, this, &v51);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v51.__r_.__value_.__r.__words[0];
LABEL_21:
      operator delete(v12);
      goto LABEL_77;
    }

    goto LABEL_77;
  }

  if (v4 != 407 && v4 != 401)
  {
    if ((v4 - 400) <= 0x12B)
    {
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      __p.__r_.__value_.__l.__size_ = &SipResultDomain::_domain;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v4;
      v19 = *(this + 10);
      if (v19)
      {
        v20 = std::__shared_weak_count::lock(v19);
        if (v20)
        {
          v21 = v20;
          v22 = *(this + 9);
          if (v22)
          {
            (*(*v22 + 64))(v22, this, &__p);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      ImsResult::~ImsResult(&__p);
      goto LABEL_77;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
    v31[0] = 0;
    v34 = 0;
    v29 = ims::debug(&__p, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), ": ", 2);
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "HTTP Response code ", 19);
    *(v29 + 17) = 0;
    MEMORY[0x1E6923370](*(v29 + 8), v4);
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), " not handled", 12);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v34 != 1 || (v33 & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      v12 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_21;
    }

    v11 = v32;
LABEL_18:
    operator delete(v11);
    goto LABEL_19;
  }

  memset(&v55, 0, sizeof(v55));
  memset(&v54, 0, sizeof(v54));
  if (v44 == 407)
  {
    std::string::basic_string[abi:ne200100]<0>(&v51, "Proxy-Authenticate");
    HttpMessage::findHeader(v43, &v51, &__p);
  }

  else
  {
    if (v44 != 401)
    {
      goto LABEL_52;
    }

    std::string::basic_string[abi:ne200100]<0>(&v51, "WWW-Authenticate");
    HttpMessage::findHeader(v43, &v51, &__p);
  }

  v55 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_52:
  std::string::basic_string[abi:ne200100]<0>(&v51, "Set-Cookie");
  HttpMessage::findHeader(v43, &v51, &__p);
  v54 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v23 = *(this + 10);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = *(this + 9);
      if (v25)
      {
        size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v55.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          (*(*v25 + 48))(*(this + 9), this, &v55, &v54);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, kXcapLoggingFacility);
          v51.__r_.__value_.__s.__data_[0] = 0;
          v53 = 0;
          v30 = ims::error(&__p, &v51);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ": ", 2);
          *(v30 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Challenge response doesn't have WWW/Proxy authentication header", 63);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          if (v53 == 1 && v52 < 0)
          {
            operator delete(v51.__r_.__value_.__r.__words[2]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v48 = 0u;
          v50 = 0u;
          v49 = 0u;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
          __p.__r_.__value_.__l.__size_ = &_bambiDomain;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
          v47 = 0uLL;
          (*(*v25 + 64))(v25, this, &__p);
          ImsResult::~ImsResult(&__p);
        }

LABEL_68:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        goto LABEL_69;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v27 = std::string::basic_string[abi:ne200100]<0>(&v51, kXcapLoggingFacility);
  __p.__r_.__value_.__s.__data_[0] = 0;
  BYTE8(v48) = 0;
  v28 = ims::error(v27, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": ", 2);
  *(v28 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Challenge response dropped due to invalid delegate", 50);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (BYTE8(v48) == 1 && SHIBYTE(v47) < 0)
  {
    operator delete(__p.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v55.__r_.__value_.__r.__words[0];
    goto LABEL_21;
  }

LABEL_77:
  v43[0] = &unk_1F5EDA180;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(*(&v44 + 1));
  }

  HttpMessage::~HttpMessage(v43);
}

void sub_1E4FCA5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  ImsResult::~ImsResult(&__p);
  HttpResponse::~HttpResponse(&a31);
  _Unwind_Resume(a1);
}

uint64_t HttpClient::readDataFromStream(HttpStreamPair **this, void *a2, unint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v12, kXcapLoggingFacility);
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": ", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "readDataFromStream: Expected length: ", 37);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923370](*(v6 + 8), *a3);
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

  return HttpStreamPair::readData(this[11], a2, a3);
}

void sub_1E4FCA920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t HttpClient::writeDataToStream(HttpStreamPair **this, const UInt8 *a2, CFIndex *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v12, kXcapLoggingFacility);
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": ", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "writeDataToStream: Max length: ", 31);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923370](*(v6 + 8), *a3);
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

  return HttpStreamPair::writeData(this[11], a2, a3);
}

void sub_1E4FCAA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void HttpClient::onConnected(HttpClient *this)
{
  *(this + 104) = (*(**(this + 20) + 120))(*(this + 20));
  std::string::basic_string[abi:ne200100]<0>(v10, kXcapLoggingFacility);
  v6[0] = 0;
  v9 = 0;
  v2 = ims::debug(v10, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), ": ", 2);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Negotiated Cipher: ", 19);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923390](*(v2 + 8), *(this + 104));
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

  v3 = *(this + 22);
  v4 = *(this + 23);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      HttpClient::_sendRequest(this, *v3);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 22);
  }

  *(this + 23) = v3;
}

void sub_1E4FCAC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void std::__shared_ptr_emplace<HttpClient::create(std::weak_ptr<HttpClientDelegate>,unsigned long long,std::string const&,std::string const&)::make_shared_enabler,std::allocator<HttpClient::create(std::weak_ptr<HttpClientDelegate>,unsigned long long,std::string const&,std::string const&)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE5988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void HttpClient::create(std::weak_ptr<HttpClientDelegate>,unsigned long long,std::string const&,std::string const&)::make_shared_enabler::~make_shared_enabler(HttpClient *a1)
{
  HttpClient::~HttpClient(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toHttpClient::create(std::weak_ptr<HttpClientDelegate>,unsigned long long,std::string const&,std::string const&)::make_shared_enabler::~make_shared_enabler(uint64_t a1)
{
  HttpClient::~HttpClient((a1 - 8));
}

{
  HttpClient::~HttpClient((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsSSLContextBase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE5AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void AVCRTPStackController::initialize(uint64_t a1, uint64_t a2, char a3)
{
  v80[1] = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 88))(a1))
  {
    memset(&v69, 0, sizeof(v69));
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v69, *a2, *(a2 + 8));
    }

    else
    {
      v69 = *a2;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3321888768;
    v66[2] = ___ZN21AVCRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke;
    v66[3] = &__block_descriptor_65_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
    v66[4] = a1;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
    }

    else
    {
      v67 = v69;
    }

    v68 = a3;
    *task_info_outCnt = 0;
    v51 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(task_info_outCnt, (a1 + 8));
    v11 = *(a1 + 24);
    *&task_info_out = MEMORY[0x1E69E9820];
    *(&task_info_out + 1) = 3321888768;
    *&v73 = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
    *(&v73 + 1) = &unk_1F5EE5BB0;
    v75 = *task_info_outCnt;
    v76 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = v66;
    dispatch_async(v11, &task_info_out);
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v67.__r_.__value_.__r.__words[0];
LABEL_82:
      operator delete(v12);
      goto LABEL_83;
    }

    goto LABEL_83;
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(&task_info_out, "avc.rtp.controller");
  v62[0] = 0;
  v65 = 0;
  v7 = ims::debug(v6, v62);
  v8 = *(*(*a1 - 8) + 8);
  v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " created", 8);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v65 == 1 && v64 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(task_info_out);
  }

  v10 = objc_autoreleasePoolPush();
  task_info_out = 0u;
  v73 = 0u;
  task_info_outCnt[0] = 8;
  if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, &task_info_out, task_info_outCnt) && (v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&task_info_out length:32]) != 0 && (v14 = *MEMORY[0x1E69B0598]) != 0 && (v15 = *MEMORY[0x1E69B05A8]) != 0 && (v16 = *MEMORY[0x1E69AFF88]) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v69, "avc.rtp.controller");
    v58[0] = 0;
    v61 = 0;
    v17 = ims::debug(&v69, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "initialize", 10);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " [HostProcessAttribution=", 25);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923310](*(v17 + 8), v16);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " AuditToken=", 12);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923310](*(v17 + 8), v14);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " BundleID=", 10);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923310](*(v17 + 8), v15);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "]", 1);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    v77[0] = v14;
    v77[1] = v15;
    v78[0] = v13;
    v78[1] = @"com.apple.mobilephone";
    v79 = v16;
    v80[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    [MEMORY[0x1E6986530] setAudioSessionProperties:v18];
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v69, "avc.rtp.controller");
    v54[0] = 0;
    v57 = 0;
    v19 = ims::error(&v69, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "initialize", 10);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " auditTokenData is null", 23);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }

  objc_autoreleasePoolPop(v10);
  v20 = [MEMORY[0x1E6986590] getDaemonProcessInfo];
  *(a1 + 144) = [objc_msgSend(v20 objectForKeyedSubscript:{*MEMORY[0x1E6986528]), "longLongValue"}];
  if (*(a1 + 185) != 1 || (*(a1 + 184) & 1) != 0 || TelephonyRadiosGetRadioVendor() != 1)
  {
    goto LABEL_67;
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "ims::AVCRTPStackController::Audio");
  ims::getQueue(&object);
  std::string::basic_string[abi:ne200100]<0>(task_info_outCnt, "ims");
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v70, (a1 + 8));
  v21 = v71;
  if (v71)
  {
    v22 = v70;
    atomic_fetch_add_explicit(&v71->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    v48 = 0;
    v49 = 0;
    v23 = std::__shared_weak_count::lock(v21);
    v24 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v22 = 0;
    }

    v48 = v22;
    v49 = v23;
    std::__shared_weak_count::__release_weak(v21);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  IPTelephonyManager::getBBServerConnection(&v46);
  qmi::Client::createWithQueueLocal();
  v25 = v73;
  v73 = 0uLL;
  v26 = *(a1 + 176);
  *(a1 + 168) = v25;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  qmi::Client::~Client(&task_info_out);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  if (v52 < 0)
  {
    operator delete(*task_info_outCnt);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 168))
  {
    v27 = std::string::basic_string[abi:ne200100]<0>(&task_info_out, "avc.rtp.controller");
    v42[0] = 0;
    v45 = 0;
    v28 = ims::debug(v27, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "AVC AUDIO client successfully created", 37);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (SBYTE7(v73) < 0)
    {
      operator delete(task_info_out);
    }

    qmi::Client::start((a1 + 152));
    *(a1 + 184) = 1;
LABEL_67:
    (*(*a1 + 112))(a1, 2);
    v29 = 1;
    goto LABEL_68;
  }

  v32 = std::string::basic_string[abi:ne200100]<0>(&task_info_out, "avc.rtp.controller");
  v38[0] = 0;
  v41 = 0;
  v33 = ims::error(v32, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "AVC Audio client creation failed", 32);
  *(v33 + 17) = 0;
  (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v33 + 17) = 0;
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(task_info_out);
  }

  v29 = 0;
LABEL_68:
  memset(&v69, 0, sizeof(v69));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *a2, *(a2 + 8));
  }

  else
  {
    v69 = *a2;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3321888768;
  v34[2] = ___ZN21AVCRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke_16;
  v34[3] = &__block_descriptor_66_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
  v34[4] = a1;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v69;
  }

  v36 = a3;
  v37 = v29;
  *task_info_outCnt = 0;
  v51 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(task_info_outCnt, (a1 + 8));
  v30 = *(a1 + 24);
  *&task_info_out = MEMORY[0x1E69E9820];
  *(&task_info_out + 1) = 3321888768;
  *&v73 = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  *(&v73 + 1) = &unk_1F5EE5BB0;
  v75 = *task_info_outCnt;
  v76 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v74 = v34;
  dispatch_async(v30, &task_info_out);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v35.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

LABEL_83:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1E4FCB860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, NSObject *object, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
  }

  _Unwind_Resume(a1);
}

void ___ZN21AVCRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v2[6];
      if (v6)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, v2 + 1);
        v7 = *(a1 + 64);
        v13 = 0u;
        v14 = 0u;
        v12 = 0u;
        v8[0] = &unk_1F5EBDEF8;
        v8[1] = &_bambiDomain;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        (**v6)(v6, &v15, a1 + 40, v7, v8);
        ImsResult::~ImsResult(v8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FCBAA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t AVCRTPStackController::getClientUniquePID(AVCRTPStackController *this)
{
  v2 = [MEMORY[0x1E6986590] getDaemonProcessInfo];
  result = [objc_msgSend(v2 objectForKeyedSubscript:{*MEMORY[0x1E6986528]), "longLongValue"}];
  *(this + 18) = result;
  return result;
}

void ___ZN21AVCRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v2[6];
      if (v6)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v17, v2 + 1);
        v7 = *(a1 + 64);
        v8 = *(a1 + 65);
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        v10[0] = &unk_1F5EBDEF8;
        v10[1] = &_bambiDomain;
        if (v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0x40000000;
        }

        v11 = v9;
        v12 = 0;
        v13 = 0;
        (**v6)(v6, &v17, a1 + 40, v7, v10);
        ImsResult::~ImsResult(v10);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FCBC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void AVCRTPStackController::~AVCRTPStackController(AVCRTPStackController *this)
{
  *this = &unk_1F5EE5CE0;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "avc.rtp.controller");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~AVCRTPStackController", 22);
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

  qmi::Client::~Client((this + 152));
  std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::destroy(this + 120, *(this + 16));
  std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::destroy(this + 96, *(this + 13));
  RTPStackController::~RTPStackController(this);
}

{
  AVCRTPStackController::~AVCRTPStackController(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t AVCRTPStackController::getClientUniquePIDStatic(AVCRTPStackController *this)
{
  v1 = [MEMORY[0x1E6986590] getDaemonProcessInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986528]];

  return [v2 longLongValue];
}

void AVCRTPStackController::sendNotifyIpVersionReq(uint64_t a1, uint64_t *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v50, "avc.rtp.controller");
  v46[0] = 0;
  v49 = 0;
  v5 = ims::debug(v4, v46);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendNotifyIpVersionReq", 22);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (*(a1 + 184))
  {
    v10 = a2[1];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = *a2;
        if (*a2)
        {
          if (*(v12 + 584))
          {
            v13 = v12 + 152;
          }

          else
          {
            if ((*(v12 + 1328) & 1) == 0)
            {
              v27 = std::string::basic_string[abi:ne200100]<0>(v50, "avc.rtp.controller");
              v38[0] = 0;
              v41 = 0;
              v28 = ims::warn(v27, v38);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Not enough information to configure with", 40);
              *(v28 + 17) = 0;
              (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v28 + 17) = 0;
              if (v41 == 1 && v40 < 0)
              {
                operator delete(v39);
              }

              if (v51 < 0)
              {
                operator delete(v50[0]);
              }

              goto LABEL_26;
            }

            v13 = v12 + 1032;
          }

          v18 = *(v13 + 8);
          v19 = *(v13 + 16);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v18)
          {
            v20 = (*(*v18 + 152))(v18);
            v21 = *(v20 + 23);
            v22 = v21;
            if ((v21 & 0x80u) != 0)
            {
              v21 = *(v20 + 8);
            }

            if (v21 == 3)
            {
              if (v22 >= 0)
              {
                v23 = v20;
              }

              else
              {
                v23 = *v20;
              }

              if (*v23 ^ IpAddress::kAddressTypeIPv6 | *(v23 + 2) ^ 0x36)
              {
                v24 = 2;
              }

              else
              {
                v24 = 1;
              }
            }

            else
            {
              v24 = 2;
            }

            v29 = std::__shared_weak_count::lock(*(v12 + 128));
            AVCRTPStackController::sendNotifyIpVersionReq(a1, *(*(v12 + 120) + 4372), v24);
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          else
          {
            v25 = std::string::basic_string[abi:ne200100]<0>(v50, "avc.rtp.controller");
            v34[0] = 0;
            v37 = 0;
            v26 = ims::error(v25, v34);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "local address is null", 21);
            *(v26 + 17) = 0;
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            if (v37 == 1 && v36 < 0)
            {
              operator delete(v35);
            }

            if (v51 < 0)
            {
              operator delete(v50[0]);
            }
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          return;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = std::string::basic_string[abi:ne200100]<0>(v50, "avc.rtp.controller");
    v30[0] = 0;
    v33 = 0;
    v17 = ims::error(v16, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "SDPSession expired in AVCRTPStackController::sendNotifyIpVersionReq", 67);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (v11)
    {
      goto LABEL_26;
    }
  }

  else if (TelephonyRadiosGetRadioVendor() == 1)
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v50, "avc.rtp.controller");
    v42[0] = 0;
    v45 = 0;
    v15 = ims::error(v14, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "SVC_AUDIO service is not initialized.", 37);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v45 == 1 && v44 < 0)
    {
      operator delete(__p);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }
  }
}

void AVCRTPStackController::sendNotifyIpVersionReq(AVCRTPStackController *this, int a2, int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(aBlock, "avc.rtp.controller");
  v28[0] = 0;
  v31 = 0;
  v7 = ims::debug(v6, v28);
  v8 = *(*(*this - 8) + 8);
  v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendNotifyIpVersionReq", 22);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(aBlock[0]);
  }

  if (*(this + 184))
  {
    *v22 = 0u;
    v23 = 0u;
    qmi::MutableMessageBase::MutableMessageBase(v22);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZN21AVCRTPStackController22sendNotifyIpVersionReqEjj_block_invoke;
    v19[3] = &__block_descriptor_40_e26_v16__0__IpVersionInfo_II_8l;
    v20 = a3;
    v21 = a2;
    v10 = v22[1];
    if (v22[1] != v23)
    {
      while (*(*v10 + 8) != 1)
      {
        if (++v10 == v23)
        {
          goto LABEL_20;
        }
      }
    }

    if (v10 == v23)
    {
LABEL_20:
      operator new();
    }

    v13 = ***v10;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    ___ZN21AVCRTPStackController22sendNotifyIpVersionReqEjj_block_invoke(v19, v14 + 3);
    v15[5] = this + 152;
    v15[6] = QMIServiceMsg::create();
    v16 = 25000;
    v17 = 0;
    v18 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN21AVCRTPStackController22sendNotifyIpVersionReqEjj_block_invoke_2;
    v15[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    v15[4] = this;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v33 = ___ZNO3qmi6Client9SendProxy8callbackIRKN5audio15NotifyIpVersion8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v34 = &unk_1E876BCC8;
    v35 = v15;
    v18 = _Block_copy(aBlock);
    qmi::Client::send();
    if (v18)
    {
      _Block_release(v18);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v22);
  }

  else if (TelephonyRadiosGetRadioVendor() == 1)
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(aBlock, "avc.rtp.controller");
    v24[0] = 0;
    v27 = 0;
    v12 = ims::error(v11, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "SVC_AUDIO service is not initialized.", 37);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(aBlock[0]);
    }
  }
}

void sub_1E4FCC92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  qmi::Client::SendProxy::~SendProxy(&a15);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  _Unwind_Resume(a1);
}

void AVCRTPStackController::sendNotifyIpVersionReq(AVCRTPStackController *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "avc.rtp.controller");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*this - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "sendNotifyIpVersionReq", 22);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  AVCRTPStackController::sendNotifyIpVersionReq(this, a2, 0);
}

void sub_1E4FCCAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t ___ZN21AVCRTPStackController22sendNotifyIpVersionReqEjj_block_invoke(uint64_t result, _DWORD *a2)
{
  *a2 = *(result + 32);
  a2[1] = *(result + 36);
  return result;
}

void ___ZN21AVCRTPStackController22sendNotifyIpVersionReqEjj_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v12, "avc.rtp.controller");
  v19[0] = 0;
  v22 = 0;
  v4 = ims::debug(v12, v19);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleNotifyIpVersionResp", 25);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  v9 = *(a2 + 4) != 0;
  memset(&v18, 0, sizeof(v18));
  v10 = qmi::asString();
  std::string::basic_string[abi:ne200100]<0>(&v18, v10);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v13 = ___ZN21AVCRTPStackController25handleNotifyIpVersionRespERKN5audio15NotifyIpVersion8ResponseE_block_invoke;
  v14 = &__block_descriptor_65_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
  v15 = v3;
  v17 = v9;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v18;
  }

  v25 = 0;
  v26 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v25, v3 + 1);
  v11 = v3[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  block[3] = &unk_1F5EE5BB0;
  block[5] = v25;
  v24 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v12;
  dispatch_async(v11, block);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FCCDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21AVCRTPStackController25handleNotifyIpVersionRespERKN5audio15NotifyIpVersion8ResponseE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(v29, "avc.rtp.controller");
    v25[0] = 0;
    v28 = 0;
    v4 = ims::error(v3, v25);
    if (!v1)
    {
      __cxa_bad_typeid();
    }

    v5 = v4;
    v6 = *(*(*v1 - 8) + 8);
    v7 = *(v4 + 8);
    v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleNotifyIpVersionResp_block_invoke", 38);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " Error  ", 8);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a1 + 40);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19[0] = &unk_1F5EBDEF8;
    v19[1] = &_bambiDomain;
    v20 = 0x40000000;
    (*(*v1 + 56))(v1, v19);
    ImsResult::~ImsResult(v19);
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(v29, "avc.rtp.controller");
    v15[0] = 0;
    v18 = 0;
    v10 = ims::debug(v9, v15);
    if (!v1)
    {
      __cxa_bad_typeid();
    }

    v11 = v10;
    v12 = *(*(*v1 - 8) + 8);
    v13 = *(v10 + 8);
    v14 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12 & 0x7FFFFFFFFFFFFFFFLL, v14);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "handleNotifyIpVersionResp_block_invoke", 38);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " Success", 8);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void AVCRTPStackController::stackError(void *a1, const ImsResult *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN21AVCRTPStackController10stackErrorE9ImsResult_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = a1;
  v9 = 0;
  v10 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, a1 + 1);
  v4 = a1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  block[3] = &unk_1F5EE5BB0;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  ImsResult::ImsResult(v5, a2);
  RTPStackController::stackError(a1, v5);
  ImsResult::~ImsResult(v5);
}

void sub_1E4FCD2D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN21AVCRTPStackController10stackErrorE9ImsResult_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E6986590] getDaemonProcessInfo];
  result = [objc_msgSend(v2 objectForKeyedSubscript:{*MEMORY[0x1E6986528]), "longLongValue"}];
  *(v1 + 144) = result;
  return result;
}

void AVCRTPStackController::cleanup(void *a1, void *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v57, "avc.rtp.controller");
  v53[0] = 0;
  v56 = 0;
  v5 = ims::debug(v4, v53);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "cleanup", 7);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [stackId=", 10);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v56 == 1 && v55 < 0)
  {
    operator delete(__p);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  v57[0] = a2;
  v10 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 12), a2);
  v11 = *(v10 + 56);
  v12 = (v10 + 64);
  if (v11 != (v10 + 64))
  {
    do
    {
      v14 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = std::string::basic_string[abi:ne200100]<0>(v57, "avc.rtp.controller");
      v49[0] = 0;
      v52 = 0;
      v17 = ims::debug(v16, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Removing cached audio session ", 30);
      *(v17 + 17) = 0;
      MEMORY[0x1E69233B0](*(v17 + 8), v14);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v52 == 1 && v51 < 0)
      {
        operator delete(v50);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
        if (v15)
        {
LABEL_17:
          v18 = std::__shared_weak_count::lock(v15);
          if (v18)
          {
            v19 = v18;
            if (v13)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              MediaSessionDriver::cancelAllTimers((v13 + 8));
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          std::__shared_weak_count::__release_weak(v15);
        }
      }

      else if (v15)
      {
        goto LABEL_17;
      }

      v20 = v11[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v11[2];
          v22 = *v21 == v11;
          v11 = v21;
        }

        while (!v22);
      }

      v11 = v21;
    }

    while (v21 != v12);
  }

  if (a1 + 13 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 12), a2))
  {
    v57[0] = a2;
    v23 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 12), a2);
    v24 = (v23 + 64);
    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(v23 + 56, *(v23 + 64));
    *v24 = 0;
    v24[1] = 0;
    *(v24 - 1) = v24;
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__erase_unique<std::string>(a1 + 12, a2);
  }

  v57[0] = a2;
  v25 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 15), a2);
  v26 = *(v25 + 56);
  v27 = (v25 + 64);
  if (v26 != (v25 + 64))
  {
    do
    {
      v29 = v26[4];
      v28 = v26[5];
      v30 = v26[6];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = std::string::basic_string[abi:ne200100]<0>(v57, "avc.rtp.controller");
      v45[0] = 0;
      v48 = 0;
      v32 = ims::debug(v31, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Removing cached text session ", 29);
      *(v32 + 17) = 0;
      MEMORY[0x1E69233B0](*(v32 + 8), v29);
      *(v32 + 17) = 0;
      (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v32 + 17) = 0;
      if (v48 == 1 && v47 < 0)
      {
        operator delete(v46);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
        if (v30)
        {
LABEL_40:
          v33 = std::__shared_weak_count::lock(v30);
          if (v33)
          {
            v34 = v33;
            if (v28)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              MediaSessionDriver::cancelAllTimers((v28 + 8));
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          std::__shared_weak_count::__release_weak(v30);
        }
      }

      else if (v30)
      {
        goto LABEL_40;
      }

      v35 = v26[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v26[2];
          v22 = *v36 == v26;
          v26 = v36;
        }

        while (!v22);
      }

      v26 = v36;
    }

    while (v36 != v27);
  }

  if (a1 + 16 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 15), a2))
  {
    v57[0] = a2;
    v37 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 15), a2);
    v38 = (v37 + 64);
    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(v37 + 56, *(v37 + 64));
    *v38 = 0;
    v38[1] = 0;
    *(v38 - 1) = v38;
    v39 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 15), a2);
    if (a1 + 16 != v39)
    {
      v40 = v39;
      v41 = *(v39 + 8);
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        v43 = v39;
        do
        {
          v42 = v43[2];
          v22 = *v42 == v43;
          v43 = v42;
        }

        while (!v22);
      }

      if (a1[15] == v39)
      {
        a1[15] = v42;
      }

      v44 = a1[16];
      --a1[17];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v44, v40);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,0>((v40 + 4));
      operator delete(v40);
    }
  }
}

void sub_1E4FCD8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  std::__shared_weak_count::__release_weak(v40);
  _Unwind_Resume(a1);
}

void AVCRTPStackController::cleanupAfterHandover(void *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v31, "avc.rtp.controller");
  v27[0] = 0;
  v30 = 0;
  v4 = ims::debug(v31, v27);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*a1 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "cleanupAfterHandover", 20);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [stackId=", 10);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v31[0] = a2;
  v9 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 12), a2);
  v10 = *(v9 + 56);
  v11 = (v9 + 64);
  if (v10 != (v9 + 64))
  {
    do
    {
      v13 = v10[4];
      v12 = v10[5];
      v14 = v10[6];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "avc.rtp.controller");
      v23[0] = 0;
      v26 = 0;
      v15 = ims::debug(v31, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Removing cached audio session ", 30);
      *(v15 + 17) = 0;
      MEMORY[0x1E69233B0](*(v15 + 8), v13);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
        if (v14)
        {
LABEL_17:
          v16 = std::__shared_weak_count::lock(v14);
          if (v16)
          {
            v17 = v16;
            if (v12)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              MediaSessionDriver::cancelAllTimers((v12 + 8));
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          std::__shared_weak_count::__release_weak(v14);
        }
      }

      else if (v14)
      {
        goto LABEL_17;
      }

      v18 = v10[1];
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
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != v11);
  }

  if (a1 + 13 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 12), a2))
  {
    v31[0] = a2;
    v21 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 12), a2);
    v22 = (v21 + 64);
    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(v21 + 56, *(v21 + 64));
    *v22 = 0;
    v22[1] = 0;
    *(v22 - 1) = v22;
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__erase_unique<std::string>(a1 + 12, a2);
  }
}

void sub_1E4FCDD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  std::__shared_weak_count::__release_weak(v35);
  _Unwind_Resume(a1);
}

void AVCRTPStackController::createRTPSession(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = std::string::basic_string[abi:ne200100]<0>(&v33, "avc.rtp.controller");
  v29[0] = 0;
  v32 = 0;
  v13 = ims::debug(v12, v29);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "createRTPSession", 16);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [sessionId=", 12);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), a2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " stackId=", 9);
  *(v14 + 17) = 0;
  (*(*v14 + 32))(v14, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  v18 = a3[1];
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    if (v19)
    {
      v20 = *a3;
      if (*a3)
      {
        v21 = *(v20 + 128);
        v24 = *a3;
        if (a4 == 4)
        {
          if (v21)
          {
            v21 = std::__shared_weak_count::lock(v21);
            if (v21)
            {
              v21 = *(v20 + 120);
            }
          }

          SipStack::prefs(v21);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v33, a1 + 1);
          operator new();
        }

        if (v21)
        {
          v21 = std::__shared_weak_count::lock(v21);
          if (v21)
          {
            v21 = *(v20 + 120);
          }
        }

        SipStack::prefs(v21);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v33, a1 + 1);
        operator new();
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = std::string::basic_string[abi:ne200100]<0>(&v33, "avc.rtp.controller");
  v25[0] = 0;
  v28 = 0;
  v23 = ims::error(v22, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "SDPSession expired in AVCRTPStackController::createRTPSession", 61);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  *a6 = 0;
  a6[1] = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}