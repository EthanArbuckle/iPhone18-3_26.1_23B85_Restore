void sub_1E4F4FE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate22handleForceLTEFallbackEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 13))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleTransferEvent(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 11);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleTransferEvent callback for ", 45);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate19handleTransferEventEb_block_invoke;
      block[3] = &__block_descriptor_tmp_147_0;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F501C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate19handleTransferEventEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 14))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleRegistrationStateChanged(uint64_t a1, int *a2)
{
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 != (a1 + 72))
  {
    v4 = *a2;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleRegistrationStateChanged callback for ", 56);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = v2[11];
      v6 = v2[12];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v2[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate30handleRegistrationStateChangedERKN3ims17RegistrationStateE_block_invoke;
      block[3] = &__block_descriptor_tmp_149;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v4;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F5055C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate30handleRegistrationStateChangedERKN3ims17RegistrationStateE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 2))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IMSWrapperDelegate::handleRegistrationActive(IMSWrapperDelegate *this, const ims::RegistrationActiveInfo *a2)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  LODWORD(v26[0]) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v26 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *(v26 + 8) = *(a2 + 8);
    *(&v26[1] + 1) = *(a2 + 3);
  }

  memset(v27, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v27, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v27[1], *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v27[1] = *(a2 + 56);
  }

  LODWORD(v28) = *(a2 + 20);
  v4 = *(this + 8);
  if (v4 != (this + 72))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "ims.client");
      v20[0] = 0;
      v23 = 0;
      v5 = ims::debug(v24, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleRegistrationActive callback for ", 50);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v4 + 7);
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

      v7 = *(v4 + 11);
      v6 = *(v4 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v4 + 10);
      v19 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate24handleRegistrationActiveERKN3ims22RegistrationActiveInfoE_block_invoke;
      block[3] = &__block_descriptor_tmp_151;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v26[0];
      if (SHIBYTE(v26[1]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *(&v26[0] + 1), *&v26[1]);
      }

      else
      {
        v15 = *(v26 + 8);
      }

      memset(v16, 0, sizeof(v16));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v16, v27[0].__r_.__value_.__l.__data_, v27[0].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v27[0].__r_.__value_.__l.__size_ - v27[0].__r_.__value_.__r.__words[0]) >> 3));
      if (SHIBYTE(v27[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v27[1].__r_.__value_.__l.__data_, v27[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v27[1];
      }

      v18 = v28;
      IMSClientManager::callOnDestinationQueue(&v19, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v24[0] = v16;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (this + 72));
  }

  if (SHIBYTE(v27[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[1].__r_.__value_.__l.__data_);
  }

  v24[0] = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
  if (SHIBYTE(v26[1]) < 0)
  {
    operator delete(*(&v26[0] + 1));
  }
}

void sub_1E4F50AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  a42 = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a42);
  if (*(v47 - 161) < 0)
  {
    operator delete(*(v47 - 184));
  }

  _Unwind_Resume(a1);
}

void ___ZN18IMSWrapperDelegate24handleRegistrationActiveERKN3ims22RegistrationActiveInfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 3))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c34_ZTSN3ims22RegistrationActiveInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
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
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v6;
  }

  *(a1 + 128) = *(a2 + 128);
}

void sub_1E4F50D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c34_ZTSN3ims22RegistrationActiveInfoE(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleRegistrationEvent(uint64_t a1, __int128 *a2)
{
  v22 = *a2;
  v23 = *(a2 + 4);
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 != (a1 + 72))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v4 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Dispatching handleRegistrationEvent callback for ", 49);
      *(v4 + 17) = 0;
      (*(*v4 + 32))(v4, v2 + 7);
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v5 = v2[11];
      v6 = v2[12];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v2[10];
      v15 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1174405120;
      v11[2] = ___ZN18IMSWrapperDelegate23handleRegistrationEventERKN3ims16RegistrationInfoE_block_invoke;
      v11[3] = &__block_descriptor_tmp_155_1;
      v11[4] = v5;
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v22;
      v14 = v23;
      IMSClientManager::callOnDestinationQueue(&v15, v11);
      if (v7)
      {
        dispatch_release(v7);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
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
  }
}

void sub_1E4F51060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v35)
    {
LABEL_3:
      if (!v34)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v34);
      goto LABEL_8;
    }
  }

  else if (!v35)
  {
    goto LABEL_3;
  }

  dispatch_release(v35);
  if (!v34)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate23handleRegistrationEventERKN3ims16RegistrationInfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 4))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleInitialized(IMSWrapperDelegate *this, int a2)
{
  v2 = *(this + 8);
  v3 = this + 72;
  if (v2 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleInitialized callback for ", 43);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate17handleInitializedEj_block_invoke;
      block[3] = &__block_descriptor_tmp_159;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F513F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate17handleInitializedEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 7))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleUninitialized(IMSWrapperDelegate *this, int a2)
{
  v2 = *(this + 8);
  v3 = this + 72;
  if (v2 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleUninitialized callback for ", 45);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate19handleUninitializedEj_block_invoke;
      block[3] = &__block_descriptor_tmp_163_0;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F51790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate19handleUninitializedEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 8))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handlePdnReset(IMSWrapperDelegate *this)
{
  v1 = *(this + 8);
  v2 = this + 72;
  if (v1 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handlePdnReset callback for ", 40);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate14handlePdnResetEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_167_1;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F51B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate14handlePdnResetEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 10))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleStateDump(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 64);
  v4 = (a1 + 72);
  if (v3 != (a1 + 72))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleStateDump callback for ", 41);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate15handleStateDumpERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_169;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F51F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate15handleStateDumpERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 11))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void sub_1E4F52124(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
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

void IMSWrapperDelegate::handleAuthenticate(IMSWrapperDelegate *this, const ims::aka::Request *a2)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  ims::aka::Request::Request(&v32, a2);
  v3 = *(this + 8);
  v4 = this + 72;
  if (v3 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v30, "ims.client");
      v26[0] = 0;
      v29 = 0;
      v5 = ims::debug(v30, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleAuthenticate callback for ", 44);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      v6 = *(v3 + 11);
      v7 = *(v3 + 12);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v3 + 10);
      v25 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate18handleAuthenticateERKN3ims3aka7RequestE_block_invoke;
      v12[3] = &__block_descriptor_tmp_171_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      ims::aka::Request::Request(&v14, &v32);
      IMSClientManager::callOnDestinationQueue(&v25, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = *(v3 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v3 + 2);
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (*(&v38 + 1))
  {
    *&v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  if (v37)
  {
    *(&v37 + 1) = v37;
    operator delete(v37);
  }

  if (*(&v35 + 1))
  {
    *&v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  if (*(&v32 + 1))
  {
    *&v33 = *(&v32 + 1);
    operator delete(*(&v32 + 1));
  }
}

void ___ZN18IMSWrapperDelegate18handleAuthenticateERKN3ims3aka7RequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 12))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

ims::aka::Request *__copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c22_ZTSN3ims3aka7RequestE(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return ims::aka::Request::Request((a1 + 6), (a2 + 6));
}

void sub_1E4F52650(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c22_ZTSN3ims3aka7RequestE(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[5];
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ims::aka::Request::~Request(ims::aka::Request *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

void IMSWrapperDelegate::handleClientError(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 64);
  if (v5 != (a1 + 72))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleClientError callback for ", 43);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate17handleClientErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_175_2;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 72));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F52A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate17handleClientErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 14))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleRegistrationIdentities(uint64_t a1, uint64_t *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<ims::RegistrationIdentity>::__init_with_size[abi:ne200100]<ims::RegistrationIdentity*,ims::RegistrationIdentity*>(&v21, *a2, a2[1], (a2[1] - *a2) >> 5);
  v3 = *(a1 + 64);
  if (v3 != (a1 + 72))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "ims.client");
      v15[0] = 0;
      v18 = 0;
      v4 = ims::debug(v19, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Dispatching handleRegistrationIdentities callback for ", 54);
      *(v4 + 17) = 0;
      (*(*v4 + 32))(v4, v3 + 7);
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v18 == 1 && v17 < 0)
      {
        operator delete(__p);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v5 = v3[11];
      v6 = v3[12];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = v3[10];
      v14 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1174405120;
      v11[2] = ___ZN18IMSWrapperDelegate28handleRegistrationIdentitiesERKNSt3__16vectorIN3ims20RegistrationIdentityENS0_9allocatorIS3_EEEE_block_invoke;
      v11[3] = &__block_descriptor_tmp_177_1;
      v11[4] = v5;
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      memset(v13, 0, sizeof(v13));
      std::vector<ims::RegistrationIdentity>::__init_with_size[abi:ne200100]<ims::RegistrationIdentity*,ims::RegistrationIdentity*>(v13, v21, v22, (v22 - v21) >> 5);
      IMSClientManager::callOnDestinationQueue(&v14, v11);
      if (v7)
      {
        dispatch_release(v7);
      }

      v19[0] = v13;
      std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](v19);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

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
    }

    while (v9 != (a1 + 72));
  }

  v19[0] = &v21;
  std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](v19);
}

void sub_1E4F52E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a29 = (v34 - 128);
  std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void ___ZN18IMSWrapperDelegate28handleRegistrationIdentitiesERKNSt3__16vectorIN3ims20RegistrationIdentityENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 15))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c68_ZTSNSt3__16vectorIN3ims20RegistrationIdentityENS_9allocatorIS2_EEEE(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return std::vector<ims::RegistrationIdentity>::__init_with_size[abi:ne200100]<ims::RegistrationIdentity*,ims::RegistrationIdentity*>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 5);
}

