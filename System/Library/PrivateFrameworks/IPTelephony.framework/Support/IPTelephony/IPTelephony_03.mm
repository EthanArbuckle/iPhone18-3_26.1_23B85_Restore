void ImsSocket::setNoTimeWaitForSocket(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x1E69E9840];
  v8 = 1;
  if (setsockopt(this, 6, 520, &v8, 4u) == -1)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v5 = *__error();
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_posixDomain;
    *(a2 + 16) = v5;
    ims::getStaticLoggerFor("net", buf);
    v6 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ImsResult::logStr(a2);
    }
  }

  else
  {
    ims::getStaticLoggerFor("net", buf);
    v4 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v10 = "ImsSocket: no-time-wait enabled for socket ";
      *&v10[8] = 1024;
      *&v10[10] = v2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%s%d", buf, 0x12u);
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void ImsSocket::setNoSigpipeOptionForSocket(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x1E69E9840];
  v8 = 1;
  if (setsockopt(this, 0xFFFF, 4130, &v8, 4u) == -1)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v5 = *__error();
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_posixDomain;
    *(a2 + 16) = v5;
    ims::getStaticLoggerFor("net", buf);
    v6 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ImsResult::logStr(a2);
    }
  }

  else
  {
    ims::getStaticLoggerFor("net", buf);
    v4 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v10 = "ImsSocket: NOSIGPIPE enabled for fd=";
      *&v10[8] = 1024;
      *&v10[10] = v2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%s%d", buf, 0x12u);
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

int *ImsSocket::bindSocketToInterface@<X0>(int *result@<X0>, char a2@<W1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  v29 = *MEMORY[0x1E69E9840];
  if ((a3[23] & 0x80000000) == 0)
  {
    if (a3[23])
    {
      v8 = a3;
      goto LABEL_6;
    }

LABEL_14:
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    v14 = 1073741825;
LABEL_27:
    *(a4 + 16) = v14;
    goto LABEL_28;
  }

  if (!*(a3 + 1))
  {
    goto LABEL_14;
  }

  v8 = *a3;
LABEL_6:
  v9 = if_nametoindex(v8);
  v20 = v9;
  if (v9)
  {
    if ((a2 & 2) == 0)
    {
LABEL_8:
      ims::getStaticLoggerFor("net", buf);
      v10 = *&v22[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (a3[23] >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        *buf = 136316162;
        *v22 = "binding IPv4 socket to interface ";
        *&v22[8] = 2080;
        *&v22[10] = v11;
        v23 = 2080;
        v24 = " (index ";
        v25 = 1024;
        v26 = v9;
        v27 = 2080;
        v28 = ")";
        _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%s%s%s%u%s", buf, 0x30u);
      }

      v12 = 0;
      v13 = 25;
LABEL_23:
      result = setsockopt(v6, v12, v13, &v20, 4u);
      if (result == -1)
      {
        result = __error();
        v14 = *result;
        v18 = &_posixDomain;
      }

      else
      {
        v14 = 0;
        v18 = &_bambiDomain;
      }

      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      *a4 = &unk_1F5EBDEF8;
      *(a4 + 8) = v18;
      goto LABEL_27;
    }

LABEL_17:
    ims::getStaticLoggerFor("net", buf);
    v16 = *&v22[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = *a3;
      }

      *buf = 136316162;
      *v22 = "binding IPv6 socket to interface ";
      *&v22[8] = 2080;
      *&v22[10] = v17;
      v23 = 2080;
      v24 = " (index ";
      v25 = 1024;
      v26 = v9;
      v27 = 2080;
      v28 = ")";
      _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%s%s%s%u%s", buf, 0x30u);
    }

    v12 = 41;
    v13 = 125;
    goto LABEL_23;
  }

  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v15 = *__error();
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_posixDomain;
  *(a4 + 16) = v15;
  result = (*(_posixDomain + 24))();
  if ((result & 1) == 0)
  {
    ImsResult::~ImsResult(a4);
    if ((a2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke(void *a1)
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
        (*(*v3 + 24))(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9ImsSocketEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9ImsSocketEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke_19(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *v1 != -1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 56);
        if (v7)
        {
          v8 = v3[5];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v3 + 16))(__p, v3);
            v9 = v16 >= 0 ? __p : __p[0];
            v10 = **(a1 + 40);
            *buf = 141559299;
            v18 = 1752392040;
            v19 = 2081;
            v20 = v9;
            v21 = 2080;
            v22 = "ImsSocket ";
            v23 = 2048;
            v24 = v7;
            v25 = 2080;
            v26 = ": invalidating socket fd=";
            v27 = 1024;
            v28 = v10;
            _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s0x%lx%s%d", buf, 0x3Au);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    v11 = v3[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 16))(__p, v3);
      if (v16 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v13 = **(a1 + 40);
      *buf = 141558787;
      v18 = 1752392040;
      v19 = 2081;
      v20 = v12;
      v21 = 2080;
      v22 = "Closing fd ";
      v23 = 1024;
      LODWORD(v24) = v13;
      _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    close(**(a1 + 40));
    **(a1 + 40) = -1;
    dispatch_release(*(a1 + 72));
  }

  v14 = *MEMORY[0x1E69E9840];
}

void *__copy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrI16SocketDescriptorEE56c33_ZTSNSt3__18weak_ptrI9ImsSocketEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrI16SocketDescriptorEE56c33_ZTSNSt3__18weak_ptrI9ImsSocketEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ImsSocket::setDscpClass(ImsSocket *this, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (!v3)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 16))(__p, this);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v12 = 1752392040;
      v13 = 2081;
      v14 = v8;
      _os_log_error_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sUnable to set DSCP on NULL socket descriptor object", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_7;
  }

  if (*(this + 23) == a2)
  {
LABEL_7:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  *(this + 23) = a2;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E9840];

  ImsSocket::_setDscpOnSocket(this, v4);
}

void *ctu::SharedLoggable<ImsSocket,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, *a4);
  return a1;
}

uint64_t ims::SharedLoggable<ImsSocket>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<ImsSocket>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SocketDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBF478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *SipServerNonInviteTryingTransactionState::SipServerNonInviteTryingTransactionState(void *a1, uint64_t *a2)
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

  *a1 = &unk_1F5EBF4C8;
  a1[1] = &unk_1F5EBF550;
  a1[26] = &unk_1F5EBF580;
  a1[34] = 0x300000000;
  return a1;
}

void sub_1E4C790A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerNonInviteTryingTransactionState::handleOutgoingResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
        if ((*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16)))
        {
          v10 = *(a1 + 272);
          if (v10 < *(a1 + 276))
          {
            *(a1 + 272) = v10 + 1;
            v12 = v9[16];
            v11 = v9 + 16;
            v13 = (*(v12 + 64))(v11);
            (*(*v11 + 16))(v11, v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Failed to send response, scheduling retry #", 43);
            *(v13 + 17) = 0;
            MEMORY[0x1E6923350](*(v13 + 8), *(a1 + 272));
            *(v13 + 17) = 0;
            (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v13 + 17) = 0;
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v19, (a1 + 216));
            v14 = v20;
            if (v20)
            {
              p_shared_weak_owners = &v20->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            }

            v21 = 0;
            operator new();
          }
        }

        v16 = *v9 + 32;
        if ((*(*a2 + 128) - 100) < 0x64)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }

        (*(*v9 + 32))(v9, v17);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4C79338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void SipServerNonInviteTryingTransactionState::handleTimer(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (operator==(a2, &SipTimers::kTimerG))
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
          v7 = v6 + 16;
          v8 = (*(v6[16] + 64))(v6 + 16);
          (*(v6[16] + 16))(v6 + 16, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Resending response", 18);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v14 = 0u;
          (*(*v6 + 120))(&v14, v6);
          if ((*(**(&v14 + 1) + 24))(*(&v14 + 1), v15))
          {
            v9 = *(a1 + 272);
            if (v9 < *(a1 + 276))
            {
              *(a1 + 272) = v9 + 1;
              v10 = (*(*v7 + 64))(v6 + 16);
              (*(*v7 + 16))(v7, v10);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Failed to send response, scheduling retry # ", 44);
              *(v10 + 17) = 0;
              MEMORY[0x1E6923350](*(v10 + 8), *(a1 + 272));
              *(v10 + 17) = 0;
              (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v10 + 17) = 0;
              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v20, (a1 + 216));
              v11 = v21;
              if (v21)
              {
                p_shared_weak_owners = &v21->__shared_weak_owners_;
                atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v11);
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              }

              v22 = 0;
              operator new();
            }
          }

          (*(*v6 + 32))(v6, 4);
          ImsResult::~ImsResult(&v14);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4C796F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v11 - 88);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void *SipServerNonInviteProceedingTransactionState::SipServerNonInviteProceedingTransactionState(void *a1, uint64_t *a2)
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

  *a1 = &unk_1F5EBF5A8;
  a1[1] = &unk_1F5EBF628;
  a1[26] = &unk_1F5EBF658;
  return a1;
}

void sub_1E4C7981C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerNonInviteProceedingTransactionState::handleRequest(uint64_t a1)
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
        (*(*v5 + 120))(v6);
        ImsResult::~ImsResult(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipServerNonInviteProceedingTransactionState::handleOutgoingResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 128) - 100) > 0x63 || (*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16)))
  {
    v4 = *(a1 + 264);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 256);
        if (v7)
        {
          (*(*v7 + 32))(v7, 4);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void *SipServerNonInviteCompletedTransactionState::SipServerNonInviteCompletedTransactionState(void *a1, uint64_t *a2)
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

  *a1 = &unk_1F5EBF680;
  a1[1] = &unk_1F5EBF708;
  a1[26] = &unk_1F5EBF738;
  return a1;
}

void sub_1E4C79A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerNonInviteCompletedTransactionState::enterState(SipServerNonInviteCompletedTransactionState *this)
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
              if (byte_1EE2BCD90[23] < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCD90, *&byte_1EE2BCD90[8]);
              }

              else
              {
                __p = *byte_1EE2BCD90;
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

void sub_1E4C79CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
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

void SipServerNonInviteCompletedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerJ))
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

void SipServerNonInviteCompletedTransactionState::handleRequest(uint64_t a1)
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
        (*(*v5 + 120))(v6);
        ImsResult::~ImsResult(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipServerNonInviteTryingTransactionState::~SipServerNonInviteTryingTransactionState(SipServerNonInviteTryingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerNonInviteTryingTransactionState::~SipServerNonInviteTryingTransactionState(SipServerNonInviteTryingTransactionState *this)
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

void SipServerNonInviteProceedingTransactionState::~SipServerNonInviteProceedingTransactionState(SipServerNonInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerNonInviteProceedingTransactionState::~SipServerNonInviteProceedingTransactionState(SipServerNonInviteProceedingTransactionState *this)
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

void SipServerNonInviteCompletedTransactionState::~SipServerNonInviteCompletedTransactionState(SipServerNonInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerNonInviteCompletedTransactionState::~SipServerNonInviteCompletedTransactionState(SipServerNonInviteCompletedTransactionState *this)
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

void SipTransactionState::~SipTransactionState(SipTransactionState *this)
{
  *this = &unk_1F5EF66D0;
  *(this + 1) = &unk_1F5EF6750;
  *(this + 26) = &unk_1F5EF6780;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void SipState::~SipState(SipState *this)
{
  *this = &unk_1F5ED0CA0;
  *(this + 1) = &unk_1F5ED0CF8;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  SipTimerContainer::~SipTimerContainer((this + 16));
}

{
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF7A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF7A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EBF7A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleOutgoingResponse(std::shared_ptr<SipResponse const>,ImsResult &)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF828;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF828;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EBF828;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF8A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBF8A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EBF8A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1E4C7AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = E911LocationSelector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E4C7B2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  ims::LocationInfo::~LocationInfo(&a43);

  _Unwind_Resume(a1);
}

void ims::LocationInfo::~LocationInfo(void **this)
{
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

void ___ZN19ImsLocationSelector12initSelectorENSt3__110shared_ptrI8SipStackEE18LocationUpdateMode_block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = v3[7];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v3 + 32))(&__p, v3);
          if (v9 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          buf[0] = 141558275;
          *&buf[1] = 1752392040;
          v11 = 2081;
          v12 = p_p;
          _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sLaunching emergency location selector", buf, 0x16u);
          if (v9 < 0)
          {
            operator delete(__p);
          }
        }

        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void *__copy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19ImsLocationSelectorEE56c35_ZTSNSt3__110shared_ptrI8SipStackEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19ImsLocationSelectorEE56c35_ZTSNSt3__110shared_ptrI8SipStackEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1E4C7BC4C(_Unwind_Exception *a1)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v4);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void ImsLocationSelector::~ImsLocationSelector(ImsLocationSelector *this)
{
  *this = &unk_1F5EBF928;
  *(this + 1) = &unk_1F5EBF960;
  *(this + 2) = &unk_1F5EBF990;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  MEMORY[0x1E69225A0](this + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 3);
}

{
  ImsLocationSelector::~ImsLocationSelector(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsLocationSelector::~ImsLocationSelector(ImsLocationSelector *this)
{
  ImsLocationSelector::~ImsLocationSelector((this - 8));
}

{
  ImsLocationSelector::~ImsLocationSelector((this - 16));
}

{
  ImsLocationSelector::~ImsLocationSelector((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  ImsLocationSelector::~ImsLocationSelector((this - 16));

  JUMPOUT(0x1E69235B0);
}

void ImsLocationSelector::handleLocationUpdate(void *a1, const ims::LocationInfo *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = ___ZN19ImsLocationSelector20handleLocationUpdateEN3ims12LocationInfoE_block_invoke;
  v10[3] = &__block_descriptor_184_ea8_40c24_ZTSN3ims12LocationInfoE_e5_v8__0l;
  v10[4] = a1;
  ims::LocationInfo::LocationInfo(&v11, a2);
  v3 = v10;
  v4 = a1[4];
  if (!v4 || (v5 = a1[3], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ImsLocationSelectorE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EBFC38;
  v14 = v5;
  v15 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v3;
  v13 = v9;
  dispatch_async(v8, block);

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);

  if (v9[183] < 0)
  {
    operator delete(*(v9 + 20));
  }

  if (v9[159] < 0)
  {
    operator delete(*(v9 + 17));
  }

  if (v9[135] < 0)
  {
    operator delete(*(v9 + 14));
  }

  if (v9[111] < 0)
  {
    operator delete(*(v9 + 11));
  }
}

void ___ZN19ImsLocationSelector20handleLocationUpdateEN3ims12LocationInfoE_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[12];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[11];
      if (v5)
      {
        v6 = v2[7];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v2 + 32))(v20, v2);
          v7 = v21 >= 0 ? v20 : v20[0];
          *buf = 141558275;
          v23 = 1752392040;
          v24 = 2081;
          v25 = v7;
          _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sHandling location update", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        ims::LocationInfo::LocationInfo(v11, (a1 + 40));
        (*(*v5 + 16))(v5, v11);
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        if (v13 < 0)
        {
          operator delete(v12);
        }

LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = v2[7];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    (*(*v2 + 32))(v20, v2);
    v10 = v21 >= 0 ? v20 : v20[0];
    *buf = 141558275;
    v23 = 1752392040;
    v24 = 2081;
    v25 = v10;
    _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sLocation delegate is gone. Can't handle location update", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (v4)
  {
    goto LABEL_21;
  }

LABEL_22:
  v9 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_ea8_40c24_ZTSN3ims12LocationInfoE(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    v2 = *(a1 + 88);

    operator delete(v2);
  }
}

ims::LocationInfo *ims::LocationInfo::LocationInfo(ims::LocationInfo *this, const ims::LocationInfo *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  *this = v4;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
  }

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

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v9;
  }

  return this;
}

void sub_1E4C7C3EC(_Unwind_Exception *exception_object)
{
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

  _Unwind_Resume(exception_object);
}

void ims::detail::to_string_impl<double,std::integral_constant<BOOL,false>>::operator()()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4C7C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void std::__shared_ptr_emplace<E911LocationSelectorInterface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBFAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<E911LocationSelectorInterface>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 24) = 0;

    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }
}

void std::__shared_ptr_emplace<ImsLocationSelector::create(std::weak_ptr<ImsLocationSelectorDelegate>,std::shared_ptr<SipStack>,LocationUpdateMode)::Wrapper,std::allocator<ImsLocationSelector::create(std::weak_ptr<ImsLocationSelectorDelegate>,std::shared_ptr<SipStack>,LocationUpdateMode)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBFB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ImsLocationSelector::create(std::weak_ptr<ImsLocationSelectorDelegate>,std::shared_ptr<SipStack>,LocationUpdateMode)::Wrapper::~Wrapper(ImsLocationSelector *a1)
{
  ImsLocationSelector::~ImsLocationSelector(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsLocationSelector::create(std::weak_ptr<ImsLocationSelectorDelegate>,std::shared_ptr<SipStack>,LocationUpdateMode)::Wrapper::~Wrapper(uint64_t a1)
{
  ImsLocationSelector::~ImsLocationSelector((a1 - 8));
}

{
  ImsLocationSelector::~ImsLocationSelector((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

{
  ImsLocationSelector::~ImsLocationSelector((a1 - 16));
}

{
  ImsLocationSelector::~ImsLocationSelector((a1 - 16));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_ea8_40c48_ZTSNSt3__110shared_ptrIK19ImsLocationSelectorEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c48_ZTSNSt3__110shared_ptrIK19ImsLocationSelectorEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ims::getStaticLoggerFor(ims *this@<X0>, ctu::OsLogContext *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  v5 = qword_1EE2BBD00;
  if (!qword_1EE2BBD00)
  {
    goto LABEL_9;
  }

  v6 = &qword_1EE2BBD00;
  do
  {
    v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 32), __p);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v5 = *(v5 + ((v7 >> 4) & 8));
  }

  while (v5);
  if (v6 == &qword_1EE2BBD00 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v6 + 4) & 0x80) != 0)
  {
LABEL_9:
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    goto LABEL_17;
  }

  ctu::OsLogContext::OsLogContext(v10, "com.apple.ipTelephony", this);
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  v13 = __p;
  std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  ctu::OsLogContext::operator=();
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  ctu::OsLogContext::~OsLogContext(v10);
LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  v10[0] = __p;
  v9 = std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  ctu::OsLogContext::OsLogContext(a2, (v9 + 56));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C7C9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::OsLogContext::~OsLogContext(&a9);
  _Unwind_Resume(a1);
}

void ims::dumpStaticLoggers(ims *this)
{
  v11 = *MEMORY[0x1E69E9840];
  ims::getStaticLoggerFor("state", buf);
  v1 = *&v10[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v1, OS_LOG_TYPE_INFO, "#I Static OsLogContexts", buf, 2u);
  }

  v2 = ims::staticLogContexts;
  if (ims::staticLogContexts != &qword_1EE2BBD00)
  {
    do
    {
      ims::getStaticLoggerFor("state", buf);
      v3 = *&v10[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v4 = *v4;
        }

        *buf = 134218242;
        *v10 = v2 + 56;
        *&v10[8] = 2080;
        *&v10[10] = v4;
        _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_INFO, "#I %p: %s", buf, 0x16u);
      }

      v5 = *(v2 + 8);
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
          v6 = *(v2 + 16);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != &qword_1EE2BBD00);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::destroy(*(a1 + 1));
    ctu::OsLogContext::~OsLogContext((a1 + 56));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,ctu::OsLogContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::OsLogContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::OsLogContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void **a1)
{
  v1 = qword_1EE2BBD00;
  if (!qword_1EE2BBD00)
  {
    goto LABEL_8;
  }

  v3 = &qword_1EE2BBD00;
  while (1)
  {
    while (1)
    {
      v4 = v1;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (v1 + 32)) & 0x80) == 0)
      {
        break;
      }

      v1 = *v4;
      v3 = v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a1) & 0x80) == 0)
    {
      break;
    }

    v3 = v4 + 1;
    v1 = v4[1];
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  if (!*v3)
  {
LABEL_8:
    operator new();
  }

  return *v3;
}

