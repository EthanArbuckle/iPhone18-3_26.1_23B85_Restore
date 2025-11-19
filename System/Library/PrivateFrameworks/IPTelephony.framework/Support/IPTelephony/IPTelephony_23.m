void sub_1E4DC786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::terminate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  MessageSession::logMessageSessionEnd(a1, 200, &__p, *(a1 + 1128));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *(a1 + 472);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4DC7A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::logMessageSessionEnd(uint64_t a1, int a2, const std::string *a3, int a4)
{
  v5 = *(a1 + 448);
  v6 = *(v5 + 232);
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v11 = v10;
      v12 = *(v5 + 224);
      if (v12)
      {
        v25 = 0;
        memset(__p, 0, sizeof(__p));
        v23 = 0u;
        *v22 = 0u;
        v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v14 = *(a1 + 1120) + *(a1 + 1124);
        v21[0] = (((v13.__d_.__rep_ - *(a1 + 1112)) / 1000000.0) / 1000.0);
        v21[1] = v14;
        v20.__r_.__value_.__r.__words[0] = 0;
        SipDialog::lazuliGroupParams(&v20, *(*(a1 + 448) + 2648));
        v15 = v20.__r_.__value_.__r.__words[0];
        if (MEMORY[0x1E6924740](v20.__r_.__value_.__r.__words[0]) == MEMORY[0x1E69E9E80])
        {
          LOBYTE(v22[0]) = 1;
        }

        xpc_release(v15);
        BYTE1(v22[0]) = *(*(a1 + 448) + 2688);
        HIDWORD(v22[0]) = a2;
        std::string::operator=(&v22[1], a3);
        LODWORD(__p[0]) = a4;
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        *&__p[1] = v20;
        v16 = *(v12 + 239);
        if (v16 < 0)
        {
          v16 = *(v12 + 224);
        }

        LOBYTE(v25) = v16 != 0;
        BYTE1(v25) = *(v12 + 2849);
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
        (*(**(v18 + 184) + 192))(*(v18 + 184), v21);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(v22[1]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4DC7C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  ims::analytics::RCSSessionEndInfo::~RCSSessionEndInfo(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

void MessageSession::sendMessageRequest(void *a1, uint64_t a2, char **a3, uint64_t a4, int a5, int a6, int a7)
{
  v38 = a6;
  v39 = a5;
  v37 = a7;
  v9 = a1[82];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = a1[81];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_6:
  v12 = a1[80];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13 && v11 && a1[79])
    {
      v31 = a1[79];
      memset(&v36, 0, sizeof(v36));
      while (1)
      {
        ImsUuid::generate(__p);
        ImsUuid::asStringNoDashes(__p, &__str);
        std::string::basic_string(&v35, &__str, 0, 0x1FuLL, v40);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v36 = v35;
        *(&v35.__r_.__value_.__s + 23) = 0;
        v35.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __p[0] = &unk_1F5EBEE78;
        if (v33 < 0)
        {
          operator delete(__p[1]);
        }

        v14 = *(a3 + 23);
        if ((v14 & 0x80u) == 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        if ((v14 & 0x80u) != 0)
        {
          v14 = a3[1];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v36;
        }

        else
        {
          v16 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v36.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v14 < size)
          {
            goto LABEL_40;
          }

          v18 = &v15[v14];
          v19 = v16->__r_.__value_.__s.__data_[0];
          v20 = v15;
          while (1)
          {
            v21 = v14 - size;
            if (v21 == -1)
            {
              goto LABEL_40;
            }

            v22 = memchr(v20, v19, v21 + 1);
            if (!v22)
            {
              goto LABEL_40;
            }

            v23 = v22;
            if (!memcmp(v22, v16, size))
            {
              break;
            }

            v20 = v23 + 1;
            v14 = v18 - (v23 + 1);
            if (v14 < size)
            {
              goto LABEL_40;
            }
          }

          if (v23 == v18)
          {
LABEL_40:
            v25 = a1[56];
            std::__shared_weak_count::lock(*(v25 + 232));
            v26 = *(v25 + 224);
            v27 = *(v26 + 248);
            v28 = *(v26 + 256);
            if (v28)
            {
              atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
            }

            v29 = *(v27 + 312);
            operator new();
          }

          v24 = v23 - v15;
        }

        else
        {
          v24 = 0;
        }

        if (v24 == -1)
        {
          goto LABEL_40;
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v30 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "MSRP path is unavailable.", 25);
  *(v30 + 17) = 0;
  (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v30 + 17) = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4DC84AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, std::__shared_weak_count *a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void MessageSession::sendReportRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a6;
  v30 = a5;
  v28 = a7;
  v8 = a1[82];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = a1[81];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = a1[80];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12 && v10 && a1[79])
    {
      v13 = a1[56];
      v14 = *(v13 + 232);
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = *(v13 + 224);
          if (v16)
          {
            v17 = *(v16 + 248);
            v18 = *(v16 + 256);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v17)
            {
              v19 = *(v17 + 312);
              operator new();
            }

            v23 = a1[24];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              (*(a1[19] + 16))(__p, a1 + 19);
              v25 = v27 >= 0 ? __p : __p[0];
              *buf = 141558275;
              v32 = 1752392040;
              v33 = 2081;
              v34 = v25;
              _os_log_error_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (v27 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            goto LABEL_29;
          }
        }
      }

      else
      {
        v15 = 0;
      }

      v22 = a1[24];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        (*(a1[19] + 16))(__p, a1 + 19);
        v24 = v27 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v32 = 1752392040;
        v33 = 2081;
        v34 = v24;
        _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!v15)
      {
LABEL_30:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (!v9)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_29:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_30;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "MSRP path is unavailable.", 25);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v12)
  {
    goto LABEL_30;
  }

  if (v9)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E4DC8C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MessageSession::sendResponse(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[82];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[81];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = a1[80];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6 && v4 && a1[79])
    {
      v7 = a1[56];
      v8 = *(v7 + 232);
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = *(v7 + 224);
          if (v10)
          {
            v11 = *(v10 + 248);
            v12 = *(v10 + 256);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v11)
            {
              v19 = *(v11 + 312);
              operator new();
            }

            v16 = a1[24];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              (*(a1[19] + 16))(__p, a1 + 19);
              v18 = v21 >= 0 ? __p : __p[0];
              *buf = 141558275;
              v23 = 1752392040;
              v24 = 2081;
              v25 = v18;
              _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (v21 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v15 = a1[24];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        (*(a1[19] + 16))(__p, a1 + 19);
        v17 = v21 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2081;
        v25 = v17;
        _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!v9)
      {
LABEL_31:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (!v3)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "MSRP path is unavailable.", 25);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v6)
  {
    goto LABEL_31;
  }

  if (v3)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4DC9268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t MessageSession::checkRemotePath(MessageSession *this, LazuliMessage *a2)
{
  v3 = *(this + 80);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5 || (v6 = *(this + 79)) == 0)
  {
LABEL_14:
    v16 = (*(*this + 56))(this);
    (*(*this + 16))(this, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "MSRP path is unavailable.", 25);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v17 = 0;
    *(v16 + 17) = 0;
    if (!v5)
    {
      return v17;
    }

    goto LABEL_22;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a2 + 4, "From-Path");
  v8 = v7;
  if (!v7)
  {
LABEL_18:
    v18 = (*(*this + 56))(this);
    (*(*this + 16))(this, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Remote did not specify their MSRP path", 38);
    v10 = 0;
    *(v18 + 17) = 0;
    v19 = (v18 + 17);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v9 = v7[5];
  v10 = v8[6];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    goto LABEL_18;
  }

  v13 = v12;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v14 = v13[8];
  if (v14 == v13[9])
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14;
  }

  if (*(v15 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(v15 + 32), *(v15 + 40));
  }

  else
  {
    v33 = *(v15 + 32);
  }

  v21 = v6[1];
  if (v21 == v6[2])
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21;
  }

  if (*(v22 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v22 + 32), *(v22 + 40));
  }

  else
  {
    __p = *(v22 + 32);
  }

  v23 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v25)
  {
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v33;
    }

    else
    {
      v27 = v33.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v29 = memcmp(v27, p_p, size) == 0;
  }

  else
  {
    v29 = 0;
  }

  if ((v26 & 0x80000000) == 0)
  {
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_50;
    }

