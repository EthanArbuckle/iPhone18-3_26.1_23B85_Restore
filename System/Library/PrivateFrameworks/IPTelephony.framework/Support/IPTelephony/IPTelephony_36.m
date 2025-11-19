void sub_1E4EDE38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
    if (v42)
    {
      goto LABEL_9;
    }
  }

  else if (v42)
  {
LABEL_9:
    dispatch_release(v42);
    if (!v41)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_14:
    _Unwind_Resume(a1);
  }

  if (!v41)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void ___ZN16IMSClientManager21updateMessageDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims20MessageEventDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v28 = 0;
  ImsLock::set(&v28, &IMSClientManager::_mutex, &v29);
  ImsResult::~ImsResult(&v29);
  IMSClientManager::instance(&v16);
  IMSClientManager::getClientForStack(v16.__r_.__value_.__l.__data_, (a1 + 32), &v29);
  v2 = *&v29.__r_.__value_.__l.__data_;
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v28);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = **v3;
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
        v24[0] = 0;
        v27 = 0;
        v5 = ims::debug(&v29, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "holding ", 8);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, a1 + 72);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v6 = *(v2 + 88);
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v29 = *(a1 + 72);
        }

        v30 = v8;
        v31 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = (v6 + 80);
        v9 = *(v6 + 80);
        if (!v9)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v11 = v9;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, (v9 + 32)) & 0x80) == 0)
            {
              break;
            }

            v9 = *v11;
            v10 = v11;
            if (!*v11)
            {
              goto LABEL_25;
            }
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11 + 4, &v29.__r_.__value_.__l.__data_) & 0x80) == 0)
          {
            break;
          }

          v10 = v11 + 1;
          v9 = v11[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (!*v10)
        {
LABEL_25:
          operator new();
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v12 = *(v2 + 80);
      v13 = *(a1 + 96);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      v14 = *(a1 + 64);
      v21 = *(a1 + 56);
      v22 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSWrapperDelegate::addMessageDelegate(v12, (a1 + 72), &object, &v21);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      IMSWrapperDelegate::removeMessageDelegate(*(v2 + 80), (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
    v17[0] = 0;
    v20 = 0;
    v15 = ims::debug(&v29, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updated message delegate ", 25);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for stack ", 11);
    *(v15 + 17) = 0;
    LoggableString::LoggableString(&v16, (a1 + 32));
    (*(*v15 + 40))(v15, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " to ", 4);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), *(a1 + 56));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v2 + 1));
  }
}

void sub_1E4EDE948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, dispatch_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c54_ZTSNSt3__110shared_ptrIN3ims20MessageEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDEAFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c54_ZTSNSt3__110shared_ptrIN3ims20MessageEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void IMSClientManager::updateXcapDelegate(uint64_t a1, uint64_t a2, void *a3, NSObject **a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v24, "ims.client");
  v20[0] = 0;
  v23 = 0;
  v9 = ims::debug(v8, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will update xcap delegate ", 26);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " for stack ", 11);
  *(v9 + 17) = 0;
  LoggableString::LoggableString(&__p, a1);
  (*(*v9 + 40))(v9, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1174405120;
  v13[2] = ___ZN16IMSClientManager18updateXcapDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims17XcapEventDelegateEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_36_0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v15 = v11;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v24;
  }

  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  IMSClientManager::callOnImsQueue(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EDEEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
    if (v42)
    {
      goto LABEL_9;
    }
  }

  else if (v42)
  {
LABEL_9:
    dispatch_release(v42);
    if (!v41)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_14:
    _Unwind_Resume(a1);
  }

  if (!v41)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void ___ZN16IMSClientManager18updateXcapDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims17XcapEventDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v28 = 0;
  ImsLock::set(&v28, &IMSClientManager::_mutex, &v29);
  ImsResult::~ImsResult(&v29);
  IMSClientManager::instance(&v16);
  IMSClientManager::getClientForStack(v16.__r_.__value_.__l.__data_, (a1 + 32), &v29);
  v2 = *&v29.__r_.__value_.__l.__data_;
  if (v16.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v28);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = **v3;
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
        v24[0] = 0;
        v27 = 0;
        v5 = ims::debug(&v29, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "holding ", 8);
        *(v5 + 17) = 0;
        (*(*v5 + 32))(v5, a1 + 72);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v6 = *(v2 + 88);
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v29 = *(a1 + 72);
        }

        v30 = v8;
        v31 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = (v6 + 104);
        v9 = *(v6 + 104);
        if (!v9)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v11 = v9;
            if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, (v9 + 32)) & 0x80) == 0)
            {
              break;
            }

            v9 = *v11;
            v10 = v11;
            if (!*v11)
            {
              goto LABEL_25;
            }
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11 + 4, &v29.__r_.__value_.__l.__data_) & 0x80) == 0)
          {
            break;
          }

          v10 = v11 + 1;
          v9 = v11[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (!*v10)
        {
LABEL_25:
          operator new();
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      v12 = *(v2 + 80);
      v13 = *(a1 + 96);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      v14 = *(a1 + 64);
      v21 = *(a1 + 56);
      v22 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IMSWrapperDelegate::addXcapDelegate(v12, (a1 + 72), &object, &v21);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      IMSWrapperDelegate::removeXcapDelegate(*(v2 + 80), (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "ims.client");
    v17[0] = 0;
    v20 = 0;
    v15 = ims::debug(&v29, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "updating xcap delegate ", 23);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " for stack ", 11);
    *(v15 + 17) = 0;
    LoggableString::LoggableString(&v16, (a1 + 32));
    (*(*v15 + 40))(v15, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " to ", 4);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923310](*(v15 + 8), *(a1 + 56));
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v2 + 1));
  }
}

void sub_1E4EDF4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, dispatch_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c51_ZTSNSt3__110shared_ptrIN3ims17XcapEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDF664(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c51_ZTSNSt3__110shared_ptrIN3ims17XcapEventDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void IMSClientManager::updateLazuliDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  memset(&v16, 0, sizeof(v16));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  }

  else
  {
    v16 = *a2;
  }

  memset(&v15, 0, sizeof(v15));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a1, *(a1 + 8));
  }

  else
  {
    v15 = *a1;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN16IMSClientManager20updateLazuliDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims6lazuli12ChatDelegateEEEN8dispatch5queueE_block_invoke;
  v9[3] = &__block_descriptor_tmp_38_1;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v15;
  }

  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IMSClientManager::callOnImsQueue(v9);
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EDF8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16IMSClientManager20updateLazuliDelegateERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_NS0_10shared_ptrIN3ims6lazuli12ChatDelegateEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v17 = 0;
  ImsLock::set(&v17, &IMSClientManager::_mutex, v18);
  ImsResult::~ImsResult(v18);
  IMSClientManager::instance(&__p);
  IMSClientManager::getClientForStack(__p.__r_.__value_.__l.__data_, (a1 + 32), v18);
  v3 = v18[0];
  v2 = v18[1];
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  ImsLock::~ImsLock(&v17);
  if (v3)
  {
    IMSClientRecord::createLazuliWrapper(v3);
    v4 = *(a1 + 56);
    v5 = *(v3 + 12);
    if (v4)
    {
      v6 = *(a1 + 96);
      object = v6;
      if (v6)
      {
        dispatch_retain(v6);
        v4 = *(a1 + 56);
      }

      v7 = *(a1 + 64);
      v14 = v4;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      LazuliDelegate::addLazuliDelegate(v5, a1 + 72, &object, &v14);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (object)
      {
        dispatch_release(object);
      }
    }

    else
    {
      LazuliDelegate::removeLazuliDelegate(v5, (a1 + 72));
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "ims.client");
    v10[0] = 0;
    v13 = 0;
    v8 = ims::debug(v18, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "updating lazuli delegate ", 25);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a1 + 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " for stack ", 11);
    *(v8 + 17) = 0;
    LoggableString::LoggableString(&__p, (a1 + 32));
    (*(*v8 + 40))(v8, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " to ", 4);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923310](*(v8 + 8), *(a1 + 56));
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EDFB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, std::__shared_weak_count *a27, dispatch_object_t object, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c53_ZTSNSt3__110shared_ptrIN3ims6lazuli12ChatDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
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
  *(a1 + 96) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_1E4EDFCE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c53_ZTSNSt3__110shared_ptrIN3ims6lazuli12ChatDelegateEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

uint64_t IMSClientManager::delegateForStack(void **a1)
{
  v11 = 0;
  ImsLock::set(&v11, &IMSClientManager::_mutex, &v12);
  ImsResult::~ImsResult(&v12);
  IMSClientManager::instance(&v12);
  v9 = 0;
  v10 = 0;
  IMSClientManager::getClientForStack(v12, a1, &v9);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v9)
  {
    v2 = *(v9 + 80);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "stack.delegate");
    v5[0] = 0;
    v8 = 0;
    v3 = ims::error(&v12, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "No client record for stack ", 27);
    *(v3 + 17) = 0;
    (*(*v3 + 32))(v3, a1);
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v8 == 1 && v7 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v12);
    }

    IMSClientManager::instance(&v12);
    v2 = *(v12 + 6);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  ImsLock::~ImsLock(&v11);
  return v2;
}

void sub_1E4EDFF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, pthread_mutex_t *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  ImsLock::~ImsLock(&a22);
  _Unwind_Resume(a1);
}

void IMSClientManager::lazuliDelegateForStack(void **a1@<X0>, void *a2@<X8>)
{
  v13 = 0;
  ImsLock::set(&v13, &IMSClientManager::_mutex, &v14);
  ImsResult::~ImsResult(&v14);
  IMSClientManager::instance(&v14);
  v11 = 0;
  v12 = 0;
  IMSClientManager::getClientForStack(v14, a1, &v11);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v4 = v11;
  if (v11)
  {
    IMSClientRecord::createLazuliWrapper(v11);
    v5 = *(v4 + 13);
    *a2 = *(v4 + 12);
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "lazuli.delegate");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::error(&v14, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "No client record for stack ", 27);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a1);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v16 < 0)
    {
      operator delete(v14);
    }

    *a2 = 0;
    a2[1] = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ImsLock::~ImsLock(&v13);
}