uint64_t _GLOBAL__sub_I_ImsSharedLoggable_cpp()
{
  qword_1EE2BBD08 = 0;
  qword_1EE2BBD00 = 0;
  ims::staticLogContexts = &qword_1EE2BBD00;
  return __cxa_atexit(std::map<std::string,ctu::OsLogContext>::~map[abi:ne200100], &ims::staticLogContexts, &dword_1E4C3F000);
}

void HttpResponse::~HttpResponse(void **this)
{
  *this = &unk_1F5EDA180;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);
}

{
  *this = &unk_1F5EDA180;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);
}

{
  *this = &unk_1F5EDA180;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);

  JUMPOUT(0x1E69235B0);
}

void HttpMessage::~HttpMessage(void **this)
{
  *this = &unk_1F5EE1178;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 1), this[2]);
}

void HttpRequest::~HttpRequest(void **this)
{
  *this = &unk_1F5EC2FF0;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);
}

{
  *this = &unk_1F5EC2FF0;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);
}

{
  *this = &unk_1F5EC2FF0;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  HttpMessage::~HttpMessage(this);

  JUMPOUT(0x1E69235B0);
}

void AttestationServiceHelper::sign(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a1[1];
  v33 = *a1;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a5;
  v11 = a5[1];
  v13 = *a5;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = *a5;
  }

  v14 = *(v13 + 248);
  v15 = *(v13 + 256);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 344);
  v31 = *(v14 + 336);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = *(*a5 + 248);
  v18 = *(*a5 + 256);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(v17 + 336);
  v19 = *(v17 + 344);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    add = atomic_fetch_add((v20 + 4480), 1u);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  add = atomic_fetch_add((v20 + 4480), 1u);
  if (v18)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_16:
  if (os_variant_has_internal_content())
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rcs_stress_test");
    BoolValueFromRuntimeConfig = CommCenterPrefs::getBoolValueFromRuntimeConfig(__p, 0);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    BoolValueFromRuntimeConfig = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "auth.as");
  v35[0] = 0;
  v38 = 0;
  v23 = ims::debug(__p, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "AttestationServiceHelper starts with seqCnt=", 44);
  v24 = add + 1;
  *(v23 + 17) = 0;
  MEMORY[0x1E6923350](*(v23 + 8), v24);
  *(v23 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " stressTest=", 12);
  *(v23 + 17) = 0;
  MEMORY[0x1E6923320](*(v23 + 8), BoolValueFromRuntimeConfig);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a4 + 23) >= 0)
  {
    v25 = a4;
  }

  else
  {
    v25 = *a4;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v25, v31}];
  v27 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v28 = [MEMORY[0x1E69667F0] sharedService];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3321888768;
  v41[2] = ___ZN24AttestationServiceHelper4signEPKhmRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrI8SipStackEENS2_8functionIFvS8_jEEE_block_invoke;
  v41[3] = &__block_descriptor_116_ea8_32c49_ZTSNSt3__18weak_ptrI24AttestationServiceHelperEE48c32_ZTSNSt3__18weak_ptrI8SipStackEE64c46_ZTSNSt3__18weak_ptrI21SipRegistrationClientEE80c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE_e28_v24__0__NSData_8__NSError_16l;
  v41[4] = v33;
  v42 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = v12;
  v44 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = v32;
  v46 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v47[8] = v24;
  std::__function::__value_func<void ()(std::string,unsigned int)>::__value_func[abi:ne200100](v47, a6);
  if (BoolValueFromRuntimeConfig)
  {
    v29 = @"rcsStressTest";
  }

  else
  {
    v29 = 0;
  }

  [v28 sign:v27 withKey:v26 teamIdentifier:v29 completionHandler:v41];

  std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](v47);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1E4C7D2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
    if (!v38)
    {
LABEL_5:
      if (!v37)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v38)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v38);
  if (!v37)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v37);
  goto LABEL_7;
}

void ___ZN24AttestationServiceHelper4signEPKhmRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrI8SipStackEENS2_8functionIFvS8_jEEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && *(a1 + 32))
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10 && *(a1 + 48))
        {
          v11 = *(a1 + 72);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12 && *(a1 + 64))
            {
              if (!v5 || v6)
              {
                v21 = std::string::basic_string[abi:ne200100]<0>(&v55, "auth.as");
                v39[0] = 0;
                v42 = 0;
                v22 = ims::error(v21, v39);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Signing digest failed with error = ", 35);
                *(v22 + 17) = 0;
                MEMORY[0x1E6923360](*(v22 + 8), [v6 code]);
                *(v22 + 17) = 0;
                (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v22 + 17) = 0;
                if (v42 == 1 && v41 < 0)
                {
                  operator delete(v40);
                }

                if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v55.__r_.__value_.__l.__data_);
                }

                v23 = std::string::basic_string[abi:ne200100]<0>(&v55, "auth.as");
                v35[0] = 0;
                v38 = 0;
                v24 = ims::error(v23, v35);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "signedData is ", 14);
                *(v24 + 17) = 0;
                if (v5)
                {
                  v25 = "not empty";
                }

                else
                {
                  v25 = "empty";
                }

                if (v5)
                {
                  v26 = 9;
                }

                else
                {
                  v26 = 5;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v25, v26);
                *(v24 + 17) = 0;
                (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v24 + 17) = 0;
                if (v38 == 1 && v37 < 0)
                {
                  operator delete(v36);
                }

                if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v55.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v13 = [v5 base64EncodedStringWithOptions:0];
                memset(&v55, 0, sizeof(v55));
                std::string::basic_string[abi:ne200100]<0>(&v55, [v13 UTF8String]);
                std::string::basic_string[abi:ne200100]<0>(queue, "auth.as");
                v29[0] = 0;
                v32 = 0;
                v14 = ims::debug(queue, v29);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "got back seqCnt=", 16);
                *(v14 + 17) = 0;
                MEMORY[0x1E6923350](*(v14 + 8), *(a1 + 112));
                *(v14 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ", signedSignature=", 18);
                *(v14 + 17) = 0;
                (*(*v14 + 32))(v14, &v55);
                (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v14 + 17) = 0;
                if (v32 == 1 && v31 < 0)
                {
                  operator delete(__p);
                }

                if (v34 < 0)
                {
                  operator delete(queue[0]);
                }

                ims::getQueue(queue);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3321888768;
                block[2] = ___ZN24AttestationServiceHelper4signEPKhmRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrI8SipStackEENS2_8functionIFvS8_jEEE_block_invoke_2;
                block[3] = &__block_descriptor_92_ea8_32c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
                std::__function::__value_func<void ()(std::string,unsigned int)>::__value_func[abi:ne200100](v57, a1 + 80);
                if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v58, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
                }

                else
                {
                  v58 = v55;
                }

                v59 = *(a1 + 112);
                v27 = queue[0];
                dispatch_async(queue[0], block);
                if (v27)
                {
                  dispatch_release(v27);
                }

                if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v58.__r_.__value_.__l.__data_);
                }

                std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](v57);
                if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v55.__r_.__value_.__l.__data_);
                }
              }

LABEL_67:
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_68:
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_69:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              goto LABEL_70;
            }
          }

          else
          {
            v12 = 0;
          }

          v19 = std::string::basic_string[abi:ne200100]<0>(&v55, "auth.as");
          v43[0] = 0;
          v46 = 0;
          v20 = ims::debug(v19, v43);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "SipRegistrationClient is no longer existing: no op", 50);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v46 == 1 && v45 < 0)
          {
            operator delete(v44);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (!v12)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }
      }

      else
      {
        v10 = 0;
      }

      v17 = std::string::basic_string[abi:ne200100]<0>(&v55, "auth.as");
      v47[0] = 0;
      v50 = 0;
      v18 = ims::debug(v17, v47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SipStack is no longer existing: no op", 37);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v50 == 1 && v49 < 0)
      {
        operator delete(v48);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (!v10)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(&v55, "auth.as");
  v51[0] = 0;
  v54 = 0;
  v16 = ims::debug(v15, v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "AttestationServiceHelper is no longer existing: no op", 53);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v54 == 1 && v53 < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    goto LABEL_69;
  }

LABEL_70:

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4C7DA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, NSObject *object)
{
  std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](v23 + 32);
  if (object)
  {
    dispatch_release(object);
  }

  if (*(v24 - 185) < 0)
  {
    operator delete(*(v24 - 208));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);

  _Unwind_Resume(a1);
}

void ___ZN24AttestationServiceHelper4signEPKhmRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_10shared_ptrI8SipStackEENS2_8functionIFvS8_jEEE_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    __p = *(a1 + 64);
  }

  v2 = *(a1 + 56);
  v4 = *(a1 + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &__p, &v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C7DCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::string,unsigned int)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
  }
}

uint64_t __destroy_helper_block_ea8_32c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t __copy_helper_block_ea8_32c49_ZTSNSt3__18weak_ptrI24AttestationServiceHelperEE48c32_ZTSNSt3__18weak_ptrI8SipStackEE64c46_ZTSNSt3__18weak_ptrI21SipRegistrationClientEE80c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  a1[8] = a2[8];
  a1[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(std::string,unsigned int)>::__value_func[abi:ne200100]((a1 + 10), (a2 + 10));
}

