void SipDialog::sipSession(SipDialog *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 344);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 343);
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *a2 = v9;
      a2[1] = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
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

void SipDialog::performBlockOnForks(void *a1, uint64_t a2)
{
  if (a1[373])
  {
    v4 = a1[374];
    v13 = a1[373];
    v14 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a2 + 16))(a2, &v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v5 = a1[368];
  v6 = a1 + 369;
  if (v5 != v6)
  {
    do
    {
      v7 = v5[8];
      v11 = v5[7];
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(a2 + 16))(a2, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }
}

void sub_1E5019B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::allForks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2944);
  v3 = (a1 + 2952);
  if (v2 != (a1 + 2952))
  {
    do
    {
      std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](a2, (v2 + 7));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void SipDialog::terminateForkWithBye(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a1[29];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[28];
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v11 = (*(a1[2] + 64))(a1 + 2);
          (*(a1[2] + 16))(a1 + 2, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "sending BYE to fork ", 20);
          *(v11 + 17) = 0;
          ObfuscatedString::ObfuscatedString(&v26, (*a2 + 264));
          (*(*v11 + 56))(v11, &v26);
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v11 + 17) = 0;
          if (v30 < 0)
          {
            operator delete(__p);
          }

          if (v28 < 0)
          {
            operator delete(v26);
          }

          v26 = 0;
          v27 = 0;
          SipDialog::createRequestInDialog(a1, 0, &v26);
          v12 = *(a3 + 23);
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(a3 + 8);
          }

          if (v12 && *(SipUserAgent::config(v10) + 612) == 1)
          {
            SipMessage::header<SipReasonHeader>(v26, 1);
            SipReasonHeader::addReason();
          }

          v13 = v27;
          v23[0] = v26;
          v23[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v14 = *(a2 + 8);
          v22[0] = *a2;
          v22[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipDialog::sendRequestInFork(&v24, a1, v23, v22);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v15 = *a2;
          v16 = *(a2 + 8);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v15)
          {
            SipDialog::removeForkWithRemoteTag(a1, v15 + 11);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        else
        {
          v18 = a1[25];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(a1[20] + 16))(&v26, a1 + 20);
            v21 = v28 >= 0 ? &v26 : v26;
            *buf = 141558275;
            v32 = 1752392040;
            v33 = 2081;
            v34 = v21;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v28 < 0)
            {
              operator delete(v26);
            }
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

LABEL_41:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_42;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = a1[25];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(a1[20] + 16))(&v26, a1 + 20);
    v20 = v28 >= 0 ? &v26 : v26;
    *buf = 141558275;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v20;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v28 < 0)
    {
      operator delete(v26);
    }
  }

  if (v7)
  {
    goto LABEL_41;
  }

LABEL_42:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E501A040(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialog::sendRequestInFork(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v8 = *(a3 + 8);
  v23[0] = *a3;
  v23[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  v22[0] = *a4;
  v22[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::fillCommonRequestHeaders(&v24, a2, v23, v22);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((*(**(&v24 + 1) + 24))(*(&v24 + 1), v25))
  {
    v11 = *(a2 + 16);
    v10 = a2 + 16;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    (*(v24 + 16))(&v24, v12);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v12[17] = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v13 = *a4;
    if (*a4)
    {
      v14 = *a3;
      v15 = *(v13 + 292);
      *(v13 + 292) = v15 + 1;
    }

    else
    {
      v16 = *(a2 + 2984);
      if (v16)
      {
        ++*(v16 + 292);
      }

      v14 = *a3;
      v15 = *(a2 + 2736);
      *(a2 + 2736) = v15 + 1;
    }

    SipRequest::setCSeq(v14, v15);
    v17 = *a3;
    v18 = *(a3 + 8);
    v21[0] = v17;
    v21[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = 0;
    v20 = 0;
    SipDialog::internalSendRequest(a1, a2, v21, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  ImsResult::~ImsResult(&v24);
}

void sub_1E501A310(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipDialog::terminateOldForks(SipDialog *this)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v2 = *(this + 368);
  v3 = (this + 2952);
  if (v2 != (this + 2952))
  {
    do
    {
      std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v13, (v2 + 7));
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
    v7 = v13;
    v8 = v14;
    if (v13 != v14)
    {
      while (1)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 2920, (*v7 + 264));
        v9 = v7[1];
        v12[0] = *v7;
        v12[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "New Dialog Established");
        SipDialog::terminateForkWithBye(this, v12, __p);
        if (v11 < 0)
        {
          break;
        }

        if (v9)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 2;
        if (v7 == v8)
        {
          goto LABEL_18;
        }
      }

      operator delete(__p[0]);
      if (!v9)
      {
        goto LABEL_14;
      }

LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_14;
    }
  }

LABEL_18:
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 369));
  *(this + 368) = v3;
  *v3 = 0u;
  __p[0] = &v13;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1E501A4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SipDialog::addForkFromResponse(const std::string **a1, SipDialog *this, uint64_t *a3, uint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  SipDialog::createFork(this, &v17);
  v8 = v18;
  v16[0] = v17;
  v16[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  v9 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a4;
  v12 = a4[1];
  v15[0] = v11;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = SipDialog::addForkFromResponse(this, v16, v9, v10, v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v13)
  {
    v14 = v18;
    *a1 = v17;
    a1[1] = v14;
    if (!v14)
    {
      return;
    }

    atomic_fetch_add_explicit(&v14->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E501A604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
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
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  goto LABEL_5;
}

BOOL SipDialog::addForkFromResponse(SipDialog *a1, const std::string **a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v35 = a3;
  v36 = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  v33 = *a5;
  v34 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogFork::initializeMobileOriginated(v7, &v35, &v33, &v37);
  v9 = (v38->__get_deleter)(v38, v39);
  ImsResult::~ImsResult(&v37);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (!v9)
  {
    SipDialog::sipSession(a1, &v37);
    v14 = v38;
    if (v38)
    {
      v15 = std::__shared_weak_count::lock(v38);
      if (v15)
      {
        v16 = v37;
      }

      else
      {
        v16 = 0;
      }

      std::__shared_weak_count::__release_weak(v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = *(a1 + 29);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 28);
        if (v19)
        {
          v21 = *(v19 + 248);
          v20 = *(v19 + 256);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = v21 != 0;
          if (v21)
          {
            if (*(a1 + 370) && v16 && (SipSession::confirmed(v16) & 1) == 0 && (*(SipUserAgent::config(v21) + 611) & 1) == 0)
            {
              SipDialog::terminateOldForks(a1);
            }

            v23 = (*(*(a1 + 2) + 64))(a1 + 2);
            (*(*(a1 + 2) + 16))(a1 + 2, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "adding fork ", 12);
            *(v23 + 17) = 0;
            ObfuscatedString::ObfuscatedString(&v37, *a2 + 11);
            (*(*v23 + 56))(v23, &v37);
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            if (v42 < 0)
            {
              operator delete(__p);
            }

            if (v40 < 0)
            {
              operator delete(v37);
            }

            v24 = *a2;
            v25 = a2[1];
            v32[0] = v24;
            v32[1] = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipDialog::addFork(a1, v32);
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          else
          {
            v29 = *(a1 + 25);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 20) + 16))(&v37, a1 + 20);
              v31 = v40 >= 0 ? &v37 : v37;
              *buf = 141558275;
              v44 = 1752392040;
              v45 = 2081;
              v46 = v31;
              _os_log_error_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (v40 < 0)
              {
                operator delete(v37);
              }
            }
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          goto LABEL_45;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v26 = *(a1 + 25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 20) + 16))(&v37, a1 + 20);
      v30 = v40 >= 0 ? &v37 : v37;
      *buf = 141558275;
      v44 = 1752392040;
      v45 = 2081;
      v46 = v30;
      _os_log_error_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v40 < 0)
      {
        operator delete(v37);
      }
    }

    v22 = 0;
    v13 = 0;
    if (!v18)
    {
      if (!v15)
      {
        goto LABEL_41;
      }

LABEL_40:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_41;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    v13 = v22;
    if (!v15)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v11 = *(a1 + 2);
  v10 = (a1 + 16);
  v12 = (*(v11 + 56))(v10);
  (*(*v10 + 16))(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "unable to add new fork", 22);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v13 = 0;
  *(v12 + 17) = 0;
LABEL_41:
  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1E501ABA0(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void SipDialog::collapseForks(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 2944);
  v5 = (a1 + 2952);
  if (v4 != (a1 + 2952))
  {
    v29 = 0;
    v6 = 0;
    v7 = a1 + 16;
    while (1)
    {
      v8 = v4[7];
      v9 = v4[8];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v8 + 287);
      if (v10 >= 0)
      {
        v11 = *(v8 + 287);
      }

      else
      {
        v11 = *(v8 + 272);
      }

      v12 = *(a2 + 23);
      v13 = v12;
      if (v12 < 0)
      {
        v12 = a2[1];
      }

      if (v11 != v12 || (v10 >= 0 ? (v14 = (v8 + 264)) : (v14 = *(v8 + 264)), (v15 = *a2, v13 >= 0) ? (v16 = a2) : (v16 = *a2), memcmp(v14, v16, v11)))
      {
        v17 = (*(*v7 + 64))(a1 + 16);
        (*(*v7 + 16))(a1 + 16, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "removing losing fork ", 21);
        *(v17 + 17) = 0;
        ObfuscatedString::ObfuscatedString(v30, (v8 + 264));
        (*(*v17 + 56))(v17, v30);
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        if (v33 < 0)
        {
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (!v9)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v21 = (*(*v7 + 64))(a1 + 16);
      (*(*v7 + 16))(a1 + 16, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "keeping winning fork ", 21);
      *(v21 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v30, (v8 + 264));
      (*(*v21 + 56))(v21, v30);
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v30[0]);
      if (v9)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v6 = v9;
      v29 = v8;
      if (!v9)
      {
        goto LABEL_24;
      }

LABEL_23:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_24:
      v18 = v4[1];
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
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
      if (v19 == v5)
      {
        goto LABEL_43;
      }
    }

    if (!v9)
    {
      goto LABEL_36;
    }

LABEL_35:
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_36;
  }

  v6 = 0;
  v29 = 0;
LABEL_43:
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(a1 + 2952));
  *(a1 + 2944) = v5;
  *v5 = 0u;
  if (v29)
  {
    v30[0] = a2;
    v22 = std::__tree<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 2944, a2);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v22 + 64);
    *(v22 + 56) = v29;
    *(v22 + 64) = v6;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a1 + 2968) = v29;
    v24 = *(a1 + 2976);
    *(a1 + 2976) = v6;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v6)
    {
LABEL_53:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v25 = *(a1 + 2976);
    *(a1 + 2968) = 0uLL;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v27 = *(a1 + 16);
    v26 = a1 + 16;
    v28 = (*(v27 + 56))(v26);
    (*(*v26 + 16))(v26, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "collapseForks: couldn't find fork with tag ", 43);
    *(v28 + 17) = 0;
    (*(*v28 + 32))(v28, a2);
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v6)
    {
      goto LABEL_53;
    }
  }
}

void sub_1E501B10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::loggableName(SipDialog *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 3023);
  if (v3 < 0)
  {
    v4 = *(this + 376);
  }

  else
  {
    v4 = *(this + 3023);
  }

  if (!v4)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    ImsStringOutStream::ImsStringOutStream(v5);
  }

  if ((v3 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 375), *(this + 376));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3000);
    a2->__r_.__value_.__r.__words[2] = *(this + 377);
  }
}

void sub_1E501B3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(a1);
}

void SipDialog::logPrefix(SipDialog *this, ImsOutStream *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        (*(*v6 + 112))(v9);
        (*(*a2 + 40))(a2, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [", 2);
        *(a2 + 17) = 0;
        (*(*this + 56))(__p, this);
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

  (*(*this + 56))(v9, this);
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

void sub_1E501B630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipDialog::subscriptionTerminated(uint64_t **a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 2;
  v5 = (a1[2][8])(a1 + 2);
  ((*v4)[2])(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SipDialog::subscriptionTerminated", 33);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = (*(**(*a2 + 248) + 16))(*(*a2 + 248));
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v4 + 360), &v6->__r_.__value_.__l.__data_);
  if (v4 + 361 == v7)
  {
    v29 = ((*v4)[8])(v4);
    ((*v4)[2])(v4, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "received termination notice for unknown subscription event '", 60);
    *(v29 + 17) = 0;
    LoggableString::LoggableString(&v36, v6);
    (*(*v29 + 40))(v29, &v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "'", 1);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
LABEL_39:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  v8 = v7;
  v9 = *(v7 + 56);
  if (v9 == *(v7 + 64))
  {
LABEL_36:
    v28 = ((*v4)[8])(v4);
    ((*v4)[2])(v4, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "received termination notice for '", 33);
    *(v28 + 17) = 0;
    LoggableString::LoggableString(&v36, v6);
    (*(*v28 + 40))(v28, &v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "' event with id '", 17);
    *(v28 + 17) = 0;
    LoggableString::LoggableString(&__p, (*a2 + 496));
    (*(*v28 + 40))(v28, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "', but it doesn't exist in this dialog", 38);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  v30 = v6;
  v31 = v4 + 360;
  v32 = v3;
  v33 = v4;
  v10 = 0;
  v11 = *(v7 + 56);
  v34 = a2;
  do
  {
    v12 = *v11;
    v13 = v11[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *a2;
    if (v12 == *a2)
    {
      v15 = ((*v4)[8])(v4);
      ((*v4)[2])(v4, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Removing subscription '", 23);
      *(v15 + 17) = 0;
      (*(*v15 + 32))(v15, v12 + 496);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "' from dialog", 13);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      v16 = v8[8];
      if (v11 + 2 == v16)
      {
        v22 = v11;
      }

      else
      {
        v17 = v8[7];
        v18 = v17 + v9;
        do
        {
          v19 = v18 - v17;
          v20 = *(v18 - v17 + 16);
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          v21 = *(v18 - v17 + 8);
          *v19 = v20;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v18 += 16;
        }

        while ((v18 - v17 + 16) != v16);
        v16 = v8[8];
        v22 = (v18 - v17);
        v4 = v33;
        a2 = v34;
      }

      while (v16 != v22)
      {
        v23 = *(v16 - 1);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v16 -= 2;
      }

      v8[8] = v22;
      if (v8[7] == v22)
      {
        v24 = v8[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          v26 = v8;
          do
          {
            v25 = v26[2];
            v27 = *v25 == v26;
            v26 = v25;
          }

          while (!v27);
        }

        if (*v31 == v8)
        {
          *v31 = v25;
        }

        --*(v32 + 364);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(v32 + 363), v8);
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>>,0>((v8 + 4));
        operator delete(v8);
      }

      v10 = 1;
      if (v13)
      {
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    else if (v13)
    {
      goto LABEL_8;
    }

    if (v12 == v14)
    {
      break;
    }

    v11 += 2;
    v9 += 16;
  }

  while (v11 != v8[8]);
  v3 = v32;
  v6 = v30;
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_41:
  SipDialog::checkTerminated(v3);
}

void sub_1E501BCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialog::subscriptionForEvent@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2896, a2);
  if (a1 + 2904 == result)
  {
    goto LABEL_21;
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(result + 56);
  v11 = *(result + 64);
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == v11;
  }

  if (v12)
  {
    if (v10 != v11)
    {
      if (v8 < 0)
      {
        a3 = *a3;
      }

      while (1)
      {
        v13 = *v10;
        v14 = *(*v10 + 519);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(*v10 + 504);
        }

        if (v14 == v9)
        {
          v16 = v15 >= 0 ? (v13 + 496) : *(v13 + 496);
          result = memcmp(v16, a3, v9);
          if (!result)
          {
            break;
          }
        }

        v10 += 2;
        if (v10 == v11)
        {
          goto LABEL_21;
        }
      }

      v17 = v10[1];
      *a4 = v13;
      goto LABEL_22;
    }

LABEL_21:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v17 = v10[1];
  *a4 = *v10;
LABEL_22:
  a4[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void SipDialog::subscribeToEventPackage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 16);
  v6 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipDialog::subscribeToEventPackage - ", 37);
  *(v6 + 17) = 0;
  v7 = (*(*a2 + 16))(a2);
  (*(*v6 + 32))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " (id: '", 7);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "')", 2);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v8 = v5[20];
  v9 = v5[19];
  if (v8)
  {
    if (std::__shared_weak_count::lock(v8))
    {
      v10 = 0uLL;
      SipSubscription::create(&v10);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E501C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

uint64_t SipDialog::cancelAllSubscriptions(SipDialog *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(this + 364))
  {
    v10 = 1;
    goto LABEL_45;
  }

  v2 = *(this + 29);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_41;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(this + 28)) == 0)
  {
LABEL_41:
    v24 = *(this + 25);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 20) + 16))(&__p, this + 160);
      v28 = v34 >= 0 ? &__p : __p;
      *buf = 141558275;
      v36 = 1752392040;
      v37 = 2081;
      v38 = v28;
      _os_log_error_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }
    }

    v10 = 0;
    goto LABEL_43;
  }

  v6 = *(v4 + 248);
  v5 = *(v4 + 256);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    v7 = this + 16;
    v31 = v3;
    v8 = (*(*(this + 2) + 64))(this + 16);
    (*(*(this + 2) + 16))(this + 16, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "canceling all subscriptions", 27);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    __p = 0;
    v33 = 0;
    v34 = 0;
    std::map<std::string,std::vector<std::shared_ptr<SipSubscription>>>::map[abi:ne200100](&__p, this + 2896);
    v30 = this;
    v9 = __p;
    if (__p != &v33)
    {
      v10 = 1;
      while (1)
      {
        v12 = *(v9 + 7);
        v11 = *(v9 + 8);
        if (v12 != v11)
        {
          break;
        }

LABEL_32:
        v22 = *(v9 + 1);
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
            v23 = *(v9 + 2);
            v20 = *v23 == v9;
            v9 = v23;
          }

          while (!v20);
        }

        v9 = v23;
        if (v23 == &v33)
        {
          goto LABEL_50;
        }
      }

      while (1)
      {
        if (*(v4 + 320) == 2 && (*(v4 + 4504) & 1) == 0 && (v13 = SipStack::prefs(v4), ImsPrefs::EnableSignalingReduction(v13)) && *(v4 + 4376) == 1)
        {
          v14 = SipSubscription::terminateWithoutUnsubscribing(*v12);
        }

        else
        {
          if ((*(SipUserAgent::config(v6) + 815) & 1) == 0)
          {
            v15 = v9[55];
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v9 + 5);
            }

            if (v15 == 3)
            {
              v17 = v16 >= 0 ? (v9 + 32) : *(v9 + 4);
              v18 = *v17;
              v19 = v17[2];
              v20 = v18 == SipRegistrationEventPackage::kPackageName && v19 == 103;
              if (v20)
              {
                v21 = (*(*v7 + 64))(v7);
                (*(*v7 + 16))(v7, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "not canceling reg subscription", 30);
                *(v21 + 17) = 0;
                (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v21 + 17) = 0;
                goto LABEL_29;
              }
            }
          }

          v14 = SipSubscription::unsubscribe(*v12);
        }

        v10 &= v14;