void sub_1E4EE0108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, pthread_mutex_t *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  ImsLock::~ImsLock(&a22);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16IMSClientManager14callOnImsQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void IMSClientManager::callOnDestinationQueue(NSObject **a1, dispatch_block_t block)
{
  v3 = *a1;
  if (v3)
  {

    dispatch_async(v3, block);
  }

  else
  {
    ims::getQueue(&queue);
    v4 = queue;
    dispatch_async(queue, block);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

BOOL IMSClientManager::isEmergencyStack(uint64_t a1)
{
  result = 0;
  if (*(a1 + 23) < 0 && *(a1 + 8) == 36)
  {
    return memcmp(*a1, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C", 0x24uLL) == 0;
  }

  return result;
}

void IMSClientManager::setBBServerConnection(void *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1174405120;
  v2[2] = ___ZN16IMSClientManager21setBBServerConnectionENSt3__110shared_ptrI18BBServerConnectionEE_block_invoke;
  v2[3] = &__block_descriptor_tmp_43_0;
  v1 = a1[1];
  v2[4] = *a1;
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSClientManager::callOnImsQueue(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN16IMSClientManager21setBBServerConnectionENSt3__110shared_ptrI18BBServerConnectionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2[0] = *(a1 + 32);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IPTelephonyManager::setBBServerConnection(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4EE03B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__110shared_ptrI18BBServerConnectionEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c46_ZTSNSt3__110shared_ptrI18BBServerConnectionEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void IMSClientManager::addCallEndInfo(void **a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1174405120;
  v2[2] = ___ZN16IMSClientManager14addCallEndInfoEN3xpc4dictE_block_invoke;
  v2[3] = &__block_descriptor_tmp_44_0;
  v1 = *a1;
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  IMSClientManager::callOnImsQueue(v2);
  xpc_release(object);
}

void ___ZN16IMSClientManager14addCallEndInfoEN3xpc4dictE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v6);
  v2 = v6;
  v3 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v5 = v3;
  }

  IPTelephonyManager::addCallEndInfo(v2, &v5);
  xpc_release(v3);
  v4 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<IMSClientManager>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 12);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(a2 + 10);
    if (v5)
    {
      dispatch_release(v5);
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void IMSWrapperDelegate::~IMSWrapperDelegate(IMSWrapperDelegate *this)
{
  std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(this + 160, *(this + 21));
  std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(this + 88, *(this + 12));
  std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>>>::destroy(this + 64, *(this + 9));
  *(this + 2) = &unk_1F5ED98E8;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate(this);

  JUMPOUT(0x1E69235B0);
}

void IMSNullClientDelegate::~IMSNullClientDelegate(IMSNullClientDelegate *this)
{
  *(this + 2) = &unk_1F5ED98E8;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *(this + 2) = &unk_1F5ED98E8;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t IMSNullClientDelegate::handleIncomingEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void non-virtual thunk toIMSNullClientDelegate::~IMSNullClientDelegate(IMSNullClientDelegate *this)
{
  *(this + 1) = &unk_1F5ED98E8;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  IMSNullClientDelegate::~IMSNullClientDelegate((this - 8));
}

{
  IMSNullClientDelegate::~IMSNullClientDelegate((this - 16));
}

{
  *(this - 4) = &unk_1F5ED98E8;
  if (*(this - 1) < 0)
  {
    operator delete(*(this - 3));
  }
}

{
  IMSNullClientDelegate::~IMSNullClientDelegate((this - 48));
}

{
  *(this - 5) = &unk_1F5ED98E8;
  if (*(this - 9) < 0)
  {
    operator delete(*(this - 4));
  }
}

{
  IMSNullClientDelegate::~IMSNullClientDelegate((this - 56));
}

void non-virtual thunk toIMSNullClientDelegate::~IMSNullClientDelegate(void **this)
{
  *this = &unk_1F5ED98E8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t non-virtual thunk toIMSNullClientDelegate::handleIncomingEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void std::__shared_ptr_emplace<LazuliDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED9350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *ctu::SharedLoggable<IMSClientManager,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
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
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, a4);
  return a1;
}

uint64_t ims::SharedLoggable<IMSClientManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<IMSClientManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IMSClientRecord>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__shared_ptr_emplace<IMSClientRecord>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED93C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

std::string *_ZNSt3__120__shared_ptr_emplaceIN3ims15EmergencyClientENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(std::string *a1)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F5ED9418;
  ims::EmergencyClient::EmergencyClient(a1 + 1);
  return a1;
}

void std::__shared_ptr_emplace<ims::EmergencyClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED9418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSClientManager::createImsClient(std::string const&,dispatch::queue,xpc::dict)::ClientWrap,std::allocator<IMSClientManager::createImsClient(std::string const&,dispatch::queue,xpc::dict)::ClientWrap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED9468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void IMSClientManager::createImsClient(std::string const&,dispatch::queue,xpc::dict)::ClientWrap::~ClientWrap(void **a1)
{
  ims::ClientHandle::~ClientHandle(a1);

  JUMPOUT(0x1E69235B0);
}

std::string *ims::ClientHandle::ClientHandle(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F5EDB3B8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v3;
  }

  a1[2].__r_.__value_.__s.__data_[0] = 0;
  return a1;
}

void sub_1E4EE0FB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ED9668;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ED9668;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E69235B0);
}

void std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5ED9668;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  IPTelephonyManager::getBambiClient(&v10);
  v2 = v10;
  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "cli.stk.inv");
    v4[0] = 0;
    v7 = 0;
    v3 = ims::debug(v8, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Invalidating stack ", 19);
    *(v3 + 17) = 0;
    (*(*v3 + 32))(v3, a1 + 8);
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v7 == 1 && v6 < 0)
    {
      operator delete(__p);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    BambiClient::invalidateStack(v2, (a1 + 8));
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4EE12F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<IMSClientManager::removeClient(std::string const&)::$_0,std::allocator<IMSClientManager::removeClient(std::string const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<IMSClientManager::create_default_global(void)::Wrapper,std::allocator<IMSClientManager::create_default_global(void)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED96E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void IMSClientManager::create_default_global(void)::Wrapper::~Wrapper(IMSClientManager *a1)
{
  IMSClientManager::~IMSClientManager(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t __cxx_global_var_init_45()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSClientManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSClientManager,IMSClientManager,ctu::PthreadMutexGuardPolicy<IMSClientManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_IMSClientManager_cpp()
{
  pthread_mutex_init(&IMSClientManager::_mutex, 0);

  return __cxa_atexit(ImsMutex::~ImsMutex, &IMSClientManager::_mutex, &dword_1E4C3F000);
}

uint64_t SipRAckHeader::SipRAckHeader(uint64_t a1, int a2, int a3, const std::string *a4)
{
  v8 = SipHeader::SipHeader(a1, "RAck");
  *v8 = &unk_1F5ED9A58;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 60) = a2;
  *(v8 + 64) = a3;
  std::string::operator=((v8 + 72), a4);
  *(a1 + 56) = 0;
  return a1;
}

void sub_1E4EE1628(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v2);
  }

  SipHeader::~SipHeader(v1);
  _Unwind_Resume(a1);
}

uint64_t SipRAckHeader::fromResponse(uint64_t a1, uint64_t *a2)
{
  v4 = SipMessage::header<SipRSeqHeader>(*a2);
  v5 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = *(v5 + 15);
    *(a1 + 60) = v4[15];
    *(a1 + 64) = v8;
    std::string::operator=((a1 + 72), (v5 + 64));
  }

  return v7;
}

void *SipMessage::header<SipRSeqHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "RSeq");
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

void *SipMessage::header<SipCSeqHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "CSeq");
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

uint64_t SipRAckHeader::encodeValue(SipRAckHeader *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 15));
  *(a2 + 17) = 0;
  v4 = *(a2 + 1);
  v7 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v7, 1);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 16));
  *(a2 + 17) = 0;
  v5 = *(a2 + 1);
  v8 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 72);
  return 1;
}

uint64_t SipRAckHeader::setValueFromString(std::string *a1, const std::string *a2)
{
  memset(v7, 0, sizeof(v7));
  *__p = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  std::istringstream::basic_istringstream[abi:ne200100](v4, a2, 8);
  MEMORY[0x1E6923290](v4, &a1[2].__r_.__value_.__r.__words[1] + 4);
  MEMORY[0x1E6923290](v4, &a1[2].__r_.__value_.__r.__words[2]);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4, &a1[3]);
  ims::chomp(a1 + 3, "\r\n\t ", 3);
  *&v4[0] = *MEMORY[0x1E69E54E0];
  *(v4 + *(*&v4[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v4[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v4[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v4[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v7 + 8);
  return 1;
}

void sub_1E4EE1A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::istringstream::~istringstream(&a9, MEMORY[0x1E69E54E0]);
  MEMORY[0x1E6923510](v9 + 120);
  _Unwind_Resume(a1);
}

void SipRAckHeader::~SipRAckHeader(void **this)
{
  *this = &unk_1F5ED9A58;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED9A58;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4EE1BAC(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v3);
  }

  SipHeader::~SipHeader(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void ___ZN12SipTimerInfo10initializeEP17SipTimerContainerb_block_invoke(uint64_t a1)
{
  IMSClientManager::instance(&v3);
  (*(**(v3 + 80) + 32))(*(v3 + 80), a1 + 32);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE1D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTimerContainer::SipTimerContainer(SipTimerContainer *this)
{
  *this = &unk_1F5ED9B38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  *(this + 136) = 0u;
  v2 = (this + 136);
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 152) = 0u;
  ImsUuid::generate(&v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  if (*(this + 159) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v5;
  *(&v5.__r_.__value_.__s + 23) = 0;
  v5.__r_.__value_.__s.__data_[0] = 0;
  v3 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE1ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15[159] < 0)
  {
    operator delete(*v18);
  }

  if (v15[111] < 0)
  {
    operator delete(*v19);
  }

  if (v15[71] < 0)
  {
    operator delete(*v17);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void SipTimerContainer::~SipTimerContainer(SipTimerContainer *this)
{
  *this = &unk_1F5ED9B38;
  *(this + 16) = 0;
  SipTimerContainer::cancelAllTimers(this);
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 8);
}

{
  SipTimerContainer::~SipTimerContainer(this);

  JUMPOUT(0x1E69235B0);
}

void SipTimerContainer::cancelAllTimers(SipTimerContainer *this)
{
  for (i = *(this + 3); i; i = *i)
  {
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v11, this + 9);
    v3 = ims::debug(this + 48, v11);
    (*(*this + 24))(v9, this);
    (*(*v3 + 40))(v3, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ": canceling timer ", 18);
    *(v3 + 17) = 0;
    LoggableString::LoggableString(&__p, (i + 2));
    (*(*v3 + 40))(v3, &__p);
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12);
    }

    dispatch_source_cancel(*(i[5] + 40));
    IMSClientManager::instance(&__p);
    v4 = *(__p.__r_.__value_.__r.__words[0] + 80);
    SipTimerContainer::fullTimerId(this, i[5], v9);
    (*(*v4 + 24))(v4, v9);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v5 = i[5];
    if (v5)
    {
      SipTimerInfo::~SipTimerInfo(v5);
      MEMORY[0x1E69235B0]();
    }
  }

  if (*(this + 4))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(this + 8, *(this + 3));
    *(this + 3) = 0;
    v6 = *(this + 2);
    if (v6)
    {
      for (j = 0; j != v6; ++j)
      {
        *(*(this + 1) + 8 * j) = 0;
      }
    }

    *(this + 4) = 0;
  }
}

void sub_1E4EE2228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a31 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **SipTimerContainer::timerPastDue(uint64_t a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 8), a2);
  if (result)
  {
    v3 = result[5];
    if (v3)
    {
      return (v3[4] <= CFAbsoluteTimeGetCurrent());
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SipTimerContainer::timerFired(SipTimerContainer *this, std::string *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(*this + 40))(this))
  {
    if (a2)
    {
      memset(&v16, 0, sizeof(v16));
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = *a2;
      }

      v21 = 0u;
      v22 = 0u;
      std::__function::__value_func<void ()(std::string &)>::__value_func[abi:ne200100](&v21, &a2[2].__r_.__value_.__r.__words[2]);
      std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v12, this + 9);
      v7 = ims::debug(this + 48, v12);
      (*(*this + 24))(v10, this);
      (*(*v7 + 40))(v7, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ": timer ", 8);
      *(v7 + 17) = 0;
      LoggableString::LoggableString(&__p, &v16);
      (*(*v7 + 40))(v7, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " fired", 6);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      if (v15 == 1 && v14 < 0)
      {
        operator delete(v13);
      }

      SipTimerContainer::cancelTimer(this, a2);
      if (*(&v22 + 1))
      {
        (*(**(&v22 + 1) + 48))(*(&v22 + 1), &v16);
      }

      std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&v21);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v6 = v16.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v17, this + 9);
      v5 = ims::error(this + 48, v17);
      (*(*this + 24))(&v21, this);
      (*(*v5 + 40))(v5, &v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": timer fired is NULL", 21);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (SBYTE7(v22) < 0)
      {
        operator delete(v21);
      }

      if (v20 != 1 || (v19 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v6 = v18;
    }

    operator delete(v6);
LABEL_26:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = *MEMORY[0x1E69E9840];

  SipTimerContainer::cancelAllTimers(this);
}

