void sub_1E4E1DD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, std::__shared_weak_count *a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if (!v58)
    {
LABEL_5:
      if (!v59)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v58)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (!v59)
  {
LABEL_6:
    if (!v58)
    {
LABEL_12:
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    goto LABEL_12;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  if (!v58)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void SipSession::handleTransactionError(void *a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSession::handleTransactionError", 34);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  memset(&v49, 0, sizeof(v49));
  v7 = *a3;
  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "UpdateType");
  if (v7 + 376 == v8)
  {
    v9 = &ims::kEmptyString;
  }

  else
  {
    v9 = (v8 + 56);
  }

  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *v9, *(v9 + 1));
  }

  else
  {
    v49 = *v9;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v49;
  }

  else
  {
    v10 = v49.__r_.__value_.__r.__words[0];
  }

  if (byte_1EE2BD497 >= 0)
  {
    v11 = &SipSession::kUpdateTypeEmergencyLocationUpdate;
  }

  else
  {
    v11 = SipSession::kUpdateTypeEmergencyLocationUpdate;
  }

  if (!strcasecmp(v10, v11))
  {
    v20 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "ignoring emergency location update transaction error", 52);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    goto LABEL_84;
  }

  v12 = a1[30];
  v13 = *(v12 + 232);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *(v12 + 224);
      if (v15)
      {
        v17 = *(v15 + 248);
        v16 = *(v15 + 256);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v17)
        {
          v22 = a1[23];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            (*(a1[18] + 16))(__p, a1 + 18);
            v23 = v48 >= 0 ? __p : __p[0];
            *buf = 141558275;
            v51 = 1752392040;
            v52 = 2081;
            v53 = v23;
            _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v48 < 0)
            {
              operator delete(__p[0]);
              if (!v16)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }
          }

          goto LABEL_81;
        }

        v18 = *a3;
        if (v18 + 376 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(*a3 + 368, "SessionRefresh"))
        {
          if (*(SipUserAgent::config(v17) + 1152) == 1)
          {
            v19 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "ignoring session refresh transaction error", 42);
            *(v19 + 17) = 0;
            (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v19 + 17) = 0;
            if (!v16)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          if (*(a2 + 8) == &SipResultDomain::_domain && *(a2 + 16) == 408)
          {
            v24 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "timed out sending session refresh.  Terminating session.", 56);
            *(v24 + 17) = 0;
            (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v24 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(__p, "SessionExpired");
            SipSession::bye(a1);
          }
        }

        if (*(SipUserAgent::config(v17) + 956) == 1 && *(a1[30] + 2816) == 1)
        {
          v25 = *(*a3 + 264);
          v26 = *(*a3 + 272);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = SipMessage::header<SipToHeader>(v25);
          if (v27)
          {
            v28 = SipUriHeader::tag(v27);
          }

          else
          {
            v28 = &ims::kEmptyString;
          }

          v30 = *(v28 + 23);
          if ((v30 & 0x80u) != 0)
          {
            v30 = *(v28 + 1);
          }

          if (v30)
          {
            v31 = a1[30];
            v32 = *(*a3 + 264);
            v33 = *(*a3 + 272);
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v34 = SipMessage::toTag(v32);
            v35 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v31 + 2944, v34);
            if (v31 + 2952 == v35)
            {
              v37 = 0;
            }

            else
            {
              v37 = *(v35 + 56);
              v36 = *(v35 + 64);
              if (v36)
              {
                atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v36);
              }
            }

            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if (!v37)
            {
              v44 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v44);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "ignoring ", 9);
              *(v44 + 17) = 0;
              (*(*a2 + 16))(a2, v44);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), " in terminated fork", 19);
              *(v44 + 17) = 0;
              (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v44 + 17) = 0;
              if (!v16)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }
          }

          else if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }
        }

        v38 = a1[96];
        v39 = a1[97];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          if (!v38)
          {
            goto LABEL_81;
          }

          v40 = a1[97];
          v38 = a1[96];
          if (v40)
          {
            v41 = 0;
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_75:
            v42 = a3[1];
            v45 = *a3;
            v46 = v42;
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v38 + 128))(v38, a2, &v45);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if ((v41 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

LABEL_81:
            if (!v16)
            {
LABEL_83:
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              goto LABEL_84;
            }

LABEL_82:
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            goto LABEL_83;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_81;
          }

          v40 = 0;
        }

        v41 = 1;
        goto LABEL_75;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v21 = a1[23];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    (*(a1[18] + 16))(__p, a1 + 18);
    v29 = v48 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v51 = 1752392040;
    v52 = 2081;
    v53 = v29;
    _os_log_error_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void sub_1E4E1E8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void SipSession::handleOutgoingResponse(void *a1, void *a2, void *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSession::handleOutgoingResponse", 34);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = a1[96];
  v8 = a1[97];
  if (!v8)
  {
    if (!v7)
    {
      return;
    }

    v9 = 0;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (!v7)
  {
    return;
  }

  v9 = a1[97];
  v7 = a1[96];
  if (!v9)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  v11 = a2[1];
  v37 = *a2;
  v38 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  v35 = *a3;
  v36 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 112))(v7, &v37, &v35);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v13 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "sending ", 8);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923350](*(v13 + 8), *(*a2 + 128));
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " response to ", 13);
  *(v13 + 17) = 0;
  v14 = *(*a3 + 264);
  v15 = *(*a3 + 272);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (*(*v14 + 120))(v14);
  LoggableString::LoggableString(&v34, v16);
  (*(*v13 + 40))(v13, &v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " request in state ", 18);
  *(v13 + 17) = 0;
  v17 = (*(a1[89] + 24))(a1 + 89);
  v18 = (*(a1[89] + 16))(a1 + 89, v17);
  LoggableString::LoggableString(&__p, v18);
  (*(*v13 + 40))(v13, &__p);
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v19 = *(*a3 + 264);
  v20 = *(*a3 + 272);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = (*(*v19 + 120))(v19);
  v22 = *(v21 + 23);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(v21 + 8);
  }

  if (v22 == 6 && (v23 >= 0 ? (v24 = v21) : (v24 = *v21), (v25 = *v24, v26 = *(v24 + 4), v25 == *"INVITE") ? (v27 = v26 == *"TE") : (v27 = 0), v27))
  {
    v28 = *(*a2 + 128) - 200;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v28 <= 0x63)
    {
      v29 = a3[1];
      v32[0] = *a3;
      v32[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = a2[1];
      v31 = *a2;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      SipSessionInterface::addAckReceiveHandlerForServerTransaction(a1, v32);
    }
  }

  else if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1E4E1EE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
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

void SipSession::checkTerminated(SipSession *this)
{
  if ((*(this + 601) & 1) == 0)
  {
    if (*(this + 88))
    {
      v2 = (*(*this + 64))(this);
      (*(*this + 16))(this, v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "We still have prack handlers, let's keep the session around", 59);
      *(v2 + 17) = 0;
      (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v2 + 17) = 0;
    }

    else
    {

      SipSessionInterface::checkTerminated(this);
    }
  }
}