void sub_1E4F53028(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__18weak_ptrIN3ims18StackEventDelegateEEE48c68_ZTSNSt3__16vectorIN3ims20RegistrationIdentityENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v3 = (a1 + 48);
  std::vector<ims::RegistrationIdentity>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleRegistrationAllowed(IMSWrapperDelegate *this)
{
  v1 = *(this + 8);
  v2 = this + 72;
  if (v1 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleRegistrationAllowed callback for ", 51);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate25handleRegistrationAllowedEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_181_0;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F532A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate25handleRegistrationAllowedEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 13))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleNewInitialRegistration(IMSWrapperDelegate *this)
{
  v1 = *(this + 8);
  v2 = this + 72;
  if (v1 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleNewInitialRegistration callback for ", 54);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate28handleNewInitialRegistrationEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_185;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F5362C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate28handleNewInitialRegistrationEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 16))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleKeepAliveCompletion(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 8);
  v3 = this + 72;
  if (v2 != this + 72)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleKeepAliveCompletion callback for ", 51);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate25handleKeepAliveCompletionEb_block_invoke;
      block[3] = &__block_descriptor_tmp_189;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F539C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate25handleKeepAliveCompletionEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 17))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMessageSendFailure(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 14);
  v3 = this + 120;
  if (v2 != this + 120)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMessageSendFailure callback for ", 50);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate24handleMessageSendFailureEb_block_invoke;
      block[3] = &__block_descriptor_tmp_191;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F53D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate24handleMessageSendFailureEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 2))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IMSWrapperDelegate::handleMessageSendFailure(IMSWrapperDelegate *this, const ims::MessageResult *a2)
{
  memset(v28, 0, 58);
  v26 = *a2;
  v27 = *(a2 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28[1], *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *&v28[1] = *(a2 + 8);
    *&v28[9] = *(a2 + 3);
  }

  v28[13] = *(a2 + 16);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v28[17], *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *&v28[17] = *(a2 + 40);
    *&v28[25] = *(a2 + 7);
  }

  v4 = *(this + 14);
  if (v4 != (this + 120))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "ims.client");
      v20[0] = 0;
      v23 = 0;
      v5 = ims::debug(v24, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMessageSendFailure callback for ", 50);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v4 + 7);
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

      v6 = *(v4 + 11);
      v7 = *(v4 + 12);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v4 + 10);
      v19 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate24handleMessageSendFailureERKN3ims13MessageResultE_block_invoke;
      v12[3] = &__block_descriptor_tmp_192;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v26;
      v15 = v27;
      if (SHIBYTE(v28[12]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *&v28[1], *&v28[5]);
      }

      else
      {
        v16 = *&v28[1];
      }

      v17 = v28[13];
      if (SHIBYTE(v28[28]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *&v28[17], *&v28[21]);
      }

      else
      {
        v18 = *&v28[17];
      }

      IMSClientManager::callOnDestinationQueue(&v19, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (this + 120));
  }

  if (SHIBYTE(v28[28]) < 0)
  {
    operator delete(*&v28[17]);
  }

  if (SHIBYTE(v28[12]) < 0)
  {
    operator delete(*&v28[1]);
  }
}

void sub_1E4F54240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18IMSWrapperDelegate24handleMessageSendFailureERKN3ims13MessageResultE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 3))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE48c25_ZTSN3ims13MessageResultE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v5;
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }
}

void sub_1E4F544A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE48c25_ZTSN3ims13MessageResultE(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ims::MessageResult::~MessageResult(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void IMSWrapperDelegate::handleMessageSendSuccess(IMSWrapperDelegate *this)
{
  v1 = *(this + 14);
  v2 = this + 120;
  if (v1 != this + 120)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleMessageSendSuccess callback for ", 50);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate24handleMessageSendSuccessEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_196_0;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F54798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate24handleMessageSendSuccessEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 4))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMessageSendSuccess(IMSWrapperDelegate *this, const ims::MessageResult *a2)
{
  memset(v28, 0, 58);
  v26 = *a2;
  v27 = *(a2 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28[1], *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *&v28[1] = *(a2 + 8);
    *&v28[9] = *(a2 + 3);
  }

  v28[13] = *(a2 + 16);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v28[17], *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *&v28[17] = *(a2 + 40);
    *&v28[25] = *(a2 + 7);
  }

  v4 = *(this + 14);
  if (v4 != (this + 120))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "ims.client");
      v20[0] = 0;
      v23 = 0;
      v5 = ims::debug(v24, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMessageSendSuccess callback for ", 50);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v4 + 7);
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

      v6 = *(v4 + 11);
      v7 = *(v4 + 12);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v4 + 10);
      v19 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate24handleMessageSendSuccessERKN3ims13MessageResultE_block_invoke;
      v12[3] = &__block_descriptor_tmp_199;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v26;
      v15 = v27;
      if (SHIBYTE(v28[12]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *&v28[1], *&v28[5]);
      }

      else
      {
        v16 = *&v28[1];
      }

      v17 = v28[13];
      if (SHIBYTE(v28[28]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *&v28[17], *&v28[21]);
      }

      else
      {
        v18 = *&v28[17];
      }

      IMSClientManager::callOnDestinationQueue(&v19, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (this + 120));
  }

  if (SHIBYTE(v28[28]) < 0)
  {
    operator delete(*&v28[17]);
  }

  if (SHIBYTE(v28[12]) < 0)
  {
    operator delete(*&v28[1]);
  }
}

void sub_1E4F54C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18IMSWrapperDelegate24handleMessageSendSuccessERKN3ims13MessageResultE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 5))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMessageReceived(IMSWrapperDelegate *this, const ims::MessageInfo *a2)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  ims::MessageInfo::MessageInfo(&v32, a2);
  v3 = *(this + 14);
  v4 = this + 120;
  if (v3 != this + 120)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v30, "ims.client");
      v26[0] = 0;
      v29 = 0;
      v5 = ims::debug(v30, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMessageReceived callback for ", 47);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      v6 = *(v3 + 11);
      v7 = *(v3 + 12);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v3 + 10);
      v25 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate21handleMessageReceivedERKN3ims11MessageInfoE_block_invoke;
      block[3] = &__block_descriptor_tmp_201_0;
      block[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      ims::MessageInfo::MessageInfo(&v14, &v32);
      IMSClientManager::callOnDestinationQueue(&v25, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = *(v3 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v3 + 2);
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (*(&v39 + 1))
  {
    *&v40 = *(&v39 + 1);
    operator delete(*(&v39 + 1));
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*(&v36 + 1));
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(*(&v33 + 1));
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }
}

void ___ZN18IMSWrapperDelegate21handleMessageReceivedERKN3ims11MessageInfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 6))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

std::string *__copy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE48c23_ZTSN3ims11MessageInfoE(std::string *a1, void *a2)
{
  v2 = a2[5];
  a1[1].__r_.__value_.__l.__size_ = a2[4];
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return ims::MessageInfo::MessageInfo(a1 + 2, (a2 + 6));
}

void sub_1E4F552F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c51_ZTSNSt3__18weak_ptrIN3ims20MessageEventDelegateEEE48c23_ZTSN3ims11MessageInfoE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

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

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ims::MessageInfo::~MessageInfo(ims::MessageInfo *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

const void **IMSWrapperDelegate::handleXcapRequestCompletion(uint64_t a1, const void **a2)
{
  v23[0] = 0;
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(v23, a2);
  v3 = *(a1 + 160);
  v4 = (a1 + 168);
  if (v3 != (a1 + 168))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v21, "ims.client");
      v17[0] = 0;
      v20 = 0;
      v5 = ims::debug(v21, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleXcapRequestCompletion callback for ", 53);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v16 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1174405120;
      v13[2] = ___ZN18IMSWrapperDelegate27handleXcapRequestCompletionEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
      v13[3] = &__block_descriptor_tmp_203;
      v13[4] = v6;
      v14 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v23[0];
      if (v23[0])
      {
        CFRetain(v23[0]);
      }

      IMSClientManager::callOnDestinationQueue(&v16, v13);
      if (v8)
      {
        dispatch_release(v8);
      }

      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v15);
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v23);
}

void sub_1E4F55684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v34 + 48));
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
LABEL_8:
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v35 - 112));
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v32);
      goto LABEL_8;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  dispatch_release(v33);
  if (!v32)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate27handleXcapRequestCompletionEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = **v5;
        if (v7)
        {
          v5 = v7[1];
        }

        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v8, (a1 + 48));
        (*(*v5 + 2))(v5, &v8);
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v8);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F557EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

const void **__copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17XcapEventDelegateEEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef((a1 + 48), (a2 + 48));
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17XcapEventDelegateEEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void non-virtual thunk toIMSWrapperDelegate::~IMSWrapperDelegate(IMSWrapperDelegate *this)
{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 8));
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 16));
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 48));
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 48));

  JUMPOUT(0x1E69235B0);
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 56));
}

{
  IMSWrapperDelegate::~IMSWrapperDelegate((this - 56));

  JUMPOUT(0x1E69235B0);
}

uint64_t DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>::~DelegateRecord(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

std::string *ims::CallIncomingInfo::CallIncomingInfo(std::string *this, const ims::CallIncomingInfo *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  LOWORD(this[4].__r_.__value_.__l.__data_) = *(a2 + 48);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  this[5].__r_.__value_.__l.__size_ = *(a2 + 16);
  this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v9 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v9;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v10;
  }

  return this;
}

void sub_1E4F55BE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

ims::aka::Request *ims::aka::Request::Request(ims::aka::Request *this, const ims::aka::Request *a2)
{
  v4 = *a2;
  *(this + 1) = 0;
  *this = v4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 32, *(a2 + 4), *(a2 + 5), *(a2 + 5) - *(a2 + 4));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 56, *(a2 + 7), *(a2 + 8), *(a2 + 8) - *(a2 + 7));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 80, *(a2 + 10), *(a2 + 11), *(a2 + 11) - *(a2 + 10));
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 104, *(a2 + 13), *(a2 + 14), *(a2 + 14) - *(a2 + 13));
  *(this + 32) = *(a2 + 32);
  return this;
}

void sub_1E4F55D48(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[5] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[2] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ims::RegistrationIdentity>::__init_with_size[abi:ne200100]<ims::RegistrationIdentity*,ims::RegistrationIdentity*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ims::RegistrationIdentity>>(result, a4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::string *ims::MessageInfo::MessageInfo(std::string *this, const ims::MessageInfo *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[5], *(a2 + 15), *(a2 + 16), *(a2 + 16) - *(a2 + 15));
  return this;
}

void sub_1E4F55FD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DelegateRecord<std::shared_ptr<ims::XcapEventDelegate>>>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void INTNasClient::~INTNasClient(INTNasClient *this)
{
  *this = &unk_1F5EE00D8;
  *(this + 7) = &unk_1F5EE0190;
  *(this + 24) = &unk_1F5EE01F0;
  *(this + 25) = &unk_1F5EE0220;
  std::__tree<unsigned int>::destroy(this + 328, *(this + 42));

  IBINasClient::~IBINasClient(this);
}

{
  INTNasClient::~INTNasClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toINTNasClient::~INTNasClient(INTNasClient *this)
{
  INTNasClient::~INTNasClient((this - 56));
}

{
  INTNasClient::~INTNasClient((this - 192));
}

{
  INTNasClient::~INTNasClient((this - 200));
}

{
  INTNasClient::~INTNasClient((this - 56));

  JUMPOUT(0x1E69235B0);
}

{
  INTNasClient::~INTNasClient((this - 192));

  JUMPOUT(0x1E69235B0);
}

{
  INTNasClient::~INTNasClient((this - 200));

  JUMPOUT(0x1E69235B0);
}

void INTNasClient::handleClientStarted(INTNasClient *this)
{
  IBINasClient::handleClientStarted(this);
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 26);
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1174405120;
  v4[2] = ___ZN12INTNasClient19handleClientStartedEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_49;
  v4[4] = this;
  v4[5] = v3;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v4;
  ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(this + 33), 696352768, &v6);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1E4F563F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN12INTNasClient19handleClientStartedEv_block_invoke(void *a1, const unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        memset(v26, 0, sizeof(v26));
        AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::ARI_IBINetDcUacBarringInfoIndCb_SDK(v26, a2);
        if (AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::unpack(v26))
        {
          std::string::basic_string[abi:ne200100]<0>(v24, "int.nas");
          v20[0] = 0;
          v23 = 0;
          v8 = ims::error(v24, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "failed to extract UAC indication params", 39);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          if (v23 == 1 && v22 < 0)
          {
            operator delete(__p);
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }
        }

        else
        {
          v9 = *v27;
          v10 = *v28 == 1;
          v11 = *v29 == 1;
          v12 = **(&v30 + 1) == 1;
          std::string::basic_string[abi:ne200100]<0>(v24, "int.nas");
          v20[0] = 0;
          v23 = 0;
          v13 = ims::debug(v24, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "received UacBarringInd for instance ", 36);
          *(v13 + 17) = 0;
          MEMORY[0x1E6923350](*(v13 + 8), v9);
          *(v13 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": services ", 11);
          *(v13 + 17) = 0;
          std::string::basic_string[abi:ne200100]<0>(&v16, ",");
          v14 = (v10 | (4 * v11) | (v12 << 6));
          BambiServices::namesForServiceMask(v14, v18);
          (*(*v13 + 32))(v13, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " barred", 7);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v19 < 0)
          {
            operator delete(v18[0]);
          }

          if (v17 < 0)
          {
            operator delete(v16);
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(__p);
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }

          INTNasClient::updateBarredServices(v5, v9, v14);
        }

        MEMORY[0x1E6922BF0](v26);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return 0;
}