LABEL_29:
        v12 += 2;
        if (v12 == v11)
        {
          goto LABEL_32;
        }
      }
    }

    v10 = 1;
LABEL_50:
    SipDialog::checkTerminated(v30);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(&__p, v33);
    v3 = v31;
    if (!v5)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v27 = *(this + 25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 20) + 16))(&__p, this + 160);
      v29 = v34 >= 0 ? &__p : __p;
      *buf = 141558275;
      v36 = 1752392040;
      v37 = 2081;
      v38 = v29;
      _os_log_error_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }
    }

    v10 = 0;
    if (!v5)
    {
      goto LABEL_43;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_43:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_45:
  v25 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void sub_1E501C7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v18 = v16;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

std::string *SipDialog::setSessionIdFromDialog(std::string *this, const SipDialog *a2)
{
  v2 = *(a2 + 2455);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 305);
  }

  if (v2)
  {
    v4 = this;
    v5 = &this->__r_.__value_.__s.__data_[16];
    v6 = (*(this->__r_.__value_.__r.__words[2] + 64))(&this->__r_.__value_.__r.__words[2]);
    (*(*v5 + 16))(v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "carrying Session-ID from ", 25);
    *(v6 + 17) = 0;
    v8 = *(a2 + 1);
    v7 = (a2 + 8);
    (*(v8 + 16))(v7, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " to ", 4);
    *(v6 + 17) = 0;
    v10 = *(v4 + 8);
    v9 = (v4 + 8);
    (*(v10 + 16))(v9, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    std::string::operator=(v9 + 100, v7 + 100);

    return std::string::operator=(v9 + 101, v7 + 101);
  }

  return this;
}

uint64_t SipDialog::handleRequest(uint64_t a1, uint64_t *a2, void *a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = a1 + 16;
  v7 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "SipDialog::handleRequest", 24);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v8 = *(*a3 + 112);
  if (v8)
  {
    v9 = *(*a3 + 104);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 2752);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(a1 + 2744);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = *(a1 + 232);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = *(a1 + 224);
      if (v17)
      {
        v19 = *(v17 + 248);
        v18 = *(v17 + 256);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v82 = v18;
        if (v19)
        {
          v81 = v19;
          if (v14 && v11 && *(SipUserAgent::config(v19) + 792) == 1)
          {
            v20 = v14[83];
            if (v20)
            {
              v79 = v14[82];
              atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v21 = std::__shared_weak_count::lock(v20);
              v22 = v20;
              v20 = v21;
              std::__shared_weak_count::__release_weak(v22);
              if (v20)
              {
                if (v79)
                {
                  goto LABEL_31;
                }
              }
            }

            (*(*v11 + 88))(&__str, v11);
            v93 = *&__str.__r_.__value_.__l.__data_;
            if (__str.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            }

            SipSessionInterface::setPreferredTransportGroup(v14, &v93);
            if (*(&v93 + 1))
            {
              std::__shared_weak_count::__release_weak(*(&v93 + 1));
            }

            if (__str.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
            }

            if (v20)
            {
LABEL_31:
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }
          }

          v23 = (*(**a2 + 120))();
          v24 = *(v23 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(v23 + 8);
          }

          if (v24 == 6)
          {
            v26 = v25 >= 0 ? v23 : *v23;
            v27 = *v26;
            v28 = *(v26 + 4);
            if (v27 == *"NOTIFY" && v28 == *"FY")
            {
              v91 = 0;
              v92 = 0;
              *buf = 200;
              __str.__r_.__value_.__r.__words[0] = v81 + 384;
              std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
            }
          }

          v30 = SipMessage::header<SipFromHeader>(*a2);
          if (v30)
          {
            v31 = SipUriHeader::tag(v30);
          }

          else
          {
            v31 = &ims::kEmptyString;
          }

          v38 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, v31);
          if (a1 + 2952 == v38)
          {
            goto LABEL_61;
          }

          v40 = *(v38 + 56);
          v39 = *(v38 + 64);
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = v39;
          if (!v40)
          {
LABEL_61:
            v44 = (*(*v6 + 64))(v6);
            (*(*v6 + 16))(v6, v44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "rejecting ", 10);
            *(v44 + 17) = 0;
            v45 = (*(**a2 + 120))();
            LoggableString::LoggableString(buf, v45);
            (*(*v44 + 40))(v44, buf);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), " request with wrong From: tag ", 30);
            *(v44 + 17) = 0;
            v46 = SipMessage::header<SipFromHeader>(*a2);
            if (v46)
            {
              v47 = SipUriHeader::tag(v46);
            }

            else
            {
              v47 = &ims::kEmptyString;
            }

            ObfuscatedString::ObfuscatedString(&__str, v47);
            (*(*v44 + 56))(v44, &__str);
            (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v44 + 17) = 0;
            if (v96 < 0)
            {
              operator delete(v95);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v49 = (*(*v6 + 64))(v6);
            (*(*v6 + 16))(v6, v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "valid tags are: ", 16);
            *(v49 + 17) = 0;
            v98 = 0;
            memset(buf, 0, sizeof(buf));
            ImsStringOutStream::ImsStringOutStream(buf);
          }

          v41 = v40;
          v42 = SipMessage::header<SipToHeader>(*a2);
          if (v42)
          {
            v43 = SipUriHeader::tag(v42);
          }

          else
          {
            v43 = &ims::kEmptyString;
          }

          v50 = *(v43 + 23);
          if ((v50 & 0x80u) != 0)
          {
            v50 = *(v43 + 1);
          }

          if (v50)
          {
            v51 = SipMessage::header<SipToHeader>(*a2);
            if (v51)
            {
              v52 = SipUriHeader::tag(v51);
            }

            else
            {
              v52 = &ims::kEmptyString;
            }

            v53 = *(v52 + 23);
            if (v53 >= 0)
            {
              v54 = *(v52 + 23);
            }

            else
            {
              v54 = *(v52 + 1);
            }

            v55 = *(a1 + 1935);
            v56 = v55;
            if ((v55 & 0x80u) != 0)
            {
              v55 = *(a1 + 1920);
            }

            if (v54 != v55)
            {
              goto LABEL_98;
            }

            if (v53 < 0)
            {
              v52 = *v52;
            }

            v57 = *(a1 + 1912);
            v58 = v56 >= 0 ? (a1 + 1912) : *(a1 + 1912);
            if (memcmp(v52, v58, v54))
            {
LABEL_98:
              if ((*(SipUserAgent::config(v81) + 544) & 1) == 0)
              {
                v71 = (*(*v6 + 64))(v6);
                (*(*v6 + 16))(v6, v71);
                v72 = ImsOutStream::operator<<(v71, "rejecting ");
                v73 = (*(**a2 + 120))();
                LoggableString::LoggableString(buf, v73);
                (*(*v72 + 40))(v72, buf);
                v74 = ImsOutStream::operator<<(v72, " request with wrong To: tag ");
                v75 = SipMessage::toTag(*a2);
                ObfuscatedString::ObfuscatedString(&__str, v75);
                (*(*v74 + 56))(v74, &__str);
                (*(*v74 + 64))(v74, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v74[17] = 0;
                ims::AccessNetwork::~AccessNetwork(&__str.__r_.__value_.__l.__data_);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                *buf = 0;
                *&buf[8] = 0;
                std::string::basic_string[abi:ne200100]<0>(&__str, "Call Does Not Exist");
                SipResponse::create(buf);
              }
            }
          }

          v59 = (*(**a2 + 120))();
          v60 = *(v59 + 23);
          v61 = v60;
          if ((v60 & 0x80u) != 0)
          {
            v60 = *(v59 + 8);
          }

          if (v60 == 6)
          {
            v62 = v61 >= 0 ? v59 : *v59;
            v63 = *v62;
            v64 = *(v62 + 4);
            if (v63 == *"CANCEL" && v64 == *"EL")
            {
              goto LABEL_118;
            }
          }

          v66 = a2[1];
          v89 = *a2;
          v90 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = a3[1];
          v87 = *a3;
          v88 = v67;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          updated = SipDialogFork::verifyAndUpdateRemoteCSeq(v41, &v89);
          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }

          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
          }

          if (updated)
          {
LABEL_118:
            (*(**a2 + 120))();
            if (!v14)
            {
              v76 = (*(*v6 + 64))(v6);
              (*(*v6 + 16))(v6, v76);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "no session to handle incoming ", 30);
              *(v76 + 17) = 0;
              v77 = (*(**a2 + 120))();
              LoggableString::LoggableString(&__str, v77);
              (*(*v76 + 40))(v76, &__str);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), " request", 8);
              *(v76 + 17) = 0;
              (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v76 + 17) = 0;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              *buf = 0;
              *&buf[8] = 0;
              std::string::basic_string[abi:ne200100]<0>(&__str, "Call Does Not Exist");
              SipResponse::create(buf);
            }

            v69 = a2[1];
            v85 = *a2;
            v86 = v69;
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v70 = a3[1];
            v83 = *a3;
            v84 = v70;
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = (*(*v14 + 136))(v14, &v85, &v83);
            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            if (v86)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v86);
            }
          }

          else
          {
            v33 = 0;
          }

          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }
        }

        else
        {
          v37 = *(a1 + 200);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            (*(*(a1 + 160) + 16))(&__str, a1 + 160);
            v78 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v78;
            _os_log_error_impl(&dword_1E4C3F000, v37, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          v33 = 0;
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        goto LABEL_141;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v32 = *(a1 + 200);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 160) + 16))(&__str, a1 + 160);
    v48 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v48;
    _os_log_error_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v33 = 0;
  v34 = 0;
  if (!v16)
  {
    if (!v13)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_141:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v34 = v33;
  if (v13)
  {
LABEL_48:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_49:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_1E501DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  if (*(v65 - 169) < 0)
  {
    operator delete(*(v65 - 192));
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v67 = *(v65 - 224);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    if (!v61)
    {
LABEL_13:
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_13;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  goto LABEL_13;
}

uint64_t SipDialog::handleSubscribeResponse(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(*a3 + 264);
  v7 = *(*a3 + 272);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = SipMessage::header<SipEventHeader>(v6);
  v9 = v8;
  if (v8)
  {
    v28 = 0;
    v29 = 0;
    v10 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), &kParameterId);
    if (v9 + 80 == v10)
    {
      v11 = &ims::kEmptyString;
    }

    else
    {
      v11 = (v10 + 56);
    }

    SipDialog::subscriptionForEvent(a1, v9 + 13, v11, &v28);
    v12 = v28;
    if (v28)
    {
      v13 = a2[1];
      v25 = *a2;
      v26 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a3[1];
      v23 = *a3;
      v24 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v12 + 96))(v12, &v25, &v23);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    else
    {
      v20 = *(a1 + 16);
      v19 = a1 + 16;
      v21 = (*(v20 + 64))(v19);
      (*(*v19 + 16))(v19, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "no ", 3);
      *(v21 + 17) = 0;
      LoggableString::LoggableString(&__p, (v9 + 104));
      (*(*v21 + 40))(v21, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " subscription to handle SUBSCRIBE response.  We might have received a terminating NOTIFY first.", 95);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v15 = 1;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }
  }

  else
  {
    v17 = *(a1 + 16);
    v16 = a1 + 16;
    v18 = (*(v17 + 56))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "received SUBSCRIBE response, but can't find Event header in request", 67);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v15 = 0;
    *(v18 + 17) = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v15;
}