void sub_1E4EE26E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a47 == 1 && a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTimerContainer::timersEnabled(SipTimerContainer *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    return (**v1)(v1);
  }

  else
  {
    return 1;
  }
}

ImsOutStream *SipTimerContainer::log(SipTimerContainer *this, ImsOutStream *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E468];
    do
    {
      v5 = v3[5];
      LoggableString::LoggableString(&__p, (v3 + 2));
      (*(*a2 + 40))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      ims::formatTimeAndIntervalFromNow((v4 + *(v5 + 32)), a2, v6);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 = *v3;
    }

    while (v3);
  }

  return a2;
}

void sub_1E4EE28F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTimerContainer::startSipTimer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 160);
  if (v5)
  {
    result = SipTimers::timerValue(v5, a2, a4);
    if (result)
    {
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        __p = *(a2 + 8);
      }

      std::__function::__value_func<void ()(std::string &)>::__value_func[abi:ne200100](v16, a3);
      SipTimerContainer::startTimer(a1, &__p);
      std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v16);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      result = 1;
    }
  }

  else
  {
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v12, (a1 + 72));
    v9 = ims::error(a1 + 48, v12);
    (*(*a1 + 24))(&__p, a1);
    (*(*v9 + 40))(v9, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": startSipTimer: no SIP timer values specified", 46);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    result = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
      result = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4EE2AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SipXmlBody::SipXmlBody(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5ED9B90;
  v3 = (a1 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t SipXmlBody::contentLength(SipXmlBody *this)
{
  v2 = *(this + 31);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(this + 31))
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*this + 112))(&v4, this);
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    *(this + 8) = v4;
    *(this + 3) = v5;
    LOBYTE(v2) = *(this + 31);
    if ((v2 & 0x80) == 0)
    {
      return v2;
    }

    return *(this + 2);
  }

  if (!*(this + 2))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 0x80) == 0)
  {
    return v2;
  }

  return *(this + 2);
}

uint64_t SipXmlBody::encode(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      return (*(*a2 + 32))(a2, a1 + 8);
    }
  }

  else if (*(a1 + 31))
  {
    return (*(*a2 + 32))(a2, a1 + 8);
  }

  (*(*a1 + 112))(&v5, a1);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return (*(*a2 + 32))(a2, a1 + 8);
}

uint64_t SipXmlBody::decode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  memset(&v12, 0, sizeof(v12));
  if (a3)
  {
    v6 = a3;
    v8 = a2 + 4;
    while (1)
    {
      v9 = std::istream::get();
      std::string::push_back(&v12, v9);
      if (*(v8 + *(*a2 - 24)))
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = (*(*a1 + 88))(a1, &v12, a4);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1E4EE2E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipXmlBody::decode(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  if (!(*(*a1 + 104))(a1))
  {
    return 1;
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    return 1;
  }

  v5 = (*(*a1 + 104))(a1);

  return bambi::XmlParser::parseXml((a1 + 8), v5, v6, v7);
}

uint64_t MsrpTransportInterface::MsrpTransportInterface(uint64_t result, uint64_t *a2, void *a3)
{
  *result = &unk_1F5ED9DB0;
  *(result + 8) = &unk_1F5ECB340;
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 24)) = a2[1];
  *(result + 8) = &unk_1F5ED9CD0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  v4 = a3[1];
  *(result + 48) = *a3;
  *(result + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MsrpTransportInterface::~MsrpTransportInterface(MsrpTransportInterface *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  *(this + 1) = &unk_1F5ED9CD0;
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::__shared_ptr_emplace<anonymous namespace::RCSServerTerminationEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED9DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::RCSServerTerminationEventImpl::~RCSServerTerminationEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5ED9E28;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5ED9E28;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::RCSServerTerminationEventImpl::getDict@<X0>(_anonymous_namespace_::RCSServerTerminationEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void ImsUdpSocket::socketReadCallback(ImsUdpSocket *this)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v5, this + 1);
  v2 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(this + 10);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(this + 10);
  }

  operator new();
}

void ImsUdpSocket::_handleDataAvailable(ImsUdpSocket *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0;
  v34 = 0u;
  v30 = 0;
  v31 = 128;
  ioctl(**(this + 8), 0x4004667FuLL, &v30);
  v2 = v30;
  if (v30 >= 0x100000)
  {
    v2 = 0x100000;
  }

  if (v2 <= 256)
  {
    v3 = 256;
  }

  else
  {
    v3 = v2;
  }

  v30 = v3;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v27, v3);
  v4 = recvfrom(**(this + 8), v27, v30, 128, &v33, &v31);
  if (v4 >= 1)
  {
    IpAddress::createAddress(&v33, v25);
    v12 = *v25;
    v32 = *v25;
    if (*(this + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "net");
      v21[0] = 0;
      v24 = 0;
      v9 = ims::warn(v25, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "ImsUdpSocket: kDebugDropIncoming set.  Dropping incoming packet.", 64);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    else
    {
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = *(this + 14);
          if (v7)
          {
            std::string::basic_string[abi:ne200100]<0>(v25, "net");
            v17[0] = 0;
            v20 = 0;
            v8 = ims::spam(v25, v17);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "ImsUdpSocket: handle incoming packet from ", 42);
            *(v8 + 17) = 0;
            if (v12.n128_u64[0])
            {
              (*(*v12.n128_u64[0] + 40))(v12.n128_u64[0], v8, v12);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", len = ", 8);
            *(v8 + 17) = 0;
            MEMORY[0x1E6923360](*(v8 + 8), v4);
            *(v8 + 17) = 0;
            (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v8 + 17) = 0;
            if (v20 == 1 && v19 < 0)
            {
              operator delete(__p);
            }

            if (v26 < 0)
            {
              operator delete(v25[0]);
            }

            (*(*v7 + 24))(v7, v27, v4, &v32);
LABEL_33:
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
            goto LABEL_34;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(v25, "net");
      v13[0] = 0;
      v16 = 0;
      v10 = ims::debug(v25, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ImsUdpSocket: No delegate to handle incoming packet from ", 57);
      *(v10 + 17) = 0;
      if (v12.n128_u64[0])
      {
        (*(*v12.n128_u64[0] + 40))(v12.n128_u64[0], v10, v12);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ". Discarding packet", 19);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v6)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4EE3D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  if (__p)
  {
    operator delete(__p);
  }

  v55 = *(v53 - 200);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [9]>(uint64_t a1, char *__s)
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

uint64_t ImsUdpSocket::initialize(uint64_t a1, void *a2, ImsSocket *this, dispatch_object_t *a4, uint64_t a5)
{
  v10 = a2[8];
  if (v10 && *v10 != -1)
  {
    (*(*a2 + 32))(a2);
  }

  ImsSocket::setNoSigpipeOptionForSocket(this, v25);
  ImsResult::~ImsResult(v25);
  result = ImsSocket::_createSocketWithDispatch(a2, this, a4, a5, 1);
  if (result)
  {
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *a1 = &unk_1F5EBDEF8;
    *(a1 + 8) = &_bambiDomain;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18[0] = &unk_1F5EBDEF8;
    v18[1] = &_bambiDomain;
    v19 = 0x40000000;
    v12 = ImsResult::operator<<<char [52]>(v18, "ImsUdpSocket::initialize: unable to create CFSocket");
    ImsResult::ImsResult(a1, v12);
    ImsResult::~ImsResult(v18);
    std::string::basic_string[abi:ne200100]<0>(v18, "net");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::error(v18, v14);
    (*(*a1 + 16))(a1, v13);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v13[17] = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18[0]);
    }

    return close(this);
  }

  return result;
}

void ImsUdpSocket::send(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t *a5)
{
  v41 = a4;
  v7 = *(a2 + 64);
  if (!v7 || *v7 == -1)
  {
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = &unk_1F5EBDEF8;
    v34 = &_bambiDomain;
    v35 = 1073741827;
    v13 = ImsResult::operator<<<char [41]>(&v33, "socket not initialized, can not send to ");
    ImsResult::operator<<<IpAddress>(v13, *a5);
    ImsResult::ImsResult(a1, v13);
    ImsResult::~ImsResult(&v33);
    return;
  }

  if ((*(**a5 + 88))())
  {
    if ((*(**a5 + 56))())
    {
      v11 = (*(**a5 + 72))();
      if ((*(a2 + 96) & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v33, "net");
        v26[0] = 0;
        v29 = 0;
        v18 = ims::warn(&v33, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "ImsUdpSocket: kDebugDropOutgoing set.  Dropping outgoing packet.", 64);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v29 == 1 && v28 < 0)
        {
          operator delete(__p);
        }

        if (v36 < 0)
        {
          operator delete(v33);
        }

        v12 = a4;
      }

      else
      {
        v12 = sendto(**(a2 + 64), a3, a4, 0, v11, v11->sa_len);
      }

      v30 = v12;
      if (v12 == -1)
      {
        v19 = *__error();
        *(a1 + 24) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *a1 = &unk_1F5EBDEF8;
        *(a1 + 8) = &_posixDomain;
        *(a1 + 16) = v19;
        return;
      }

      if (v12 == a4)
      {
        *(a1 + 24) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0u;
        *a1 = &unk_1F5EBDEF8;
        *(a1 + 8) = &_bambiDomain;
        *(a1 + 16) = 0;
        return;
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "net");
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v33 = &unk_1F5EBDEF8;
      v34 = &_bambiDomain;
      v35 = 0x40000000;
      v20 = ImsResult::operator<<<char [25]>(&v33, "ImsUdpSocket: only sent ");
      v21 = ImsResult::operator<<<long>(v20, &v30);
      v22 = ImsResult::operator<<<char [5]>(v21, " of ");
      v23 = ImsResult::operator<<<unsigned long>(v22, &v41);
      v24 = ImsResult::operator<<<char [11]>(v23, " bytes to ");
      ImsResult::operator<<<IpAddress>(v24, *a5);
      v25 = ims::result::log(v31, v24);
      ImsResult::ImsResult(a1, v25);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v31, "net");
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v33 = &unk_1F5EBDEF8;
      v34 = &_bambiDomain;
      v35 = 1073741825;
      v16 = ImsResult::operator<<<char [37]>(&v33, "no port specified for remote address");
      v17 = ims::result::log(v31, v16);
      ImsResult::ImsResult(a1, v17);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "net");
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = &unk_1F5EBDEF8;
    v34 = &_bambiDomain;
    v35 = 1073741825;
    v14 = ImsResult::operator<<<char [17]>(&v33, "invalid address ");
    ImsResult::operator<<<IpAddress>(v14, *a5);
    v15 = ims::result::log(v31, v14);
    ImsResult::ImsResult(a1, v15);
  }

  ImsResult::~ImsResult(&v33);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1E4EE4610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::operator<<<IpAddress>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  (*(*a2 + 40))(a2, v3);
  return a1;
}