LABEL_55:
    operator delete(v33.__r_.__value_.__l.__data_);
    if (v29)
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((*(&v33.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_55;
  }

LABEL_50:
  if (!v29)
  {
LABEL_56:
    v30 = (*(*this + 56))(this);
    (*(*this + 16))(this, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Remote session ID doesn't match their SDP", 41);
    *(v30 + 17) = 0;
    v19 = (v30 + 17);
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_19;
  }

LABEL_51:
  if (LazuliRouteSet::operator==(v13 + 7, v6))
  {
    v17 = 1;
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v31 = (*(*this + 64))(this);
  (*(*this + 16))(this, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "The full remote MSRP path doesn't match the negotiated.  Letting it slide because our SDP also doesn't match ;)", 111);
  *(v31 + 17) = 0;
  v19 = (v31 + 17);
  (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v17 = 1;
LABEL_20:
  *v19 = 0;
  if (v10)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_22:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v17;
}

void sub_1E4DC9858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void MessageSession::IncomingMessage::~IncomingMessage(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MessageSession::logSendReceiveEvent(void *a1, int a2, int a3, uint64_t a4, unsigned int a5, const std::string *a6)
{
  v7 = a1[56];
  v8 = *(v7 + 232);
  if (v8)
  {
    v14 = std::__shared_weak_count::lock(v8);
    if (v14)
    {
      v15 = v14;
      v16 = *(v7 + 224);
      if (v16)
      {
        v30 = 0u;
        v31 = 0u;
        *v28 = 0u;
        *__p = 0u;
        v27 = 0u;
        LOBYTE(v27) = a5 == 200;
        if (a2)
        {
          v17 = ((std::chrono::steady_clock::now().__d_.__rep_ - a4) / 1000000.0);
        }

        else
        {
          LODWORD(v17) = 0;
        }

        *(&v27 + 4) = __PAIR64__(a5, v17);
        std::string::operator=(v28, a6);
        if (a2)
        {
          v18 = "MO";
        }

        else
        {
          v18 = "MT";
        }

        std::string::__assign_external(&__p[1], v18);
        SipDialog::lazuliGroupParams(&v32, *(a1[56] + 2648));
        v19 = v32;
        LOBYTE(v31) = MEMORY[0x1E6924740](v32) == MEMORY[0x1E69E9E80];
        xpc_release(v19);
        v20 = a1[55];
        BYTE1(v31) = *(a1[56] + 2688);
        if (v20)
        {
          v21 = std::__shared_weak_count::lock(v20);
          if (v21)
          {
            v22 = a1[54];
            if (v22)
            {
              BYTE2(v31) = *(v22 + 500);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        DWORD1(v31) = a3;
        v23 = *(v16 + 239);
        if (v23 < 0)
        {
          v23 = *(v16 + 224);
        }

        BYTE8(v31) = v23 != 0;
        BYTE9(v31) = *(v16 + 2849);
        v24 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        v25 = off_1EE2BBBC0;
        if (!off_1EE2BBBC0)
        {
          IMSMetricsManager::create_default_global(v24);
        }

        v26 = *(&off_1EE2BBBC0 + 1);
        if (*(&off_1EE2BBBC0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
        (*(**(v25 + 184) + 200))(*(v25 + 184), &v27);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v28[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E4DC9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  ims::analytics::RCSSessionSendReceiveInfo::~RCSSessionSendReceiveInfo(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

std::string *anonymous namespace::loggableMsrpStatus(std::string *retstr, signed int __val)
{
  if (__val > 422)
  {
    if (__val > 500)
    {
      switch(__val)
      {
        case 501:
          v2 = "Bad extension";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
        case 506:
          v2 = "Invalid connection";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
        case 737:
          v2 = "MSRP transport error";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      }
    }

    else
    {
      switch(__val)
      {
        case 423:
          v2 = "Out of bounds";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
        case 481:
          v2 = "No session";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
        case 500:
          v2 = "Internal error";
          return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      }
    }
  }

  else if (__val > 407)
  {
    switch(__val)
    {
      case 408:
        v2 = "Did not complete";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      case 413:
        v2 = "Undesired";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      case 415:
        v2 = "Not understood";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
    }
  }

  else
  {
    switch(__val)
    {
      case 200:
        v2 = "OK";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      case 400:
        v2 = "Unintelligible";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
      case 403:
        v2 = "Not allowed";
        return std::string::basic_string[abi:ne200100]<0>(retstr, v2);
    }
  }

  return std::to_string(retstr, __val);
}

void MessageSession::processIncomingSendRequestBody()
{
  v3 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v1 = 0;
  v2 = 0;
  ims::getCpimContentType();
}

void sub_1E4DCA378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  operator delete(v38);
  MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0::~$_0(&a9);
  xpc_release(v37);
  v41 = STACK[0x438];
  if (STACK[0x438])
  {
    STACK[0x440] = v41;
    operator delete(v41);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  SipUri::~SipUri((v39 + 432));
  SipUri::~SipUri((v39 + 24));
  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0::~$_0(&a17);
  std::__shared_weak_count::__release_weak(v35);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

BOOL MessageSession::isGroupMgmtViaMSRP(MessageSession *this)
{
  v2 = *(this + 76);
  v3 = *(this + 77);
  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "application/vnd.oma.cpm-groupdata+xml");
  v5 = v12;
  if (v2 != v3)
  {
    if ((v12 & 0x80u) == 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = __p[1];
    }

    if ((v12 & 0x80u) != 0)
    {
      v4 = __p[0];
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v6)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v4, v6))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  if ((v5 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v2 != *(this + 77);
}

uint64_t MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void MessageSession::sendMessageBlob(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t a4, int a5, uint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = a5;
  ++*(a1 + 1124);
  v8 = *(a1 + 440);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 432);
      if (v11)
      {
        SipLazuliManager::createPowerAssertion(v11, a4, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  MessageSession::sendEmptyMessage(a1);
  v12 = *(a2 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  v39 = v12;
  memset(&v45, 0, sizeof(v45));
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *a6, *(a6 + 8));
  }

  else
  {
    v45 = *a6;
  }

  size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    ImsUuid::generate(v43);
    if ((v43[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v44, *&v43[8], *&v43[16]);
    }

    else
    {
      v44 = *&v43[8];
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v45 = v44;
    *(&v44.__r_.__value_.__s + 23) = 0;
    v44.__r_.__value_.__s.__data_[0] = 0;
    *v43 = &unk_1F5EBEE78;
    if ((v43[31] & 0x80000000) != 0)
    {
      operator delete(*&v43[8]);
    }
  }

  *v43 = &v45;
  v14 = std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_);
  std::string::operator=((v14 + 5), a4);
  v15 = v46;
  *v43 = &v45;
  *(std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_) + 16) = v15;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *v43 = &v45;
  std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_)[10] = rep;
  if (v39 >= 0x2711)
  {
    v17 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Processing blob in ", 19);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923350](*(v17 + 8));
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " chunks with content size ", 26);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923350](*(v17 + 8), v39);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    v42 = 0;
    memset(v43, 0, 24);
    std::string::basic_string(v43, a2, 0, 0x2710uLL, &v44);
    v18 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Sending chunk ", 14);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), (v42 + 1));
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " of ", 4);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), (v39 + 10000) / 0x2710uLL);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " chunkSize ", 11);
    *(v18 + 17) = 0;
    MEMORY[0x1E6923350](*(v18 + 8), 10000);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " bytes", 6);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    MessageSession::sendMessageRequest(a1, &v45, v43, a3, 1, 10000, v39);
    ++v42;
    v19 = *(a1 + 168);
    if (v19)
    {
      v20 = *(a1 + 160);
      v21 = std::__shared_weak_count::lock(v19);
      if (v21)
      {
        p_shared_weak_owners = &v21->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        memset(&v44, 0, sizeof(v44));
        if (*(a4 + 23) >= 0)
        {
          v23 = *(a4 + 23);
        }

        else
        {
          v23 = *(a4 + 8);
        }

        memset(&v40, 0, sizeof(v40));
        std::string::basic_string[abi:ne200100](&v40, v23 + 1);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v40;
        }

        else
        {
          v24 = v40.__r_.__value_.__r.__words[0];
        }

        if (v23)
        {
          if (*(a4 + 23) >= 0)
          {
            v25 = a4;
          }

          else
          {
            v25 = *a4;
          }

          memmove(v24, v25, v23);
        }

        *(&v24->__r_.__value_.__l.__data_ + v23) = 32;
        ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v26 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Processing blob as one chunk with content size ", 47);
  *(v26 + 17) = 0;
  MEMORY[0x1E6923350](*(v26 + 8), v39);
  *(v26 + 17) = 0;
  (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v26 + 17) = 0;
  MessageSession::sendMessageRequest(a1, &v45, a2, a3, 1, v39, v39);
  *v43 = &v45;
  *(std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_) + 17) = 1;
  *v43 = &v45;
  v27 = std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_);
  std::string::operator=((v27 + 11), a2);
  *v43 = &v45;
  v28 = std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1176), &v45.__r_.__value_.__l.__data_);
  std::string::operator=((v28 + 14), a3);
  v29 = *(a1 + 168);
  if (v29)
  {
    v30 = *(a1 + 160);
    v31 = std::__shared_weak_count::lock(v29);
    if (v31)
    {
      v32 = &v31->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
      memset(v43, 0, 24);
      if (*(a4 + 23) >= 0)
      {
        v33 = *(a4 + 23);
      }

      else
      {
        v33 = *(a4 + 8);
      }

      memset(&v41, 0, sizeof(v41));
      v34 = &v41;
      std::string::basic_string[abi:ne200100](&v41, v33 + 1);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v41.__r_.__value_.__r.__words[0];
      }

      if (v33)
      {
        if (*(a4 + 23) >= 0)
        {
          v35 = a4;
        }

        else
        {
          v35 = *a4;
        }

        memmove(v34, v35, v33);
      }

      *(&v34->__r_.__value_.__l.__data_ + v33) = 32;
      ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4DCB458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, void *__p, int a48, __int16 a49, char a50, char a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (*(v61 - 185) < 0)
  {
    operator delete(*(v61 - 208));
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::sendEmptyMessage(MessageSession *this)
{
  if ((*(this + 496) & 1) == 0)
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Sending empty message for session ", 34);
    *(v2 + 17) = 0;
    (*(*(*(this + 56) + 2456) + 16))(*(this + 56) + 2456, v2);
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    memset(&v7, 0, sizeof(v7));
    ImsUuid::generate(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = &unk_1F5EBEE78;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v7 = __p;
    }

    v5 = 0;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v3[0] = 0;
    v3[1] = 0;
    v4 = 0;
    MessageSession::sendMessageRequest(this, &v7, &v5, v3, 1, 0, 0);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }

    if (__p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v5);
    }

    *(this + 496) = 1;
    v5 = &v7;
    *(std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 147, &v7.__r_.__value_.__l.__data_) + 17) = 1;
    v5 = &v7;
    *(std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 147, &v7.__r_.__value_.__l.__data_) + 72) = 1;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4DCB8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::sendMessage(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[56];
  v3 = *(v2 + 232);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(v2 + 224))
    {
      v10 = 0;
      *v8 = 0u;
      v9 = 0u;
      ImsStringOutStream::ImsStringOutStream(v8);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[24];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    (*(a1[19] + 16))(v8, a1 + 19);
    v7 = (SBYTE7(v9) & 0x80u) == 0 ? v8 : v8[0];
    buf = 141558275;
    buf_4 = 1752392040;
    v13 = 2081;
    v14 = v7;
    _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SBYTE7(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4DCBC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, char a30)
{
  ImsResult::~ImsResult(&a9);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  a28 = &unk_1F5EDED18;
  if (a30 == 1)
  {
    if (a29)
    {
      (*(*a29 + 8))(a29);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void MessageSession::dumpMessage(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a1[56];
  v3 = *(v2 + 232);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(v2 + 224))
    {
      v37 = 0;
      v38 = 0;
      v5 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      if (!xmmword_1ECFD4718)
      {
        ctu::XpcJetsamAssertion::create_default_global(v18, v5);
        v6 = *v18;
        v18[0] = 0;
        v18[1] = 0;
        v7 = *(&xmmword_1ECFD4718 + 1);
        xmmword_1ECFD4718 = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          if (v18[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18[1]);
          }
        }
      }

      v8 = *(&xmmword_1ECFD4718 + 1);
      if (*(&xmmword_1ECFD4718 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1ECFD4718 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      std::string::basic_string[abi:ne200100]<0>(&v35, "msrpDump");
      ctu::XpcJetsamAssertion::createActivity();
      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v34 = 0;
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
      *v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *v18 = 0u;
      v19 = 0u;
      v9 = std::ostringstream::basic_ostringstream[abi:ne200100](v18);
      memset(&v17, 0, sizeof(v17));
      ims::logger(v9);
      std::string::basic_string[abi:ne200100]<0>(buf, "msrp.dump");
      std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v13, a1 + 67);
      ImsLogger::getFacilityWithClientConfig(v13, buf, &v17);
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v40 = 0;
      memset(buf, 0, sizeof(buf));
      ImsStringOutStream::ImsStringOutStream(buf);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = a1[24];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    (*(a1[19] + 16))(v18, a1 + 19);
    v12 = (SBYTE7(v19) & 0x80u) == 0 ? v18 : v18[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v12;
    _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SBYTE7(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4DCC844(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void MessageSession::handleConnected(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "MessageSession::handleConnected to ", 35);
  *(v4 + 17) = 0;
  if (*a2)
  {
    (*(**a2 + 40))(*a2, v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " for ", 5);
  *(v4 + 17) = 0;
  SipDialog::lazuliGroupParams(&__p, *(*(a1 + 448) + 2648));
  v5 = __p.__r_.__value_.__r.__words[0];
  v6 = MEMORY[0x1E6924740](__p.__r_.__value_.__r.__words[0]);
  v7 = MEMORY[0x1E69E9E80];
  if (v6 == MEMORY[0x1E69E9E80])
  {
    v8 = "group";
  }

  else
  {
    v8 = "cpm";
  }

  if (v6 == MEMORY[0x1E69E9E80])
  {
    v9 = 5;
  }

  else
  {
    v9 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v8, v9);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " session", 8);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  xpc_release(v5);
  v10 = *(a1 + 448);
  v11 = *(v10 + 232);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12 && *(v10 + 224))
    {
      v72 = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v72 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v72 = v14;
        if (!v14)
        {
          v17 = xpc_null_create();
          v14 = 0;
          goto LABEL_26;
        }
      }

      if (MEMORY[0x1E6924740](v14) == v7)
      {
        xpc_retain(v14);
        goto LABEL_27;
      }

      v17 = xpc_null_create();
LABEL_26:
      v72 = v17;
LABEL_27:
      xpc_release(v14);
      v18 = (a1 + 408);
      if (*(a1 + 431) < 0)
      {
        v18 = *(a1 + 408);
      }

      v70 = xpc_string_create(v18);
      if (!v70)
      {
        v70 = xpc_null_create();
      }

      __p.__r_.__value_.__r.__words[0] = &v72;
      __p.__r_.__value_.__l.__size_ = "kStackId";
      xpc::dict::object_proxy::operator=(&__p, &v70, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v70);
      v70 = 0;
      memset(&__p, 0, sizeof(__p));
      v19 = *(a1 + 448);
      if (*(v19 + 2511) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v19 + 2488), *(v19 + 2496));
      }

      else
      {
        __p = *(v19 + 2488);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_42;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_43;
        }

        p_p = &__p;
      }

      v68 = xpc_string_create(p_p);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      buf.__r_.__value_.__r.__words[0] = &v72;
      buf.__r_.__value_.__l.__size_ = "kConversationId";
      xpc::dict::object_proxy::operator=(&buf, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_43:
        memset(&__p, 0, sizeof(__p));
        v21 = *(a1 + 448);
        if (*(v21 + 2567) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v21 + 2544), *(v21 + 2552));
        }

        else
        {
          __p = *(v21 + 2544);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (!__p.__r_.__value_.__l.__size_)
          {
            goto LABEL_54;
          }

          v22 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            goto LABEL_55;
          }

          v22 = &__p;
        }

        v66 = xpc_string_create(v22);
        if (!v66)
        {
          v66 = xpc_null_create();
        }

        buf.__r_.__value_.__r.__words[0] = &v72;
        buf.__r_.__value_.__l.__size_ = "kContributionId";
        xpc::dict::object_proxy::operator=(&buf, &v66, &v67);
        xpc_release(v67);
        v67 = 0;
        xpc_release(v66);
        v66 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_55:
          memset(&buf, 0, sizeof(buf));
          v23 = *(a1 + 448);
          if (*(v23 + 2647) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v23 + 2624), *(v23 + 2632));
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            __p = *(v23 + 2624);
          }

          buf = __p;
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v25 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Received MLS Opaque token from server for conversation ", 55);
            *(v25 + 17) = 0;
            (*(*v25 + 32))(v25, *(a1 + 448) + 2488);
            (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v25 + 17) = 0;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            v64 = xpc_string_create(p_buf);
            if (!v64)
            {
              v64 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v72;
            __p.__r_.__value_.__l.__size_ = "kMlsOpaqueToken";
            xpc::dict::object_proxy::operator=(&__p, &v64, &v65);
            xpc_release(v65);
            v65 = 0;
            xpc_release(v64);
            v64 = 0;
          }

          if (*(*(a1 + 448) + 2816) != 1)
          {
            v62 = v72;
            if (v72)
            {
              xpc_retain(v72);
            }

            else
            {
              v62 = xpc_null_create();
            }

            v90 = 0;
            SipDialog::lazuliGroupParams(&v90, *(*(a1 + 448) + 2648));
            if (MEMORY[0x1E6924740](v90) == v7)
            {
              v88 = xpc_BOOL_create(1);
              if (!v88)
              {
                v88 = xpc_null_create();
              }

              __p.__r_.__value_.__r.__words[0] = &v62;
              __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
              xpc::dict::object_proxy::operator=(&__p, &v88, &v89);
              xpc_release(v89);
              v89 = 0;
              xpc_release(v88);
              v88 = 0;
              v86 = xpc_BOOL_create(0);
              if (!v86)
              {
                v86 = xpc_null_create();
              }

              __p.__r_.__value_.__r.__words[0] = &v62;
              __p.__r_.__value_.__l.__size_ = "kIsChatbot";
              xpc::dict::object_proxy::operator=(&__p, &v86, &v87);
              xpc_release(v87);
              v87 = 0;
              xpc_release(v86);
              v86 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kConversationId";
              v83 = &v62;
              v84 = "kConversationId";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v85);
              xpc_release(v85);
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kContributionId";
              v83 = &v62;
              v84 = "kContributionId";
              v85 = 0;
              xpc::dict::object_proxy::operator=(&v83, &__p, &v82);
              xpc_release(v82);
              v82 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kConferenceFocus";
              v83 = &v62;
              v84 = "kConferenceFocus";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v81);
              xpc_release(v81);
              v81 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kSubject";
              v83 = &v62;
              v84 = "kSubject";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v80);
              xpc_release(v80);
              v80 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kReferredBy";
              v83 = &v62;
              v84 = "kReferredBy";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v79);
              xpc_release(v79);
              v79 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kRemoteUri";
              v83 = &v62;
              v84 = "kRemoteUri";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v78);
              xpc_release(v78);
              v78 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kResourceXml";
              v83 = &v62;
              v84 = "kResourceXml";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v77);
              xpc_release(v77);
              v77 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kMlsOpaqueToken";
              v83 = &v62;
              v84 = "kMlsOpaqueToken";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v76);
              xpc_release(v76);
              v76 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kMlsBinaryBlob";
              v83 = &v62;
              v84 = "kMlsBinaryBlob";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v75);
              xpc_release(v75);
              v75 = 0;
              __p.__r_.__value_.__r.__words[0] = &v90;
              __p.__r_.__value_.__l.__size_ = "kMlsRecvInfo";
              v83 = &v62;
              v84 = "kMlsRecvInfo";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v74);
              xpc_release(v74);
              v74 = 0;
            }

            else
            {
              v89 = 0;
              SipDialog::lazuliMlsParams(&v89, *(*(a1 + 448) + 2680));
              if (MEMORY[0x1E6924740](v89) == v7)
              {
                v87 = xpc_BOOL_create(0);
                if (!v87)
                {
                  v87 = xpc_null_create();
                }

                __p.__r_.__value_.__r.__words[0] = &v62;
                __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
                xpc::dict::object_proxy::operator=(&__p, &v87, &v88);
                xpc_release(v88);
                v88 = 0;
                xpc_release(v87);
                v87 = 0;
                __p.__r_.__value_.__r.__words[0] = &v89;
                __p.__r_.__value_.__l.__size_ = "kMlsOpaqueToken";
                v83 = &v62;
                v84 = "kMlsOpaqueToken";
                xpc::dict::object_proxy::operator=(&v83, &__p, &v86);
                xpc_release(v86);
                v86 = 0;
                __p.__r_.__value_.__r.__words[0] = &v89;
                __p.__r_.__value_.__l.__size_ = "kMlsBinaryBlob";
                v83 = &v62;
                v84 = "kMlsBinaryBlob";
                xpc::dict::object_proxy::operator=(&v83, &__p, &v85);
                xpc_release(v85);
                __p.__r_.__value_.__r.__words[0] = &v89;
                __p.__r_.__value_.__l.__size_ = "kMlsRecvInfo";
                v83 = &v62;
                v84 = "kMlsRecvInfo";
                v85 = 0;
                xpc::dict::object_proxy::operator=(&v83, &__p, &v82);
                xpc_release(v82);
                v82 = 0;
                SipUri::asString(a1 + 664, &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v39 = &__p;
                }

                else
                {
                  v39 = __p.__r_.__value_.__r.__words[0];
                }

                v80 = xpc_string_create(v39);
                if (!v80)
                {
                  v80 = xpc_null_create();
                }

                v83 = &v62;
                v84 = "kRemoteUri";
                xpc::dict::object_proxy::operator=(&v83, &v80, &v81);
                xpc_release(v81);
                v81 = 0;
                xpc_release(v80);
                v80 = 0;
              }

              else
              {
                v87 = xpc_BOOL_create(0);
                if (!v87)
                {
                  v87 = xpc_null_create();
                }

                __p.__r_.__value_.__r.__words[0] = &v62;
                __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
                xpc::dict::object_proxy::operator=(&__p, &v87, &v88);
                xpc_release(v88);
                v88 = 0;
                xpc_release(v87);
                v87 = 0;
                v85 = xpc_BOOL_create(*(*(a1 + 448) + 2688));
                if (!v85)
                {
                  v85 = xpc_null_create();
                }

                __p.__r_.__value_.__r.__words[0] = &v62;
                __p.__r_.__value_.__l.__size_ = "kIsChatbot";
                xpc::dict::object_proxy::operator=(&__p, &v85, &v86);
                xpc_release(v86);
                v86 = 0;
                xpc_release(v85);
                v85 = 0;
                SipUri::asString(a1 + 664, &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v31 = &__p;
                }

                else
                {
                  v31 = __p.__r_.__value_.__r.__words[0];
                }

                v81 = xpc_string_create(v31);
                if (!v81)
                {
                  v81 = xpc_null_create();
                }

                v83 = &v62;
                v84 = "kRemoteUri";
                xpc::dict::object_proxy::operator=(&v83, &v81, &v82);
                xpc_release(v82);
                v82 = 0;
                xpc_release(v81);
                v81 = 0;
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              xpc_release(v89);
            }

            xpc_release(v90);
            *&__p.__r_.__value_.__l.__data_ = 0uLL;
            IMSClientManager::lazuliDelegateForStack((a1 + 408), &__p);
            v40 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0])
            {
              v83 = v62;
              if (v62)
              {
                xpc_retain(v62);
              }

              else
              {
                v83 = xpc_null_create();
              }

              LazuliDelegate::handleSessionReady(v40, &v83);
              xpc_release(v83);
              v83 = 0;
              v42 = __p.__r_.__value_.__r.__words[0];
              v90 = v62;
              if (v62)
              {
                xpc_retain(v62);
              }

              else
              {
                v90 = xpc_null_create();
              }

              LazuliDelegate::handleIncomingChat(v42, &v90);
              xpc_release(v90);
              v90 = 0;
            }

            else
            {
              v41 = (*(*a1 + 56))(a1);
              (*(*a1 + 16))(a1, v41);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "No delegate for stackId ", 24);
              *(v41 + 17) = 0;
              (*(*v41 + 32))(v41, a1 + 408);
              (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v41 + 17) = 0;
            }

            if (__p.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
            }

            xpc_release(v62);
            v62 = 0;