void sub_1E501E4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::cancelInviteRequest(SipDialog *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*a2 + 264);
  v8 = *(*a2 + 272);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(v9);
  if (!HeaderWith || (v11 = HeaderWith[8], v11 == HeaderWith[9]) || !*v11)
  {
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = &unk_1F5EBDEF8;
    v41 = &_bambiDomain;
    v42 = 1073741825;
    operator new();
  }

  v40 = 0;
  v41 = 0;
  SipRequest::createMatchingCancel(v9, &v40);
  if (!a3)
  {
    SipDialog::sipSession(a1, &v37);
    v22 = v38;
    if (v38)
    {
      v20 = std::__shared_weak_count::lock(v38);
      v23 = v22;
LABEL_38:
      std::__shared_weak_count::__release_weak(v23);
      goto LABEL_39;
    }

LABEL_36:
    v20 = 0;
    goto LABEL_39;
  }

  v12 = *(a1 + 29);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 28);
      if (v15)
      {
        v16 = *(v15 + 248);
        v17 = *(v15 + 256);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v16 && *(SipUserAgent::config(v16) + 612) == 1)
        {
          v18 = v41;
          v39[0] = v40;
          v39[1] = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
          }

          BambiCallTerminationReason::addReasonToRequest(a3, v39);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  SipDialog::sipSession(a1, &v37);
  v19 = v38;
  if (!v38)
  {
    goto LABEL_36;
  }

  v20 = std::__shared_weak_count::lock(v38);
  if (!v20)
  {
    v23 = v19;
    goto LABEL_38;
  }

  v21 = v37;
  std::__shared_weak_count::__release_weak(v19);
  if (v21)
  {
    v35 = v40;
    v36 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
    }

    (*(*v21 + 128))(&v33, v21);
    SipSession::addTerminationSdpToMessage(v21, a3, &v35, &v33);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }

LABEL_39:
  v24 = v41;
  v30[0] = v40;
  v30[1] = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
  }

  v25 = *a2;
  v26 = *(*a2 + 112);
  if (v26)
  {
    v27 = *(v25 + 104);
    atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v28 = 0;
    v29 = std::__shared_weak_count::lock(v26);
    if (v29)
    {
      v28 = v27;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  SipDialog::internalSendRequest(&v31, a1, v30, &v28);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    v24 = v41;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E501E8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
    if (!v25)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  goto LABEL_7;
}

void sub_1E501E990()
{
  if (!v0)
  {
    JUMPOUT(0x1E501E948);
  }

  JUMPOUT(0x1E501E940);
}

void SipDialog::internalSendRequest(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2[344];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = a2[343];
      v11 = v10 != 0;
      if (!*a4 && v10)
      {
        v12 = *(v10 + 664);
        if (v12)
        {
          v13 = a2[343];
          v14 = *(v10 + 656);
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v15 = std::__shared_weak_count::lock(v12);
          std::__shared_weak_count::__release_weak(v12);
          if (v15)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v10 = v13;
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = a4[1];
            *a4 = v14;
            a4[1] = v15;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            v18 = (*(a2[2] + 64))(a2 + 2);
            v10 = v13;
            (*(a2[2] + 16))(a2 + 2, v18);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "sending ", 8);
            *(v18 + 17) = 0;
            v19 = (*(**a3 + 120))();
            LoggableString::LoggableString(&v68, v19);
            (*(*v18 + 40))(v18, &v68);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " request over preferred transport ", 34);
            *(v18 + 17) = 0;
            (*(**a4 + 80))(*a4, v18);
            (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v18 + 17) = 0;
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_20:
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  v20 = a2[29];
  if (!v20 || (v21 = std::__shared_weak_count::lock(v20)) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_106;
  }

  v22 = v21;
  v23 = a2[28];
  if (!v23)
  {
    *a1 = 0;
    a1[1] = 0;
LABEL_104:
    v38 = v22;
    goto LABEL_105;
  }

  v57 = v11;
  v25 = v23[33];
  v24 = v23[34];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v58 = v10;
  v26 = a3[1];
  v64 = *a3;
  v65 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = a2[22];
  if (!v27 || (v28 = a2[21], (v29 = std::__shared_weak_count::lock(v27)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v62 = v28;
  v63 = v29;
  v30 = a4[1];
  v60 = *a4;
  v61 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionLayer::sendRequest(v25, &v64, &v68);
  v31 = *&v68.__r_.__value_.__l.__data_;
  *&v68.__r_.__value_.__l.__data_ = 0uLL;
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v31)
  {
    if (*(&v31 + 1))
    {
      atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    __p[0] = 0;
    __p[1] = 0;
    v67 = 0;
    v56 = v22;
    v32 = (*(**(v31 + 264) + 120))(*(v31 + 264));
    SipTransaction::transactionMapKey(v31 + 312, v32, __p);
    v33 = a2 + 2;
    v34 = (*(a2[2] + 64))(a2 + 2);
    (*(a2[2] + 16))(a2 + 2, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "adding ", 7);
    *(v34 + 17) = 0;
    (*(*v31 + 144))(&v68, v31);
    (*(*v34 + 40))(v34, &v68);
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v34 + 17) = 0;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    v35 = a2 + 360;
    v36 = a2[360];
    if (!v36)
    {
      goto LABEL_54;
    }

    while (1)
    {
      while (1)
      {
        v37 = v36;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v36 + 32)) & 0x80) == 0)
        {
          break;
        }

        v36 = *v37;
        v35 = v37;
        if (!*v37)
        {
          goto LABEL_54;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37 + 4, __p) & 0x80) == 0)
      {
        break;
      }

      v35 = v37 + 1;
      v36 = v37[1];
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    if (!*v35)
    {
LABEL_54:
      operator new();
    }

    if (*(&v31 + 1))
    {
      atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v39 = *(*(&v31 + 1) + 64);
    *(*(&v31 + 1) + 56) = v31;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    v40 = a2[27];
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      v42 = v41;
      if (v41)
      {
        v43 = a2[26];
        if (v43)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          v44 = *(v31 + 344);
          *(v31 + 336) = v43 + 8;
          *(v31 + 344) = v42;
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
LABEL_67:
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
LABEL_68:
          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&v31 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
          }

          v46 = *(v31 + 112);
          if (v46)
          {
            v47 = *(v31 + 104);
            atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v48 = std::__shared_weak_count::lock(v46);
            if (v48)
            {
              v49 = v47;
            }

            else
            {
              v49 = 0;
            }

            std::__shared_weak_count::__release_weak(v46);
          }

          else
          {
            v48 = 0;
            v49 = 0;
          }

          v50 = v23[31];
          v51 = v23[32];
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = v57;
          if (!v49)
          {
            v52 = 0;
          }

          if (!v52 || !v50 || *(SipUserAgent::config(v50) + 792) != 1)
          {
            goto LABEL_100;
          }

          v53 = v58[83];
          if (v53)
          {
            v54 = v58[82];
            atomic_fetch_add_explicit(&v53->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v55 = std::__shared_weak_count::lock(v53);
            std::__shared_weak_count::__release_weak(v53);
            if (v55 && v54)
            {
LABEL_99:
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
LABEL_100:
              *a1 = v31;
              if (v51)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
              }

              v22 = v56;
              if (v48)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v48);
              }

              goto LABEL_104;
            }
          }

          else
          {
            v55 = 0;
          }

          (*(*v49 + 88))(&v68, v49);
          v59 = *&v68.__r_.__value_.__l.__data_;
          if (v68.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v68.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          }

          SipSessionInterface::setPreferredTransportGroup(v58, &v59);
          if (*(&v59 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v59 + 1));
          }

          if (v68.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68.__r_.__value_.__l.__size_);
          }

          if (!v55)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }
      }
    }

    else
    {
      v42 = 0;
    }

    v45 = (*(*v33 + 56))(a2 + 2);
    (*(*v33 + 16))(v33, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "DialogManager is NULL. Can't add client transaction", 51);
    *(v45 + 17) = 0;
    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v45 + 17) = 0;
    if (!v42)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  *a1 = 0;
  a1[1] = 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (!*(&v31 + 1))
  {
    goto LABEL_106;
  }

  v38 = *(&v31 + 1);
LABEL_105:
  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
LABEL_106:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E501F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v27)
    {
LABEL_5:
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if (!v27)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (!v29)
  {
LABEL_6:
    if (!v28)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (!v28)
  {
LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  goto LABEL_8;
}

void SipDialog::bestAvailableFork(SipDialog *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (*(this + 370) != 1)
  {
    goto LABEL_5;
  }

  v5 = *(this + 368);
  v6 = *(v5 + 56);
  v4 = *(v5 + 64);
  *a2 = v6;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_5:
    v7 = *(this + 373);
    v8 = *(this + 374);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a2 = v7;
    a2[1] = v8;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (!v7)
    {
      v9 = *(this + 371);
      v10 = *(this + 372);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v9;
      a2[1] = v10;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (!v9 && *(this + 370))
      {
        v11 = *(this + 368);
        v13 = *(v11 + 56);
        v12 = *(v11 + 64);
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        *a2 = v13;
        a2[1] = v12;
        if (v10)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }
}

void SipDialog::dialogId(SipDialog *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::operator+<char>();
  v4 = std::string::append(&v32, ";to-tag=", 8uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a2->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v6 = 0;
  memset(&v32, 0, sizeof(v32));
  if (*(this + 370) == 1)
  {
    v7 = *(this + 368);
    v8 = *(v7 + 56);
    v6 = *(v7 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    if (v8)
    {
      goto LABEL_22;
    }
  }

  v8 = *(this + 373);
  v9 = *(this + 374);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    goto LABEL_22;
  }

  v8 = *(this + 371);
  v10 = *(this + 372);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    v9 = v10;
LABEL_22:
    std::string::operator=(&v32, v8 + 11);
    goto LABEL_23;
  }

  if (*(this + 370))
  {
    v28 = *(this + 368);
    v8 = *(v28 + 56);
    v9 = *(v28 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = v10;
  }

LABEL_23:
  if (*(this + 2816) == 1)
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    memset(&v29, 0, sizeof(v29));
    v12 = &v29;
    std::string::basic_string[abi:ne200100](&v29, size + 10);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v29.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v32;
      }

      else
      {
        v13 = v32.__r_.__value_.__r.__words[0];
      }

      memmove(v12, v13, size);
    }

    strcpy(v12 + size, ";from-tag=");
    v14 = *(this + 1935);
    if (v14 >= 0)
    {
      v15 = this + 1912;
    }

    else
    {
      v15 = *(this + 239);
    }

    if (v14 >= 0)
    {
      v16 = *(this + 1935);
    }

    else
    {
      v16 = *(this + 240);
    }

    v17 = std::string::append(&v29, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v31 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (v31 >= 0)
    {
      v20 = HIBYTE(v31);
    }

    else
    {
      v20 = __p[1];
    }
  }

  else
  {
    if (*(this + 1935) >= 0)
    {
      v21 = *(this + 1935);
    }

    else
    {
      v21 = *(this + 240);
    }

    memset(&v29, 0, sizeof(v29));
    v22 = &v29;
    std::string::basic_string[abi:ne200100](&v29, v21 + 10);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v29.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (*(this + 1935) >= 0)
      {
        v23 = this + 1912;
      }

      else
      {
        v23 = *(this + 239);
      }

      memmove(v22, v23, v21);
    }

    strcpy(v22 + v21, ";from-tag=");
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v32;
    }

    else
    {
      v24 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v32.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v29, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v31 = v26->__r_.__value_.__r.__words[2];
    *__p = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (v31 >= 0)
    {
      v20 = HIBYTE(v31);
    }

    else
    {
      v20 = __p[1];
    }
  }

  std::string::append(a2, v19, v20);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1E501F898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialog::handleResponse(uint64_t a1, uint64_t *a2, std::string::size_type *a3)
{
  v169 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 232);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 224);
      if (v8)
      {
        v9 = *(v8 + 248);
        v10 = *(v8 + 256);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v9)
        {
          v17 = *(a1 + 200);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            (*(*(a1 + 160) + 16))(&__p, a1 + 160);
            v76 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(v168.__r_.__value_.__l.__data_) = 141558275;
            *(v168.__r_.__value_.__r.__words + 4) = 1752392040;
            WORD2(v168.__r_.__value_.__r.__words[1]) = 2081;
            *(&v168.__r_.__value_.__r.__words[1] + 6) = v76;
            _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &v168, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v15 = 0;
          goto LABEL_283;
        }

        v11 = *(*a3 + 272);
        v151 = *(*a3 + 264);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = v11;
        memset(&v168, 0, sizeof(v168));
        v12 = SipMessage::header<SipToHeader>(*a2);
        if (v12)
        {
          v13 = SipUriHeader::tag(v12);
        }

        else
        {
          v13 = &ims::kEmptyString;
        }

        if (*(v13 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v168, *v13, *(v13 + 1));
        }

        else
        {
          v18 = *v13;
          v168.__r_.__value_.__r.__words[2] = *(v13 + 2);
          *&v168.__r_.__value_.__l.__data_ = v18;
        }

        v19 = *a2;
        if (*(*a2 + 128) == 100)
        {
          v20 = a2[1];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *a3;
          v22 = a3[1];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = *(a1 + 2752);
          if (v23)
          {
            v24 = std::__shared_weak_count::lock(v23);
            if (v24)
            {
              v25 = v24;
              v26 = *(a1 + 2744);
              if (v26)
              {
                v149 = v10;
                v28 = *(a1 + 16);
                v27 = a1 + 16;
                v29 = (*(v28 + 64))(v27);
                (*(*v27 + 16))(v27, v29);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "SipDialog::handleTryingResponse", 31);
                *(v29 + 17) = 0;
                (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v29 + 17) = 0;
                __p.__r_.__value_.__r.__words[0] = v19;
                __p.__r_.__value_.__l.__size_ = v20;
                if (v20)
                {
                  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v166.__r_.__value_.__r.__words[0] = v21;
                v166.__r_.__value_.__l.__size_ = v22;
                v10 = v149;
                if (v22)
                {
                  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*v26 + 144))(v26, &__p, &v166);
                if (v166.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v166.__r_.__value_.__l.__size_);
                }

                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v15 = 1;
LABEL_279:
          if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v168.__r_.__value_.__l.__data_);
          }

          if (v152)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v152);
          }

LABEL_283:
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