void sub_1E4C7DDE8(_Unwind_Exception *exception_object)
{
  v3 = v1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v1[5];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c49_ZTSNSt3__18weak_ptrI24AttestationServiceHelperEE48c32_ZTSNSt3__18weak_ptrI8SipStackEE64c46_ZTSNSt3__18weak_ptrI21SipRegistrationClientEE80c85_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjEEE(void *a1)
{
  std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100]((a1 + 10));
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void SDPLazuliSettingsBuilder::SDPLazuliSettingsBuilder(void *a1, uint64_t a2, SDPLazuliSettingsBuilder *this)
{
  v4 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  v5 = ImsPrefs::UseRemoteMediaOrder(this);
  SDPSettingsBuilder::SDPSettingsBuilder(a1, v6, v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a1 = &unk_1F5EBFD20;
}

void sub_1E4C7E064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SDPLazuliSettingsBuilder::~SDPLazuliSettingsBuilder(SDPLazuliSettingsBuilder *this)
{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPLazuliSettingsBuilder::createLazuliSettingsForOffer(uint64_t a1@<X0>, uint64_t *a2@<X1>, ImsPrefs *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  v6[0] = *a2;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SDPLazuliSettingsBuilder::createLazuliSettings(v7, v6, a3, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4C7E1DC(_Unwind_Exception *exception_object)
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

void SDPLazuliSettingsBuilder::createLazuliSettings(uint64_t *a1@<X1>, uint64_t *a2@<X2>, ImsPrefs *a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
    v107[0] = 0;
    v110 = 0;
    v10 = ims::error(v44, v107);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Remote SDP is null", 18);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v110 != 1 || (v109 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v11 = v108;
    goto LABEL_47;
  }

  v6 = *a1;
  if (!*a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
    v103[0] = 0;
    v106 = 0;
    v20 = ims::error(v44, v103);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Local SDP is null", 17);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v106 != 1 || (v105 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v11 = v104;
    goto LABEL_47;
  }

  v9 = *(v5 + 448);
  v8 = *(v5 + 456);
  while (v9 != v8)
  {
    if (*(v9 + 12) == 6)
    {
      goto LABEL_11;
    }

    v9 += 200;
  }

  v9 = 0;
LABEL_11:
  v13 = *(v6 + 448);
  v12 = *(v6 + 456);
  while (v13 != v12)
  {
    if (*(v13 + 12) == 6)
    {
      goto LABEL_16;
    }

    v13 += 200;
  }

  v13 = 0;
LABEL_16:
  if (!v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
    v99[0] = 0;
    v102 = 0;
    v21 = ims::error(v44, v99);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Remote media is null", 20);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v102 != 1 || (v101 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v11 = v100;
    goto LABEL_47;
  }

  if (!v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
    v95[0] = 0;
    v98 = 0;
    v22 = ims::error(v44, v95);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Local media is null", 19);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v98 != 1 || (v97 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v11 = v96;
    goto LABEL_47;
  }

  v14 = *(v13 + 32);
  if (v14 == *(v9 + 32))
  {
    if (v14 == 8)
    {
      SDPMedia::path(v9, v44);
      size = v44[0].__r_.__value_.__l.__size_;
      if (v44[0].__r_.__value_.__r.__words[2] != v44[0].__r_.__value_.__l.__size_)
      {
        v16 = (v44[0].__r_.__value_.__r.__words[2] - v44[0].__r_.__value_.__l.__size_) >> 3;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        while ((*(*size + 152) & 1) != 0)
        {
          size += 8;
          if (!--v16)
          {
            goto LABEL_25;
          }
        }

        LazuliRouteSet::~LazuliRouteSet(v44);
        std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
        v87[0] = 0;
        v90 = 0;
        v28 = ims::error(v44, v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "MSRP hops are not allowed in MSRP TLS", 37);
        *(v28 + 17) = 0;
        (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v28 + 17) = 0;
        if (v90 != 1 || (v89 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        v11 = v88;
        goto LABEL_47;
      }

LABEL_25:
      LazuliRouteSet::~LazuliRouteSet(v44);
    }

    v85 = 0;
    v84 = 0;
    v86 = 0;
    SDPMedia::acceptTypes(v9, &v84);
    v82 = 0;
    v81 = 0;
    v83 = 0;
    SDPMedia::acceptTypes(v13, &v81);
    if (v84 == v85)
    {
      std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
      v77[0] = 0;
      v80 = 0;
      v24 = ims::error(v44, v77);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Remote Accept-Types is empty", 28);
      *(v24 + 17) = 0;
      (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v24 + 17) = 0;
      if (v80 != 1 || (v79 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v25 = v78;
    }

    else
    {
      if (v81 != v82)
      {
        v71 = 0;
        v70 = 0;
        v72 = 0;
        SDPMedia::acceptWrappedTypes(v9, &v70);
        v68 = 0;
        v67 = 0;
        v69 = 0;
        SDPMedia::acceptWrappedTypes(v13, &v67);
        if (v70 == v71)
        {
          std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
          v63[0] = 0;
          v66 = 0;
          v29 = ims::error(v44, v63);
          v30 = ImsOutStream::operator<<(v29, "Remote Accept-Wrapped-Types is empty");
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v30[17] = 0;
          if (v66 != 1 || (v65 & 0x80000000) == 0)
          {
            goto LABEL_71;
          }

          v31 = v64;
        }

        else
        {
          if (v67 != v68)
          {
            v57 = 0;
            v56 = 0;
            v58 = 0;
            std::ranges::__sort::operator()[abi:ne200100]<std::vector<std::string> &,std::ranges::less,std::identity>(v84, v85);
            std::ranges::__sort::operator()[abi:ne200100]<std::vector<std::string> &,std::ranges::less,std::identity>(v81, v82);
            if (ImsPrefs::CarrierBased(a3))
            {
              memset(v44, 0, 24);
              std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v44, v84, v85, 0xAAAAAAAAAAAAAAABLL * (v85 - v84));
              v17 = v85;
              v18 = v84;
              while (v17 != v18)
              {
                v19 = *(v17 - 1);
                v17 -= 3;
                if (v19 < 0)
                {
                  operator delete(*v17);
                }
              }

              v85 = v18;
              std::ranges::__transform::operator()[abi:ne200100]<std::vector<std::string> const&,std::back_insert_iterator<std::vector<std::string>>,SDPLazuliSettingsBuilder::createLazuliSettings(std::shared_ptr<SDPModel>,std::shared_ptr<SDPModel>,ImsPrefs const&,BOOL)::$_0,std::identity>(v44[0].__r_.__value_.__l.__data_, v44[0].__r_.__value_.__l.__size_, &v84);
              v49 = v44;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
            }

            std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<std::string>>>(v44, v81, v82, v84, v85, &v56);
            if (v56 == v57)
            {
              std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
              v52[0] = 0;
              v55 = 0;
              v36 = ims::error(v44, v52);
              v37 = ImsOutStream::operator<<(v36, "Set-intersection for accept-types is empty");
              (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v37[17] = 0;
              if (v55 == 1 && v54 < 0)
              {
                operator delete(v53);
              }

              if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v44[0].__r_.__value_.__l.__data_);
              }

              *a4 = 0;
              a4[360] = 0;
            }

            else
            {
              v50 = 0;
              v49 = 0;
              v51 = 0;
              std::ranges::__sort::operator()[abi:ne200100]<std::vector<std::string> &,std::ranges::less,std::identity>(v70, v71);
              std::ranges::__sort::operator()[abi:ne200100]<std::vector<std::string> &,std::ranges::less,std::identity>(v67, v68);
              std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<std::string>>>(v44, v67, v68, v70, v71, &v49);
              if (v49 != v50)
              {
                memset(v43, 0, sizeof(v43));
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v43, v56, v57, 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3));
                memset(v42, 0, sizeof(v42));
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v42, v49, v50, 0xAAAAAAAAAAAAAAABLL * (v50 - v49));
                v34 = *(v13 + 16);
                v35 = *(v9 + 16);
                SDPMedia::path(v13, v41);
                SDPMedia::path(v9, &v40);
                SDPMediaLazuliSettings::SDPMediaLazuliSettings(v44, v43, v42);
              }

              std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
              v45[0] = 0;
              v48 = 0;
              v38 = ims::error(v44, v45);
              v39 = ImsOutStream::operator<<(v38, "Set-intersection for accept-wrapped-types is empty");
              (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v39[17] = 0;
              if (v48 == 1 && v47 < 0)
              {
                operator delete(v46);
              }

              if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v44[0].__r_.__value_.__l.__data_);
              }

              *a4 = 0;
              a4[360] = 0;
              v44[0].__r_.__value_.__r.__words[0] = &v49;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            }

            v44[0].__r_.__value_.__r.__words[0] = &v56;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
LABEL_91:
            v44[0].__r_.__value_.__r.__words[0] = &v67;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            v44[0].__r_.__value_.__r.__words[0] = &v70;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
LABEL_92:
            v44[0].__r_.__value_.__r.__words[0] = &v81;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            v44[0].__r_.__value_.__r.__words[0] = &v84;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
            return;
          }

          std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
          v59[0] = 0;
          v62 = 0;
          v32 = ims::error(v44, v59);
          v33 = ImsOutStream::operator<<(v32, "Local Accept-Wrapped-Types is empty");
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v33[17] = 0;
          if (v62 != 1 || (v61 & 0x80000000) == 0)
          {
LABEL_71:
            if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44[0].__r_.__value_.__l.__data_);
            }

            *a4 = 0;
            a4[360] = 0;
            goto LABEL_91;
          }

          v31 = v60;
        }

        operator delete(v31);
        goto LABEL_71;
      }

      std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
      v73[0] = 0;
      v76 = 0;
      v26 = ims::error(v44, v73);
      v27 = ImsOutStream::operator<<(v26, "Local Accept-Types is empty");
      (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v27[17] = 0;
      if (v76 != 1 || (v75 & 0x80000000) == 0)
      {
LABEL_58:
        if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44[0].__r_.__value_.__l.__data_);
        }

        *a4 = 0;
        a4[360] = 0;
        goto LABEL_92;
      }

      v25 = v74;
    }

    operator delete(v25);
    goto LABEL_58;
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "sdp.lazulisettingbuilder");
  v91[0] = 0;
  v94 = 0;
  v23 = ims::error(v44, v91);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Media protocol types do not match", 33);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v94 != 1 || (v93 & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  v11 = __p;
LABEL_47:
  operator delete(v11);
LABEL_48:
  if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44[0].__r_.__value_.__l.__data_);
  }

  *a4 = 0;
  a4[360] = 0;
}

void sub_1E4C7ED58(_Unwind_Exception *a1)
{
  *(v1 - 56) = &STACK[0x240];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v1 - 56));
  STACK[0x240] = &STACK[0x290];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  STACK[0x290] = &STACK[0x318];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x290]);
  STACK[0x318] = &STACK[0x330];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x318]);
  STACK[0x330] = &STACK[0x3B8];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x330]);
  STACK[0x3B8] = &STACK[0x3D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B8]);
  _Unwind_Resume(a1);
}

void SDPLazuliSettingsBuilder::createLazuliSettingsForOfferAnswer(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, ImsPrefs *a4@<X3>, SDPMediaLazuliSettings *a5@<X8>)
{
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v9 = a2[1];
  v18[0] = *a2;
  v18[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  v17[0] = *a3;
  v17[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SDPLazuliSettingsBuilder::createLazuliSettings(v18, v17, a4, v19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (BYTE8(v20))
  {
    *a5 = 0;
    *(a5 + 360) = 0;
    SDPMediaLazuliSettings::SDPMediaLazuliSettings(a5, v19);
    *(a5 + 360) = 1;
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v16[0] = v11;
    v16[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *a3;
    v14 = a3[1];
    v15[0] = v13;
    v15[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SDPLazuliSettingsBuilder::createLazuliSettings(v16, v15, a4, a5);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (BYTE8(v20) == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings(v19);
  }
}

void sub_1E4C7F1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a62 == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings(&a17);
  }

  _Unwind_Resume(exception_object);
}

void std::ranges::__sort::operator()[abi:ne200100]<std::vector<std::string> &,std::ranges::less,std::identity>(uint64_t a1, void **a2)
{
  v2 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,std::string *,false>(a1, a2, v3, 1);
}

void std::ranges::__transform::operator()[abi:ne200100]<std::vector<std::string> const&,std::back_insert_iterator<std::vector<std::string>>,SDPLazuliSettingsBuilder::createLazuliSettings(std::shared_ptr<SDPModel>,std::shared_ptr<SDPModel>,ImsPrefs const&,BOOL)::$_0,std::identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *v5, *(v5 + 8));
      }

      else
      {
        *&v25.__first_ = *v5;
        v25.__end_ = *(v5 + 16);
      }

      end_high = HIBYTE(v25.__end_);
      first = v25.__first_;
      if (SHIBYTE(v25.__end_) >= 0)
      {
        v8 = &v25 + HIBYTE(v25.__end_);
      }

      else
      {
        v8 = v25.__first_ + v25.__begin_;
      }

      if (SHIBYTE(v25.__end_) >= 0)
      {
        v9 = &v25;
      }

      else
      {
        v9 = v25.__first_;
      }

      if (v9 != v8)
      {
        do
        {
          v9->__r_.__value_.__s.__data_[0] = __tolower(v9->__r_.__value_.__s.__data_[0]);
          v9 = (v9 + 1);
        }

        while (v9 != v8);
        first = v25.__first_;
        end_high = HIBYTE(v25.__end_);
      }

      v26[0] = v25.__begin_;
      *(v26 + 7) = *(&v25.__begin_ + 7);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      if (v10 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        v25.__end_cap_.__value_ = a3;
        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v17);
        }

        v18 = 24 * v14;
        v19 = v26[0];
        *v18 = first;
        *(v18 + 8) = v19;
        *(v18 + 15) = *(v26 + 7);
        *(v18 + 23) = end_high;
        v13 = 24 * v14 + 24;
        v20 = *(a3 + 8) - *a3;
        v21 = v18 - v20;
        memcpy((v18 - v20), *a3, v20);
        v22 = *a3;
        *a3 = v21;
        v25.__first_ = v22;
        v25.__begin_ = v22;
        *(a3 + 8) = v13;
        v25.__end_ = v22;
        v23 = *(a3 + 16);
        *(a3 + 16) = 0;
        v25.__end_cap_.__value_ = v23;
        std::__split_buffer<std::string>::~__split_buffer(&v25);
      }

      else
      {
        v12 = v26[0];
        *v10 = first;
        *(v10 + 8) = v12;
        *(v10 + 15) = *(v26 + 7);
        *(v10 + 23) = end_high;
        v13 = v10 + 24;
      }

      *(a3 + 8) = v13;
      v5 += 24;
    }

    while (v5 != a2);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4C7F490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void SDPSettingsBuilder::~SDPSettingsBuilder(SDPSettingsBuilder *this)
{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,std::string *,false>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v201 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a2 - 3;
  v8 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
  v195 = a2;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_205;
      }

      if (v12 == 2)
      {
        v126 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, v10);
        if (v126 < 0)
        {
LABEL_203:
          v190 = *v10;
          v198 = *(v10 + 16);
          v197 = v190;
          v191 = *v7;
          *(v10 + 16) = v7[2];
          *v10 = v191;
          v187 = v197;
          v188 = v198;
LABEL_204:
          v7[2] = v188;
          *v7 = v187;
        }

        goto LABEL_205;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 24), v10);
      v128 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, (v10 + 24));
      if (v127 < 0)
      {
        if (v128 < 0)
        {
          goto LABEL_203;
        }

        v186 = *v10;
        v198 = *(v10 + 16);
        v197 = v186;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v197;
        *(v10 + 40) = v198;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, (v10 + 24)) & 0x80) != 0)
        {
          v187 = *(v10 + 24);
          v197 = v187;
          v188 = *(v10 + 40);
          v198 = v188;
          v189 = v7[2];
          *(v10 + 24) = *v7;
          *(v10 + 40) = v189;
          goto LABEL_204;
        }

LABEL_205:
        v192 = *MEMORY[0x1E69E9840];
        return;
      }

      if ((v128 & 0x80000000) == 0)
      {
        goto LABEL_205;
      }

      v197 = *(v10 + 24);
      v129 = v197;
      v198 = *(v10 + 40);
      v130 = v198;
      v131 = v7[2];
      *(v10 + 24) = *v7;
      *(v10 + 40) = v131;
      v7[2] = v130;
      *v7 = v129;
LABEL_120:
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 24), v10) & 0x80) != 0)
      {
        v132 = *v10;
        v198 = *(v10 + 16);
        v197 = v132;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v197;
        *(v10 + 40) = v198;
      }

      goto LABEL_205;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(v10, (v10 + 24), (v10 + 48), (v10 + 72));
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, (v10 + 72)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v197 = *(v10 + 72);
      v119 = v197;
      v198 = *(v10 + 88);
      v120 = v198;
      v121 = v7[2];
      *(v10 + 72) = *v7;
      *(v10 + 88) = v121;
      v7[2] = v120;
      *v7 = v119;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 72), (v10 + 48)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v122 = *(v10 + 64);
      v123 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v123;
      *(v10 + 88) = v122;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 48), (v10 + 24)) & 0x80) == 0)
      {
        goto LABEL_205;
      }

      v124 = *(v10 + 40);
      v125 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v125;
      *(v10 + 64) = v124;
      goto LABEL_120;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = (v10 + 24);
      v136 = v10 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v10;
          do
          {
            v139 = v138;
            v138 = v134;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v134, v139) & 0x80) != 0)
            {
              v140 = *v138;
              v198 = v138[2];
              v197 = v140;
              v138[1] = 0;
              v138[2] = 0;
              *v138 = 0;
              v141 = v137;
              do
              {
                v142 = v10 + v141;
                if (*(v10 + v141 + 47) < 0)
                {
                  operator delete(*(v142 + 24));
                }

                *(v142 + 24) = *v142;
                *(v142 + 40) = *(v142 + 16);
                *(v142 + 23) = 0;
                *v142 = 0;
                if (!v141)
                {
                  v144 = v10;
                  goto LABEL_143;
                }

                v141 -= 24;
              }

              while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, (v141 + v10)) & 0x80) != 0);
              v143 = *(v10 + v141 + 47);
              v144 = v10 + v141 + 24;
              if (v143 < 0)
              {
                operator delete(*v144);
              }