void sub_1E4F56710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  MEMORY[0x1E6922BF0](&a37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12IBINasClientEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12IBINasClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = 0;
  ice::detail::wrapCallback<int>(*a3, &v4);
  aBlock = v4;
  v4 = 0;
  ice::Client::regIndicationInternal();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_1E4F5684C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a10)
  {
    _Block_release(a10);
  }

  _Unwind_Resume(exception_object);
}

void INTNasClient::updateBarredServices(INTNasClient *this, unsigned int a2, ims::Services *a3)
{
  v61 = a2;
  v5 = std::string::basic_string[abi:ne200100]<0>(v59, "int.nas");
  v55[0] = 0;
  v58 = 0;
  v6 = ims::debug(v5, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "updateBarredServices: instance=", 31);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), v61);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ", mask=", 7);
  *(v6 + 17) = 0;
  ims::Services::namesForMask(a3, &v54);
  (*(*v6 + 32))(v6, &v54);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v58 == 1 && v57 < 0)
  {
    operator delete(v56);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v7 = (a3 & 0x45);
  if (v7)
  {
    v8 = *(this + 42);
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = (this + 336);
    do
    {
      v10 = v8[7];
      v11 = v10 >= v61;
      v12 = v10 < v61;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *&v8[2 * v12];
    }

    while (v8);
    if (v9 != (this + 336) && v61 >= v9[7])
    {
      v13 = v9[8];
    }

    else
    {
LABEL_17:
      v13 = 0;
    }

    v14 = std::string::basic_string[abi:ne200100]<0>(v59, "int.nas");
    v46[0] = 0;
    v49 = 0;
    v15 = ims::debug(v14, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "    old barred services=", 24);
    *(v15 + 17) = 0;
    ims::Services::namesForMask(v13, &v54);
    (*(*v15 + 32))(v15, &v54);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(__p);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    v59[0] = &v61;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 328, &v61) + 8) = v7;
    v16 = std::string::basic_string[abi:ne200100]<0>(v59, "int.nas");
    v42[0] = 0;
    v45 = 0;
    v17 = ims::debug(v16, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "    notifyDelegates for curretly barred services=", 49);
    *(v17 + 17) = 0;
    ims::Services::namesForMask(v7, &v54);
    (*(*v17 + 32))(v17, &v54);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    v18 = (v13 & ~v7);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN12INTNasClient20updateBarredServicesEjj_block_invoke;
    block[3] = &__block_descriptor_tmp_8_3;
    block[4] = this;
    v36 = v61;
    v37 = 100;
    v38 = 0;
    v39 = 0;
    v40 = v7;
    v41 = 0;
    dispatch_async(*(this + 6), block);
    if (v18)
    {
      v19 = std::string::basic_string[abi:ne200100]<0>(v59, "int.nas");
      v31[0] = 0;
      v34 = 0;
      v20 = ims::debug(v19, v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "    notifyDelegates for newly alleviated services=", 50);
      *(v20 + 17) = 0;
      ims::Services::namesForMask(v18, &v54);
      (*(*v20 + 32))(v20, &v54);
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (v34 == 1 && v33 < 0)
      {
        operator delete(v32);
      }

      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      v21 = *(this + 6);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1174405120;
      v24[2] = ___ZN12INTNasClient20updateBarredServicesEjj_block_invoke_10;
      v24[3] = &__block_descriptor_tmp_13_1;
      v24[4] = this;
      v25 = v61;
      v26 = 100;
      v27 = 0;
      v28 = 0;
      v29 = v18;
      v30 = 0;
      dispatch_async(v21, v24);
    }
  }

  else
  {
    v22 = std::string::basic_string[abi:ne200100]<0>(v59, "int.nas");
    v50[0] = 0;
    v53 = 0;
    v23 = ims::debug(v22, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "    no-op: mask is none", 23);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v53 == 1 && v52 < 0)
    {
      operator delete(v51);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }
  }
}

void sub_1E4F56EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, char a54)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_44c31_ZTSN18BambiAccessBarring4InfoE(uint64_t result, uint64_t a2)
{
  *(result + 44) = 100;
  *(result + 48) = 0;
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 60) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 56) = *(a2 + 56);
  *(result + 60) = *(a2 + 60);
  return result;
}

uint64_t INTNasClient::handleUacAccessCheckResp(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v86 = 0u;
  v87 = 0u;
  memset(v85, 0, sizeof(v85));
  v4 = AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::ARI_IBINetDcUacAccessCheckRspCb_SDK(v85, a1);
  if (AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::unpack(v4))
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(v83, "int.nas");
    v79[0] = 0;
    v82 = 0;
    v6 = ims::error(v5, v79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "failed to extract UAC response params", 37);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v82 == 1 && v81 < 0)
    {
      v7 = v80;
LABEL_12:
      operator delete(v7);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = *a3;
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v83, "int.nas");
    v75[0] = 0;
    v78 = 0;
    v15 = ims::error(v14, v75);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "no NAS client object", 20);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v78 == 1 && v77 < 0)
    {
      v7 = __p;
      goto LABEL_12;
    }

LABEL_13:
    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    return MEMORY[0x1E6922BC0](v85);
  }

  v11 = v10;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = *v86;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = *v86;
  }

  v16 = **(&v87 + 1);
  if (v16 > 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1E5176DC0[v16];
  }

  if (*v87 == 2)
  {
    v21 = std::string::basic_string[abi:ne200100]<0>(v83, "int.nas");
    v53[0] = 0;
    v56 = 0;
    v22 = ims::warn(v21, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "received UacAccessCheckResp for instance ", 41);
    *(v22 + 17) = 0;
    MEMORY[0x1E6923350](*(v22 + 8), v13);
    *(v22 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ": services ", 11);
    *(v22 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(v67, ",");
    BambiServices::namesForServiceMask(v17, v69);
    (*(*v22 + 32))(v22, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " barred", 7);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v56 == 1 && v55 < 0)
    {
      operator delete(v54);
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    v23 = *(v11 + 6);
    if (v23)
    {
      dispatch_retain(*(v11 + 6));
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 1174405120;
    v43[2] = ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke_22;
    v43[3] = &__block_descriptor_tmp_25_0;
    v43[4] = v11;
    v44 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v45 = v11;
      v46 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v45 = v11;
      v46 = 0;
    }

    v47 = v13;
    v48 = 100;
    v49 = 0;
    v50 = 0;
    v51 = v17;
    v52 = 0;
    dispatch_async(v23, v43);
    if (v23)
    {
      dispatch_release(v23);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    v27 = v44;
    if (!v44)
    {
      goto LABEL_63;
    }
  }

  else if (*v87 == 1)
  {
    v18 = std::string::basic_string[abi:ne200100]<0>(v83, "int.nas");
    v71[0] = 0;
    v74 = 0;
    v19 = ims::debug(v18, v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received UacAccessCheckResp for instance ", 41);
    *(v19 + 17) = 0;
    MEMORY[0x1E6923350](*(v19 + 8), v13);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), ": services ", 11);
    *(v19 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(v67, ",");
    BambiServices::namesForServiceMask(v17, v69);
    (*(*v19 + 32))(v19, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " allowed", 8);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (v74 == 1 && v73 < 0)
    {
      operator delete(v72);
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    v20 = *(v11 + 6);
    if (v20)
    {
      dispatch_retain(*(v11 + 6));
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 1174405120;
    v57[2] = ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke;
    v57[3] = &__block_descriptor_tmp_20_3;
    v57[4] = v11;
    v58 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v59 = v11;
      v60 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v59 = v11;
      v60 = 0;
    }

    v61 = v13;
    v62 = 100;
    v63 = 0;
    v64 = 0;
    v65 = v17;
    v66 = 0;
    dispatch_async(v20, v57);
    if (v20)
    {
      dispatch_release(v20);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v27 = v58;
    if (!v58)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v24 = std::string::basic_string[abi:ne200100]<0>(v83, "int.nas");
    v39[0] = 0;
    v42 = 0;
    v25 = ims::error(v24, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "received UacAccessCheckResp for instance ", 41);
    *(v25 + 17) = 0;
    MEMORY[0x1E6923350](*(v25 + 8), v13);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ": UAC check returned an unknown error", 37);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    v26 = *(v11 + 6);
    if (v26)
    {
      dispatch_retain(*(v11 + 6));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke_27;
    block[3] = &__block_descriptor_tmp_30_2;
    block[4] = v11;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v31 = v11;
      v32 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v31 = v11;
      v32 = 0;
    }

    v33 = v13;
    v34 = 100;
    v35 = 0;
    v36 = 0;
    v37 = v17;
    v38 = 0;
    dispatch_async(v26, block);
    if (v26)
    {
      dispatch_release(v26);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v27 = v30;
    if (!v30)
    {
      goto LABEL_63;
    }
  }

  std::__shared_weak_count::__release_weak(v27);
LABEL_63:
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return MEMORY[0x1E6922BC0](v85);
}

void sub_1E4F57890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a48 == 1 && a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v66 - 145) < 0)
  {
    operator delete(*(v66 - 168));
  }

  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  MEMORY[0x1E6922BC0](v66 - 144);
  _Unwind_Resume(a1);
}

void ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 32))
      {
        IMSNasClient::notifyDelegates(*(a1 + 48), *(a1 + 64), (a1 + 68), 0, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12INTNasClientEE48c40_ZTSNSt3__110shared_ptrI12INTNasClientEE68c31_ZTSN18BambiAccessBarring4InfoE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 68) = 100;
  *(result + 72) = 0;
  *(result + 76) = 0;
  *(result + 80) = 0;
  *(result + 84) = 0;
  *(result + 68) = *(a2 + 68);
  *(result + 72) = *(a2 + 72);
  *(result + 76) = *(a2 + 76);
  *(result + 80) = *(a2 + 80);
  *(result + 84) = *(a2 + 84);
  return result;
}