LABEL_285:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          result = v15;
          goto LABEL_286;
        }

        size = HIBYTE(v168.__r_.__value_.__r.__words[2]);
        if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v168.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v164 = 0;
          v165 = 0;
          v31 = a2[1];
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = *a3;
          v32 = a3[1];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v147 = v31;
          v148 = v32;
          v150 = v10;
          v34 = SipMessage::header<SipToHeader>(v19);
          if (v34)
          {
            v35 = SipUriHeader::tag(v34);
          }

          else
          {
            v35 = &ims::kEmptyString;
          }

          v144 = a1 + 2944;
          v44 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, v35);
          if (a1 + 2952 == v44)
          {
            v145 = 0;
          }

          else
          {
            v46 = *(v44 + 56);
            v45 = *(v44 + 64);
            if (v45)
            {
              atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v145 = v45;
            if (v46)
            {
              v47 = (*(*(a1 + 16) + 64))(a1 + 16);
              (*(*(a1 + 16) + 16))(a1 + 16, v47);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "found existing fork ", 20);
              *(v47 + 17) = 0;
              ObfuscatedString::ObfuscatedString(&__p, v35);
              v48 = v147;
              (*(*v47 + 56))(v47, &__p);
              (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v47 + 17) = 0;
              if (v161 < 0)
              {
                operator delete(v160);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v164 = v46;
              v165 = v145;
              v10 = v150;
              goto LABEL_157;
            }
          }

          if (*(v19 + 128) <= 0x12Bu && a1 + 2928 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2920, v35))
          {
            v49 = (*(*(a1 + 16) + 64))(a1 + 16);
            (*(*(a1 + 16) + 16))(a1 + 16, v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "ignoring ", 9);
            *(v49 + 17) = 0;
            MEMORY[0x1E6923350](*(v49 + 8), *(v19 + 128));
            *(v49 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " response on terminated fork ", 29);
            *(v49 + 17) = 0;
            ObfuscatedString::ObfuscatedString(&__p, v35);
            v50 = v145;
            v48 = v147;
            (*(*v49 + 56))(v49, &__p);
            (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            goto LABEL_150;
          }

          v51 = *(v33 + 264);
          v52 = *(v33 + 272);
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = (*(*v51 + 120))(v51);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          v54 = *(v53 + 23);
          v55 = v54;
          if ((v54 & 0x80u) != 0)
          {
            v54 = *(v53 + 8);
          }

          if (v54 == 9)
          {
            if (v55 >= 0)
            {
              v65 = v53;
            }

            else
            {
              v65 = *v53;
            }

            v66 = *v65;
            v67 = *(v65 + 8);
            if (v66 == *"SUBSCRIBE" && v67 == SipRequest::kMethodSubscribe[8])
            {
              if (!*(a1 + 2960))
              {
                v48 = v147;
                __p.__r_.__value_.__r.__words[0] = v19;
                __p.__r_.__value_.__l.__size_ = v147;
                if (v147)
                {
                  atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v10 = v150;
                v166.__r_.__value_.__r.__words[0] = v33;
                v166.__r_.__value_.__l.__size_ = v148;
                v50 = v145;
                if (v148)
                {
                  atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipDialog::addForkFromResponse(&v164, a1, &__p, &v166);
                if (v148)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v148);
                }

                if (v147)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v147);
                }

                goto LABEL_155;
              }

              v49 = (*(*(a1 + 16) + 64))(a1 + 16);
              (*(*(a1 + 16) + 16))(a1 + 16, v49);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "forking not allowed for SUBSCRIBE dialogs.  Ignoring ", 53);
              *(v49 + 17) = 0;
              MEMORY[0x1E6923350](*(v49 + 8), *(v19 + 128));
              *(v49 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " response with new To: tag ", 27);
              *(v49 + 17) = 0;
              ObfuscatedString::ObfuscatedString(&__p, v35);
              v50 = v145;
              v48 = v147;
              (*(*v49 + 56))(v49, &__p);
              (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              goto LABEL_150;
            }

            goto LABEL_106;
          }

          if (v54 != 6 || (v55 >= 0 ? (v56 = v53) : (v56 = *v53), (v57 = *v56, v58 = *(v56 + 4), v57 == *"INVITE") ? (v59 = v58 == *"TE") : (v59 = 0), !v59))
          {
LABEL_106:
            v69 = *(a1 + 232);
            if (v69)
            {
              v70 = std::__shared_weak_count::lock(v69);
              if (v70)
              {
                v71 = v70;
                v72 = *(a1 + 224);
                if (v72)
                {
                  v73 = *(v72 + 248);
                  v74 = *(v72 + 256);
                  if (v74)
                  {
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v73 && *(SipUserAgent::config(v73) + 544) == 1 && *(a1 + 2960) == 1)
                  {
                    v75 = *(*v144 + 64);
                    v164 = *(*v144 + 56);
                    v165 = v75;
                    if (v75)
                    {
                      atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v50 = v145;
                    if (v74)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
                    v10 = v150;
                    v48 = v147;
                    goto LABEL_155;
                  }

                  if (v74)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v71);
              }
            }

            v49 = (*(*(a1 + 16) + 64))(a1 + 16);
            (*(*(a1 + 16) + 16))(a1 + 16, v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "ignoring ", 9);
            *(v49 + 17) = 0;
            MEMORY[0x1E6923350](*(v49 + 8), *(v19 + 128));
            *(v49 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " response with To: tag that doesn't match any existing fork: ", 61);
            *(v49 + 17) = 0;
            ObfuscatedString::ObfuscatedString(&__p, v35);
            v50 = v145;
            v48 = v147;
            (*(*v49 + 56))(v49, &__p);
            (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_150:
            *(v49 + 17) = 0;
            if (v161 < 0)
            {
              operator delete(v160);
            }

            v10 = v150;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v164 = 0;
            v165 = 0;
LABEL_155:
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            goto LABEL_157;
          }

          if (v145)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v145);
          }

          v60 = *(a1 + 2984);
          v10 = v150;
          v48 = v147;
          if (!v60)
          {
            v166.__r_.__value_.__r.__words[0] = v19;
            v166.__r_.__value_.__l.__size_ = v147;
            if (v147)
            {
              atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v167[0] = v33;
            v167[1] = v148;
            if (v148)
            {
              atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipDialog::addForkFromResponse(&__p, a1, &v166, v167);
            v141 = __p.__r_.__value_.__l.__size_;
            v60 = __p.__r_.__value_.__r.__words[0];
            if (v148)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v148);
            }

            if (v147)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v147);
            }

            goto LABEL_273;
          }

          v61 = (a1 + 2984);
          v62 = *(a1 + 2992);
          v146 = v62;
          if (v62)
          {
            p_shared_owners = &v62->__shared_owners_;
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            v64 = *(a1 + 2992);
            *v61 = 0;
            *(a1 + 2992) = 0;
            if (v64)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v64);
            }

            __p.__r_.__value_.__r.__words[0] = v60;
            __p.__r_.__value_.__l.__size_ = v146;
            atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
            v48 = v147;
          }

          else
          {
            *v61 = 0;
            *(a1 + 2992) = 0;
            *&__p.__r_.__value_.__l.__data_ = v60;
          }

          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v166.__r_.__value_.__r.__words[0] = v33;
          v166.__r_.__value_.__l.__size_ = v148;
          if (v148)
          {
            atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v142 = SipDialog::addForkFromResponse(a1, &__p, v19, v48, &v166);
          if (v148)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }

          if (v147)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v147);
          }

          v141 = v146;
          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v146);
            if (!v142)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v146);
LABEL_271:
              v141 = 0;
              v60 = 0;
            }
          }

          else
          {
            if (!v142)
            {
              goto LABEL_271;
            }

            v141 = 0;
          }

          v48 = v147;
LABEL_273:
          v164 = v60;
          v165 = v141;
LABEL_157:
          if (v148)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          v90 = v164;
          if (!v164)
          {
            goto LABEL_276;
          }

          if ((*(*a2 + 128) - 100) > 0x63)
          {
            goto LABEL_175;
          }

          v91 = SipMessage::header<SipRSeqHeader>(*a2);
          if (!v91 || !v91[15])
          {
            goto LABEL_175;
          }

          v92 = SipMessage::header<SipRSeqHeader>(*a2);
          v93 = v92 ? v92[15] : 0;
          v94 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&v90[32].__r_.__value_.__r.__words[2], (*a3 + 312));
          if (&v90[33] == v94)
          {
            goto LABEL_175;
          }

          v95 = *(v94 + 56);
          if (!v95)
          {
            goto LABEL_175;
          }

          if (v93 <= v95)
          {
            v135 = *(a1 + 16);
            v134 = a1 + 16;
            v136 = (*(v135 + 64))(v134);
            (*(*v134 + 16))(v134, v136);
            v137 = ImsOutStream::operator<<(v136, "ignoring duplicate response rseq=");
            MEMORY[0x1E6923350](*(v137 + 8), v93);
            *(v137 + 17) = 0;
            v138 = ImsOutStream::operator<<(v137, ", cseq=");
            v139 = SipMessage::header<SipCSeqHeader>(*a2);
            if (v139)
            {
              v140 = v139[15];
            }

            else
            {
              v140 = 0;
            }

            MEMORY[0x1E6923350](*(v138 + 8), v140);
            *(v138 + 17) = 0;
            (*(*v138 + 64))(v138, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v138 + 17) = 0;
            goto LABEL_276;
          }

          v96 = v95 + 1;
          if (v93 > v96)
          {
            v98 = *(a1 + 16);
            v97 = a1 + 16;
            v99 = (*(v98 + 64))(v97);
            (*(*v97 + 16))(v97, v99);
            v100 = ImsOutStream::operator<<(v99, "received out-of-order response (rseq=");
            MEMORY[0x1E6923350](*(v100 + 8), v93);
            *(v100 + 17) = 0;
            v101 = ImsOutStream::operator<<(v100, ", expecting ");
            MEMORY[0x1E6923350](*(v101 + 8), v96);
            *(v101 + 17) = 0;
            v102 = ImsOutStream::operator<<(v101, ")");
            (*(*v102 + 64))(v102, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v102[17] = 0;
          }

          else
          {
LABEL_175:
            v103 = (*(*v151 + 120))(v151);
            v104 = *(v103 + 23);
            v105 = v104;
            if ((v104 & 0x80u) != 0)
            {
              v104 = *(v103 + 8);
            }

            if (v104 == 6 && (v105 >= 0 ? (v106 = v103) : (v106 = *v103), (v107 = *v106, v108 = *(v106 + 4), v107 == *"INVITE") ? (v109 = v108 == *"TE") : (v109 = 0), v109 && (*(*a2 + 128) - 200) <= 0x63 && *(a1 + 2840) == 1))
            {
              *(a1 + 2840) = 0;
              SipDialog::collapseForks(a1, &v168.__r_.__value_.__l.__data_);
              v110 = 1;
            }

            else
            {
              v110 = 0;
            }

            v111 = *(*a2 + 128);
            if (v111 == 407 || v111 == 401)
            {
              std::allocate_shared[abi:ne200100]<SipRequest,std::allocator<SipRequest>,SipRequest::EnforcePrivateConstructor,SipRequest const&,0>();
            }

            v112 = SipMessage::header<SipAllowEventsHeader>(*a2);
            if (v112)
            {
              std::__tree<std::string>::destroy(a1 + 2768, *(a1 + 2776));
              *(a1 + 2768) = a1 + 2776;
              *(a1 + 2776) = 0u;
              if (v112 + 64 != (a1 + 2768))
              {
                std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 2768), *(v112 + 8), v112 + 9);
              }
            }

            v113 = (*(*v151 + 120))(v151);
            v114 = *(v113 + 23);
            v115 = v114;
            if ((v114 & 0x80u) != 0)
            {
              v114 = *(v113 + 8);
            }

            if (v114 == 9)
            {
              v116 = v115 >= 0 ? v113 : *v113;
              v117 = *v116;
              v118 = *(v116 + 8);
              if (v117 == *"SUBSCRIBE" && v118 == SipRequest::kMethodSubscribe[8])
              {
                v131 = *a2;
                v132 = a2[1];
                v163[0] = v131;
                v163[1] = v132;
                if (v132)
                {
                  atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v133 = a3[1];
                v162[0] = *a3;
                v162[1] = v133;
                v10 = v150;
                if (v133)
                {
                  atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v15 = SipDialog::handleSubscribeResponse(a1, v163, v162);
                if (v133)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v133);
                }

                if (v132)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v132);
                }

                goto LABEL_277;
              }
            }

            v120 = (*(*v151 + 120))(v151);
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v120, "REFER"))
            {
              SipResponse::asImsResult(*a2, &__p);
              v121 = a3[1];
              v158[0] = *a3;
              v158[1] = v121;
              if (v121)
              {
                atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialog::handleReferResponse(a1, &__p, v158);
              if (v121)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v121);
              }

              ImsResult::~ImsResult(&__p);
            }

            v122 = *(a1 + 2752);
            if (v122)
            {
              v123 = std::__shared_weak_count::lock(v122);
              if (v123)
              {
                v124 = v123;
                v125 = *(a1 + 2744);
                if (v125)
                {
                  v126 = (*(*(a1 + 16) + 64))(a1 + 16);
                  (*(*(a1 + 16) + 16))(a1 + 16, v126);
                  v127 = ImsOutStream::operator<<(v126, "SipDialog::handleResponse");
                  (*(*v127 + 64))(v127, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v127[17] = 0;
                  v128 = a2[1];
                  v156 = *a2;
                  v157 = v128;
                  if (v128)
                  {
                    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v129 = a3[1];
                  v154 = *a3;
                  v155 = v129;
                  if (v129)
                  {
                    atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v125 + 144))(v125, &v156, &v154);
                  if (v155)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v155);
                  }

                  if (v157)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v124);
              }
            }

            if (!v110 || *(a1 + 2960) != 1)
            {
              v15 = 1;
              v10 = v150;
              goto LABEL_277;
            }

            v130 = *(*v144 + 64);
            v153[0] = *(*v144 + 56);
            v153[1] = v130;
            v10 = v150;
            if (v130)
            {
              atomic_fetch_add_explicit(&v130->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            SipDialog::setActiveFork(a1, v153, 1);
            if (v130)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v130);
            }
          }

LABEL_276:
          v15 = 1;
LABEL_277:
          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          goto LABEL_279;
        }

        v37 = a1 + 16;
        v38 = (*(*(a1 + 16) + 48))(a1 + 16);
        (*(*(a1 + 16) + 16))(a1 + 16, v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "incoming ", 9);
        *(v38 + 17) = 0;
        MEMORY[0x1E6923350](*(v38 + 8), *(*a2 + 128));
        *(v38 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " response is missing a To: tag", 30);
        *(v38 + 17) = 0;
        (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v38 + 17) = 0;
        memset(&v166, 0, sizeof(v166));
        if (*(a1 + 2960) == 1)
        {
          v39 = *(a1 + 2944);
          v41 = *(v39 + 56);
          v40 = *(v39 + 64);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            if (v41)
            {
              v42 = *(a1 + 2944);
              v41 = *(v42 + 56);
              v43 = *(v42 + 64);
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_126;
            }
          }

          else if (v41)
          {
            v43 = 0;
LABEL_126:
            std::string::operator=(&v166, v41 + 11);
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }

            v77 = (*(*v37 + 48))(a1 + 16);
            (*(*v37 + 16))(a1 + 16, v77);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v77 + 8), "using tag ", 10);
            *(v77 + 17) = 0;
            ObfuscatedString::ObfuscatedString(&__p, &v166);
            (*(*v77 + 56))(v77, &__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v77 + 8), " from our only fork", 19);
            *(v77 + 17) = 0;
            (*(*v77 + 64))(v77, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v77 + 17) = 0;
            if (v161 < 0)
            {
              operator delete(v160);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

LABEL_140:
            v87 = HIBYTE(v166.__r_.__value_.__r.__words[2]);
            if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v87 = v166.__r_.__value_.__l.__size_;
            }

            if (v87)
            {
              *&__p.__r_.__value_.__l.__data_ = 0uLL;
              v88 = *a2;
              std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
            }

            v89 = (*(*v37 + 48))(a1 + 16);
            (*(*v37 + 16))(v37, v89);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v89 + 8), "ignoring ", 9);
            *(v89 + 17) = 0;
            MEMORY[0x1E6923350](*(v89 + 8), *(*a2 + 128));
            *(v89 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v89 + 8), " response with no To: tag", 25);
            *(v89 + 17) = 0;
            (*(*v89 + 64))(v89, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v89 + 17) = 0;
            v15 = 1;
            if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v166.__r_.__value_.__l.__data_);
            }

            goto LABEL_279;
          }
        }

        if (*(*a2 + 128) >= 0x12Cu)
        {
          if (*(a1 + 2960))
          {
            std::string::operator=(&v166, (*(a1 + 2944) + 32));
            v78 = (*(*v37 + 48))(a1 + 16);
            (*(*v37 + 16))(a1 + 16, v78);
            v79 = ImsOutStream::operator<<(v78, "using tag ");
            (*(*v79 + 32))(v79, &v166);
            v80 = ImsOutStream::operator<<(v79, " from one of our forks for error response");
            (*(*v80 + 64))(v80, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v80[17] = 0;
          }

          else
          {
            ImsRandomStringGenerator::randomString((v9 + 688), 10, &__p);
            v81 = std::string::insert(&__p, 0, "fake-tag-", 9uLL);
            v82 = v81->__r_.__value_.__s.__data_[0];
            *v167 = *(&v81->__r_.__value_.__l.__data_ + 1);
            *(&v167[1] + 6) = *(&v81->__r_.__value_.__r.__words[1] + 7);
            v83 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
            v81->__r_.__value_.__l.__size_ = 0;
            v81->__r_.__value_.__r.__words[2] = 0;
            v81->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v166.__r_.__value_.__l.__data_);
            }

            v166.__r_.__value_.__s.__data_[0] = v82;
            *(&v166.__r_.__value_.__l.__data_ + 1) = *v167;
            *(&v166.__r_.__value_.__r.__words[1] + 7) = *(&v167[1] + 6);
            *(&v166.__r_.__value_.__s + 23) = v83;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v84 = (*(*v37 + 48))(a1 + 16);
            (*(*v37 + 16))(a1 + 16, v84);
            v85 = ImsOutStream::operator<<(v84, "no existing forks. Making up new tag ");
            ObfuscatedString::ObfuscatedString(&__p, &v166);
            (*(*v85 + 56))(v85, &__p);
            v86 = ImsOutStream::operator<<(v85, " for error response");
            (*(*v86 + 64))(v86, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v86[17] = 0;
            ims::AccessNetwork::~AccessNetwork(&__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_140;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *(a1 + 200);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 160) + 16))(&__p, a1 + 160);
    v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(v168.__r_.__value_.__l.__data_) = 141558275;
    *(v168.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(v168.__r_.__value_.__r.__words[1]) = 2081;
    *(&v168.__r_.__value_.__r.__words[1] + 6) = v36;
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v168, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v15 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_285;
  }