LABEL_184:
            SipDialog::lazuliGroupParams(&__p, *(*(a1 + 448) + 2648));
            v49 = __p.__r_.__value_.__r.__words[0];
            v50 = MEMORY[0x1E6924740](__p.__r_.__value_.__r.__words[0]);
            xpc_release(v49);
            if (v50 != v7)
            {
LABEL_201:
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              xpc_release(v72);
              goto LABEL_204;
            }

            SipDialog::sipSession(*(a1 + 448), &__p);
            v51 = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_)
            {
              v52 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
              v53 = __p.__r_.__value_.__r.__words[0];
              std::__shared_weak_count::__release_weak(v51);
              if (v52 && v53)
              {
                v54 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v54 = buf.__r_.__value_.__l.__size_;
                }

                if (!v54)
                {
                  v55 = (*(*a1 + 64))(a1);
                  (*(*a1 + 16))(a1, v55);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "Using MLS Opaque token provided by CT as server value is not available", 70);
                  *(v55 + 17) = 0;
                  (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v55 + 17) = 0;
                  std::string::operator=(&buf, (v53 + 1400));
                }

                goto LABEL_193;
              }

              if (v52)
              {
LABEL_193:
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }
            }

            v56 = *(a1 + 448);
            v57 = *(v56 + 216);
            if (v57)
            {
              v58 = *(v56 + 208);
              atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v59 = std::__shared_weak_count::lock(v57);
              std::__shared_weak_count::__release_weak(v57);
              if (v59 && v58)
              {
                *&__p.__r_.__value_.__l.__data_ = 0uLL;
                operator new();
              }
            }

            else
            {
              v59 = 0;
            }

            v60 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v60);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "DialogManager is NULL. Can't subscribe to Conference events", 59);
            *(v60 + 17) = 0;
            (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v60 + 17) = 0;
            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            goto LABEL_201;
          }

          v63 = v72;
          if (v72)
          {
            xpc_retain(v72);
          }

          else
          {
            v63 = xpc_null_create();
          }

          v90 = 0;
          SipDialog::lazuliGroupParams(&v90, *(*(a1 + 448) + 2648));
          if (MEMORY[0x1E6924740](v90) == v7)
          {
            v88 = xpc_BOOL_create(1);
            if (!v88)
            {
              v88 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v63;
            __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
            xpc::dict::object_proxy::operator=(&__p, &v88, &v89);
            xpc_release(v89);
            v89 = 0;
            xpc_release(v88);
            v88 = 0;
            v86 = xpc_BOOL_create(0);
            if (!v86)
            {
              v86 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v63;
            __p.__r_.__value_.__l.__size_ = "kIsChatbot";
            xpc::dict::object_proxy::operator=(&__p, &v86, &v87);
            xpc_release(v87);
            v87 = 0;
            xpc_release(v86);
            v86 = 0;
            SipDialog::sipSession(*(a1 + 448), &__p);
            v30 = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_)
            {
              v32 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
              v33 = __p.__r_.__value_.__r.__words[0];
              std::__shared_weak_count::__release_weak(v30);
              if (v32 && v33)
              {
                v34 = *(v33 + 1351);
                if (v34 < 0)
                {
                  v34 = *(v33 + 1336);
                }

                if (v34)
                {
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kIsSuccess";
                  v83 = &v63;
                  v84 = "kIsSuccess";
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v85);
                  xpc_release(v85);
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kTransactionId";
                  v83 = &v63;
                  v84 = "kTransactionId";
                  v85 = 0;
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v82);
                  xpc_release(v82);
                  v82 = 0;
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kConferenceFocus";
                  v83 = &v63;
                  v84 = "kConferenceFocus";
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v81);
                  xpc_release(v81);
                  v81 = 0;
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kMlsOpaqueToken";
                  v83 = &v63;
                  v84 = "kMlsOpaqueToken";
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v80);
                  xpc_release(v80);
                  v80 = 0;
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kMlsBinaryBlob";
                  v83 = &v63;
                  v84 = "kMlsBinaryBlob";
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v79);
                  xpc_release(v79);
                  v79 = 0;
                  __p.__r_.__value_.__r.__words[0] = &v90;
                  __p.__r_.__value_.__l.__size_ = "kMlsRecvInfo";
                  v83 = &v63;
                  v84 = "kMlsRecvInfo";
                  xpc::dict::object_proxy::operator=(&v83, &__p, &v78);
                  xpc_release(v78);
                  v78 = 0;
                  v35 = 1;
                }

                else
                {
                  v35 = 0;
                }
              }

              else
              {
                v35 = 0;
                v43 = 0;
                LODWORD(v30) = 0;
                if (!v32)
                {
LABEL_161:
                  xpc_release(v90);
                  *&__p.__r_.__value_.__l.__data_ = 0uLL;
                  IMSClientManager::lazuliDelegateForStack((a1 + 408), &__p);
                  v44 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__r.__words[0])
                  {
                    v90 = v63;
                    if (v63)
                    {
                      xpc_retain(v63);
                    }

                    else
                    {
                      v90 = xpc_null_create();
                    }

                    LazuliDelegate::handleSessionReady(v44, &v90);
                    xpc_release(v90);
                    v90 = 0;
                    if (v43)
                    {
                      v46 = __p.__r_.__value_.__r.__words[0];
                      v83 = v63;
                      if (v63)
                      {
                        xpc_retain(v63);
                      }

                      else
                      {
                        v83 = xpc_null_create();
                      }

                      LazuliDelegate::handleGroupChatCreated(v46, &v83);
                      xpc_release(v83);
LABEL_178:
                      v83 = 0;
                      goto LABEL_179;
                    }

                    if (v30)
                    {
                      v76 = xpc_string_create("kEventMlsInviteResult");
                      if (!v76)
                      {
                        v76 = xpc_null_create();
                      }

                      v83 = &v63;
                      v84 = "kEventName";
                      xpc::dict::object_proxy::operator=(&v83, &v76, &v77);
                      xpc_release(v77);
                      v77 = 0;
                      xpc_release(v76);
                      v76 = 0;
                      v47 = __p.__r_.__value_.__r.__words[0];
                      v83 = v63;
                      if (v63)
                      {
                        xpc_retain(v63);
                      }

                      else
                      {
                        v83 = xpc_null_create();
                      }

                      LazuliDelegate::handleSessionEvent(v47, &v83);
                      xpc_release(v83);
                      goto LABEL_178;
                    }
                  }

                  else
                  {
                    v45 = (*(*a1 + 56))(a1);
                    (*(*a1 + 16))(a1, v45);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "No delegate for stackId ", 24);
                    *(v45 + 17) = 0;
                    (*(*v45 + 32))(v45, a1 + 408);
                    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v45 + 17) = 0;
                  }

LABEL_179:
                  v48 = __p.__r_.__value_.__l.__size_;
                  if (__p.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                  }

                  *&__p.__r_.__value_.__l.__data_ = 0uLL;
                  IPTelephonyManager::getCallManager(v48, &__p);
                  IMSCallManager::handleMOSessionConnected(__p.__r_.__value_.__l.__data_, (*(a1 + 448) + 2488));
                  if (__p.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                  }

                  xpc_release(v63);
                  v63 = 0;
                  goto LABEL_184;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              LODWORD(v30) = 0;
              v43 = v35;
              goto LABEL_161;
            }

LABEL_160:
            v43 = 0;
            goto LABEL_161;
          }

          v89 = 0;
          SipDialog::lazuliMlsParams(&v89, *(*(a1 + 448) + 2680));
          if (MEMORY[0x1E6924740](v89) != v7)
          {
            v87 = xpc_BOOL_create(0);
            if (!v87)
            {
              v87 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v63;
            __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
            xpc::dict::object_proxy::operator=(&__p, &v87, &v88);
            xpc_release(v88);
            v88 = 0;
            xpc_release(v87);
            v87 = 0;
            v85 = xpc_BOOL_create(*(*(a1 + 448) + 2688));
            if (!v85)
            {
              v85 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v63;
            __p.__r_.__value_.__l.__size_ = "kIsChatbot";
            xpc::dict::object_proxy::operator=(&__p, &v85, &v86);
            xpc_release(v86);
            v86 = 0;
            xpc_release(v85);
            v85 = 0;
            SipUri::asString(a1 + 664, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = __p.__r_.__value_.__r.__words[0];
            }

            v81 = xpc_string_create(v27);
            if (!v81)
            {
              v81 = xpc_null_create();
            }

            v83 = &v63;
            v84 = "kRemoteUri";
            xpc::dict::object_proxy::operator=(&v83, &v81, &v82);
            xpc_release(v82);
            v82 = 0;
            xpc_release(v81);
            v81 = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v28 = *(a1 + 448);
            v29 = (v28 + 2656);
            if (*(v28 + 2679) < 0)
            {
              v29 = *v29;
            }

            v79 = xpc_string_create(v29);
            if (!v79)
            {
              v79 = xpc_null_create();
            }

            __p.__r_.__value_.__r.__words[0] = &v63;
            __p.__r_.__value_.__l.__size_ = "kTransactionId";
            xpc::dict::object_proxy::operator=(&__p, &v79, &v80);
            xpc_release(v80);
            v80 = 0;
            xpc_release(v79);
            LODWORD(v30) = 0;
            v79 = 0;
            goto LABEL_159;
          }

          v87 = xpc_BOOL_create(0);
          if (!v87)
          {
            v87 = xpc_null_create();
          }

          __p.__r_.__value_.__r.__words[0] = &v63;
          __p.__r_.__value_.__l.__size_ = "kIsGroupChat";
          xpc::dict::object_proxy::operator=(&__p, &v87, &v88);
          xpc_release(v88);
          v88 = 0;
          xpc_release(v87);
          v87 = 0;
          __p.__r_.__value_.__r.__words[0] = &v89;
          __p.__r_.__value_.__l.__size_ = "kMlsOpaqueToken";
          v83 = &v63;
          v84 = "kMlsOpaqueToken";
          xpc::dict::object_proxy::operator=(&v83, &__p, &v86);
          xpc_release(v86);
          v86 = 0;
          __p.__r_.__value_.__r.__words[0] = &v89;
          __p.__r_.__value_.__l.__size_ = "kMlsBinaryBlob";
          v83 = &v63;
          v84 = "kMlsBinaryBlob";
          xpc::dict::object_proxy::operator=(&v83, &__p, &v85);
          xpc_release(v85);
          __p.__r_.__value_.__r.__words[0] = &v89;
          __p.__r_.__value_.__l.__size_ = "kMlsRecvInfo";
          v83 = &v63;
          v84 = "kMlsRecvInfo";
          v85 = 0;
          xpc::dict::object_proxy::operator=(&v83, &__p, &v82);
          xpc_release(v82);
          v82 = 0;
          SipDialog::sipSession(*(a1 + 448), &__p);
          v30 = __p.__r_.__value_.__l.__size_;
          if (!__p.__r_.__value_.__l.__size_)
          {
            goto LABEL_159;
          }

          v36 = std::__shared_weak_count::lock(__p.__r_.__value_.__l.__size_);
          v37 = __p.__r_.__value_.__r.__words[0];
          std::__shared_weak_count::__release_weak(v30);
          if (v36 && v37)
          {
            if (*(v37 + 1432) == *(v37 + 1424))
            {
              v38 = 0;
            }

            else
            {
              __p.__r_.__value_.__r.__words[0] = &v89;
              __p.__r_.__value_.__l.__size_ = "kIsSuccess";
              v83 = &v63;
              v84 = "kIsSuccess";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v81);
              xpc_release(v81);
              v81 = 0;
              __p.__r_.__value_.__r.__words[0] = &v89;
              __p.__r_.__value_.__l.__size_ = "kTransactionId";
              v83 = &v63;
              v84 = "kTransactionId";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v80);
              xpc_release(v80);
              v80 = 0;
              __p.__r_.__value_.__r.__words[0] = &v89;
              __p.__r_.__value_.__l.__size_ = "kReason";
              v83 = &v63;
              v84 = "kReason";
              xpc::dict::object_proxy::operator=(&v83, &__p, &v79);
              xpc_release(v79);
              v79 = 0;
              v38 = 1;
            }
          }

          else
          {
            v38 = 0;
            LODWORD(v30) = 0;
            if (!v36)
            {
              goto LABEL_159;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          LODWORD(v30) = v38;
LABEL_159:
          xpc_release(v89);
          goto LABEL_160;
        }

LABEL_54:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_55;
      }

LABEL_42:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_43;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *(a1 + 192);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 152) + 16))(&__p, a1 + 152);
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
    _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_204:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v61 = *MEMORY[0x1E69E9840];
}

void sub_1E4DCE630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (*(v25 - 89) < 0)
  {
    operator delete(*(v25 - 112));
  }

  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  object = 0;
  xpc::dict::object_proxy::operator xpc::object(a2, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(a1, &v5, a3);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
}

xpc_object_t SipDialog::lazuliMlsParams(SipDialog *this, void *a2)
{
  *this = a2;
  if (a2)
  {
    return xpc_retain(a2);
  }

  result = xpc_null_create();
  *this = result;
  return result;
}

void MessageSession::handleDisconnected(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "MessageSession::handleDisconnected", 34);
  *(v2 + 17) = 0;
  v3 = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  *(a1 + 1128) = 737;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(v3, &v9);
  v4 = v9;
  v5 = *(a1 + 448);
  std::string::basic_string[abi:ne200100]<0>(__p, "MediaError");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v4, v5 + 2488, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4DCEC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MessageSession::handleDataReceived(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "MessageSession::handleDataReceived decoding ", 44);
  *(v4 + 17) = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  MEMORY[0x1E6923370](*(v4 + 8), v5);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " bytes ", 7);
  *(v4 + 17) = 0;
  if (*(a1 + 528))
  {
    v6 = "MT-Only";
  }

  else
  {
    v6 = "Normal";
  }

  if (*(a1 + 528))
  {
    v7 = 7;
  }

  else
  {
    v7 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v6, v7);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9)
  {
    v10 = *(a1 + 448);
    v11 = std::__shared_weak_count::lock(*(v10 + 232));
    v12 = *(v10 + 224);
    v13 = *(v12 + 280);
    v14 = *(v12 + 288);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransportLayer::handleTcpIdleExtend(v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    memset(&v23, 0, sizeof(v23));
    v15 = *(a1 + 448);
    if (*(v15 + 2511) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(v15 + 2488), *(v15 + 2496));
    }

    else
    {
      v23 = *(v15 + 2488);
    }

    v16 = *(a1 + 480);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
    }

    else
    {
      v22 = *a2;
    }

    v17 = *(a1 + 168);
    if (v17)
    {
      v18 = *(a1 + 160);
      v19 = std::__shared_weak_count::lock(v17);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v23;
        }

        v24 = 0;
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DCF020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = v27[2];
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  operator delete(v27);
  MessageSession::handleDataReceived(std::string const&)::$_0::~$_0(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t MessageSession::handleDataReceived(std::string const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void MessageSession::processMessageRequest(uint64_t a1, uint64_t a2)
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
    v9 = 0;
    goto LABEL_263;
  }

  v8 = v7;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MessageSession::dumpMessage(a1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Message-ID");
  v11 = v10;
  if (v10)
  {
    v12 = v10[5];
    v13 = v11[6];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v17 = 0;
      v16 = 0;
      v18 = 0;
      if (!v13)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v16 = v15;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v13;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      v18 = v17;
      goto LABEL_18;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

LABEL_18:
  if (v8[151] < 0)
  {
    std::string::__init_copy_ctor_external(v194, *(v8 + 16), *(v8 + 17));
  }

  else
  {
    *v194 = *(v8 + 8);
    *&v194[16] = *(v8 + 18);
  }

  v19 = v194[23];
  if (v194[23] < 0)
  {
    v19 = *&v194[8];
  }

  if (v19 == 4)
  {
    v20 = *v194;
    if (v194[23] >= 0)
    {
      v20 = v194;
    }

    v21 = *v20 == *"SEND";
    if ((v194[23] & 0x80000000) == 0)
    {
LABEL_27:
      if (v21)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v21 = 0;
    if ((v194[23] & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  operator delete(*v194);
  if (v21)
  {
LABEL_28:
    v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Message-ID");
    v23 = v22;
    if (v22)
    {
      v24 = v22[5];
      v25 = v23[6];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v28 = 0;
        v29 = 0;
        v192 = 0;
        if (!v25)
        {
          goto LABEL_95;
        }

        goto LABEL_40;
      }

      v28 = v27;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = v25;
LABEL_40:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        v192 = v29;
        goto LABEL_95;
      }
    }

    else
    {
      v28 = 0;
    }

    v192 = 0;
LABEL_95:
    v63 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Content-Type");
    v64 = v63;
    if (v63)
    {
      v65 = v63[5];
      v66 = v64[6];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v69 = 0;
        v70 = 0;
        v191 = 0;
        if (!v66)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }

      v69 = v68;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        v70 = v66;
LABEL_103:
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        v191 = v70;
        goto LABEL_106;
      }
    }

    else
    {
      v69 = 0;
    }

    v191 = 0;
LABEL_106:
    v71 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Byte-Range");
    v72 = v71;
    if (v71)
    {
      v73 = v71[5];
      v74 = v72[6];
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v78 = 0;
        v77 = 0;
        v190 = 0;
        if (!v74)
        {
          goto LABEL_116;
        }

        goto LABEL_114;
      }

      v77 = v76;
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        v78 = v74;
LABEL_114:
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        v190 = v78;
        goto LABEL_116;
      }

      v190 = 0;
    }

    else
    {
      v190 = 0;
      v77 = 0;
    }

LABEL_116:
    if (MessageSession::checkRemotePath(a1, v8))
    {
      if (v28 && v69 && v77)
      {
        v79 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Failure-Report");
        v80 = v79;
        if (v79)
        {
          v81 = v79[5];
          v82 = v80[6];
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          {
            v85 = 0;
            v183 = 0;
            v80 = 0;
            if (!v82)
            {
              goto LABEL_138;
            }

            goto LABEL_136;
          }

          v183 = v84;
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
            v85 = v82;
LABEL_136:
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
            v80 = &v85->__vftable;
            goto LABEL_138;
          }

          v80 = 0;
        }

        else
        {
          v183 = 0;
        }

LABEL_138:
        v184 = v80;
        __n = v77[15];
        v185 = v77[14];
        v186 = v77[13];
        if (v185 > v186 && v186 < __n && v186 && v185 <= __n && __n < 0x3D091)
        {
          memset(&v193, 0, sizeof(v193));
          v189 = v9;
          if (v8[127] < 0)
          {
            std::string::__init_copy_ctor_external(&v193, *(v8 + 13), *(v8 + 14));
          }

          else
          {
            v193 = *(v8 + 104);
          }

          v103 = v185 - v186 + 1;
          size = HIBYTE(v193.__r_.__value_.__r.__words[2]);
          if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v193.__r_.__value_.__l.__size_;
          }

          if (size != v103)
          {
            v105 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v105);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v105 + 8), "Incoming Byte-Range size is ", 28);
            *(v105 + 17) = 0;
            MEMORY[0x1E6923350](*(v105 + 8), v103);
            *(v105 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v105 + 8), " but body size is ", 18);
            *(v105 + 17) = 0;
            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v106 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v106 = v193.__r_.__value_.__l.__size_;
            }

            MEMORY[0x1E6923370](*(v105 + 8), v106);
            *(v105 + 17) = 0;
            (*(*v105 + 64))(v105, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v105 + 17) = 0;
          }

          if (v77[13] == 1 && v77[14] == v77[15])
          {
            (*(*v8 + 32))(v194, v8);
            MessageSession::processIncomingSendRequestBody();
          }

          __n1 = v185 - v186 + 1;
          v182 = (a1 + 1136);
          v180 = v18;
          __str = (v28 + 56);
          v107 = std::__string_hash<char>::operator()[abi:ne200100](a1 + 1136, (v28 + 56));
          v108 = *(a1 + 1144);
          if (v108)
          {
            v109 = v107;
            v110 = vcnt_s8(v108);
            v110.i16[0] = vaddlv_u8(v110);
            v178 = v110.u32[0];
            if (v110.u32[0] > 1uLL)
            {
              v111 = v107;
              if (v107 >= *&v108)
              {
                v111 = v107 % *&v108;
              }
            }

            else
            {
              v111 = (*&v108 - 1) & v107;
            }

            v112 = *(*v182 + 8 * v111);
            if (v112)
            {
              for (i = *v112; i; i = *i)
              {
                v114 = *(i + 1);
                if (v114 == v109)
                {
                  if (std::equal_to<std::string>::operator()[abi:ne200100](v182, i + 2, &__str->__r_.__value_.__l.__data_))
                  {
                    if (*(i + 16) == __n)
                    {
                      v18 = v180;
                      std::string::replace(i + 3, v186 - 1, __n1, &v193, 0, 0xFFFFFFFFFFFFFFFFLL);
                      v115 = (v28 + 56);
                      *(i + 17) += __n1;
                      ++*(i + 24);
                      goto LABEL_200;
                    }

                    v18 = v180;
                    (*(*v8 + 32))(v194, v8);
                    MessageSession::sendResponse(a1);
                    if ((v194[23] & 0x80000000) != 0)
                    {
                      operator delete(*v194);
                    }

                    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v183 + 7, "yes"))
                    {
                      (*(*v8 + 32))(v194, v8);
                      MessageSession::sendReportRequest(a1, v194, __str, 403, v186, v185, __n);
                      if ((v194[23] & 0x80000000) != 0)
                      {
                        operator delete(*v194);
                      }
                    }

                    v176 = *(i + 24) + 1;
                    *(i + 24) = v176;
                    std::string::basic_string[abi:ne200100]<0>(v194, "Not allowed");
                    MessageSession::logSendReceiveEvent(a1, 0, v176, 0, 0x193u, v194);
                    if ((v194[23] & 0x80000000) != 0)
                    {
                      operator delete(*v194);
                    }

                    std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::erase(v182, i);
                    v9 = v189;
LABEL_247:
                    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v101 = v193.__r_.__value_.__r.__words[0];
LABEL_249:
                      operator delete(v101);
                    }

                    goto LABEL_250;
                  }
                }

                else
                {
                  if (v178 > 1)
                  {
                    if (v114 >= *&v108)
                    {
                      v114 %= *&v108;
                    }
                  }

                  else
                  {
                    v114 &= *&v108 - 1;
                  }

                  if (v114 != v111)
                  {
                    break;
                  }
                }
              }
            }
          }

          memset(v194, 0, 64);
          v115 = (v28 + 56);
          std::string::operator=(v194, __str);
          *&v194[24] = __n;
          std::string::insert(&v194[32], 0, __n, 32);
          std::string::replace(&v194[32], v186 - 1, __n1, &v193, 0, 0xFFFFFFFFFFFFFFFFLL);
          *&v194[28] += __n1;
          ++*&v194[56];
          v200.__r_.__value_.__r.__words[0] = (v28 + 56);
          v116 = std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v182, &__str->__r_.__value_.__l.__data_);
          std::string::operator=((v116 + 5), v194);
          v116[8] = *&v194[24];
          std::string::operator=(v116 + 3, &v194[32]);
          *(v116 + 24) = *&v194[56];
          if ((v194[55] & 0x80000000) != 0)
          {
            operator delete(*&v194[32]);
          }

          v18 = v180;
          if ((v194[23] & 0x80000000) != 0)
          {
            operator delete(*v194);
          }