void ImsUdpSocket::initializeSocket(uint64_t a1@<X0>, uint64_t *a2@<X1>, dispatch_object_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = *(a5 + 8);
  v30[0] = &unk_1F5EF3658;
  v30[1] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v30[0] = &unk_1F5EBE6A8;
  v15 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (*(*v15 + 72))(v15);
  sa_family = v16->sa_family;
  *(a1 + 88) = sa_family;
  v18 = socket(sa_family, 2, 0);
  v19 = v18;
  v44[0] = v18;
  if ((v18 & 0x80000000) != 0)
  {
    *(a7 + 80) = 0;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    v23 = *__error();
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    *a7 = &unk_1F5EBDEF8;
    *(a7 + 8) = &_posixDomain;
    *(a7 + 16) = v23;
    std::string::basic_string[abi:ne200100]<0>(v31, "net");
    v42[0] = 0;
    v42[48] = 0;
    v24 = ims::error(v31, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "ImsUdpSocket: failed to create socket : ", 40);
    *(v24 + 17) = 0;
    (*(*a7 + 16))(a7, v24);
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (v42[48] == 1 && (v42[39] & 0x80000000) != 0)
    {
      operator delete(*&v42[16]);
    }

    if (v33 < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    v43 = 0;
    setsockopt(v18, 0xFFFF, 4352, &v43, 4u);
    v20 = *(a6 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a6 + 8);
    }

    if (v20)
    {
      memset(v42, 0, sizeof(v42));
      v21 = (*(*v15 + 160))(v15);
      ImsSocket::bindSocketToInterface(v19, v21, a6, v42);
      if ((*(**&v42[8] + 24))(*&v42[8], *&v42[16]))
      {
        std::string::basic_string[abi:ne200100]<0>(v31, "net");
        v38[0] = 0;
        v41 = 0;
        v22 = ims::error(v31, v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "ImsUdpSocket: Unable to bind socket (", 37);
        *(v22 + 17) = 0;
        MEMORY[0x1E6923340](*(v22 + 8), v19);
        *(v22 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ") to interface: ", 16);
        *(v22 + 17) = 0;
        (*(*v42 + 16))(v42, v22);
        (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v22 + 17) = 0;
        if (v41 == 1 && v40 < 0)
        {
          operator delete(__p);
        }

        if (v33 < 0)
        {
          operator delete(v31[0]);
        }
      }

      ImsResult::~ImsResult(v42);
    }

    if (bind(v19, v16, v16->sa_len) < 0)
    {
      *&v42[16] = 0;
      v25 = *__error();
      memset(&v42[24], 0, 64);
      *v42 = &unk_1F5EBDEF8;
      *&v42[8] = &_posixDomain;
      *&v42[16] = v25;
      close(v19);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v31[0] = &unk_1F5EBDEF8;
      v31[1] = &_bambiDomain;
      v32 = 0x40000000;
      v26 = ImsResult::operator<<<char [9]>(v31, "socket (");
      v27 = ImsResult::operator<<<int>(v26, v44);
      v28 = ImsResult::operator<<<char [28]>(v27, ") init failed for address: ");
      v29 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v28, a2);
      ims::result::resultWithCause(v29, v42, a7);
    }

    *v42 = &unk_1F5EBE6A8;
    *&v42[8] = 0;
    ImsUdpSocket::initialize(a7, a1, v19, a3, a4);
    ims::CFType::~CFType(v42);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ims::CFType::~CFType(v30);
}

void sub_1E4EE4C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  ImsResult::~ImsResult(&a36);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  ims::CFType::~CFType(&a9);
  _Unwind_Resume(a1);
}

void ImsUdpSocket::initializeSocket(ImsSocket *this@<X1>, void *a2@<X0>, dispatch_object_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 8);
  v12[0] = &unk_1F5EF3658;
  v12[1] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12[0] = &unk_1F5EBE6A8;
  ImsUdpSocket::initialize(a6, a2, this, a3, a4);
  ims::CFType::~CFType(v12);
}

uint64_t ImsUdpSocket::closeSocket(ImsUdpSocket *this)
{
  v2 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(*this + 32);

  return v3(this);
}

uint64_t ImsUdpSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toImsUdpSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this - 48);
  *a2 = *(this - 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ImsUdpSocket::setSocketLocalAddress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void non-virtual thunk toImsUdpSocket::setSocketLocalAddress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 - 48);
  *(a1 - 56) = v3;
  *(a1 - 48) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void ImsUdpSocket::attachDispatchSourceToSocket(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ImsSocket::attachDispatchSource(a1, &object, v13);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6[0] = &unk_1F5EBDEF8;
  v6[1] = &_bambiDomain;
  v7 = 0;
  v5 = v14 == &_bambiDomain && v15 == 0;
  ImsResult::~ImsResult(v6);
  ImsResult::~ImsResult(v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (v5)
  {
    (*(*a1 + 152))(a1, 1);
  }
}

void sub_1E4EE5084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsUdpSocket::detachDispatchSourceFromSocket(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (v4 && (v5 = *(v4 + 136)) != 0)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, a1 + 1);
    v7 = v16;
    v6 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v8 = *(a1[8] + 136);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN12ImsUdpSocket30detachDispatchSourceFromSocketEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_46;
    handler[4] = a1;
    handler[5] = v5;
    handler[6] = v7;
    v14 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *a2;
    if (*a2)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    dispatch_source_set_cancel_handler(v8, handler);
    v10 = a1[8];
    if (v10)
    {
      v11 = *(v10 + 136);
      if (v11)
      {
        dispatch_source_cancel(v11);
        *(a1[8] + 136) = 0;
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    (*(*a1 + 152))(a1, 0);
    if (*a2)
    {
      v12 = *(*a2 + 16);

      v12();
    }
  }
}

uint64_t ___ZN12ImsUdpSocket30detachDispatchSourceFromSocketEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v12, "net");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "ImsUdpSocket: detached from source", 34);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  dispatch_release(*(a1 + 40));
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 48))
      {
        (*(*v2 + 152))(v2, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *__copy_helper_block_e8_48c33_ZTSNSt3__18weak_ptrI9ImsSocketEE64c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_48c33_ZTSNSt3__18weak_ptrI9ImsSocketEE64c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ImsUdpSocket::setSocketDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 120);
  *(a1 + 112) = v3;
  *(a1 + 120) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void non-virtual thunk toImsUdpSocket::setSocketDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void ImsUdpSocket::~ImsUdpSocket(ImsUdpSocket *this)
{
  *this = &unk_1F5ED9E90;
  *(this + 13) = &unk_1F5ED9F68;
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ImsSocket::~ImsSocket(this);
}

{
  *this = &unk_1F5ED9E90;
  *(this + 13) = &unk_1F5ED9F68;
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ImsSocket::~ImsSocket(this);
}

double ImsUdpSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void ImsUdpSocket::resetSocketDelegate(ImsUdpSocket *this)
{
  v2 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void non-virtual thunk toImsUdpSocket::~ImsUdpSocket(ImsUdpSocket *this)
{
  v1 = (this - 104);
  *(this - 13) = &unk_1F5ED9E90;
  *this = &unk_1F5ED9F68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ImsSocket::~ImsSocket(v1);
}

{
  v1 = (this - 104);
  *(this - 13) = &unk_1F5ED9E90;
  *this = &unk_1F5ED9F68;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ImsSocket::~ImsSocket(v1);
}

double non-virtual thunk toImsUdpSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void non-virtual thunk toImsUdpSocket::resetSocketDelegate(ImsUdpSocket *this)
{
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *dispatch::async<ImsUdpSocket::socketReadCallback(void)::$_0>(dispatch_queue_s *,std::unique_ptr<ImsUdpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsUdpSocket::socketReadCallback(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v7 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        (*(*v3 + 48))(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_1E4EE5878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaSetup::SDPMediaSetup(uint64_t a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "setup");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v8) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v8;
  }

  *a1 = &unk_1F5EDA090;
  v4 = (a1 + 40);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_1E4EE5984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v17;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaSetup::SDPMediaSetup(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 16) = __p;
  }

  *a1 = &unk_1F5EDA090;
  v4 = (a1 + 40);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_1E4EE5AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaSetup::~SDPMediaSetup(void **this)
{
  *this = &unk_1F5EDA090;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaSetup::~SDPMediaSetup(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaSetup::value(SDPMediaSetup *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

void SipSessionIdHeader::~SipSessionIdHeader(void **this)
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

void BambiAirplaneMode::set(BambiAirplaneMode *this, int a2)
{
  v4 = *this;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *this = v5;
  v20 = 9;
  strcpy(v19, "bambi.apm");
  v15[0] = 0;
  v18 = 0;
  v6 = ims::debug(v19, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Airplane mode is ", 17);
  *(v6 + 17) = 0;
  if (a2)
  {
    v7 = "Enabled";
  }

  else
  {
    v7 = "Disabled";
  }

  if (a2)
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v8);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v13 = 0;
  v14 = 0;
  IPTelephonyManager::getBambiClient(&v13);
  if (v4 && v4 != *this)
  {
    BambiClient::sipStacks(v13, v19);
    v9 = v19[0];
    for (i = v19[1]; v9 != i; v9 += 16)
    {
      v11 = *v9;
      v12 = *(v9 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipStack::handleDeviceEvents(v11, 2);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    v21 = v19;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v21);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E4EE5EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

__CFHTTPMessage *HttpResponse::serialize(HttpResponse *this)
{
  v11 = 0;
  v12 = 0;
  ims::CFString::CFString(&v11, this + 88);
  v2 = *MEMORY[0x1E695E480];
  v3 = *(this + 10);
  v4 = *(this + 111);
  if (v4 < 0)
  {
    v4 = *(this + 12);
  }

  v5 = v12;
  v6 = std::string::compare((this + 32), "1.0");
  v7 = MEMORY[0x1E695ADB0];
  if (v6)
  {
    v7 = MEMORY[0x1E695ADB8];
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  Response = CFHTTPMessageCreateResponse(v2, v3, v8, *v7);
  HttpMessage::serialize(this, Response);
  ims::CFType::~CFType(&v11);
  return Response;
}

uint64_t HttpResponse::deserialize(HttpResponse *this, CFHTTPMessageRef response)
{
  *(this + 10) = CFHTTPMessageGetResponseStatusCode(response);

  return HttpMessage::deserialize(this, response);
}

void sub_1E4EE6230(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  HttpMessage::~HttpMessage(v1);
  MEMORY[0x1E69235B0](v1, v2);
  _Unwind_Resume(a1);
}

void ims::ClientHandle::~ClientHandle(void **this)
{
  *this = &unk_1F5EDB3B8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  ims::ClientHandle::~ClientHandle(this);

  JUMPOUT(0x1E69235B0);
}

void ims::ClientHandle::addStackDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, dispatch_object_t object)
{
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  IMSClientManager::updateStackDelegate(a1 + 24, a2, &v8, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EE6388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::addDefaultCallDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, dispatch_object_t object)
{
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  IMSClientManager::updateCallDelegate(a1 + 24, a2, &v8, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EE642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::addCallManagerDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, dispatch_object_t object)
{
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  IMSClientManager::updateManagerDelegate(a1 + 24, a2, &v8, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EE64D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::addMessageDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, dispatch_object_t object)
{
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  IMSClientManager::updateMessageDelegate(a1 + 24, a2, &v8, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EE6574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::addXcapDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, dispatch_object_t object)
{
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objecta = object;
  if (object)
  {
    dispatch_retain(object);
  }

  IMSClientManager::updateXcapDelegate(a1 + 24, a2, &v8, &objecta);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EE6618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::addLazuliDelegate(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  IMSClientManager::updateLazuliDelegate(a1 + 24, a2, &v9, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4EE66BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeStackDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateStackDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE6734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeMessageDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateMessageDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE67AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeCallManagerDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateManagerDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE6824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeDefaultCallDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateCallDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE689C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeXcapDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateXcapDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE6914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::removeLazuliDelegate(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  object = 0;
  IMSClientManager::updateLazuliDelegate(a1 + 24, a2, &v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE698C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setStackDelegate(ims::ClientHandle *this, ims::StackEventDelegate *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "delegate.stack.");
  v5 = *(this + 3);
  v4 = this + 24;
  v3 = v5;
  v6 = v4[23];
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = v4[23];
  }

  else
  {
    v8 = *(v4 + 1);
  }

  v9 = std::string::append(&v11, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1E4EE6AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setDefaultCallDelegate(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v10, "delegate.call.");
  v4 = *(a1 + 24);
  v3 = a1 + 24;
  v2 = v4;
  v5 = *(v3 + 23);
  if (v5 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v5 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1E4EE6CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setCallManagerDelegate(ims::ClientHandle *this, ims::CallManagerEventDelegate *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "delegate.callManager.");
  v5 = *(this + 3);
  v4 = this + 24;
  v3 = v5;
  v6 = v4[23];
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = v4[23];
  }

  else
  {
    v8 = *(v4 + 1);
  }

  v9 = std::string::append(&v11, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1E4EE6E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setMessageDelegate(ims::ClientHandle *this, ims::MessageEventDelegate *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "delegate.message.");
  v5 = *(this + 3);
  v4 = this + 24;
  v3 = v5;
  v6 = v4[23];
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = v4[23];
  }

  else
  {
    v8 = *(v4 + 1);
  }

  v9 = std::string::append(&v11, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1E4EE7064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setXcapDelegate(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v10, "delegate.xcap.");
  v4 = *(a1 + 24);
  v3 = a1 + 24;
  v2 = v4;
  v5 = *(v3 + 23);
  if (v5 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v5 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_1E4EE7230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::create(NSObject **a1@<X0>, xpc_object_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  ImsUuid::generate(&v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  v6 = *a1;
  v13 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *a2;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  IMSClientManager::createImsClient(&v16.__r_.__value_.__l.__data_, &object, a3);
  xpc_release(object);
  object = 0;
  if (v13)
  {
    dispatch_release(v13);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F5EBEE78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (MEMORY[0x1E6924740](*a2) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(*a2, "kClientIsTransient"))
  {
    v14 = a2;
    __p.__r_.__value_.__r.__words[0] = "kClientIsTransient";
    xpc::dict::object_proxy::operator xpc::object(&v14, &v16);
    v8 = xpc::dyn_cast_or_default(&v16, 0);
    xpc_release(v16.__r_.__value_.__l.__data_);
    v14 = a2;
    __p.__r_.__value_.__r.__words[0] = "kClientUsesPrivateRelay";
    xpc::dict::object_proxy::operator xpc::object(&v14, &v16);
    v9 = xpc::dyn_cast_or_default(&v16, v8);
    xpc_release(v16.__r_.__value_.__l.__data_);
    if (v9)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = *a3;
    *(v11 + 74) = 1;
    *(v11 + 72) = v10 | v8;
  }
}

void sub_1E4EE7468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, dispatch_object_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  xpc_release(object);
  v25 = *(v23 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void ims::Client::initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v8, 0x2E0uLL);
  ims::NetworkConfig::NetworkConfig(v9);
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 257;
  v13 = 0;
  v14 = 65792;
  v15 = 0;
  memset(&v7, 0, sizeof(v7));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 24);
  }

  memset(&v6, 0, sizeof(v6));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  ims::NetworkConfig::operator=(v9, a3 + 24);
  std::string::operator=(v10, (a3 + 616));
  std::string::operator=(&v10[1], (a3 + 640));
  std::string::operator=(v11, (a3 + 664));
  std::string::operator=(&v11[1], (a3 + 688));
  v12 = *(a3 + 712);
  v13 = *(a3 + 724);
  v15 = *(a3 + 732);
  v14 = *(a3 + 728);
  if (*(a1 + 74) == 1)
  {
    v15 = *(a1 + 72);
  }

  std::allocate_shared[abi:ne200100]<ImsPrefs,std::allocator<ImsPrefs>,std::string const&,0>();
}

void sub_1E4EE787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (STACK[0x348])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  ims::StackConfig::~StackConfig(&STACK[0x388]);
  _Unwind_Resume(a1);
}

uint64_t ims::NetworkConfig::operator=(uint64_t a1, uint64_t a2)
{
  ims::NetworkServices::operator=(a1, a2);
  std::string::operator=((a1 + 312), (a2 + 312));
  std::string::operator=((a1 + 336), (a2 + 336));
  std::string::operator=((a1 + 360), (a2 + 360));
  std::string::operator=((a1 + 384), (a2 + 384));
  std::string::operator=((a1 + 408), (a2 + 408));
  std::string::operator=((a1 + 432), (a2 + 432));
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 456), *(a2 + 456), *(a2 + 464), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 464) - *(a2 + 456)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 480), *(a2 + 480), *(a2 + 488), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 488) - *(a2 + 480)) >> 3));
  }

  std::string::operator=((a1 + 504), (a2 + 504));
  v4 = *(a2 + 531);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 531) = v4;
  std::string::operator=((a1 + 536), (a2 + 536));
  std::string::operator=((a1 + 560), (a2 + 560));
  *(a1 + 584) = *(a2 + 584);
  return a1;
}

void ___ZN3ims6Client10initializeERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS_11StackConfigE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v5);
  v2 = *(a1 + 824);
  v3 = *(a1 + 816);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IPTelephonyManager::initializeFromSIM();
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EE7AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

std::string *__copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c23_ZTSN3ims11StackConfigE816c35_ZTSNSt3__110shared_ptrI8ImsPrefsEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
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

  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v6;
  ims::NetworkConfig::NetworkConfig((a1 + 104), (a2 + 104));
  result = ims::DeviceConfig::DeviceConfig((a1 + 696), (a2 + 696));
  v8 = *(a2 + 804);
  *(a1 + 812) = *(a2 + 812);
  *(a1 + 804) = v8;
  *(a1 + 816) = *(a2 + 816);
  v9 = *(a2 + 824);
  *(a1 + 824) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1E4EE7BCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c23_ZTSN3ims11StackConfigE816c35_ZTSNSt3__110shared_ptrI8ImsPrefsEE(uint64_t a1)
{
  v2 = *(a1 + 824);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ims::StackConfig::~StackConfig((a1 + 80));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void ims::Client::initializeLimitedAccess(ims::Client *this, const ims::NetworkConfig *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, *(a2 + 60), *(a2 + 61), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 61) - *(a2 + 60)) >> 3));
  memset(&v11, 0, sizeof(v11));
  if (*(a2 + 431) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a2 + 51), *(a2 + 52));
  }

  else
  {
    v11 = *(a2 + 17);
  }

  memset(&v10, 0, sizeof(v10));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 3), *(this + 4));
  }

  else
  {
    v10 = *(this + 1);
  }

  v4 = *(a2 + 54);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN3ims6Client23initializeLimitedAccessERKNS_13NetworkConfigE_block_invoke;
  v5[3] = &__block_descriptor_tmp_6_3;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = v10;
  }

  v9 = v4;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  memset(v8, 0, sizeof(v8));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
  IMSClientManager::callOnImsQueue(v5);
  v15 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1E4EE7E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 57) < 0)
  {
    operator delete(*(v34 - 80));
  }

  *(v34 - 80) = v34 - 48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v34 - 80));
  _Unwind_Resume(a1);
}