LABEL_286:
  v143 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5021438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipAllowEventsHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Allow-Events");
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

uint64_t SipDialog::handleReferResponse(void *a1, const ImsResult *a2, void *a3)
{
  v6 = a1 + 2;
  v7 = (*(a1[2] + 64))(a1 + 2);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handling refer response", 23);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v44 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  v8 = *(*a3 + 264);
  v9 = *(*a3 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipMessage::header<SipCSeqHeader>(v8);
  if (v10)
  {
    v11 = v10[15];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if (v9)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_6:
  MEMORY[0x1E6923350](&v38, v11);
  v36 = 0;
  v37 = 0;
  std::ostringstream::str[abi:ne200100](&v38, &v45);
  SipDialog::subscriptionForEvent(a1, "refer", &v45, &v36);
  if ((v48[6] & 0x80000000) != 0)
  {
    operator delete(v45);
  }

  v12 = v36;
  if (v36)
  {
    v13 = a3[1];
    v34 = *a3;
    v35 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSubscription::handleTransactionResponse(v12, a2, &v34);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    goto LABEL_52;
  }

  v14 = a1 + 337;
  v15 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1 + 337, v11);
  if (v15)
  {
    v16 = v15;
    v17 = v15[4];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = v16[3];
        if (v20)
        {
          ImsResult::ImsResult(v33, a2);
          LazuliGroupModification::handleResponse(v20, v33);
          ImsResult::~ImsResult(v33);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1 + 337, v11);
    if (v21)
    {
      v22 = a1[338];
      v23 = *v21;
      v24 = v21[1];
      v25 = vcnt_s8(v22);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        if (v24 >= *&v22)
        {
          v24 %= *&v22;
        }
      }

      else
      {
        v24 &= *&v22 - 1;
      }

      v27 = *(*v14 + 8 * v24);
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27 != v21);
      if (v28 == a1 + 339)
      {
        goto LABEL_41;
      }

      v29 = v28[1];
      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v22)
        {
          v29 %= *&v22;
        }
      }

      else
      {
        v29 &= *&v22 - 1;
      }

      if (v29 != v24)
      {
LABEL_41:
        if (v23)
        {
          v30 = *(v23 + 8);
          if (v25.u32[0] > 1uLL)
          {
            v31 = *(v23 + 8);
            if (v30 >= *&v22)
            {
              v31 = v30 % *&v22;
            }
          }

          else
          {
            v31 = v30 & (*&v22 - 1);
          }

          if (v31 == v24)
          {
            goto LABEL_45;
          }
        }

        *(*v14 + 8 * v24) = 0;
        v23 = *v21;
      }

      if (!v23)
      {
LABEL_51:
        *v28 = v23;
        *v21 = 0;
        --a1[340];
        v47 = 1;
        memset(v48, 0, sizeof(v48));
        v45 = 0;
        v46 = a1 + 337;
        std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::weak_ptr<LazuliGroupModification>>,void *>>>::operator()[abi:ne200100](&v46, v21);
        goto LABEL_52;
      }

      v30 = *(v23 + 8);
LABEL_45:
      if (v25.u32[0] > 1uLL)
      {
        if (v30 >= *&v22)
        {
          v30 %= *&v22;
        }
      }

      else
      {
        v30 &= *&v22 - 1;
      }

      if (v30 != v24)
      {
        *(*v14 + 8 * v30) = v28;
        v23 = *v21;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v26 = (*(*v6 + 56))(v6);
    (*(*v6 + 16))(v6, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "can't find refer subscription with id ", 38);
    *(v26 + 17) = 0;
    std::ostringstream::str[abi:ne200100](&v38, &v45);
    (*(*v26 + 32))(v26, &v45);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if ((v48[6] & 0x80000000) != 0)
    {
      operator delete(v45);
    }
  }

LABEL_52:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  *&v38 = *MEMORY[0x1E69E54E8];
  *(&v39[-2].__locale_ + *(v38 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v38 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&v40 + 1));
  }

  *(&v38 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v43);
}

void sub_1E5021D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ImsResult::~ImsResult(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::ostringstream::~ostringstream(&a25, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a39);
  _Unwind_Resume(a1);
}

void SipDialog::handleTransactionError(void *a1, const ImsResult *a2, SipTransaction **a3)
{
  v6 = *(*a3 + 33);
  v7 = *(*a3 + 34);
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

  if (v9 != 9)
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
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
  v13 = *(v11 + 8);
  v15 = v12 == *"SUBSCRIBE" && v13 == SipRequest::kMethodSubscribe[8];
  if (v7)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_19:
  v16 = *a3;
  if (v15)
  {
    v17 = a3[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v16 + 33);
    v19 = *(v16 + 34);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = SipMessage::header<SipEventHeader>(v18);
    v21 = v20;
    if (v20)
    {
      v46 = 0;
      v47 = 0;
      v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v20 + 9), &kParameterId);
      if (v21 + 10 == v22)
      {
        v23 = &ims::kEmptyString;
      }

      else
      {
        v23 = (v22 + 56);
      }

      SipDialog::subscriptionForEvent(a1, v21 + 13, v23, &v46);
      v24 = v46;
      if (v46)
      {
        v44 = v16;
        v45 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSubscription::handleTransactionResponse(v24, a2, &v44);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

LABEL_59:
    if (v17)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    return;
  }

  v25 = *(v16 + 33);
  v26 = *(v16 + 34);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = (*(*v25 + 120))(v25);
  v28 = *(v27 + 23);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v27 + 8);
  }

  if (v28 != 5)
  {
    v34 = 0;
    if (!v26)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v29 >= 0)
  {
    v30 = v27;
  }

  else
  {
    v30 = *v27;
  }

  v31 = *v30;
  v32 = *(v30 + 4);
  v34 = v31 == *"REFER" && v32 == SipRequest::kMethodRefer[4];
  if (v26)
  {
LABEL_54:
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

LABEL_55:
  if (v34)
  {
    v35 = *a3;
    v17 = a3[1];
    v43[0] = v35;
    v43[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialog::handleReferResponse(a1, a2, v43);
    goto LABEL_59;
  }

  v36 = a1[344];
  if (v36)
  {
    v37 = std::__shared_weak_count::lock(v36);
    if (v37)
    {
      v38 = v37;
      v39 = a1[343];
      if (v39)
      {
        v40 = a3[1];
        v41 = *a3;
        v42 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v39 + 152))(v39, a2, &v41);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }
}

void sub_1E502214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipDialog::transactionCompleted(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = *v2;
  v6 = **v2;
  if (!v7)
  {
    v14 = *v5;
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v9 = *(a2 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&v44, 0, sizeof(v44));
    v17 = v15[33];
    v18 = v16[34];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = SipMessage::header<SipToHeader>(v17);
    if (v19)
    {
      v20 = SipUriHeader::tag(v19);
    }

    else
    {
      v20 = &ims::kEmptyString;
    }

    if (*(v20 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, *v20, *(v20 + 1));
    }

    else
    {
      v31 = *v20;
      v44.__r_.__value_.__r.__words[2] = *(v20 + 2);
      *&v44.__r_.__value_.__l.__data_ = v31;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v33 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, &v44.__r_.__value_.__l.__data_);
      v34 = v33;
      if (a1 + 2952 != v33)
      {
        v35 = *(v33 + 56);
        v36 = *(v34 + 64);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v35)
        {
          v42 = v16;
          v43 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipDialogFork::handleClientTransactionCompleted(v35, &v42);
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }
      }
    }

    v37 = *(a1 + 2752);
    if (!v37)
    {
      goto LABEL_67;
    }

    v38 = std::__shared_weak_count::lock(v37);
    if (!v38)
    {
      goto LABEL_67;
    }

    v28 = v38;
    v39 = *(a1 + 2744);
    if (!v39)
    {
      goto LABEL_66;
    }

    v40 = v16;
    v41 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v39 + 160))(v39, &v40);
    v30 = v41;
    if (!v41)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v8 = v7;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&v44, 0, sizeof(v44));
  v10 = v7[33];
  v11 = v8[34];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = SipMessage::header<SipFromHeader>(v10);
  if (v12)
  {
    v13 = SipUriHeader::tag(v12);
  }

  else
  {
    v13 = &ims::kEmptyString;
  }

  if (*(v13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *v13, *(v13 + 1));
  }

  else
  {
    v21 = *v13;
    v44.__r_.__value_.__r.__words[2] = *(v13 + 2);
    *&v44.__r_.__value_.__l.__data_ = v21;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v22 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v44.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    v23 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, &v44.__r_.__value_.__l.__data_);
    if (a1 + 2952 != v23)
    {
      v24 = *(v23 + 56);
      v25 = *(v23 + 64);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9 && v24)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }
  }

  v26 = *(a1 + 2752);
  if (!v26)
  {
    goto LABEL_67;
  }

  v27 = std::__shared_weak_count::lock(v26);
  if (!v27)
  {
    goto LABEL_67;
  }

  v28 = v27;
  v29 = *(a1 + 2744);
  if (v29)
  {
    v42 = v8;
    v43 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v29 + 168))(v29, &v42);
    v30 = v43;
    if (v43)
    {
LABEL_65:
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

LABEL_66:
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
LABEL_67:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1E502259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::transactionTerminated(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v34, "sip.dlg");
  v30[0] = 0;
  v33 = 0;
  v5 = ims::debug(v4, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SipDialog::transactionTerminated", 32);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(__p);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  v6 = *a2;
  if (!*a2)
  {
    return;
  }

  v7 = *v6;
  v8 = **v6;
  if (!v9)
  {
    v11 = *v7;
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v10 = *(a2 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28[0] = v12;
    v28[1] = v10;
    SipDialog::removeClientTransaction(a1, v28);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v14 = *(v13 + 33);
    v15 = *(v13 + 34);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(*v14 + 120))(v14);
    v17 = *(v16 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 == 6)
    {
      if (v18 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = *v16;
      }

      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = v20 == *"INVITE" && v21 == *"TE";
      v23 = v22;
      if (!v15)
      {
LABEL_35:
        if (v23)
        {
          v24 = *(a1 + 2944);
          v25 = (a1 + 2952);
          if (v24 != v25)
          {
            do
            {
              std::__tree<std::string>::__erase_unique<std::string>((v24[7] + 784), v13 + 39);
              v26 = v24[1];
              if (v26)
              {
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                do
                {
                  v27 = v24[2];
                  v22 = *v27 == v24;
                  v24 = v27;
                }

                while (!v22);
              }

              v24 = v27;
            }

            while (v27 != v25);
          }
        }

        if (v10)
        {
          goto LABEL_44;
        }

        return;
      }
    }

    else
    {
      v23 = 0;
      if (!v15)
      {
        goto LABEL_35;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_35;
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29[0] = v9;
  v29[1] = v10;
  SipDialog::removeServerTransaction(a1, v29);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E50228F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::addServerTransaction(void *a1, void *a2)
{
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v4 = *a2;
  v5 = (*(**(*a2 + 264) + 120))(*(*a2 + 264));
  SipTransaction::transactionMapKey(v4 + 312, v5, v29);
  v6 = a1 + 2;
  v7 = (*(a1[2] + 64))(a1 + 2);
  (*(a1[2] + 16))(a1 + 2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "adding ", 7);
  *(v7 + 17) = 0;
  (*(**a2 + 152))(&__p);
  (*(*v7 + 40))(v7, &__p);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  v8 = a1 + 357;
  v9 = a1[357];
  if (!v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v29, (v9 + 32)) & 0x80) == 0)
      {
        break;
      }

      v9 = *v10;
      v8 = v10;
      if (!*v10)
      {
        goto LABEL_9;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, v29) & 0x80) == 0)
    {
      break;
    }

    v8 = v10 + 1;
    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v26 = *v8;
  if (!*v8)
  {
LABEL_9:
    operator new();
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v26 + 64);
  *(v26 + 56) = v12;
  *(v26 + 64) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = a1[27];
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    v16 = v15;
    if (v15)
    {
      v17 = a1[26];
      if (v17)
      {
        v18 = *a2;
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *(v18 + 344);
        *(v18 + 336) = v17 + 8;
        *(v18 + 344) = v16;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = (*(*v6 + 56))(a1 + 2);
  (*(*v6 + 16))(a1 + 2, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "DialogManager is NULL. Can't add server transaction", 51);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v16)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v21 = a1[344];
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = v22;
      v24 = a1[343];
      if (v24)
      {
        v25 = a2[1];
        v27 = *a2;
        v28 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v24 + 232))(v24, &v27);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_1E5022DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipDialog::serverTransactionWithIdAndMethod(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  SipTransaction::transactionMapKey(a2, a3, __p);
  v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2848, __p);
  if (a1 + 2856 == v6)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v7 = *(v6 + 64);
    *a4 = *(v6 + 56);
    a4[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5022ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::currentClientTransactions(uint64_t a1, uint64_t a2, const void **a3, uint64_t *a4)
{
  v4 = *(a1 + 2872);
  v5 = (a1 + 2880);
  if (v4 != (a1 + 2880))
  {
    do
    {
      v10 = v4[7];
      v9 = v4[8];
      *&v35 = v10;
      *(&v35 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a3)
      {
        v11 = *(v10 + 264);
        v12 = *(v10 + 272);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = (*(*v11 + 120))(v11);
        v14 = *(a3 + 23);
        if (v14 >= 0)
        {
          v15 = *(a3 + 23);
        }

        else
        {
          v15 = a3[1];
        }

        v16 = *(v13 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v13 + 8);
        }

        if (v15 != v16)
        {
LABEL_44:
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          goto LABEL_46;
        }

        if (v14 >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        if (v17 >= 0)
        {
          v19 = v13;
        }

        else
        {
          v19 = *v13;
        }

        v20 = memcmp(v18, v19, v15);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (v20)
        {
          goto LABEL_46;
        }
      }

      v21 = *a4;
      if (!*a4)
      {
        goto LABEL_43;
      }

      v22 = *(v10 + 264);
      v12 = *(v10 + 272);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = SipMessage::header<SipToHeader>(v22);
      if (v23)
      {
        v24 = SipUriHeader::tag(v23);
      }

      else
      {
        v24 = &ims::kEmptyString;
      }

      v25 = *(v21 + 287);
      if (v25 >= 0)
      {
        v26 = *(v21 + 287);
      }

      else
      {
        v26 = *(v21 + 272);
      }

      v27 = *(v24 + 23);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v24 + 1);
      }

      if (v26 != v27)
      {
        goto LABEL_44;
      }

      if (v25 >= 0)
      {
        v29 = (v21 + 264);
      }

      else
      {
        v29 = *(v21 + 264);
      }

      if (v28 >= 0)
      {
        v30 = v24;
      }

      else
      {
        v30 = *v24;
      }

      v31 = memcmp(v29, v30, v26);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (!v31)
      {
LABEL_43:
        std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](a2, &v35);
      }

LABEL_46:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v32 = v4[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v4[2];
          v34 = *v33 == v4;
          v4 = v33;
        }

        while (!v34);
      }

      v4 = v33;
    }

    while (v33 != v5);
  }
}