void SipSession::prackHandlerForTransaction(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_21;
  }

  v6 = *(v4 + 264);
  v7 = *(v4 + 272);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = SipMessage::header<SipCSeqHeader>(v6);
  if (v8)
  {
    v9 = v8[15];
  }

  else
  {
    v9 = 0;
  }

  v10 = a1 + 696;
  v11 = *(a1 + 696);
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = a1 + 696;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v9;
    v15 = v13 < v9;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == v10 || v9 < *(v12 + 32))
  {
LABEL_15:
    v12 = v10;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v12 == v10)
  {
LABEL_21:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v16 = *(v12 + 48);
    *a3 = *(v12 + 40);
    a3[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_1E4E1F0E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::currentPrackHandler(SipSession *this@<X0>, void *a2@<X8>)
{
  SipSession::serverInviteTransaction(this, &lpsrc);
  if (!lpsrc)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **lpsrc;
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v5)
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSession::prackHandlerForTransaction(this, v7, a2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_15:

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4E1F21C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E1F324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a14 = &a11;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

BOOL SipSession::hasOutstandingResponseSdp(SipSession *this)
{
  v3 = 0;
  v4 = 0;
  SipSession::currentPrackHandler(this, &v3);
  v1 = v3 && (SipPrackHandler::hasOutstandingSdp(v3) & 1) != 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_1E4E1F3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::removeClientTransaction(uint64_t **a1, void *a2)
{
  v4 = a2[1];
  v15[0] = *a2;
  v15[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::removeClientTransaction(a1, v15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(*a2 + 264);
  v6 = *(*a2 + 272);
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

  if (v8 != 6)
  {
    v14 = 0;
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = *v7;
  }

  v11 = *v10;
  v12 = *(v10 + 4);
  v14 = v11 == *"INVITE" && v12 == *"TE";
  if (v6)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_23:
  if (v14)
  {

    SipSession::sendPendingInvite(a1);
  }
}

void sub_1E4E1F508(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::removeServerTransaction(SipSessionInterface *a1, void *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipSession::removeServerTransaction", 35);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = a2[1];
  v20[0] = *a2;
  v20[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::removeServerTransaction(a1, v20);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(*a2 + 264);
  v7 = *(*a2 + 272);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v6 + 120))(v6);
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 != 6)
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *v8;
  }

  v12 = *v11;
  v13 = *(v11 + 4);
  v15 = v12 == *"INVITE" && v13 == *"TE";
  if (v7)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_23:
  if (v15)
  {
    v16 = *(*a2 + 264);
    v17 = *(*a2 + 272);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = SipMessage::header<SipCSeqHeader>(v16);
    if (v18)
    {
      v19 = v18[15];
    }

    else
    {
      v19 = 0;
    }

    SipSession::removePrackHandler(a1, v19);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    SipSession::sendPendingInvite(a1);
  }
}

void sub_1E4E1F73C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::addServerTransaction(void *a1, char ***a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = (*a2)[33];
  v6 = (*a2)[34];
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

  if (v8 != 6)
  {
    v14 = 0;
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = *v7;
  }

  v11 = *v10;
  v12 = *(v10 + 4);
  v14 = v11 == *"INVITE" && v12 == *"TE";
  if (v6)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_21:
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = *a2;
  if (!*a2)
  {
    v17 = 0;
    goto LABEL_27;
  }

  v16 = **v15;
  if (!v17)
  {
LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_28:
  v19 = a1[30];
  v20 = *(v19 + 232);
  if (!v20)
  {
    v21 = 0;
LABEL_43:
    v28 = a1[23];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(__p, a1 + 18);
      v32 = v44 >= 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v48 = 2081;
      v49 = v32;
      _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_44;
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (!v21)
  {
    goto LABEL_43;
  }

  v22 = *(v19 + 224);
  if (!v22)
  {
    goto LABEL_43;
  }

  v24 = *(v22 + 248);
  v23 = *(v22 + 256);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    if (v17)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "100rel");
      if (v24 + 232 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v24 + 224, __p))
      {
        v27 = 1;
      }

      else
      {
        v26 = *(v17 + 33);
        v25 = *(v17 + 34);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "100rel");
        v27 = !SipMessage::supportsOption(v26, buf);
        if (v50 < 0)
        {
          operator delete(*buf);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }
      }

      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v27)
      {
        v33 = *(v17 + 33);
        v34 = *(v17 + 34);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = SipMessage::header<SipCSeqHeader>(v33);
        if (v35)
        {
          v36 = v35[15];
        }

        else
        {
          v36 = 0;
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v37 = a1[87];
        if (!v37)
        {
          goto LABEL_79;
        }

        v38 = a1 + 87;
        do
        {
          v39 = *(v37 + 32);
          v40 = v39 >= v36;
          v41 = v39 < v36;
          if (v40)
          {
            v38 = v37;
          }

          v37 = *(v37 + 8 * v41);
        }

        while (v37);
        if (v38 != a1 + 87 && v36 >= *(v38 + 8))
        {
          v42 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "we already have a prack handler for CSeq ", 41);
          *(v42 + 17) = 0;
          MEMORY[0x1E6923350](*(v42 + 8), v36);
          *(v42 + 17) = 0;
          (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v42 + 17) = 0;
        }

        else
        {
LABEL_79:
          v45 = 0;
          v46 = 0;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, a1 + 19);
          std::dynamic_pointer_cast[abi:ne200100]<SipSession,SipSessionInterface>(&v45, __p);
          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }

          if (v45)
          {
            operator new();
          }

          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }
        }
      }
    }
  }

  else
  {
    v30 = a1[23];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      (*(a1[18] + 16))(__p, a1 + 18);
      v31 = v44 >= 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v48 = 2081;
      v49 = v31;
      _os_log_error_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_44:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_48:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1E4E200BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  v21 = *(v19 - 136);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (!v17)
    {
LABEL_5:
      if (!v16)
      {
LABEL_10:
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
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
    goto LABEL_10;
  }

  goto LABEL_9;
}

void SipSession::sendQueuedResponseInTransaction(uint64_t a1@<X0>, std::__shared_weak_count **a2@<X1>, std::__shared_weak_count **a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::sendResponseInTransaction(a1, v7, v6, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4E20288(_Unwind_Exception *exception_object)
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

double SipSession::sendResponseInTransaction@<D0>(void *a1@<X0>, std::__shared_weak_count **a2@<X1>, std::__shared_weak_count **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SipSession::sendResponseInTransaction", 37);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v9 = *a3;
  {
    v17 = 0;
    v20 = *a2;
    v19 = a2 + 1;
    v18 = v20;
    goto LABEL_10;
  }

  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 33);
  v14 = *(v11 + 34);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = SipMessage::header<SipCSeqHeader>(v13);
  if (v15)
  {
    v16 = v15[15];
  }

  else
  {
    v16 = 0;
  }

  v25 = a1 + 87;
  v26 = a1[87];
  if (!v26)
  {
    goto LABEL_30;
  }

  v27 = a1 + 87;
  do
  {
    v28 = *(v26 + 32);
    v29 = v28 >= v16;
    v30 = v28 < v16;
    if (v29)
    {
      v27 = v26;
    }

    v26 = *(v26 + 8 * v30);
  }

  while (v26);
  if (v27 == v25 || v16 < *(v27 + 8))
  {
LABEL_30:
    v27 = a1 + 87;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v27 == v25)
  {
    v31 = 0;
    v17 = 0;
    if (v12)
    {
LABEL_37:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v31 = v27[5];
    v17 = v27[6];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      goto LABEL_37;
    }
  }

  v32 = *a2;
  v19 = a2 + 1;
  v18 = v32;
  if (v31)
  {
    v33 = *v19;
    v36 = v18;
    v37 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipPrackHandler::queueResponse(v31, &v36);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    result = 0.0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    if (!v17)
    {
      return result;
    }

LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return result;
  }

LABEL_10:
  v21 = *v19;
  v35[0] = v18;
  v35[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *a3;
  v23 = a3[1];
  v34[0] = v22;
  v34[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::sendResponseInTransaction(a1, v35, v34, a4);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v17)
  {
    goto LABEL_19;
  }

  return result;
}

void sub_1E4E2059C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::operator<<<char [34]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::cancel(SipSession *this, const BambiCallTerminationReason *a2, const BambiCallTerminationReason *a3)
{
  if (*(*(a2 + 30) + 2816))
  {
    if (!(*(*a2 + 264))(a2))
    {
      if (SipSession::confirmed(a2))
      {
        memset(&v28[1] + 8, 0, 64);
        *&v28[0] = &unk_1F5EBDEF8;
        *(&v28[0] + 1) = &_bambiDomain;
        LODWORD(v28[1]) = 1073741826;
        ImsLogContainer::logResult(a2, v28, &v21);
        v11 = ImsResult::operator<<<char [37]>(&v21, "cancel called on a confirmed session");
        ImsResult::ImsResult(this, v11);
      }

      else
      {
        v12 = *(a2 + 96);
        v13 = *(a2 + 97);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (!v12)
        {
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v21 = &unk_1F5EBDEF8;
          v22 = &_bambiDomain;
          v23 = 1073741826;
          v18 = ImsResult::operator<<<char [30]>(&v21, "cannot cancel from NULL state");
          v19 = ImsLogContainer::logResult(a2, v18);
          ImsResult::ImsResult(this, v19);
          goto LABEL_5;
        }

        SipSession::clientInviteTransaction(a2, &v21);
        v14 = v21;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v14)
        {
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          BambiCallTerminationReason::BambiCallTerminationReason(v28, a3);
          if (!LODWORD(v28[4]))
          {
            LODWORD(v28[4]) = 4;
          }

          v15 = *(a2 + 200);
          if (v15)
          {
            v16 = *(v15 + 120);
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            v17 = *(v15 + 104);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            if (*(v15 + 95) < 0)
            {
              operator delete(*(v15 + 72));
            }

            if (*(v15 + 55) < 0)
            {
              operator delete(*(v15 + 32));
            }

            if (*(v15 + 31) < 0)
            {
              operator delete(*(v15 + 8));
            }

            MEMORY[0x1E69235B0](v15, 0x1032C40D4AF1F8FLL);
          }

          operator new();
        }

        memset(&v28[1] + 8, 0, 64);
        *&v28[0] = &unk_1F5EBDEF8;
        *(&v28[0] + 1) = &_bambiDomain;
        LODWORD(v28[1]) = 1073741826;
        ImsLogContainer::logResult(a2, v28, &v21);
        v20 = ImsResult::operator<<<char [39]>(&v21, "no client INVITE transaction to cancel");
        ImsResult::ImsResult(this, v20);
      }

      ImsResult::~ImsResult(&v21);
      v10 = v28;
      goto LABEL_6;
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    v23 = 1073741826;
    v6 = ImsResult::operator<<<char [38]>(&v21, "cancel called on a terminated session");
    v7 = ImsLogContainer::logResult(a2, v6);
    ImsResult::ImsResult(this, v7);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = &unk_1F5EBDEF8;
    v22 = &_bambiDomain;
    v23 = 1073741826;
    v8 = ImsResult::operator<<<char [25]>(&v21, "cannot cancel an MT call");
    v9 = ImsLogContainer::logResult(a2, v8);
    ImsResult::ImsResult(this, v9);
  }

LABEL_5:
  v10 = &v21;
LABEL_6:
  ImsResult::~ImsResult(v10);
}

void sub_1E4E20F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  BambiCallTerminationReason::~BambiCallTerminationReason((v10 - 208));
  _Unwind_Resume(a1);
}

void SipSession::rejectWithReason(SipSession *this, const BambiCallTerminationReason *a2, uint64_t a3)
{
  v4 = *(a2 + 30);
  v5 = *(v4 + 232);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = *(v4 + 224);
      if (v8)
      {
        v9 = *(v8 + 248);
        v10 = *(v8 + 256);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v14[0] = 0;
          v14[1] = 0;
          v11 = *(a3 + 60);
          SipResponse::create(v14);
        }

        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v15 = &unk_1F5EBDEF8;
        v16 = &_bambiDomain;
        v17 = 1073741826;
        v13 = ImsResult::operator<<<char [14]>(&v15, "no user agent");
        ImsResult::ImsResult(this, v13);
        ImsResult::~ImsResult(&v15);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = &unk_1F5EBDEF8;
  v16 = &_bambiDomain;
  v17 = 1073741826;
  v12 = ImsResult::operator<<<char [12]>(&v15, "no sipStack");
  ImsResult::ImsResult(this, v12);
  ImsResult::~ImsResult(&v15);
  if (v7)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E21510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipSession::silentHangUp(SipSession *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 96);
  v7 = *(this + 97);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    if (!SipSession::confirmed(this))
    {
      v10 = (*(*this + 64))(this);
      (*(*this + 16))(this, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "silentHangUp called for an unconfirmed call in state: ", 54);
      *(v10 + 17) = 0;
      v11 = (*(*(this + 89) + 24))(this + 712);
      v12 = (*(*(this + 89) + 16))(this + 712, v11);
      LoggableString::LoggableString(&__p, v12);
      (*(*v10 + 40))(v10, &__p);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v13 = (*(*this + 64))(this);
    (*(*this + 16))(this, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SipSession::silentHangUp", 24);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    bzero(&__p, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(&__p, 15, a2);
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EC4038;
    SipSession::terminateWithEvent(this, &__p.__r_.__value_.__l.__data_, 12);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&__p.__r_.__value_.__l.__data_);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __p.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1073741826;
    v8 = ImsResult::operator<<<char [40]>(&__p, "silentHangUp called while in NULL state");
    v9 = ImsLogContainer::logResult(this, v8);
    ImsResult::ImsResult(a3, v9);
    ImsResult::~ImsResult(&__p);
  }
}

void SipSession::addTerminationSdpToMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 128))
  {
    if (*a4 && *a3)
    {
      v15 = 0;
      v16 = 0;
      std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> const&,0>();
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "bambi.call");
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v7, (a1 + 192));
    v6 = ims::error(v13, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Unable to include precondition failure SDP in ", 46);
    *(v6 + 17) = 0;
    (*(**a3 + 40))(__p);
    (*(*v6 + 32))(v6, __p);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }
}

void sub_1E4E21C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a34 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  v36 = *(v34 - 40);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::sendPendingBye(SipSession *a1, char ***a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 199))
  {
    v3 = *(a1 + 30);
    v4 = *(v3 + 232);
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = *(v3 + 224);
        if (v7)
        {
          v9 = *(v7 + 248);
          v8 = *(v7 + 256);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v9)
          {
            v17 = *(a1 + 23);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 18) + 16))(__p, a1 + 18);
              v18 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v18;
              _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_87;
          }

          v46 = 0;
          v47 = 0;
          SipDialog::createRequestInDialog(*(a1 + 30), 0, &v46);
          if (*(SipUserAgent::config(v9) + 612) == 1)
          {
            v10 = *(a1 + 199);
            v11 = v47;
            v45[0] = v46;
            v45[1] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCallTerminationReason::addReasonToRequest(v10, v45);
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }
          }

          v12 = *(a1 + 199);
          v13 = v47;
          v44[0] = v46;
          v44[1] = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 128))(&v42, a1);
          SipSession::addTerminationSdpToMessage(a1, v12, v44, &v42);
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v14 = *(a1 + 30);
          if (*(v14 + 2647) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v14 + 2624), *(v14 + 2632));
          }

          else
          {
            __p[0] = *(v14 + 2624);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            size = __p[0].__r_.__value_.__l.__size_;
            operator delete(__p[0].__r_.__value_.__l.__data_);
            if (!size)
            {
              goto LABEL_47;
            }
          }

          else if (!*(&__p[0].__r_.__value_.__s + 23))
          {
            goto LABEL_47;
          }

          v20 = v46;
          v21 = *(a1 + 30);
          if (*(v21 + 2647) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v21 + 2624), *(v21 + 2632));
          }

          else
          {
            __p[0] = *(v21 + 2624);
          }

          SipMessage::addHeader(v20, "MLS-Opaque-Token", __p, 0);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

LABEL_47:
          v23 = *a2;
          if (*a2)
          {
            memset(__p, 0, 24);
            std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(__p, *v23, v23[1], v23[1] - *v23);
            operator new();
          }

          v24 = v47;
          v41[0] = v46;
          v41[1] = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
          SipSession::sendRequest(buf, a1, v41, __p);
          v25 = *buf;
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          v26 = *(a1 + 30);
          v27 = *(v26 + 232);
          if (v27)
          {
            v28 = std::__shared_weak_count::lock(v27);
            if ((*(*(v26 + 224) + 2817) & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              goto LABEL_65;
            }

            v29 = *(a1 + 199);
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            if (!v29)
            {
LABEL_65:
              v31 = *(a1 + 104);
              if (v31)
              {
                v32 = std::__shared_weak_count::lock(v31);
                if (v32 && *(a1 + 103))
                {
                  v33 = *a1;
                  if (v25)
                  {
                    v34 = (*(v33 + 64))(a1);
                    (*(*a1 + 16))(a1, v34);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "strict call flows are on. Waiting for BYE response before terminating", 69);
                    *(v34 + 17) = 0;
                    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v34 + 17) = 0;
                    SipTypedStateMachine<SipSessionState>::transitionToState(a1 + 89, 10);
                    bzero(__p, 0x250uLL);
                    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 14, *(a1 + 199));
                    __p[0].__r_.__value_.__r.__words[0] = &unk_1F5ED1DB0;
                    SipSession::fireCallEvent(a1, &__p[0].__r_.__value_.__l.__data_);
                    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&__p[0].__r_.__value_.__l.__data_);
LABEL_84:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
LABEL_85:
                    if (v47)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                    }

LABEL_87:
                    if (v8)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
                    }

LABEL_89:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
                    goto LABEL_90;
                  }

                  v39 = (*(v33 + 56))(a1);
                  (*(*a1 + 16))(a1, v39);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "unable to send BYE. Terminating immediately.", 44);
                  *(v39 + 17) = 0;
                  (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v39 + 17) = 0;
                }
              }

              else
              {
                v32 = 0;
              }

              bzero(__p, 0x250uLL);
              BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 15, *(a1 + 199));
              __p[0].__r_.__value_.__r.__words[0] = &unk_1F5EC4038;
              v35 = *(a1 + 199);
              if (v35)
              {
                v36 = *(v35 + 120);
                if (v36)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
                }

                v37 = *(v35 + 104);
                if (v37)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }

                if (*(v35 + 95) < 0)
                {
                  operator delete(*(v35 + 72));
                }

                if (*(v35 + 55) < 0)
                {
                  operator delete(*(v35 + 32));
                }

                if (*(v35 + 31) < 0)
                {
                  operator delete(*(v35 + 8));
                }

                MEMORY[0x1E69235B0](v35, 0x1032C40D4AF1F8FLL);
              }

              *(a1 + 199) = 0;
              SipSession::terminateWithEvent(a1, &__p[0].__r_.__value_.__l.__data_, 13);
              BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&__p[0].__r_.__value_.__l.__data_);
              if (!v32)
              {
                goto LABEL_85;
              }

              goto LABEL_84;
            }
          }

          else if (MEMORY[0xB01] != 1 || !*(a1 + 199))
          {
            goto LABEL_65;
          }

          v30 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Lazuli termination:  Waiting for BYE response before terminating", 64);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          SipTypedStateMachine<SipSessionState>::transitionToState(a1 + 89, 10);
          bzero(__p, 0x250uLL);
          BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 14, *(a1 + 199));
          __p[0].__r_.__value_.__r.__words[0] = &unk_1F5ED1DB0;
          SipSession::fireCallEvent(a1, &__p[0].__r_.__value_.__l.__data_);
          BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&__p[0].__r_.__value_.__l.__data_);
          goto LABEL_85;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v16 = *(a1 + 23);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 18) + 16))(__p, a1 + 18);
      v22 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (v6)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v15 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "sendPendingBye called, but we don't have a pending termination event", 68);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
  }