LABEL_143:
              v145 = v197;
              *(v144 + 16) = v198;
              *v144 = v145;
              a2 = v195;
            }

            v134 = v138 + 3;
            v137 += 24;
          }

          while (v138 + 3 != a2);
        }
      }

      else if (!v136)
      {
        v180 = v10 - 24;
        do
        {
          v181 = a1;
          a1 = v134;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v134, v181) & 0x80) != 0)
          {
            v182 = *a1;
            v198 = *(a1 + 16);
            v197 = v182;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v183 = v180;
            do
            {
              if (*(v183 + 71) < 0)
              {
                operator delete(*(v183 + 48));
              }

              *(v183 + 48) = *(v183 + 24);
              *(v183 + 64) = *(v183 + 40);
              *(v183 + 47) = 0;
              *(v183 + 24) = 0;
              v184 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v197, v183);
              v183 -= 24;
            }

            while (v184 < 0);
            if (*(v183 + 71) < 0)
            {
              operator delete(*(v183 + 48));
            }

            v185 = v197;
            *(v183 + 64) = v198;
            *(v183 + 48) = v185;
          }

          v134 = (a1 + 24);
          v180 += 24;
        }

        while ((a1 + 24) != a2);
      }

      goto LABEL_205;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v146 = v13 >> 1;
        v147 = v13 >> 1;
        do
        {
          v148 = v147;
          if (v146 >= v147)
          {
            v149 = (2 * v147) | 1;
            v150 = a1 + 24 * v149;
            if (2 * v147 + 2 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v149), (v150 + 24)) & 0x80u) != 0)
            {
              v150 += 24;
              v149 = 2 * v148 + 2;
            }

            v151 = a1 + 24 * v148;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v150, v151) & 0x80) == 0)
            {
              v152 = *v151;
              v198 = *(v151 + 16);
              v197 = v152;
              *(v151 + 8) = 0;
              *(v151 + 16) = 0;
              *v151 = 0;
              while (1)
              {
                v153 = v150;
                if (*(v151 + 23) < 0)
                {
                  operator delete(*v151);
                }

                v154 = *v150;
                *(v151 + 16) = *(v150 + 16);
                *v151 = v154;
                *(v150 + 23) = 0;
                *v150 = 0;
                if (v146 < v149)
                {
                  break;
                }

                v155 = (2 * v149) | 1;
                v150 = a1 + 24 * v155;
                v156 = 2 * v149 + 2;
                if (v156 < v12 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v155), (v150 + 24)) & 0x80u) != 0)
                {
                  v150 += 24;
                  v155 = v156;
                }

                v151 = v153;
                v149 = v155;
                if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v150, &v197) & 0x80) != 0)
                {
                  if (*(v153 + 23) < 0)
                  {
                    operator delete(*v153);
                  }

                  break;
                }
              }

              v157 = v197;
              *(v153 + 16) = v198;
              *v153 = v157;
            }
          }

          v147 = v148 - 1;
        }

        while (v148);
        v158 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v159 = v195;
        do
        {
          v160 = 0;
          v161 = v159;
          v194 = *a1;
          *&v199 = *(a1 + 8);
          *(&v199 + 7) = *(a1 + 15);
          v196 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v162 = a1;
          do
          {
            v163 = v162;
            v164 = v162 + 24 * v160;
            v162 = v164 + 24;
            v165 = 2 * v160;
            v160 = (2 * v160) | 1;
            v166 = v165 + 2;
            if (v165 + 2 < v158)
            {
              v167 = v164 + 48;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v164 + 24), (v164 + 48)) & 0x80u) != 0)
              {
                v162 = v167;
                v160 = v166;
              }

              if (*(v163 + 23) < 0)
              {
                operator delete(*v163);
              }
            }

            v168 = *v162;
            *(v163 + 16) = *(v162 + 16);
            *v163 = v168;
            *(v162 + 23) = 0;
            *v162 = 0;
          }

          while (v160 <= (v158 - 2) / 2);
          if (v162 == v159 - 3)
          {
            v159 -= 3;
            *v162 = v194;
            v178 = *(&v199 + 7);
            *(v162 + 8) = v199;
            *(v162 + 15) = v178;
            *(v162 + 23) = v196;
          }

          else
          {
            v169 = *(v159 - 3);
            v159 -= 3;
            *(v162 + 16) = *(v161 - 1);
            *v162 = v169;
            *(v161 - 3) = v194;
            v170 = v199;
            *(v161 - 9) = *(&v199 + 7);
            *(v161 - 2) = v170;
            *(v161 - 1) = v196;
            v171 = v162 - a1 + 24;
            if (v171 >= 25)
            {
              v172 = (-2 - 0x5555555555555555 * (v171 >> 3)) >> 1;
              v173 = a1 + 24 * v172;
              if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v173, v162) & 0x80) != 0)
              {
                v174 = *v162;
                v198 = *(v162 + 16);
                v197 = v174;
                *(v162 + 8) = 0;
                *(v162 + 16) = 0;
                *v162 = 0;
                while (1)
                {
                  v175 = v173;
                  if (*(v162 + 23) < 0)
                  {
                    operator delete(*v162);
                  }

                  v176 = *v173;
                  *(v162 + 16) = *(v173 + 16);
                  *v162 = v176;
                  *(v173 + 23) = 0;
                  *v173 = 0;
                  if (!v172)
                  {
                    break;
                  }

                  v172 = (v172 - 1) >> 1;
                  v173 = a1 + 24 * v172;
                  v162 = v175;
                  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v173, &v197) & 0x80) == 0)
                  {
                    if (*(v175 + 23) < 0)
                    {
                      operator delete(*v175);
                    }

                    break;
                  }
                }

                v177 = v197;
                *(v175 + 16) = v198;
                *v175 = v177;
              }
            }
          }
        }

        while (v158-- > 2);
      }

      goto LABEL_205;
    }

    v14 = v12 >> 1;
    v15 = (v10 + 24 * v14);
    if (v11 >= 0xC01)
    {
      v16 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v14), a1);
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, (a1 + 24 * v14));
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          v42 = *a1;
          v198 = *(a1 + 16);
          v197 = v42;
          v43 = *v7;
          *(a1 + 16) = v7[2];
          *a1 = v43;
        }

        else
        {
          v32 = *a1;
          v198 = *(a1 + 16);
          v197 = v32;
          v33 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v33;
          v34 = v197;
          v15[2] = v198;
          *v15 = v34;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, (a1 + 24 * v14)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v35 = *v15;
          v198 = v15[2];
          v197 = v35;
          v36 = *v7;
          v15[2] = v7[2];
          *v15 = v36;
        }

        v44 = v197;
        v7[2] = v198;
        *v7 = v44;
      }

      else if (v17 < 0)
      {
        v18 = *v15;
        v198 = v15[2];
        v197 = v18;
        v19 = *v7;
        v15[2] = v7[2];
        *v15 = v19;
        v20 = v197;
        v7[2] = v198;
        *v7 = v20;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v14), a1) & 0x80) != 0)
        {
          v21 = *a1;
          v198 = *(a1 + 16);
          v197 = v21;
          v22 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v22;
          v23 = v197;
          v15[2] = v198;
          *v15 = v23;
        }
      }

LABEL_29:
      v45 = (a1 + 24 * v14 - 24);
      v46 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, (a1 + 24));
      v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, v45);
      if (v46 < 0)
      {
        if (v47 < 0)
        {
          v59 = *(a1 + 24);
          v197 = v59;
          v60 = *(a1 + 40);
          v198 = v60;
          v64 = v8[2];
          *(a1 + 24) = *v8;
          *(a1 + 40) = v64;
        }

        else
        {
          v197 = *(a1 + 24);
          v54 = v197;
          v198 = *(a1 + 40);
          v55 = v198;
          v56 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v56;
          *(a1 + 24 * v14 - 8) = v55;
          *v45 = v54;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, v45) & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v57 = *v45;
          v198 = *(a1 + 24 * v14 - 8);
          v197 = v57;
          v58 = *v8;
          *(a1 + 24 * v14 - 8) = v8[2];
          *v45 = v58;
          v59 = v197;
          v60 = v198;
        }

        v8[2] = v60;
        *v8 = v59;
      }

      else if (v47 < 0)
      {
        v48 = *v45;
        v198 = *(a1 + 24 * v14 - 8);
        v197 = v48;
        v49 = *v8;
        *(a1 + 24 * v14 - 8) = v8[2];
        *v45 = v49;
        v50 = v197;
        v8[2] = v198;
        *v8 = v50;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, (a1 + 24)) & 0x80) != 0)
        {
          v197 = *(a1 + 24);
          v51 = v197;
          v198 = *(a1 + 40);
          v52 = v198;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v45 = v51;
        }
      }

LABEL_40:
      v65 = a1 + 24 * v14;
      v66 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v65 + 24), (a1 + 48));
      v67 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, (v65 + 24));
      if (v66 < 0)
      {
        if (v67 < 0)
        {
          v79 = *(a1 + 48);
          v197 = v79;
          v80 = *(a1 + 64);
          v198 = v80;
          v81 = v9[2];
          *(a1 + 48) = *v9;
          *(a1 + 64) = v81;
        }

        else
        {
          v197 = *(a1 + 48);
          v74 = v197;
          v198 = *(a1 + 64);
          v75 = v198;
          v76 = *(v65 + 40);
          *(a1 + 48) = *(v65 + 24);
          *(a1 + 64) = v76;
          *(v65 + 40) = v75;
          *(v65 + 24) = v74;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, (v65 + 24)) & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v77 = *(v65 + 24);
          v198 = *(v65 + 40);
          v197 = v77;
          v78 = *v9;
          *(v65 + 40) = v9[2];
          *(v65 + 24) = v78;
          v79 = v197;
          v80 = v198;
        }

        v9[2] = v80;
        *v9 = v79;
      }

      else if (v67 < 0)
      {
        v68 = *(v65 + 24);
        v198 = *(v65 + 40);
        v197 = v68;
        v69 = *v9;
        *(v65 + 40) = v9[2];
        *(v65 + 24) = v69;
        v70 = v197;
        v9[2] = v198;
        *v9 = v70;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v65 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v197 = *(a1 + 48);
          v71 = v197;
          v198 = *(a1 + 64);
          v72 = v198;
          v73 = *(v65 + 40);
          *(a1 + 48) = *(v65 + 24);
          *(a1 + 64) = v73;
          *(v65 + 40) = v72;
          *(v65 + 24) = v71;
        }
      }

LABEL_49:
      v82 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45);
      v83 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v65 + 24), v15);
      if ((v82 & 0x80) == 0)
      {
        if (v83 < 0)
        {
          v84 = *v15;
          v198 = v15[2];
          v197 = v84;
          *v15 = *(v65 + 24);
          v15[2] = *(v65 + 40);
          v85 = v197;
          *(v65 + 40) = v198;
          *(v65 + 24) = v85;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, v45) & 0x80) != 0)
          {
            v86 = *v45;
            v198 = v45[2];
            v197 = v86;
            *v45 = *v15;
            v45[2] = v15[2];
            v87 = v197;
            v15[2] = v198;
            *v15 = v87;
          }
        }

        goto LABEL_58;
      }

      if (v83 < 0)
      {
        v91 = *v45;
        v198 = v45[2];
        v197 = v91;
        *v45 = *(v65 + 24);
        v45[2] = *(v65 + 40);
      }

      else
      {
        v88 = *v45;
        v198 = v45[2];
        v197 = v88;
        *v45 = *v15;
        v45[2] = v15[2];
        v89 = v197;
        v15[2] = v198;
        *v15 = v89;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v65 + 24), v15) & 0x80) == 0)
        {
LABEL_58:
          v93 = *a1;
          v198 = *(a1 + 16);
          v197 = v93;
          v94 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v94;
          v95 = v197;
          v15[2] = v198;
          *v15 = v95;
          goto LABEL_59;
        }

        v90 = *v15;
        v198 = v15[2];
        v197 = v90;
        *v15 = *(v65 + 24);
        v15[2] = *(v65 + 40);
      }

      v92 = v197;
      *(v65 + 40) = v198;
      *(v65 + 24) = v92;
      goto LABEL_58;
    }

    v24 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 24 * v14));
    v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, a1);
    if ((v24 & 0x80) == 0)
    {
      if (v25 < 0)
      {
        v26 = *a1;
        v198 = *(a1 + 16);
        v197 = v26;
        v27 = *v7;
        *(a1 + 16) = v7[2];
        *a1 = v27;
        v28 = v197;
        v7[2] = v198;
        *v7 = v28;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 24 * v14)) & 0x80) != 0)
        {
          v29 = *v15;
          v198 = v15[2];
          v197 = v29;
          v30 = *a1;
          v15[2] = *(a1 + 16);
          *v15 = v30;
          v31 = v197;
          *(a1 + 16) = v198;
          *a1 = v31;
        }
      }

      goto LABEL_59;
    }

    if (v25 < 0)
    {
      v61 = *v15;
      v198 = v15[2];
      v197 = v61;
      v62 = *v7;
      v15[2] = v7[2];
      *v15 = v62;
    }

    else
    {
      v37 = *v15;
      v198 = v15[2];
      v197 = v37;
      v38 = *a1;
      v15[2] = *(a1 + 16);
      *v15 = v38;
      v39 = v197;
      *(a1 + 16) = v198;
      *a1 = v39;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, a1) & 0x80) == 0)
      {
        goto LABEL_59;
      }

      v40 = *a1;
      v198 = *(a1 + 16);
      v197 = v40;
      v41 = *v7;
      *(a1 + 16) = v7[2];
      *a1 = v41;
    }

    v63 = v197;
    v7[2] = v198;
    *v7 = v63;
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 - 24), a1) & 0x80) != 0)
    {
      v96 = 0;
      v97 = *a1;
      v200 = *(a1 + 16);
      v199 = v97;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      do
      {
        v96 += 24;
      }

      while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v96 + a1), &v199) & 0x80) != 0);
      v98 = a1 + v96;
      v99 = v195;
      if (v96 == 24)
      {
        v99 = v195;
        do
        {
          if (v98 >= v99)
          {
            break;
          }

          v99 -= 3;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v99, &v199) & 0x80) == 0);
      }

      else
      {
        do
        {
          v99 -= 3;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v99, &v199) & 0x80) == 0);
      }

      v10 = a1 + v96;
      if (v98 >= v99)
      {
        a2 = v195;
      }

      else
      {
        v100 = v99;
        a2 = v195;
        do
        {
          v101 = *v10;
          v198 = *(v10 + 16);
          v197 = v101;
          v102 = *v100;
          *(v10 + 16) = v100[2];
          *v10 = v102;
          v103 = v197;
          v100[2] = v198;
          *v100 = v103;
          do
          {
            v10 += 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v199) & 0x80) != 0);
          do
          {
            v100 -= 3;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v100, &v199) & 0x80) == 0);
        }

        while (v10 < v100);
      }

      v104 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v105 = *v104;
        *(a1 + 16) = *(v10 - 8);
        *a1 = v105;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v106 = v199;
      *(v10 - 8) = v200;
      *v104 = v106;
      if (v98 < v99)
      {
        goto LABEL_86;
      }

      v107 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *>(a1, (v10 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *>(v10, a2))
      {
        a2 = (v10 - 24);
        if (!v107)
        {
          goto LABEL_2;
        }

        goto LABEL_205;
      }

      if (!v107)
      {
LABEL_86:
        std::__introsort<std::_RangeAlgPolicy,std::ranges::less &,std::string *,false>(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v108 = *a1;
      v200 = *(a1 + 16);
      v199 = v108;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v7) & 0x80) != 0)
      {
        v10 = a1;
        v110 = v195;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v10) & 0x80) == 0);
      }

      else
      {
        v109 = (a1 + 24);
        v110 = v195;
        do
        {
          v10 = v109;
          if (v109 >= v195)
          {
            break;
          }

          v111 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v109);
          v109 = (v10 + 24);
        }

        while ((v111 & 0x80) == 0);
      }

      v112 = v110;
      if (v10 < v110)
      {
        v112 = v110;
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v112) & 0x80) != 0);
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v198 = *(v10 + 16);
        v197 = v113;
        v114 = *v112;
        *(v10 + 16) = *(v112 + 16);
        *v10 = v114;
        v115 = v197;
        *(v112 + 16) = v198;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v10) & 0x80) == 0);
        do
        {
          v112 -= 24;
        }

        while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v199, v112) & 0x80) != 0);
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 16) = *(v10 - 8);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v199;
      *(v10 - 8) = v200;
      *v116 = v118;
      a2 = v195;
    }
  }

  v133 = *MEMORY[0x1E69E9840];

  std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(v10, (v10 + 24), (v10 + 48), v7);
}