void __destroy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12INTNasClientEE48c40_ZTSNSt3__110shared_ptrI12INTNasClientEE68(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 32))
      {
        INTNasClient::updateBarredServices(*(a1 + 48), *(a1 + 64), *(a1 + 80));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void ___ZN12INTNasClient24handleUacAccessCheckRespEPhjNSt3__110shared_ptrI12IBINasClientEE_block_invoke_27(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 32))
      {
        IMSNasClient::notifyDelegates(*(a1 + 48), *(a1 + 64), (a1 + 68), 2, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t (*INTNasClient::callbackForRequest(INTNasClient *this, int a2))(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 679739392)
  {
    return INTNasClient::handleUacAccessCheckResp;
  }

  else
  {
    return IBINasClient::callbackForRequest(this, a2);
  }
}

void INTNasClient::reportCallStatus(uint64_t a1, int a2, int a3)
{
  v21 = a2;
  if (a3 == 3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(v8);
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  if (!a3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::ARI_IBINetDcUacAccessCheckReq_SDK(v8);
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "int.nas");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v8, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "INTNasClient::reportCallStatus: No Op", 37);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void *IBINasClient::logPrefix(IBINasClient *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IBINasClient: ", 14);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toIBINasClient::logPrefix(IBINasClient *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IBINasClient: ", 14);
  *(a2 + 17) = 0;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ___ZN12IBINasClient4sendIN6AriSdk33ARI_IBINetDcUacAccessCheckReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = a1[7];
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (v7 + 208));
        v10(a2, a3, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return 0;
}

void sub_1E4F5924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBINasClient4sendIN6AriSdk38ARI_IBISipMsgInjectToCpIMSTraceReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = a1[7];
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (v7 + 208));
        v10(a2, a3, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return 0;
}

void sub_1E4F5930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void INTSipLogger::~INTSipLogger(INTSipLogger *this)
{
  *this = &unk_1F5EE03E0;
  *(this + 17) = &unk_1F5EE0528;
  *(this + 21) = &unk_1F5EE0558;
  *(this + 22) = &unk_1F5EE0678;
  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(this + 30));

  IBISipLogger::~IBISipLogger(this);
}

{
  INTSipLogger::~INTSipLogger(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toINTSipLogger::~INTSipLogger(INTSipLogger *this)
{
  INTSipLogger::~INTSipLogger((this - 176));
}

{
  INTSipLogger::~INTSipLogger((this - 176));

  JUMPOUT(0x1E69235B0);
}

void INTSipLogger::logRegistrationError(INTSipLogger *this, uint64_t *a2, SipRegistrationNotification *a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    v8 = *(v6 + 4372);
  }

  else
  {
    v8 = 0;
  }

  INTSipLogger::logRegistrationStop(this, v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = a2[1];
  v10[0] = *a2;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  IBISipLogger::logRegistrationError(this, v10, a3);
}

void sub_1E4F59510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTSipLogger::logRegistrationStop(uint64_t this, unsigned int a2)
{
  v12 = a2;
  v2 = this + 240;
  v3 = *(this + 240);
  if (v3)
  {
    v4 = this;
    this += 232;
    v5 = v2;
    do
    {
      v6 = *(v3 + 28);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 && *(v5 + 28) <= a2 && *(v5 + 32) == 1)
    {
      *&v10[0] = &v12;
      *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this, a2) + 32) = 0;
      v9 = (*(*v4 + 64))(v4);
      (*(*v4 + 16))(v4, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Sending registration signaling status STOP for instance ", 56);
      *(v9 + 17) = 0;
      MEMORY[0x1E6923350](*(v9 + 8), v12);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::ARI_IBINetDcImsSignallingStatusInfoReq_SDK(v10);
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }
  }

  return this;
}

void sub_1E4F596FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922E80](va);
  _Unwind_Resume(a1);
}

void INTSipLogger::logRegistrationRequest(INTSipLogger *this, uint64_t *a2, uint64_t a3)
{
  if ((*(a3 + 112) & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = *(v5 + 4372);
    }

    else
    {
      v7 = 0;
    }

    INTSipLogger::logRegistrationStart(this, v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v8 = a2[1];
  v9[0] = *a2;
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  IBISipLogger::logRegistrationRequest(this, v9);
}

void sub_1E4F597CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTSipLogger::logRegistrationStart(uint64_t this, unsigned int a2)
{
  v2 = this;
  v11 = a2;
  v3 = *(this + 240);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = this + 240;
  do
  {
    v5 = *(v3 + 28);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == this + 240 || *(v4 + 28) > a2 || (*(v4 + 32) & 1) == 0)
  {
LABEL_10:
    *&v9[0] = &v11;
    *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 232, a2) + 32) = 1;
    v8 = (*(*v2 + 64))(v2);
    (*(*v2 + 16))(v2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Sending registration signaling status START for instance ", 57);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), v11);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::ARI_IBINetDcImsSignallingStatusInfoReq_SDK(v9);
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  return this;
}

void sub_1E4F599B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E6922E80](va);
  _Unwind_Resume(a1);
}

void INTSipLogger::logRegistrationSuccess(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = *(v3 + 4372);
  }

  else
  {
    v5 = 0;
  }

  INTSipLogger::logRegistrationStop(a1, v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4F59A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void INTSipLogger::logRegistrationStateChange(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  if (*a3)
  {
    if (*a3 != 1)
    {
      goto LABEL_17;
    }

    v4 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      v6 = *(v4 + 4372);
    }

    else
    {
      v6 = 0;
    }

    INTSipLogger::logRegistrationStart(a1, v6);
  }

  else
  {
    v7 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v8 = *(v7 + 4372);
    }

    else
    {
      v8 = 0;
    }

    INTSipLogger::logRegistrationStop(a1, v8);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_17:
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4F59B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double IBISipLogger::send<AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK,AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a2 + 26);
  if (v5 && (a2[224] & 1) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN12IBISipLogger4sendIN6AriSdk44ARI_IBINetDcImsSignallingStatusInfoRspcb_SDKENS1_42ARI_IBINetDcImsSignallingStatusInfoReq_SDKEEE9ImsResultRT0_b_block_invoke;
    v9[3] = &__block_descriptor_tmp_15;
    v9[4] = a2;
    v15 = 0;
    ice::detail::wrapCallback<void>(v9, &v15);
    LODWORD(v13) = 0;
    if (!*(a3 + 64))
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v10, 0, sizeof(v10));
    v11 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (v5 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v12 = v15;
    v15 = 0;
    ice::SendMsgBaseProxy::callback();
    if (v12)
    {
      _Block_release(v12);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    MEMORY[0x1E69226E0](v10);
  }

  else
  {
    v7 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No Baseband for architecture or Baseband is currently not available: skip send", 78);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

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

void sub_1E4F59D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 - 64);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x1E69226E0](va);
  v10 = *(v7 - 40);
  if (v10)
  {
    _Block_release(v10);
  }

  _Unwind_Resume(a1);
}

void INTSipLogger::logSipRequest(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v8 = (*(**a3 + 120))();
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 == 9)
  {
    v11 = v10 >= 0 ? v8 : *v8;
    if (!(*v11 ^ *"SUBSCRIBE" | (*(v11 + 8) ^ SipRequest::kMethodSubscribe[8])) && (a4 & 1) == 0)
    {
      v12 = SipMessage::header<SipEventHeader>(*a3);
      if (v12)
      {
        v13 = *(v12 + 127);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = v12[14];
        }

        if (v13 == 3)
        {
          v17 = v12[13];
          v15 = (v12 + 13);
          v16 = v17;
          v18 = v14 >= 0 ? v15 : v16;
          v19 = *v18;
          v20 = v18[2];
          if (v19 == SipRegistrationEventPackage::kPackageName && v20 == 103)
          {
            v23 = *a2;
            v22 = a2[1];
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v23)
            {
              v24 = *(v23 + 4372);
            }

            else
            {
              v24 = 0;
            }

            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            v29 = v24;
            v30 = &v29;
            *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 232, v24) + 33) = 1;
            INTSipLogger::logRegistrationStart(a1, v29);
          }
        }
      }
    }
  }

  v25 = a2[1];
  v28[0] = *a2;
  v28[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = a3[1];
  v27[0] = *a3;
  v27[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  IBISipLogger::logSipRequest(a1, v28, v27);
}

void sub_1E4F59FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void INTSipLogger::logSipResponse(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v8 = SipMessage::header<SipCSeqHeader>(*a3);
  v9 = (v8 + 64);
  if (!v8)
  {
    v9 = &ims::kEmptyString;
  }

  v10 = *(v9 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 1);
  }

  if (v10 != 9)
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
    v9 = *v9;
  }

  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = v12 == *"SUBSCRIBE" && v13 == SipRequest::kMethodSubscribe[8];
  if (!v14 || ((*(*a3 + 128) - 200) <= 0xFFFFFF9B ? (v15 = a4 == 0) : (v15 = 1), v15))
  {
LABEL_32:
    v24 = a2[1];
    v27[0] = *a2;
    v27[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = a3[1];
    v26[0] = *a3;
    v26[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    IBISipLogger::logSipResponse(a1, v27, v26);
  }

  v17 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v18 = *(v17 + 4372);
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
    if (!v16)
    {
LABEL_22:
      v28 = v18;
      v19 = *(a1 + 240);
      if (v19)
      {
        v20 = a1 + 240;
        do
        {
          v21 = *(v19 + 28);
          v22 = v21 >= v18;
          v23 = v21 < v18;
          if (v22)
          {
            v20 = v19;
          }

          v19 = *(v19 + 8 * v23);
        }

        while (v19);
        if (v20 != a1 + 240 && v18 >= *(v20 + 28) && *(v20 + 33) == 1)
        {
          v29 = &v28;
          *(std::__tree<std::__value_type<unsigned int,unsigned short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned short>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned short>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 232, v18) + 33) = 0;
          INTSipLogger::logRegistrationStop(a1, v28);
        }
      }

      goto LABEL_32;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  goto LABEL_22;
}

void sub_1E4F5A1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *INTSipLogger::logPrefix(INTSipLogger *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "INTSipLogger: ", 14);
  *(a2 + 17) = 0;
  return result;
}