LABEL_90:
  v38 = *MEMORY[0x1E69E9840];
}

void sub_1E4E226D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v19 = *(v17 - 104);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipSession::bye(void *a1@<X0>, ImsResult *a2@<X8>)
{
  if (!(*(*a1 + 264))(a1))
  {
    v6 = a1[199];
    if (v6)
    {
      v7 = *(v6 + 120);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = *(v6 + 104);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (*(v6 + 95) < 0)
      {
        operator delete(*(v6 + 72));
      }

      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      MEMORY[0x1E69235B0](v6, 0x1032C40D4AF1F8FLL);
    }

    operator new();
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9[0] = &unk_1F5EBDEF8;
  v9[1] = &_bambiDomain;
  v10 = 1073741826;
  v4 = ImsResult::operator<<<char [41]>(v9, "can't send a BYE in a terminated session");
  v5 = ImsLogContainer::logResult(a1, v4);
  ImsResult::ImsResult(a2, v5);
  ImsResult::~ImsResult(v9);
}

void sub_1E4E22B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::sendSessionRefresh(SipSession *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 264))(this))
  {
    memset(v36 + 8, 0, 64);
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    LODWORD(v36[0]) = 1073741826;
    v4 = ImsResult::operator<<<char [53]>(__p, "can't send a session refresh in a terminated session");
    v5 = ImsLogContainer::logResult(this, v4);
    ImsResult::ImsResult(a2, v5);
    ImsResult::~ImsResult(__p);
    return;
  }

  memset(&v34, 0, sizeof(v34));
  v6 = *(this + 30);
  v7 = *(v6 + 232);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(v6 + 224);
      if (v9)
      {
        v10 = SipStack::prefs(v9);
        if (ImsPrefs::UseInviteToRefreshSessionIfRemoteDoesNotAllowUpdate(v10))
        {
          v11 = *(this + 30);
          if ((*(v11 + 2816) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "UPDATE");
            v12 = SipDialog::remoteSideAllows(v11, __p);
            if (SBYTE7(v36[0]) < 0)
            {
              operator delete(__p[0]);
            }

            if (!v12)
            {
              std::string::operator=(&v34, "INVITE");
              *(*(this + 185) + 264) = 1;
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  std::string::operator=(&v34, "UPDATE");
LABEL_14:
  v32 = 0;
  v33 = 0;
  SipDialog::createRequestInDialog(*(this + 30), 0, &v32);
  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  if (size != 6)
  {
    goto LABEL_33;
  }

  v14 = &v34;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v34.__r_.__value_.__r.__words[0];
  }

  data = v14->__r_.__value_.__l.__data_;
  v16 = WORD2(v14->__r_.__value_.__r.__words[0]);
  if (data != *"INVITE" || v16 != *"TE")
  {
    goto LABEL_33;
  }

  memset(v36, 0, 72);
  *__p = 0u;
  v18 = v33;
  v31[0] = v32;
  v31[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, &str_24_0);
  SipSession::addBodyToInvite(__p, this, v31, &SipSession::kInviteTypeSessionRefresh);
  if (v30 < 0)
  {
    operator delete(v28);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (!(*(*__p[1] + 24))(__p[1], LODWORD(v36[0])))
  {
    ImsResult::~ImsResult(__p);
LABEL_33:
    v20 = (*(*this + 64))(this);
    (*(*this + 16))(this, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "sending session refresh request", 31);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    v28 = 0;
    v29 = 0;
    v21 = v33;
    v27[0] = v32;
    v27[1] = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipSession::sendRequest(&v28, this, v27, __p);
    if (SBYTE7(v36[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v22 = v28;
    if (v28)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
      v37 = "SessionRefresh";
      v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v22 + 368, "SessionRefresh");
      std::string::operator=((v23 + 56), __p);
      if (SBYTE7(v36[0]) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = "UpdateType";
      v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v22 + 368, "UpdateType");
      std::string::operator=((v24 + 56), _MergedGlobals_10);
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
    }

    else
    {
      memset(v36 + 8, 0, 64);
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      LODWORD(v36[0]) = 0x40000000;
      v25 = ImsResult::operator<<<char [39]>(__p, "unable to send session refresh request");
      v26 = ImsLogContainer::logResult(this, v25);
      ImsResult::ImsResult(a2, v26);
      ImsResult::~ImsResult(__p);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    goto LABEL_46;
  }

  v19 = ImsLogContainer::logResult(this, __p);
  ImsResult::ImsResult(a2, v19);
  ImsResult::~ImsResult(__p);
LABEL_46:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E230AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

double SipSession::sendPublish@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = qword_1EE2BD4D0;
  if (byte_1EE2BD4DF >= 0)
  {
    v6 = byte_1EE2BD4DF;
  }

  if (v5 != v6)
  {
    goto LABEL_33;
  }

  v8 = v4 >= 0 ? a2 : *a2;
  v9 = byte_1EE2BD4DF >= 0 ? &SipSession::kPublishTypeEmergencyLocation : SipSession::kPublishTypeEmergencyLocation;
  if (memcmp(v8, v9, v5))
  {
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 0;
  SipDialog::createRequestInDialog(*(a1 + 240), 1, &v20);
  v10 = v20;
  if (v20)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "presence");
    SipMessage::addHeader(v10, "Event", __p, 0);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v21;
    v17[0] = v20;
    v17[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSession::addLocationToMessage(a1, v17);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = v21;
    v14[0] = v20;
    v14[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
    SipSession::sendRequest(&v15, a1, v14, __p);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741829;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v10)
  {
LABEL_33:
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_1E4E233C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::sendUpdateWithSdpInFork(void **a1@<X0>, uint64_t *a2@<X1>, ImsResult *a3@<X8>)
{
  if (!((*a1)[33])(a1))
  {
    v12[0] = 0;
    v12[1] = 0;
    SipDialog::createRequestInDialog(a1[30], 0, v12);
    v8 = *a2;
    v9 = a2[1];
    v10 = v8;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    SipMessage::setSdp();
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13[0] = &unk_1F5EBDEF8;
  v13[1] = &_bambiDomain;
  v14 = 1073741826;
  v6 = ImsResult::operator<<<char [45]>(v13, "can't send an UPDATE in a terminated session");
  v7 = ImsLogContainer::logResult(a1, v6);
  ImsResult::ImsResult(a3, v7);
  ImsResult::~ImsResult(v13);
}

void sub_1E4E23D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  MEMORY[0x1E69235B0](v39, 0x10A1C407D4E1E9DLL);
  ims::AccessNetwork::~AccessNetwork(&a25);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  ImsResult::~ImsResult((v40 - 176));
  v42 = *(v40 - 184);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(a1);
}

void SipReason::~SipReason(SipReason *this)
{
  *(this + 3) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 32, *(this + 5));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ImsResult::operator<<<char [11]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipSession::sendUpdateWithLocalSdpInAllForks(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    memset(&v35[1] + 8, 0, 64);
    *&v35[0] = &unk_1F5EBDEF8;
    *(&v35[0] + 1) = &_bambiDomain;
    LODWORD(v35[1]) = 1073741826;
    v8 = ImsResult::operator<<<char [45]>(v35, "can't send an UPDATE in a terminated session");
    v9 = ImsLogContainer::logResult(a1, v8);
    ImsResult::ImsResult(a4, v9);
    ImsResult::~ImsResult(v35);
    return;
  }

  v33 = 0uLL;
  v34 = 0;
  SipDialog::allForks(a1[30], &v33);
  v10 = *(&v33 + 1);
  v11 = v33;
  if (v33 == *(&v33 + 1))
  {
    memset(&v35[1] + 8, 0, 64);
    *&v35[0] = &unk_1F5EBDEF8;
    *(&v35[0] + 1) = &_bambiDomain;
    LODWORD(v35[1]) = 1073741826;
    v16 = ImsResult::operator<<<char [37]>(v35, "sendUpdate: dialog contains no forks");
    v17 = ImsLogContainer::logResult(a1, v16);
    ImsResult::ImsResult(a4, v17);
    ImsResult::~ImsResult(v35);
    goto LABEL_39;
  }

  v18 = 0;
  do
  {
    v31 = 0;
    v32 = 0;
    SipDialogFork::createSdpOffer(*v11, "UPDATE", a2, &v31);
    if (v31)
    {
      memset(v35, 0, 88);
      v12 = v32;
      v30[0] = v31;
      v30[1] = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v11[1];
      v28 = *v11;
      v29 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *a3, *(a3 + 8));
      }

      else
      {
        v23 = *a3;
      }

      v24 = &unk_1F5EBEF50;
      std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v25, *(a3 + 32), (a3 + 40));
      v27 = 1;
      v26 = *(a3 + 56);
      SipSession::sendUpdateWithSdpInFork(a1, v30, v35);
      v24 = &unk_1F5EBEF50;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25, v25[1]);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      else if (!v13)
      {
LABEL_20:
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if ((*(**(&v35[0] + 1) + 24))(*(&v35[0] + 1), LODWORD(v35[1])))
        {
          v15 = (*(*a1 + 56))(a1);
          (*(*a1 + 16))(a1, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "unable to send SDP in fork ", 27);
          *(v15 + 17) = 0;
          ObfuscatedString::ObfuscatedString(v19, *v11 + 11);
          (*(*v15 + 56))(v15, v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
          *(v15 + 17) = 0;
          (*(*&v35[0] + 16))(v35, v15);
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v22 < 0)
          {
            operator delete(__p);
          }

          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }

        else
        {
          v18 = 1;
        }

        ImsResult::~ImsResult(v35);
        goto LABEL_29;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_20;
    }

    v14 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "unable to create SDP in fork ", 29);
    *(v14 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v35, *v11 + 11);
    (*(*v14 + 56))(v14, v35);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (SHIBYTE(v35[2]) < 0)
    {
      operator delete(*(&v35[1] + 1));
    }

    if (SBYTE7(v35[1]) < 0)
    {
      operator delete(*&v35[0]);
    }

LABEL_29:
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v11 += 2;
  }

  while (v11 != v10);
  if ((v18 & 1) == 0)
  {
    memset(&v35[1] + 8, 0, 64);
    *&v35[0] = &unk_1F5EBDEF8;
    *(&v35[0] + 1) = &_bambiDomain;
    LODWORD(v35[1]) = 0x40000000;
    operator new();
  }

  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
LABEL_39:
  *&v35[0] = &v33;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v35);
}

void sub_1E4E2460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  MEMORY[0x1E69235B0](v34, 0x10A1C407D4E1E9DLL);
  ImsResult::~ImsResult((v35 - 192));
  *(v35 - 192) = &a34;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v35 - 192));
  _Unwind_Resume(a1);
}

uint64_t SipSession::exitWPSCleanup(SipSession *this)
{
  result = *(this + 96);
  if (result)
  {
    if ((*(*result + 48))(result) == 14 || (result = *(this + 96)) != 0 && (result = (*(*result + 48))(result), result == 15))
    {

      return SipTypedStateMachine<SipSessionState>::transitionToState(this + 89, 13);
    }
  }

  return result;
}