LABEL_200:
          *v194 = v115;
          if (*(std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v182, v115) + 17) >= v77[15])
          {
            (*(*v8 + 32))(v194, v8);
            v200.__r_.__value_.__r.__words[0] = v115;
            std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v182, v115);
            MessageSession::processIncomingSendRequestBody();
          }

          v9 = v189;
          (*(*v8 + 32))(&v200, v8);
          (*(*v8 + 40))(v198, v8);
          MessageSession::sendResponse(a1);
          if (SHIBYTE(v199) < 0)
          {
            operator delete(v198[0]);
          }

          if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v200.__r_.__value_.__l.__data_);
          }

          v117 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Success-Report");
          v118 = v117;
          if (!v117)
          {
            goto LABEL_247;
          }

          v119 = v117[5];
          v120 = v118[6];
          if (v120)
          {
            atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v119)
          {
            v121 = **v119;
            if (v122)
            {
              v123 = v122;
              if (v120)
              {
                atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v120);
              }

              v124 = (v123 + 56);
              v125 = v123[79];
              if (v125 < 0)
              {
                if (*(v123 + 8) != 3)
                {
                  goto LABEL_245;
                }

                v124 = *v124;
              }

              else if (v125 != 3)
              {
                goto LABEL_245;
              }

              v137 = *v124;
              v138 = *(v124 + 2);
              if (v137 == 25977 && v138 == 115)
              {
                (*(*v8 + 32))(&v200, v8);
                MessageSession::sendReportRequest(a1, &v200, (v28 + 56), 200, v186, v185, __n);
                if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v200.__r_.__value_.__l.__data_);
                }
              }
            }
          }

LABEL_245:
          if (v120)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v120);
          }

          goto LABEL_247;
        }

        v92 = (*(*a1 + 56))(a1);
        (*(*a1 + 16))(a1, v92);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v92 + 8), "Incoming range issue ", 21);
        *(v92 + 17) = 0;
        MEMORY[0x1E6923350](*(v92 + 8), v186);
        *(v92 + 17) = 0;
        v93 = *(v92 + 8);
        v194[0] = 45;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v194, 1);
        *(v92 + 17) = 0;
        MEMORY[0x1E6923350](*(v92 + 8), v185);
        *(v92 + 17) = 0;
        v94 = *(v92 + 8);
        v194[0] = 47;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, v194, 1);
        *(v92 + 17) = 0;
        MEMORY[0x1E6923350](*(v92 + 8), __n);
        *(v92 + 17) = 0;
        (*(*v92 + 64))(v92, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v92 + 17) = 0;
        (*(*v8 + 32))(v194, v8);
        MessageSession::sendResponse(a1);
        if ((v194[23] & 0x80000000) != 0)
        {
          operator delete(*v194);
        }

        if (v183)
        {
          v95 = (v183 + 56);
          v96 = v183[79];
          if (v96 < 0)
          {
            if (*(v183 + 8) != 3)
            {
              goto LABEL_250;
            }

            v95 = *v95;
          }

          else if (v96 != 3)
          {
            goto LABEL_250;
          }

          v98 = *v95;
          v99 = *(v95 + 2);
          if (v98 == 25977 && v99 == 115)
          {
            (*(*v8 + 32))(v194, v8);
            MessageSession::sendReportRequest(a1, v194, (v28 + 56), 403, v186, v185, __n);
            if ((v194[23] & 0x80000000) != 0)
            {
              v101 = *v194;
              goto LABEL_249;
            }
          }
        }

LABEL_250:
        v88 = v191;
        v87 = v192;
        v89 = v190;
        if (v184)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v184);
        }

        goto LABEL_252;
      }

      v90 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v90);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v90 + 8), "Incoming SEND required header is missing.", 41);
      *(v90 + 17) = 0;
      (*(*v90 + 64))(v90, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v90 + 17) = 0;
      (*(*v8 + 32))(v194, v8);
      v88 = v191;
      v87 = v192;
      v89 = v190;
      MessageSession::sendResponse(a1);
    }

    else
    {
      v86 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v86 + 8), "Incoming SEND FromPath header does not match the one in SDP", 59);
      *(v86 + 17) = 0;
      (*(*v86 + 64))(v86, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v86 + 17) = 0;
      (*(*v8 + 32))(v194, v8);
      v88 = v191;
      v87 = v192;
      v89 = v190;
      MessageSession::sendResponse(a1);
    }

    if ((v194[23] & 0x80000000) != 0)
    {
      operator delete(*v194);
    }

LABEL_252:
    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (!v87)
    {
      goto LABEL_259;
    }

    v102 = v87;
    goto LABEL_258;
  }

LABEL_37:
  if (v8[151] < 0)
  {
    std::string::__init_copy_ctor_external(v194, *(v8 + 16), *(v8 + 17));
  }

  else
  {
    *v194 = *(v8 + 8);
    *&v194[16] = *(v8 + 18);
  }

  v30 = v194[23];
  if (v194[23] < 0)
  {
    v30 = *&v194[8];
  }

  if (v30 == 6)
  {
    v31 = *v194;
    if (v194[23] >= 0)
    {
      v31 = v194;
    }

    v32 = *v31;
    v33 = *(v31 + 2);
    v35 = v32 == *"REPORT" && v33 == *"RT";
    if ((v194[23] & 0x80000000) == 0)
    {
LABEL_54:
      if (v35)
      {
        goto LABEL_55;
      }

LABEL_90:
      if (v16)
      {
        (*(*v8 + 32))(v194, v8);
        MessageSession::sendResponse(a1);
        if ((v194[23] & 0x80000000) != 0)
        {
          operator delete(*v194);
        }
      }

      goto LABEL_259;
    }
  }

  else
  {
    v35 = 0;
    if ((v194[23] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }
  }

  operator delete(*v194);
  if (!v35)
  {
    goto LABEL_90;
  }

LABEL_55:
  v36 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Message-ID");
  v37 = v36;
  if (!v36)
  {
LABEL_133:
    v91 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v91);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v91 + 8), "Incoming REPORT is missing a Message-ID", 39);
    *(v91 + 17) = 0;
    (*(*v91 + 64))(v91, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v91 + 17) = 0;
    goto LABEL_259;
  }

  v38 = v36[5];
  v39 = v37[6];
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    goto LABEL_133;
  }

  v42 = v41;
  v188 = v9;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v43 = *(a1 + 440);
  if (v43)
  {
    v44 = std::__shared_weak_count::lock(v43);
    if (v44)
    {
      v45 = v44;
      v46 = *(a1 + 432);
      if (v46)
      {
        SipLazuliManager::createPowerAssertion(v46, v42 + 7, 1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  v47 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 1176), v42 + 7);
  if (!v47)
  {
    v97 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v97 + 8), "Dropping report; unknown MSRP Message-ID ", 41);
    *(v97 + 17) = 0;
    (*(*v97 + 32))(v97, v42 + 7);
    (*(*v97 + 64))(v97, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_165:
    *(v97 + 17) = 0;
    goto LABEL_166;
  }

  v48 = v47;
  v49 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v8 + 4, "Status");
  v50 = v49;
  if (!v49)
  {
LABEL_164:
    v97 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v97 + 8), "Status header not found.  Dropping report for MSRP Message-ID ", 62);
    *(v97 + 17) = 0;
    (*(*v97 + 32))(v97, v42 + 7);
    (*(*v97 + 64))(v97, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_165;
  }

  v51 = v49[5];
  v52 = v50[6];
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    goto LABEL_164;
  }

  v55 = v54;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v179 = v18;
  memset(&v200, 0, sizeof(v200));
  v56 = std::string::basic_string(&v200, (v55 + 56), 4uLL, 3uLL, v194);
  *(a1 + 1128) = std::stoul(v56, 0, 10);
  std::to_string(v194, 0xC8u);
  if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v200.__r_.__value_.__l.__size_;
  }

  v58 = v194[23];
  v59 = v194[23];
  if (v194[23] < 0)
  {
    v58 = *&v194[8];
  }

  if (v57 == v58)
  {
    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v200;
    }

    else
    {
      v60 = v200.__r_.__value_.__r.__words[0];
    }

    if (v194[23] >= 0)
    {
      v61 = v194;
    }

    else
    {
      v61 = *v194;
    }

    v62 = memcmp(v60, v61, v57) == 0;
  }

  else
  {
    v62 = 0;
  }

  if (v59 < 0)
  {
    operator delete(*v194);
  }

  if (!v62)
  {
    v126 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v126);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v126 + 8), "Received error report for MSRP Message-ID ", 42);
    *(v126 + 17) = 0;
    (*(*v126 + 32))(v126, v42 + 7);
    (*(*v126 + 64))(v126, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v126 + 17) = 0;
    *&v194[16] = 0x40000000;
    memset(&v194[24], 0, 48);
    v195 = 0u;
    *v194 = &unk_1F5EBDEF8;
    *&v194[8] = &_bambiDomain;
    std::string::operator=(&v194[64], (v48 + 5));
    v127 = *(a1 + 440);
    if (v127)
    {
      v128 = std::__shared_weak_count::lock(v127);
      if (v128)
      {
        v129 = v128;
        v130 = *(a1 + 432);
        if (v130)
        {
          v131 = *(a1 + 448);
          v132 = *(v48 + 16);
          ImsResult::ImsResult(&v193, v194);
          SipLazuliManager::handleOutgoingMessageError(v130, a1 + 664, v131 + 2488, v132, &v193);
          ImsResult::~ImsResult(&v193);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }
    }

    std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::erase((a1 + 1176), v48);
    ImsResult::~ImsResult(v194);
  }

  v133 = *(a1 + 440);
  v18 = v179;
  if (v133)
  {
    v134 = std::__shared_weak_count::lock(v133);
    if (v134)
    {
      v135 = v134;
      v136 = *(a1 + 432);
      if (v136)
      {
        SipLazuliManager::releasePowerAssertion(v136, v42 + 7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }
  }

  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

LABEL_166:
  v9 = v188;
  if (v39)
  {
    v102 = v39;
LABEL_258:
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

LABEL_259:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_330;
  }

  v5 = *v2;
LABEL_263:
  v140 = *v5;
  if (v141)
  {
    v142 = v141;
    v143 = *(a2 + 8);
    if (v143)
    {
      atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MessageSession::dumpMessage(a1);
    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    if ((MessageSession::checkRemotePath(a1, v142) & 1) == 0)
    {
      v152 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v152);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v152 + 8), "Dropping response, because FromPath header does not match the one in SDP", 72);
      *(v152 + 17) = 0;
      (*(*v152 + 64))(v152, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v152 + 17) = 0;
LABEL_328:
      if (v143)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v143);
      }

      goto LABEL_330;
    }

    memset(&v200, 0, sizeof(v200));
    v198[0] = 0;
    v198[1] = 0;
    v199 = 0;
    (*(*v142 + 32))(v198, v142);
    v144 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 1216), v198);
    if (v144)
    {
      std::string::operator=(&v200, (v144 + 5));
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::remove((a1 + 1216), v144, v194);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v194);
      v145 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 1176), &v200.__r_.__value_.__l.__data_);
      if (v145)
      {
        v146 = v145;
        v147 = (v145 + 5);
        v148 = v145[10];
        if (*(v145 + 17))
        {
          memset(v194, 0, 24);
          if (*(v145 + 63) >= 0)
          {
            v149 = *(v145 + 63);
          }

          else
          {
            v149 = v145[6];
          }

          memset(&v196, 0, sizeof(v196));
          std::string::basic_string[abi:ne200100](&v196, v149 + 1);
          if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v150 = &v196;
          }

          else
          {
            v150 = v196.__r_.__value_.__r.__words[0];
          }

          if (v149)
          {
            if (*(v146 + 63) >= 0)
            {
              v151 = v147;
            }

            else
            {
              v151 = v146[5];
            }

            memmove(v150, v151, v149);
          }

          *(&v150->__r_.__value_.__l.__data_ + v149) = 32;
          ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
        }

        v154 = *(v142 + 32);
        *(a1 + 1128) = v154;
        v155 = *a1;
        if (v154 == 200)
        {
          v156 = (*(v155 + 64))(a1);
          (*(*a1 + 16))(a1, v156);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v156 + 8), "success for MSRP Message-ID ", 28);
          *(v156 + 17) = 0;
          (*(*v156 + 32))(v156, &v200);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v156 + 8), " msrpTransactionId ", 19);
          *(v156 + 17) = 0;
          (*(*v142 + 32))(v194, v142);
          (*(*v156 + 32))(v156, v194);
          (*(*v156 + 64))(v156, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v156 + 17) = 0;
          if ((v194[23] & 0x80000000) != 0)
          {
            operator delete(*v194);
          }

          v157 = *(a1 + 440);
          if (v157)
          {
            v158 = std::__shared_weak_count::lock(v157);
            if (v158)
            {
              v159 = v158;
              v160 = *(a1 + 432);
              if (v160)
              {
                SipLazuliManager::handleOutgoingMessageSuccess(v160, a1 + 664, *(a1 + 448) + 2488, *(v146 + 16), v147, *(v146 + 72), 0);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v159);
            }
          }
        }

        else
        {
          v161 = (*(v155 + 56))(a1);
          (*(*a1 + 16))(a1, v161);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v161 + 8), "error code ", 11);
          *(v161 + 17) = 0;
          MEMORY[0x1E6923350](*(v161 + 8), *(v142 + 32));
          *(v161 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v161 + 8), " received for MSRP Message-ID ", 30);
          *(v161 + 17) = 0;
          (*(*v161 + 32))(v161, &v200);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v161 + 8), " msrpTransactionId ", 19);
          *(v161 + 17) = 0;
          (*(*v161 + 32))(v161, v198);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v161 + 8), " ctTransactionId ", 17);
          *(v161 + 17) = 0;
          (*(*v161 + 32))(v161, v147);
          v162 = (*(*v161 + 64))(v161, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v161 + 17) = 0;
          v163 = *(v142 + 32);
          if (v163 == 481)
          {
            *&v193.__r_.__value_.__l.__data_ = 0uLL;
            IPTelephonyManager::getCallManager(v162, &v193);
            v167 = v193.__r_.__value_.__r.__words[0];
            v168 = *(a1 + 448);
            std::string::basic_string[abi:ne200100]<0>(v194, "MediaError");
            v197.__r_.__value_.__r.__words[0] = xpc_null_create();
            IMSCallManager::terminateLazuli(v167, v168 + 2488, v194, &v197.__r_.__value_.__l.__data_, 0);
            xpc_release(v197.__r_.__value_.__l.__data_);
            v197.__r_.__value_.__r.__words[0] = 0;
            if ((v194[23] & 0x80000000) != 0)
            {
              operator delete(*v194);
            }

            if (v193.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v193.__r_.__value_.__l.__size_);
            }
          }

          else if (v163 == 500 && !*(v146 + 136))
          {
            v164 = *(v146 + 111);
            if ((v164 & 0x8000000000000000) != 0)
            {
              v164 = v146[12];
            }

            if (v164)
            {
              v165 = *(v146 + 135);
              if ((v165 & 0x8000000000000000) != 0)
              {
                v165 = v146[15];
              }

              if (v165 && (v146[9] & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v194, "Internal error");
                MessageSession::logSendReceiveEvent(a1, 1, 0, v148, 0x1F4u, v194);
                if ((v194[23] & 0x80000000) != 0)
                {
                  operator delete(*v194);
                }

                ++*(v146 + 136);
                v166 = *(v146 + 16);
                if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v193, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
                }

                else
                {
                  v193 = v200;
                }

                MessageSession::sendMessageBlob(a1, (v146 + 11), (v146 + 14), v147, v166, &v193);
              }
            }
          }

          *&v194[16] = 0x40000000;
          memset(&v194[24], 0, 48);
          v195 = 0u;
          *v194 = &unk_1F5EBDEF8;
          *&v194[8] = &_bambiDomain;
          std::string::operator=(&v194[64], v147);
          v169 = *(a1 + 440);
          if (v169)
          {
            v170 = std::__shared_weak_count::lock(v169);
            if (v170)
            {
              v171 = v170;
              v172 = *(a1 + 432);
              if (v172)
              {
                v173 = *(a1 + 448);
                v174 = *(v146 + 16);
                ImsResult::ImsResult(&v193, v194);
                SipLazuliManager::handleOutgoingMessageError(v172, a1 + 664, v173 + 2488, v174, &v193);
                ImsResult::~ImsResult(&v193);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v171);
            }
          }

          ImsResult::~ImsResult(v194);
          if ((v146[9] & 1) == 0)
          {
            v175 = *(v142 + 32);
            MessageSession::logSendReceiveEvent(a1, 1, 0, v148, v175, v194);
            if ((v194[23] & 0x80000000) != 0)
            {
              operator delete(*v194);
            }
          }

          std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::erase((a1 + 1176), v146);
        }

        goto LABEL_324;
      }

      v153 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v153);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v153 + 8), "Dropping response for transaction ", 34);
      *(v153 + 17) = 0;
      (*(*v153 + 32))(v153, v198);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v153 + 8), " MSRP Message-ID ", 17);
      *(v153 + 17) = 0;
      (*(*v153 + 32))(v153, &v200);
      (*(*v153 + 64))(v153, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      v153 = (*(*a1 + 56))(a1);
      (*(*a1 + 16))(a1, v153);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v153 + 8), "Received response ", 18);
      *(v153 + 17) = 0;
      MEMORY[0x1E6923350](*(v153 + 8), *(v142 + 32));
      *(v153 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v153 + 8), " for unknown transaction ", 25);
      *(v153 + 17) = 0;
      (*(*v153 + 32))(v153, v198);
      (*(*v153 + 64))(v153, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v153 + 17) = 0;