uint64_t ___ZN12IBISipLogger4sendIN6AriSdk44ARI_IBINetDcImsSignallingStatusInfoRspcb_SDKENS1_42ARI_IBINetDcImsSignallingStatusInfoReq_SDKEEE9ImsResultRT0_b_block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  memset(v5, 0, sizeof(v5));
  AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK(v5, a2);
  if (AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::unpack(v5))
  {
    v3 = (*(*v2 + 32))(v2);
    (*(*v2 + 16))(v2, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Couldn't unpack ARI result", 26);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  return MEMORY[0x1E6922F00](v5);
}

void SipAuthScheme::SipAuthScheme(SipAuthScheme *this, const SipAuthScheme *a2)
{
  *this = &unk_1F5EE06C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  if (this != a2)
  {
    *(this + 10) = *(a2 + 10);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(this + 1, *(a2 + 3), 0);
  }
}

ImsOutStream *SipAuthScheme::encode(SipAuthScheme *this, ImsOutStream *a2, uint64_t a3)
{
  v6 = (*(*this + 40))(this);
  LoggableString::LoggableString(__p, v6);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = 0u;
  v15 = 0u;
  v16 = 1065353216;
  (*(*this + 8))(this, __p, a3);
  v7 = v15;
  if (v15)
  {
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        v9 = *(a2 + 1);
        v13.__r_.__value_.__s.__data_[0] = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v13, 1);
        *(a2 + 17) = 0;
      }

      LoggableString::LoggableString(&v13, (v7 + 2));
      (*(*a2 + 40))(a2, &v13);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      v10 = isDirectiveWhitelisted(v7 + 2);
      v11 = *(a2 + 1);
      if (v10)
      {
        v13.__r_.__value_.__s.__data_[0] = 61;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v13, 1);
        *(a2 + 17) = 0;
        LoggableString::LoggableString(&v13, (v7 + 5));
        (*(*a2 + 40))(a2, &v13);
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v13.__r_.__value_.__s.__data_[0] = 61;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v13, 1);
        *(a2 + 17) = 0;
        (*(*a2 + 32))(a2, v7 + 5);
      }

      v8 = 0;
      v7 = *v7;
    }

    while (v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__p);
  return a2;
}

BOOL isDirectiveWhitelisted(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v4 = a1[1];
    if (v4 != 3)
    {
      if (v4 == 5)
      {
        v5 = *(*a1 + 4);
        v6 = **a1 == 1818322290;
      }

      else
      {
        if (v4 != 9)
        {
          return 0;
        }

        v5 = *(*a1 + 8);
        v6 = **a1 == 0x687469726F676C61;
      }

      return v6 && v5 == 109;
    }

    a1 = *a1;
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 != 3)
    {
      if (v1 == 5)
      {
        v2 = *(a1 + 4);
        v3 = *a1 == 1818322290;
        return v3 && v2 == 109;
      }

      if (v1 == 9)
      {
        v2 = *(a1 + 8);
        v3 = *a1 == 0x687469726F676C61;
        return v3 && v2 == 109;
      }

      return 0;
    }
  }

  if (*a1 == 29301 && *(a1 + 2) == 105)
  {
    return 1;
  }

  return *a1 == 28529 && *(a1 + 2) == 112;
}

ImsOutStream *SipAuthScheme::log(SipAuthScheme *this, ImsOutStream *a2)
{
  v4 = (*(*this + 40))(this);
  LoggableString::LoggableString(__p, v4);
  (*(*a2 + 40))(a2, __p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = 0u;
  v11 = 0u;
  v12 = 1065353216;
  (*(*this + 8))(this, __p, 1);
  for (i = v11; i; i = *i)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  ", 2);
    *(a2 + 17) = 0;
    LoggableString::LoggableString(&v9, (i + 2));
    (*(*a2 + 40))(a2, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    v6 = isDirectiveWhitelisted(i + 2);
    v7 = *(a2 + 1);
    if (v6)
    {
      v9.__r_.__value_.__s.__data_[0] = 61;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v9, 1);
      *(a2 + 17) = 0;
      LoggableString::LoggableString(&v9, (i + 5));
      (*(*a2 + 40))(a2, &v9);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9.__r_.__value_.__s.__data_[0] = 61;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v9, 1);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, i + 5);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__p);
  return a2;
}

uint64_t SipAuthScheme::encodeDirectives(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(MEMORY[0x1E69E54E8] + 24);
    v15 = v4;
    v16 = *MEMORY[0x1E69E54E8];
    while (1)
    {
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      std::pair<std::string const,std::string>::pair[abi:ne200100](&v28, v2 + 1);
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      v24 = 0u;
      v25 = 0u;
      *__src = 0u;
      *__p = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
      LOBYTE(__dst) = 34;
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, &__dst, 1);
      v6 = v30 >= 0 ? (&v29 + 8) : *(&v29 + 1);
      v7 = v30 >= 0 ? HIBYTE(v30) : v30;
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      LOBYTE(__dst) = 34;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &__dst, 1);
      if ((BYTE8(v25) & 0x10) != 0)
      {
        break;
      }

      if ((BYTE8(v25) & 8) != 0)
      {
        v11 = *(&v20 + 1);
        v10 = *(&v21 + 1);
LABEL_16:
        v9 = v10 - v11;
        if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v18) = v10 - v11;
        if (v9)
        {
          memmove(&__dst, v11, v9);
        }

        goto LABEL_22;
      }

      v9 = 0;
      HIBYTE(v18) = 0;
LABEL_22:
      *(&__dst + v9) = 0;
      v31 = &v28;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v28);
      v13 = v12;
      if (*(v12 + 63) < 0)
      {
        operator delete(v12[5]);
      }

      *(v13 + 5) = __dst;
      v13[7] = v18;
      *&v19 = v16;
      *(&v19 + *(v16 - 24)) = v15;
      *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v20);
      std::ostream::~ostream();
      MEMORY[0x1E6923510](v26);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(*(&v29 + 1));
      }

      if (SBYTE7(v29) < 0)
      {
        operator delete(v28);
      }

      v2 = *v2;
      if (!v2)
      {
        return 1;
      }
    }

    v10 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
    goto LABEL_16;
  }

  return 1;
}

void sub_1E4F5ADB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::ostringstream::~ostringstream(&a18, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v18 + 112);
  ims::AccessNetwork::~AccessNetwork((v19 - 160));
  _Unwind_Resume(a1);
}

void SipAuthScheme::parseDirectives(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      if (((**a1)(a1, (v2 + 2), (v2 + 5)) & 1) == 0)
      {
        v4 = std::string::basic_string[abi:ne200100]<0>(&v11, "sip.decode");
        v7[0] = 0;
        v10 = 0;
        v5 = ims::error(v4, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 1), "Unable to parse auth directive: ", 32);
        v5[17] = 0;
        LoggableString::LoggableString(&__p, (v2 + 2));
        (*(*v5 + 40))(v5, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 1), "=", 1);
        v5[17] = 0;
        (*(*v5 + 32))(v5, v2 + 5);
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v5[17] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v10 == 1 && v9 < 0)
        {
          operator delete(v8);
        }

        if (v12 < 0)
        {
          operator delete(v11);
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1E4F5AFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAuthScheme::parseDirective(uint64_t a1, const void **a2, const std::string *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2);
  std::string::operator=((v4 + 5), a3);
  return 1;
}

BOOL SipAuthScheme::directivesFromString(std::string *__str, std::string::size_type __pos, void *a3)
{
  memset(&__stra, 0, sizeof(__stra));
  while (1)
  {
    __pos = ims::nextTokenQ(__str, __pos, &__stra, 0x2Cu);
    if (__pos == -1)
    {
      break;
    }

    if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__stra.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __stra.__r_.__value_.__l.__size_;
    }

    if (!size || ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_stra = &__stra) : (p_stra = __stra.__r_.__value_.__r.__words[0]), (v8 = memchr(p_stra, 61, size), v9 = v8 - p_stra, v8) ? (v10 = v9 == -1) : (v10 = 1), v10))
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "auth");
      v15[0] = 0;
      v18 = 0;
      v12 = ims::error(&v19, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Invalid auth header: missing equals at ", 39);
      *(v12 + 17) = 0;
      (*(*v12 + 32))(v12, &__stra);
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      if (v18 == 1 && v17 < 0)
      {
        operator delete(v16);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      break;
    }

    memset(&v19, 0, sizeof(v19));
    std::string::basic_string(&v19, &__stra, 0, v9, &__p);
    memset(&__p, 0, sizeof(__p));
    std::string::basic_string(&__p, &__stra, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v21);
    ims::chomp(&__p, "\r\n\t ", 3);
    v21 = &v19;
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v19.__r_.__value_.__l.__data_);
    std::string::operator=((v11 + 5), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  return __pos == -1;
}

void sub_1E4F5B308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAuthScheme::createFromString(uint64_t a1)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Digest", 32, &v33);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("PrivateToken", 32, &v30);
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v35 >= 0)
  {
    v3 = &v33;
  }

  else
  {
    v3 = v33;
  }

  if (v35 >= 0)
  {
    v4 = HIBYTE(v35);
  }

  else
  {
    v4 = v34;
  }

  if (!strncasecmp(v2, v3, v4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "auth");
    v26[0] = 0;
    v29 = 0;
    v8 = ims::debug(&v23, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Using Digest scheme", 19);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23);
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 1065353216;
    if (v35 >= 0)
    {
      v9 = HIBYTE(v35);
    }

    else
    {
      v9 = v34;
    }

    if (SipAuthScheme::directivesFromString(a1, v9, &v23))
    {
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&v23, "algorithm");
      if (!v10 || std::string::compare((v10 + 5), 0, 3uLL, "AKA"))
      {
        operator new();
      }

      operator new();
    }

    goto LABEL_48;
  }

  if (v32 >= 0)
  {
    v5 = &v30;
  }

  else
  {
    v5 = v30;
  }

  if (v32 >= 0)
  {
    v6 = HIBYTE(v32);
  }

  else
  {
    v6 = v31;
  }

  if (!strncasecmp(v2, v5, v6))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "auth");
    v19[0] = 0;
    v22 = 0;
    v11 = ims::debug(&v23, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Using PrivateToken scheme", 25);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23);
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 1065353216;
    if (v32 >= 0)
    {
      v12 = HIBYTE(v32);
    }

    else
    {
      v12 = v31;
    }

    if (SipAuthScheme::directivesFromString(a1, v12, &v23))
    {
      operator new();
    }

LABEL_48:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v23);
    goto LABEL_50;
  }

  memset(&v18, 0, sizeof(v18));
  BYTE7(v24) = 1;
  LOWORD(v23) = 32;
  ims::nextToken(a1, 0, &v18, &v23);
  std::string::basic_string[abi:ne200100]<0>(&v23, "auth");
  v14[0] = 0;
  v17 = 0;
  v7 = ims::error(&v23, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Invalid scheme name: ", 21);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, &v18);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

LABEL_50:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  return 0;
}

void sub_1E4F5B894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = v41;
  MEMORY[0x1E69235B0](v43, 0x10B3C4074E51C00);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a36);
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (*(v42 - 49) < 0)
  {
    operator delete(*(v42 - 72));
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        std::string::operator=((v8 + 40), (v4 + 5));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }
}