ImsOutStream *SipSession::printSessionInfo(SipSession *this, ImsOutStream *a2)
{
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if ((*(this + 1535) & 0x8000000000000000) != 0)
  {
    if (!*(this + 190))
    {
      goto LABEL_9;
    }
  }

  else if (!*(this + 1535))
  {
    goto LABEL_9;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Bambi Call ID:   ", 19);
  *(a2 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v22, this + 63);
  (*(*a2 + 56))(a2, &v22);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_9:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Established:     ", 19);
  *(a2 + 17) = 0;
  v4 = SipSession::established(this);
  if (v4)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v5, v6);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Confirmed:       ", 19);
  *(a2 + 17) = 0;
  v7 = SipSession::confirmed(this);
  if (v7)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v8, v9);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  State:           ", 19);
  *(a2 + 17) = 0;
  v10 = (*(*(this + 89) + 24))(this + 712);
  v11 = (*(*(this + 89) + 16))(this + 712, v10);
  LoggableString::LoggableString(&v22, v11);
  (*(*a2 + 40))(a2, &v22);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Preconditions:   ", 19);
  *(a2 + 17) = 0;
  SipPreconditions::printInfo(*(this + 192), a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v12 = *(this + 30);
  memset(&v22, 0, sizeof(v22));
  v25 = 0;
  v26 = 0;
  SipDialog::currentClientTransactions(v12, &v22, "INVITE", &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  size = v22.__r_.__value_.__l.__size_;
  v13 = v22.__r_.__value_.__r.__words[0];
  if (v22.__r_.__value_.__r.__words[0] != v22.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!(*(*v16 + 136))(v16))
      {
        break;
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v13 += 16;
      if (v13 == size)
      {
        goto LABEL_32;
      }
    }

    v27 = &v22;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    goto LABEL_38;
  }

LABEL_32:
  v27 = &v22;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v27);
  SipSession::serverInviteTransaction(this, &v22);
  v15 = v22.__r_.__value_.__l.__size_;
  v16 = v22.__r_.__value_.__r.__words[0];
  if (v22.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v22.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v16)
  {
LABEL_38:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Current INVITE:  ", 19);
    *(a2 + 17) = 0;
    (*(v16[15] + 24))(&v22, v16 + 15);
    (*(*a2 + 40))(a2, &v22);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  v17 = *(this + 83);
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = *(this + 82);
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = std::__shared_weak_count::lock(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (v19 && v18)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Transport:       ", 19);
    *(a2 + 17) = 0;
    (*(*v18 + 80))(v18, a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  else if (!v19)
  {
    goto LABEL_46;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_46:
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v20 = *(this + 30);
  if (v20)
  {
    SipDialog::printDialogInfo(v20, a2);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return a2;
}

void sub_1E4E24E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSession::nameForStateId(SipSession *this, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return &_MergedGlobals_10 + 24 * v2 + 24;
}

uint64_t non-virtual thunk toSipSession::nameForStateId(SipSession *this, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return &_MergedGlobals_10 + 24 * v2 + 24;
}

BOOL SipSession::terminated(SipSession *this)
{
  v2 = *(this + 96);
  v3 = *(this + 97);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v6 = 0;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v4 = *(this + 96);
  v5 = *(this + 97);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 48))(v4) == 13;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_1E4E24FB8(_Unwind_Exception *exception_object)
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

uint64_t SipSession::handleAuthChallengeTimeout(SipSession *this)
{
  result = (*(*this + 264))(this);
  if ((result & 1) == 0)
  {
    v3 = (*(*this + 56))(this);
    (*(*this + 16))(this, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Terminating call due to auth challenge timeout", 46);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
    SipSession::hangUp(this);
  }

  return result;
}

void sub_1E4E25118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleNewFork(uint64_t a1, const std::string **a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "handleNewFork: setting need to send update to ", 46);
  *(v4 + 17) = 0;
  v5 = (*(*a1 + 304))(a1, *a2 + 11);
  MEMORY[0x1E6923320](*(v4 + 8), v5);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " in fork ", 9);
  *(v4 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v15, *a2 + 11);
  (*(*v4 + 56))(v4, &v15);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  v6 = *(a1 + 1536);
  v7 = *a2;
  v8 = (*(*a1 + 304))(a1, *a2 + 11);
  SipPreconditions::setNeedToSendUpdateInFork(v6, &v7[11].__r_.__value_.__l.__data_, v8);
  if ((*a2)[42].__r_.__value_.__r.__words[0])
  {
    v9 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handleNewFork: fork ", 20);
    *(v9 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v15, *a2 + 11);
    (*(*v9 + 56))(v9, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " already has some bearer information!", 37);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v15);
    }

    SipPreconditions::handleLocalQoSEstablished(*(a1 + 1536), &(*a2)[11].__r_.__value_.__l.__data_);
  }

  v10 = *(a1 + 832);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(a1 + 824);
      if (v12)
      {
        if (*(v12 + 1529) == 1 && *(*(a1 + 1536) + 108) != 1)
        {
          v13 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "We offered preconditions, setting up status for new fork", 56);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          SipPreconditions::initializeNewFork(*(a1 + 1536), &(*a2)[11].__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = 0;
  v16 = 0;
  if (*(a1 + 1448) == 1)
  {
    SipSession::localLazuliSdp(&v15, a1);
  }

  else
  {
    (*(*a1 + 128))(&v15, a1);
  }

  if (v15 && (*(*(v15 + 9) + 24))(v15 + 72))
  {
    SipDialogFork::setSdpVersion(*a2, *(v15 + 21));
  }

  else
  {
    v14 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleNewFork: no local SDP to initialize SDP version", 53);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void SipSession::localLazuliSdp(SipSession *this, uint64_t a2)
{
  v3 = *(a2 + 1200);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = *(a2 + 1192);
    if (v6)
    {
      SDPSession::localLazuliSdp(*(v6 + 184));
    }

    *this = 0;
    *(this + 1) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

void SipSession::updateBearerForPorts(SipDialog **a1, unsigned int a2, int a3, uint64_t *a4, char a5)
{
  v26 = 2;
  v6 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      v12 = *v6;
      v24 = 0;
      v25 = 0;
      SipDialog::forkForBearerPort(a1[30], v12, a3, &v26, &v24);
      v13 = *a1;
      if (!v24)
      {
        v16 = (*(v13 + 6))(a1);
        (*(*a1 + 2))(a1, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No fork using bearer port ", 26);
        *(v16 + 17) = 0;
        MEMORY[0x1E6923390](*(v16 + 8), v12);
        *(v16 + 17) = 0;
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        goto LABEL_18;
      }

      v14 = (*(v13 + 8))(a1);
      (*(*a1 + 2))(a1, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Updating bearer information for fork ", 37);
      *(v14 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v20, v24 + 11);
      (*(*v14 + 56))(v14, v20);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
        if (a5)
        {
LABEL_7:
          v15 = (*(*a1 + 8))(a1);
          (*(*a1 + 2))(a1, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Faking QoS indication, do not store bearer information", 54);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          goto LABEL_11;
        }
      }

      else if (a5)
      {
        goto LABEL_7;
      }

      SipDialogFork::setBearer(v24, a2, a4, v26);
LABEL_11:
      v17 = a1[192];
      v18 = *(v17 + 12);
      v19 = *(v17 + 28);
      if (v18 && v19 == 5)
      {
        if ((SipPreconditions::preconditionsActiveInAnyFork(a1[192]) & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        SipPreconditions::handleLocalQoSEstablished(v17, &v24[11].__r_.__value_.__l.__data_);
        goto LABEL_18;
      }

      if (!v18 && v19 == 5)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      ++v6;
    }

    while (v6 != v5);
  }
}

void sub_1E4E25B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleRemoteQoSEstablished(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, char a5)
{
  SipSessionInterface::stack(a1, &v24);
  v10 = SipStack::prefs(v24);
  v11 = ImsPrefs::UseStrictBearerPreconditions(v10);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v11)
  {
    if (*a4 != a4[1])
    {
      SipSession::updateBearerForPorts(a1, a2, a3, a4, a5);
      return;
    }

    v15 = (*(*a1 + 48))(a1);
    (*(*a1 + 16))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Bearer does not contain port information, we will use the only fork by default", 78);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    v16 = *(a1 + 240);
    if (v16[370] == 1)
    {
      v17 = v16[368];
      v19 = *(v17 + 56);
      v18 = *(v17 + 64);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *(a1 + 240);
      }

      if (v19)
      {
        if (v16[370] != 1)
        {
          v22 = 0;
          v21 = 0;
          if (!v18)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v20 = v16[368];
        v22 = *(v20 + 56);
        v21 = *(v20 + 64);
        if (!v21)
        {
LABEL_24:
          if (!v18)
          {
LABEL_26:
            if (v22)
            {
              if ((a5 & 1) == 0)
              {
                SipDialogFork::setBearer(v22, a2, a4, 2u);
              }

              SipPreconditions::handleLocalQoSEstablished(*(a1 + 1536), (v22 + 264));
              if (!v21)
              {
                return;
              }
            }

            else
            {
              v23 = (*(*a1 + 56))(a1);
              (*(*a1 + 16))(a1, v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "More than one fork exists, rejecting QoS for ambiguous bearer", 61);
              *(v23 + 17) = 0;
              (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v23 + 17) = 0;
              if (!v21)
              {
                return;
              }
            }

            v14 = v21;
LABEL_33:
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            return;
          }

LABEL_25:
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          goto LABEL_26;
        }

LABEL_23:
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_24;
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = v16[373];
    v21 = v16[374];
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v29 = 0;
  v30 = 0;
  SipDialog::bestAvailableFork(*(a1 + 240), &v29);
  v12 = v29;
  if (v29)
  {
    v13 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Using fork ", 11);
    *(v13 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v24, v12 + 11);
    (*(*v13 + 56))(v13, &v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " for bearer ", 12);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), a2);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    SipPreconditions::handleLocalQoSEstablished(*(a1 + 1536), &v12[11].__r_.__value_.__l.__data_);
  }

  v14 = v30;
  if (v30)
  {
    goto LABEL_33;
  }
}

void sub_1E4E25F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E25F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1E4E25F80);
  }

  JUMPOUT(0x1E4E25F7CLL);
}

void SipSession::handleLocalQoSEstablished(SipSession *this)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  SipDialog::allForks(*(this + 30), &v17);
  v2 = v17;
  for (i = v18; v2 != i; v2 += 2)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    v16 = 0;
    data = v5[32].__r_.__value_.__l.__data_;
    size = v5[32].__r_.__value_.__l.__size_;
    if (size)
    {
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
      SipOfferAnswer::activeRemoteSdp(data, &v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
    }

    else
    {
      SipOfferAnswer::activeRemoteSdp(data, &v15);
    }

    v8 = *this;
    if (v15)
    {
      v9 = (*(v8 + 64))(this);
      (*(*this + 16))(this, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Fork ", 5);
      *(v9 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v11, v5 + 11);
      (*(*v9 + 56))(v9, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " has remote SDP, setting QoS established", 40);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v14 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      SipPreconditions::handleLocalQoSEstablished(*(this + 192), &v5[11].__r_.__value_.__l.__data_);
    }

    else
    {
      v10 = (*(v8 + 48))(this);
      (*(*this + 16))(this, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Fork ", 5);
      *(v10 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v11, v5 + 11);
      (*(*v10 + 56))(v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " does not contain remote SDP", 28);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v14 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v11[0] = &v17;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v11);
}

void sub_1E4E262D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a10 = &a18;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void SipSession::sendPreconditionEvents(uint64_t a1, const std::string *a2)
{
  if (((*(*a1 + 264))(a1) & 1) == 0)
  {
    v11 = 0;
    *v9 = 0u;
    *__p = 0u;
    v8 = 0u;
    BambiCallPreconditionsSatisfiedEvent::BambiCallPreconditionsSatisfiedEvent(&v8, a2);
    SipSession::fireCallEvent(a1, &v8);
    if ((*(a1 + 1496) & 1) == 0)
    {
      v4 = *(a1 + 240);
      if (v4)
      {
        if ((*(v4 + 2816) & 1) == 0)
        {
          v5 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v5);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Alerting user of incoming call", 30);
          *(v5 + 17) = 0;
          (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v5 + 17) = 0;
          *(a1 + 1496) = 1;
          v6 = 0u;
          *v7 = 0u;
          v12[0] = 0;
          v12[1] = 0;
          BambiCallEvent::BambiCallEvent(&v6, 2, v12);
          *&v6 = &unk_1F5ED0778;
          SipSession::fireCallEvent(a1, &v6);
          *&v6 = &unk_1F5EC4090;
          if (v7[1])
          {
            std::__shared_weak_count::__release_weak(v7[1]);
          }
        }
      }
    }

    *&v8 = &unk_1F5ED0A70;
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    *&v8 = &unk_1F5EC4090;
    if (v9[1])
    {
      std::__shared_weak_count::__release_weak(v9[1]);
    }
  }
}

void sub_1E4E26588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  BambiCallPreconditionsSatisfiedEvent::~BambiCallPreconditionsSatisfiedEvent(&a13);
  _Unwind_Resume(a1);
}

void SipSession::localSdp(SipSession *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 104);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 103);
    if (v7)
    {
      BambiCall::localSdp(v7, a2);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void SipSession::createLocalSdpForFork(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 832);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(a1 + 824);
    if (v9)
    {
      v10 = *a2;
      v11 = a2[1];
      v12[0] = v10;
      v12[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BambiCall::createLocalSdpForFork(v9, v12, a3);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1E4E26718(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipSession::handleLocalPreconditionsSatisfied(uint64_t a1)
{
  v2 = *(a1 + 832);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 824);
      if (v5)
      {
        v6 = *(v5 + 192);
        if (v6)
        {
          SDPSession::enableRTCPBandwidthSpecifiers(v6);
        }

        *(v5 + 495) = 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipSession::handlePreconditionsSatisfiedInFork(uint64_t a1, uint64_t a2)
{
  if (SipPreconditions::preconditionsEnabled(*(a1 + 1536), a2))
  {
    SipTimerContainer::cancelTimer((a1 + 264), "WaitForRingingTimer");
    v4 = 0;
  }

  else
  {
    v4 = SipSession::requireQosBeforeRinging(a1);
  }

  v5 = *(a1 + 240);
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v5 + 2944, a2);
  if (v5 + 2952 == v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      v9 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Preconditions satisfied for session for ", 40);
      *(v9 + 17) = 0;
      ObfuscatedString::ObfuscatedString(block, a2);
      (*(*v9 + 56))(v9, block);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(block[0]);
      }

      SipDialogFork::handlePreconditionsSatisfied(v8);
      if (!v4)
      {
        memset(&v19, 0, sizeof(v19));
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
        }

        else
        {
          v19 = *a2;
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 1174405120;
        v17[2] = ___ZN10SipSession34handlePreconditionsSatisfiedInForkERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
        v17[3] = &__block_descriptor_tmp_375;
        v17[4] = a1;
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v19;
        }

        v12 = *(a1 + 160);
        if (!v12 || (v13 = *(a1 + 152), (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = *(a1 + 168);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        v21 = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
        __p = &unk_1F5ED2980;
        v24 = v13;
        v25 = v15;
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = v17;
        dispatch_async(v16, block);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          v11 = v19.__r_.__value_.__r.__words[0];
          goto LABEL_32;
        }
      }

      goto LABEL_33;
    }
  }

  v10 = (*(*a1 + 48))(a1);
  (*(*a1 + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Preconditions satisfied for unknown fork ", 41);
  *(v10 + 17) = 0;
  ObfuscatedString::ObfuscatedString(block, a2);
  (*(*v10 + 56))(v10, block);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    v11 = block[0];
LABEL_32:
    operator delete(v11);
  }

LABEL_33:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E26BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t SipSession::isLocalQualityOfServiceEstablished(uint64_t a1)
{
  if (*(a1 + 1584) == 1)
  {
    v2 = *(a1 + 1576);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 832);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 824);
      if (v5)
      {
        v2 |= *(v5 + 495);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return v2 & 1;
}

void SipSession::fillCommonRequestHeaders(uint64_t a1@<X0>, SipMessage **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 240);
  v6 = *(v5 + 232);
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = *(v5 + 224);
      if (v9)
      {
        v10 = *(v9 + 248);
        v11 = *(v9 + 256);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          memset(v22 + 8, 0, 64);
          *&v21 = &unk_1F5EBDEF8;
          *(&v21 + 1) = &_bambiDomain;
          LODWORD(v22[0]) = 1073741826;
          v14 = ImsResult::operator<<<char [14]>(&v21, "no user agent");
          ImsResult::ImsResult(a3, v14);
          ImsResult::~ImsResult(&v21);
          if (!v11)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (*(a1 + 841) == 1)
        {
          memset(&__str, 0, sizeof(__str));
          v12 = SipUserAgent::config(v10);
          if (*(v12 + 663) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v12 + 640), *(v12 + 648));
          }

          else
          {
            __str = *(v12 + 640);
          }

          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            std::string::operator=(&__str, &SipPrivacyHeader::kPrivacyId);
          }

          v17 = SipMessage::header<SipPrivacyHeader>(*a2);
          std::string::operator=((v17 + 8), &__str);
          v42 = 0;
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
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          memset(v22, 0, sizeof(v22));
          v21 = 0u;
          SipUri::SipUri(&v21);
          SipUri::makeAnonymous(&v21);
          v18 = SipMessage::header<SipFromHeader>(*a2, 1);
          SipUri::operator=((v18 + 13), &v21);
          SipUri::~SipUri(&v21);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        else if ((*(SipUserAgent::config(v10) + 613) & 1) != 0 || *(a1 + 840) == 1)
        {
          v15 = SipMessage::header<SipPrivacyHeader>(*a2);
          std::string::operator=((v15 + 8), "none");
        }

        if ((*(a1 + 951) & 0x8000000000000000) != 0)
        {
          if (!*(a1 + 936))
          {
            goto LABEL_32;
          }
        }

        else if (!*(a1 + 951))
        {
          goto LABEL_32;
        }

        v42 = 0;
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
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        memset(v22, 0, sizeof(v22));
        v21 = 0u;
        SipUri::SipUri(&v21);
        if (SipUri::fromString(&v21, (a1 + 928)))
        {
          v19 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Updating To Uri to ", 19);
          *(v19 + 17) = 0;
          (*(*v19 + 32))(v19, a1 + 928);
          (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v19 + 17) = 0;
          v20 = SipMessage::header<SipToHeader>(*a2, 1);
          SipUri::operator=((v20 + 13), &v21);
        }

        SipUri::~SipUri(&v21);
LABEL_32:
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *a3 = &unk_1F5EBDEF8;
        *(a3 + 8) = &_bambiDomain;
        *(a3 + 16) = 0;
        if (v11)
        {
LABEL_33:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  memset(v22 + 8, 0, 64);
  *&v21 = &unk_1F5EBDEF8;
  *(&v21 + 1) = &_bambiDomain;
  LODWORD(v22[0]) = 1073741826;
  v13 = ImsResult::operator<<<char [12]>(&v21, "no sipstack");
  ImsResult::ImsResult(a3, v13);
  ImsResult::~ImsResult(&v21);
  if (v8)
  {
    goto LABEL_34;
  }
}

void sub_1E4E2715C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

const void **SipMessage::header<SipPrivacyHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "Privacy", 1);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void SipSession::handleActiveForkChanged(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 832);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 824);
      if (v9)
      {
        v10 = a2[1];
        v11 = *a2;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BambiCall::handleActiveForkChanged(v9, &v11, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4E272EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipSession::sendAck(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, ImsResult *a5@<X8>)
{
  if (*(a1 + 1448) == 1)
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    SipSession::logLazuliMessageSessionSetup(a1, &__p, 0xC8u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ___ZN10SipSession7sendAckENSt3__110shared_ptrI10SipRequestEENS1_I26SipClientInviteTransactionEEb_block_invoke;
  v21[3] = &__block_descriptor_tmp_378;
  v21[4] = a1;
  v10 = *(a1 + 160);
  if (!v10 || (v11 = *(a1 + 152), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = *(a1 + 168);
  __p = MEMORY[0x1E69E9820];
  v23 = 1174405120;
  v24 = ___ZNK3ctu20SharedSynchronizableI19SipSessionInterfaceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v25 = &unk_1F5ED2980;
  v27 = v11;
  v28 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = v21;
  dispatch_async(v14, &__p);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
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

  SipSessionInterface::sendAck(a1, &v19, &v17, a4, a5);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1E4E27534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10SipSession7sendAckENSt3__110shared_ptrI10SipRequestEENS1_I26SipClientInviteTransactionEEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 264))(v1) & 1) != 0 || SipSession::terminating(v1))
  {
    v2 = (*(*v1 + 64))(v1);
    (*(*v1 + 16))(v1, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Session already terminated or terminating, not sending SessionAcknowledged event", 80);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
  }

  else
  {
    v4 = 0u;
    *v5 = 0u;
    v3[0] = 0;
    v3[1] = 0;
    BambiCallEvent::BambiCallEvent(&v4, 30, v3);
    SipSession::fireCallEvent(v1, &v4);
    *&v4 = &unk_1F5EC4090;
    if (v5[1])
    {
      std::__shared_weak_count::__release_weak(v5[1]);
    }
  }
}

void sub_1E4E276E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::getMostRecentRemoteFork(SipSession *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 30);
  v3 = *(this + 31);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v4 + 2944, this + 205);
  if (v4 + 2952 == v5)
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = *(v5 + 64);
  *a2 = *(v5 + 56);
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
LABEL_7:

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4E277B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const char *SipSimpleStateMachine<SipSessionState>::nameForStateId(uint64_t a1, uint64_t a2)
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

void SipSimpleStateMachine<SipSessionState>::handleStateTransition(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(uint64_t a1)
{
  *a1 = &unk_1F5ED1D00;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = &unk_1F5ED1D58;
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

void SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(uint64_t a1)
{
  SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::weak_ptr<LazuliGroupModification>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void SipCallWaitingInfoBody::SipCallWaitingInfoBody(SipCallWaitingInfoBody *this, char a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1F5ED16C0;
  SipCallWaitingInfo::SipCallWaitingInfo((this + 32), a2);
}

void sub_1E4E27BE0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5ED9B90;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipOfferAnswerExchange::empty(SipOfferAnswerExchange *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v1)
  {
    v3 = 0;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_8;
  }

  v5 = *(this + 7);
  v4 = *(this + 8);
  if (!v4)
  {
    v3 = v5 == 0;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_8;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v3 = v5 == 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (v2)
  {
LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v3;
}

void BambiCallTerminationReason::BambiCallTerminationReason(BambiCallTerminationReason *this, const BambiCallTerminationReason *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  v6 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 7) = v6;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v7;
  }

  v8 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 15);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 32);
  *(this + 131) = *(a2 + 131);
  *(this + 32) = v10;
}

void sub_1E4E27D9C(_Unwind_Exception *exception_object)
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

void BambiCallSessionTerminatingEvent::~BambiCallSessionTerminatingEvent(void **this)
{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);

  JUMPOUT(0x1E69235B0);
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ims::analytics::RCSSessionSetupInfo::~RCSSessionSetupInfo(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

const void *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void **std::unique_ptr<ImsPowerAssertion>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ImsPowerAssertion::~ImsPowerAssertion(result);

    JUMPOUT(0x1E69235B0);
  }

  return result;
}

void std::__shared_ptr_emplace<SipSessionTimer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipSession>::__shared_ptr_emplace[abi:ne200100]<ClientConfig const&,std::allocator<SipSession>,0>(void *a1, const ClientConfig *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED1E58;
  SipSession::SipSession((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SipSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionConfirmedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *SipSessionConfirmedState::SipSessionConfirmedState(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v5 = a2;
  v6 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionState::SipSessionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF0990;
  a1[1] = &unk_1F5EF0A38;
  a1[26] = &unk_1F5EF0A68;
  return a1;
}

void sub_1E4E285D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SipSessionSilentHangUpState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionSentByeState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionTerminatedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionRttUpgradeRequestedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionClientInviteState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *SipSessionClientInviteState::SipSessionClientInviteState(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionClientUnconfirmedState::SipSessionClientUnconfirmedState(a1, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  *a1 = &unk_1F5ECD538;
  a1[1] = &unk_1F5ECD5E8;
  a1[26] = &unk_1F5ECD618;
  return a1;
}

void sub_1E4E289A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *SipSessionClientUnconfirmedState::SipSessionClientUnconfirmedState(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v5 = a2;
  v6 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionState::SipSessionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5ECD640;
  a1[1] = &unk_1F5ECD6E8;
  a1[26] = &unk_1F5ECD718;
  return a1;
}

void sub_1E4E28A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SipSessionClientReceivedTryingResponseState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionClientEarlyState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED20D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientEarlyState::~SipSessionClientEarlyState(SipSessionClientEarlyState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientEarlyState::~SipSessionClientEarlyState(SipSessionClientEarlyState *this)
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

void std::__shared_ptr_emplace<SipSessionClientCanceledState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSessionClientCanceledState::SipSessionClientCanceledState(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v5 = a2;
  v6 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionState::SipSessionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5ECD860;
  *(a1 + 8) = &unk_1F5ECD910;
  *(a1 + 208) = &unk_1F5ECD940;
  *(a1 + 272) = 0;
  return a1;
}

void sub_1E4E28DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SipSessionClientWPSCanceledState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionClientWPSNetworkTerminatedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED22E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionServerInviteState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *SipSessionServerUnconfirmedState::SipSessionServerUnconfirmedState(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v5 = a2;
  v6 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionState::SipSessionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EE3FB8;
  a1[1] = &unk_1F5EE4060;
  a1[26] = &unk_1F5EE4090;
  return a1;
}

void sub_1E4E29084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SipSessionServerEarlyState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipSessionServerEarlyState::~SipSessionServerEarlyState(SipSessionServerEarlyState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionServerEarlyState::~SipSessionServerEarlyState(SipSessionServerEarlyState *this)
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

void std::__shared_ptr_emplace<SipSessionServerCanceledState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED24E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipSessionServerTerminateAfterAckState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2588;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2588;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2588;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::startRingingTimer(void)::$_0,std::allocator<SipSession::startRingingTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2608;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2608;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2608;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::startRingbackTimer(void)::$_0,std::allocator<SipSession::startRingbackTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2688;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2688;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2688;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::startPingTimer(void)::$_0,std::allocator<SipSession::startPingTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2708;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2708;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2708;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::handleTimer(std::string const&)::$_0,std::allocator<SipSession::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char **SipMessageEncodingMap::headerPrototype<SipReplacesHeader>(void *a1)
{
  result = SipMessageEncodingMap::headerPrototypeWithName(a1, "Replaces");
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void *std::__shared_ptr_emplace<SDPModel>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SDPModel> const&,std::allocator<SDPModel>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC1C10;
  std::construct_at[abi:ne200100]<SDPModel,std::shared_ptr<SDPModel> const&,SDPModel*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<SDPModel,std::shared_ptr<SDPModel> const&,SDPModel*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SDPModel::SDPModel(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1E4E29FD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2788;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2788;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2788;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::sendInvite(std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2808;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2808;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2808;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::sendLazuliInvite(std::string const&)::$_0,std::allocator<SipSession::sendLazuliInvite(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2888;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2888;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2888;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::startLocalQosTimerMO(void)::$_0,std::allocator<SipSession::startLocalQosTimerMO(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2908;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2908;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2908;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0,std::allocator<SipSession::sendInvite(std::shared_ptr<SipRequest>,std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19SipSessionInterfaceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19SipSessionInterfaceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED29C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED29C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED29C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::schedulePendingInvite(std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2A40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2A40;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2A40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::schedulePendingReinviteForTTY(void)::$_0,std::allocator<SipSession::schedulePendingReinviteForTTY(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2AC0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2AC0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2AC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipSession::handleInviteOrUpdateRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED2B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED2B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0,std::allocator<SipSession::handleResponse(std::shared_ptr<SipResponse const>,std::shared_ptr<SipClientTransaction>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<SipPrackHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SDPModel>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SDPModel> &,std::allocator<SDPModel>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC1C10;
  std::construct_at[abi:ne200100]<SDPModel,std::shared_ptr<SDPModel> &,SDPModel*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<SDPModel,std::shared_ptr<SDPModel> &,SDPModel*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SDPModel::SDPModel(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1E4E2B7C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void __cxx_global_array_dtor_0()
{
  v0 = &byte_1EE2BC4DF;
  v1 = -384;
  v2 = &byte_1EE2BC4DF;
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

uint64_t __cxx_global_var_init_390()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_SipSession_cpp()
{
  v0 = MEMORY[0x1E69E52C0];
  std::string::basic_string[abi:ne200100]<0>(&SipSession::kInviteTypeFakeNetworkBasedCallWaiting, "FakeNetworkBasedCallWaiting");
  __cxa_atexit(v0, &SipSession::kInviteTypeFakeNetworkBasedCallWaiting, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipSession::kInviteTypeAccessNetworkRefresh, "InviteTypeAccessNetworkRefresh");
  __cxa_atexit(v0, SipSession::kInviteTypeAccessNetworkRefresh, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&SipSession::kInviteTypeSessionRefresh, "InviteTypeSessionRefresh");
  __cxa_atexit(v0, &SipSession::kInviteTypeSessionRefresh, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipSession::kUpdateTypePreconditions, "UpdateTypePreconditions");
  __cxa_atexit(v0, SipSession::kUpdateTypePreconditions, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_10, "UpdateTypeSessionRefresh");
  __cxa_atexit(v0, _MergedGlobals_10, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipSession::kUpdateTypeAccessNetworkRefresh, "UpdateTypeAccessNetworkRefresh");
  __cxa_atexit(v0, SipSession::kUpdateTypeAccessNetworkRefresh, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&SipSession::kUpdateTypeEmergencyLocationUpdate, "UpdateTypeEmergencyLocationUpdate");
  __cxa_atexit(v0, &SipSession::kUpdateTypeEmergencyLocationUpdate, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&SipSession::kPublishTypeEmergencyLocation, "PublishTypeEmergencyLocation");
  __cxa_atexit(v0, &SipSession::kPublishTypeEmergencyLocation, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC360, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(&byte_1EE2BC360[24], "ClientInvite");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC390, "ClientReceivedTryingResponse");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC3A8, "ServerInvite");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC3C0, "ClientEarly");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC3D8, "ServerEarly");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC3F0, "Confirmed");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC408, "RttUpgradeRequested");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC420, "ClientCanceled");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC438, "ServerCanceled");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC450, "SentBye");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC468, "ServerTerminateAfterAck");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC480, "SilentHangUp");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC498, "Terminated");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC4B0, "WPSCanceled");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BC4C8, "WPSNetworkTerminated");

  return __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_1E4C3F000);
}

void sub_1E4E2BBA0(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == byte_1EE2BC360)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void XcapDocumentCommDiversion::XcapDocumentCommDiversion(XcapDocumentCommDiversion *this)
{
  v3 = 0;
  v4 = &v3;
  v2 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v3) + 5);
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, &XcapDocumentCommDiversion::kName, v2);
  *(this + 8) = &XcapDocumentCommDiversion::kName;
  *(this + 9) = v2;
  *(this + 80) = 1;
  *this = &unk_1F5ED2D18;
  *(this + 1) = &unk_1F5ED2DB0;
  XcapCDNoReplyTimer::XcapCDNoReplyTimer((this + 88));
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
}

void std::vector<XcapCDRule *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<XcapCDRule *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void XcapDocumentCommDiversion::~XcapDocumentCommDiversion(XcapDocumentCommDiversion *this)
{
  *this = &unk_1F5ED2D18;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5ED2DB0;
  v3 = *(this + 20);
  v4 = *(this + 21);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 20);
  }

  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  bambi::XmlTreeItem::~XmlTreeItem(this + 12);
  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  XcapDocumentCommDiversion::~XcapDocumentCommDiversion(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapDocumentCommDiversion::~XcapDocumentCommDiversion(XcapDocumentCommDiversion *this)
{
  XcapDocumentCommDiversion::~XcapDocumentCommDiversion((this - 8));
}

{
  XcapDocumentCommDiversion::~XcapDocumentCommDiversion((this - 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapDocumentCommDiversion::createChild(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = qword_1EE2BD140;
  if (byte_1EE2BD14F >= 0)
  {
    v5 = byte_1EE2BD14F;
  }

  if (size == v5)
  {
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v7 = byte_1EE2BD14F >= 0 ? &XcapDocumentCommDiversion::kName : XcapDocumentCommDiversion::kName;
    if (!memcmp(v6, v7, size))
    {
      v9 = a1;
      if ((v3 & 0x80) == 0)
      {
        return v9;
      }

      goto LABEL_44;
    }
  }

  if (size == 4)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    if (v3 >= 0)
    {
      p_p = &__p;
    }

    if (LODWORD(p_p->__r_.__value_.__l.__data_) == *"rule")
    {
      operator new();
    }

    goto LABEL_33;
  }

  if (size == 12)
  {
    if (v3 >= 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    v11 = bswap64(v10->__r_.__value_.__r.__words[0]);
    v12 = bswap64(*"NoReplyTimer");
    if (v11 == v12 && (v11 = bswap32(v10->__r_.__value_.__r.__words[1]), v12 = bswap32(*"imer"), v11 == v12))
    {
      v13 = 0;
    }

    else if (v11 < v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1 + 88;
    }

    if ((v3 & 0x80) == 0)
    {
      return v9;
    }

LABEL_44:
    operator delete(__p.__r_.__value_.__l.__data_);
    return v9;
  }

  if (size != 7)
  {
LABEL_33:
    v9 = 0;
    if ((v3 & 0x80) == 0)
    {
      return v9;
    }

    goto LABEL_44;
  }

  v8 = __p.__r_.__value_.__r.__words[0];
  if (v3 >= 0)
  {
    v8 = &__p;
  }

  if (LODWORD(v8->__r_.__value_.__l.__data_) ^ 0x656C7572 | *(v8->__r_.__value_.__r.__words + 3) ^ 0x74657365)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  if ((v3 & 0x80) != 0)
  {
    goto LABEL_44;
  }

  return v9;
}

void sub_1E4E2C18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1E69235B0](v15, 0x10B3C405FE64821);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XcapDocumentCommDiversion::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = qword_1EE2BD140;
  if (byte_1EE2BD14F >= 0)
  {
    v8 = byte_1EE2BD14F;
  }

  if (size == v8)
  {
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = byte_1EE2BD14F >= 0 ? &XcapDocumentCommDiversion::kName : XcapDocumentCommDiversion::kName;
    if (!memcmp(v9, v10, size))
    {
      goto LABEL_36;
    }
  }

  switch(size)
  {
    case 4uLL:
      p_p = __p.__r_.__value_.__r.__words[0];
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (LODWORD(p_p->__r_.__value_.__l.__data_) == *"rule")
      {
        goto LABEL_36;
      }

      break;
    case 0xCuLL:
      v15 = __p.__r_.__value_.__r.__words[0];
      if (v6 >= 0)
      {
        v15 = &__p;
      }

      v16 = v15->__r_.__value_.__r.__words[0];
      v17 = LODWORD(v15->__r_.__value_.__r.__words[1]);
      if (v16 == *"NoReplyTimer" && v17 == *"imer")
      {
        goto LABEL_36;
      }

      break;
    case 7uLL:
      v11 = __p.__r_.__value_.__r.__words[0];
      if (v6 >= 0)
      {
        v11 = &__p;
      }

      data = v11->__r_.__value_.__l.__data_;
      v13 = *(v11->__r_.__value_.__r.__words + 3);
      if (data != 1701606770 || v13 != 1952805733)
      {
        break;
      }

LABEL_36:
      bambi::XmlParserItem::parseChild(a1, a2, a3);
      LOBYTE(v6) = *(&__p.__r_.__value_.__s + 23);
      break;
    default:
      break;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E2C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapDocumentCommDiversion::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E4E2C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::ostringstream::~ostringstream(&a30);
  v32 = *(v30 + 8);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCommDiversion::asString@<X0>(XcapDocumentCommDiversion *this@<X0>, _BYTE *a2@<X8>)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  *__p = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "CDIV Document: ", 15);
  v5 = MEMORY[0x1E6923320](v4, *(this + 38) != 0);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", Rules: ", 9);
  v7 = MEMORY[0x1E6923370](v6, (*(this + 21) - *(this + 20)) >> 3);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v14);
  std::ostream::put();
  std::ostream::flush();
  v10 = *(this + 20);
  for (i = *(this + 21); v10 != i; ++v10)
  {
    XcapCDRule::asString(*v10, &v14);
    if ((v16 & 0x80u) == 0)
    {
      locale = &v14;
    }

    else
    {
      locale = v14.__locale_;
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v15;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, locale, v12);
    if (v16 < 0)
    {
      operator delete(v14.__locale_);
    }
  }

  std::ostringstream::str[abi:ne200100](&v17, a2);
  *&v17 = *MEMORY[0x1E69E54E8];
  *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v22);
}

void sub_1E4E2CAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::locale::~locale(&a10);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCommDiversion::findRuleById(uint64_t *a1, uint64_t *a2, const void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *v5;
      if (*(*v5 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 64), *(v6 + 72));
      }

      else
      {
        __p = *(v6 + 64);
      }

      v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v9 = *(a3 + 23);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = a3[1];
      }

      if (size == v9)
      {
        break;
      }

      v13 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v13)
      {
        return v6;
      }

      if (++v5 == a2)
      {
        return 0;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    v13 = memcmp(p_p, v12, size) == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  return 0;
}

uint64_t XcapDocumentCommDiversion::findRuleForCondition(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 160);
  v4 = *(a1 + 168);
  if (v3 == v4)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = *v3;
    v10 = *(*v3 + 88);
    v9 = *(*v3 + 96);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10 && *(v10 + 64) == a2 && *(v10 + 66) == a3)
    {
      v7 = v8;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    ++v3;
  }

  while (v3 != v4);
  return v7;
}