LABEL_324:
    if (SHIBYTE(v199) < 0)
    {
      operator delete(v198[0]);
    }

    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
    }

    goto LABEL_328;
  }

LABEL_330:
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4DD1630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::handleSendError(void *a1, const void **a2, const ImsResult *a3)
{
  v6 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "MessageSession::handleSendError for MSRP Message-ID ", 52);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  v7 = *(v6 + 8);
  LOBYTE(v22[0]) = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v22, 1);
  *(v6 + 17) = 0;
  (*(*a3 + 16))(a3, v6);
  v8 = (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v24 = 0;
  v25 = 0;
  IPTelephonyManager::getCallManager(v8, &v24);
  v9 = v24;
  v10 = a1[56];
  std::string::basic_string[abi:ne200100]<0>(v22, "MediaError");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v9, v10 + 2488, v22, &object, 0);
  xpc_release(object);
  object = 0;
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v11 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 147, a2);
  if (v11)
  {
    v12 = v11;
    std::string::operator=((a3 + 64), (v11 + 5));
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "No ctTransactionId for MSRP Message-ID ", 39);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, a2);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v13 = 0;
    *(v14 + 17) = 0;
  }

  v15 = a1[55];
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = a1[54];
      if (v18)
      {
        v19 = a1[56];
        ImsResult::ImsResult(v20, a3);
        SipLazuliManager::handleOutgoingMessageError(v18, (a1 + 83), v19 + 2488, v13, v20);
        ImsResult::~ImsResult(v20);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1E4DD1DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  ImsResult::~ImsResult(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void MessageSession::handleConferenceNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Got conference update from ", 27);
  *(v6 + 17) = 0;
  (*(*a2 + 40))(a2, v6);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v31 = 0;
  v32 = 0;
  IMSClientManager::lazuliDelegateForStack((a1 + 408), &v31);
  if (!v31)
  {
    goto LABEL_34;
  }

  v30 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v30 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v30 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_9;
    }
  }

  if (MEMORY[0x1E6924740](v8) != MEMORY[0x1E69E9E80])
  {
    v9 = xpc_null_create();
LABEL_9:
    v30 = v9;
    goto LABEL_10;
  }

  xpc_retain(v8);