void ___ZN3ims6Client23initializeLimitedAccessERKNS_13NetworkConfigE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::initiateLimitedAccessRegister(v3, a1 + 32, *(a1 + 104), (a1 + 56), (a1 + 80));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE7F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
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

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
}

void sub_1E4EE802C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE(uint64_t a1)
{
  v2 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void ims::Client::initializeTransient(uint64_t a1, void *a2)
{
  memset(&v16, 0, sizeof(v16));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v3 = MEMORY[0x1E6924740](*a2);
  v4 = MEMORY[0x1E69E9E80];
  if (v3 != MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5 || (v5 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1E6924740](v5) == v4)
      {
        xpc_retain(v5);
        v6 = v5;
      }

      else
      {
        v6 = xpc_null_create();
      }
    }

    else
    {
      v6 = xpc_null_create();
      v5 = 0;
    }

    xpc_release(v5);
    v7 = xpc_null_create();
    v8 = *a2;
    *a2 = v6;
    xpc_release(v8);
    xpc_release(v7);
  }

  object = xpc_string_create(SipRegistrationMetrics::kTransientOperationMT);
  if (!object)
  {
    object = xpc_null_create();
  }

  v13[0] = a2;
  v13[1] = "kReason";
  xpc::dict::object_proxy::operator=(v13, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZN3ims6Client19initializeTransientEN3xpc4dictE_block_invoke;
  v10[3] = &__block_descriptor_tmp_7_0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  v9 = *a2;
  v12 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v12 = xpc_null_create();
  }

  IMSClientManager::callOnImsQueue(v10);
  xpc_release(v12);
  v12 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE82DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 41) < 0)
  {
    operator delete(*(v19 - 64));
  }

  _Unwind_Resume(a1);
}