void *XcapDocumentCommDiversion::deleteRule(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[20];
    v4 = result[21];
    if (v3 != v4)
    {
      v5 = (v3 + 1);
      while (*v3 != a2)
      {
        ++v3;
        v5 += 8;
        if (v3 == v4)
        {
          return result;
        }
      }

      result = (*(*a2 + 8))(a2);
      v6 = v2[21];
      v7 = v6 - v5;
      if (v6 != v5)
      {
        result = memmove(v5 - 8, v5, v6 - v5);
      }

      v2[21] = &v5[v7 - 8];
    }
  }

  return result;
}

void XcapDocumentCommDiversion::getItemForPath(uint64_t a1@<X0>, std::string **a2@<X1>, std::string *a3@<X8>)
{
  v5 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= 1)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, 0);
    return;
  }

  memset(&v25, 0, sizeof(v25));
  XcapNs::stripXcapNs(v5, &v25);
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (size != 7)
  {
    goto LABEL_40;
  }

  v8 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
  data = v8->__r_.__value_.__l.__data_;
  v10 = *(v8->__r_.__value_.__r.__words + 3);
  if (data != 1701606770 || v10 != 1952805733)
  {
    goto LABEL_40;
  }

  memset(v24, 0, sizeof(v24));
  if (ims::tokenize(*a2 + 1, v24, 0x22u) == 3)
  {
    memset(&v23, 0, sizeof(v23));
    if (*(v24[0] + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(v24[0] + 24), *(v24[0] + 32));
    }

    else
    {
      v23 = *(v24[0] + 24);
    }

    RuleById = XcapDocumentCommDiversion::findRuleById(*(a1 + 160), *(a1 + 168), &v23.__r_.__value_.__l.__data_);
    v13 = RuleById;
    if (RuleById)
    {
      v14 = *a2;
      if (a2[1] - *a2 == 48)
      {
        bambi::XmlTreeItem::encode((RuleById + 8), 1, 0, a3);
LABEL_23:
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v23.__r_.__value_.__r.__words[0] = v24;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
        goto LABEL_41;
      }

      memset(&__p, 0, sizeof(__p));
      XcapNs::stripXcapNs(&v14[2], &__p);
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      if (v15 == 10)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        v17 = p_p->__r_.__value_.__r.__words[0];
        v18 = LOWORD(p_p->__r_.__value_.__r.__words[1]);
        if (v17 == *"conditions" && v18 == *"ns")
        {
          v20 = *(v13 + 88);
          v21 = *(v13 + 96);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          bambi::XmlTreeItem::encode((v20 + 8), 1, 0, a3);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_23;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  v23.__r_.__value_.__r.__words[0] = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
LABEL_40:
  std::string::basic_string[abi:ne200100]<0>(a3, 0);
LABEL_41:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E2D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (*(v24 - 33) < 0)
  {
    operator delete(*(v24 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCommDiversion::setItemForPath(uint64_t a1, std::string **a2, bambi::XmlParser *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 0;
  }

  if (v5 - v4 == 24)
  {
    memset(&v39, 0, sizeof(v39));
    XcapNs::stripXcapNs(v4, &v39);
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    if (size == 12)
    {
      v8 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v9 = v8->__r_.__value_.__r.__words[0];
      v10 = v8->__r_.__value_.__r.__words[1];
      if (v9 == 0x54796C7065526F4ELL && v10 == 1919249769)
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        XcapCDNoReplyTimer::XcapCDNoReplyTimer(&v32);
        if (bambi::XmlParser::parseXml(a3, &v32, v12, v13))
        {
          *(a1 + 152) = v36;
          bambi::XmlTreeItem::~XmlTreeItem(&v32 + 1);
          v21 = 1;
          goto LABEL_54;
        }

        bambi::XmlTreeItem::~XmlTreeItem(&v32 + 1);
      }
    }
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
    XcapNs::stripXcapNs(v4, &v39);
    v15 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v39.__r_.__value_.__l.__size_;
    }

    if (v15 == 7)
    {
      v16 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      data = v16->__r_.__value_.__l.__data_;
      v18 = *(v16->__r_.__value_.__r.__words + 3);
      if (data == 1701606770 && v18 == 1952805733)
      {
        memset(v38, 0, sizeof(v38));
        if (ims::tokenize(*a2 + 1, v38, 0x22u) == 3)
        {
          memset(&v37, 0, sizeof(v37));
          if (*(v38[0] + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v37, *(v38[0] + 24), *(v38[0] + 32));
          }

          else
          {
            v37 = *(v38[0] + 24);
          }

          XcapDocumentCommDiversion::findRuleById(*(a1 + 160), *(a1 + 168), &v37.__r_.__value_.__l.__data_);
          v20 = *a2;
          if (a2[1] - *a2 == 48)
          {
            bzero(&v32, 0x208uLL);
            XcapCDRule::XcapCDRule(&v32);
          }

          memset(&__p, 0, sizeof(__p));
          XcapNs::stripXcapNs(&v20[2], &__p);
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          if (v22 == 10)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            v25 = p_p->__r_.__value_.__r.__words[0];
            v26 = LOWORD(p_p->__r_.__value_.__r.__words[1]);
            if (v25 == *"conditions" && v26 == *"ns")
            {
              v36 = 0;
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              XcapCDCondition::XcapCDCondition(&v32);
              if (bambi::XmlParser::parseXml(a3, &v32, v28, v29))
              {
                _ZNSt3__115allocate_sharedB8ne200100I15XcapCDConditionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
              }

              bambi::XmlTreeItem::~XmlTreeItem(&v32 + 1);
              v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }
          }

          if (v23 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }
        }

        *&v32 = v38;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
      }
    }
  }

  v21 = 0;
LABEL_54:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_1E4E2D494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19)
{
  bambi::XmlTreeItem::~XmlTreeItem(&a19);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
  }

  a18 = v19 - 104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
  }

  _Unwind_Resume(a1);
}