LABEL_10:
  xpc_release(v8);
  v10 = *(a1 + 448);
  v11 = (v10 + 2488);
  if (*(v10 + 2511) < 0)
  {
    v11 = *v11;
  }

  v28 = xpc_string_create(v11);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  __p = &v30;
  v22 = "kConversationId";
  xpc::dict::object_proxy::operator=(&__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v12 = *(a1 + 448);
  v13 = (v12 + 2544);
  if (*(v12 + 2567) < 0)
  {
    v13 = *v13;
  }

  object = xpc_string_create(v13);
  if (!object)
  {
    object = xpc_null_create();
  }

  __p = &v30;
  v22 = "kContributionId";
  xpc::dict::object_proxy::operator=(&__p, &object, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(object);
  object = 0;
  SipUri::asString(a2, &__p);
  if (v23 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v24 = xpc_string_create(p_p);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v20[0] = &v30;
  v20[1] = "kConferenceFocus";
  xpc::dict::object_proxy::operator=(v20, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (*(a3 + 23) >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  v18 = xpc_string_create(v15);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  __p = &v30;
  v22 = "kResourceXml";
  xpc::dict::object_proxy::operator=(&__p, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v16 = v31;
  v17 = v30;
  v18 = 0;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v17 = xpc_null_create();
  }

  LazuliDelegate::handleGroupChatUpdate(v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v30);
LABEL_34:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_1E4DD21D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v10 - 56));
  v12 = *(v10 - 40);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void MessageSession::addParticipants(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[21];
  if (v5)
  {
    v7 = a1[20];
    v8 = std::__shared_weak_count::lock(v5);
    if (v8)
    {
      v13[0] = 0;
      v13[1] = 0;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = a1[57];
      v12 = a1[56];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *a4;
      v11 = a4[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      LazuliGroupModification::addParticipants(v13);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4DD2390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::removeParticipants(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[21];
  if (v5)
  {
    v7 = a1[20];
    v8 = std::__shared_weak_count::lock(v5);
    if (v8)
    {
      v13[0] = 0;
      v13[1] = 0;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = a1[57];
      v12 = a1[56];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *a4;
      v11 = a4[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      LazuliGroupModification::removeParticipants(v13);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4DD2510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::handleParticipantStateChange(MessageSession *this, const ParticipantStateChangeParams *a2)
{
  memset(&v58, 0, sizeof(v58));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *a2, *(a2 + 1));
  }

  else
  {
    v58 = *a2;
  }

  v57 = 0;
  SipDialog::lazuliGroupParams(&v57, *(*(this + 56) + 2648));
  v4 = MEMORY[0x1E6924740](v57);
  v5 = MEMORY[0x1E69E9E80];
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v6 = (*(*this + 56))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No group params for refer ", 26);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, &v58);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    goto LABEL_43;
  }

  v56 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v56 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v56 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_13;
    }
  }

  if (MEMORY[0x1E6924740](v8) == v5)
  {
    xpc_retain(v8);
    goto LABEL_14;
  }

  v9 = xpc_null_create();
LABEL_13:
  v56 = v9;
LABEL_14:
  xpc_release(v8);
  v10 = this + 408;
  if (*(this + 431) < 0)
  {
    v10 = *(this + 51);
  }

  v54 = xpc_string_create(v10);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  *&v59 = &v56;
  *(&v59 + 1) = "kStackId";
  xpc::dict::object_proxy::operator=(&v59, &v54, &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  v52 = xpc_BOOL_create(*(a2 + 7) == 2);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  *&v59 = &v56;
  *(&v59 + 1) = "kIsSuccess";
  xpc::dict::object_proxy::operator=(&v59, &v52, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v52);
  v52 = 0;
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v58;
  }

  else
  {
    v11 = v58.__r_.__value_.__r.__words[0];
  }

  v50 = xpc_string_create(v11);
  if (!v50)
  {
    v50 = xpc_null_create();
  }

  *&v59 = &v56;
  *(&v59 + 1) = "kTransactionId";
  xpc::dict::object_proxy::operator=(&v59, &v50, &v51);
  xpc_release(v51);
  v51 = 0;
  xpc_release(v50);
  v50 = 0;
  *&v59 = &v57;
  *(&v59 + 1) = "kConversationId";
  v47 = &v56;
  v48 = "kConversationId";
  xpc::dict::object_proxy::operator=(&v47, &v59, &v49);
  xpc_release(v49);
  *&v59 = &v57;
  *(&v59 + 1) = "kContributionId";
  v47 = &v56;
  v48 = "kContributionId";
  v49 = 0;
  xpc::dict::object_proxy::operator=(&v47, &v59, &v46);
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_int64_create(*(a2 + 9));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  *&v59 = &v56;
  *(&v59 + 1) = "kErrorCode";
  xpc::dict::object_proxy::operator=(&v59, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (MEMORY[0x1E6924740](*(a2 + 8)) == MEMORY[0x1E69E9E50] && xpc_array_get_count(*(a2 + 8)))
  {
    v12 = *(a2 + 8);
    v42 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v42 = xpc_null_create();
    }

    *&v59 = &v56;
    *(&v59 + 1) = "kSipWarningsList";
    xpc::dict::object_proxy::operator=(&v59, &v42, &v43);
    xpc_release(v43);
    v43 = 0;
    xpc_release(v42);
    v42 = 0;
  }

  v59 = 0uLL;
  IMSClientManager::lazuliDelegateForStack(this + 51, &v59);
  v13 = v59;
  if (v59)
  {
    v14 = *(a2 + 6);
    if (v14 == 2)
    {
      v40 = v56;
      if (v56)
      {
        xpc_retain(v56);
      }

      else
      {
        v40 = xpc_null_create();
      }

      LazuliDelegate::handleParticipantRemoved(v13, &v40);
      xpc_release(v40);
      v40 = 0;
      if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>>>::__erase_unique<std::string>(this + 134, &v58.__r_.__value_.__l.__data_))
      {
        goto LABEL_40;
      }

      v30 = (*(*this + 56))(this);
      (*(*this + 16))(this, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Unable to erase removed participant for ", 40);
      *(v30 + 17) = 0;
      v16 = (v30 + 17);
      (*(*v30 + 32))(v30, &v58);
      (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      if (v14 != 1)
      {
        goto LABEL_40;
      }

      v41 = v56;
      if (v56)
      {
        xpc_retain(v56);
      }

      else
      {
        v41 = xpc_null_create();
      }

      LazuliDelegate::handleParticipantAdded(v13, &v41);
      xpc_release(v41);
      v41 = 0;
      if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>>>::__erase_unique<std::string>(this + 134, &v58.__r_.__value_.__l.__data_))
      {
        goto LABEL_40;
      }

      v29 = (*(*this + 56))(this);
      (*(*this + 16))(this, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Unable to erase added participant for ", 38);
      *(v29 + 17) = 0;
      v16 = (v29 + 17);
      (*(*v29 + 32))(v29, &v58);
      (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }
  }

  else
  {
    v15 = (*(*this + 56))(this);
    (*(*this + 16))(this, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "No delegate for refer ", 22);
    *(v15 + 17) = 0;
    v16 = (v15 + 17);
    (*(*v15 + 32))(v15, &v58);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *v16 = 0;
LABEL_40:
  if (*(&v59 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
  }

  xpc_release(v56);
LABEL_43:
  xpc_release(v57);
  v17 = (*(*this + 64))(this);
  (*(*this + 16))(this, v17);
  MEMORY[0x1E6923370](*(v17 + 8), *(this + 137));
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " ongoing refers", 15);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  v18 = *(this + 56);
  v19 = *(v18 + 2752);
  if (v19)
  {
    v20 = *(v18 + 2744);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21 = std::__shared_weak_count::lock(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v21)
    {
      if (v20)
      {
        v47 = 0;
        v48 = 0;
        SipSessionInterface::stack(v20, &v47);
        if (v47)
        {
          v22 = *(a2 + 7);
          v23 = *(a2 + 6) == 1;
          if (*(a2 + 6) == 1)
          {
            v24 = 0x455449564E49;
          }

          else
          {
            v24 = 4544834;
          }

          v25 = &qword_1E5164128;
          if (*(a2 + 6) == 1)
          {
            v25 = &qword_1E51640B0;
          }

          LODWORD(v57) = *v25;
          *(&v57 + 3) = *(v25 + 3);
          if (v23)
          {
            v26 = 6;
          }

          else
          {
            v26 = 3;
          }

          v27 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v28 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global(v27);
          }

          v31 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v32 = v48;
          v39[0] = v47;
          v39[1] = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36[0] = v24;
          v36[1] = 0;
          *v37 = v57;
          *&v37[3] = *(&v57 + 3);
          v38 = v26;
          v33 = *(a2 + 8);
          v34 = *(a2 + 9);
          if (*(a2 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(a2 + 5), *(a2 + 6));
          }

          else
          {
            __p = *(a2 + 40);
          }

          IMSMetricsManager::logLazuliRefer(v28, v39, v36, v22 == 2, v33, v34, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DD2F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, xpc_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    if (!v29)
    {
      goto LABEL_6;
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_6:
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  _Unwind_Resume(a1);
}

void MessageSession::sendInfoRequest(MessageSession *this, const LazuliSendParams *a2)
{
  v3 = *(this + 56);
  v4 = *(v3 + 232);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + 224);
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
          v11 = *(v9 + 264);
          v12 = *(v9 + 272);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(this + 57);
          v14 = *(this + 56);
          v15 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipInfoManager::sendInfoRequest(v11, &v14, a2);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1E4DD3238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void MessageSession::handleTimer(void *a1, const std::string *a2)
{
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      v9 = memchr(v8, 32, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 32)
      {
        goto LABEL_13;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_13:
  if (v9 == v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9 - v5;
  }

  memset(&__str, 0, sizeof(__str));
  std::string::basic_string(&__str, a2, 0, v10, v25);
  memset(&v29, 0, sizeof(v29));
  v11 = std::string::basic_string(&v29, a2, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, v25);
  v12 = std::stoul(v11, 0, 10);
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v25[0] = &unk_1F5EBDEF8;
  v25[1] = &_bambiDomain;
  v25[2] = 1073741831;
  std::string::operator=(&v28[1], &__str);
  v13 = a1[55];
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = v13;
      v15 = a1[54];
      if (v15)
      {
        v16 = a1[56];
        ImsResult::ImsResult(v24, v25);
        SipLazuliManager::handleOutgoingMessageError(v15, (a1 + 83), v16 + 2488, v12, v24);
        ImsResult::~ImsResult(v24);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v22 = 0;
  v23 = 0;
  IPTelephonyManager::getCallManager(v13, &v22);
  v17 = v22;
  v18 = a1[56];
  std::string::basic_string[abi:ne200100]<0>(__p, "MediaError");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v17, v18 + 2488, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  ImsResult::~ImsResult(v25);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DD34AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  ImsResult::~ImsResult(&a18);
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  ImsResult::~ImsResult(&a29);
  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  _Unwind_Resume(a1);
}

void MessageSession::sipStackConfig(MessageSession *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(this + 56);
  v5 = *(v4 + 232);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(v4 + 224);
      if (v7)
      {
        SipStackConfig::SipStackConfig(a2, (v7 + 328));
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(this + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 19) + 16))(__p, this + 152);
    v10 = v12 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v10;
    _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a2 + 25) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 41) = 1;
  SipUri::SipUri((a2 + 48));
  *(a2 + 456) = 1;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  SipTimers::SipTimers((a2 + 512));
  *(a2 + 544) = 16842752;
  *(a2 + 548) = 0;
  *(a2 + 552) = &unk_1F5EBEF50;
  *(a2 + 568) = 0u;
  *(a2 + 560) = a2 + 568;
  *(a2 + 584) = 256;
  *(a2 + 592) = xmmword_1E5167190;
  *(a2 + 608) = 0x100000101000101;
  *(a2 + 616) = 0;
  *(a2 + 619) = 0;
  *(a2 + 624) = 5000;
  *(a2 + 628) = 0;
  *(a2 + 632) = 5000;
  *(a2 + 656) = 0x200000000000000;
  *(a2 + 640) = SipPrivacyHeader::kPrivacyId;
  std::string::basic_string[abi:ne200100]<0>((a2 + 664), "sip-client-11111");
  *(a2 + 688) = 257;
  *(a2 + 696) = &unk_1F5EF3C38;
  *(a2 + 712) = 0u;
  *(a2 + 704) = a2 + 712;
  *(a2 + 728) = &unk_1F5EF3C38;
  *(a2 + 744) = 0u;
  *(a2 + 736) = a2 + 744;
  *(a2 + 760) = &unk_1F5EF3C38;
  *(a2 + 776) = 0u;
  *(a2 + 768) = a2 + 776;
  *(a2 + 792) = 0;
  *(a2 + 796) = xmmword_1E51671A0;
  *(a2 + 812) = 16842752;
  *(a2 + 816) = 0;
  *(a2 + 820) = 0;
  *(a2 + 824) = &unk_1F5EF3C38;
  *(a2 + 840) = 0u;
  *(a2 + 832) = a2 + 840;
  *(a2 + 856) = 65793;
  *(a2 + 860) = 0;
  std::string::basic_string[abi:ne200100]<0>((a2 + 864), "NONE");
  std::string::basic_string[abi:ne200100]<0>((a2 + 888), "NONE");
  *(a2 + 912) = 0x1000000;
  *(a2 + 916) = 0;
  *(a2 + 918) = 1;
  *(a2 + 919) = 0;
  std::string::basic_string[abi:ne200100]<0>((a2 + 928), "");
  *(a2 + 952) = 0;
  *(a2 + 956) = 0;
  *(a2 + 960) = 0;
  *(a2 + 968) = 0u;
  *(a2 + 984) = 1;
  *(a2 + 992) = &unk_1F5EF3C38;
  *(a2 + 1008) = 0u;
  *(a2 + 1000) = a2 + 1008;
  *(a2 + 1024) = &unk_1F5EF3C38;
  *(a2 + 1040) = 0u;
  *(a2 + 1032) = a2 + 1040;
  *(a2 + 1056) = &unk_1F5EF3C38;
  *(a2 + 1072) = 0u;
  *(a2 + 1064) = a2 + 1072;
  *(a2 + 1088) = &unk_1F5EF3C38;
  *(a2 + 1104) = 0u;
  *(a2 + 1096) = a2 + 1104;
  *(a2 + 1120) = 1;
  *(a2 + 1122) = 1;
  *(a2 + 1124) = 15000;
  *(a2 + 1136) = 0u;
  *(a2 + 1128) = a2 + 1136;
  *(a2 + 1152) = 0;
  *(a2 + 1156) = 0;
  *(a2 + 1168) = 0u;
  *(a2 + 1160) = a2 + 1168;
  *(a2 + 1184) = &unk_1F5EF3C38;
  *(a2 + 1200) = 0u;
  *(a2 + 1192) = a2 + 1200;
  *(a2 + 1216) = 0;
  *(a2 + 1232) = 0u;
  *(a2 + 1224) = a2 + 1232;
  SpamCategoryMap::SpamCategoryMap((a2 + 1248));
  *(a2 + 1280) = 0;
  *(a2 + 1292) = 0;
  *(a2 + 1304) = 0;
  *(a2 + 1312) = &unk_1F5EF3C38;
  *(a2 + 1328) = 0u;
  *(a2 + 1320) = a2 + 1328;
  *(a2 + 1400) = 0;
  *(a2 + 1416) = 0;
  *(a2 + 1408) = 0;
  *(a2 + 1344) = 0u;
  *(a2 + 1360) = 0u;
  *(a2 + 1376) = 0u;
  *(a2 + 1392) = 0;
  SipUri::SipUri((a2 + 1424));
  *(a2 + 1832) = 331617220;
  *(a2 + 1836) = 0x10000;
  *(a2 + 1840) = 1;
  *(a2 + 1842) = 0;
  *(a2 + 1844) = 1800;
  *(a2 + 1848) = 0u;
  *(a2 + 1864) = 300;
  *(a2 + 1872) = 0;
  *(a2 + 1880) = 0u;
  *(a2 + 1896) = 0x100000005;
  *(a2 + 1904) = 0;
  *(a2 + 1912) = 0;
  *(a2 + 1920) = 0u;
  *(a2 + 1936) = 1;
  *(a2 + 1938) = 0;
  *(a2 + 1940) = 0;
  *(a2 + 1944) = &unk_1F5EE5038;
  *(a2 + 1960) = 0u;
  *(a2 + 1952) = a2 + 1960;
  *(a2 + 1976) = 30;
  *(a2 + 1980) = 256;
  *(a2 + 1982) = 0;
  *(a2 + 1984) = 0;
  *(a2 + 1988) = 256;
  *(a2 + 1990) = 0;
  *(a2 + 1992) = 0;
  *(a2 + 1995) = 0;
  *(a2 + 2000) = xmmword_1E5167170;
  *(a2 + 2016) = xmmword_1E5167180;
  *(a2 + 2032) = 0;
  *(a2 + 2040) = 5000;
  *(a2 + 2044) = -1;
  *(a2 + 2048) = 2;
  *(a2 + 2064) = 0u;
  *(a2 + 2080) = 0u;
  *(a2 + 2096) = 0u;
  *(a2 + 2112) = 0u;
  *(a2 + 2128) = 0u;
  *(a2 + 2144) = 0u;
  *(a2 + 2160) = 0u;
  *(a2 + 2176) = 0u;
  *(a2 + 2192) = 0;
  *(a2 + 2080) = 0u;
  *(a2 + 2112) = 0u;
  *(a2 + 2096) = 0u;
  *(a2 + 2183) = 0u;
  *(a2 + 2152) = 0u;
  *(a2 + 2168) = 0u;
  *(a2 + 2136) = 0u;
  *(a2 + 2095) = 13;
  qmemcpy((a2 + 2072), "Internal", 8);
  *(a2 + 2124) = 0xA000001F4;
  *(a2 + 2208) = 0u;
  *(a2 + 2200) = a2 + 2208;
  *(a2 + 2056) = &unk_1F5EEAC18;
  *(a2 + 2232) = 0u;
  *(a2 + 2248) = 0u;
  *(a2 + 2264) = 0u;
  *(a2 + 2280) = 0u;
  *(a2 + 2296) = 0u;
  *(a2 + 2312) = 0u;
  *(a2 + 2328) = 0u;
  *(a2 + 2344) = 0u;
  *(a2 + 2360) = 0;
  *(a2 + 2264) = 0u;
  *(a2 + 2280) = 0u;
  *(a2 + 2248) = 0u;
  *(a2 + 2351) = 0u;
  *(a2 + 2336) = 0u;
  *(a2 + 2320) = 0u;
  *(a2 + 2304) = 0u;
  *(a2 + 2263) = 13;
  qmemcpy((a2 + 2240), "Internal", 8);
  *(a2 + 2292) = 0xA000001F4;
  *(a2 + 2376) = 0u;
  *(a2 + 2368) = a2 + 2376;
  *(a2 + 2224) = &unk_1F5EEAC58;
  *(a2 + 2400) = 0u;
  *(a2 + 2392) = a2 + 2400;
  *(a2 + 2432) = 0;
  *(a2 + 2416) = 0u;
  *(a2 + 2440) = 3;
  *(a2 + 2444) = 1;
  *(a2 + 2464) = 0u;
  *(a2 + 2445) = 0;
  *(a2 + 2456) = a2 + 2464;
  *(a2 + 2480) = 0;
  *(a2 + 2484) = 0;
  *(a2 + 2488) = 0;
  *(a2 + 2544) = 0;
  *(a2 + 2528) = 0u;
  *(a2 + 2519) = 0;
  *(a2 + 2512) = 0;
  *(a2 + 2496) = 0u;
  *(a2 + 2552) = 1;
  *(a2 + 2584) = 0;
  *(a2 + 2576) = 0;
  *(a2 + 2560) = 0u;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4DD3D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::stackId(MessageSession *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 51), *(this + 52));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 408);
    a2->__r_.__value_.__r.__words[2] = *(this + 53);
  }
}

void MessageSession::clientConfig(MessageSession *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 67);
  *(a2 + 8) = *(this + 136);
  if (*(this + 575) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(this + 69), *(this + 70));
  }

  else
  {
    *(a2 + 16) = *(this + 552);
    *(a2 + 32) = *(this + 71);
  }

  *(a2 + 40) = *(this + 576);
}

void non-virtual thunk toMessageSession::stackId(MessageSession *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 295) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 34), *(this + 35));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 17);
    a2->__r_.__value_.__r.__words[2] = *(this + 36);
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4DD40C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ims::analytics::RCSSessionEndInfo::~RCSSessionEndInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void ims::analytics::RCSSessionSendReceiveInfo::~RCSSessionSendReceiveInfo(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4DD4230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t ims::SharedLoggable<MessageSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<MessageSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 95) < 0)
      {
        operator delete(v2[9]);
      }

      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 135) < 0)
      {
        operator delete(v2[14]);
      }

      if (*(v2 + 111) < 0)
      {
        operator delete(v2[11]);
      }

      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<LazuliMessageDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliFramer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF9E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DD4684(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliToPathHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DD47D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliFromPathHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFCB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DD4948(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliMessageIdHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DD4AD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliContentTypeHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliStatusHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECFD50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::erase(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = v3[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v10 = v3[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *a2;
  }

LABEL_27:
  *v7 = v3;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,void *>>>::operator()[abi:ne200100](1, a2);
}

uint64_t std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECFA38;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECFA38;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1E69235B0);
}

void std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5ECFA38;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 48))
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v6 = *(v3 + 440);
          if (v6)
          {
            v7 = std::__shared_weak_count::lock(v6);
            if (v7)
            {
              v8 = v7;
              v9 = *(v3 + 432);
              if (v9)
              {
                SipLazuliManager::releasePowerAssertion(v9, (a1 + 16));
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4DD55E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0,std::allocator<MessageSession::processIncomingSendRequestBody(std::string const&,std::string const&,std::string const&,std::string const&)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::erase(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = v3[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v10 = v3[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *a2;
  }

LABEL_27:
  *v7 = v3;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,void *>>>::operator()[abi:ne200100](1, a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    if (*(__p + 111) < 0)
    {
      operator delete(__p[11]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

void *std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECFAB8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECFAB8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECFAB8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 176))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECFB38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECFB38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECFB38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 176))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1,std::allocator<MessageSession::sendMessageBlob(std::string const&,std::string const&,std::string const&,unsigned int,std::string)::$_1>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECFBB8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECFBB8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DD63BC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5ECFBB8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v4 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v4;
  }
}

void sub_1E4DD6460(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::operator()(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && a1[1])
    {
      v8 = (*(*v6 + 64))(v6);
      (*(*v6 + 16))(v6, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Decoded message", 15);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      v10 = v4;
      v11 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 88))(v6, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "msg.session");
  LOBYTE(v10) = 0;
  v14 = 0;
  v9 = ims::error(v15, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "MessageSession lost for handling incoming message: ", 51);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a1 + 4);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4DD6708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<MessageSession::handleDataReceived(std::string const&)::$_0,std::allocator<MessageSession::handleDataReceived(std::string const&)::$_0>,void ()(std::shared_ptr<LazuliMessage>)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<LazuliMessage>)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_1E4DD6D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliGroupModification>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (!*v10)
  {
    return 0;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v9)
    {
      return 0;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_16;
  }

  v15 = a1[1];
  v16 = v11[1];
  v17 = vcnt_s8(v15);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    if (v16 >= *&v15)
    {
      v16 %= *&v15;
    }
  }

  else
  {
    v16 &= *&v15 - 1;
  }

  v18 = *(*a1 + 8 * v16);
  do
  {
    v19 = v18;
    v18 = *v18;
  }

  while (v18 != v11);
  if (v19 == a1 + 2)
  {
    goto LABEL_36;
  }

  v20 = v19[1];
  if (v17.u32[0] > 1uLL)
  {
    if (v20 >= *&v15)
    {
      v20 %= *&v15;
    }
  }

  else
  {
    v20 &= *&v15 - 1;
  }

  if (v20 != v16)
  {
LABEL_36:
    if (!*v11)
    {
      goto LABEL_37;
    }

    v21 = *(*v11 + 1);
    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v16)
    {
LABEL_37:
      *(*a1 + 8 * v16) = 0;
    }
  }

  v22 = *v11;
  if (*v11)
  {
    v23 = v22[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v23 >= *&v15)
      {
        v23 %= *&v15;
      }
    }

    else
    {
      v23 &= *&v15 - 1;
    }

    if (v23 != v16)
    {
      *(*a1 + 8 * v23) = v19;
      v22 = *v11;
    }
  }

  *v19 = v22;
  *v11 = 0;
  --a1[3];
  v24[0] = v11;
  v24[1] = a1;
  v13 = 1;
  v25 = 1;
  memset(v26, 0, sizeof(v26));
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v24);
  return v13;
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t __cxx_global_var_init_88()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

void IMSVirtualInterface::IMSVirtualInterface(IMSVirtualInterface *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "ipsec");
  v2[0] = 0;
  v5 = 0;
  ImsLogContainer::ImsLogContainer(this, &v6, v2);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  ctu::OsLogLogger::OsLogLogger((this + 144), "com.apple.ipTelephony", "ipsec");
  *this = &unk_1F5ECFEC0;
  *(this + 17) = &unk_1F5ECFF20;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
}

void IMSVirtualInterface::~IMSVirtualInterface(IMSVirtualInterface *this)
{
  *this = &unk_1F5ECFEC0;
  *(this + 17) = &unk_1F5ECFF20;
  IMSVirtualInterface::deinitialize(this);
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
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
}

{
  IMSVirtualInterface::~IMSVirtualInterface(this);

  JUMPOUT(0x1E69235B0);
}

void IMSVirtualInterface::deinitialize(IMSVirtualInterface *this)
{
  if (*(this + 19))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "deinitializing virtual interface", 32);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    VirtualInterfaceInvalidate(*(this + 19));
    CFRelease(*(this + 19));
    *(this + 19) = 0;
    v3 = *(this + 24);
    *(this + 23) = 0;
    *(this + 24) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(this + 183) < 0)
    {
      **(this + 20) = 0;
      *(this + 21) = 0;
    }

    else
    {
      *(this + 160) = 0;
      *(this + 183) = 0;
    }
  }
}

void non-virtual thunk toIMSVirtualInterface::~IMSVirtualInterface(IMSVirtualInterface *this)
{
  IMSVirtualInterface::~IMSVirtualInterface((this - 136));
}

{
  IMSVirtualInterface::~IMSVirtualInterface((this - 136));

  JUMPOUT(0x1E69235B0);
}

void IMSVirtualInterface::initialize(IMSVirtualInterface *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(this + 19))
  {
    v8 = *(this + 23);
    if (v8 && (*(*v8 + 104))(v8, a2, 0))
    {
      v9 = (*(*this + 64))(this);
      (*(*this + 16))(this, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "virtual interface ", 18);
      *(v9 + 17) = 0;
      LoggableString::LoggableString(&__p, (this + 160));
      (*(*v9 + 40))(v9, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " already configured", 19);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      *a4 = &unk_1F5EBDEF8;
      *(a4 + 8) = &_bambiDomain;
      *(a4 + 16) = 0;
      return;
    }

    IMSVirtualInterface::deinitialize(this);
  }

  v10 = (*(*this + 64))(this);
  (*(*this + 16))(this, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "creating virtual interface with mtu=", 36);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), a3);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v11 = VirtualInterfaceCreateNexus;
  v12 = *MEMORY[0x1E695E480];
  ims::getQueue(&__p);
  v13 = __p.__r_.__value_.__r.__words[0];
  v14 = (v11)(v12, 2, __p.__r_.__value_.__r.__words[0], 0, 1, 0, a3, 0, 0);
  *(this + 19) = v14;
  if (v13)
  {
    dispatch_release(v13);
    v14 = *(this + 19);
  }

  if (v14)
  {
    memset(v18, 0, sizeof(v18));
    v15 = *a2;
    IpAddress::asString(v18);
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  __p.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
  v16 = ImsResult::operator<<<char [32]>(&__p, "NEVirtualInterfaceCreate failed");
  v17 = ImsLogContainer::logResult(this, v16);
  ImsResult::ImsResult(a4, v17);
  ImsResult::~ImsResult(&__p);
}