void sub_1E4F5BAE8(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime < v6)
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v16 = *a1;
        *a1 = 0;
        if (v16)
        {
          operator delete(v16);
        }

        *(a1 + 8) = 0;
      }
    }

    v6 = *(a1 + 8);
  }

  v17 = vcnt_s8(v6);
  v17.i16[0] = vaddlv_u8(v17);
  v18 = v17.u32[0];
  if (v17.u32[0] > 1uLL)
  {
    v19 = a2;
    if (v6 <= a2)
    {
      v19 = a2 % v6;
    }
  }

  else
  {
    v19 = (v6 - 1) & a2;
  }

  v20 = *(*a1 + 8 * v19);
  if (v20)
  {
    v21 = *v20;
    if (*v20)
    {
      v22 = 0;
      do
      {
        v23 = v21[1];
        if (v18 > 1)
        {
          v24 = v21[1];
          if (v23 >= v6)
          {
            v24 = v23 % v6;
          }
        }

        else
        {
          v24 = v23 & (v6 - 1);
        }

        if (v24 != v19)
        {
          break;
        }

        v25 = v23 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v21 + 2, a3);
        if ((v22 & (v25 != (v22 & 1))) != 0)
        {
          break;
        }

        v22 |= v25 != (v22 & 1);
        v20 = *v20;
        v21 = *v20;
      }

      while (*v20);
    }
  }

  return v20;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
}

void sub_1E4F5C048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SipInReplyToContributionIdHeader::~SipInReplyToContributionIdHeader(void **this)
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

void asString(const ImsLoggable *a1)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4F5C32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void ImsLogStream::~ImsLogStream(ImsLogStream *this)
{
  *this = &unk_1F5EE07C8;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F5EDED18;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

{
  ImsLogStream::~ImsLogStream(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsLogDestinationStderr::output(uint64_t a1, uint64_t a2, ims *a3, uint64_t a4, const char *a5)
{
  if (*(a4 + 23) >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = *(a4 + 8);
  }

  v9 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], a2, v10);
  v12 = ims::logPriorityString(a3);
  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  if (v8)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "[", 1);
    v16 = *(a4 + 23);
    if (v16 >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if (v16 >= 0)
    {
      v18 = *(a4 + 23);
    }

    else
    {
      v18 = *(a4 + 8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v19 = "]: ";
    v20 = 3;
  }

  else
  {
    v19 = ": ";
    v20 = 2;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v19, v20);
  v22 = strlen(a5);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a5, v22);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  return std::ostream::flush();
}

const char *ims::logPriorityString(ims *this)
{
  if ((this - 3) > 5)
  {
    return "?";
  }

  else
  {
    return off_1E876B5F0[this - 3];
  }
}

uint64_t ImsLogDestinationStderr::createFromString(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 6)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 6)
  {
    return 0;
  }

  if (*a2 == 1701082227 && *(a2 + 2) == 29298)
  {
    operator new();
  }

  return 0;
}

uint64_t ImsLogDestinationSyslog::createFromString(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 6)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 6)
  {
    return 0;
  }

  if (*a2 == 1819507059 && *(a2 + 2) == 26479)
  {
    operator new();
  }

  return 0;
}

void ImsLogDestinationSyslog::output(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a3 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a3;
  }

  syslog(v5, "%s", a5);
}

void ImsLogDestinationOslog::~ImsLogDestinationOslog(ImsLogDestinationOslog *this)
{
  *this = &unk_1F5EE0878;
  v1 = *(this + 3);
  if (v1)
  {
    os_release(v1);
  }
}

{
  ImsLogDestinationOslog::~ImsLogDestinationOslog(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsLogDestinationOslog::createFromString(int a1, std::string *this)
{
  v3 = std::string::find(this, 58, 0);
  memset(&v11, 0, sizeof(v11));
  std::string::basic_string(&v11, this, 0, v3, &v10);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) != 5)
    {
      return 0;
    }

    v4 = &v11;
    goto LABEL_6;
  }

  if (v11.__r_.__value_.__l.__size_ == 5)
  {
    v4 = v11.__r_.__value_.__r.__words[0];
LABEL_6:
    data = v4->__r_.__value_.__l.__data_;
    v6 = v4->__r_.__value_.__s.__data_[4];
    if (data == 1869378415 && v6 == 103)
    {
      if (v3 != -1)
      {
        size = HIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) != 0)
        {
          size = this->__r_.__value_.__l.__size_;
        }

        if (v3 + 1 < size)
        {
          operator new();
        }
      }

      operator new();
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4F5CA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  MEMORY[0x1E69235B0](v18, 0x10A1C4088054FEALL);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ImsLoggerStreambuf::overflow(char **this, int a2)
{
  if (a2 != -1)
  {
    v2 = a2;
    ImsLoggerStreambuf::dump(this, this[6]);
    *this[6]++ = v2;
  }

  return 0;
}

uint64_t ImsLogFacility::ImsLogFacility(uint64_t a1, const std::string *a2, uint64_t a3)
{
  *a1 = &unk_1F5EE0940;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v7 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  pthread_mutex_init((a1 + 88), 0);
  *(a1 + 152) = 0;
  std::string::operator=(v6, a2);
  *(a1 + 32) = a3;
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::clear(v7);
  *(a1 + 80) = 4;
  return a1;
}

void sub_1E4F5CB5C(_Unwind_Exception *a1)
{
  pthread_mutex_destroy((v1 + 88));
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::~__hash_table(v3);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void ImsLogFacility::~ImsLogFacility(ImsLogFacility *this)
{
  *this = &unk_1F5EE0940;
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::clear(this + 40);
  *(this + 20) = 4;
  pthread_mutex_destroy((this + 88));
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::~__hash_table(this + 40);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  ImsLogFacility::~ImsLogFacility(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsLogFacility::dumpState(ImsLogFacility *this, ImsOutStream *a2)
{
  (*(*a2 + 32))(a2, this + 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), *(this + 8));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
  *(a2 + 17) = 0;
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  for (i = *(this + 7); i; i = *i)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
    *(a2 + 17) = 0;
    v6 = ims::logPriorityString(*(i + 4));
    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v6, v7);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "(", 1);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923310](*(a2 + 1), i[3]);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ") ", 2);
    *(a2 + 17) = 0;
    result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  return result;
}

void ImsLogger::obfuscate(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  std::string::basic_string[abi:ne200100]<0>(&__str, "xxxxxx");
  v6 = *(a1 + 464);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a1 + 440), __p);
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  (*(*v6 + 24))(v6, v7, v8, &__str);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string(a3, &__str, 0, 0xAuLL, __p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F5CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogger::addDestination(ImsLogger *a1, uint64_t a2)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 4);
  if (v4 == (a1 + 24))
  {
LABEL_4:
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Unknown log destination '", 25);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "'", 1);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  else
  {
    while (1)
    {
      v6 = (*(**(v4 + 16) + 16))(*(v4 + 16), a2);
      if (v6)
      {
        break;
      }

      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        goto LABEL_4;
      }
    }

    return ImsLogger::addDestination(a1, v6);
  }
}

uint64_t ImsLogger::addDestination(ImsLogger *this, ImsLogDestination *a2)
{
  *(a2 + 1) = this;
  v3 = (*(*a2 + 32))(a2);
  if (v3)
  {
    v5 = 0;
    ImsLock::set(&v5, (this + 376), v6);
    ImsResult::~ImsResult(v6);
    operator new();
  }

  return v3;
}

void *ImsLogger::clearDestinations(ImsLogger *this)
{
  v6 = &v6;
  v7 = &v6;
  v8 = 0;
  v5 = 0;
  ImsLock::set(&v5, (this + 376), v9);
  ImsResult::~ImsResult(v9);
  if (&v6 != this)
  {
    std::list<ImsLogDestination *>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<ImsLogDestination *,void *>,std::__list_const_iterator<ImsLogDestination *,void *>>(&v6, *(this + 1), this);
  }

  std::__list_imp<unsigned long long>::clear(this);
  ImsLock::~ImsLock(&v5);
  for (i = v7; i != &v6; i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return std::__list_imp<unsigned long long>::clear(&v6);
}

void sub_1E4F5D258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, pthread_mutex_t *);
  ImsLock::~ImsLock(va);
  std::__list_imp<unsigned long long>::clear(va1);
  _Unwind_Resume(a1);
}

uint64_t ImsLogger::osLog(ImsLogger *this)
{
  v1 = *(this + 1);
  if (v1 == this)
  {
    return MEMORY[0x1E69E9C10];
  }

  v3 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v4 = *(v1 + 2);
    if (v4)
    {
      v5 = **v4;
      if (v6)
      {
        break;
      }
    }

    v1 = *(v1 + 1);
    if (v1 == this)
    {
      return v3;
    }
  }

  return v6[3];
}

void ImsLogger::addFacility(uint64_t a1)
{
  if (!*(a1 + 272))
  {
    operator new();
  }

  operator new();
}

uint64_t ImsLogger::setPriority(uint64_t a1, int a2, uint64_t a3)
{
  result = ImsLogger::facilityWithName(a1, a3, 1);
  if ((a2 - 9) >= 0xFFFFFFFA)
  {
    *(result + 80) = a2;
  }

  if (*(a1 + 256) > a2)
  {
    a2 = *(a1 + 176);
    v6 = *(a1 + 272);
    if (v6)
    {
      for (i = *(v6 + 16); i; i = *i)
      {
        if (*(i[5] + 80) > a2)
        {
          a2 = *(i[5] + 80);
        }
      }
    }
  }

  *(a1 + 256) = a2;
  return result;
}