void XcapCDRule::~XcapCDRule(XcapCDRule *this)
{
  *this = &unk_1F5EDD5F8;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EDD670;
  SipUri::~SipUri((this + 112));
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
  *this = &unk_1F5EDD5F8;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EDD670;
  SipUri::~SipUri((this + 112));
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
  *this = &unk_1F5EDD5F8;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EDD670;
  SipUri::~SipUri((this + 112));
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

void sub_1E4E2D664(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E2D998(_Unwind_Exception *a1)
{
  *(v1 + 112) = v4;
  v7 = *v3;
  if (*v3)
  {
    *(v1 + 168) = v7;
    operator delete(v7);
  }

  bambi::XmlTreeItem::~XmlTreeItem((v1 + 96));
  bambi::XmlTreeItem::~XmlTreeItem(v2);
  MEMORY[0x1E69235B0](v1, v5);
  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceI15XcapCDConditionNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ED2EB8;
  XcapCDCondition::XcapCDCondition((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<XcapCDCondition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED2EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_pointer<XcapCDCondition *,std::shared_ptr<XcapCDCondition>::__shared_ptr_default_delete<XcapCDCondition,XcapCDCondition>,std::allocator<XcapCDCondition>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCDCondition *,std::shared_ptr<XcapCDCondition>::__shared_ptr_default_delete<XcapCDCondition,XcapCDCondition>,std::allocator<XcapCDCondition>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCDCondition *,std::shared_ptr<XcapCDCondition>::__shared_ptr_default_delete<XcapCDCondition,XcapCDCondition>,std::allocator<XcapCDCondition>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_XcapDocumentCommDiversion_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&XcapDocumentCommDiversion::kName, "communication-diversion");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &XcapDocumentCommDiversion::kName, &dword_1E4C3F000);
}

void RTCPReceiverReport::packetize(RTCPReceiverReport *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::resize(a2, 6uLL);
  begin = a2->__begin_;
  *begin = bswap32(*this);
  begin[1] = *(this + 2) | (*(this + 4) << 24);
  begin[2] = bswap32(*(this + 3));
  begin[3] = bswap32(*(this + 4));
  begin[4] = bswap32(*(this + 5));
  begin[5] = bswap32(*(this + 6));
}

void sub_1E4E2DD08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void std::vector<RTCPReceiverReport>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x924924924924924)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPReceiverReport>>(a1, v11);
    }

    v12 = 28 * v8;
    v13 = *a2;
    *(v12 + 12) = *(a2 + 12);
    *v12 = v13;
    v7 = 28 * v8 + 28;
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
    *(v5 + 12) = *(a2 + 12);
    *v5 = v6;
    v7 = v5 + 28;
  }

  *(a1 + 8) = v7;
}