void sub_1E50230FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::currentServerTransactions(uint64_t a1, uint64_t a2, const void **a3, uint64_t *a4)
{
  v4 = *(a1 + 2848);
  v5 = (a1 + 2856);
  if (v4 != (a1 + 2856))
  {
    do
    {
      v10 = v4[7];
      v9 = v4[8];
      *&v35 = v10;
      *(&v35 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a3)
      {
        v11 = *(v10 + 264);
        v12 = *(v10 + 272);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = (*(*v11 + 120))(v11);
        v14 = *(a3 + 23);
        if (v14 >= 0)
        {
          v15 = *(a3 + 23);
        }

        else
        {
          v15 = a3[1];
        }

        v16 = *(v13 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v13 + 8);
        }

        if (v15 != v16)
        {
LABEL_44:
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          goto LABEL_46;
        }

        if (v14 >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        if (v17 >= 0)
        {
          v19 = v13;
        }

        else
        {
          v19 = *v13;
        }

        v20 = memcmp(v18, v19, v15);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (v20)
        {
          goto LABEL_46;
        }
      }

      v21 = *a4;
      if (!*a4)
      {
        goto LABEL_43;
      }

      v22 = *(v10 + 264);
      v12 = *(v10 + 272);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = SipMessage::header<SipFromHeader>(v22);
      if (v23)
      {
        v24 = SipUriHeader::tag(v23);
      }

      else
      {
        v24 = &ims::kEmptyString;
      }

      v25 = *(v21 + 287);
      if (v25 >= 0)
      {
        v26 = *(v21 + 287);
      }

      else
      {
        v26 = *(v21 + 272);
      }

      v27 = *(v24 + 23);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v24 + 1);
      }

      if (v26 != v27)
      {
        goto LABEL_44;
      }

      if (v25 >= 0)
      {
        v29 = (v21 + 264);
      }

      else
      {
        v29 = *(v21 + 264);
      }

      if (v28 >= 0)
      {
        v30 = v24;
      }

      else
      {
        v30 = *v24;
      }

      v31 = memcmp(v29, v30, v26);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (!v31)
      {
LABEL_43:
        std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](a2, &v35);
      }

LABEL_46:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v32 = v4[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v4[2];
          v34 = *v33 == v4;
          v4 = v33;
        }

        while (!v34);
      }

      v4 = v33;
    }

    while (v33 != v5);
  }
}

void sub_1E5023338(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialog::sendQueuedResponseInTransaction(SipDialog *a1@<X0>, std::__shared_weak_count **a2@<X1>, std::__shared_weak_count **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (a1 + 16);
  v8 = (*(*(a1 + 2) + 64))(a1 + 2);
  (*(*v7 + 16))(v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SipDialog::sendQueuedResponseInTransaction", 42);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = SipMessage::header<SipCSeqHeader>(v10);
  v14 = (v13 + 64);
  if (!v13)
  {
    v14 = &ims::kEmptyString;
  }

  v15 = *(v14 + 23);
  v16 = *(v14 + 1);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  if (!v16)
  {
    v17 = v11[11].__vftable;
    shared_owners = v11[11].__shared_owners_;
    v64 = v17;
    v65 = shared_owners;
    if (shared_owners)
    {
      atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipResponse::copyHeadersFromRequest(v10, &v64);
    if (shared_owners)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
    }
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v62 = v10;
  v63 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::fillContactHeader(&v55, a1, &v62);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((*(**(&v55 + 1) + 24))(*(&v55 + 1), v56))
  {
    ImsResult::operator<<<char [33]>(&v55, "Contact Header generation failed");
  }

  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = SipMessage::header<SipToHeader>(v10);
  if (v19)
  {
    v20 = SipUriHeader::tag(v19);
  }

  else
  {
    v20 = &ims::kEmptyString;
  }

  v21 = *(v20 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(v20 + 1);
  }

  if (!v21)
  {
    v22 = SipMessage::header<SipToHeader>(v10, 1);
    SipUriHeader::setTag(v22, a1 + 1912);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((*(**(&v55 + 1) + 24))(*(&v55 + 1), v56))
  {
    v23 = (*(*v7 + 56))(v7);
    (*(*v7 + 16))(v7, v23);
    (*(v55 + 16))(&v55, v23);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v23[17] = 0;
    ImsResult::ImsResult(a4, &v55);
    goto LABEL_97;
  }

  v25 = *a2;
  v24 = a2[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = *a3;
  v26 = a3[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = SipMessage::header<SipFromHeader>(v25);
  if (v28)
  {
    v29 = SipUriHeader::tag(v28);
  }

  else
  {
    v29 = &ims::kEmptyString;
  }

  v30 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 2944, v29);
  if ((a1 + 2952) == v30)
  {
    v31 = 0;
    v51 = 0;
  }

  else
  {
    v31 = *(v30 + 64);
    v51 = *(v30 + 56);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }
  }

  SipDialog::sipSession(a1, &v64);
  v32 = v65;
  if (v65)
  {
    v50 = v27;
    v33 = std::__shared_weak_count::lock(v65);
    if (v33)
    {
      v34 = v64;
    }

    else
    {
      v34 = 0;
    }

    std::__shared_weak_count::__release_weak(v32);
    if (v51)
    {
      if (!v34)
      {
        goto LABEL_85;
      }

      if ((SipSession::confirmed(v34) & 1) == 0)
      {
        v35 = v50[11].__vftable;
        v36 = v50[11].__shared_owners_;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v49 = v36;
        v37 = (*(v35->~__shared_weak_count + 15))(v35);
        v38 = *(v37 + 23);
        v39 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v38 = *(v37 + 8);
        }

        if (v38 != 6 || (v39 >= 0 ? (v40 = v37) : (v40 = *v37), (v41 = *v40, v42 = *(v40 + 4), v41 == *"INVITE") ? (v43 = v42 == *"TE") : (v43 = 0), !v43))
        {
          v44 = 0;
          v45 = v49;
          if (!v49)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        v48 = *(v25 + 128) - 200;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v48 <= 0x63)
        {
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          *(a1 + 371) = v51;
          v45 = *(a1 + 372);
          v44 = 1;
          *(a1 + 372) = v31;
          if (v45)
          {
LABEL_68:
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

LABEL_71:
          v64 = v25;
          v65 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = v50;
          v63 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v34 + 176))(v34, &v64, &v62);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            if ((v44 & 1) == 0)
            {
LABEL_85:
              if (v33)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }

              goto LABEL_87;
            }
          }

          else if (!v44)
          {
            goto LABEL_85;
          }

          v61[0] = v51;
          v61[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          SipDialog::setActiveFork(a1, v61, 1);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          goto LABEL_85;
        }
      }
    }

    else if (!v34)
    {
      goto LABEL_85;
    }

    v44 = 0;
    goto LABEL_71;
  }

LABEL_87:
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v46 = *a3;
  v47 = a2[1];
  v53 = *a2;
  v54 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (v46->__vftable[4].~__shared_weak_count)(v46, &v53, 0);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

LABEL_97:
  ImsResult::~ImsResult(&v55);
}

void sub_1E5023A14(_Unwind_Exception *a1, std::__shared_weak_count *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (!v9)
    {
LABEL_5:
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v9)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (!v8)
  {
LABEL_6:
    if (!v7)
    {
LABEL_12:
      ImsResult::~ImsResult(va);
      _Unwind_Resume(a1);
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_12;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (!v7)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void SipDialog::sendRequest(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v11 = a1[370];
    if (v11 == 1)
    {
      v37 = a1[368];
      v9 = *(v37 + 56);
      v10 = *(v37 + 64);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_49;
    }

    if (v11)
    {
      v38 = a1 + 2;
      v39 = (*(a1[2] + 56))(a1 + 2);
      (*(*v38 + 16))(v38, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "sendRequest: no remote tag specified, and we have multiple forks", 64);
      *(v39 + 17) = 0;
      (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v39 + 17) = 0;
    }

    else
    {
      v12 = (*(**a2 + 120))();
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v13 == 6)
      {
        v15 = v14 >= 0 ? v12 : *v12;
        v16 = *v15;
        v17 = *(v15 + 4);
        if (v16 == *"INVITE" && v17 == *"TE")
        {
          goto LABEL_48;
        }
      }

      v19 = (*(**a2 + 120))();
      v20 = *(v19 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v19 + 8);
      }

      if (v20 == 9)
      {
        v22 = v21 >= 0 ? v19 : *v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        if (v23 == *"SUBSCRIBE" && v24 == SipRequest::kMethodSubscribe[8])
        {
          goto LABEL_48;
        }
      }

      v26 = (*(**a2 + 120))();
      v27 = *(v26 + 23);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v26 + 8);
      }

      if (v27 == 7)
      {
        v29 = v28 >= 0 ? v26 : *v26;
        v30 = *v29;
        v31 = *(v29 + 3);
        if (v30 == *"OPTIONS" && v31 == *"IONS")
        {
LABEL_48:
          v9 = 0;
          v10 = 0;
          goto LABEL_49;
        }
      }

      v34 = a1[2];
      v33 = a1 + 2;
      v35 = (*(v34 + 56))(v33);
      (*(*v33 + 16))(v33, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "can't send ", 11);
      *(v35 + 17) = 0;
      v36 = (*(**a2 + 120))();
      (*(*v35 + 32))(v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), " request without specifying a remote tag", 40);
      *(v35 + 17) = 0;
      (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v35 + 17) = 0;
    }

    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 368), a3);
  if (a1 + 369 != v8)
  {
    v9 = *(v8 + 56);
    v10 = *(v8 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9)
    {
      goto LABEL_43;
    }

LABEL_49:
    v40 = *a2;
    v41 = a2[1];
    v43[0] = v40;
    v43[1] = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42[0] = v9;
    v42[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialog::sendRequestInFork(a4, a1, v43, v42);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    goto LABEL_57;
  }

  v10 = 0;
LABEL_43:
  *a4 = 0;
  a4[1] = 0;
LABEL_57:
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E5023FAC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  goto LABEL_5;
}