__n128 std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(void **a1, void **a2, void **a3, void *a4)
{
  v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1);
  v9 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *>(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
        v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

std::__split_buffer<std::string>::pointer std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<std::string>>>(std::__split_buffer<std::string>::pointer result, char *a2, char *a3, void **a4, char *a5, uint64_t a6)
{
  words = result->__r_.__value_.__r.__words;
  if (a4 != a5)
  {
    v10 = a4;
    v12 = 0;
    do
    {
      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::string,std::__identity const,std::__less<void,void>>(a2, a3, v10);
      p_data = &result->__r_.__value_.__l.__data_;
      v14 = a2 == result;
      if (v12 && a2 == result)
      {
        result = std::vector<std::string>::push_back[abi:ne200100](a6, result);
        v14 = 0;
        p_data += 3;
        v10 += 3;
      }

      if (p_data == a3)
      {
        break;
      }

      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::string,std::__identity const,std::__less<void,void>>(v10, a5, p_data);
      v15 = result;
      v12 = v10 == result;
      if (v10 == result && v14)
      {
        result = std::vector<std::string>::push_back[abi:ne200100](a6, p_data);
        v12 = 0;
        p_data += 3;
        v10 = &v15[1].__r_.__value_.__l.__data_;
      }

      else
      {
        v10 = &result->__r_.__value_.__l.__data_;
      }

      a2 = p_data;
    }

    while (v10 != a5);
  }

  *words = a3;
  words[1] = a5;
  words[2] = a6;
  return result;
}

char *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::string,std::__identity const,std::__less<void,void>>(char *a1, char *a2, void **a3)
{
  v3 = a2;
  v4 = a2 - a1;
  if (a2 != a1)
  {
    v6 = a1;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3) & 0x80) == 0)
    {
      return v6;
    }

    if ((0xAAAAAAAAAAAAAAABLL * (v4 >> 3)) >= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    }

    v8 = &v6[24 * v7];
    if (v8 != v3)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v6[24 * v7], a3) & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v9 = 1;
      while (1)
      {
        v6 = v8;
        v10 = 2 * v9;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v8) >> 3);
        v12 = v11 < 2 * v9;
        if (v11 <= 2 * v9)
        {
          v13 = 2 * v9;
        }

        else
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v8) >> 3);
        }

        if (!v12)
        {
          v11 = v10;
        }

        v7 = v10 >= 0 ? v11 : v13;
        v8 += 24 * v7;
        if (v8 == v3)
        {
          break;
        }

        v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, a3);
        v9 = v10;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v8 = v3;
LABEL_22:
    if (v7)
    {
      if (v7 == 1)
      {
        return v8;
      }

      do
      {
        v15 = &v6[24 * (v7 >> 1)];
        v16 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a3);
        if (v16 >= 0)
        {
          v7 >>= 1;
        }

        else
        {
          v7 += ~(v7 >> 1);
        }

        if (v16 < 0)
        {
          v6 = v15 + 24;
        }
      }

      while (v7);
    }

    return v6;
  }

  return v3;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void SipUnknownHeader::~SipUnknownHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t TTAKRegistrationPolicy::TTAKRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Rfc5626RegistrationPolicy::Rfc5626RegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5EBFE20;
  *(a1 + 136) = &unk_1F5EC0080;
  *(a1 + 144) = &unk_1F5EC00B0;
  *(a1 + 152) = &unk_1F5EC00C8;
  *(a1 + 2380) = 0;
  return a1;
}

void sub_1E4C812B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void TTAKRegistrationPolicy::performActualWaitTime(TTAKRegistrationPolicy *this, const ImsResult *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 2380) = 1;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 20);
  v2 = v5;
  if (v5)
  {
    p_shared_weak_owners = &v5->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  operator new();
}

void sub_1E4C81460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void TTAKRegistrationPolicy::handleTimer(SipRegistrationPolicy *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 == 14 && (v4 >= 0 ? (v5 = a2) : (v5 = *a2), (v6 = *v5, v7 = *(v5 + 6), v6 == 0x61576C6175746341) ? (v8 = v7 == 0x656D695474696157) : (v8 = 0), v8))
  {
    v9 = *(a1 + 50);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(a1 + 49);
        if (v12)
        {
          v13 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "actual wait timer fired. Time to bring down the PDN.", 52);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          (*(*v12 + 64))(v12);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {

    SipRegistrationPolicy::handleTimer(a1, a2);
  }
}

uint64_t TTAKRegistrationPolicy::startingRegistration(TTAKRegistrationPolicy *this)
{
  if (*(this + 2380) == 1)
  {
    v2 = (*(*this + 32))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "registration is blocked until the PDN is reset", 46);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    return 0;
  }

  else
  {

    return SipRegistrationPolicy::startingRegistration(this);
  }
}

void TTAKRegistrationPolicy::deinitialize(TTAKRegistrationPolicy *this)
{
  *(this + 2380) = 0;
  SipTimerContainer::cancelAllTimers((this + 224));
  *(this + 2266) = 0;
  *(this + 2368) = 0;
}

uint64_t TTAKRegistrationPolicy::onInterfaceChanged(TTAKRegistrationPolicy *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Not clearing throttling on interface change, per policy.", 56);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

void TTAKRegistrationPolicy::~TTAKRegistrationPolicy(TTAKRegistrationPolicy *this)
{
  SipRegistrationPolicy::~SipRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toTTAKRegistrationPolicy::~TTAKRegistrationPolicy(TTAKRegistrationPolicy *this)
{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 136));
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 152));
}

{
  SipRegistrationPolicy::~SipRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC0108;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC0108;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC0108;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0,std::allocator<TTAKRegistrationPolicy::performActualWaitTime(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int8x16_t SipRegistrationConfig::initializeFromPrefs(SipRegistrationConfig *this, const ImsPrefs *a2, const ims::StackConfig *a3, const ClientConfig *a4)
{
  v6 = *(a3 + 731);
  *(this + 1348) = v6;
  v7 = *(a3 + 732);
  *(this + 1349) = v7;
  if (v6 == 1)
  {
    v8 = this + 1280;
    v9 = *(this + 1303);
    if (v7)
    {
      if (v9 < 0)
      {
        *(this + 161) = 15;
        v8 = *(this + 160);
      }

      else
      {
        *(this + 1303) = 15;
      }

      strcpy(v8, "LazuliTransient");
    }

    else
    {
      if (v9 < 0)
      {
        *(this + 161) = 6;
        v8 = *(this + 160);
      }

      else
      {
        *(this + 1303) = 6;
      }

      strcpy(v8, "Lazuli");
    }
  }

  else
  {
    ImsPrefs::RegistrationPolicy(a2, &__p);
    v10 = (this + 1280);
    if (*(this + 1303) < 0)
    {
      operator delete(*v10);
    }

    *v10 = *&__p.__r_.__value_.__l.__data_;
    *(this + 162) = *(&__p.__r_.__value_.__l + 2);
  }

  *(this + 9) = ImsPrefs::RegistrationExpirationSeconds(a2);
  *(this + 33) = ImsPrefs::RegSubscriptionEnabled(a2);
  *(this + 10) = ImsPrefs::RegSubscriptionExpirationSeconds(a2);
  *(this + 11) = ImsPrefs::RegistrationExpirationCushionSeconds(a2);
  *(this + 12) = ImsPrefs::RegistrationRefreshCushionPercent(a2);
  *(this + 14) = ImsPrefs::RegistrationRefreshCushionCapSeconds(a2);
  *(this + 15) = ImsPrefs::RegistrationThrottlingCushionPercent(a2);
  *(this + 16) = ImsPrefs::RegistrationThrottlingCushionCapSeconds(a2);
  *(this + 68) = ImsPrefs::AllowEarlyRegistrationRefresh(a2);
  *(this + 1224) = ImsPrefs::FuzzyContactMatching(a2);
  *(this + 13) = ImsPrefs::RegistrationCoalesceCushionPercent(a2);
  *(this + 32) = ImsPrefs::FeatureTagsEnabled(a2);
  ImsPrefs::ForcedFeatureTags(a2, &__p);
  *(this + 7) = BambiServices::serviceMaskForNames(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ImsPrefs::ContactUser(a2, &__p);
  v11 = (this + 912);
  if (*(this + 935) < 0)
  {
    operator delete(*v11);
  }

  *v11 = *&__p.__r_.__value_.__l.__data_;
  *(this + 116) = *(&__p.__r_.__value_.__l + 2);
  *(this + 34) = ImsPrefs::AllowLimitedAccessModeRegistration(a2);
  *(this + 35) = ImsPrefs::AllowDisabledMode(a2);
  ImsPrefs::RegistrationRetryIntervals(a2, &v39);
  *(this + 121) = *(this + 120);
  memset(&__p, 0, sizeof(__p));
  ims::tokenize(&v39, &__p, 0x2Cu);
  v12 = (this + 960);
  size = __p.__r_.__value_.__l.__size_;
  for (i = __p.__r_.__value_.__r.__words[0]; i != size; i += 24)
  {
    if ((*(i + 23) & 0x8000000000000000) != 0)
    {
      if (!*(i + 8))
      {
        continue;
      }
    }

    else if (!*(i + 23))
    {
      continue;
    }

    v15 = std::string::find(i, 43, 0);
    if (v15 != -1)
    {
      v16 = v15;
      memset(&v41, 0, sizeof(v41));
      std::string::basic_string(&v41, i, 0, v15, &v40);
      memset(&v40, 0, sizeof(v40));
      std::string::basic_string(&v40, i, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, &v43);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        v17 = v41.__r_.__value_.__r.__words[0];
LABEL_35:
        v20 = strtoul(v17, 0, 10);
      }

      else
      {
        if (*(&v41.__r_.__value_.__s + 23))
        {
          v17 = &v41;
          goto LABEL_35;
        }

LABEL_36:
        v20 = 0;
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v40.__r_.__value_.__l.__size_)
        {
          v22 = v40.__r_.__value_.__r.__words[0];
LABEL_42:
          v21 = strtoul(v22, 0, 10);
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v21 = 0;
        }

        operator delete(v40.__r_.__value_.__l.__data_);
        goto LABEL_50;
      }

      if (*(&v40.__r_.__value_.__s + 23))
      {
        v22 = &v40;
        goto LABEL_42;
      }

      v21 = 0;
LABEL_50:
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

LABEL_52:
      v25 = *(this + 121);
      v26 = *(this + 122);
      if (v25 >= v26)
      {
        v28 = (v25 - *v12) >> 4;
        v29 = v28 + 1;
        if ((v28 + 1) >> 60)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        v30 = v26 - *v12;
        if (v30 >> 3 > v29)
        {
          v29 = v30 >> 3;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(this + 960, v31);
        }

        v32 = 16 * v28;
        *v32 = v20;
        *(v32 + 8) = v21;
        *(v32 + 12) = 0;
        v27 = 16 * v28 + 16;
        v33 = *(this + 120);
        v34 = *(this + 121) - v33;
        v35 = v32 - v34;
        memcpy((v32 - v34), v33, v34);
        v36 = *(this + 120);
        *(this + 120) = v35;
        *(this + 121) = v27;
        *(this + 122) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v25 = v20;
        v27 = v25 + 16;
        *(v25 + 8) = v21;
        *(v25 + 12) = 0;
      }

      *(this + 121) = v27;
      continue;
    }

    v18 = i;
    if (*(i + 23) < 0)
    {
      v18 = *i;
    }

    v19 = strtoul(v18, 0, 10);
    if (v19)
    {
      v20 = v19;
LABEL_32:
      v21 = 0;
      goto LABEL_52;
    }

    v23 = *(i + 23);
    if (v23 < 0)
    {
      if (*(i + 8) != 1)
      {
        continue;
      }

      v24 = *i;
    }

    else
    {
      v24 = i;
      if (v23 != 1)
      {
        continue;
      }
    }

    if (*v24 == 48)
    {
      v20 = 0;
      goto LABEL_32;
    }
  }

  v41.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  *(this + 250) = ImsPrefs::MaxFatalRegistrationErrors(a2);
  *(this + 251) = ImsPrefs::MaxAuthRetries(a2);
  *(this + 123) = ImsPrefs::NetworkTerminationRetryIntervalSeconds(a2);
  *(this + 1225) = ImsPrefs::SubscriptionTerminatedMeansRegistrationTerminated(a2);
  *(this + 1226) = ImsPrefs::ReSubscribeOnReRegistration(a2);
  ImsPrefs::RetryAfterStatusCodes(a2, &__p);
  SipRegistrationConfig::retryAfterStatusCodesFromString(this + 1232, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ImsPrefs::IgnoreRetryAfterStatusCodes(a2, &__p);
  SipRegistrationConfig::retryAfterStatusCodesFromString(this + 1256, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ImsPrefs::ResetDisabledModeOnEvents(a2, &__p);
  *(this + 326) = deviceEventsFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ImsPrefs::ResetThrottlingOnEvents(a2, &__p);
  *(this + 327) = deviceEventsFromString(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 334) = ImsPrefs::MaxForbiddenErrors(a2);
  *(this + 335) = ImsPrefs::MaxReRegistrationAttempts(a2);
  *(this + 1344) = ImsPrefs::ClearRegistrationCallIdOnDeinitialization(a2);
  *(this + 124) = ImsPrefs::IncompleteRegistrationThrottlingIntervalSeconds(a2);
  *(this + 338) = ImsPrefs::RegistrationRetryMaxTimeSeconds(a2);
  *(this + 339) = ImsPrefs::RegistrationRetryBaseTimeSeconds(a2);
  *(this + 1345) = ImsPrefs::UseFakeSAsForDeregistration(a2);
  *(this + 340) = ImsPrefs::MaxRegistrationAttemptsPerProxy(a2);
  *(this + 341) = ImsPrefs::PdnBringupTimerSeconds(a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "REGISTER");
  ImsPrefs::FatalRegistrationErrorCodes(a2, &v41);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1416, &__p.__r_.__value_.__l.__data_, &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "REGISTER");
  ImsPrefs::ForbiddenRegistrationErrorCodes(a2, &v41);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1384, &__p.__r_.__value_.__l.__data_, &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "REGISTER");
  ImsPrefs::DontThrottleOnRegistrationErrorCodes(a2, &v41);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1448, &__p.__r_.__value_.__l.__data_, &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "REGISTER");
  ImsPrefs::TimeoutRegistrationAllProxyErrorCodes(a2, &v41);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1480, &__p.__r_.__value_.__l.__data_, &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 342) = ImsPrefs::SubscriptionRetryMaxSeconds(a2);
  *(this + 343) = ImsPrefs::SubscriptionRetryMinSeconds(a2);
  *(this + 1544) = ImsPrefs::UseCustomSSOAuth(a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "DisableRegistrationOnNotifyEvents");
  ImsPrefs::stringArrayValues(a2, &__p.__r_.__value_.__l.__data_, this + 204);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 1377) = ImsPrefs::AllowRegistrationCanceledState(a2);
  *(this + 1346) = ImsPrefs::KillRegistrationOnHandoverTimeout(a2);
  *(this + 1656) = ImsPrefs::AlwaysResetProxyList(a2);
  *(this + 1657) = ImsPrefs::DontChangeProxiesDuringActiveCalls(a2);
  *(this + 415) = ImsPrefs::ReRegistrationHysteresisTimerMilliseconds(a2);
  *(this + 1624) = ImsPrefs::HonorForbiddenRetryAfter(a2);
  ImsPrefs::ClearThrottlingOnSocketErrors(a2, &__p);
  ImsResultSet::fromString(this + 1512, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 1664) = ImsPrefs::UseNextProxyForPcscfRestoration(a2);
  *(this + 1665) = ImsPrefs::NoFallbackVoiceService(a2);
  *(this + 1347) = ImsPrefs::DeferReRegOnSubDisable(a2);
  if (*(this + 1349) == 1)
  {
    *(this + 13) = 0;
    *(this + 60) = 0;
    *(this + 68) = 0;
    *(this + 121) = *(this + 120);
    __p.__r_.__value_.__r.__words[0] = 2;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    std::vector<SipRetryInfo>::push_back[abi:ne200100](this + 960, &__p);
    __p.__r_.__value_.__r.__words[0] = 5;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    std::vector<SipRetryInfo>::push_back[abi:ne200100](this + 960, &__p);
    __p.__r_.__value_.__r.__words[0] = 10;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    std::vector<SipRetryInfo>::push_back[abi:ne200100](v12, &__p);
    __p.__r_.__value_.__r.__words[0] = 20;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
    std::vector<SipRetryInfo>::push_back[abi:ne200100](v12, &__p);
    v38 = vdupq_n_s64(0xAuLL);
    result = vbslq_s8(vcgtq_s64(v38, *(this + 984)), *(this + 984), v38);
    *(this + 984) = result;
  }

  return result;
}