void sub_1E4DD7FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  ims::CFType::~CFType(&a12);
  ims::CFType::~CFType(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [44]>(uint64_t a1, char *__s)
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

void *IMSVirtualInterface::logPrefix(IMSVirtualInterface *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "VirtualInterface ", 17);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 160);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  return result;
}

void IMSVirtualInterface::setMTU(IMSVirtualInterface *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v14 = a2;
  if (*(this + 19))
  {
    if (a2 <= 0)
    {
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = &unk_1F5EBDEF8;
      v8 = &_bambiDomain;
      v9 = 1073741825;
      v4 = ImsResult::operator<<<int>(&v7, &v14);
      v5 = ImsResult::operator<<<char [20]>(v4, " is not a valid MTU");
      ImsResult::ImsResult(a3, v5);
    }

    else
    {
      if (VirtualInterfaceSetMTU())
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

      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = &unk_1F5EBDEF8;
      v8 = &_bambiDomain;
      v9 = 0x40000000;
      v6 = ImsResult::operator<<<char [32]>(&v7, "NEVirtualInterfaceSetMTU failed");
      ImsResult::ImsResult(a3, v6);
    }

    ImsResult::~ImsResult(&v7);
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741827;
  }
}

uint64_t ImsResult::operator<<<int>(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923340](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

BOOL SDPTemplateBuilder::generateEVSSDPMedia(SDPTemplateBuilder *this, const ims::CFDictionary *a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  v6 = this;
  v53 = *MEMORY[0x1E69E9840];
  v44 = 8000;
  v43 = 1;
  extractRTPMapInfo(a2, &v44, &v43);
  if ((v6 & 0xFFE0) == 0x60)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    ims::CFDictionary::getKeysAndValues(a2, &v40, &v37, 0x8000100);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v29, v6);
    v7 = v40;
    if (v41 != v40)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::evsFormatParameters, (v7 + v8)) == &qword_1EE2BD038)
        {
          goto LABEL_19;
        }

        v10 = *(v37 + v9);
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = CFGetTypeID(v10);
        if (v11 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v27 = 0;
        v28 = 0;
        v12 = *(v37 + v9);
        v27 = &unk_1F5EF3658;
        v28 = v12;
        if (v12)
        {
          CFRetain(v12);
        }

        v27 = &unk_1F5EF36B0;
        v45 = v40 + v8;
        v13 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::evsFormatParameters, (v40 + v8)) + 56);
        ims::CFString::asString(v28, 0x8000100, &__p);
        v14 = v13(&v29, &__p);
        v15 = v14;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v15 & 1) == 0)
          {
LABEL_13:
            v16 = std::string::basic_string[abi:ne200100]<0>(&v46, "sdp.templatebuilder");
            v22[0] = 0;
            v25 = 0;
            v17 = ims::error(v16, v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Unable to parse ", 16);
            *(v17 + 17) = 0;
            (*(*v17 + 32))(v17, v40 + v8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " format parameter for EVS codec", 31);
            *(v17 + 17) = 0;
            (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v17 + 17) = 0;
            if (v25 == 1 && v24 < 0)
            {
              operator delete(v23);
            }

            if (v48.__r_.__value_.__s.__data_[7] < 0)
            {
              operator delete(v46);
            }
          }
        }

        else if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        ims::CFType::~CFType(&v27);
LABEL_19:
        ++v9;
        v7 = v40;
        v8 += 24;
      }

      while (v9 < 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
    }

    SDPMediaFormatInfo::setPayloadType(a3, v6);
    std::string::basic_string[abi:ne200100]<0>(v20, "EVS");
    SDPMediaRTPMap::SDPMediaRTPMap(&v46, v6, v20, v44, v43);
    *(a3 + 24) = v47;
    std::string::operator=((a3 + 32), &v48);
    *(a3 + 28) = v49;
    std::string::operator=((a3 + 64), &v50);
    *(a3 + 22) = v51;
    SDPMediaRTPMap::~SDPMediaRTPMap(&v46);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v46, &v29);
    v52 = 2;
    SDPMediaFormatInfo::setSDPMediaFormatParams(a3, &v46);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
    *&v29 = &unk_1F5EF5FB8;
    if (SBYTE7(v31) < 0)
    {
      operator delete(v30);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v46 = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  result = (v6 & 0xFFE0) == 96;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DD888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, char a55)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v55 - 232));
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a52)
  {
    operator delete(a52);
  }

  *(v55 - 232) = &a55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v55 - 232));
  _Unwind_Resume(a1);
}

BOOL SDPTemplateBuilder::generateAMRWBSDPMedia(SDPTemplateBuilder *this, ims::CFDictionary *a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  v6 = this;
  std::string::basic_string[abi:ne200100]<0>(__p, "AMR-WB");
  GenericAMRSDPMedia = SDPTemplateBuilder::generateGenericAMRSDPMedia(v6, __p, a2, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return GenericAMRSDPMedia;
}

void sub_1E4DD8A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPTemplateBuilder::generateAMRNBSDPMedia(SDPTemplateBuilder *this, ims::CFDictionary *a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  v6 = this;
  std::string::basic_string[abi:ne200100]<0>(__p, "AMR");
  GenericAMRSDPMedia = SDPTemplateBuilder::generateGenericAMRSDPMedia(v6, __p, a2, a3);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return GenericAMRSDPMedia;
}

void sub_1E4DD8AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPTemplateBuilder::generatePCMUSDPMedia(SDPTemplateBuilder *this, unsigned __int16 a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  SDPMediaFormatInfo::setPayloadType(a3, 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "PCMA");
  SDPMediaRTPMap::SDPMediaRTPMap(&v8, 8, __p, 8000, 1);
  *(a3 + 24) = v9;
  std::string::operator=((a3 + 32), &v10);
  *(a3 + 28) = v11;
  std::string::operator=((a3 + 64), &v12);
  *(a3 + 22) = v13;
  SDPMediaRTPMap::~SDPMediaRTPMap(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1E4DD8B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPTemplateBuilder::generatePCMASDPMedia(SDPTemplateBuilder *this, unsigned __int16 a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  SDPMediaFormatInfo::setPayloadType(a3, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "PCMU");
  SDPMediaRTPMap::SDPMediaRTPMap(&v8, 0, __p, 8000, 1);
  *(a3 + 24) = v9;
  std::string::operator=((a3 + 32), &v10);
  *(a3 + 28) = v11;
  std::string::operator=((a3 + 64), &v12);
  *(a3 + 22) = v13;
  SDPMediaRTPMap::~SDPMediaRTPMap(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1E4DD8C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPTemplateBuilder::generateDTMFSDPMedia(SDPTemplateBuilder *this, const ims::CFDictionary *a2, const ims::CFDictionary *a3, SDPMediaFormatInfo *a4)
{
  v5 = this;
  v15 = 8000;
  extractRTPMapInfo(a2, &v15, 0);
  if ((v5 & 0xFFE0) == 0x60)
  {
    SDPMediaFormatInfo::setPayloadType(a3, v5);
    std::string::basic_string[abi:ne200100]<0>(__p, "telephone-event");
    SDPMediaRTPMap::SDPMediaRTPMap(&v9, v5, __p, v15, 1);
    *(a3 + 24) = v10;
    std::string::operator=((a3 + 32), &v11);
    *(a3 + 28) = v12;
    std::string::operator=((a3 + 64), &v13);
    *(a3 + 22) = v14;
    SDPMediaRTPMap::~SDPMediaRTPMap(&v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (v5 & 0xFFE0) == 96;
}

void sub_1E4DD8D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPTemplateBuilder::createSDPTemplate(SDPTemplateBuilder *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  ImsPrefs::AllowIPv6UnicastAddress(this);
  *a2 = 0;
  a2[1] = 0;
  _ZNSt3__115allocate_sharedB8ne200100I8SDPModelNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E4DD9D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x300]);
  SDPMediaFormatInfo::~SDPMediaFormatInfo(&STACK[0x388]);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(&a65);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
  }

  std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::destroy(STACK[0x218]);
  STACK[0x388] = &STACK[0x228];
  std::vector<SDPMediaFormatInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
  std::__tree<std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::__map_value_compare<EVSConfigName,std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::less<EVSConfigName>,true>,std::allocator<std::__value_type<EVSConfigName,SDPMediaFormatInfo>>>::destroy(STACK[0x248]);
  STACK[0x388] = &STACK[0x258];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  ims::CFType::~CFType(&STACK[0x290]);
  v73 = *(a9 + 8);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  _Unwind_Resume(a1);
}

__n128 SDPModel::setOrigin(SDPModel *this, const SDPOrigin *a2)
{
  *(this + 80) = *(a2 + 8);
  *(this + 96) = *(a2 + 24);
  *(this + 100) = *(a2 + 28);
  std::string::operator=((this + 112), (a2 + 40));
  *(this + 68) = *(a2 + 32);
  std::string::operator=(this + 6, a2 + 3);
  result = *(a2 + 6);
  *(this + 168) = result;
  return result;
}

uint64_t std::vector<SDPMediaFormatInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
    if ((v7 + 1) > 0x124924924924924)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x92492492492492)
    {
      v10 = 0x124924924924924;
    }

    else
    {
      v10 = v9;
    }

    v26 = a1;
    if (v10)
    {
      if (v10 <= 0x124924924924924)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = 0;
    v23 = 224 * v7;
    v24 = 224 * v7;
    v25 = 0;
    SDPMediaFormatInfo::SDPMediaFormatInfo(224 * v7, a2);
    v11 = *a1;
    v12 = a1[1];
    v13 = 224 * v7 - &v12[-*a1];
    v6 = 224 * v7 + 224;
    v24 += 224;
    if (v12 != v11)
    {
      v14 = 0;
      v15 = v23 - 32 * ((v12 - v11) >> 5) - 224;
      v16 = v11;
      v17 = v13;
      do
      {
        SDPMediaFormatInfo::SDPMediaFormatInfo(v17, v16);
        v16 += 224;
        v17 += 224;
        v14 -= 224;
        v15 += 224;
      }

      while (v16 != v12);
      v18 = v11;
      v19 = v11;
      do
      {
        v20 = *v19;
        v19 += 224;
        (*v20)(v11);
        v18 += 224;
        v11 = v19;
      }

      while (v19 != v12);
      v11 = *a1;
      v6 = v24;
    }

    *a1 = v13;
    a1[1] = v6;
    v21 = a1[2];
    a1[2] = v25;
    v24 = v11;
    v25 = v21;
    v22 = v11;
    v23 = v11;
    result = std::__split_buffer<SDPMediaFormatInfo>::~__split_buffer(&v22);
  }

  else
  {
    result = SDPMediaFormatInfo::SDPMediaFormatInfo(a1[1], a2);
    v6 = v4 + 224;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_1E4DDA394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<SDPMediaFormatInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t extractCodecsWithEncodingName(uint64_t a1, uint64_t a2, void **a3)
{
  result = std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3);
  if (*(result + 64) != *(result + 56))
  {
    result = std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3);
    if (*(result + 56) != *(result + 64))
    {
      std::__list_imp<SDPMediaFormatInfo>::__create_node[abi:ne200100]<SDPMediaFormatInfo const&>();
    }
  }

  return result;
}

void SDPTemplateBuilder::createLazuliSDPTemplate(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  _ZNSt3__115allocate_sharedB8ne200100I8SDPModelNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E4DDAB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  v49 = *(v47 + 8);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void sub_1E4DDADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPTemplateBuilder::createSDPTextMedia(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E9840];
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = SDPMedia::SDPMedia(a1, 4, 0, 0, 3);
  SDPMedia::setDirection(v1, 1);
}

void sub_1E4DDB47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  SDPMediaFormatInfo::~SDPMediaFormatInfo(&a51);
  SDPMedia::~SDPMedia(v51);
  _Unwind_Resume(a1);
}

void SDPTemplateBuilder::addBandwidthSpecifiers(uint64_t a1, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, ImsPrefs *a6)
{
  v7 = (a1 + 112);
  v8 = a1 + 40;
  v9 = *(a1 + 48);
  if (v9 != a1 + 40)
  {
    v11 = 0;
    do
    {
      v12 = SDPMediaFormatInfo::bandwidthAS((v9 + 16), a3);
      if (v12 > v11)
      {
        v11 = v12;
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }

  std::__list_imp<SDPRepeatTime>::clear(v7);
  ImsPrefs::RTCPIntervalSeconds(a6);
  ImsPrefs::SuppressBSUntilPreconditionsMet(a6);
  operator new();
}

void SDPTemplateBuilder::createInitialSettings(uint64_t a1@<X0>, const std::string *a2@<X1>, int a3@<W2>, ImsPrefs *a4@<X3>, uint64_t a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 448);
  v6 = *(*a1 + 456);
  if (v7 == v6)
  {
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v34, "sdp.templatebuilder");
    v25[0] = 0;
    v28 = 0;
    v14 = ims::error(v34, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "SDPTemplateBuilder::createInitialSettings Audio is null", 55);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34[0]);
    }

LABEL_14:
    *a5 = 0;
    *(a5 + 432) = 0;
    goto LABEL_15;
  }

  v12 = v7 + 40;
  while (*(v12 - 28) != 2)
  {
    v13 = v12 + 160;
    v12 += 200;
    if (v13 == v6)
    {
      goto LABEL_5;
    }
  }

  v15 = *(v12 + 8);
  if (v12 == v15)
  {
    goto LABEL_14;
  }

  *(a5 + 432) = 0;
  *(a5 + 400) = 0u;
  *(a5 + 416) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0u;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *v34 = 0u;
  SDPMediaAudioSettings::SDPMediaAudioSettings(v34);
  SDPMediaAudioSettings::SDPMediaAudioSettings(a5, v34);
  *(a5 + 432) = 1;
  SDPMediaAudioSettings::~SDPMediaAudioSettings(v34);
  if ((*(*(v15 + 32) + 24))(v15 + 32))
  {
    if (*(v15 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v15 + 80), *(v15 + 88));
    }

    else
    {
      __str = *(v15 + 80);
    }
  }

  else
  {
    if (*(v15 + 24) == 8)
    {
      v17 = "PCMA";
    }

    else
    {
      v17 = "PCMU";
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, v17);
  }

  std::string::operator=((a5 + 280), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::operator=((a5 + 72), a2);
  *(a5 + 28) = *(v15 + 24);
  v18 = 8000;
  if ((*(*(v15 + 32) + 24))(v15 + 32))
  {
    if (*(v15 + 104))
    {
      v18 = *(v15 + 104);
    }

    else
    {
      v18 = 8000;
    }
  }

  *(a5 + 308) = v18;
  if (v18 == 16000)
  {
    v19 = "PayloadTypeDTMF16K";
  }

  else
  {
    v19 = "PayloadTypeDTMF8K";
  }

  std::string::basic_string[abi:ne200100]<0>(v34, v19);
  *(a5 + 304) = ImsPrefs::intValue(a4, v34);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, v19);
  *(a5 + 306) = ImsPrefs::intValue(a4, v34);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  *(a5 + 314) = ImsPrefs::MaxPacketizationTime(a4);
  *(a5 + 96) = *(*a1 + 176);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v34, v15 + 112);
  if (DWORD2(v41) == 2)
  {
    SDPMediaEVSSettings::SDPMediaEVSSettings(v32, v34, v34, a3, a4);
    *(a5 + 424) = v33;
    v23 = v32[3];
    *(a5 + 392) = v32[2];
    *(a5 + 408) = v23;
    v24 = v32[1];
    *(a5 + 360) = v32[0];
    *(a5 + 376) = v24;
  }

  else if (DWORD2(v41) == 1)
  {
    v20 = v18 == 16000 ? "PreferredAMRWBMode" : "PreferredAMRNBMode";
    std::string::basic_string[abi:ne200100]<0>(v29, v20);
    v21 = ImsPrefs::intValue(a4, v29);
    SDPMediaAMRSettings::SDPMediaAMRSettings(v32, v34, v34, v18 == 16000, a3, v21);
    v22 = *(&v32[1] + 8);
    *(a5 + 328) = *(v32 + 8);
    *(a5 + 344) = v22;
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34);
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E4DDBF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a40);
  if (*(v45 + 432) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t SDPTemplateBuilder::createInitialTTYSettings@<X0>(SDPTemplateBuilder *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v5 = a2 + 8;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(a2 + 28) = 16711935;
  *(a2 + 48) = 0u;
  *(a2 + 36) = 0x100000001;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 89) = 0u;
  *a2 = &unk_1F5EC4ED0;
  *(a2 + 280) = 0x2800000028;
  *(a2 + 288) = 16711935;
  *(a2 + 292) = 1;
  *(a2 + 48) = ImsPrefs::RTTBandwidthSpecifierASValue(this);
  *(a2 + 56) = ImsPrefs::BandwidthSpecifierRRValue(this);
  *(a2 + 32) = 1;
  *(a2 + 64) = ImsPrefs::BandwidthSpecifierRSValue(this);
  *(a2 + 33) = 1;
  *(a2 + 28) = ImsPrefs::PayloadTypeTTY(this);
  result = ImsPrefs::PayloadTypeTTYRedundancy(this);
  *(a2 + 288) = result;
  return result;
}