void ___ZN3ims6Client19initializeTransientEN3xpc4dictE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v5);
  v2 = v5;
  v3 = *(a1 + 56);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  IPTelephonyManager::initializeTransient(v2, a1 + 32, &object);
  xpc_release(object);
  object = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EE83B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  *(a1 + 56) = result;
  return result;
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void ims::Client::deinitialize(ims::Client *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims6Client12deinitializeEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_8_2;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE8590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client12deinitializeEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::deinitialize(v3, a1 + 32, 0, *(a1 + 56), 0);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE8634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::shutdown(uint64_t a1, void **a2)
{
  memset(&v7, 0, sizeof(v7));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1174405120;
  v4[2] = ___ZN3ims6Client8shutdownEN3xpc4dictE_block_invoke;
  v4[3] = &__block_descriptor_tmp_11_1;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

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

  IMSClientManager::callOnImsQueue(v4);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE8760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client8shutdownEN3xpc4dictE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v5);
  v2 = v5;
  v3 = *(a1 + 56);
  if (v3)
  {
    xpc_retain(*(a1 + 56));
  }

  else
  {
    v3 = xpc_null_create();
  }

  BambiClient::shutdownStack(*(v2 + 232), (a1 + 32));
  xpc_release(v3);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE8848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  xpc_release(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void ims::ClientHandle::dumpState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  memset(&v7, 0, sizeof(v7));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1174405120;
  v4[2] = ___ZNK3ims12ClientHandle9dumpStateERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9__block_invoke;
  v4[3] = &__block_descriptor_tmp_12_0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = v8;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  IMSClientManager::callOnImsQueue(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE89DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 25) < 0)
  {
    operator delete(*(v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle9dumpStateERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9__block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::dumpState(v3, (a1 + 32), a1 + 56);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE8AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
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
}

void sub_1E4EE8B34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void ims::ClientHandle::qosEstablished(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v6, *a2, a2[1], (a2[1] - *a2) >> 2);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 1174405120;
  v2[2] = ___ZNK3ims12ClientHandle14qosEstablishedERKNSt3__16vectorIjNS1_9allocatorIjEEEE_block_invoke;
  v2[3] = &__block_descriptor_tmp_13_0;
  v4 = 0;
  v5 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v6, v7, (v7 - v6) >> 2);
  IMSClientManager::callOnImsQueue(v2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_1E4EE8C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    *(v14 - 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle14qosEstablishedERKNSt3__16vectorIjNS1_9allocatorIjEEEE_block_invoke(int **a1)
{
  IPTelephonyManager::getCallManager(a1, &v3);
  IMSCallManager::handleQualityOfServiceEstablished(v3, a1 + 4);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE8D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void ims::ClientHandle::qosEstablishedForBearer(uint64_t a1, int a2, char a3, uint64_t *a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v13, *a4, a4[1], (a4[1] - *a4) >> 1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZN3ims12ClientHandle23qosEstablishedForBearerEjbRKNSt3__16vectorItNS1_9allocatorItEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_14_1;
  v11 = a2;
  v12 = a3;
  v7[4] = a1;
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, v13, v14, (v14 - v13) >> 1);
  IMSClientManager::callOnImsQueue(v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_1E4EE8E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims12ClientHandle23qosEstablishedForBearerEjbRKNSt3__16vectorItNS1_9allocatorItEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  IPTelephonyManager::getCallManager(a1, &v5);
  v3 = *(v2 + 48);
  IMSCallManager::handleQualityOfServiceEstablished(v5, *(a1 + 64), *(a1 + 68), (a1 + 40));
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4EE8EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__16vectorItNS_9allocatorItEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorItNS_9allocatorItEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ims::ClientHandle::qosRevoked(ims::ClientHandle *this, int a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3ims12ClientHandle10qosRevokedEj_block_invoke;
  v2[3] = &__block_descriptor_tmp_15;
  v3 = a2;
  IMSClientManager::callOnImsQueue(v2);
}

void ___ZN3ims12ClientHandle10qosRevokedEj_block_invoke(unsigned int *a1)
{
  IPTelephonyManager::getCallManager(a1, &v3);
  IMSCallManager::handleQualityOfServiceRevoked(v3, a1[8]);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE9000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *ims::Client::Client(std::string *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "0224B9FE-9648-11E6-AE22-56B6B6499611");
  ims::ClientHandle::ClientHandle(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  this->__r_.__value_.__r.__words[0] = &unk_1F5EDA358;
  this[3].__r_.__value_.__s.__data_[2] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__s.__data_[0] = 0;
  return this;
}

void sub_1E4EE9098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::~Client(void **this)
{
  ims::ClientHandle::~ClientHandle(this);

  JUMPOUT(0x1E69235B0);
}

void ___ZNK3ims6Client13mergeAllCallsEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v2);
  IMSCallManager::mergeAllCalls(v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4EE9160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims6Client17endConferenceCallEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v2);
  IMSCallManager::endConferenceCall(v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4EE91E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::sendSMS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  memset(&v26, 0, sizeof(v26));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  memset(&v25, 0, sizeof(v25));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a3, *(a3 + 8));
  }

  else
  {
    v25 = *a3;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v22, *a4, a4[1], a4[1] - *a4);
  memset(&v21, 0, sizeof(v21));
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a5, *(a5 + 8));
  }

  else
  {
    v21 = *a5;
  }

  memset(&v20, 0, sizeof(v20));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v20 = *(a1 + 24);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZNK3ims6Client7sendSMSERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_RKNS1_6vectorIhNS5_IhEEEES9_b_block_invoke;
  v11[3] = &__block_descriptor_tmp_20_2;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v20;
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v26;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = v25;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v15, v22, v23, v23 - v22);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  v19 = a6;
  IMSClientManager::callOnImsQueue(v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE94D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  v48 = *(v46 - 136);
  if (v48)
  {
    *(v46 - 128) = v48;
    operator delete(v48);
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (*(v46 - 57) < 0)
  {
    operator delete(*(v46 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims6Client7sendSMSERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_RKNS1_6vectorIhNS5_IhEEEES9_b_block_invoke(uint64_t a1)
{
  IPTelephonyManager::getSMSManager(&v3);
  IMSSMSManager::sendSMS(v3, a1 + 32, (a1 + 56), a1 + 80, (a1 + 104), a1 + 128, *(a1 + 152));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE963C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE104c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE128c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
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

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 104, *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v7 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v7;
  }
}

void sub_1E4EE973C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE104c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE128c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

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
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void ims::Client::sendUssd(uint64_t a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  memset(&v6, 0, sizeof(v6));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims6Client8sendUssdERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v3[3] = &__block_descriptor_tmp_23;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = v6;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE9994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 25) < 0)
  {
    operator delete(*(v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims6Client8sendUssdERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::sendUssdData(v3, (a1 + 32), (a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::cancelUssd(ims::Client *this)
{
  memset(&v3, 0, sizeof(v3));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 3), *(this + 4));
  }

  else
  {
    v3 = *(this + 1);
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1174405120;
  v1[2] = ___ZNK3ims6Client10cancelUssdEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_26_1;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  IMSClientManager::callOnImsQueue(v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE9B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims6Client10cancelUssdEv_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::cancelUssdSession(v3, (a1 + 32));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE9BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::updateNetworkServices(ims::Client *this, const ims::NetworkServices *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ims::NetworkServices::NetworkServices(v7, a2);
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims6Client21updateNetworkServicesERKNS_15NetworkServicesE_block_invoke;
  v3[3] = &__block_descriptor_tmp_27_1;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  ims::NetworkServices::NetworkServices(v5, v7);
  IMSClientManager::callOnImsQueue(v3);
  ims::NetworkServices::~NetworkServices(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  ims::NetworkServices::~NetworkServices(v7);
}

void sub_1E4EE9D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  ims::NetworkServices::~NetworkServices(&a62);
  _Unwind_Resume(a1);
}

void ___ZN3ims6Client21updateNetworkServicesERKNS_15NetworkServicesE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::updateNetworkServices(v3, (a1 + 32), a1 + 56, 0);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EE9E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

ims::NetworkServices *__copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c27_ZTSN3ims15NetworkServicesE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  return ims::NetworkServices::NetworkServices((a1 + 56), (a2 + 56));
}

void sub_1E4EE9E88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c27_ZTSN3ims15NetworkServicesE(uint64_t a1)
{
  ims::NetworkServices::~NetworkServices((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void ims::Client::updateSimAccessClass(ims::Client *this, const unsigned int *a2)
{
  v2 = *a2;
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims6Client20updateSimAccessClassERKj_block_invoke;
  v3[3] = &__block_descriptor_tmp_30_1;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = v2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EE9FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client20updateSimAccessClassERKj_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::updateSimAccessClass(v3, a1 + 32, (a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEA080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::setThumperEnabled(ims::Client *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims6Client17setThumperEnabledEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_33_0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEA188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client17setThumperEnabledEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  BambiClient::setThumperEnabled(*(v3 + 232), a1 + 32, *(a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEA228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::setThirdPartyApp(ims::Client *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims6Client16setThirdPartyAppEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_36_1;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEA330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client16setThirdPartyAppEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  BambiClient::setThirdPartyApp(*(v3 + 232), a1 + 32, *(a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEA3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::Client::transferCalls(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  memset(&v7, 0, sizeof(v7));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1174405120;
  v4[2] = ___ZN3ims6Client13transferCallsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9__block_invoke;
  v4[3] = &__block_descriptor_tmp_39_1;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = v8;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v7;
  }

  IMSClientManager::callOnImsQueue(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

{
  if (a2 && a3)
  {
    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v6 = *(a2 + 32);
    }

    if (*(a3 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a3 + 32), *(a3 + 40));
    }

    else
    {
      __p = *(a3 + 32);
    }

    (*(*a1 + 368))(a1, &v6, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4EEA554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 25) < 0)
  {
    operator delete(*(v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client13transferCallsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9__block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v3);
  IMSCallManager::transferCalls(v3, a1 + 32, a1 + 56);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEA620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4EEA718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims6Client13transferCallsEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v2);
  IMSCallManager::transferAllCalls(v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4EEA7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::authChallengeResponse(ims::ClientHandle *this, const ims::AuthChallengeResponse *a2)
{
  memset(&v2, 0, sizeof(v2));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, *(this + 3), *(this + 4));
  }

  else
  {
    v2 = *(this + 1);
  }

  operator new();
}

void sub_1E4EEA900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims12ClientHandle21authChallengeResponseERKNS_21AuthChallengeResponseE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v4);
  IPTelephonyManager::handleAkaAuthResponse(v4, a1 + 32, *(a1 + 56));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x1E69235B0);
  }
}

void sub_1E4EEA9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *ims::EmergencyClient::EmergencyClient(std::string *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  ims::ClientHandle::ClientHandle(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  this->__r_.__value_.__r.__words[0] = &unk_1F5EDA700;
  this[2].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

void sub_1E4EEAA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::EmergencyClient::~EmergencyClient(void **this)
{
  ims::ClientHandle::~ClientHandle(this);

  JUMPOUT(0x1E69235B0);
}

void ims::EmergencyClient::create(NSObject **a1)
{
  v1 = *a1;
  v2 = v1;
  if (v1)
  {
    dispatch_retain(v1);
  }

  IMSClientManager::updateImsEmergencyClient(&v2);
}

void sub_1E4EEAB60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims15EmergencyClient18exitEmergencyStateEv_block_invoke()
{
  IPTelephonyManager::instance(&v1);
  BambiClient::exitEmergencyState(*(v1 + 232));
  v0 = v2;
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }
}

void sub_1E4EEABE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::EmergencyClient::updateNetworkServices(ims::EmergencyClient *this, const ims::NetworkServices *a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ims::NetworkServices::NetworkServices(v7, a2);
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims15EmergencyClient21updateNetworkServicesERKNS_15NetworkServicesE_block_invoke;
  v3[3] = &__block_descriptor_tmp_51;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  ims::NetworkServices::NetworkServices(v5, v7);
  IMSClientManager::callOnImsQueue(v3);
  ims::NetworkServices::~NetworkServices(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  ims::NetworkServices::~NetworkServices(v7);
}

void sub_1E4EEAD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  ims::NetworkServices::~NetworkServices(&a62);
  _Unwind_Resume(a1);
}

void ___ZN3ims15EmergencyClient21updateNetworkServicesERKNS_15NetworkServicesE_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::updateNetworkServices(v3, (a1 + 32), a1 + 56, 1);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEAE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::reportConnectivityAvailable(ims::ClientHandle *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims12ClientHandle27reportConnectivityAvailableEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_57_1;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEAF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle27reportConnectivityAvailableEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(v4 + 232);
  if (v2)
  {
    BambiClient::handleConnectivityChange(v2, a1 + 32, *(a1 + 56));
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4EEAFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setCapability(uint64_t a1, int *a2, char a3)
{
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      memset(&v17, 0, sizeof(v17));
      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v17 = *(a1 + 24);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1174405120;
      v9[2] = ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_65;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v17;
      }

      v11 = a3;
      IMSClientManager::callOnImsQueue(v9);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v5 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v4 != 3)
      {
        return;
      }

      memset(&v17, 0, sizeof(v17));
      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v17 = *(a1 + 24);
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1174405120;
      v6[2] = ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_66;
      v6[3] = &__block_descriptor_tmp_69_1;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        v7 = v17;
      }

      v8 = a3;
      IMSClientManager::callOnImsQueue(v6);
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v5 = v7.__r_.__value_.__r.__words[0];
    }

    goto LABEL_31;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_61;
      v12[3] = &__block_descriptor_tmp_62;
      v13 = a3;
      IMSClientManager::callOnImsQueue(v12);
    }

    return;
  }

  memset(&v17, 0, sizeof(v17));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v17 = *(a1 + 24);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1174405120;
  v14[2] = ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke;
  v14[3] = &__block_descriptor_tmp_60_1;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v17;
  }

  v16 = a3;
  IMSClientManager::callOnImsQueue(v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v15.__r_.__value_.__r.__words[0];
LABEL_31:
    operator delete(v5);
  }

LABEL_32:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEB2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::setAutoAnswer(v3, a1 + 32, *(a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEB37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_61(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::setLoggingEnabled(v3, *(a1 + 32));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEB3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_2(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  BambiClient::setThumperEnabled(*(v3 + 232), a1 + 32, *(a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEB47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle13setCapabilityERKNS_12CapabilitiesEb_block_invoke_66(uint64_t a1)
{
  IPTelephonyManager::instance(v3);
  v2 = v3[1];
  *(*(v3[0] + 232) + 720) = *(a1 + 56) ^ 1;
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ims::ClientHandle::setTextMode(uint64_t a1, int a2, char a3)
{
  memset(&v9, 0, sizeof(v9));
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v9 = *(a1 + 24);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN3ims12ClientHandle11setTextModeENS_20TextMediaSessionModeEb_block_invoke;
  v5[3] = &__block_descriptor_tmp_72_0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v9;
  }

  v7 = a2;
  v8 = a3;
  IMSClientManager::callOnImsQueue(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEB5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims12ClientHandle11setTextModeENS_20TextMediaSessionModeEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::getCallManager(a1, &v3);
  IMSCallManager::setTextMediaSessionMode(v3, (a1 + 32), *(a1 + 56), *(a1 + 60));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4EEB694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::ClientHandle::sendSuppServicesConfigInfo(ims::ClientHandle *this, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  memset(&v40, 0, sizeof(v40));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(this + 3), *(this + 4));
  }

  else
  {
    v40 = *(this + 1);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  v20 = 0u;
  *v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  Value = CFDictionaryGetValue(theDict, @"kRegSimFiles");
  ims::IsimFiles::Deserialize(v15, Value);
  std::string::operator=(v23, v15);
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v22 + 8), *(&v16 + 1), v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - *(&v16 + 1)) >> 3));
  std::string::operator=(&v23[24], v18);
  CFDictionaryGetValue(theDict, @"kRegDeviceID");
  v41 = 0;
  v42 = 0uLL;
  ctu::cf::assign();
  v6 = v41;
  *&v43 = v42;
  *(&v43 + 7) = *(&v42 + 7);
  v7 = HIBYTE(v42);
  if ((v23[71] & 0x80000000) != 0)
  {
    operator delete(*&v23[48]);
  }

  *&v23[48] = v6;
  *&v23[56] = v43;
  *&v23[63] = *(&v43 + 7);
  v23[71] = v7;
  v8 = CFDictionaryGetValue(theDict, @"kRegIsimPresent");
  LOBYTE(v41) = 0;
  ctu::cf::assign(&v41, v8, v9);
  LOBYTE(v29[0]) = v41;
  CFDictionaryGetValue(theDict, @"kRegCarrierID");
  v41 = 0;
  v42 = 0uLL;
  ctu::cf::assign();
  v10 = v41;
  *&v43 = v42;
  *(&v43 + 7) = *(&v42 + 7);
  v11 = HIBYTE(v42);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  v29[1] = v10;
  *&v30 = v43;
  *(&v30 + 7) = *(&v43 + 7);
  HIBYTE(v30) = v11;
  v41 = &unk_1F5EF3658;
  *&v42 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v41 = &unk_1F5EF3760;
  IPTelephonyManager::instance(&v43);
  IPTelephonyManager::initializeXcap(v43, &v40, v22, v42);
  if (*(&v43 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
  }

  ims::CFType::~CFType(&v41);
  v41 = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v41 = v19 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (SBYTE7(v19[0]) < 0)
  {
    operator delete(v18[0]);
  }

  v41 = &v16 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  XcapConfig::~XcapConfig(v22);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t ims::ClientHandle::sendSuppServicesProvInfo(ims::ClientHandle *this, CFTypeRef cf)
{
  memset(&v8, 0, sizeof(v8));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(this + 3), *(this + 4));
  }

  else
  {
    v8 = *(this + 1);
  }

  v6 = &unk_1F5EF3658;
  v7 = cf;
  if (cf)
  {
    this = CFRetain(cf);
  }

  v6 = &unk_1F5EF3760;
  IPTelephonyManager::getXcapManager(this, &v4);
  IMSXcapManager::handleRequest(v4, &v8, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ims::CFType::~CFType(&v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4EEBB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::ClientHandle::setMute(ims::ClientHandle *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims12ClientHandle7setMuteEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_75;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEBC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims12ClientHandle7setMuteEb_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(a1 + 56);
  BambiClient::setMute(*(v4 + 232), (a1 + 32));
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4EEBD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::playDtmf(ims::CallHandle *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 4), *(this + 5));
  }

  else
  {
    v6 = *(this + 32);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims10CallHandle8playDtmfEh_block_invoke;
  v3[3] = &__block_descriptor_tmp_78;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEBE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims10CallHandle8playDtmfEh_block_invoke(unsigned __int8 *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, (a1 + 32));
  IMSCallManager::playDtmf(v2, v3, a1[56]);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEBED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::playDtmf(uint64_t a1, uint64_t *a2)
{
  memset(&v11, 0, sizeof(v11));
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v8, *a2, a2[1], a2[1] - *a2);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims10CallHandle8playDtmfERKNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
  v3[3] = &__block_descriptor_tmp_79_1;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = v11;
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v8, v9, v9 - v8);
  IMSClientManager::callOnImsQueue(v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEC05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21)
{
  v23 = *(v21 - 72);
  if (v23)
  {
    *(v21 - 64) = v23;
    operator delete(v23);
  }

  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims10CallHandle8playDtmfERKNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t *a1)
{
  IPTelephonyManager::getCallManager(a1, &v8);
  v2 = v8;
  ImsUuid::ImsUuid(v6, (a1 + 4));
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1[7], a1[8], a1[8] - a1[7]);
  IMSCallManager::playDtmf(v2, v6, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  v6[0] = &unk_1F5EBEE78;
  if (v7 < 0)
  {
    operator delete(v6[1]);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4EEC174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 56, *(a2 + 56), *(a2 + 64), *(a2 + 64) - *(a2 + 56));
}

void sub_1E4EEC240(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void ims::CallHandle::stopDtmf(ims::CallHandle *this)
{
  memset(&v3, 0, sizeof(v3));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 4), *(this + 5));
  }

  else
  {
    v3 = *(this + 32);
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1174405120;
  v1[2] = ___ZNK3ims10CallHandle8stopDtmfEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_82_0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  IMSClientManager::callOnImsQueue(v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEC39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims10CallHandle8stopDtmfEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  IMSCallManager::stopDtmf(v2, v3);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEC458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::Call::Call(uint64_t a1, const std::string *a2, uint64_t a3)
{
  *(a1 + 78) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5EDAA48;
  std::string::operator=((a1 + 32), a2);
  if (a3)
  {
    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v6 = *(a3 + 24);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = v6;
  }

  return a1;
}

void ims::CallHandle::~CallHandle(void **this)
{
  *this = &unk_1F5EDAAE8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  ims::CallHandle::~CallHandle(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::Call::Call(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  *(a1 + 78) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5EDAA48;
  std::string::operator=((a1 + 32), a2);
  v5 = *a3;
  if (*a3)
  {
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(v5 + 24), *(v5 + 32));
    }

    else
    {
      v7 = *(v5 + 24);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = v7;
  }

  return a1;
}

void *ims::Call::Call(uint64_t a1, __int128 *a2, __int128 *a3)
{
  result = ims::CallHandle::CallHandle(a1, a2, a3);
  *result = &unk_1F5EDAA48;
  return result;
}

{
  result = ims::CallHandle::CallHandle(a1, a2, a3);
  *result = &unk_1F5EDAA48;
  return result;
}

uint64_t ims::CallHandle::CallHandle(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EDAAE8;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  return a1;
}

void sub_1E4EEC790(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void ims::Call::~Call(void **this)
{
  ims::CallHandle::~CallHandle(this);

  JUMPOUT(0x1E69235B0);
}

void ims::Call::dial()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  memset(&v44, 0, sizeof(v44));
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *v1, *(v1 + 8));
  }

  else
  {
    v44 = *v1;
  }

  bzero(&v16, 0x1450uLL);
  v17 = -1;
  memset(v21, 0, sizeof(v21));
  v18 = &unk_1F5EBEE78;
  memset(__p, 0, sizeof(__p));
  v20 = 0;
  v23 = 1;
  v24 = 1;
  v26 = 257;
  v28 = 256;
  v25 = 0x200000001;
  v27 = 0;
  v35 = 0u;
  v36 = 0u;
  v30 = 0;
  v22 = 90;
  v29 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  *v37 = 0x40A7700000000000;
  memset(&v37[8], 0, 32);
  memset(v38, 0, sizeof(v38));
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  BambiEmergencyCallOptions::BambiEmergencyCallOptions(&v42);
  memset(&v43, 0, sizeof(v43));
  std::string::operator=(&v39[1], (v7 + 8));
  v17 = *v7;
  std::string::operator=(v21, v5);
  v9 = *(v7 + 80);
  v35 = *(v7 + 64);
  LOBYTE(v20) = *(v8 + 25);
  HIBYTE(v20) = *(v8 + 24);
  LOBYTE(v29) = 0;
  BYTE1(v29) = *(v8 + 80) == 2;
  HIWORD(v29) = *(v8 + 84);
  v34 = *(v7 + 32);
  v36 = v9;
  *v37 = *(v7 + 96);
  std::string::operator=(&v37[16], (v7 + 112));
  std::string::operator=(v38, (v7 + 136));
  std::string::operator=(&v38[1], (v7 + 160));
  std::string::operator=(v39, (v7 + 184));
  v40 = v3;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v41, (v7 + 240));
  if (*(v8 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v8 + 32), *(v8 + 40));
  }

  else
  {
    v12 = *(v8 + 32);
  }

  ImsUuid::ImsUuid(&v13, &v12);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *__p = v14;
  *&__p[16] = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  v13 = &unk_1F5EBEE78;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v16 = 0;
  std::string::operator=(&v43, (v8 + 56));
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v44;
  }

  IMSCallOptions::IMSCallOptions(&v11, &v16);
}

void sub_1E4EECC34(_Unwind_Exception *a1)
{
  IMSCallOptions::~IMSCallOptions(&STACK[0x14D0]);
  if (*(v1 + 23) < 0)
  {
    operator delete(*(v2 - 112));
  }

  _Unwind_Resume(a1);
}

void ___ZN3ims4Call4dialERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS_10CallConfigES9_b_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  IPTelephonyManager::getCallManager(v0, &v2);
  IMSCallOptions::IMSCallOptions(&v1, (v0 + 56));
}

void sub_1E4EECD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  IMSCallOptions::~IMSCallOptions(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void IMSCallOptions::~IMSCallOptions(void **this)
{
  v2 = (this + 512);
  if (*(this + 5199) < 0)
  {
    operator delete(this[647]);
  }

  if (v2[1071] < 0)
  {
    operator delete(this[643]);
  }

  SipUri::~SipUri((this + 592));
  SipStackConfig::~SipStackConfig(this + 268);
  SipRegistrationConfig::~SipRegistrationConfig(this + 59);
  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
  }

  if (*(this + 439) < 0)
  {
    operator delete(this[52]);
  }

  if (*(this + 415) < 0)
  {
    operator delete(this[49]);
  }

  BambiCallOptions::~BambiCallOptions(this + 5);
  this[1] = &unk_1F5EBEE78;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c20_ZTS14IMSCallOptions(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  IMSCallOptions::IMSCallOptions((a1 + 56), (a2 + 56));
}

void sub_1E4EECE94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c20_ZTS14IMSCallOptions(uint64_t a1)
{
  IMSCallOptions::~IMSCallOptions((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void ims::EmergencyCall::dial()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  bzero(&v25, 0x1450uLL);
  v26 = -1;
  v30 = 0u;
  v31 = 0u;
  v27 = &unk_1F5EBEE78;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v33 = 1;
  v34 = 1;
  v36 = 257;
  v38 = 256;
  v35 = 0x200000001;
  v37 = 0;
  v45 = 0u;
  v46 = 0u;
  v40 = 0;
  v32 = 90;
  v39 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v47 = 0x40A7700000000000;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  BambiEmergencyCallOptions::BambiEmergencyCallOptions(v57);
  memset(&v59, 0, sizeof(v59));
  memset(&__sz, 0, sizeof(__sz));
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__sz, *v8, *(v8 + 8));
  }

  else
  {
    __sz = *v8;
  }

  memset(&v23, 0, sizeof(v23));
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v6, *(v6 + 8));
  }

  else
  {
    v23 = *v6;
  }

  bzero(&v15, 0x2E0uLL);
  ims::NetworkConfig::NetworkConfig(v16);
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 257;
  v20 = 0;
  v21 = 65792;
  v22 = 0;
  ims::NetworkConfig::operator=(v16, v2 + 24);
  std::string::operator=(v17, (v2 + 616));
  std::string::operator=(&v17[1], (v2 + 640));
  std::string::operator=(v18, (v2 + 664));
  std::string::operator=(&v18[1], (v2 + 688));
  v19 = *(v2 + 712);
  v20 = *(v2 + 724);
  v21 = *(v2 + 728);
  v25 = 1;
  v26 = *v4;
  std::string::operator=((v54 + 8), (v4 + 8));
  v44 = 0;
  LOBYTE(v29) = *(v9 + 25);
  HIBYTE(v29) = *(v9 + 24);
  LOBYTE(v39) = 0;
  BYTE1(v39) = *(v9 + 80) == 2;
  HIWORD(v39) = *(v9 + 84);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v56, (v4 + 240));
  SipUri::fromString(v58, (v4 + 40));
  if (*(v4 + 239) < 0)
  {
    v10 = *(v4 + 224);
    if (v10)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 216), v10);
      goto LABEL_13;
    }
  }

  else if (*(v4 + 239))
  {
    __p = *(v4 + 216);
    goto LABEL_13;
  }

  v11 = ims::categoryToUrn((v4 + 208));
  std::string::basic_string[abi:ne200100]<0>(&__p, v11);
LABEL_13:
  std::string::operator=(v57, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v58[432] = *(v4 + 272);
  std::string::operator=(&v59, (v9 + 56));
  if (*(v9 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v9 + 32), *(v9 + 40));
  }

  else
  {
    v12 = *(v9 + 32);
  }

  ImsUuid::ImsUuid(&__p, &v12);
  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  *v28 = *&__p.__r_.__value_.__r.__words[1];
  *&v28[16] = v14;
  HIBYTE(v14) = 0;
  __p.__r_.__value_.__s.__data_[8] = 0;
  __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEE78;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  std::allocate_shared[abi:ne200100]<ImsPrefs,std::allocator<ImsPrefs>,std::string const&,0>();
}

void sub_1E4EED534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  ims::StackConfig::~StackConfig((v18 + v19));
  IMSCallOptions::~IMSCallOptions((v18 + 56));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (STACK[0x17B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x17B8]);
  }

  ims::StackConfig::~StackConfig(&STACK[0x17D0]);
  if (*(v20 + 823) < 0)
  {
    operator delete(STACK[0x1AB0]);
  }

  if (*(v20 + 855) < 0)
  {
    operator delete(STACK[0x1AD0]);
  }

  IMSCallOptions::~IMSCallOptions(&STACK[0x1AF0]);
  _Unwind_Resume(a1);
}

void ___ZN3ims13EmergencyCall4dialERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_RKNS_10CallConfigERKNS_11StackConfigE_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  IPTelephonyManager::instance(&v2);
  IMSCallOptions::IMSCallOptions(v1, (v0 + 56));
}

void sub_1E4EED758(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  IMSCallOptions::~IMSCallOptions(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c20_ZTS14IMSCallOptions5256c23_ZTSN3ims11StackConfigE5992c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE6016c35_ZTSNSt3__110shared_ptrI8ImsPrefsEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  IMSCallOptions::IMSCallOptions((a1 + 56), (a2 + 56));
}

void sub_1E4EED88C(_Unwind_Exception *a1)
{
  ims::StackConfig::~StackConfig((v1 + v2));
  IMSCallOptions::~IMSCallOptions((v1 + 56));
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c20_ZTS14IMSCallOptions5256c23_ZTSN3ims11StackConfigE5992c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE6016c35_ZTSNSt3__110shared_ptrI8ImsPrefsEE(uint64_t a1)
{
  v2 = *(a1 + 6024);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 6015) < 0)
  {
    operator delete(*(a1 + 5992));
  }

  ims::StackConfig::~StackConfig((a1 + 5256));
  IMSCallOptions::~IMSCallOptions((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void ims::Call::pull()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  bzero(&v16, 0x1450uLL);
  v17 = -1;
  v21 = 0u;
  v22 = 0u;
  v18 = &unk_1F5EBEE78;
  memset(__p, 0, sizeof(__p));
  v20 = 0;
  v24 = 1;
  v25 = 1;
  v27 = 257;
  v29 = 256;
  v26 = 0x200000001;
  v28 = 0;
  v35 = 0u;
  v36 = 0u;
  v31 = 0;
  v23 = 90;
  v30 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  *v37 = 0x40A7700000000000;
  *&v37[8] = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  BambiEmergencyCallOptions::BambiEmergencyCallOptions(&v42);
  memset(&v43, 0, sizeof(v43));
  std::string::operator=(&v40[1], (v2 + 8));
  v6 = *(v2 + 80);
  v35 = *(v2 + 64);
  v17 = *v2;
  LOBYTE(v20) = *(v5 + 25);
  HIBYTE(v20) = *(v5 + 24);
  LOBYTE(v30) = 0;
  BYTE1(v30) = *(v5 + 80) == 2;
  HIWORD(v30) = *(v5 + 84);
  v34 = *(v2 + 32);
  v36 = v6;
  *v37 = *(v2 + 96);
  std::string::operator=(&v37[16], (v2 + 112));
  std::string::operator=(v39, (v2 + 136));
  std::string::operator=(&v39[1], (v2 + 160));
  std::string::operator=(v40, (v2 + 184));
  std::string::operator=((v33 + 8), v4);
  if (*(v5 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v5 + 32), *(v5 + 40));
  }

  else
  {
    v12 = *(v5 + 32);
  }

  ImsUuid::ImsUuid(&v13, &v12);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *__p = v14;
  *&__p[16] = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  v13 = &unk_1F5EBEE78;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&v43, (v5 + 56));
  v16 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1174405120;
  v9 = ___ZN3ims4Call4pullERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS_10CallConfigE_block_invoke;
  v10 = &__block_descriptor_tmp_85_0;
  IMSCallOptions::IMSCallOptions(&v11, &v16);
}

void ___ZN3ims4Call4pullERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS_10CallConfigE_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  IPTelephonyManager::getCallManager(v0, &v2);
  IMSCallOptions::IMSCallOptions(&v1, (v0 + 32));
}

void sub_1E4EEDD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  IMSCallOptions::~IMSCallOptions(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t ims::CallHandle::setCallIdBlocking(uint64_t this, char a2, char a3)
{
  *(this + 24) = a3;
  *(this + 25) = a2;
  return this;
}

void ims::Call::ring(ims::Call *this)
{
  memset(&v3, 0, sizeof(v3));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 4), *(this + 5));
  }

  else
  {
    v3 = *(this + 32);
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1174405120;
  v1[2] = ___ZNK3ims4Call4ringEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_88;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  IMSClientManager::callOnImsQueue(v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEDEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims4Call4ringEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  IMSCallManager::ringCall(v2, v3);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEDF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::Call::refresh(ims::Call *this, char a2)
{
  memset(&v6, 0, sizeof(v6));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 4), *(this + 5));
  }

  else
  {
    v6 = *(this + 32);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims4Call7refreshEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_91;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEE0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims4Call7refreshEb_block_invoke(unsigned __int8 *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, (a1 + 32));
  IMSCallManager::refreshCall(v2, v3, a1[56]);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEE170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::Call::hold(ims::Call *this)
{
  memset(&v3, 0, sizeof(v3));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 4), *(this + 5));
  }

  else
  {
    v3 = *(this + 32);
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1174405120;
  v1[2] = ___ZNK3ims4Call4holdEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_94_2;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  IMSClientManager::callOnImsQueue(v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEE2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims4Call4holdEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  IMSCallManager::deactivateCall(v2, v3);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEE360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::Call::resume(ims::Call *this)
{
  memset(&v3, 0, sizeof(v3));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(this + 4), *(this + 5));
  }

  else
  {
    v3 = *(this + 32);
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1174405120;
  v1[2] = ___ZNK3ims4Call6resumeEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_97_0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  IMSClientManager::callOnImsQueue(v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEE494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims4Call6resumeEv_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  IMSCallManager::activateCall(v2, v3);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEE550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::setTextMediaSessionMode(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  memset(&v6, 0, sizeof(v6));
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims10CallHandle23setTextMediaSessionModeENS_20TextMediaSessionModeE_block_invoke;
  v3[3] = &__block_descriptor_tmp_100;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEE690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims10CallHandle23setTextMediaSessionModeENS_20TextMediaSessionModeE_block_invoke(int *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, (a1 + 8));
  IMSCallManager::setTextMediaSessionMode(v2, v3, a1[14]);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEE750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *ims::EmergencyCall::EmergencyCall(void *a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  ims::CallHandle::CallHandle(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5EDACE0;
  return a1;
}

void sub_1E4EEE818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::EmergencyCall::~EmergencyCall(void **this)
{
  ims::CallHandle::~CallHandle(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CallHandle::hangup(uint64_t a1, int *a2)
{
  memset(&v16, 0, sizeof(v16));
  std::string::basic_string[abi:ne200100]<0>(&v16, "UserTriggered");
  v4 = *a2;
  if (*a2 > 3)
  {
    switch(v4)
    {
      case 4:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 16;
          v8 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 16;
          v8 = &v16;
        }

        *&v8->__r_.__value_.__l.__data_ = *"DeferToSecondary";
        v11 = &v8->__r_.__value_.__s.__data_[16];
        break;
      case 5:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 14;
          v10 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 14;
          v10 = &v16;
        }

        qmemcpy(v10, "AvoidVoicemail", 14);
        v11 = &v10->__r_.__value_.__s.__data_[14];
        break;
      case 6:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 7;
          v6 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 7;
          v6 = &v16;
        }

        qmemcpy(v6, "Blocked", 7);
        v11 = &v6->__r_.__value_.__s.__data_[7];
        break;
      default:
        goto LABEL_33;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 12;
          v7 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 12;
          v7 = &v16;
        }

        qmemcpy(v7, "DoNotDisturb", 12);
        v11 = &v7->__r_.__value_.__s.__data_[12];
        break;
      case 2:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 19;
          v9 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 19;
          v9 = &v16;
        }

        qmemcpy(v9, "CallWaitingDisabled", 19);
        v11 = &v9->__r_.__value_.__s.__data_[19];
        break;
      case 3:
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          v16.__r_.__value_.__l.__size_ = 5;
          v5 = v16.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v16.__r_.__value_.__s + 23) = 5;
          v5 = &v16;
        }

        qmemcpy(v5, "SRVCC", 5);
        v11 = &v5->__r_.__value_.__s.__data_[5];
        break;
      default:
        goto LABEL_33;
    }
  }

  *v11 = 0;
LABEL_33:
  memset(&v15, 0, sizeof(v15));
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___ZNK3ims10CallHandle6hangupERKNS_13CallEndReasonE_block_invoke;
  v12[3] = &__block_descriptor_tmp_103_0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v15;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  IMSClientManager::callOnImsQueue(v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}