void sub_1E4C82534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationConfig::retryAfterStatusCodesFromString(uint64_t a1, std::string *a2)
{
  v4 = (a1 + 8);
  std::__tree<unsigned int>::destroy(a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 16) = 0;
  *v4 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  ims::tokenize(a2, &v8, 0x2Cu);
  v5 = v8;
  v6 = v9;
  while (v5 != v6)
  {
    if (*(v5 + 23) < 0)
    {
      if (!*(v5 + 8))
      {
        goto LABEL_10;
      }

      v7 = *v5;
    }

    else
    {
      if (!*(v5 + 23))
      {
        goto LABEL_10;
      }

      v7 = v5;
    }

    LODWORD(v11) = strtoul(v7, 0, 10);
    if (v11)
    {
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, &v11);
    }

LABEL_10:
    v5 += 24;
  }

  v11 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1E4C826B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t deviceEventsFromString(std::string *a1)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  ims::tokenize(a1, &v38, 0x2Cu);
  v1 = v38;
  v2 = v39;
  if (v38 != v39)
  {
    v3 = 0;
    while (1)
    {
      ims::chomp(v1, "\r\n\t ", 3);
      v4 = *(v1 + 23);
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (*(v1 + 8) == 11 && **v1 == *"SimInserted" && *(*v1 + 3) == *"Inserted")
      {
        goto LABEL_104;
      }

      if (*(v1 + 8) == 19)
      {
        v10 = **v1 == *"AirplaneModeToggled" && *(*v1 + 8) == *"ModeToggled";
        if (v10 && *(*v1 + 11) == *"eToggled")
        {
LABEL_93:
          v3 = v3 | 2;
          goto LABEL_154;
        }
      }

      if (*(v1 + 8) == 20)
      {
        v12 = **v1 == *"AccessNetworkChanged" && *(*v1 + 8) == *"tworkChanged";
        if (v12 && *(*v1 + 16) == *"nged")
        {
LABEL_149:
          v3 = v3 | 4;
          goto LABEL_154;
        }
      }

      if (*(v1 + 8) == 10 && **v1 == *"AudioReady" && *(*v1 + 8) == *"dy")
      {
        goto LABEL_150;
      }

      if (*(v1 + 8) == 19)
      {
        v15 = **v1 == *"AirplaneModeEnabled" && *(*v1 + 8) == *"ModeEnabled";
        if (v15 && *(*v1 + 11) == *"eEnabled")
        {
          goto LABEL_92;
        }
      }

      if (*(v1 + 8) == 20)
      {
        v17 = **v1 == *"AirplaneModeDisabled" && *(*v1 + 8) == *"ModeDisabled";
        if (v17 && *(*v1 + 16) == *"bled")
        {
LABEL_151:
          v3 = v3 | 0x40;
          goto LABEL_154;
        }
      }

      if (*(v1 + 8) != 10)
      {
        goto LABEL_131;
      }

      if (**v1 == *"SubEnabled" && *(*v1 + 8) == *"ed")
      {
        goto LABEL_152;
      }

      if ((v4 & 0x80) != 0)
      {
LABEL_131:
        if (*(v1 + 8) != 11)
        {
          goto LABEL_140;
        }

        if (**v1 == *"SubDisabled" && *(*v1 + 3) == *"Disabled")
        {
          goto LABEL_153;
        }

        if ((v4 & 0x80) != 0)
        {
LABEL_140:
          if (*(v1 + 8) == 21)
          {
            if (**v1 == *"ServingNetworkChanged" && *(*v1 + 8) == *"etworkChanged" && *(*v1 + 13) == *"kChanged")
            {
              goto LABEL_66;
            }

            if ((v4 & 0x80) == 0)
            {
              goto LABEL_7;
            }
          }

          if (*(v1 + 8) == 15)
          {
            v5 = *v1;
LABEL_8:
            v6 = bswap64(*v5);
            v7 = bswap64(*"KeepAliveWakeup");
            if (v6 == v7 && (v6 = bswap64(*(v5 + 7)), v7 = bswap64(*"veWakeup"), v6 == v7))
            {
              v8 = 0;
            }

            else if (v6 < v7)
            {
              v8 = -1;
            }

            else
            {
              v8 = 1;
            }

            if (v8)
            {
              v3 = v3;
            }

            else
            {
              v3 = v3 | 0x1000;
            }
          }
        }
      }

LABEL_154:
      v1 += 24;
      if (v1 == v2)
      {
        goto LABEL_157;
      }
    }

    if (*(v1 + 23) > 0x12u)
    {
      if (v4 == 19)
      {
        if (*v1 == *"AirplaneModeToggled" && *(v1 + 8) == *"ModeToggled" && *(v1 + 11) == *"eToggled")
        {
          goto LABEL_93;
        }

        if (*v1 != *"AirplaneModeEnabled" || *(v1 + 8) != *"ModeEnabled" || *(v1 + 11) != *"eEnabled")
        {
          goto LABEL_154;
        }

LABEL_92:
        v3 = v3 | 0x20;
        goto LABEL_154;
      }

      if (v4 != 20)
      {
        if (v4 != 21)
        {
          goto LABEL_154;
        }

        v19 = *v1 == *"ServingNetworkChanged" && *(v1 + 8) == *"etworkChanged";
        if (!v19 || *(v1 + 13) != *"kChanged")
        {
          goto LABEL_154;
        }

LABEL_66:
        v3 = v3 | 0x80;
        goto LABEL_154;
      }

      if (*v1 == *"AccessNetworkChanged" && *(v1 + 8) == *"tworkChanged" && *(v1 + 16) == *"nged")
      {
        goto LABEL_149;
      }

      if (*v1 == *"AirplaneModeDisabled" && *(v1 + 8) == *"ModeDisabled" && *(v1 + 16) == *"bled")
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (v4 == 10)
      {
        if (*v1 != *"AudioReady" || *(v1 + 8) != *"dy")
        {
          if (*v1 != *"SubEnabled" || *(v1 + 8) != *"ed")
          {
            goto LABEL_154;
          }

LABEL_152:
          v3 = v3 | 0x200;
          goto LABEL_154;
        }

LABEL_150:
        v3 = v3 | 8;
        goto LABEL_154;
      }

      if (v4 == 11)
      {
        if (*v1 != *"SimInserted" || *(v1 + 3) != *"Inserted")
        {
          if (*v1 != *"SubDisabled" || *(v1 + 3) != *"Disabled")
          {
            goto LABEL_154;
          }

LABEL_153:
          v3 = v3 | 0x100;
          goto LABEL_154;
        }

LABEL_104:
        v3 = v3 | 1;
        goto LABEL_154;
      }
    }

LABEL_7:
    v5 = v1;
    if (v4 == 15)
    {
      goto LABEL_8;
    }

    goto LABEL_154;
  }

  v3 = 0;
LABEL_157:
  v41 = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  return v3;
}

void sub_1E4C82BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::vector<SipRetryInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

BOOL SipRegistrationConfig::honorRetryAfterForStatusCode(SipRegistrationConfig *this, unsigned int a2)
{
  if (*(this + 1348))
  {
    return 1;
  }

  v2 = *(this + 158);
  if (v2)
  {
    v3 = (this + 1264);
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
    if (v3 != (this + 1264) && v3[7] <= a2)
    {
      return 0;
    }
  }

  if (!*(this + 156))
  {
    return 1;
  }

  v7 = this + 1240;
  v8 = *(this + 155);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = this + 1240;
  do
  {
    v10 = *(v8 + 7);
    v5 = v10 >= a2;
    v11 = v10 < a2;
    if (v5)
    {
      v9 = v8;
    }

    v8 = *&v8[8 * v11];
  }

  while (v8);
  if (v9 == v7 || *(v9 + 7) > a2)
  {
LABEL_19:
    v9 = this + 1240;
  }

  return v9 != v7;
}

uint64_t SipRegistrationConfig::isValid(SipRegistrationConfig *this)
{
  result = SipUri::isValidUri((this + 72));
  if (!result)
  {
    return result;
  }

  if ((*(this + 911) & 0x8000000000000000) != 0)
  {
    if (*(this + 112))
    {
      goto LABEL_12;
    }
  }

  else if (*(this + 911))
  {
    goto LABEL_12;
  }

  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (!*(this + 12))
    {
LABEL_10:
      result = *(this + 15);
      if (!result)
      {
        return result;
      }

      result = (*(*result + 88))(result);
      if (!result)
      {
        return result;
      }
    }
  }

  else if (!*(this + 111))
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((*(this + 959) & 0x8000000000000000) != 0)
  {
    if (*(this + 118))
    {
      return *this != *(this + 1);
    }
  }

  else if (*(this + 959))
  {
    return *this != *(this + 1);
  }

  return 0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SDPMediaAudioSettings::~SDPMediaAudioSettings(void **this)
{
  *this = &unk_1F5EC0188;
  if (*(this + 303) < 0)
  {
    operator delete(this[35]);
  }

  SDPMediaSettings::~SDPMediaSettings(this);
}

{
  SDPMediaAudioSettings::~SDPMediaAudioSettings(this);

  JUMPOUT(0x1E69235B0);
}

BOOL SDPMediaAudioSettings::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 303);
  if (v2 >= 0)
  {
    v3 = *(a1 + 303);
  }

  else
  {
    v3 = *(a1 + 288);
  }

  v4 = *(a2 + 303);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 288);
  }

  if (v3 != v4)
  {
    return 1;
  }

  v8 = v2 >= 0 ? (a1 + 280) : *(a1 + 280);
  v9 = *(a2 + 280);
  v10 = v5 >= 0 ? (a2 + 280) : *(a2 + 280);
  if (memcmp(v8, v10, v3) || *(a1 + 304) != *(a2 + 304) || *(a1 + 306) != *(a2 + 306) || *(a1 + 308) != *(a2 + 308) || *(a1 + 312) != *(a2 + 312) || *(a1 + 314) != *(a2 + 314) || SDPMediaAMRSettings::operator!=(a1 + 320, a2 + 320) || SDPMediaEVSSettings::operator!=(a1 + 360, a2 + 360))
  {
    return 1;
  }

  return SDPMediaSettings::operator!=(a1, a2);
}

BOOL SDPMediaEVSSettings::operator!=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 14) != *(a2 + 14) || *(a1 + 18) != *(a2 + 18) || *(a1 + 19) != *(a2 + 19))
  {
    return 1;
  }

  v2 = *(a1 + 21);
  v3 = *(a2 + 21);
  if (v2 == v3 && *(a1 + 21))
  {
    v2 = *(a1 + 20);
    v3 = *(a2 + 20);
  }

  if (v2 != v3)
  {
    return 1;
  }

  v4 = *(a1 + 23);
  v5 = *(a2 + 23);
  if (v4 == v5 && *(a1 + 23))
  {
    v4 = *(a1 + 22);
    v5 = *(a2 + 22);
  }

  return v4 != v5 || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41) || *(a1 + 48) != *(a2 + 48) || *(a1 + 63) != *(a2 + 63) || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65);
}

void SDPMediaAMRSettings::SDPMediaAMRSettings(SDPMediaAMRSettings *this, const SDPMediaFormatAMRParams *a2, const SDPMediaFormatAMRParams *a3, int a4, int a5, uint64_t a6)
{
  *this = &unk_1F5EBE678;
  *(this + 5) = 0;
  *(this + 14) = 0x20000;
  *(this + 9) = 2;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 8) = *(a3 + 43);
  v12 = (*(a2 + 23) & *(a3 + 23));
  *(this + 6) = *(a2 + 23) & *(a3 + 23);
  if ((v12 >> a6))
  {
    v13 = a6;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    do
    {
      if (v12)
      {
        v13 = v14;
      }

      ++v14;
      v15 = v12 > 1;
      v12 >>= 1;
    }

    while (v15);
    std::string::basic_string[abi:ne200100]<0>(v24, "sdp.amr");
    v20[0] = 0;
    v23 = 0;
    v16 = ims::warn(v24, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Preferred mode: ", 16);
    *(v16 + 17) = 0;
    MEMORY[0x1E6923390](*(v16 + 8), a6);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " can't be used, using mode: ", 28);
    *(v16 + 17) = 0;
    MEMORY[0x1E6923390](*(v16 + 8), v13);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  *(this + 5) = v13;
  *(this + 7) = *(a3 + 24);
  *(this + 8) = *(a3 + 26);
  *(this + 9) = *(a3 + 28);
  *(this + 10) = *(a3 + 30);
  if ((*(*a2 + 64))(a2))
  {
    v17 = (*(*a3 + 64))(a3) ^ 1;
  }

  else
  {
    v17 = 1;
  }

  *(this + 22) = v17;
  *(this + 23) = *(a3 + 44);
  if (*(a3 + 50))
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a2 + 50);
  }

  *(this + 24) = v18 & 1;
  if (*(a3 + 54))
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a2 + 54);
  }

  *(this + 25) = v19 & 1;
  *(this + 26) = *(a3 + 58);
  *(this + 27) = *(a3 + 62);
  *(this + 4) = SDPMediaAMRSettings::amrBandwidthASValue(*(this + 6), a4, a5, *(this + 8));
}