void SipDialog::sendAck(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ImsResult *a4@<X8>)
{
  v6 = a1[29];
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = a1[28];
      if (v10)
      {
        if (a1[370] == 1)
        {
          v11 = a1[368];
          v12 = *(v11 + 56);
          v13 = *(v11 + 64);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v13 = 0;
        }

        v15 = (*(a1[2] + 56))(a1 + 2);
        (*(a1[2] + 16))(a1 + 2, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "attempted to send an ACK when we have ", 38);
        *(v15 + 17) = 0;
        MEMORY[0x1E6923370](*(v15 + 8), a1[370]);
        *(v15 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " forks", 6);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v12 = 0;
        *(v15 + 17) = 0;
LABEL_14:
        memset(v37, 0, 88);
        v16 = *(a2 + 8);
        v36[0] = *a2;
        v36[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
        }

        v35[0] = v12;
        v35[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipDialog::fillCommonRequestHeaders(v37, a1, v36, v35);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if ((*(**(&v37[0] + 1) + 24))(*(&v37[0] + 1), LODWORD(v37[1])))
        {
          v18 = a1[2];
          v17 = a1 + 2;
          v19 = (*(v18 + 56))(v17);
          (*(*v17 + 16))(v17, v19);
          (*(*&v37[0] + 16))(v37, v19);
          (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v19[17] = 0;
          ImsResult::ImsResult(a4, v37);
        }

        else
        {
          v20 = *a2;
          v21 = *(*a3 + 264);
          v22 = *(*a3 + 272);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = SipMessage::header<SipCSeqHeader>(v21);
          if (v23)
          {
            v24 = v23[15];
          }

          else
          {
            v24 = 0;
          }

          SipRequest::setCSeq(v20, v24);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v25 = *(*a3 + 112);
          if (v25)
          {
            v26 = *(*a3 + 104);
            atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v27 = std::__shared_weak_count::lock(v25);
            if (!v27)
            {
              v26 = 0;
            }

            std::__shared_weak_count::__release_weak(v25);
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          v28 = *(v10 + 264);
          v29 = *(v10 + 272);
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = *a2;
          v31 = *(a2 + 8);
          v34[0] = v30;
          v34[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = v26;
          v33 = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipTransactionLayer::sendAck(v28, v34, &v32, a4);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        ImsResult::~ImsResult(v37);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  memset(&v37[1] + 8, 0, 64);
  *&v37[0] = &unk_1F5EBDEF8;
  *(&v37[0] + 1) = &_bambiDomain;
  LODWORD(v37[1]) = 1073741826;
  v14 = ImsResult::operator<<<char [12]>(v37, "no sipstack");
  ImsResult::ImsResult(a4, v14);
  ImsResult::~ImsResult(v37);
  if (v9)
  {
LABEL_52:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5024470(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
    if (!v11)
    {
LABEL_3:
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (!v13)
  {
LABEL_4:
    if (!v12)
    {
LABEL_10:
      ImsResult::~ImsResult(va);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      _Unwind_Resume(a1);
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    goto LABEL_10;
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void SipDialog::sendResponse(uint64_t a1@<X0>, ImsResult *a2@<X8>)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 224);
      if (v6)
      {
        v7 = *(v6 + 248);
        v8 = *(v6 + 256);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v11[0] = 0;
          v11[1] = 0;
          SipResponse::create(v11);
        }

        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v12 = &unk_1F5EBDEF8;
        v13 = &_bambiDomain;
        v14 = 1073741826;
        v10 = ImsResult::operator<<<char [14]>(&v12, "no user agent");
        ImsResult::ImsResult(a2, v10);
        ImsResult::~ImsResult(&v12);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = &unk_1F5EBDEF8;
  v13 = &_bambiDomain;
  v14 = 1073741826;
  v9 = ImsResult::operator<<<char [12]>(&v12, "no sipstack");
  ImsResult::ImsResult(a2, v9);
  ImsResult::~ImsResult(&v12);
  if (v5)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5024950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (!v21)
    {
      goto LABEL_10;
    }
  }

  else if (!v21)
  {
LABEL_10:
    if (*(v24 - 81) < 0)
    {
      operator delete(*(v24 - 104));
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  goto LABEL_10;
}

BOOL SipDialog::remoteSideAllowsEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2768);
  v3 = (a1 + 2776);
  if (v2 == (a1 + 2776))
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  do
  {
    if (*(v2 + 55) >= 0)
    {
      v5 = (v2 + 4);
    }

    else
    {
      v5 = v2[4];
    }

    v6 = strcasecmp(v4, v5);
    result = v6 == 0;
    if (!v6)
    {
      break;
    }

    v8 = v2[1];
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
        v9 = v2[2];
        v10 = *v9 == v2;
        v2 = v9;
      }

      while (!v10);
    }

    v2 = v9;
  }

  while (v9 != v3);
  return result;
}

BOOL SipDialog::remoteSideAllows(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2792);
  v3 = (a1 + 2800);
  if (v2 != (a1 + 2800))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    while (1)
    {
      v5 = *(v2 + 55) >= 0 ? (v2 + 4) : v2[4];
      if (!strcasecmp(v5, v4))
      {
        break;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void *SipDialog::printSubscriptions(void *this, ImsOutStream *a2, int a3)
{
  if (this[364])
  {
    v3 = this[362];
    v4 = this + 363;
    if (v3 != this + 363)
    {
      do
      {
        v7 = v3[7];
        v8 = v3[8];
        while (v7 != v8)
        {
          v9 = *v7;
          v7 += 2;
          SipSubscription::printSubscriptionInfo(v9, a2, a3);
          this = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(a2 + 17) = 0;
        }

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
      }

      while (v11 != v4);
    }
  }

  return this;
}

ImsOutStream *SipDialog::printDialogInfo(SipDialog *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  MO/MT:           ", 19);
  *(a2 + 17) = 0;
  if (*(this + 2816))
  {
    v4 = "MO";
  }

  else
  {
    v4 = "MT";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v4, 2);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Call ID:         ", 19);
  *(a2 + 17) = 0;
  (*(*(this + 293) + 16))(this + 2344, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Conversation ID:         ", 27);
  *(a2 + 17) = 0;
  (*(*(this + 307) + 16))(this + 2456, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Contribution ID:         ", 27);
  *(a2 + 17) = 0;
  (*(*(this + 314) + 16))(this + 2512, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v5 = *(this + 2623);
  if (v5 < 0)
  {
    v5 = *(this + 326);
  }

  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  In-Reply-To Contribution ID:         ", 39);
    *(a2 + 17) = 0;
    (*(*(this + 321) + 16))(this + 2568, a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  v6 = *(this + 2455);
  if (v6 < 0)
  {
    v6 = *(this + 305);
  }

  if (v6)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Session ID:      ", 19);
    *(a2 + 17) = 0;
    (*(*(this + 300) + 16))(this + 2400, a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Remote URI:      ", 19);
  *(a2 + 17) = 0;
  (*(*(this + 30) + 40))(this + 240, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (*(this + 1056) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Sender identity: ", 19);
    *(a2 + 17) = 0;
    (*(*(this + 81) + 40))(this + 648, a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  v7 = *(this + 1503);
  if (v7 < 0)
  {
    v7 = *(this + 186);
  }

  if (v7)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Sender name:     ", 19);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 1480);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Local tag:       ", 19);
  *(a2 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v30, (this + 1912));
  (*(*a2 + 56))(a2, v30);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v8 = *(this + 368);
  if (v8 != (this + 2952))
  {
    do
    {
      v10 = *(v8 + 7);
      v9 = *(v8 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Fork ", 7);
      *(a2 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v30, v10 + 11);
      (*(*a2 + 56))(a2, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ":", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      SipDialogFork::printForkInfo(v10, a2);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v11 = *(v8 + 1);
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
          v12 = *(v8 + 2);
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != (this + 2952));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Client txns:    ", 18);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 361));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v14 = *(this + 359);
  if (v14 != (this + 2880))
  {
    while (1)
    {
      v16 = *(v14 + 7);
      v15 = *(v14 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*v16 + 144))(v30, v16);
      (*(*a2 + 40))(a2, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      v17 = (*(*v16 + 24))(v16);
      v18 = (*(*v16 + 16))(v16, v17);
      LoggableString::LoggableString(&v34, v18);
      (*(*a2 + 40))(a2, &v34);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v31 < 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_44;
      }

LABEL_45:
      v19 = *(v14 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v14 + 2);
          v13 = *v20 == v14;
          v14 = v20;
        }

        while (!v13);
      }

      v14 = v20;
      if (v20 == (this + 2880))
      {
        goto LABEL_54;
      }
    }

    operator delete(v30[0]);
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_45;
  }

LABEL_54:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Server txns:    ", 18);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 358));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v21 = *(this + 356);
  v22 = this + 2856;
  if (v21 != this + 2856)
  {
    while (1)
    {
      v24 = *(v21 + 7);
      v23 = *(v21 + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*v24 + 152))(v30, v24);
      (*(*a2 + 40))(a2, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      v25 = (*(*v24 + 24))(v24);
      v26 = (*(*v24 + 16))(v24, v25);
      LoggableString::LoggableString(&v34, v26);
      (*(*a2 + 40))(a2, &v34);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v31 < 0)
      {
        break;
      }

      if (v23)
      {
        goto LABEL_61;
      }

LABEL_62:
      v27 = *(v21 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v21 + 2);
          v13 = *v28 == v21;
          v21 = v28;
        }

        while (!v13);
      }

      v21 = v28;
      if (v28 == v22)
      {
        return a2;
      }
    }

    operator delete(v30[0]);
    if (!v23)
    {
      goto LABEL_62;
    }

LABEL_61:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    goto LABEL_62;
  }

  return a2;
}

void SipDialog::handleAuthChallengeResponse(std::string *this, const SipAuthInfoInterface *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = this[9].__r_.__value_.__r.__words[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      size = this[9].__r_.__value_.__l.__size_;
      if (size)
      {
        v7 = *(size + 248);
        v6 = *(size + 256);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          if (this[117].__r_.__value_.__r.__words[2])
          {
            SipDialog::resetIfNecessary(this);
            v8 = (*(this->__r_.__value_.__r.__words[2] + 64))(&this->__r_.__value_.__s.__data_[16]);
            (*(this->__r_.__value_.__r.__words[2] + 16))(&this->__r_.__value_.__s.__data_[16], v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "resending ", 10);
            v9 = &this[117].__r_.__value_.__r.__words[2];
            *(v8 + 17) = 0;
            v10 = (*(*this[117].__r_.__value_.__r.__words[2] + 120))(this[117].__r_.__value_.__r.__words[2]);
            LoggableString::LoggableString(&v30, v10);
            (*(*v8 + 40))(v8, &v30);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " request with auth info", 23);
            *(v8 + 17) = 0;
            (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v8 + 17) = 0;
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            v11 = this[117].__r_.__value_.__r.__words[2];
            data = this[118].__r_.__value_.__l.__data_;
            if (data)
            {
              atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
              v13 = this[118].__r_.__value_.__l.__data_;
              *v9 = 0;
              this[118].__r_.__value_.__r.__words[0] = 0;
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }
            }

            else
            {
              *v9 = 0;
              this[118].__r_.__value_.__r.__words[0] = 0;
            }

            v21 = *(v7 + 368);
            v22 = *(v7 + 376);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v27 = v11;
            v28 = data;
            if (data)
            {
              atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v21 + 48))(v29);
            ImsResult::~ImsResult(v29);
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            v24[0] = v11;
            v24[1] = data;
            if (data)
            {
              atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&v30, &str_25_3);
            SipDialog::sendRequest(this, v24, &v30, &v25);
            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            if (data)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](data);
              std::__shared_weak_count::__release_shared[abi:ne200100](data);
            }
          }

          else
          {
            v18 = this->__r_.__value_.__r.__words[2];
            v17 = &this->__r_.__value_.__s.__data_[16];
            v19 = (*(v18 + 56))(v17);
            (*(*v17 + 16))(v17, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received an auth response with no pending request", 49);
            *(v19 + 17) = 0;
            (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v19 + 17) = 0;
          }
        }

        else
        {
          v15 = this[8].__r_.__value_.__l.__size_;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            (*(this[6].__r_.__value_.__r.__words[2] + 16))(&v30, &this[6].__r_.__value_.__s.__data_[16]);
            v16 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
            *buf = 141558275;
            v32 = 1752392040;
            v33 = 2081;
            v34 = v16;
            _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

LABEL_48:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_49;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = this[8].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    (*(this[6].__r_.__value_.__r.__words[2] + 16))(&v30, &this[6].__r_.__value_.__s.__data_[16]);
    v20 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v20;
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  if (v4)
  {
    goto LABEL_48;
  }

LABEL_49:
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E5025E28(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialog::handleAuthChallengeTimeout(SipDialog *this, const SipAuthInfoInterface *a2)
{
  if (!*(this + 353))
  {
    v6 = this + 16;
    v7 = (*(*(this + 2) + 56))(this + 16, a2);
    (*(*v6 + 16))(v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "received an auth timeout with no pending request", 48);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    return;
  }

  v3 = *(this + 344);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4 || (v5 = *(this + 343)) == 0)
  {
LABEL_8:
    SipDialog::forceDeinitialization(this);
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  (*(*v5 + 184))(v5);
LABEL_9:

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void SipDialog::checkTimers(SipDialog *this)
{
  if (*(this + 364))
  {
    v7 = 0;
    v8[0] = 0;
    v8[1] = 0;
    std::map<std::string,std::vector<std::shared_ptr<SipSubscription>>>::map[abi:ne200100](&v7, this + 2896);
    v1 = v7;
    if (v7 != v8)
    {
      do
      {
        v2 = v1[7];
        v3 = v1[8];
        while (v2 != v3)
        {
          SipSubscription::checkTimers(*v2);
          v2 += 2;
        }

        v4 = v1[1];
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
            v5 = v1[2];
            v6 = *v5 == v1;
            v1 = v5;
          }

          while (!v6);
        }

        v1 = v5;
      }

      while (v5 != v8);
    }

    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(&v7, v8[0]);
  }
}

uint64_t SipDialog::determineIncomingMessageCategory(SipDialog *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(**a2 + 120))();
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 == 3)
  {
    v9 = v8 >= 0 ? v6 : *v6;
    v10 = *v9;
    v11 = *(v9 + 2);
    if (v10 == SipRequest::kMethodAck && v11 == BYTE2(SipRequest::kMethodAck))
    {
      SipDialog::sipSession(a1, &v31);
      v23 = v32;
      if (v32)
      {
        v24 = std::__shared_weak_count::lock(v32);
        if (v24)
        {
          v25 = v24;
          v26 = v31;
          std::__shared_weak_count::__release_weak(v23);
          if (v26)
          {
            if (*(v26 + 1448))
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v21 = v25;
LABEL_27:
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            return v20;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          std::__shared_weak_count::__release_weak(v23);
        }
      }
    }
  }

  v13 = SipMessage::header<SipEventHeader>(*a2);
  if (v13)
  {
    v14 = v13;
    v31 = 0;
    v32 = 0;
    v15 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v13 + 9), &kParameterId);
    if (v14 + 10 == v15)
    {
      v16 = &ims::kEmptyString;
    }

    else
    {
      v16 = (v15 + 56);
    }

    SipDialog::subscriptionForEvent(a1, v14 + 13, v16, &v31);
    v17 = v31;
    if (v31)
    {
      v18 = a2[1];
      v29 = *a2;
      v30 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = a3[1];
      v27 = *a3;
      v28 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = SipSubscription::determineIncomingMessageCategory(v17, &v29, &v27);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v32;
    if (v32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    return 0;
  }

  return v20;
}

void sub_1E5026304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

  _Unwind_Resume(exception_object);
}

uint64_t SipDialog::hasActiveSession(SipDialog *this)
{
  v2 = *(this + 344);
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
  v5 = *(this + 343);
  if (v5)
  {
    v6 = (*(*v5 + 264))(v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void std::__optional_storage_base<SipUri,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SipUri,false>>(SipUri *a1, unsigned __int8 *a2)
{
  if (*(a1 + 408) == a2[408])
  {
    if (*(a1 + 408))
    {

      SipUri::operator=(a1, a2);
    }
  }

  else if (*(a1 + 408))
  {
    SipUri::~SipUri(a1);
    *(v2 + 408) = 0;
  }

  else
  {
    SipUri::SipUri(a1, a2);
    *(v3 + 408) = 1;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<SipSubscription>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ims::SharedLoggable<SipDialog>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipDialog>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipDialogFork>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipDialogFork>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void sub_1E50268FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::map<std::string,std::vector<std::shared_ptr<SipSubscription>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::shared_ptr<SipSubscription>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::vector<std::shared_ptr<SipSubscription>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<SipSubscription>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<SipSubscription>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    if (!((v7 >> 4) >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<SipSubscription>>>(v7 >> 4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_1E5026C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void *VZWRegistrationPolicy::VZWRegistrationPolicy(void *a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  DefaultRegistrationPolicy::DefaultRegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5EE9608;
  a1[17] = &unk_1F5EE9860;
  a1[18] = &unk_1F5EE9890;
  a1[19] = &unk_1F5EE98A8;
  return a1;
}

void sub_1E5026D20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void VZWRegistrationPolicy::emergencyRegistrationTimeout(VZWRegistrationPolicy *this)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = &unk_1F5EBDEF8;
  v14 = &_bambiDomain;
  v15 = 1073741830;
  v2 = *(this + 57);
  if (v2 && v2 != *(this + 58))
  {
    ImsResult::operator=(v2 + 496 * *(this + 60) + 408, &v13);
  }

  ImsResult::~ImsResult(&v13);
  SipRegistrationPolicy::clearAllThrottling(this);
  v3 = (*(*this + 64))(this);
  (*(*this + 16))(this, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "emergency registration timed out for current proxy", 50);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  SipRegistrationPolicy::printProxyErrors(this, v4, 2);
  if ((*(*this + 408))(this, 0, 200))
  {
    (*(*this + 504))(this);
    v5 = *(this + 50);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 49);
        if (v8)
        {
          (*(*v8 + 40))(v8, 200);
        }

LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  else
  {
    v9 = *(this + 50);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v7 = v10;
        v11 = *(this + 49);
        if (v11)
        {
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v13 = &unk_1F5EBDEF8;
          v14 = &_bambiDomain;
          v15 = 1073741842;
          v12 = ImsResult::operator<<<char [31]>(&v13, "Emergency registration timeout");
          (*(*v11 + 88))(v11, v12);
          ImsResult::~ImsResult(&v13);
        }

        goto LABEL_13;
      }
    }
  }
}

uint64_t VZWRegistrationPolicy::handleRegistrationError(SipRegistrationPolicy *a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  SipResponse::asImsResult(*a2, v9);
  if ((*(*a1 + 536))(a1))
  {
    if ((*(*a1 + 408))(a1, 0, 200) && *(a1 + 220) == 1)
    {
      v4 = SipRegistrationPolicy::handleGeneralError(a1, v9);
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v5 = *(a2 + 8);
    v7 = *a2;
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = SipRegistrationPolicy::handleRegistrationError(a1, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  ImsResult::~ImsResult(v9);
  return v4;
}

void sub_1E50271C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t VZWRegistrationPolicy::handleGeneralErrorFromOneProxy(VZWRegistrationPolicy *this, const ImsResult *a2)
{
  v4 = (*(*this + 536))(this);
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  if (v4)
  {
    SipRegistrationPolicy::printProxyErrors(this, v5, 2);
    if ((*(*this + 408))(this, 0, 200))
    {
      v6 = (*(*this + 320))(this);
      v7 = *(*this + 488);

      return v7(this, a2, 0, v6);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleGeneralErrorFromOneProxy: getting from policy SipRegClientRegType::", 73);
    *(v5 + 17) = 0;
    SipRegistrationPolicy::getClientRegTypeStr(this, __p);
    (*(*v5 + 32))(v5, __p);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 593) != 2)
    {
      v9 = (*(*this + 64))(this);
      (*(*this + 16))(this, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handle result.code ", 19);
      *(v9 + 17) = 0;
      MEMORY[0x1E6923340](*(v9 + 8), *(a2 + 4));
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (*(a2 + 4) == 482)
      {
        v10 = (*(*this + 64))(this);
        (*(*this + 16))(this, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "need to switch proxy", 20);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        *(this + 220) = 1;
      }
    }

    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }
}

void sub_1E50275C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZWRegistrationPolicy::handleGeneralErrorFromAllProxies(VZWRegistrationPolicy *this, const ImsResult *a2)
{
  v4 = *(this + 2169);
  v5 = *(this + 57);
  for (i = *(this + 58); v5 != i; v5 += 496)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    SipUri::SipUri(v10, v5);
    ImsResult::ImsResult((&v11 + 8), (v5 + 408));
    if (v12 != &SipResultDomain::_domain || !SipResponseCodeMap::containsResponseCodeForMethod(this + 1984, "REGISTER", WORD4(v12), 0))
    {
      v4 = 0;
    }

    ImsResult::~ImsResult((&v11 + 8));
    SipUri::~SipUri(v10);
  }

  v7 = *this;
  if ((v4 & 1) == 0)
  {
    return (*(v7 + 136))(this, a2);
  }

  v8 = (*(v7 + 48))(this);
  (*(*this + 16))(this, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Timing out registration due to error responses from all proxies.", 64);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  return -1;
}

void sub_1E50277D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ImsResult::~ImsResult((v9 + 408));
  SipUri::~SipUri(&a9);
  _Unwind_Resume(a1);
}

uint64_t VZWRegistrationPolicy::generalErrorRetryInterval(VZWRegistrationPolicy *this)
{
  if ((*(*this + 536))(this))
  {
    return 0;
  }

  return DefaultRegistrationPolicy::generalErrorRetryInterval(this);
}

uint64_t VZWRegistrationPolicy::isRegistrationRetryAllowed(SipRegistrationPolicy *a1)
{
  if (!(*(*a1 + 536))(a1) || 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 58) - *(a1 + 57)) >> 4) != SipRegistrationPolicy::countOfProxiesWithErrors(a1))
  {
    return 1;
  }

  v2 = *(**(a1 + 282) + 16);

  return v2();
}

void VZWRegistrationPolicy::onInterfaceChanged(VZWRegistrationPolicy *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Network interface changed. Clearing throttling, failure flags and resetting proxy offset.", 89);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  (*(*this + 568))(this);
  SipRegistrationPolicy::clearAllThrottling(this);

  SipRegistrationPolicy::setProxyOffset(this, 0);
}

void VZWRegistrationPolicy::onProxyListChanged(SipRegistrationPolicy *a1, const SipUri *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Proxy list changed.  Clearing throttling and resetting proxy offset...", 70);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  SipRegistrationPolicy::clearAllThrottling(a1);
  if (*(a2 + 408) != 1)
  {
    goto LABEL_6;
  }

  v5 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "In the current (old) proxy list, current proxy is #", 51);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923370](*(v5 + 8), *(a1 + 60));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
  *(v5 + 17) = 0;
  (*(*a2 + 40))(a2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = *(a1 + 57);
  if (*(a1 + 58) == v6)
  {
LABEL_6:
    v9 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Continue to resetProxyOffset()...", 33);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;

    SipRegistrationPolicy::setProxyOffset(a1, 0);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while ((SipUri::equals((v6 + v7), a2, 1) & 1) == 0)
    {
      ++v8;
      v6 = *(a1 + 57);
      v7 += 496;
      if (v8 >= 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 58) - v6) >> 4))
      {
        goto LABEL_6;
      }
    }

    *(a1 + 60) = v8;
    v10 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "In the up-to-date (new) proxy list, current proxy is now #", 58);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923370](*(v10 + 8), *(a1 + 60));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " (", 2);
    *(v10 + 17) = 0;
    (*(*a2 + 40))(a2, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ")", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
  }
}

void VZWRegistrationPolicy::handleDeviceEvents(VZWRegistrationPolicy *this, unsigned int a2)
{
  v2 = a2;
  SipRegistrationPolicy::handleDeviceEvents(this, a2);
  if (v2)
  {

    SipRegistrationPolicy::setProxyOffset(this, 0);
  }
}

uint64_t VZWRegistrationPolicy::handleWarningHeader(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(a2 + 72);
  if (v2 == v3)
  {
    return 0;
  }

  if (byte_1EE2BC927 >= 0)
  {
    v5 = &_MergedGlobals_26;
  }

  else
  {
    v5 = _MergedGlobals_26;
  }

  if (byte_1EE2BC93F >= 0)
  {
    v6 = &qword_1EE2BC928;
  }

  else
  {
    v6 = qword_1EE2BC928;
  }

  if (byte_1EE2BC957 >= 0)
  {
    v7 = &qword_1EE2BC940;
  }

  else
  {
    v7 = qword_1EE2BC940;
  }

  if (byte_1EE2BC96F >= 0)
  {
    v8 = &qword_1EE2BC958;
  }

  else
  {
    v8 = qword_1EE2BC958;
  }

  v9 = v2 + 32;
  v10 = &SipRegistrationPolicy::kThumperErrorUnauthorized;
  while (1)
  {
    if (*(v9 - 32) == 399)
    {
      if (*(v9 + 23) >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (!strcasecmp(v11, v5) || !strcasecmp(v11, v6))
      {
        goto LABEL_27;
      }

      if (!strcasecmp(v11, v7))
      {
        v10 = "MDN Does Not Exist";
        goto LABEL_27;
      }

      if (!strcasecmp(v11, v8))
      {
        break;
      }
    }

    v12 = v9 + 24;
    v9 += 56;
    if (v12 == v3)
    {
      return 0;
    }
  }

  v10 = "Account Suspended";
LABEL_27:
  v14 = *(a1 + 400);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 392);
      if (v17)
      {
        (*(*v17 + 72))(v17, v10);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  return 1;
}

void VZWRegistrationPolicy::~VZWRegistrationPolicy(VZWRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toVZWRegistrationPolicy::~VZWRegistrationPolicy(VZWRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

uint64_t _GLOBAL__sub_I_VZWRegistrationPolicy_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_26, "Authentication failure: 5");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &_MergedGlobals_26, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC928, "Authentication failure: 6");
  __cxa_atexit(v0, &qword_1EE2BC928, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC940, "Authentication failure: 16");
  __cxa_atexit(v0, &qword_1EE2BC940, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC958, "Authentication failure: 19");

  return __cxa_atexit(v0, &qword_1EE2BC958, &dword_1E4C3F000);
}

void SipAkaAuthResponse::SipAkaAuthResponse(SipAkaAuthResponse *this, SipAkaDigestAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EE98E8;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

void sub_1E5028308(_Unwind_Exception *a1)
{
  MEMORY[0x1E69235B0](v2, 0x10B3C4074E51C00);
  SipAuthResponse::~SipAuthResponse(v1);
  _Unwind_Resume(a1);
}

void SipAkaAuthResponse::SipAkaAuthResponse(SipAkaAuthResponse *this, const SipAkaAuthChallenge *a2)
{
  SipAuthResponse::SipAuthResponse(this, a2);
  *v4 = &unk_1F5EE98E8;
  v5 = (*(*a2 + 32))(a2);
  *(this + 8) = (*(*v5 + 32))(v5);
}

void SipAkaAuthResponse::~SipAkaAuthResponse(SipAkaAuthResponse *this)
{
  *this = &unk_1F5EE98E8;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  SipAuthResponse::~SipAuthResponse(this);
}

{
  SipAkaAuthResponse::~SipAkaAuthResponse(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipAkaAuthResponse::scheme(SipAkaAuthResponse *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t SipAkaAuthResponse::computeResponse(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*v2 + 136))(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1E502852C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipAkaAuthResponse::result(SipAkaAuthResponse *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 8);
  if (*(v3 + 314) == 1)
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }

  else if (*(v3 + 313) == 1)
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741832;
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5[0] = &unk_1F5EBDEF8;
    v5[1] = &_bambiDomain;
    v6 = 0x40000000;
    v4 = ImsResult::operator<<<char [13]>(v5, "Auth failure");
    ImsResult::ImsResult(a2, v4);
    ImsResult::~ImsResult(v5);
  }
}

void sub_1E5028698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t SipAkaAuthResponse::shouldCache(SipAkaAuthResponse *this)
{
  v1 = *(this + 8);
  if (*(v1 + 314))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 313);
  }

  return v2 & 1;
}

void sub_1E5028768(_Unwind_Exception *a1)
{
  SipAuthResponse::~SipAuthResponse(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t MediaSessionDriver::MediaSessionDriver(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, ImsPrefs *a5, __int128 *a6, NSObject **a7)
{
  v9 = a2[1];
  v21 = *a2;
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v19 = *a4;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionInterface::MediaSessionInterface(a1, &v21, a3, &v19, a6, a7);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  *a1 = &unk_1F5EE9968;
  *(a1 + 88) = &unk_1F5EE9A70;
  *(a1 + 96) = 4;
  SipTimerContainer::SipTimerContainer((a1 + 104));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = ImsPrefs::RTCPIntervalSeconds(a5);
  *(a1 + 300) = ImsPrefs::HoldHeartbeatIntervalSeconds(a5);
  *(a1 + 304) = ImsPrefs::LocalRTCPReportIntervalSeconds(a5);
  *(a1 + 308) = ImsPrefs::InactivityTimerRTPSeconds(a5);
  *(a1 + 310) = ImsPrefs::InactivityTimerRTCPSeconds(a5);
  std::string::basic_string[abi:ne200100]<0>(__p, "LinkMonitorPreference");
  ImsPrefs::enumAsString(a5, __p, (a1 + 312));
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 336) = ImsPrefs::DTMFVolume(a5);
  *(a1 + 337) = ImsPrefs::DTMFDigitDurationMilliseconds(a5);
  *(a1 + 340) = ImsPrefs::DTMFInterDigitIntervalMilliseconds(a5);
  *(a1 + 344) = ImsPrefs::EnableRTCPExtendedReports(a5);
  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.driver");
  v13[0] = 0;
  v16 = 0;
  v11 = ims::debug(__p, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "MediaSessionDriver", 18);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
  *(v11 + 17) = 0;
  MEMORY[0x1E69233B0](*(v11 + 8), *(a1 + 24));
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 232) = a1 + 88;
  return a1;
}

void sub_1E5028A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 335) < 0)
  {
    operator delete(*(v24 + 312));
  }

  std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(*v25);
  SipTimerContainer::~SipTimerContainer((v24 + 104));
  MediaSessionInterface::~MediaSessionInterface(v24);
  _Unwind_Resume(a1);
}

void MediaSessionDriver::~MediaSessionDriver(MediaSessionDriver *this)
{
  *this = &unk_1F5EE9968;
  *(this + 11) = &unk_1F5EE9A70;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "rtp.driver");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~MediaSessionDriver", 19);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
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

  MediaSessionDriver::cancelAllTimers(this);
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(*(this + 35));
  SipTimerContainer::~SipTimerContainer((this + 104));
  MediaSessionInterface::~MediaSessionInterface(this);
}

void MediaSessionDriver::cancelAllTimers(MediaSessionDriver *this)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "rtp.driver");
  v7[0] = 0;
  v10 = 0;
  v2 = ims::debug(v11, v7);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = v2;
  v4 = *(*(*this - 8) + 8);
  v5 = *(v2 + 8);
  v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "cancelAllTimers", 15);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
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

  SipTimerContainer::cancelAllTimers((this + 104));
  std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::destroy(*(this + 35));
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = this + 280;
}