void RTCPReceiverReports::packetize(RTCPReceiverReports *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v6[0] = *v2;
      *(v6 + 12) = *(v2 + 12);
      memset(&__p, 0, sizeof(__p));
      RTCPReceiverReport::packetize(v6, &__p);
      std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      v2 = (v2 + 28);
    }

    while (v2 != v3);
  }
}

void sub_1E4E2DF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPReceiverReports::toStream(unsigned int **this, ImsOutStream *a2)
{
  v3 = *this;
  v4 = this[1];
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = *(v3 + 4);
    v8 = v3[2];
    v7 = v3[3];
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[6];
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " SSRC: ", 7);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v5);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Fraction lost: ", 16);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923340](*(a2 + 1), v6);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Packets lost: ", 15);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v8);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Max Sequence Number: ", 22);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v7);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Jitter: ", 9);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v9);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Last SR: ", 10);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v10);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Delay since last SR: ", 22);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), v11);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    v3 += 7;
  }

  return a2;
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPReceiverReport>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void SipSecurityClientHeader::~SipSecurityClientHeader(SipSecurityClientHeader *this)
{
  SipPolymorphicVectorHeader<SipSecurityMechanism>::~SipPolymorphicVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::vector<unsigned int>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void SipTransportLayer::State::~State(void **this)
{
  *this = &unk_1F5ED3398;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED3398;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipTransportLayer::State::logStr(SipTransportLayer::State *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E2E6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void SipTransportLayer::IncomingMessageList::clear(SipTransportLayer::IncomingMessageList *this)
{
  std::__list_imp<unsigned long long>::clear(this + 4);
  v2 = *this;
  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    PowerAssertionLock::deinitialize(v2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E4E2E7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::IncomingMessageList::add(SipTransportLayer::IncomingMessageList *this, IncomingSipMessage *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      v5 = *(this + 2);
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

  if (!*(this + 6))
  {
    v6 = *this;
    if (*this)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      isWifi = ims::AccessNetwork::isWifi((v5 + 3432));
      v9 = *(a2 + 64);
      v10 = ims::AccessNetwork::isWifi((v5 + 3432));
      SipTransportLayer::assertionStringForCategory(__p, v9, v10);
      v15 = __p;
      v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, __p);
      AssertionCounter::initialize(*(v11 + 56), 300.0, !isWifi, v14);
      ImsResult::~ImsResult(v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  operator new();
}

void sub_1E4E2E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::assertionStringForCategory(uint64_t a1, int a2, int a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  if (a3)
  {
    v4 = ".wifi";
  }

  else
  {
    v4 = ".cell";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v4);
  if ((a2 - 1) < 3)
  {
    v5 = off_1E876A110[(a2 - 1)];
  }

  std::operator+<char>();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4E2E9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransportLayer::messageEncoding(SipTransportLayer *this)
{
  v2 = *(this + 2);
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
  v5 = *(this + 1);
  if (v5)
  {
    v7 = *(v5 + 248);
    v6 = *(v5 + 256);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v7)
      {
        v8 = v7 + 384;
      }

      else
      {
        v8 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else if (v7)
    {
      v8 = v7 + 384;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v8;
}

void SipTransportLayer::dumpMessage(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v2 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  if (!xmmword_1ECFD4718)
  {
    ctu::XpcJetsamAssertion::create_default_global(&v14, v2);
    v3 = v14;
    v14 = 0uLL;
    v4 = *(&xmmword_1ECFD4718 + 1);
    xmmword_1ECFD4718 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }
    }
  }

  v5 = *(&xmmword_1ECFD4718 + 1);
  if (*(&xmmword_1ECFD4718 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1ECFD4718 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(&v22, "sipDump");
  ctu::XpcJetsamAssertion::createActivity();
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        memset(&v21, 0, sizeof(v21));
        ims::logger(v7);
        std::string::basic_string[abi:ne200100]<0>(&v14, "sip.dump");
        std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v17, (v9 + 200));
        ImsLogger::getFacilityWithClientConfig(v17, &v14, &v21);
        if (v20 == 1 && v19 < 0)
        {
          operator delete(v18);
        }

        if (SBYTE7(v15) < 0)
        {
          operator delete(v14);
        }

        v11 = ims::logger(v10);
        v12 = ImsLogger::facilityWithName(v11, &v21, 0);
        v13 = v11 + 96;
        if (v12)
        {
          v13 = v12;
        }

        if (*(v13 + 80) >= 7)
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          ImsStringOutStream::ImsStringOutStream(&v14);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1E4E2F418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a36 == 1 && a35)
  {
    (*(*a35 + 8))(a35);
  }

  if (a42 == 1 && a41)
  {
    (*(*a41 + 8))(a41);
  }

  if (a48 == 1 && a47)
  {
    (*(*a47 + 8))(a47);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  *(v65 - 240) = &unk_1F5EDED18;
  if (*(v65 - 224) == 1)
  {
    v67 = *(v65 - 232);
    if (v67)
    {
      (*(*v67 + 8))(v67);
    }
  }

  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  if (*(v65 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v65 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1E4E2F764()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1E4E2F750);
}

void SipTransportLayer::SipTransportLayer(uint64_t a1, std::string::size_type *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    __str.__r_.__value_.__l.__size_ = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    __str.__r_.__value_.__l.__size_ = 0;
  }

  __str.__r_.__value_.__r.__words[0] = v4;
  SipStackLayer::SipStackLayer(a1, &__str);
  if (__str.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
  }

  *a1 = &unk_1F5ED33E0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 24) = &unk_1F5ED34D0;
  *(a1 + 32) = &unk_1F5ED34F8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.tport");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v27, (*a2 + 200));
  ImsLogContainer::ImsLogContainer(a1 + 40, &__str, v27);
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 176) = &unk_1F5EBEEC0;
  *(a1 + 184) = &unk_1F5ED3520;
  std::string::basic_string[abi:ne200100]<0>(v25, "sip.tport");
  v6 = *a2;
  v21 = *(*a2 + 200);
  v22 = *(v6 + 208);
  if (*(v6 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *(v6 + 216), *(v6 + 224));
  }

  else
  {
    v23 = *(v6 + 216);
  }

  v24 = *(v6 + 240);
  ims::getQueue(&object);
  ClientConfig::getLogTag(&v21, &v32);
  if ((v26 & 0x80u) == 0)
  {
    v7 = v25;
  }

  else
  {
    v7 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v25[1];
  }

  v9 = std::string::insert(&v32, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v12 = object;
  *(a1 + 216) = object;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 224) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 232), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 192) = &unk_1F5ED3548;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  *a1 = &unk_1F5ED2FB8;
  *(a1 + 24) = &unk_1F5ED30C0;
  *(a1 + 32) = &unk_1F5ED30E8;
  *(a1 + 40) = &unk_1F5ED3110;
  *(a1 + 176) = &unk_1F5ED3170;
  *(a1 + 184) = &unk_1F5ED31A0;
  *(a1 + 192) = &unk_1F5ED31C8;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0;
  *(a1 + 296) = &unk_1F5ED3398;
  if (byte_1EE2BC567 < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 304), xmmword_1EE2BC550, *(&xmmword_1EE2BC550 + 1));
  }

  else
  {
    *(a1 + 304) = xmmword_1EE2BC550;
    *(a1 + 320) = unk_1EE2BC560;
  }

  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 328) = 0u;
  SipUri::SipUri((a1 + 376));
  *(a1 + 784) = &unk_1F5EF5460;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = &unk_1F5EF5460;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 896));
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1224) = 1065353216;
  SipUri::SipUri((a1 + 1232));
  SipUri::SipUri((a1 + 1640));
  *(a1 + 2128) = 0;
  v13 = 0uLL;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2140) = 0;
  *(a1 + 2132) = 0;
  v14 = *(a1 + 1112);
  *(a1 + 1104) = 0u;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    v13 = 0uLL;
  }

  v15 = *(a1 + 1128);
  *(a1 + 1120) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(a1 + 1144);
  v17 = 0uLL;
  *(a1 + 1136) = 0u;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    v17 = 0uLL;
  }

  v18 = *(a1 + 1160);
  *(a1 + 1152) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *(a1 + 1064) = 0;
  *(a1 + 1024) = a1 + 176;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.tport");
  v19 = *a2;
  std::string::operator=((a1 + 944), &__str);
  v20 = *(v19 + 200);
  *(a1 + 976) = *(v19 + 208);
  *(a1 + 968) = v20;
  std::string::operator=((a1 + 984), (v19 + 216));
  *(a1 + 1008) = *(v19 + 240);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1E4E30054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, SipRouteSet *a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, dispatch_object_t object, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*v49);
  std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*v48);
  MEMORY[0x1E69225A0](v50 + 29);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v50 + 25);
  ImsLogContainer::~ImsLogContainer(a17);
  *v50 = &unk_1F5ED34B0;
  v52 = v50[2];
  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  _Unwind_Resume(a1);
}