void sub_1E4C834E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t SDPMediaAMRSettings::amrBandwidthASValue(SDPMediaAMRSettings *this, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v23 = *MEMORY[0x1E69E9840];
  do
  {
    if (this)
    {
      v5 = v4;
    }

    ++v4;
    v6 = this > 1;
    LODWORD(this) = this >> 1;
  }

  while (v6);
  if (a2)
  {
    if (a4)
    {
      if (a3)
      {
        v7 = &qword_1EE2BC088;
        if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
        {
          v15 = &_MergedGlobals_0;
          if (__cxa_guard_acquire(&_MergedGlobals_0))
          {
            *v20 = xmmword_1E5165AE0;
            v21 = 49;
            qword_1EE2BC090 = 0;
            unk_1EE2BC098 = 0;
            qword_1EE2BC088 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC088, v20, v22, 9);
            v7 = &qword_1EE2BC088;
LABEL_47:
            __cxa_guard_release(v15);
          }
        }
      }

      else
      {
        v7 = &qword_1EE2BC0A0;
        if ((atomic_load_explicit(&qword_1EE2BC040, memory_order_acquire) & 1) == 0)
        {
          v15 = &qword_1EE2BC040;
          if (__cxa_guard_acquire(&qword_1EE2BC040))
          {
            *v20 = xmmword_1E5165AD0;
            v21 = 41;
            qword_1EE2BC0A8 = 0;
            unk_1EE2BC0B0 = 0;
            qword_1EE2BC0A0 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC0A0, v20, v22, 9);
            v7 = &qword_1EE2BC0A0;
            goto LABEL_47;
          }
        }
      }
    }

    else if (a3)
    {
      v7 = &qword_1EE2BC0B8;
      if ((atomic_load_explicit(&qword_1EE2BC048, memory_order_acquire) & 1) == 0)
      {
        v15 = &qword_1EE2BC048;
        if (__cxa_guard_acquire(&qword_1EE2BC048))
        {
          *v20 = xmmword_1E5165AC0;
          v21 = 49;
          qword_1EE2BC0C0 = 0;
          unk_1EE2BC0C8 = 0;
          qword_1EE2BC0B8 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC0B8, v20, v22, 9);
          v7 = &qword_1EE2BC0B8;
          goto LABEL_47;
        }
      }
    }

    else
    {
      v7 = &qword_1EE2BC0D0;
      if ((atomic_load_explicit(&qword_1EE2BC050, memory_order_acquire) & 1) == 0)
      {
        v15 = &qword_1EE2BC050;
        if (__cxa_guard_acquire(&qword_1EE2BC050))
        {
          *v20 = xmmword_1E5165AB0;
          v21 = 41;
          qword_1EE2BC0D8 = 0;
          unk_1EE2BC0E0 = 0;
          qword_1EE2BC0D0 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC0D0, v20, v22, 9);
          v7 = &qword_1EE2BC0D0;
          goto LABEL_47;
        }
      }
    }
  }

  else if (a4)
  {
    if (a3)
    {
      v7 = &qword_1EE2BC0E8;
      if ((atomic_load_explicit(&qword_1EE2BC058, memory_order_acquire) & 1) == 0)
      {
        v15 = &qword_1EE2BC058;
        if (__cxa_guard_acquire(&qword_1EE2BC058))
        {
          *v20 = xmmword_1E5165AA0;
          qword_1EE2BC0F0 = 0;
          unk_1EE2BC0F8 = 0;
          qword_1EE2BC0E8 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC0E8, v20, &v21, 8);
          v7 = &qword_1EE2BC0E8;
          goto LABEL_47;
        }
      }
    }

    else
    {
      v7 = &qword_1EE2BC100;
      if ((atomic_load_explicit(&qword_1EE2BC060, memory_order_acquire) & 1) == 0)
      {
        v15 = &qword_1EE2BC060;
        if (__cxa_guard_acquire(&qword_1EE2BC060))
        {
          *v20 = xmmword_1E5165A90;
          qword_1EE2BC108 = 0;
          unk_1EE2BC110 = 0;
          qword_1EE2BC100 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC100, v20, &v21, 8);
          v7 = &qword_1EE2BC100;
          goto LABEL_47;
        }
      }
    }
  }

  else if (a3)
  {
    v7 = &qword_1EE2BC118;
    if ((atomic_load_explicit(&qword_1EE2BC068, memory_order_acquire) & 1) == 0)
    {
      v15 = &qword_1EE2BC068;
      if (__cxa_guard_acquire(&qword_1EE2BC068))
      {
        *v20 = xmmword_1E5165A80;
        qword_1EE2BC120 = 0;
        unk_1EE2BC128 = 0;
        qword_1EE2BC118 = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC118, v20, &v21, 8);
        v7 = &qword_1EE2BC118;
        goto LABEL_47;
      }
    }
  }

  else
  {
    v7 = &qword_1EE2BC130;
    if ((atomic_load_explicit(&qword_1EE2BC070, memory_order_acquire) & 1) == 0)
    {
      v15 = &qword_1EE2BC070;
      if (__cxa_guard_acquire(&qword_1EE2BC070))
      {
        *v20 = xmmword_1E5165A70;
        qword_1EE2BC138 = 0;
        unk_1EE2BC140 = 0;
        qword_1EE2BC130 = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC130, v20, &v21, 8);
        v7 = &qword_1EE2BC130;
        goto LABEL_47;
      }
    }
  }

  v8 = *v7;
  v9 = (v7[1] - *v7) >> 1;
  if (v9 <= v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "sdp");
    v16[0] = 0;
    v19 = 0;
    v11 = ims::error(v20, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "SDPAudioSettingsBuilder::amrBandwidthASVAlue relevantBWValues array only has ", 77);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923370](*(v11 + 8), (v7[1] - *v7) >> 1);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " values, highest mode is: ", 26);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923390](*(v11 + 8), v5);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if ((v22[5] & 0x80000000) != 0)
    {
      operator delete(v20[0]);
    }

    v8 = *v7;
    v12 = v7[1] - *v7;
    v10 = ((v12 >> 1) - 1);
    v9 = v12 >> 1;
  }

  else
  {
    v10 = v5;
  }

  if (v9 <= v10)
  {
    std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
  }

  result = *(v8 + 2 * v10);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void SDPMediaEVSSettings::SDPMediaEVSSettings(SDPMediaEVSSettings *this, const SDPMediaFormatEVSParams *a2, const SDPMediaFormatEVSParams *a3, int a4, const ImsPrefs *a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x500000005;
  *(this + 8) = 6;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 131074;
  *(this + 32) = 0;
  v10 = *(a3 + 7);
  if (v10 == 2096640)
  {
    v12 = (a3 + 84);
    v11 = *(a3 + 21);
    v13 = *(a2 + 7);
    v14 = 2096640;
    if (v11 > 4)
    {
      if (v11 == 5)
      {
        v14 = 2080768;
      }

      else if (v11 == 6)
      {
        v16 = v13 & 0x1FFE00;
LABEL_23:
        *this = v16;
        goto LABEL_24;
      }
    }

    else
    {
      if (v11 == 3)
      {
        v14 = 2093056;
      }

      if (!v11)
      {
        v14 = 65024;
      }
    }

    v16 = v14 & v13;
    goto LABEL_23;
  }

  *this = *(a2 + 7) & v10;
  v12 = (a3 + 84);
  if ((v10 & 0x3000) != 0)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if ((v10 & 0xC000) != 0)
  {
    v15 = 6;
  }

  if ((v10 & 0xFE00) != 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = 5;
  }

  if (*(a3 + 21) != 6)
  {
    v11 = *(a3 + 21);
  }

LABEL_24:
  if (*(a2 + 21) < v11)
  {
    v11 = *(a2 + 21);
  }

  *(this + 9) = v11;
  if (ImsPrefs::RestrictSessionEVSBandwidth(a5))
  {
    v17 = *v12;
    if (*(a2 + 21) < *v12)
    {
      v17 = *(a2 + 21);
    }
  }

  else
  {
    v17 = *v12;
  }

  *(this + 8) = v17;
  if (v17 > 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = dword_1E5165B28[v17];
  }

  *(this + 6) = v18;
  v19 = *(this + 9);
  if (v19 > 4)
  {
    v20 = 5;
  }

  else
  {
    v20 = dword_1E5165B28[v19];
  }

  *(this + 7) = v20;
  if (ImsPrefs::RestrictSessionEVSBandwidth(a5))
  {
    v21 = (*(a2 + 40) & *(a3 + 40));
  }

  else if (*(a2 + 57) <= 2u && *(a2 + 40) == 7 && !*(a3 + 47))
  {
    v21 = 7;
  }

  else
  {
    v21 = *(a3 + 40);
  }

  v22 = 0;
  v23 = 0;
  *(this + 4) = v21;
  v24 = *(a3 + 47);
  *(this + 16) = v24;
  v25 = *this;
  v26 = *this;
  do
  {
    if (v26)
    {
      v23 = v22;
    }

    ++v22;
    v27 = v26 > 1;
    v26 >>= 1;
  }

  while (v27);
  if (v24 && ((v21 >> v23) & 1) == 0)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      if (v21)
      {
        v28 = v29;
      }

      ++v29;
      v27 = v21 > 1;
      v21 >>= 1;
    }

    while (v27);
    std::string::basic_string[abi:ne200100]<0>(v40, "sdp.evs");
    v36[0] = 0;
    v39 = 0;
    v30 = ims::warn(v40, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Preferred mode: ", 16);
    *(v30 + 17) = 0;
    MEMORY[0x1E6923390](*(v30 + 8), v23);
    *(v30 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), " can't be used in EVS AMR-WB IO mode, using mode: ", 50);
    *(v30 + 17) = 0;
    MEMORY[0x1E6923390](*(v30 + 8), v28);
    *(v30 + 17) = 0;
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(__p);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v25 = *this;
    v23 = v28;
  }

  *(this + 5) = v23;
  v31 = *(a3 + 25);
  *(this + 6) = v31;
  *(this + 7) = v31;
  *(this + 17) = *(a3 + 48);
  if ((v25 & 0x2000) != 0)
  {
    v32 = *(a3 + 100);
  }

  else
  {
    v32 = -1;
  }

  *(this + 18) = v32;
  *(this + 19) = v32;
  *(this + 10) = *(a3 + 49);
  *(this + 11) = *(a3 + 21);
  v33 = *(a3 + 46);
  *(this + 40) = v33;
  *(this + 41) = v33;
  *(this + 6) = SDPMediaEVSSettings::evsBandwidthASValue(v25, *(this + 4), *(this + 16), a4);
  *(this + 28) = *(a3 + 51);
  *(this + 58) = *(a3 + 26);
  if ((*(*a2 + 64))(a2))
  {
    v34 = (*(*a3 + 64))(a3) ^ 1;
  }

  else
  {
    v34 = 1;
  }

  *(this + 62) = v34;
  if (*(a3 + 108))
  {
    v35 = 1;
  }

  else
  {
    v35 = *(a2 + 108);
  }

  *(this + 63) = v35 & 1;
  *(this + 32) = *(a3 + 109);
}

void sub_1E4C83F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t SDPMediaEVSSettings::evsBandwidthASValue(unint64_t this, SDPMediaAMRSettings *a2, int a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *MEMORY[0x1E69E9840];

    return SDPMediaAMRSettings::amrBandwidthASValue(a2, 1, a4, 1);
  }

  v6 = 0;
  v7 = 0;
  v8 = 1024;
  do
  {
    if ((v8 & this) != 0)
    {
      v7 = v6;
    }

    ++v6;
    v8 *= 2;
  }

  while (v8);
  if (a4)
  {
    v9 = &qword_1EE2BC148;
    if (atomic_load_explicit(&qword_1EE2BC078, memory_order_acquire))
    {
      goto LABEL_14;
    }

    v16 = &qword_1EE2BC078;
    if (!__cxa_guard_acquire(&qword_1EE2BC078))
    {
      goto LABEL_14;
    }

    *v21 = xmmword_1E5165B00;
    v22 = 7929945;
    v23 = 153;
    qword_1EE2BC150 = 0;
    unk_1EE2BC158 = 0;
    qword_1EE2BC148 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC148, v21, v24, 11);
    v9 = &qword_1EE2BC148;
  }

  else
  {
    v9 = &qword_1EE2BC160;
    if (atomic_load_explicit(&qword_1EE2BC080, memory_order_acquire))
    {
      goto LABEL_14;
    }

    v16 = &qword_1EE2BC080;
    if (!__cxa_guard_acquire(&qword_1EE2BC080))
    {
      goto LABEL_14;
    }

    *v21 = xmmword_1E5165AF0;
    v22 = 7405649;
    v23 = 145;
    qword_1EE2BC168 = 0;
    unk_1EE2BC170 = 0;
    qword_1EE2BC160 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&qword_1EE2BC160, v21, v24, 11);
    v9 = &qword_1EE2BC160;
  }

  __cxa_guard_release(v16);
LABEL_14:
  v10 = *v9;
  v11 = (v9[1] - *v9) >> 1;
  if (v11 <= v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "sdp");
    v17[0] = 0;
    v20 = 0;
    v13 = ims::error(v21, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SDPAudioSettingsBuilder::evsBandwidthASVAlue relevantBWValues array only has ", 77);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923370](*(v13 + 8), (v9[1] - *v9) >> 1);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " values, highest mode is: ", 26);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923390](*(v13 + 8), v7);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if ((v24[1] & 0x80000000) != 0)
    {
      operator delete(v21[0]);
    }

    v10 = *v9;
    v14 = v9[1] - *v9;
    v12 = ((v14 >> 1) - 1);
    v11 = v14 >> 1;
  }

  else
  {
    v12 = v7;
  }

  if (v11 <= v12)
  {
    std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
  }

  result = *(v10 + 2 * v12);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C842E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SipAcceptHeader::~SipAcceptHeader(char **this)
{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *BambiConferenceCallState::BambiConferenceCallState(void *a1, BambiCall **a2)
{
  v4 = *a2;
  v5 = *(*a2 + 48);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = v6;
    v8 = 0;
    v24 = *(v4 + 47);
    v25 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = 0;
    v24 = 0;
    v25 = 0;
    v8 = 1;
  }

  SipState::SipState(a1, &v24);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if ((v8 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "bambi.conf.state");
  BambiCall::clientConfig(*a2, v19);
  ims::getQueue(&v29);
  ClientConfig::getLogTag(v19, &v26);
  if ((v23 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v22[1];
  }

  v11 = std::string::insert(&v26, 0, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v28 = v11->__r_.__value_.__r.__words[2];
  v27 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v13 = &v27;
  }

  else
  {
    v13 = v27;
  }

  a1[27] = 0;
  a1[28] = 0;
  v14 = v29;
  a1[29] = v29;
  if (v14)
  {
    dispatch_retain(v14);
  }

  a1[30] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 31), "com.apple.ipTelephony", v13);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  a1[26] = &unk_1F5EC0810;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *a1 = &unk_1F5EC0270;
  a1[1] = &unk_1F5EC02D0;
  a1[26] = &unk_1F5EC0300;
  a1[32] = 0;
  a1[33] = 0;
  v15 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
    v17 = a1[33];
    a1[32] = v15;
    a1[33] = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  else
  {
    a1[32] = v15;
    a1[33] = 0;
  }

  return a1;
}

void sub_1E4C847A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v31 + 27);
  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 56);
  if (v34)
  {
    dispatch_release(v34);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  SipState::~SipState(v31);
  _Unwind_Resume(a1);
}

void sub_1E4C84830(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if ((v20 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  JUMPOUT(0x1E4C84828);
}

uint64_t BambiConferenceCallState::stateMachine(BambiConferenceCallState *this)
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
    v5 = v4 + 1936;
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
    v5 = v4 + 1936;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

void BambiConferenceCallState::participants(BambiConferenceCallState *this, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  v3 = *(a2 + 264);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a2 + 256);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v7)
    {
      std::vector<std::shared_ptr<BambiConferenceParticipant>>::__init_with_size[abi:ne200100]<std::shared_ptr<BambiConferenceParticipant>*,std::shared_ptr<BambiConferenceParticipant>*>(this, *(v7 + 1912), *(v7 + 1920), (*(v7 + 1920) - *(v7 + 1912)) >> 4);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  v9 = v8;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1E4C84998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  a12 = &a9;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *BambiConferenceCallWaitingForHoldState::BambiConferenceCallWaitingForHoldState(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  BambiConferenceCallState::BambiConferenceCallState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EC0328;
  a1[1] = &unk_1F5EC0390;
  a1[26] = &unk_1F5EC03C0;
  return a1;
}

void sub_1E4C84A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallWaitingForHoldState::enterState(BambiConferenceCallWaitingForHoldState *this)
{
  __p[7] = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2 && std::__shared_weak_count::lock(v2))
  {
    v3 = *(this + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 28);
  if (v4)
  {
    v5 = *(this + 27);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      p_shared_weak_owners = &v6->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      if (v3)
      {
        v9 = std::__shared_weak_count::lock(*(v3 + 384));
        v10 = *(v3 + 376);
        v11 = *(v10 + 248);
        v12 = *(v10 + 256);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *(SipUserAgent::config(v11) + 1124);
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v14 = *(SipUserAgent::config(v11) + 1124);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "WaitingForHoldTimeout");
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      __p[6] = 0;
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4C84C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void BambiConferenceCallWaitingForHoldState::handleTimer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (a2[1] != 21)
    {
      return;
    }

    a2 = *a2;
  }

  else if (v3 != 21)
  {
    return;
  }

  if (*a2 == 0x46676E6974696157 && a2[1] == 0x6954646C6F48726FLL && *(a2 + 13) == 0x74756F656D695464)
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(a1 + 256);
        if (v8)
        {
          v9 = std::string::basic_string[abi:ne200100]<0>(&v29, "bambi.conf");
          v21[0] = 0;
          v24 = 0;
          v10 = ims::debug(v9, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Timed out while waiting for initial participants to go on hold", 62);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          if (v24 == 1 && v23 < 0)
          {
            operator delete(__p);
          }

          if (v31 < 0)
          {
            operator delete(v29);
          }

          BambiConferenceCallState::participants(&v29, a1);
          v11 = v29;
          for (i = v30; v11 != i; v11 += 2)
          {
            v13 = *v11;
            v14 = v11[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = v13;
              v20 = v14;
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              BambiConferenceCall::setParticipantState(v8, &v19, 10);
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            else
            {
              v19 = *v11;
              v20 = 0;
              BambiConferenceCall::setParticipantState(v8, &v19, 10);
            }
          }

          v32 = &v29;
          std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v32);
          BambiConferenceCallState::participants(&v29, a1);
          v15 = v29;
          v16 = v30;
          v32 = &v29;
          std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v32);
          if (v15 == v16)
          {
            BambiConferenceCall::cleanupOnTimeout(v8);
          }

LABEL_35:
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(&v29, "bambi.conf");
    v25[0] = 0;
    v28 = 0;
    v18 = ims::debug(v17, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "handleTimer", 11);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " NULL conference call", 21);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }

    if (v31 < 0)
    {
      operator delete(v29);
    }

    goto LABEL_35;
  }
}