void sub_1E5028DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionDriver::startTimerForRequest(void *a1, uint64_t a2, void **a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v23, "rtp.driver");
  v34[0] = 0;
  v37 = 0;
  v8 = ims::debug(&v23, v34);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v9 = v8;
  v10 = *(*(*a1 - 8) + 8);
  v11 = *(v8 + 8);
  v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "startTimerForRequest", 20);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "  [requestId=", 13);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), a2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " sessionId=", 11);
  *(v9 + 17) = 0;
  MEMORY[0x1E69233B0](*(v9 + 8), a1[3]);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  memset(&v33, 0, sizeof(v33));
  (*(*a1 + 240))(&v33, a1, a2);
  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 14, &v33.__r_.__value_.__l.__data_))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (a4)
    {
      a4 = _Block_copy(a4);
    }

    v17 = *a3;
    v16 = a3[1];
    v26 = a4;
    v27 = v17;
    v28 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v33;
    }

    if (a4)
    {
      v18 = _Block_copy(a4);
    }

    else
    {
      v18 = 0;
    }

    aBlock[0] = v18;
    aBlock[1] = v17;
    v25 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = a1 + 35;
    v20 = a1[35];
    if (v20)
    {
      while (1)
      {
        while (1)
        {
          v21 = v20;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, (v20 + 32)) & 0x80) == 0)
          {
            break;
          }

          v20 = *v21;
          v19 = v21;
          if (!*v21)
          {
            goto LABEL_33;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21 + 4, &v23.__r_.__value_.__l.__data_) & 0x80) == 0)
        {
          break;
        }

        v19 = v21 + 1;
        v20 = v21[1];
        if (!v20)
        {
          goto LABEL_33;
        }
      }

      if (*v19)
      {
        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (aBlock[0])
        {
          _Block_release(aBlock[0]);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = 0;
        operator new();
      }
    }

LABEL_33:
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "rtp.driver");
  v29[0] = 0;
  v32 = 0;
  v15 = ims::error(&v23, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Timer for request ", 18);
  *(v15 + 17) = 0;
  (*(*v15 + 32))(v15, &v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " already exists.", 16);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E5029398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  operator delete(v48);
  std::pair<std::string const,MediaSessionBlock>::~pair(&a9);
  MediaSessionBlock::~MediaSessionBlock(&a19);
  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MediaSessionBlock::~MediaSessionBlock(MediaSessionBlock *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

void MediaSessionDriver::cancelTimerForRequest(MediaSessionDriver *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v23, "rtp.driver");
  v19[0] = 0;
  v22 = 0;
  v5 = ims::debug(v4, v19);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*this - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "cancelTimerForRequest", 21);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "  [requestId=", 13);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " sessionId=", 11);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(this + 3));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  memset(&v23, 0, sizeof(v23));
  (*(*this + 240))(&v23, this, a2);
  v10 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 272, &v23.__r_.__value_.__l.__data_);
  if ((this + 280) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "rtp.driver");
    v13[0] = 0;
    v16 = 0;
    v12 = ims::error(v17, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "No timer found for request ", 27);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, &v23);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(v14);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v11 = v10;
    SipTimerContainer::cancelTimer(this + 13, &v23);
    std::__tree<std::__value_type<std::string,MediaSessionBlock>,std::__map_value_compare<std::string,std::__value_type<std::string,MediaSessionBlock>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MediaSessionBlock>>>::erase(this + 34, v11);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}