void ImsLogger::setParams(ImsLogger *a1, std::string *__str)
{
  v4 = 0;
  memset(&__stra, 0, sizeof(__stra));
  while (1)
  {
    *(&v16.__r_.__value_.__s + 23) = 1;
    LOWORD(v16.__r_.__value_.__l.__data_) = 44;
    v4 = ims::nextToken(__str, v4, &__stra, &v16);
    if (v4 == -1)
    {
      break;
    }

    memset(&v16, 0, sizeof(v16));
    if ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__stra.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __stra.__r_.__value_.__l.__size_;
    }

    if (!size || ((__stra.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_stra = &__stra) : (p_stra = __stra.__r_.__value_.__r.__words[0]), (v7 = memchr(p_stra, 61, size), v8 = v7 - p_stra, v7) ? (v9 = v8 == -1) : (v9 = 1), v9))
    {
      *(&v16.__r_.__value_.__s + 23) = 7;
      qmemcpy(&v16, "default", 7);
      v10 = priorityFromString(&__stra);
LABEL_16:
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v16;
      }

      else
      {
        v11 = v16.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v11);
      ImsLogger::setPriority(a1, v10, &__p);
      goto LABEL_20;
    }

    std::string::basic_string(&__p, &__stra, 0, v8, &v15);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16 = __p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v16.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_32;
      }

      v12 = v16.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_32;
      }

      v12 = &v16;
    }

    if (LODWORD(v12->__r_.__value_.__l.__data_) != 1953719652)
    {
LABEL_32:
      std::string::basic_string(&__p, &__stra, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v15);
      v10 = priorityFromString(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_16;
    }

    std::string::basic_string(&__p, &__stra, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v15);
    ImsLogger::addDestination(a1, &__p);
LABEL_20:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F5D878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t priorityFromString(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    v3 = a1[1];
    if (v3 <= 3)
    {
      if (v3 == 1)
      {
        v17 = **a1;
        if (v17 == 101)
        {
          return 3;
        }

        if (v17 == 119)
        {
          return 4;
        }

LABEL_62:
        if (a1[1] != 1 || **a1 != 110)
        {
          if (a1[1] != 6 || (**a1 == 1769238382 ? (v19 = *(*a1 + 4) == 25955) : (v19 = 0), !v19))
          {
            if (a1[1] == 1 && **a1 == 105 || a1[1] == 4 && **a1 == 1868983913)
            {
              return 6;
            }

            if (a1[1] != 1)
            {
              goto LABEL_76;
            }

            v10 = **a1;
LABEL_75:
            if (v10 == 100)
            {
              return 7;
            }

            goto LABEL_76;
          }
        }

        return 5;
      }

      if (v3 != 3)
      {
        goto LABEL_62;
      }

      v6 = **a1;
      v7 = *(*a1 + 2);
      v8 = 29285;
    }

    else
    {
      if (v3 == 4)
      {
        if (**a1 == 1852989815)
        {
          return 4;
        }

        goto LABEL_62;
      }

      if (v3 != 5)
      {
        if (v3 == 7 && **a1 == 1852989815 && *(*a1 + 3) == 1735289198)
        {
          return 4;
        }

        goto LABEL_62;
      }

      v6 = **a1;
      v7 = *(*a1 + 4);
      v8 = 1869771365;
    }

    if (v6 == v8 && v7 == 114)
    {
      return 3;
    }

    goto LABEL_62;
  }

  v2 = *(a1 + 23);
  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v11 = *a1;
      v12 = *(a1 + 4);
      v13 = 1869771365;
      goto LABEL_38;
    }

    if (v2 != 6)
    {
      if (v2 == 7 && *a1 == 1852989815 && *(a1 + 3) == 1735289198)
      {
        return 4;
      }

      goto LABEL_76;
    }

    if (*a1 != 1769238382 || *(a1 + 2) != 25955)
    {
      goto LABEL_76;
    }

    return 5;
  }

  switch(v2)
  {
    case 1u:
      v9 = *a1;
      if (v9 == 101)
      {
        return 3;
      }

      if (v9 != 110)
      {
        if (v9 == 119)
        {
          return 4;
        }

        v10 = *a1;
        if (v10 == 105)
        {
          return 6;
        }

        goto LABEL_75;
      }

      return 5;
    case 3u:
      v11 = *a1;
      v12 = *(a1 + 2);
      v13 = 29285;
LABEL_38:
      if (v11 != v13 || v12 != 114)
      {
        break;
      }

      return 3;
    case 4u:
      if (*a1 != 1852989815)
      {
        if (*a1 == 1868983913)
        {
          return 6;
        }

        break;
      }

      return 4;
  }

LABEL_76:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "debug"))
  {
    return 7;
  }

  v18 = 8;
  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "s"))
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "spam"))
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  return v18;
}

void ImsLogger::dumpToPath(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  ImsLock::set(&v5, (a1 + 376), v6);
  ImsResult::~ImsResult(v6);
  for (i = a1; ; (*(**(i + 16) + 48))(*(i + 16), a2))
  {
    i = *(i + 8);
    if (i == a1)
    {
      break;
    }
  }

  ImsLock::~ImsLock(&v5);
}

uint64_t ImsLogger::dumpState(ImsLogger *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "***** IMS Logger *****", 22);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  ImsLogFacility::dumpState((this + 96), a2);
  v4 = *(this + 20);
  v5 = *(this + 34);
  v6 = *(v5 + 16);
  if (v6)
  {
    do
    {
      ImsLogFacility::dumpState(v6[5], a2);
      v4 += v6[5][8];
      v6 = *v6;
    }

    while (v6);
    v5 = *(this + 34);
  }

  v7 = *(v5 + 24);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Total log facilities: ", 22);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923370](*(a2 + 1), v7 + 1);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Total log streams: ", 19);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923360](*(a2 + 1), v4);
  *(a2 + 17) = 0;
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return result;
}

void sub_1E4F5E310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator(&a9);
  if (*(v17 + 463) < 0)
  {
    operator delete(*v20);
  }

  pthread_mutex_destroy((v17 + 376));
  pthread_mutex_destroy((v17 + 312));
  if (*(v17 + 311) < 0)
  {
    operator delete(*(v17 + 288));
  }

  ImsLogFacility::~ImsLogFacility((v17 + 96));
  if (*(v17 + 95) < 0)
  {
    operator delete(*(v17 + 72));
  }

  if (*(v17 + 71) < 0)
  {
    operator delete(*(v17 + 48));
  }

  std::__list_imp<unsigned long long>::clear(v19);
  std::__list_imp<unsigned long long>::clear(v17);
  MEMORY[0x1E69235B0](v17, v18);
  _Unwind_Resume(a1);
}

uint64_t ims::info(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 6);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4F5E4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::notice(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 5);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4F5E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::warn(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 4);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4F5E744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::error(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 3);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4F5E888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::spam(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 8);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4F5E9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ims::dumpMessage(char *a1, uint64_t *a2, uint64_t *a3, char *a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = ims::countNonPrintable(a4);
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  if (a1[23] >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  ims::getStaticLoggerFor(v16, buf);
  v17 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134545665;
    *&buf[4] = v15;
    _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "Next body contains %{sensitive}zu binary.  Dumping hex:", buf, 0xCu);
  }

  v18 = a4[23];
  if (v18 >= 0)
  {
    LODWORD(v19) = a4[23];
  }

  else
  {
    v19 = *(a4 + 1);
  }

  if (v18 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (a7)
  {
    if (a1[23] >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    ims::getStaticLoggerFor(v21, buf);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157955;
      *&buf[4] = v19;
      *&buf[8] = 2101;
      *&buf[10] = v20;
      v23 = "%{sensitive}.*P";
LABEL_24:
      _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x12u);
    }
  }

  else
  {
    if (a1[23] >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    ims::getStaticLoggerFor(v24, buf);
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = v19;
      *&buf[8] = 2098;
      *&buf[10] = v20;
      v23 = "%{public}.*P";
      goto LABEL_24;
    }
  }

LABEL_25:
  if (a1[23] >= 0)
  {
    v25 = a1;
  }

  else
  {
    v25 = *a1;
  }

  ims::getStaticLoggerFor(v25, buf);
  v26 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "";
    _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if (a1[23] >= 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = *a1;
  }

  ims::getStaticLoggerFor(v27, buf);
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    *buf = 136446210;
    *&buf[4] = v29;
    _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  __p = 0;
  v59 = 0;
  v60 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "\n");
  ims::tokenizeAsView(a3, &__p, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v30 = __p;
  v31 = v59;
  if (__p != v59)
  {
    do
    {
      if (a1[23] >= 0)
      {
        v32 = a1;
      }

      else
      {
        v32 = *a1;
      }

      ims::getStaticLoggerFor(v32, buf);
      v33 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *v30;
        *buf = 136446210;
        *&buf[4] = v34;
        _os_log_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      v30 += 2;
    }

    while (v30 != v31);
  }

  v35 = a4[23];
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(a4 + 1);
  }

  if (v35)
  {
    v59 = __p;
    std::string::basic_string[abi:ne200100]<0>(buf, "\n");
    ims::tokenizeAsView(a4, &__p, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v36 = __p;
    v37 = v59;
    if (__p != v59)
    {
      do
      {
        memset(buf, 0, 32);
        if (a7)
        {
          if (a1[23] >= 0)
          {
            v38 = a1;
          }

          else
          {
            v38 = *a1;
          }

          ims::getStaticLoggerFor(v38, v61);
          v39 = *&v62[4];
          ctu::OsLogContext::~OsLogContext(v61);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_65;
          }

          v40 = *v36;
          *v61 = 136642819;
          *v62 = v40;
          v41 = v39;
          v42 = "%{sensitive}s";
        }

        else
        {
          if (a1[23] >= 0)
          {
            v43 = a1;
          }

          else
          {
            v43 = *a1;
          }

          ims::getStaticLoggerFor(v43, v61);
          v44 = *&v62[4];
          ctu::OsLogContext::~OsLogContext(v61);
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_65;
          }

          v45 = *v36;
          *v61 = 136446210;
          *v62 = v45;
          v41 = v44;
          v42 = "%{public}s";
        }

        _os_log_impl(&dword_1E4C3F000, v41, OS_LOG_TYPE_DEFAULT, v42, v61, 0xCu);
LABEL_65:
        std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](buf);
        v36 += 2;
      }

      while (v36 != v37);
    }
  }

  v46 = *(a5 + 23);
  if ((v46 & 0x80u) != 0)
  {
    v46 = a5[1];
  }

  if (v46)
  {
    v47 = a1[23] >= 0 ? a1 : *a1;
    ims::getStaticLoggerFor(v47, buf);
    v48 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a5 + 23) >= 0)
      {
        v49 = a5;
      }

      else
      {
        v49 = *a5;
      }

      *buf = 136446210;
      *&buf[4] = v49;
      _os_log_impl(&dword_1E4C3F000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  if (a1[23] >= 0)
  {
    v50 = a1;
  }

  else
  {
    v50 = *a1;
  }

  ims::getStaticLoggerFor(v50, buf);
  v51 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "";
    _os_log_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if (a1[23] >= 0)
  {
    v52 = a1;
  }

  else
  {
    v52 = *a1;
  }

  ims::getStaticLoggerFor(v52, buf);
  v53 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v54 = a6;
    }

    else
    {
      v54 = *a6;
    }

    *buf = 136446210;
    *&buf[4] = v54;
    _os_log_impl(&dword_1E4C3F000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if (a1[23] >= 0)
  {
    v55 = a1;
  }

  else
  {
    v55 = *a1;
  }

  ims::getStaticLoggerFor(v55, buf);
  v56 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "";
    _os_log_impl(&dword_1E4C3F000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  v57 = *MEMORY[0x1E69E9840];
}

void sub_1E4F5F13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsLoggerStreambuf::~ImsLoggerStreambuf(std::locale *this)
{
  this->__locale_ = &unk_1F5EE08C0;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = &unk_1F5EE08C0;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1E69235B0);
}

double ImsLogDestinationStderr::name@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x600000000000000;
  result = *"stderr";
  *a1 = *"stderr";
  return result;
}

double ImsLogDestinationSyslog::name@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x600000000000000;
  result = *"syslog";
  *a1 = *"syslog";
  return result;
}

double ImsLogDestinationOslog::name@<D0>(uint64_t a1@<X8>)
{
  result = *"oslog";
  *a1 = *"oslog";
  *(a1 + 16) = 0x500000000000000;
  return result;
}