void SDPTemplateBuilder::createInitialSecondAudioSettings(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  *(a5 + 432) = 0;
  *(a5 + 400) = 0u;
  *(a5 + 416) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0u;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  v7 = *(*a1 + 448);
  v6 = *(*a1 + 456);
  if (v7 != v6)
  {
    v9 = v7 + 40;
    while (*(v9 - 28) != 2)
    {
      v10 = v9 + 160;
      v9 += 200;
      if (v10 == v6)
      {
        goto LABEL_47;
      }
    }

    for (i = *(v9 + 8); v9 != i; i = *(i + 8))
    {
      *__s = 0u;
      v30 = 0u;
      memset(v28, 0, sizeof(v28));
      SDPMediaRTPMap::SDPMediaRTPMap(v28, (i + 32));
      if (SBYTE7(v30) < 0)
      {
        if (!__s[1])
        {
          goto LABEL_26;
        }

        std::string::__init_copy_ctor_external(v34, __s[0], __s[1]);
      }

      else
      {
        if (!BYTE7(v30))
        {
          goto LABEL_26;
        }

        *v34 = *__s;
        *&v34[16] = v30;
      }

      if ((v34[23] & 0x80000000) != 0)
      {
        if (*&v34[8] != 15)
        {
          goto LABEL_21;
        }

        v12 = *v34;
      }

      else
      {
        if (v34[23] != 15)
        {
          goto LABEL_21;
        }

        v12 = v34;
      }

      v13 = *v12;
      v14 = *(v12 + 7);
      if (v13 == 0x6E6F6870656C6574 && v14 == 0x746E6576652D656ELL)
      {
        v17 = 0;
        if ((v34[23] & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

LABEL_21:
      v16 = WORD4(v30);
      if (!WORD4(v30))
      {
        v16 = 8000;
      }

      v17 = v16 == a2;
      if ((v34[23] & 0x80000000) != 0)
      {
LABEL_24:
        operator delete(*v34);
      }

LABEL_25:
      if (v17)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
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
        v35 = 0u;
        memset(v34, 0, sizeof(v34));
        SDPMediaAudioSettings::SDPMediaAudioSettings(v34);
        if (*(a5 + 432) == 1)
        {
          SDPMediaAudioSettings::operator=(a5, v34);
          v18 = a4;
        }

        else
        {
          SDPMediaAudioSettings::SDPMediaAudioSettings(a5, v34);
          v18 = a4;
          *(a5 + 432) = 1;
        }

        SDPMediaAudioSettings::~SDPMediaAudioSettings(v34);
        *(a5 + 28) = *(i + 24);
        *(a5 + 308) = a2;
        if (a2 == 16000)
        {
          v19 = "PayloadTypeDTMF16K";
        }

        else
        {
          v19 = "PayloadTypeDTMF8K";
        }

        std::string::basic_string[abi:ne200100]<0>(v34, v19);
        *(a5 + 304) = ImsPrefs::intValue(v18, v34);
        if ((v34[23] & 0x80000000) != 0)
        {
          operator delete(*v34);
        }

        std::string::basic_string[abi:ne200100]<0>(v34, v19);
        *(a5 + 306) = ImsPrefs::intValue(v18, v34);
        if ((v34[23] & 0x80000000) != 0)
        {
          operator delete(*v34);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        memset(v34, 0, sizeof(v34));
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v34, i + 112);
        if (DWORD2(v40) == 1)
        {
          if (a2 == 16000)
          {
            v20 = "PreferredAMRWBMode";
          }

          else
          {
            v20 = "PreferredAMRNBMode";
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v20);
          v21 = ImsPrefs::intValue(v18, __p);
          SDPMediaAMRSettings::SDPMediaAMRSettings(v31, v34, v34, a2 == 16000, a3, v21);
          v22 = v33;
          *(a5 + 328) = v32;
          *(a5 + 344) = v22;
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34);
        SDPMediaRTPMap::~SDPMediaRTPMap(v28);
        break;
      }

LABEL_26:
      SDPMediaRTPMap::~SDPMediaRTPMap(v28);
    }
  }

LABEL_47:
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E4DDC4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a34);
  SDPMediaRTPMap::~SDPMediaRTPMap(&a18);
  if (*(v39 + 432) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v39);
  }

  _Unwind_Resume(a1);
}

void extractRTPMapInfo(const ims::CFDictionary *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (!a2)
  {
LABEL_7:
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SampleRate");
  v6 = ims::CFDictionary::hasKey(a1, __p);
  v7 = v6;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SampleRate");
  v12 = 0;
  ims::CFDictionary::getUint32Value(a1, __p, &v12);
  *a2 = v12;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (!a3)
  {
    return;
  }

LABEL_8:
  std::string::basic_string[abi:ne200100]<0>(__p, "Channel");
  v8 = ims::CFDictionary::hasKey(a1, __p);
  v9 = v8;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Channel");
  v12 = 0;
  ims::CFDictionary::getUint32Value(a1, __p, &v12);
  *a3 = v12;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4DDC6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPTemplateBuilder::generateGenericAMRSDPMedia(__int16 a1, uint64_t a2, ims::CFDictionary *a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v47 = 8000;
  v46 = 1;
  extractRTPMapInfo(a3, &v47, &v46);
  v8 = a1 & 0xFFE0;
  if (v8 != 96)
  {
    goto LABEL_42;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  ims::CFDictionary::getKeysAndValues(a3, &v43, &v40, 0x8000100);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  *v37 = 0u;
  v9 = *(a2 + 23);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = a2;
    if (v9 != 6)
    {
      goto LABEL_13;
    }

LABEL_7:
    v11 = *v10;
    v12 = *(v10 + 2);
    v14 = v11 == 760368449 && v12 == 16983;
    goto LABEL_14;
  }

  if (*(a2 + 8) == 6)
  {
    v10 = *a2;
    goto LABEL_7;
  }

LABEL_13:
  v14 = 0;
LABEL_14:
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v36, a1, v14);
  v15 = v43;
  if (v44 != v43)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::amrFormatParameters, (v15 + v16)) == &qword_1EE2BD050)
      {
        goto LABEL_31;
      }

      v18 = *(v40 + v17);
      if (!v18)
      {
        goto LABEL_31;
      }

      v19 = CFGetTypeID(v18);
      if (v19 != CFStringGetTypeID())
      {
        goto LABEL_31;
      }

      v34 = 0;
      v35 = 0;
      v20 = *(v40 + v17);
      v34 = &unk_1F5EF3658;
      v35 = v20;
      if (v20)
      {
        CFRetain(v20);
      }

      v34 = &unk_1F5EF36B0;
      v48 = v43 + v16;
      v21 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::amrFormatParameters, (v43 + v16)) + 56);
      ims::CFString::asString(v35, 0x8000100, &__p);
      v22 = v21(&v36, &__p);
      v23 = v22;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v23 & 1) == 0)
        {
LABEL_25:
          v24 = std::string::basic_string[abi:ne200100]<0>(&v49, "sdp.templatebuilder");
          v29[0] = 0;
          v32 = 0;
          v25 = ims::error(v24, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Unable to parse ", 16);
          *(v25 + 17) = 0;
          (*(*v25 + 32))(v25, v43 + v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " format parameter for ", 22);
          *(v25 + 17) = 0;
          (*(*v25 + 32))(v25, a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " codec", 6);
          *(v25 + 17) = 0;
          (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v25 + 17) = 0;
          if (v32 == 1 && v31 < 0)
          {
            operator delete(v30);
          }

          if (v51.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v49);
          }
        }
      }

      else if ((v22 & 1) == 0)
      {
        goto LABEL_25;
      }

      ims::CFType::~CFType(&v34);
LABEL_31:
      ++v17;
      v15 = v43;
      v16 += 24;
    }

    while (v17 < 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3));
  }

  SDPMediaFormatInfo::setPayloadType(a4, a1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  SDPMediaRTPMap::SDPMediaRTPMap(&v49, a1, &v28, v47, v46);
  *(a4 + 24) = v50;
  std::string::operator=((a4 + 32), &v51);
  *(a4 + 56) = v52;
  std::string::operator=((a4 + 64), &v53);
  *(a4 + 88) = v54;
  SDPMediaRTPMap::~SDPMediaRTPMap(&v49);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v49, &v36);
  v55 = 1;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a4, &v49);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v49);
  *&v36 = &unk_1F5EF5FB8;
  if (SBYTE7(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  v49 = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  v8 = 96;
LABEL_42:
  result = v8 == 96;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DDCBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a47)
  {
    operator delete(a47);
  }

  *(v50 - 224) = &a50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 224));
  _Unwind_Resume(a1);
}

uint64_t std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia>(uint64_t a1, const SDPMedia *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SDPMedia>>(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  SDPMedia::SDPMedia((200 * v2), a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = (200 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SDPMedia>,SDPMedia*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SDPMedia>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4DDCE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SDPMedia>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<SDPMediaFormatInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 224);
    *(a1 + 16) = i - 224;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<SDPMediaFormatInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 224;
      v7 = v4 - 224;
      v8 = v4 - 224;
      do
      {
        v9 = *v8;
        v8 -= 224;
        (*v9)(v7);
        v6 -= 224;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4DDCFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t SDPMediaDirection::SDPMediaDirection(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v6;
  }

  *a1 = &unk_1F5ED5930;
  *(a1 + 40) = a2;
  return a1;
}

void sub_1E4DDD228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaRTPMap::SDPMediaRTPMap(uint64_t a1, __int16 a2, __int128 *a3, __int16 a4, __int16 a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "rtpmap");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v13;
  }

  *a1 = &unk_1F5EF7520;
  *(a1 + 40) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v10;
  }

  *(a1 + 72) = a4;
  *(a1 + 74) = a5;
  return a1;
}

void sub_1E4DDD35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v17;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaAudioSettings::operator=(uint64_t a1, uint64_t a2)
{
  SDPMediaSettings::operator=(a1, a2);
  v4 = (a1 + 280);
  if (*(a1 + 303) < 0)
  {
    operator delete(*v4);
  }

  v5 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *v4 = v5;
  *(a2 + 303) = 0;
  *(a2 + 280) = 0;
  v6 = *(a2 + 304);
  *(a1 + 309) = *(a2 + 309);
  *(a1 + 304) = v6;
  v7 = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = v7;
  v9 = *(a2 + 392);
  v8 = *(a2 + 408);
  v10 = *(a2 + 376);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 392) = v9;
  *(a1 + 408) = v8;
  *(a1 + 376) = v10;
  *(a1 + 360) = *(a2 + 360);
  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*SDPTemplateBuilder::_mediaGenerators)
  {
    SDPTemplateBuilder::_mediaGenerators = *SDPTemplateBuilder::_mediaGenerators;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BBD88, a3);
  ++qword_1EE2BBD90;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>>>::__find_equal<std::string>(uint64_t **a1, void **a2)
{
  v3 = &qword_1EE2BBD88;
  v4 = qword_1EE2BBD88;
  if (qword_1EE2BBD88)
  {
    v6 = &qword_1EE2BBD88;
    do
    {
      while (1)
      {
        v3 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v3;
        v6 = v3;
        if (!*v3)
        {
          goto LABEL_10;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
      {
        break;
      }

      v6 = v3 + 1;
      v4 = v3[1];
    }

    while (v4);
  }

  else
  {
    v6 = &qword_1EE2BBD88;
  }

LABEL_10:
  *a1 = v3;
  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SDPMediaFormatInfo>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SDPMediaFormatInfo>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<SDPMediaFormatInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::__map_value_compare<EVSConfigName,std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::less<EVSConfigName>,true>,std::allocator<std::__value_type<EVSConfigName,SDPMediaFormatInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::__map_value_compare<EVSConfigName,std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::less<EVSConfigName>,true>,std::allocator<std::__value_type<EVSConfigName,SDPMediaFormatInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::__map_value_compare<EVSConfigName,std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::less<EVSConfigName>,true>,std::allocator<std::__value_type<EVSConfigName,SDPMediaFormatInfo>>>::destroy(a1[1]);
    a1[5] = &unk_1F5EEA550;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 34);
    SDPMediaRTPMap::~SDPMediaRTPMap(a1 + 7);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SDPMediaFormatInfo>>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::__map_value_compare<EVSConfigName,std::__value_type<EVSConfigName,SDPMediaFormatInfo>,std::less<EVSConfigName>,true>,std::allocator<std::__value_type<EVSConfigName,SDPMediaFormatInfo>>>::__emplace_unique_key_args<EVSConfigName,std::piecewise_construct_t const&,std::tuple<EVSConfigName&&>,std::tuple<>>(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SDPMediaFormatInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t _GLOBAL__sub_I_SDPTemplateBuilder_cpp()
{
  v23 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v11, "EVS");
  v12 = SDPTemplateBuilder::generateEVSSDPMedia;
  std::string::basic_string[abi:ne200100]<0>(v13, "AMR-WB");
  v14 = SDPTemplateBuilder::generateAMRWBSDPMedia;
  std::string::basic_string[abi:ne200100]<0>(v15, "AMR");
  v16 = SDPTemplateBuilder::generateAMRNBSDPMedia;
  std::string::basic_string[abi:ne200100]<0>(v17, "PCMU");
  v18 = SDPTemplateBuilder::generatePCMUSDPMedia;
  std::string::basic_string[abi:ne200100]<0>(v19, "PCMA");
  v20 = SDPTemplateBuilder::generatePCMASDPMedia;
  std::string::basic_string[abi:ne200100]<0>(v21, "telephone-event");
  v0 = 0;
  v1 = 0;
  v22 = SDPTemplateBuilder::generateDTMFSDPMedia;
  qword_1EE2BBD90 = 0;
  qword_1EE2BBD88 = 0;
  v2 = &qword_1EE2BBD88;
  SDPTemplateBuilder::_mediaGenerators = &qword_1EE2BBD88;
  while (1)
  {
    v10 = 0;
    if (v2 == &qword_1EE2BBD88)
    {
      v3 = &qword_1EE2BBD88;
      if (!v0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v10 = v3;
      v4 = v3 + 1;
      goto LABEL_12;
    }

    if (v0)
    {
      do
      {
        v3 = v0;
        v0 = *(v0 + 8);
      }

      while (v0);
    }

    else
    {
      v5 = &qword_1EE2BBD88;
      do
      {
        v3 = v5[2];
        v6 = *v3 == v5;
        v5 = v3;
      }

      while (v6);
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, &v11[v1]) & 0x80) != 0)
    {
      if (!qword_1EE2BBD88)
      {
LABEL_15:
        v10 = &qword_1EE2BBD88;
LABEL_16:
        operator new();
      }

      goto LABEL_7;
    }

    v4 = std::__tree<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>>>::__find_equal<std::string>(&v10, &v11[v1]);
LABEL_12:
    if (!*v4)
    {
      goto LABEL_16;
    }

    v1 += 32;
    if (v1 == 192)
    {
      break;
    }

    v2 = SDPTemplateBuilder::_mediaGenerators;
    v0 = qword_1EE2BBD88;
  }

  for (i = 0; i != -192; i -= 32)
  {
    if (v21[i + 23] < 0)
    {
      operator delete(*&v21[i]);
    }
  }

  result = __cxa_atexit(std::map<std::string,BOOL (*)(unsigned short,ims::CFDictionary const&,SDPMediaFormatInfo &)>::~map[abi:ne200100], &SDPTemplateBuilder::_mediaGenerators, &dword_1E4C3F000);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4DDDE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  while (1)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void BambiConferenceParticipant::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<BambiConferenceParticipant,std::allocator<BambiConferenceParticipant>,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiConferenceCall> &,SipUri const&,0>();
}

void sub_1E4DDDF04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiConferenceParticipant::~BambiConferenceParticipant(BambiConferenceParticipant *this)
{
  *this = &unk_1F5ECFFB8;
  *(this + 1) = &unk_1F5ED0040;
  *(this + 2) = &unk_1F5ED0178;
  v2 = this + 24;
  *(this + 3) = &unk_1F5ED01A8;
  *(this + 20) = &unk_1F5ED0208;
  v3 = ImsLogContainer::debugStream((this + 24));
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~BambiConferenceParticipant", 27);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 26);
      if (v6)
      {
        v7 = *(this + 28);
        v8 = *(this + 29);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *(v6 + 432);
        *(v6 + 424) = v7;
        *(v6 + 432) = v8;
        if (v9)
        {
          std::__shared_weak_count::__release_weak(v9);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  SipTimerContainer::cancelAllTimers((this + 1128));
  v10 = *(this + 162);
  v11 = *(this + 163);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = (*(*v2 + 64))(v2);
    (*(*v2 + 16))(v2, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "silent hangup headless session", 30);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    SipSession::silentHangUp(v10, 8, v17);
    ImsResult::~ImsResult(v17);
    v13 = *(this + 163);
    *(this + 81) = 0u;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v14 = *(this + 163);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  SipTimerContainer::~SipTimerContainer((this + 1128));
  v15 = *(this + 139);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  SipUri::~SipUri((this + 696));
  SipUri::~SipUri((this + 288));
  v16 = *(this + 35);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  BambiCallParticipant::~BambiCallParticipant(this);
}

{
  BambiConferenceParticipant::~BambiConferenceParticipant(this);

  JUMPOUT(0x1E69235B0);
}