void sub_1E4C84FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallWaitingForHoldState::handleParticipantStateChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 & 0xFFFFFFF7) != 2)
  {
    return;
  }

  BambiConferenceCallState::participants(&v21, a1);
  v6 = v21;
  v5 = v22;
  if (v21 == v22)
  {
    v37[0] = &v21;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v37);
  }

  else
  {
    v7 = 0;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(v37, "bambi.conf");
      v33[0] = 0;
      v36 = 0;
      v11 = ims::debug(v10, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "checkForHeldParticipants: participant ", 38);
      *(v11 + 17) = 0;
      (*(*(v9 + 288) + 40))(v9 + 288, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " is in state ", 13);
      *(v11 + 17) = 0;
      v30 = *(v9 + 264);
      ims::toString<BambiCallParticipant::ParticipantState>(&v30, &v31);
      LoggableString::LoggableString(&__p, &v31);
      (*(*v11 + 40))(v11, &__p);
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v36 == 1 && v35 < 0)
      {
        operator delete(v34);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (*(v9 + 264) <= 1)
      {
        v12 = std::string::basic_string[abi:ne200100]<0>(v37, "bambi.conf");
        v26[0] = 0;
        v29 = 0;
        v13 = ims::debug(v12, v26);
        (*(*(v9 + 288) + 40))(v9 + 288, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " isn't held yet", 15);
        *(v13 + 17) = 0;
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        if (v29 == 1 && v28 < 0)
        {
          operator delete(v27);
        }

        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        v7 = (v7 + 1);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 2;
    }

    while (v6 != v5);
    v37[0] = &v21;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v37);
    if (v7)
    {
      goto LABEL_36;
    }
  }

  BambiConferenceCallState::participants(&v21, a1);
  v14 = v21;
  v15 = v22;
  v37[0] = &v21;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v37);
  if (v14 != v15)
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(v37, "bambi.conf");
    LOBYTE(v21) = 0;
    v25 = 0;
    v17 = ims::debug(v16, &v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "All participants on hold. Start the session.", 44);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    v18 = (*(*a1 + 32))(a1);
    (*(*v18 + 32))(v18, 2);
    return;
  }

  v7 = 0;
LABEL_36:
  v19 = std::string::basic_string[abi:ne200100]<0>(v37, "bambi.conf");
  LOBYTE(v21) = 0;
  v25 = 0;
  v20 = ims::debug(v19, &v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "BambiConferenceCall: still waiting for ", 39);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923350](*(v20 + 8), v7);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " participants to hold before starting conference", 48);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_1E4C85530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a20 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *BambiConferenceCallSessionRequestedState::BambiConferenceCallSessionRequestedState(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  BambiConferenceCallState::BambiConferenceCallState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EC03E8;
  a1[1] = &unk_1F5EC0448;
  a1[26] = &unk_1F5EC0478;
  return a1;
}

void sub_1E4C856D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallSessionRequestedState::enterState(BambiConferenceCallSessionRequestedState *this)
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
        BambiConferenceCall::startSessionWithConferenceServer(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void *BambiConferenceCallSessionConfirmedState::BambiConferenceCallSessionConfirmedState(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  BambiConferenceCallState::BambiConferenceCallState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EC04A0;
  a1[1] = &unk_1F5EC0500;
  a1[26] = &unk_1F5EC0530;
  return a1;
}

void sub_1E4C8581C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallSessionConfirmedState::addParticipants(BambiConferenceCallSessionConfirmedState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        BambiConferenceCallState::participants(&v31, this);
        v6 = v31;
        v5 = v32;
        if (v31 == v32)
        {
          v21[0] = &v31;
          std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v21);
          goto LABEL_50;
        }

        v7 = 1;
        while (1)
        {
          v9 = *v6;
          v8 = v6[1];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v9 + 264) == 2)
          {
            std::string::basic_string[abi:ne200100]<0>(v29, "bambi.conf");
            v25[0] = 0;
            v28 = 0;
            v10 = ims::debug(v29, v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Adding ", 7);
            *(v10 + 17) = 0;
            (*(*(v9 + 288) + 40))(v9 + 288, v10);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " to conference ", 15);
            *(v10 + 17) = 0;
            ObfuscatedString::ObfuscatedString(v21, v4 + 21);
            (*(*v10 + 56))(v10, v21);
            (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v10 + 17) = 0;
            if (v24 < 0)
            {
              operator delete(__p);
            }

            if (v22 < 0)
            {
              operator delete(v21[0]);
            }

            if (v28 == 1 && v27 < 0)
            {
              operator delete(v26);
            }

            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            BambiConferenceParticipant::joinConference(v9);
            data = v4[16].__r_.__value_.__l.__data_;
            if (data)
            {
              data = std::__shared_weak_count::lock(data);
              v12 = data;
              if (data)
              {
                data = v4[15].__r_.__value_.__r.__words[2];
              }
            }

            else
            {
              v12 = 0;
            }

            v13 = SipStack::prefs(data);
            if (ImsPrefs::SerializeRefers(v13))
            {
              v14 = 1;
            }

            else
            {
              v15 = v4[16].__r_.__value_.__l.__data_;
              if (v15)
              {
                v15 = std::__shared_weak_count::lock(v15);
                v16 = v15;
                if (v15)
                {
                  v15 = v4[15].__r_.__value_.__r.__words[2];
                }
              }

              else
              {
                v16 = 0;
              }

              v17 = SipStack::prefs(v15);
              v14 = ImsPrefs::SerializeParticipants(v17);
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            v7 = 0;
            if (v14)
            {
              break;
            }
          }

          v18 = 0;
          if (v8)
          {
            goto LABEL_36;
          }

LABEL_37:
          v6 += 2;
          if (v6 == v5)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            v21[0] = &v31;
            std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v21);
            if ((v7 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_50:
            BambiConferenceCall::subscribeToConferenceEvents(v4);
            goto LABEL_51;
          }
        }

        v18 = 1;
        if (!v8)
        {
          goto LABEL_37;
        }

LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_37;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "bambi.conf");
  v33[0] = 0;
  v36 = 0;
  v20 = ims::debug(v21, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "addParticipants", 15);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " NULL conference call", 21);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

LABEL_51:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4C85BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallSessionConfirmedState::handleParticipantStateChange(BambiConferenceCallSessionConfirmedState *a1, BambiConferenceParticipant **a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 33);
  if (v5)
  {
    v8 = std::__shared_weak_count::lock(v5);
    if (v8)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        if (a4 == 2)
        {
          if ((*(v9 + 480) & 0xFFFFFFFE) == 2)
          {
            v10 = std::string::basic_string[abi:ne200100]<0>(v41, "bambi.conf");
            v37[0] = 0;
            v40 = 0;
            v11 = ims::debug(v10, v37);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Wait to resume conference ", 26);
            *(v11 + 17) = 0;
            ObfuscatedString::ObfuscatedString(block, (v9 + 504));
            (*(*v11 + 56))(v11, block);
            (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v11 + 17) = 0;
            if (SHIBYTE(v51) < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(block[0]);
            }

            if (v40 == 1 && v39 < 0)
            {
              operator delete(__p);
            }

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            v12 = (*(*a1 + 32))(a1);
            (*(*v12 + 32))(v12, 4);
          }

          else
          {
            v15 = std::string::basic_string[abi:ne200100]<0>(v41, "bambi.conf");
            v33[0] = 0;
            v36 = 0;
            v16 = ims::debug(v15, v33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Adding ", 7);
            *(v16 + 17) = 0;
            (*(*(*a2 + 36) + 40))(*a2 + 288, v16);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " to conference ", 15);
            *(v16 + 17) = 0;
            ObfuscatedString::ObfuscatedString(block, (v9 + 504));
            (*(*v16 + 56))(v16, block);
            (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v16 + 17) = 0;
            if (SHIBYTE(v51) < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(block[0]);
            }

            if (v36 == 1 && v35 < 0)
            {
              operator delete(v34);
            }

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            BambiConferenceParticipant::joinConference(*a2);
          }
        }

        v17 = *(v9 + 384);
        if (v17)
        {
          v17 = std::__shared_weak_count::lock(v17);
          v18 = v17;
          if (v17)
          {
            v17 = *(v9 + 376);
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = SipStack::prefs(v17);
        v20 = ImsPrefs::SerializeParticipants(v19);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v20)
        {
          if (a4 != 5 && a4 != 10)
          {
            if (a4 == 6)
            {
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 0x40000000;
              v32[2] = ___ZN40BambiConferenceCallSessionConfirmedState28handleParticipantStateChangeENSt3__110shared_ptrI26BambiConferenceParticipantEEN20BambiCallParticipant16ParticipantStateES5__block_invoke;
              v32[3] = &__block_descriptor_tmp;
              v32[4] = a1;
              v21 = *(a1 + 28);
              if (!v21 || (v22 = *(a1 + 27), (v23 = std::__shared_weak_count::lock(v21)) == 0))
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v24 = v23;
              v25 = *(a1 + 29);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 1174405120;
              v48 = ___ZNK3ctu20SharedSynchronizableI24BambiConferenceCallStateE15execute_wrappedEU13block_pointerFvvE_block_invoke;
              v49 = &unk_1F5EC08B0;
              v51 = v22;
              v52 = v24;
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              v50 = v32;
              dispatch_async(v25, block);
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_23:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              return;
            }

LABEL_53:
            if (a4 - 8 <= 2)
            {
              v26 = std::string::basic_string[abi:ne200100]<0>(v41, "bambi.conf");
              v28[0] = 0;
              v31 = 0;
              v27 = ims::debug(v26, v28);
              (*(*(*a2 + 36) + 40))(*a2 + 288, v27);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " left conference ", 17);
              *(v27 + 17) = 0;
              ObfuscatedString::ObfuscatedString(block, (v9 + 504));
              (*(*v27 + 56))(v27, block);
              (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v27 + 17) = 0;
              if (SHIBYTE(v51) < 0)
              {
                operator delete(v49);
              }

              if (SHIBYTE(v48) < 0)
              {
                operator delete(block[0]);
              }

              if (v31 == 1 && v30 < 0)
              {
                operator delete(v29);
              }

              if (v42 < 0)
              {
                operator delete(v41[0]);
              }

              BambiConferenceParticipant::handleParticipantLeftConference(*a2, a4 == 9);
            }

            goto LABEL_23;
          }
        }

        else if (a4 > 0xA || ((1 << a4) & 0x470) == 0)
        {
          goto LABEL_53;
        }

        BambiConferenceCallSessionConfirmedState::addParticipants(a1);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(block, "bambi.conf");
  v43[0] = 0;
  v46 = 0;
  v14 = ims::debug(v13, v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleParticipantStateChange", 28);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " NULL conference call", 21);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(block[0]);
  }

  if (v8)
  {
    goto LABEL_23;
  }
}

void sub_1E4C8635C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a34 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 177) < 0)
  {
    operator delete(*(v45 - 200));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  _Unwind_Resume(a1);
}

void *BambiConferenceCallSessionTerminatedState::BambiConferenceCallSessionTerminatedState(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  BambiConferenceCallState::BambiConferenceCallState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EC0558;
  a1[1] = &unk_1F5EC05B8;
  a1[26] = &unk_1F5EC05E8;
  return a1;
}

void sub_1E4C86540(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallSessionTerminatedState::enterState(BambiConferenceCallSessionTerminatedState *this)
{
  BambiConferenceCallState::participants(&v5, this);
  v1 = v5;
  for (i = v6; v1 != i; v1 += 16)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BambiConferenceParticipant::handleParticipantLeftConference(v3, 0);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v7 = &v5;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1E4C865E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a12 = &a9;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *BambiConferenceCallWaitToResumeConfirmedSessionState::BambiConferenceCallWaitToResumeConfirmedSessionState(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  BambiConferenceCallState::BambiConferenceCallState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EC0610;
  a1[1] = &unk_1F5EC0670;
  a1[26] = &unk_1F5EC06A0;
  return a1;
}

void sub_1E4C866CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceCallWaitToResumeConfirmedSessionState::enterState(BambiConferenceCallWaitToResumeConfirmedSessionState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        BambiConferenceCall::resumeConferenceCall(v4);
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = std::string::basic_string[abi:ne200100]<0>(&v11, "bambi.conf");
  v7[0] = 0;
  v10 = 0;
  v6 = ims::debug(v5, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "enterState", 10);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " NULL conference call", 21);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v3)
  {
    goto LABEL_12;
  }
}

void BambiConferenceCallWaitToResumeConfirmedSessionState::handleParticipantStateChange(uint64_t a1, BambiConferenceParticipant **a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 264);
  if (v5)
  {
    v8 = std::__shared_weak_count::lock(v5);
    if (v8)
    {
      v9 = *(a1 + 256);
      if (v9)
      {
        if ((a4 - 8) <= 2)
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "bambi.conf");
          v16[0] = 0;
          v19 = 0;
          v10 = ims::debug(v20, v16);
          (*(*(*a2 + 36) + 40))(*a2 + 288, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " left conference ", 17);
          *(v10 + 17) = 0;
          ObfuscatedString::ObfuscatedString(v12, v9 + 21);
          (*(*v10 + 56))(v10, v12);
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (v13 < 0)
          {
            operator delete(v12[0]);
          }

          if (v19 == 1 && v18 < 0)
          {
            operator delete(v17);
          }

          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          BambiConferenceParticipant::handleParticipantLeftConference(*a2, a4 == 9);
        }

LABEL_22:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "bambi.conf");
  v22[0] = 0;
  v25 = 0;
  v11 = ims::debug(v12, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "handleParticipantStateChange", 28);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " NULL conference call", 21);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v8)
  {
    goto LABEL_22;
  }
}

void BambiConferenceCallState::~BambiConferenceCallState(BambiConferenceCallState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallState::~BambiConferenceCallState(BambiConferenceCallState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceCallWaitingForHoldState::~BambiConferenceCallWaitingForHoldState(BambiConferenceCallWaitingForHoldState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallWaitingForHoldState::~BambiConferenceCallWaitingForHoldState(BambiConferenceCallWaitingForHoldState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceCallSessionRequestedState::~BambiConferenceCallSessionRequestedState(BambiConferenceCallSessionRequestedState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallSessionRequestedState::~BambiConferenceCallSessionRequestedState(BambiConferenceCallSessionRequestedState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceCallSessionConfirmedState::~BambiConferenceCallSessionConfirmedState(BambiConferenceCallSessionConfirmedState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallSessionConfirmedState::~BambiConferenceCallSessionConfirmedState(BambiConferenceCallSessionConfirmedState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceCallSessionTerminatedState::~BambiConferenceCallSessionTerminatedState(BambiConferenceCallSessionTerminatedState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallSessionTerminatedState::~BambiConferenceCallSessionTerminatedState(BambiConferenceCallSessionTerminatedState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

void BambiConferenceCallWaitToResumeConfirmedSessionState::~BambiConferenceCallWaitToResumeConfirmedSessionState(BambiConferenceCallWaitToResumeConfirmedSessionState *this)
{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  *this = &unk_1F5EC0270;
  *(this + 1) = &unk_1F5EC02D0;
  *(this + 26) = &unk_1F5EC0300;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipState::~SipState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiConferenceCallWaitToResumeConfirmedSessionState::~BambiConferenceCallWaitToResumeConfirmedSessionState(BambiConferenceCallWaitToResumeConfirmedSessionState *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);

  SipState::~SipState(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_1F5EC0270;
  *this = &unk_1F5EC02D0;
  *(this + 25) = &unk_1F5EC0300;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  SipState::~SipState(v2);
}

{
  v2 = (this - 208);
  *(this - 26) = &unk_1F5EC0270;
  *(this - 25) = &unk_1F5EC02D0;
  *this = &unk_1F5EC0300;
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
  SipState::~SipState(v2);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::vector<std::shared_ptr<BambiConferenceParticipant>>::__init_with_size[abi:ne200100]<std::shared_ptr<BambiConferenceParticipant>*,std::shared_ptr<BambiConferenceParticipant>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C885B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<BambiConferenceParticipant>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*,std::shared_ptr<BambiConferenceParticipant>*,std::shared_ptr<BambiConferenceParticipant>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v9 = v4;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t ims::SharedLoggable<BambiConferenceCallState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiConferenceCallState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiConferenceCallWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC0838;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}