void NullStreambuf::~NullStreambuf(std::locale *this)
{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsLogStream::create(int,ImsLogFacility *)::ImsLogStreamWrap,std::allocator<ImsLogStream::create(int,ImsLogFacility *)::ImsLogStreamWrap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE0B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ImsLogStream::create(int,ImsLogFacility *)::ImsLogStreamWrap::~ImsLogStreamWrap(ImsLogStream *a1)
{
  ImsLogStream::~ImsLogStream(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<ImsOutStream>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t *std::list<ImsLogDestination *>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<ImsLogDestination *,void *>,std::__list_const_iterator<ImsLogDestination *,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    i[2] = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<ImsLogDestination *>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<ImsLogDestination *,void *>,std::__list_const_iterator<ImsLogDestination *,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<unsigned long long,long>>::erase(a1, i, a1);
  }
}

uint64_t std::list<ImsLogDestination *>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<ImsLogDestination *,void *>,std::__list_const_iterator<ImsLogDestination *,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_1E4F5F718(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,ImsLogFacility *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ImsLogFacility *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ImsLogFacility *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ImsLogFacility *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

void *LazuliFramer::LazuliFramer(void *a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v24, "framer");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v19, a3);
  ImsLogContainer::ImsLogContainer(a1, &v24, v19);
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "framer");
  v13 = *a3;
  v14 = *(a3 + 8);
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v15 = *(a3 + 16);
  }

  v16 = *(a3 + 40);
  ClientConfig::getLogTag(&v13, &v23);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = std::string::insert(&v23, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25 = v8->__r_.__value_.__r.__words[2];
  v24 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v25 >= 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 18), "com.apple.ipTelephony", v10);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  a1[17] = &unk_1F5EE0CD0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  *a1 = &unk_1F5EE0BD8;
  a1[17] = &unk_1F5EE0C38;
  a1[19] = *a2;
  v11 = a2[1];
  a1[20] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  return a1;
}

void sub_1E4F5FDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void sub_1E4F5FE48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  JUMPOUT(0x1E4F5FE40);
}

BOOL LazuliFramer::processNextFrame(const std::string *a1, uint64_t a2)
{
  v4 = &a1[7];
  v5 = std::string::find(a1 + 7, 10, 0);
  if (v5 == -1)
  {
    return 0;
  }

  memset(&__str, 0, sizeof(__str));
  v6 = std::string::basic_string(&__str, v4, 0, v5, v75);
  ims::chomp(v6, "\r\n\t ", 3);
  memset(&__p, 0, sizeof(__p));
  HIBYTE(v76) = 1;
  LOWORD(v75[0]) = 32;
  v7 = ims::nextToken(&__str, 0, &__p, v75);
  if (v7 != -1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 4)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_10:
        if (LODWORD(p_p->__r_.__value_.__l.__data_) != 1347572557)
        {
          goto LABEL_11;
        }

        memset(&v71, 0, sizeof(v71));
        HIBYTE(v76) = 1;
        LOWORD(v75[0]) = 32;
        if (ims::nextToken(&__str, v7, &v71, v75) == -1)
        {
          v18 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1);
          (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "LazuliMessageDecoder: no transaction ID in the message ", 55);
          *(v18 + 17) = 0;
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v9 = 0;
          *(v18 + 17) = 0;
LABEL_118:
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          goto LABEL_13;
        }

        v75[0] = 0;
        v75[1] = 0;
        v76 = 0;
        v12 = std::string::basic_string[abi:ne200100]<0>(v75, "-------");
        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v71;
        }

        else
        {
          v13 = v71.__r_.__value_.__r.__words[0];
        }

        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v71.__r_.__value_.__l.__size_;
        }

        std::string::append(v12, v13, size);
        v15 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
        (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "MSRP expected endline: ", 23);
        *(v15 + 17) = 0;
        (*(*v15 + 32))(v15, v75);
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v75, 36, &v68);
        v16 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
        if (v16 < 0)
        {
          data = a1[7].__r_.__value_.__l.__data_;
          v16 = a1[7].__r_.__value_.__l.__size_;
        }

        else
        {
          data = v4;
        }

        v19 = HIBYTE(v70);
        v20 = HIBYTE(v70);
        if (v70 >= 0)
        {
          v21 = &v68;
        }

        else
        {
          v21 = v68;
        }

        v60 = v69;
        if (v70 >= 0)
        {
          v22 = HIBYTE(v70);
        }

        else
        {
          v22 = v69;
        }

        if (v22)
        {
          __s = data;
          if (v16 >= v22)
          {
            v26 = data;
            v27 = data + v16;
            v28 = *v21;
            do
            {
              v29 = v16 - v22;
              if (v29 == -1)
              {
                break;
              }

              v30 = memchr(v26, v28, v29 + 1);
              if (!v30)
              {
                break;
              }

              v31 = v30;
              if (!memcmp(v30, v21, v22))
              {
                if (v31 != v27)
                {
                  v25 = v31 - __s;
                  if (v31 - __s != -1)
                  {
                    goto LABEL_71;
                  }
                }

                break;
              }

              v26 = (v31 + 1);
              v16 = v27 - (v31 + 1);
            }

            while (v16 >= v22);
          }

          memset(&v67, 0, sizeof(v67));
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v75, 43, &v67);
          v23 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
          if (v23 < 0)
          {
            v24 = a1[7].__r_.__value_.__l.__data_;
            v23 = a1[7].__r_.__value_.__l.__size_;
          }

          else
          {
            v24 = v4;
          }

          v32 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
          v33 = v67.__r_.__value_.__r.__words[0];
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v67;
          }

          else
          {
            v34 = v67.__r_.__value_.__r.__words[0];
          }

          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = v67.__r_.__value_.__l.__size_;
          }

          if (v35)
          {
            v36 = v24 + v23;
            if (v23 >= v35)
            {
              v61 = v67.__r_.__value_.__r.__words[0];
              v38 = v34->__r_.__value_.__s.__data_[0];
              v39 = v24;
              do
              {
                v40 = v23 - v35;
                if (v40 == -1)
                {
                  break;
                }

                v41 = memchr(v39, v38, v40 + 1);
                if (!v41)
                {
                  break;
                }

                v37 = v41;
                if (!memcmp(v41, v34, v35))
                {
                  goto LABEL_63;
                }

                v39 = (v37 + 1);
                v23 = v36 - (v37 + 1);
              }

              while (v23 >= v35);
              v37 = v36;
LABEL_63:
              v33 = v61;
            }

            else
            {
              v37 = v24 + v23;
            }

            if (v37 == v36)
            {
              v25 = -1;
            }

            else
            {
              v25 = v37 - v24;
            }
          }

          else
          {
            v25 = 0;
          }

          if (v32 < 0)
          {
            operator delete(v33);
          }

          if (v25 == -1)
          {
            v54 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
            (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v54);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v54 + 8), "MSRP endline not found.  received ", 34);
            *(v54 + 17) = 0;
            v55 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
            if ((v55 & 0x8000000000000000) != 0)
            {
              v55 = a1[7].__r_.__value_.__l.__size_;
            }

            MEMORY[0x1E6923370](*(v54 + 8), v55);
            *(v54 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v54 + 8), " accumulated ", 13);
            *(v54 + 17) = 0;
            v56 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
            if ((v56 & 0x8000000000000000) != 0)
            {
              v56 = a1[7].__r_.__value_.__l.__size_;
            }

            MEMORY[0x1E6923370](*(v54 + 8), v56);
            *(v54 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v54 + 8), " endline ", 9);
            *(v54 + 17) = 0;
            (*(*v54 + 32))(v54, v75);
            (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v9 = 0;
            *(v54 + 17) = 0;
            goto LABEL_114;
          }

          v19 = HIBYTE(v70);
          v60 = v69;
          v20 = HIBYTE(v70);
        }

        else
        {
          v25 = 0;
        }

LABEL_71:
        v42 = v60;
        if (v20 >= 0)
        {
          v42 = v19;
        }

        v43 = &v42[v25];
        v44 = __CFADD__(v25, v42);
        if (__CFADD__(v25, v42))
        {
          v45 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1);
          (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v45);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "Discarding buffer.  Integer overflow detected adding ", 53);
          *(v45 + 17) = 0;
          MEMORY[0x1E6923370](*(v45 + 8), v25);
          *(v45 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), " and ", 5);
          *(v45 + 17) = 0;
          if (v70 >= 0)
          {
            v46 = HIBYTE(v70);
          }

          else
          {
            v46 = v69;
          }

          MEMORY[0x1E6923370](*(v45 + 8), v46);
          *(v45 + 17) = 0;
          (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v45 + 17) = 0;
          if (SHIBYTE(a1[7].__r_.__value_.__r.__words[2]) < 0)
          {
            *a1[7].__r_.__value_.__l.__data_ = 0;
            a1[7].__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            a1[7].__r_.__value_.__s.__data_[0] = 0;
            *(&a1[7].__r_.__value_.__s + 23) = 0;
          }
        }

        else
        {
          memset(&v67, 0, sizeof(v67));
          std::string::basic_string(&v67, v4, 0, &v42[v25], &v62);
          v65 = 0;
          v66 = 0;
          if (LazuliMessageDecoder::decode(a1[6].__r_.__value_.__l.__size_, &v67))
          {
            v63 = v65;
            v64 = v66;
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v48 = *(a2 + 24);
            if (!v48)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v48 + 48))(v48, &v63);
            if (v64)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v64);
            }
          }

          v49 = (v43 + 1);
          v50 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
          if ((v50 & 0x8000000000000000) != 0)
          {
            v50 = a1[7].__r_.__value_.__l.__size_;
          }

          if (v49 >= v50)
          {
            v57 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
            (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v57);
            v58 = ImsOutStream::operator<<(v57, "no trailing data");
            (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v58[17] = 0;
            if (SHIBYTE(a1[7].__r_.__value_.__r.__words[2]) < 0)
            {
              *a1[7].__r_.__value_.__l.__data_ = 0;
              a1[7].__r_.__value_.__l.__size_ = 0;
            }

            else
            {
              a1[7].__r_.__value_.__s.__data_[0] = 0;
              *(&a1[7].__r_.__value_.__s + 23) = 0;
            }
          }

          else
          {
            std::string::basic_string(&v62, v4, v49, 0xFFFFFFFFFFFFFFFFLL, &v74);
            if (SHIBYTE(a1[7].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v4->__r_.__value_.__l.__data_);
            }

            *v4 = v62;
            ims::chomp(v4, "\r\n", 1);
            v51 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
            (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v51);
            v52 = SHIBYTE(a1[7].__r_.__value_.__r.__words[2]);
            if ((v52 & 0x8000000000000000) != 0)
            {
              v52 = a1[7].__r_.__value_.__l.__size_;
            }

            MEMORY[0x1E6923370](*(v51 + 8), v52);
            *(v51 + 17) = 0;
            v53 = ImsOutStream::operator<<(v51, " trailing bytes");
            (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v53[17] = 0;
          }

          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }
        }

        v9 = !v44;
LABEL_114:
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v68);
        }

        if (SHIBYTE(v76) < 0)
        {
          operator delete(v75[0]);
        }

        goto LABEL_118;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
    {
      p_p = &__p;
      goto LABEL_10;
    }

LABEL_11:
    v10 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1);
    (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "LazuliMessageDecoder: non MSRP protocol: ", 41);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, &__p);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_12;
  }

  v10 = (*(a1->__r_.__value_.__r.__words[0] + 56))(a1);
  (*(a1->__r_.__value_.__r.__words[0] + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "LazuliMessageDecoder: no tokens in start line", 45);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_12:
  v9 = 0;
  *(v10 + 17) = 0;
LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}