void SipTransportLayer::~SipTransportLayer(SipTransportLayer *this)
{
  *this = &unk_1F5ED2FB8;
  *(this + 3) = &unk_1F5ED30C0;
  *(this + 4) = &unk_1F5ED30E8;
  *(this + 5) = &unk_1F5ED3110;
  *(this + 22) = &unk_1F5ED3170;
  *(this + 23) = &unk_1F5ED31A0;
  *(this + 24) = &unk_1F5ED31C8;
  SipTransportLayer::dropDeferredIncomingMessages(this);
  SipTransportLayer::closeTransports(this);
  v2 = *(this + 1095);
  if (v2 < 0)
  {
    v2 = *(this + 135);
  }

  if (v2)
  {
    if (!NetworkInterfaceMonotorManager::_instance)
    {
      operator new();
    }

    NetworkInterfaceMonotorManager::releaseMonitor(NetworkInterfaceMonotorManager::_instance, this + 134);
  }

  v3 = *(this + 148);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 137);
  if (v4)
  {
    ImsNetworkReachabilityMonitor::~ImsNetworkReachabilityMonitor(v4);
    MEMORY[0x1E69235B0]();
  }

  v5 = *(this + 257);
  if (v5)
  {
    SipTransportLayer::IncomingMessageList::clear(*(this + 257));
    std::__list_imp<unsigned long long>::clear(v5 + 4);
    v6 = v5[3];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = v5[1];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    MEMORY[0x1E69235B0](v5, 0x1020C405B906368);
  }

  v8 = *(this + 147);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::deque<SipUri>::~deque[abi:ne200100](this + 260);
  v9 = *(this + 259);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipUri::~SipUri((this + 1640));
  SipUri::~SipUri((this + 1232));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 1192);
  v10 = *(this + 145);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 143);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 141);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 139);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 1095) < 0)
  {
    operator delete(*(this + 134));
  }

  SipTimerContainer::~SipTimerContainer((this + 896));
  SipRouteSet::~SipRouteSet((this + 840));
  SipRouteSet::~SipRouteSet((this + 784));
  SipUri::~SipUri((this + 376));
  v14 = *(this + 46);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(this + 44);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 42);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *(this + 37) = &unk_1F5ED3398;
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*(this + 34));
  std::__tree<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipTransportLayer::DropMessageInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipTransportLayer::DropMessageInfo>>>::destroy(*(this + 31));
  MEMORY[0x1E69225A0](this + 232);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 25);
  *(this + 5) = &unk_1F5ED7318;
  if (*(this + 120) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F5ED34B0;
  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  SipTransportLayer::~SipTransportLayer(this);

  JUMPOUT(0x1E69235B0);
}

void *SipTransportLayer::dropDeferredIncomingMessages(SipTransportLayer *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  __p = 0;
  v20 = 0;
  std::list<IncomingSipMessage *>::list(&v18, *(this + 257) + 32);
  v2 = v20;
  if (v20)
  {
    while (1)
    {
      v3 = __p;
      v4 = *(__p + 1);
      v5 = *(__p + 2);
      v6 = *__p;
      *(v6 + 8) = v4;
      *v4 = v6;
      v20 = v2 - 1;
      operator delete(v3);
      v7 = *(this + 29);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      if (v5)
      {
        goto LABEL_16;
      }

LABEL_17:
      v2 = v20;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    (*(*this + 224))(v16, this);
    if (v17 >= 0)
    {
      v8 = v16;
    }

    else
    {
      v8 = v16[0];
    }

    v9 = *v5;
    v10 = *(v5 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 40))(v14);
    v11 = v14;
    if (v15 < 0)
    {
      v11 = v14[0];
    }

    *buf = 141558531;
    v22 = 1752392040;
    v23 = 2081;
    v24 = v8;
    v25 = 2080;
    v26 = v11;
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sdropping deferred %s", buf, 0x20u);
    if (v15 < 0)
    {
      operator delete(v14[0]);
      if (!v10)
      {
LABEL_13:
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

LABEL_16:
        IncomingSipMessage::~IncomingSipMessage(v5);
        MEMORY[0x1E69235B0]();
        goto LABEL_17;
      }
    }

    else if (!v10)
    {
      goto LABEL_13;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_13;
  }

LABEL_21:
  SipTransportLayer::IncomingMessageList::clear(*(this + 257));
  result = std::__list_imp<unsigned long long>::clear(&v18);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void SipTransportLayer::closeTransports(SipTransportLayer *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 139);
  v3 = 0uLL;
  *(this + 69) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  v4 = *(this + 141);
  *(this + 70) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 143);
  v6 = 0uLL;
  *(this + 71) = 0u;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v6 = 0uLL;
  }

  v7 = *(this + 145);
  *(this + 72) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(this + 1168) = 0;
  SipTransportLayer::setInterface(this, 0);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 1);
      if (v11)
      {
        v12 = *(this + 29);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 224))(__p, this);
          v13 = v19 >= 0 ? __p : __p[0];
          *buf = 141558275;
          v25 = 1752392040;
          v26 = 2081;
          v27 = v13;
          _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sForce transactions to error out as transport layer is going away.", buf, 0x16u);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        v19 = 0;
        v18 = 1073741844;
        v14 = *(v11 + 264);
        v15 = *(v11 + 272);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v14)
        {
          SipTransactionLayer::errorOutAllTransactions(v14, __p);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        ImsResult::~ImsResult(__p);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void non-virtual thunk toSipTransportLayer::~SipTransportLayer(SipTransportLayer *this)
{
  SipTransportLayer::~SipTransportLayer((this - 24));
}

{
  SipTransportLayer::~SipTransportLayer((this - 32));
}

{
  SipTransportLayer::~SipTransportLayer((this - 40));
}

{
  SipTransportLayer::~SipTransportLayer((this - 176));
}

{
  SipTransportLayer::~SipTransportLayer((this - 184));
}

{
  SipTransportLayer::~SipTransportLayer((this - 192));
}

{
  SipTransportLayer::~SipTransportLayer((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransportLayer::~SipTransportLayer((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransportLayer::~SipTransportLayer((this - 40));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransportLayer::~SipTransportLayer((this - 176));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransportLayer::~SipTransportLayer((this - 184));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransportLayer::~SipTransportLayer((this - 192));

  JUMPOUT(0x1E69235B0);
}

void SipTransportLayer::setInterface(SipTransportLayer *this, NetworkInterface *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 147))
  {
    v4 = *(this + 29);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 224))(__p, this);
      v5 = v14 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v5;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUpdating old interface", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *(this + 148);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 148) = *(this + 147);
  }

  else if (a2)
  {
    v7 = *(this + 29);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 224))(__p, this);
      v8 = v14 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v8;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInitializing old interface", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = *(this + 148);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    operator new();
  }

  *(this + 147) = a2;
  if (*(this + 152))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(this + 1192, *(this + 151));
    *(this + 151) = 0;
    v10 = *(this + 150);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        *(*(this + 149) + 8 * i) = 0;
      }
    }

    *(this + 152) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::setNextInterfaceAddress(SipTransportLayer *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(this + 147))
  {
    v3 = *(this + 29);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    (*(*this + 224))(&__p, this);
    if (v17 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = p_p;
    v5 = "#E %{private, mask.hash}sUninitialized NetworkInterface: can't set next interface";
    goto LABEL_17;
  }

  if (SipUri::isValidUri((this + 376)))
  {
    SipHost::ipAddress((this + 1240), &__p);
    v2 = (*(*__p + 88))(__p);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v2)
    {
      SipHost::ipAddress((this + 1240), &v18);
      IpAddress::asString(buf);
    }

    memset(buf, 0, sizeof(buf));
    if (!NetworkInterface::allAddresses(*(this + 147), buf, 3, 1))
    {
      v11 = *(this + 29);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        (*(*this + 224))(&__p, this);
        v12 = v17 >= 0 ? &__p : __p;
        v18 = 141558275;
        v19 = 1752392040;
        v20 = 2081;
        v21 = v12;
        _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sUnable to get addresses on current interface", &v18, 0x16u);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_38;
    }

    v7 = *buf;
    v8 = *&buf[8];
    if (*buf == *&buf[8])
    {
      if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_ERROR))
      {
        (*(*this + 224))(&v18, this);
        NetworkInterface::logStr(*(this + 147));
      }

      goto LABEL_38;
    }

    if (*&buf[8] - *buf == 16)
    {
      v9 = **buf;
      SipHost::ipAddress((this + 1240), &__p);
      v10 = (*(*v9 + 104))(v9, &__p, 0);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v10)
      {
        if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_ERROR))
        {
          (*(*this + 224))(&v18, this);
          NetworkInterface::logStr(*(this + 147));
        }

LABEL_38:
        __p = buf;
        std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
        goto LABEL_39;
      }

      v7 = *buf;
      v8 = *&buf[8];
    }

    if (v7 != v8)
    {
      v13 = *v7;
      IpAddress::asString(&__p);
    }

    goto LABEL_38;
  }

  v3 = *(this + 29);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 224))(&__p, this);
    if (v17 >= 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v6;
    v5 = "#E %{private, mask.hash}sInvalid proxy URI: can't set next interface";
LABEL_17:
    _os_log_error_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_39:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4E31FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a22 = v35 - 128;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

std::string *SipTransportLayer::setState(os_log_t *this, const SipTransportLayer::State *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ImsUuid::operator==(a2, (this + 37));
  if ((result & 1) == 0)
  {
    if (os_log_type_enabled(this[29], OS_LOG_TYPE_DEFAULT))
    {
      ((*this)[28].isa)(&v7, this);
      SipTransportLayer::State::logStr(&v6);
    }

    result = std::string::operator=((this + 38), (a2 + 8));
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4E3229C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

std::string *SipTransportLayer::initialize(SipTransportLayer *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 29);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(__p, this);
    v3 = v20 >= 0 ? __p : *__p;
    *v13 = 141558275;
    *&v13[4] = 1752392040;
    v14 = 2081;
    v15 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInitializing TransportLayer", v13, 0x16u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(*__p);
    }
  }

  *(this + 512) = 0;
  v4 = *(this + 2);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 1);
      if (v7)
      {
        SipUri::operator=((this + 1232), v7 + 1752);
        if (ims::AccessNetwork::isWifi((v7 + 3432)))
        {
          if (!*(this + 533) && (*(this + 2141) != 1 || (*(this + 2140) & 1) == 0))
          {
            *(this + 533) = *(v7 + 2184);
            v8 = *(this + 29);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(v13, this);
              if (v16 >= 0)
              {
                v9 = v13;
              }

              else
              {
                v9 = *v13;
              }

              v10 = *(this + 533);
              *__p = 141558531;
              *&__p[4] = 1752392040;
              v18 = 2081;
              v19 = v9;
              v20 = 1024;
              v21 = v10;
              _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReset keepalive interval delta to %u for WiFi network", __p, 0x1Cu);
              if (v16 < 0)
              {
                operator delete(*v13);
              }
            }
          }
        }

        else
        {
          *(this + 534) = 0;
          if (*(this + 2141) == 1)
          {
            *(this + 2141) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  result = SipTransportLayer::setState(this, &unk_1EE2BC548);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *SipTransportLayer::deinitialize(SipTransportLayer *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 29);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 224))(__p, this);
    v3 = v7 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v9 = 1752392040;
    v10 = 2081;
    v11 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sTearing down TransportLayer", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipTransportLayer::dropDeferredIncomingMessages(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "deinitialization");
  SipTransportLayer::resetTransportErrors(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  SipTransportLayer::cancelTransportInit(this);
  SipTransportLayer::closeTransports(this);
  result = SipTransportLayer::setState(this, &unk_1EE2BC528);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4E326A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::resetTransportErrors(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 232);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 224))(__p, a1);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 141558531;
    v11 = 1752392040;
    v12 = 2081;
    v13 = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresetting transport errors on %s", buf, 0x20u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 2048) = 0;
  v7 = *MEMORY[0x1E69E9840];
}