void sub_254D9984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  *a10 = a12;
  a10[1] = a11;
  __p = (v32 - 112);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::SendDirectInvocation(void ***this, std::string *a2)
{
  siri::intelligence::Intelligence::Impl::FindIntentForDirectInvocation(*this, a2, &v18);
  v4 = v18;
  if (v18)
  {
    data = a2[1].__r_.__value_.__l.__data_;
    size = a2[1].__r_.__value_.__l.__size_;
    if (size)
    {
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (data)
    {
      siri::intelligence::VariableDictionary::GetValues(data, &v16);
      v7 = v16;
      for (i = v17; v7 != i; v7 += 2)
      {
        v9 = *this;
        v10 = *v7;
        if (*(*v7 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *(v10 + 8), *(v10 + 16));
          v10 = *v7;
        }

        else
        {
          v11 = *(v10 + 8);
          v15.__r_.__value_.__r.__words[2] = *(v10 + 24);
          *&v15.__r_.__value_.__l.__data_ = v11;
        }

        v12 = v7[1];
        v13 = v10;
        v14 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::intelligence::Memory::SetVariable((v9 + 3), &v15, &v13);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      v15.__r_.__value_.__r.__words[0] = &v16;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v15);
    }

    siri::intelligence::Intelligence::SendIntent(this, v4, 0);
    if (size)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
    }
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_254D99AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::Intelligence::SendIntent(siri::intelligence::Intelligence *this, const siri::intelligence::Intent *a2, siri::intelligence::DecisionInfo *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
  }

  v5 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  v6 = v12.__r_.__value_.__r.__words[0];
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v13 = *(a2 + 1);
  }

  v7 = &v12;
  if (v5 < 0)
  {
    v7 = v6;
  }

  v8 = &v13;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v13.__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Debug("SendIntent: input '%s' / '%s'", a2, a3, v7, v8);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v9 = *this;
  result = *(*this + 192);
  if (result == 0.0)
  {
    *(v9 + 136) = 0;
    siri::intelligence::ExecutionState::PopToResponseWithInputGroup((v9 + 96));
    v11 = *this;
    siri::intelligence::Intelligence::Impl::GetIntentMatch(a2, &v13);
  }

  return result;
}

void sub_254D99FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  siri::intelligence::RuleMatch::~RuleMatch(&a53);
  siri::intelligence::Intent::~Intent(&a61);
  _Unwind_Resume(a1);
}

void sub_254D9A11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::Intelligence::WillHandleDirectInvocation(void ***this, std::string *a2)
{
  siri::intelligence::Intelligence::Impl::FindIntentForDirectInvocation(*this, a2, &v4);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

void siri::intelligence::Intelligence::Impl::CrankForward(siri::intelligence::Intelligence::Impl *this)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  siri::intelligence::Intelligence::Impl::UpdateActiveIntentGlobalVariables(this);
}

void sub_254D9A480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  a11 = (v11 - 80);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::SendActivity(siri::intelligence::Intelligence::Impl **this, const siri::intelligence::Activity *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
  }

  siri::intelligence::Intelligence::SendActivity(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D9A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::SendActivity(siri::intelligence::Intelligence::Impl **a1, const char *a2)
{
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  siri::intelligence::Log::Debug("SendActivity: %s", a2, v4);
  *(*a1 + 136) = 0;
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 1));
  }

  else
  {
    __str = *a2;
  }

  v5 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __str.__r_.__value_.__l.__size_;
  }

  if (!v8)
  {
    std::string::operator=(&__str, &qword_280AF4930);
    v5 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v6 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = size;
  }

  v10 = byte_280AF4947;
  if (byte_280AF4947 < 0)
  {
    v10 = qword_280AF4938;
  }

  if (v9 == v10)
  {
    v11 = v6 >= 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v12 = byte_280AF4947 >= 0 ? &qword_280AF4930 : qword_280AF4930;
    if (!memcmp(v11, v12, v9))
    {
      goto LABEL_28;
    }
  }

  siri::intelligence::FlowGraph::GetActivity(*a1 + 8, &__str.__r_.__value_.__l.__data_, &v27);
  v14 = v27.__r_.__value_.__r.__words[0];
  if (v27.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
  }

  if (v14)
  {
LABEL_28:
    std::string::basic_string[abi:ne200100]<0>(&v27, &str_13_2);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __str.__r_.__value_.__l.__size_;
    }

    v16 = byte_280AF4947;
    if (byte_280AF4947 < 0)
    {
      v16 = qword_280AF4938;
    }

    if (v15 != v16 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), byte_280AF4947 >= 0 ? (v18 = &qword_280AF4930) : (v18 = qword_280AF4930), memcmp(p_str, v18, v15)))
    {
      std::string::operator=(&v27, &__str);
    }

    siri::intelligence::Memory::SetStringValue(*a1 + 24, siri::intelligence::IE_GLOBAL_CURRENT_ACTIVITY, &v27);
    siri::intelligence::Memory::SetStringValue(*a1 + 24, siri::intelligence::IE_GLOBAL_PREVIOUS_ACTIVITY, *a1 + 6);
    siri::intelligence::ExecutionState::Clear((*a1 + 96));
    std::string::operator=(*a1 + 6, &__str);
    siri::intelligence::FlowGraph::GetActivity(*a1 + 8, &__str.__r_.__value_.__l.__data_, &v25);
    v19 = v25;
    if (v25)
    {
      v23 = 0uLL;
      v24 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v23, *(v25 + 72), *(v25 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 80) - *(v25 + 72)) >> 3));
      v20 = v23;
      v29 = &v23;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
      if (v20 != *(&v20 + 1))
      {
        v23 = 0uLL;
        v24 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v23, *(v19 + 72), *(v19 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 80) - *(v19 + 72)) >> 3));
        v21 = *a1;
        std::vector<std::string>::__vdeallocate(*a1 + 7);
        *(v21 + 168) = v23;
        *(v21 + 23) = v24;
        v24 = 0;
        v23 = 0uLL;
        v29 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
      }
    }

    siri::intelligence::Intelligence::Impl::NewConversationTurn(*a1);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __str.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Warning("SendActivity: illegal Activity ID '%s'", v13, v22);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254D9A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::CallReference(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, int a4@<W3>, void **a5@<X4>, uint64_t a6@<X8>)
{
  memset(v27, 0, sizeof(v27));
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  siri::intelligence::Intelligence::Impl::AppendResponses(a1, v27, a3, v26, v25, 0);
  v23 = 0;
  v24 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (a2 == 1)
  {
    siri::intelligence::Intelligence::Impl::PickResponseFirst(a1, v27, &v15);
  }

  else
  {
    siri::intelligence::Intelligence::Impl::PickResponseRandom(v27, &v15);
  }

  *&v21[0] = v15;
  v11 = v17;
  *(v21 + 8) = v16;
  *(&v21[1] + 1) = v17;
  v22 = v18;
  v12 = v20;
  v23 = v19;
  v24 = v20;
  v13 = v16;
  v14[0] = v15;
  v14[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::Intelligence::Impl::AddResponseToConversation(a1, v14, a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  siri::intelligence::Intelligence::Impl::CrankForwardRecursive(a1, a5, a6);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *&v21[0] = v27;
  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](v21);
}

void sub_254D9AA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  siri::intelligence::RuleMatch::~RuleMatch(&a19);
  a19 = (v19 - 88);
  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::CrankForwardRecursive(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 192);
  gettimeofday(&v35, 0);
  if (v6 > *(a1 + 296) + SDWORD2(v35) / 1000000.0 + v35 || (*(a1 + 192) = 0, v7 = *(a1 + 104), *(a1 + 96) == v7) || (v8 = *(v7 - 16), *(v7 - 24) == v8))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_8;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  v10 = *(v8 - 56);
  v9 = *(v8 - 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *a3 = v10;
    *(a3 + 8) = v9;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a3 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v12 = *v10;
  v13 = **v10;
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v8 - 40) = 1;
    v14 = v9;
LABEL_16:
    if ((*(v8 - 39) & 1) != 0 || *(v10 + 12) == *(v10 + 13))
    {
      *(v8 - 39) = 1;
      *a3 = 0;
      *(a3 + 8) = 0;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v15 = 0;
    }

    else
    {
      *(v8 - 39) = 1;
      siri::intelligence::Intelligence::Impl::CallReference(&v35, a1, v10[20], v10 + 24, 0, a2);
      v15 = *(&v35 + 1);
      v16 = v35;
      v35 = 0uLL;
      *a3 = __PAIR128__(v15, v16);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (*(&v35 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
        }
      }

      if (v16)
      {
LABEL_46:
        if (v14)
        {
          v32 = v14;
LABEL_48:
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          goto LABEL_8;
        }

        goto LABEL_8;
      }
    }

    v17 = 0;
    do
    {
      v18 = v17;
      ResponseIfDone = siri::intelligence::ExecutionState::PopLastResponseIfDone((a1 + 96));
      v17 = 1;
    }

    while ((ResponseIfDone & 1) != 0);
    if (v18)
    {
      v20 = *(a1 + 104);
      if (*(a1 + 96) == v20)
      {
        v23 = 0;
      }

      else
      {
        v22 = *(v20 - 24);
        v21 = *(v20 - 16);
        v23 = v22 == v21 ? 0 : v21 - 56;
      }

      if (*(v23 + 16) != 1 || (*(v23 + 17) & 1) == 0)
      {
        siri::intelligence::Intelligence::Impl::CrankForwardRecursive(&v35, a1, a2);
        v31 = v35;
        v35 = 0uLL;
        *a3 = v31;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          if (*(&v35 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
          }
        }
      }
    }

    goto LABEL_46;
  }

  if (*(v8 - 40))
  {
    v14 = 0;
    goto LABEL_16;
  }

  *(v8 - 40) = 1;
  v24 = *v12;
  if (v25)
  {
    v26 = v25;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2)
    {
      std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::push_back[abi:ne200100](a2, a3);
      v10 = *a3;
    }

    v27 = v26[15];
    v28 = *(v27 + 24);
    v29 = v10[20];
    if (*(v27 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *v27, *(v27 + 1));
    }

    else
    {
      v30 = *v27;
      v39.__r_.__value_.__r.__words[2] = *(v27 + 2);
      *&v39.__r_.__value_.__l.__data_ = v30;
    }

    v35 = 0uLL;
    v36 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v35, &v39, &v40, 1uLL);
    siri::intelligence::Intelligence::Impl::CallReference(&v37, a1, v29, &v35, v28, a2);
    v33 = v37;
    v37 = 0uLL;
    v34 = *(a3 + 8);
    *a3 = v33;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }
    }

    v38 = &v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      v32 = v9;
      goto LABEL_48;
    }
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_254D9AE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v25 = *(v22 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::RetryInputsForResponseId(siri::intelligence::Intelligence::Impl **a1, const void **a2)
{
  if ((siri::intelligence::ExecutionState::RewindToResponse(*a1 + 12, a2) & 1) == 0)
  {
    siri::intelligence::Intelligence::Impl::GotoResponse(*a1, a2, 0);
    siri::intelligence::Intelligence::Impl::CrankForward(&v4, *a1);
    v11 = &v10;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v11);
    v8 = &unk_286718FE0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    siri::intelligence::ResponseBase::~ResponseBase(&v8);
    v6 = &unk_286719048;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    siri::intelligence::ResponseBase::~ResponseBase(&v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void siri::intelligence::Intelligence::Impl::ProcessInternalBehaviors(void **this@<X0>, std::__shared_weak_count **a2@<X1>, siri::intelligence::ExecStateResponse *a3@<X8>)
{
  siri::intelligence::ExecStateResponse::ExecStateResponse(a3, a2);
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    v10 = v9;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v11 = v10[15];
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *v11, *(v11 + 1));
      v11 = v10[15];
    }

    else
    {
      v12 = *v11;
      v17.__r_.__value_.__r.__words[2] = *(v11 + 2);
      *&v17.__r_.__value_.__l.__data_ = v12;
    }

    v14 = *(v11 + 3);
    v13 = *(v11 + 4);
    v15 = v14;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::intelligence::BehaviorHandler::Execute(&v18, &v17, &v15, *this, a3, (this + 12));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D9B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  siri::intelligence::ExecStateResponse::~ExecStateResponse(v17);
  _Unwind_Resume(a1);
}

siri::intelligence::ExecStateResponse *siri::intelligence::Intelligence::Impl::CheckForDeadEnd@<X0>(siri::intelligence::Intelligence::Impl *this@<X0>, const siri::intelligence::ExecStateResponse *a2@<X1>, siri::intelligence::ExecStateResponse *a3@<X8>)
{
  if (*(this + 24) == 0.0 && *(this + 304) != 1)
  {
    v7 = *a2;
    v6 = *(a2 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v7 && siri::intelligence::ExecutionState::IsDeadEnd(this + 12))
    {
      v8 = *(this + 12);
      v9 = *(this + 13);
      while (v9 != v8)
      {
        v9 -= 24;
        v11.__r_.__value_.__r.__words[0] = v9;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v11);
      }

      *(this + 13) = v8;
      *(this + 304) = 1;
      siri::intelligence::Intent::Intent(&v11, &siri::intelligence::IE_RECOVER_FROM_DEAD_END);
    }
  }

  return siri::intelligence::ExecStateResponse::ExecStateResponse(a3, a2);
}

void sub_254D9B2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  siri::intelligence::RuleMatch::~RuleMatch(va);
  siri::intelligence::Intent::~Intent(va1);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ExecStateResponse::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::string::operator=((a1 + 24), a2 + 1);
  std::string::operator=((a1 + 48), a2 + 2);
  std::string::operator=((a1 + 72), a2 + 3);
  v6 = *(a2 + 26);
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = v6;
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 112), *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  }

  v7 = *(a2 + 136);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v8 = *(a1 + 144);
  *(a1 + 136) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::string::operator=((a1 + 160), (a2 + 10));
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 13));
  v9 = *(a2 + 60);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 240) = v9;
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 248), *(a2 + 31), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
  }

  v10 = a2[17];
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  v11 = *(a1 + 280);
  *(a1 + 272) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vdeallocate((a1 + 288));
  *(a1 + 288) = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  return a1;
}

void siri::intelligence::Intelligence::ContinueConversationUntil(siri::intelligence::Intelligence::Impl **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  siri::intelligence::Intelligence::Impl::ContinueConversation(*a1, &v2);
}

void sub_254D9B810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  __p = &a17;
  std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::ContinueConversation(siri::intelligence::Intelligence::Impl *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  siri::intelligence::Intelligence::Impl::CrankForward(this);
}

void sub_254D9B9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  siri::intelligence::ExecStateResponse::~ExecStateResponse(&a9);
  std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::ExecStateResponse>::push_back[abi:ne200100](uint64_t a1, siri::intelligence::ExecStateResponse *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0x6F96F96F96F96F97 * ((v4 - *a1) >> 3);
    if ((v7 + 1) > 0xD20D20D20D20D2)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6F96F96F96F96F97 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x69069069069069)
    {
      v10 = 0xD20D20D20D20D2;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      if (v10 <= 0xD20D20D20D20D2)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 0;
    v20 = 312 * v7;
    v22 = 0;
    siri::intelligence::ExecStateResponse::ExecStateResponse((312 * v7), a2);
    v6 = 312 * v7 + 312;
    v21 = v6;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *a1 - v12;
    v14 = v20 + v13;
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = (v20 + v13);
      v17 = *a1;
      do
      {
        siri::intelligence::ExecStateResponse::ExecStateResponse(v16, v17);
        v17 = (v17 + 312);
        v16 = (v16 + 312);
        v15 -= 312;
      }

      while (v17 != v12);
      do
      {
        std::allocator_traits<std::allocator<siri::intelligence::ExecStateResponse>>::destroy[abi:ne200100]<siri::intelligence::ExecStateResponse,0>(v11);
        v11 += 312;
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    *(a1 + 8) = v6;
    v18 = *(a1 + 16);
    *(a1 + 16) = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = std::__split_buffer<siri::intelligence::ExecStateResponse>::~__split_buffer(&v19);
  }

  else
  {
    result = siri::intelligence::ExecStateResponse::ExecStateResponse(*(a1 + 8), a2);
    v6 = v4 + 312;
    *(a1 + 8) = v6;
  }

  *(a1 + 8) = v6;
  return result;
}

void sub_254D9BB98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<siri::intelligence::ExecStateResponse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *siri::intelligence::Intelligence::SetPlatform(std::string **a1, const std::string *a2)
{
  std::string::operator=(((*a1)[8].__r_.__value_.__l.__size_ + 48), a2);
  v4 = *a1 + 11;

  return std::string::operator=(v4, a2);
}

void siri::intelligence::Intelligence::GetPlatform(siri::intelligence::Intelligence *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  if (*(*this + 287) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 264), *(v2 + 272));
  }

  else
  {
    v3 = (v2 + 264);
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

uint64_t *siri::intelligence::Intelligence::SetUtcOffset(uint64_t *this, double a2)
{
  v2 = *this;
  *(v2 + 288) = a2;
  *(*(v2 + 200) + 24) = a2;
  return this;
}

uint64_t *siri::intelligence::Intelligence::SetTimeOffset(uint64_t *this, double a2)
{
  v2 = *this;
  *(v2 + 296) = a2;
  *(*(v2 + 200) + 32) = a2;
  return this;
}

uint64_t siri::intelligence::Intelligence::GetActivities@<X0>(siri::intelligence::Intelligence *this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::shared_ptr<siri::intelligence::Activity>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*>(a2, *(v2 + 184), *(v2 + 192), (*(v2 + 192) - *(v2 + 184)) >> 4);
}

void siri::intelligence::Intelligence::GetActivity(siri::intelligence::Intelligence *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = qword_280AF4950;
  if (byte_280AF495F >= 0)
  {
    v8 = byte_280AF495F;
  }

  if (v7 == v8 && (v6 >= 0 ? (v9 = a2) : (v9 = *a2), byte_280AF495F >= 0 ? (v10 = &qword_280AF4948) : (v10 = qword_280AF4948), !memcmp(v9, v10, v7)))
  {

    siri::intelligence::Intelligence::GetDefaultActivity(a1, a3);
  }

  else
  {
    v11 = *a1 + 8;

    siri::intelligence::FlowGraph::GetActivity(v11, a2, a3);
  }
}

void siri::intelligence::Intelligence::GetDefaultActivity(siri::intelligence::Intelligence *this@<X0>, void *a2@<X8>)
{
  v4 = *(*this + 8);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  if (*(v6 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    __p = *(v6 + 24);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
LABEL_22:
      v10 = *(*this + 8);
      memset(&__p, 0, sizeof(__p));
      std::vector<std::shared_ptr<siri::intelligence::Activity>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*>(&__p, *(v10 + 184), *(v10 + 192), (*(v10 + 192) - *(v10 + 184)) >> 4);
      if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
      {
        *a2 = 0;
        a2[1] = 0;
      }

      else
      {
        v11 = *(__p.__r_.__value_.__r.__words[0] + 8);
        *a2 = *__p.__r_.__value_.__l.__data_;
        a2[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }
      }

      p_p = &__p;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&p_p);
      goto LABEL_27;
    }
  }

  else if (!size)
  {
    goto LABEL_22;
  }

  v8 = *this;
  if (*(v6 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    __p = *(v6 + 24);
  }

  siri::intelligence::FlowGraph::GetActivity(v8 + 8, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    goto LABEL_22;
  }

LABEL_27:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_254D9BF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::GetCurrentInputGroupId(siri::intelligence::Intelligence::Impl **this@<X0>, std::string *a2@<X8>)
{
  siri::intelligence::Intelligence::Impl::GetContext(*this, v8);
  if (v8[0] == v8[1])
  {
    goto LABEL_11;
  }

  v4 = *v8[0];
  v3 = *(v8[0] + 8);
  if (!v3)
  {
    if (v4)
    {
      v5 = 0;
      goto LABEL_8;
    }

LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(a2, &str_13_2);
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (!v4)
  {
    goto LABEL_11;
  }

  v4 = *v8[0];
  v5 = *(v8[0] + 8);
  if (!v5)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 0;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v4, *(v4 + 1));
  }

  else
  {
    v7 = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
  }

  if ((v6 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_15:
  v9 = v8;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_254D9C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a12 = &a9;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::Intelligence::GetExitValue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 256);
  *a2 = *(*this + 248);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::Intelligence::SetExitValue(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 256);
  *(v2 + 248) = v4;
  *(v2 + 256) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::Intelligence::GetUndo@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 224);
  *a2 = *(*this + 216);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::Intelligence::SetUndo(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 224);
  *(v2 + 216) = v4;
  *(v2 + 224) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void siri::intelligence::Intelligence::StartConversation(siri::intelligence::Intelligence::Impl **this)
{
  v2 = *(*this + 1);
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *v4, *(v4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - *v4) >> 3));
    v5 = *&__p.__begin_;
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (v5 != *(&v5 + 1))
    {
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *v4, *(v4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - *v4) >> 3));
      v6 = *this;
      std::vector<std::string>::__vdeallocate(v6 + 7);
      v6[7] = __p;
      memset(&__p, 0, sizeof(__p));
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
      goto LABEL_6;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      __p = *(v4 + 24);
    }

    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      end = __p.__end_;
      operator delete(__p.__begin_);
      if (!end)
      {
        goto LABEL_6;
      }
    }

    else if (!HIBYTE(__p.__end_cap_.__value_))
    {
      goto LABEL_6;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      __p = *(v4 + 24);
    }

    siri::intelligence::Intelligence::SendActivity(this, &__p);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

LABEL_6:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_254D9C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::Intelligence::IsInConversation(siri::intelligence::Intelligence *this)
{
  v1 = *(*this + 104);
  if (*(*this + 96) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 16);
  if (*(v1 - 24) == v2)
  {
    return 0;
  }

  v3 = *(v2 - 56);
  if (!v3)
  {
    return 0;
  }

  if (*(v2 - 39) != 1)
  {
    return 1;
  }

  if (*(v3 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 32), *(v3 + 40));
  }

  else
  {
    __p = *(v3 + 32);
  }

  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v4 = size != 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

BOOL siri::intelligence::Intelligence::HasResponse(uint64_t a1, uint64_t a2)
{
  siri::intelligence::FlowGraph::GetResponse((*a1 + 8), a2, &v4);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

void siri::intelligence::Intelligence::Impl::GotoResponse(siri::intelligence::Intelligence::Impl *a1, uint64_t a2, int a3)
{
  siri::intelligence::FlowGraph::GetResponse(a1 + 1, a2, &v10);
  if (v10)
  {
    v7 = v11;
    v9[0] = v10;
    v9[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    siri::intelligence::Intelligence::Impl::SetupConversation(a1, v9, a3);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_10:

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    siri::intelligence::Log::Warning("Cannot jump to unknown response ID: %s", v6, v8);
    v7 = v11;
    if (v11)
    {
      goto LABEL_10;
    }
  }
}

void sub_254D9C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::GotoResponse(siri::intelligence::Intelligence::Impl **a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    memset(v13, 0, sizeof(v13));
    v3 = *a1;
    v12[0] = 0;
    v12[1] = 0;
    v11[0] = 0;
    v11[1] = 0;
    siri::intelligence::Intelligence::Impl::AppendResponses(v3, v13, a2, v12, v11, 0);
    v4 = *a1;
    siri::intelligence::Intelligence::Impl::PickResponseRandom(v13, &v7);
    if (v7)
    {
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v7[1], v7[2]);
      }

      else
      {
        v5 = *(v7 + 1);
        __p.__r_.__value_.__r.__words[2] = v7[3];
        *&__p.__r_.__value_.__l.__data_ = v5;
      }

      siri::intelligence::Intelligence::Impl::GotoResponse(*a1, &__p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v7 = v13;
    std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&v7);
  }
}

void sub_254D9C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  siri::intelligence::RuleMatch::~RuleMatch(&a16);
  a16 = v16 - 40;
  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

BOOL siri::intelligence::Intelligence::CanProcessUserInput(siri::intelligence::Intelligence *this)
{
  if (siri::intelligence::Intelligence::IsInConversation(this))
  {
    v2 = *this;
    if ((*(*this + 136) & 1) == 0)
    {
      v6 = *(v2 + 96);
      v5 = *(v2 + 104);
      if (v6 == v5)
      {
        return 0;
      }

      v7 = *(v5 - 16);
      if (*(v5 - 24) == v7)
      {
        return 0;
      }

      v8 = *(v7 - 56);
      v9 = *(v7 - 48);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        v3 = 0;
        if (!v9)
        {
          return v3;
        }

        goto LABEL_22;
      }

      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *(v8 + 32), *(v8 + 40));
      }

      else
      {
        v11 = *(v8 + 32);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v11.__r_.__value_.__l.__size_;
        operator delete(v11.__r_.__value_.__l.__data_);
        if (size)
        {
LABEL_18:
          v3 = 1;
          if (!v9)
          {
            return v3;
          }

          goto LABEL_22;
        }
      }

      else if (*(&v11.__r_.__value_.__s + 23))
      {
        goto LABEL_18;
      }

      v3 = !siri::intelligence::ExecutionState::IsDeadEnd((*this + 96));
      if (!v9)
      {
        return v3;
      }

LABEL_22:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      return v3;
    }
  }

  return 1;
}

void sub_254D9C72C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::GetStackTrace(siri::intelligence::Intelligence *this@<X0>, uint64_t a2@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "-- ");
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  siri::intelligence::ExecutionState::GetStackTrace((*this + 96), &v28);
  v4 = v28;
  if (v29 != v28)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](a2, (v4 + v5));
      ++v6;
      v4 = v28;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, "Main Exec State");
  if ((v31 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v8 = v31;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::insert(&v27, 0, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[0];
  v33[0] = v9->__r_.__value_.__l.__size_;
  *(v33 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (v12 >= v13)
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 3);
    v17 = v16 + 1;
    if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v32.__end_cap_.__value_ = a2;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v19);
    }

    v20 = 24 * v16;
    v21 = v33[0];
    *v20 = v10;
    *(v20 + 8) = v21;
    *(v20 + 15) = *(v33 + 7);
    *(v20 + 23) = v11;
    v15 = 24 * v16 + 24;
    v22 = *(a2 + 8) - *a2;
    v23 = (24 * v16 - v22);
    memcpy(v23, *a2, v22);
    v24 = *a2;
    *a2 = v23;
    *(a2 + 8) = v15;
    v25 = *(a2 + 16);
    *(a2 + 16) = 0;
    v32.__end_ = v24;
    v32.__end_cap_.__value_ = v25;
    v32.__first_ = v24;
    v32.__begin_ = v24;
    std::__split_buffer<std::string>::~__split_buffer(&v32);
  }

  else
  {
    v14 = v33[0];
    *v12 = v10;
    *(v12 + 8) = v14;
    *(v12 + 15) = *(v33 + 7);
    *(v12 + 23) = v11;
    v15 = v12 + 24;
  }

  *(a2 + 8) = v15;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v32.__first_ = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_254D9C9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = v25;
  if (v26 < 0)
  {
    operator delete(v24);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::LoadExecutionState(siri::intelligence::Intelligence::Impl *this, const protobuf::Intelligence_State_ExecutionState *a2, siri::intelligence::ExecutionState *a3)
{
  v6 = *(a2 + 7);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    v32.__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&v32.__r_.__value_.__l.__data_ = v7;
  }

  siri::intelligence::FlowGraph::GetActivity(this + 8, &v32.__r_.__value_.__l.__data_, &v23);
  v8 = v23;
  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  if (v8)
  {
    v9 = &v32;
  }

  else
  {
    v9 = &qword_280AF4930;
  }

  std::string::operator=(a3 + 2, v9);
  *(a3 + 40) = *(a2 + 96);
  *(a3 + 12) = *(a2 + 11);
  if ((*(a2 + 16) & 0x10) != 0)
  {
    siri::intelligence::FlowGraph::GetResponse(this + 1, *(a2 + 10), &v23);
    v10 = *(a3 + 4);
    *(a3 + 24) = v23;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (*(a2 + 8) >= 1)
  {
    for (i = 0; i < *(a2 + 8); ++i)
    {
      v12 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (v12 < *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i) + 32))
      {
        v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i);
        v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(v13 + 24, v12);
        siri::intelligence::FlowGraph::GetResponse(this + 1, *(v14 + 24), &v27);
        v15 = v27;
        if (v27)
        {
          v23 = 0uLL;
          v24 = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p, &str_13_2);
          v26 = 0;
          v16 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = *(&v23 + 1);
          *&v23 = v15;
          *(&v23 + 1) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i);
          v19 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(v18 + 24, v12);
          std::string::operator=(&__p, *(v19 + 32));
          v20 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i);
          v26 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(v20 + 24, v12) + 42);
          v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i);
          LOBYTE(v24) = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(v21 + 24, v12) + 40);
          v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(a2 + 24, i);
          HIBYTE(v24) = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(v22 + 24, v12) + 41);
          std::vector<siri::intelligence::ResponseState>::push_back[abi:ne200100](&v29, &v23);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(&v23 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
          }

          if (v16)
          {
LABEL_26:
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        else
        {
          v16 = v28;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        ++v12;
      }

      if (v29 != v30)
      {
        std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](a3, &v29);
      }

      *&v23 = &v29;
      std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v23);
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_254D9CCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::SaveExecutionState(siri::intelligence::Intelligence::Impl *this, protobuf::Intelligence_State_ExecutionState *a2, const siri::intelligence::ExecutionState *a3)
{
  v5 = a2 + 56;
  v6 = *(a2 + 7);
  *(a2 + 4) |= 2u;
  v7 = (a3 + 48);
  if (v6 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v5, v7);
  }

  std::string::operator=(v6, v7);
  v8 = *(a2 + 4);
  *(a2 + 96) = *(a3 + 40);
  v9 = *(a3 + 12);
  v10 = v8 | 0x60;
  *(a2 + 4) = v8 | 0x60;
  *(a2 + 11) = v9;
  v11 = *(a3 + 3);
  if (v11)
  {
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v11 + 8), *(v11 + 16));
      v10 = *(a2 + 4);
    }

    else
    {
      v12 = *(v11 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v11 + 24);
      *&__p.__r_.__value_.__l.__data_ = v12;
    }

    *(a2 + 4) = v10 | 0x10;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(a2 + 10, &google::protobuf::internal::fixed_address_empty_string, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13 = *a3;
  if (*(a3 + 1) != *a3)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 5);
      if (!v15)
      {
        break;
      }

      v16 = *(a2 + 8);
      v17 = *v15;
      if (v16 < *v15)
      {
        *(a2 + 8) = v16 + 1;
        v18 = *&v15[2 * v16 + 2];
        goto LABEL_19;
      }

      if (v17 == *(a2 + 9))
      {
        goto LABEL_17;
      }

LABEL_18:
      *v15 = v17 + 1;
      v18 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame>(*(a2 + 3));
      v19 = *(a2 + 8);
      v20 = *(a2 + 5) + 8 * v19;
      *(a2 + 8) = v19 + 1;
      *(v20 + 8) = v18;
      v13 = *a3;
LABEL_19:
      v21 = *(v13 + 24 * v14);
      if (*(v13 + 24 * v14 + 8) != v21)
      {
        v22 = 0;
        v23 = 0;
        while (!*(v21 + v22))
        {
LABEL_37:
          ++v23;
          v22 += 56;
          if (v23 >= 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 24 * v14 + 8) - v21) >> 3))
          {
            goto LABEL_38;
          }
        }

        v24 = *(v18 + 5);
        if (v24)
        {
          v25 = *(v18 + 8);
          v26 = *v24;
          if (v25 < *v24)
          {
            *(v18 + 8) = v25 + 1;
            v27 = *&v24[2 * v25 + 2];
LABEL_29:
            v30 = *(*(v13 + 24 * v14) + v22);
            if (*(v30 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v30 + 8), *(v30 + 16));
            }

            else
            {
              v31 = *(v30 + 8);
              __p.__r_.__value_.__r.__words[2] = *(v30 + 24);
              *&__p.__r_.__value_.__l.__data_ = v31;
            }

            *(v27 + 4) |= 1u;
            google::protobuf::internal::ArenaStringPtr::SetNoArena(v27 + 3, &google::protobuf::internal::fixed_address_empty_string, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v32 = *(*a3 + 24 * v14) + v22;
            v33 = *(v27 + 4);
            v34 = *(v27 + 4);
            *(v27 + 20) = *(v32 + 16);
            *(v27 + 4) = v34 | 0xE;
            v35 = (v32 + 24);
            if (v33 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v27 + 32, v35);
            }

            std::string::operator=(v33, v35);
            v13 = *a3;
            v21 = *(*a3 + 24 * v14);
            v36 = *(v21 + v22 + 48);
            *(v27 + 4) |= 0x10u;
            *(v27 + 42) = v36;
            goto LABEL_37;
          }

          if (v26 == *(v18 + 9))
          {
LABEL_27:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v18 + 6, v26 + 1);
            v24 = *(v18 + 5);
            v26 = *v24;
          }

          *v24 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>(*(v18 + 3));
          v28 = *(v18 + 8);
          v29 = *(v18 + 5) + 8 * v28;
          *(v18 + 8) = v28 + 1;
          *(v29 + 8) = v27;
          v13 = *a3;
          goto LABEL_29;
        }

        v26 = *(v18 + 9);
        goto LABEL_27;
      }

LABEL_38:
      if (++v14 >= 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - v13) >> 3))
      {
        return;
      }
    }

    v17 = *(a2 + 9);
LABEL_17:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v17 + 1);
    v15 = *(a2 + 5);
    v17 = *v15;
    goto LABEL_18;
  }
}

void sub_254D9D0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::Intelligence::DeleteState(siri::intelligence::Intelligence *this, char a2)
{
  siri::intelligence::FlowGraph::ClearState((*this + 8));
  v4 = *this;
  (*(**(*this + 24) + 24))(*(*this + 24));
  v5 = v4[10];
  v4 += 10;
  std::__tree<std::string>::destroy((v4 - 1), v5);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  if ((a2 & 1) == 0)
  {
    siri::intelligence::ExecutionState::Clear((*this + 96));
  }

  v6 = *this;
  *(v6 + 312) = 0;
  *(*(v6 + 200) + 40) = 0;
  gettimeofday(&v8, 0);
  result = *(v6 + 296) + v8.tv_usec / 1000000.0 + v8.tv_sec;
  *(*(v6 + 8) + 304) = result;
  return result;
}

double siri::intelligence::Intelligence::LoadState(siri::intelligence::Intelligence::Impl **a1, uint64_t a2, int a3)
{
  siri::intelligence::FlowGraph::Load((*a1 + 8), a2, a3);
  siri::intelligence::Memory::Load(*a1 + 3, a2);
  siri::intelligence::ExecutionState::Clear((*a1 + 96));
  if (a3)
  {
    if (a3 == 1 && *(a2 + 104) > 0)
    {
      siri::intelligence::Intelligence::Impl::LoadExecutionState(*a1, *(*(a2 + 112) + 8), (*a1 + 96));
    }
  }

  else
  {
    v7 = *a1;
    gettimeofday(v25, 0);
    result = *(v7 + 37) + SLODWORD(v25[0].__r_.__value_.__r.__words[1]) / 1000000.0 + v25[0].__r_.__value_.__l.__data_;
    *(*(v7 + 1) + 304) = result;
  }

  v8 = (a2 + 144);
  if (*(a2 + 144) == 3)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    LOWORD(v25[0].__r_.__value_.__l.__data_) = *google::protobuf::RepeatedField<int>::elements(a2 + 144);
    std::vector<unsigned short>::push_back[abi:ne200100](&v21, v25);
    if (*v8 <= 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v9 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v24, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    }

    v20 = *(google::protobuf::RepeatedField<int>::elements(a2 + 144) + 4);
    std::vector<unsigned short>::push_back[abi:ne200100](&v21, &v20);
    if (*v8 <= 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v10 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v24, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    }

    v20 = *(google::protobuf::RepeatedField<int>::elements(a2 + 144) + 8);
    std::vector<unsigned short>::push_back[abi:ne200100](&v21, &v20);
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, v21, v22, (v22 - v21) >> 1);
    v12 = __p;
    if (v18 - __p != 6)
    {
      siri::intelligence::Log::Warning("Random Number Generator State expects data of size 3, not %zu\n", v11, (v18 - __p) >> 1);
      v12 = __p;
    }

    v13 = *v12 | (*(v12 + 1) << 16);
    word_27F754D44 = HIWORD(*(v12 + 1));
    siri::intelligence::Utils::sRandomNumberGeneratorState = v13;
    v18 = v12;
    operator delete(v12);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 4) != 0)
  {
    result = *(a2 + 224);
    v15 = *a1;
    *(v15 + 37) = result;
    *(*(v15 + 25) + 32) = result;
  }

  if ((v14 & 8) != 0)
  {
    v16 = *a1;
    result = *(a2 + 232);
    *(v16 + 39) = result;
    *(*(v16 + 25) + 40) = result;
  }

  return result;
}

void sub_254D9D440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

double siri::intelligence::Intelligence::SaveState(siri::intelligence::Intelligence *this, protobuf::Intelligence_State *a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  siri::intelligence::FlowGraph::Save((*this + 8), a2, a3, a4);
  siri::intelligence::Memory::Save((*this + 24), a2);
  v7 = *(a2 + 14);
  if (!v7)
  {
    v9 = *(a2 + 27);
    goto LABEL_7;
  }

  v8 = *(a2 + 26);
  v9 = *v7;
  if (v8 >= *v7)
  {
    if (v9 != *(a2 + 27))
    {
LABEL_8:
      *v7 = v9 + 1;
      v6 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState>(*(a2 + 12));
      v11 = v6;
      v12 = *(a2 + 26);
      v13 = *(a2 + 14) + 8 * v12;
      *(a2 + 26) = v12 + 1;
      *(v13 + 8) = v6;
      v10 = *this;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 24, v9 + 1);
    v7 = *(a2 + 14);
    v9 = *v7;
    goto LABEL_8;
  }

  v10 = *this;
  *(a2 + 26) = v8 + 1;
  v11 = *&v7[2 * v8 + 2];
LABEL_9:
  siri::intelligence::Intelligence::Impl::SaveExecutionState(v6, v11, (v10 + 96));
  v14 = word_27F754D44;
  v15 = HIWORD(siri::intelligence::Utils::sRandomNumberGeneratorState);
  v16 = siri::intelligence::Utils::sRandomNumberGeneratorState;
  v17 = *(a2 + 36);
  if (v17 == *(a2 + 37))
  {
    google::protobuf::RepeatedField<int>::Reserve(a2 + 36, v17 + 1);
  }

  v18 = google::protobuf::RepeatedField<int>::elements(a2 + 144);
  v19 = *(a2 + 36);
  *(a2 + 36) = v19 + 1;
  *(v18 + 4 * v19) = v16;
  v20 = *(a2 + 36);
  if (v20 == *(a2 + 37))
  {
    google::protobuf::RepeatedField<int>::Reserve(a2 + 36, v20 + 1);
  }

  v21 = google::protobuf::RepeatedField<int>::elements(a2 + 144);
  v22 = *(a2 + 36);
  *(a2 + 36) = v22 + 1;
  *(v21 + 4 * v22) = v15;
  v23 = *(a2 + 36);
  if (v23 == *(a2 + 37))
  {
    google::protobuf::RepeatedField<int>::Reserve(a2 + 36, v23 + 1);
  }

  v24 = google::protobuf::RepeatedField<int>::elements(a2 + 144);
  v25 = *(a2 + 36);
  *(a2 + 36) = v25 + 1;
  *(v24 + 4 * v25) = v14;
  result = *(*this + 296);
  v27 = *(*this + 312);
  *(a2 + 4) |= 0xCu;
  *(a2 + 28) = result;
  *(a2 + 29) = v27;
  return result;
}

void siri::intelligence::ExecutionState::~ExecutionState(void **this)
{
  v3 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this;
  std::vector<std::vector<siri::intelligence::ResponseState>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string const&,char const*&,0>(std::string *this, __int128 *a2, char **a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::string::basic_string[abi:ne200100]<0>(&this[1], *a3);
  return this;
}

void sub_254D9D7EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<siri::intelligence::Intelligence::Impl>::__shared_ptr_emplace[abi:ne200100]<siri::intelligence::Intelligence*,std::allocator<siri::intelligence::Intelligence::Impl>,0>(void *a1, siri::intelligence::Intelligence **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671C7C8;
  siri::intelligence::Intelligence::Impl::Impl((a1 + 3), *a2);
}

void std::__shared_ptr_emplace<siri::intelligence::Intelligence::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Intelligence::Impl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v2 = *(a1 + 280);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 264);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = (a1 + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = (a1 + 120);
  std::vector<std::vector<siri::intelligence::ResponseState>>::__destroy_vector::operator()[abi:ne200100](&v8);
  siri::intelligence::Memory::~Memory((a1 + 48));
  v7 = *(a1 + 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Start>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Start>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__shared_ptr_emplace<siri::intelligence::Intent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__split_buffer<siri::intelligence::NLParameters>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 40;
    std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](v4, i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::Condition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C8B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Condition>::__on_zero_shared(uint64_t a1)
{
  siri::intelligence::ConditionEntry::~ConditionEntry((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Character>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Character>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Activity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::Activity>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<siri::intelligence::IntentReference>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::DialogResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::BehaviorResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671CA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::ReferenceResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671CA98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::ResponseGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671CAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::intelligence::Context>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<siri::intelligence::Context>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 7;
        std::allocator_traits<std::allocator<siri::intelligence::RuleMatch>>::destroy[abi:ne200100]<siri::intelligence::RuleMatch,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<siri::intelligence::RuleMatch>>::destroy[abi:ne200100]<siri::intelligence::RuleMatch,0>(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::allocator<siri::intelligence::RuleMatch>::construct[abi:ne200100]<siri::intelligence::RuleMatch,siri::intelligence::RuleMatch const&>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::RuleMatch>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<siri::intelligence::RuleMatch *,siri::intelligence::RuleMatch *,siri::intelligence::RuleMatch *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = v5[1];
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v9 = *(a3 + 24);
      *(a3 + 16) = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      *(a3 + 32) = *(v5 + 8);
      v10 = *(v5 + 40);
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      v11 = *(a3 + 48);
      *(a3 + 40) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v5 = (v5 + 56);
      a3 += 56;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,false>(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2;
  v293 = a2 - 56;
  v9 = a1;
  while (1)
  {
    v10 = v9;
    v11 = v8 - v9;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 3);
    v301 = v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      v8 = a2;
      if (v12 == 2)
      {
        v106 = *(a2 - 48);
        v107 = *a3;
        *&v310 = *(a2 - 56);
        *(&v310 + 1) = v106;
        if (v106)
        {
          atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v107 + 8), &v310);
        v109 = *(v9 + 8);
        *&v306 = *v9;
        *(&v306 + 1) = v109;
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v110 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v107 + 8), &v306);
        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        if (v106)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v106);
        }

        v111 = v9;
        if (ResponseLastTimestamp < v110)
        {
          v112 = (a2 - 56);
          goto LABEL_202;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {

      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9, v9 + 56, v293, a3);
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9, v9 + 56, v9 + 112, v9 + 168, v293, a3);
      return;
    }

LABEL_9:
    if (v11 <= 1343)
    {
      if (a5)
      {
        if (v9 != v8)
        {
          v130 = v9 + 56;
          if (v9 + 56 != a2)
          {
            v131 = 0;
            v132 = v9;
            do
            {
              v133 = v130;
              v134 = *a3;
              v135 = *(v130 + 8);
              *&v310 = *(v132 + 56);
              *(&v310 + 1) = v135;
              if (v135)
              {
                atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v136 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v134 + 8), &v310);
              v137 = *(v132 + 8);
              *&v306 = *v132;
              *(&v306 + 1) = v137;
              if (v137)
              {
                atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v138 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v134 + 8), &v306);
              if (v137)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v137);
              }

              if (v135)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v135);
              }

              if (v136 < v138)
              {
                v310 = *v133;
                *v133 = 0;
                *(v133 + 8) = 0;
                v311 = *(v132 + 72);
                *(v132 + 72) = 0;
                *(v132 + 80) = 0;
                v312 = *(v132 + 88);
                v313 = *(v132 + 96);
                *(v132 + 96) = 0;
                *(v132 + 104) = 0;
                v139 = v131;
                while (1)
                {
                  v140 = v139;
                  v141 = v301 + v139;
                  v142 = *(v301 + v139);
                  *v141 = 0;
                  *(v141 + 8) = 0;
                  v143 = *(v301 + v139 + 64);
                  *(v141 + 56) = v142;
                  if (v143)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v143);
                  }

                  v144 = *(v141 + 16);
                  *(v141 + 16) = 0;
                  *(v141 + 24) = 0;
                  v145 = *(v141 + 80);
                  *(v141 + 72) = v144;
                  if (v145)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v145);
                  }

                  v146 = v301 + v140;
                  *(v146 + 88) = *(v301 + v140 + 32);
                  v147 = *(v301 + v140 + 40);
                  *(v146 + 40) = 0;
                  *(v146 + 48) = 0;
                  v148 = *(v301 + v140 + 104);
                  *(v146 + 96) = v147;
                  if (v148)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v148);
                  }

                  v149 = v310;
                  if (!v140)
                  {
                    break;
                  }

                  v150 = *a3;
                  v306 = v310;
                  if (*(&v310 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v310 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v151 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v150 + 8), &v306);
                  v315[0] = *(v301 + v140 - 56);
                  v152 = *(v301 + v140 - 48);
                  v315[1] = v152;
                  if (v152)
                  {
                    atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v153 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v150 + 8), v315);
                  if (v152)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v152);
                  }

                  if (*(&v149 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
                  }

                  v139 = v140 - 56;
                  if (v151 >= v153)
                  {
                    v154 = v301 + v140;
                    goto LABEL_265;
                  }
                }

                v154 = v301;
LABEL_265:
                v310 = 0uLL;
                v155 = *(v154 + 8);
                *v154 = v149;
                if (v155)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v155);
                }

                v156 = v311;
                v311 = 0uLL;
                *(v301 + v140 + 16) = v156;
                v157 = *(v154 + 24);
                *(v154 + 24) = *(&v156 + 1);
                if (v157)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                }

                *(v154 + 32) = v312;
                v158 = v313;
                v313 = 0uLL;
                *(v301 + v140 + 40) = v158;
                v159 = *(v154 + 48);
                *(v154 + 48) = *(&v158 + 1);
                if (v159)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v159);
                }

                if (*(&v313 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v313 + 1));
                }

                if (*(&v311 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v311 + 1));
                }

                if (*(&v310 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v310 + 1));
                }
              }

              v130 = v133 + 56;
              v131 += 56;
              v132 = v133;
            }

            while (v133 + 56 != a2);
          }
        }
      }

      else if (v9 != v8)
      {
        v266 = v9 + 56;
        if (v9 + 56 != a2)
        {
          v267 = (v9 + 104);
          do
          {
            v268 = v266;
            v269 = *a3;
            v270 = v10;
            v271 = *(v10 + 56);
            v272 = *(v268 + 8);
            *&v310 = v271;
            *(&v310 + 1) = v272;
            if (v272)
            {
              atomic_fetch_add_explicit(&v272->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v273 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v269 + 8), &v310);
            v274 = *(v270 + 8);
            *&v306 = *v270;
            *(&v306 + 1) = v274;
            if (v274)
            {
              atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v275 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v269 + 8), &v306);
            if (v274)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v274);
            }

            if (v272)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v272);
            }

            if (v273 < v275)
            {
              v310 = *v268;
              *v268 = 0;
              *(v268 + 8) = 0;
              v311 = *(v270 + 72);
              *(v270 + 72) = 0;
              *(v270 + 80) = 0;
              v312 = *(v270 + 88);
              v313 = *(v270 + 96);
              *(v270 + 96) = 0;
              *(v270 + 104) = 0;
              v276 = v267;
              do
              {
                v277 = *(v276 - 13);
                *(v276 - 13) = 0;
                *(v276 - 12) = 0;
                v278 = *(v276 - 5);
                *(v276 - 3) = v277;
                if (v278)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v278);
                }

                v279 = *(v276 - 11);
                *(v276 - 11) = 0;
                *(v276 - 10) = 0;
                v280 = *(v276 - 3);
                *(v276 - 2) = v279;
                if (v280)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v280);
                }

                *(v276 - 4) = *(v276 - 18);
                v281 = *(v276 - 4);
                *(v276 - 8) = 0;
                *(v276 - 7) = 0;
                v282 = *v276;
                *(v276 - 1) = v281;
                if (v282)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v282);
                }

                v283 = *a3;
                v284 = v310;
                v306 = v310;
                if (*(&v310 + 1))
                {
                  atomic_fetch_add_explicit((*(&v310 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v285 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v283 + 8), &v306);
                v315[0] = *(v276 - 20);
                v286 = *(v276 - 19);
                v315[1] = v286;
                if (v286)
                {
                  atomic_fetch_add_explicit(&v286->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v287 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v283 + 8), v315);
                if (v286)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v286);
                }

                if (*(&v284 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v284 + 1));
                }

                v276 -= 7;
              }

              while (v285 < v287);
              v310 = 0uLL;
              v288 = *(v276 - 5);
              *(v276 - 3) = v284;
              if (v288)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v288);
              }

              v289 = v311;
              v311 = 0uLL;
              v290 = *(v276 - 3);
              *(v276 - 2) = v289;
              if (v290)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v290);
              }

              *(v276 - 4) = v312;
              v291 = v313;
              v313 = 0uLL;
              v292 = *v276;
              *(v276 - 1) = v291;
              if (v292)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v292);
              }

              if (*(&v313 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v313 + 1));
              }

              if (*(&v311 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v311 + 1));
              }

              if (*(&v310 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v310 + 1));
              }
            }

            v266 = v268 + 56;
            v267 += 7;
            v10 = v268;
          }

          while (v268 + 56 != a2);
        }
      }

      return;
    }

    if (!a4)
    {
      if (v9 == v8)
      {
        return;
      }

      v160 = (v12 - 2) >> 1;
      v304 = v160;
      do
      {
        v161 = v160;
        if (v304 >= v160)
        {
          v162 = (2 * v160) | 1;
          v163 = v10 + 56 * v162;
          v164 = 2 * v160 + 2;
          v165 = v160;
          if (v164 < v12)
          {
            v166 = *a3;
            v167 = *(v163 + 8);
            *&v310 = *v163;
            *(&v310 + 1) = v167;
            if (v167)
            {
              atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v168 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v166 + 8), &v310);
            *&v306 = *(v163 + 56);
            v169 = *(v163 + 64);
            *(&v306 + 1) = v169;
            if (v169)
            {
              atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v170 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v166 + 8), &v306);
            if (v169)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v169);
            }

            if (v167)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v167);
            }

            if (v168 < v170)
            {
              v163 += 56;
              v162 = v164;
            }
          }

          v171 = *a3;
          v172 = *(v163 + 8);
          *&v310 = *v163;
          *(&v310 + 1) = v172;
          if (v172)
          {
            atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v173 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v171 + 8), &v310);
          v295 = v165;
          v174 = v301 + 56 * v165;
          *&v306 = *v174;
          v175 = *(v174 + 8);
          *(&v306 + 1) = v175;
          if (v175)
          {
            atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v176 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v171 + 8), &v306);
          if (v175)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v175);
          }

          if (v172)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v172);
          }

          v10 = v301;
          v161 = v295;
          if (v173 >= v176)
          {
            v310 = *v174;
            *v174 = 0;
            *(v174 + 8) = 0;
            v311 = *(v174 + 16);
            *(v174 + 16) = 0;
            *(v174 + 24) = 0;
            v312 = *(v174 + 32);
            v313 = *(v174 + 40);
            *(v174 + 40) = 0;
            *(v174 + 48) = 0;
            while (1)
            {
              v177 = v163;
              v178 = *v163;
              *v163 = 0;
              *(v163 + 8) = 0;
              v179 = *(v174 + 8);
              *v174 = v178;
              if (v179)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v179);
              }

              v180 = *(v163 + 16);
              *(v163 + 16) = 0;
              *(v163 + 24) = 0;
              v181 = *(v174 + 24);
              *(v174 + 16) = v180;
              if (v181)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v181);
              }

              *(v174 + 32) = *(v163 + 32);
              v182 = *(v163 + 40);
              *(v163 + 40) = 0;
              *(v163 + 48) = 0;
              v183 = *(v174 + 48);
              *(v174 + 40) = v182;
              if (v183)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v183);
              }

              if (v304 < v162)
              {
                break;
              }

              v184 = (2 * v162) | 1;
              v163 = v10 + 56 * v184;
              v185 = 2 * v162 + 2;
              if (v185 >= v12)
              {
                v162 = (2 * v162) | 1;
              }

              else
              {
                v186 = *a3;
                v187 = *(v163 + 8);
                *&v306 = *v163;
                *(&v306 + 1) = v187;
                if (v187)
                {
                  atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v188 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v186 + 8), &v306);
                v315[0] = *(v163 + 56);
                v189 = *(v163 + 64);
                v315[1] = v189;
                if (v189)
                {
                  atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v190 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v186 + 8), v315);
                if (v189)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v189);
                }

                if (v187)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v187);
                }

                if (v188 >= v190)
                {
                  v162 = v184;
                }

                else
                {
                  v163 += 56;
                  v162 = v185;
                }
              }

              v191 = *a3;
              v192 = *(v163 + 8);
              *&v306 = *v163;
              *(&v306 + 1) = v192;
              if (v192)
              {
                atomic_fetch_add_explicit(&v192->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v193 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v191 + 8), &v306);
              *v315 = v310;
              v297 = v310;
              v194 = *(&v310 + 1);
              if (*(&v310 + 1))
              {
                atomic_fetch_add_explicit((*(&v310 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v195 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v191 + 8), v315);
              if (v194)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v194);
              }

              if (v192)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v192);
              }

              v174 = v177;
              v10 = v301;
              if (v193 < v195)
              {
                v196 = v297;
                goto LABEL_334;
              }
            }

            v196 = v310;
LABEL_334:
            v310 = 0uLL;
            v197 = *(v177 + 8);
            *v177 = v196;
            if (v197)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v197);
            }

            v198 = v311;
            v311 = 0uLL;
            v199 = *(v177 + 24);
            *(v177 + 16) = v198;
            if (v199)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v199);
            }

            *(v177 + 32) = v312;
            v200 = v313;
            v313 = 0uLL;
            v201 = *(v177 + 48);
            *(v177 + 40) = v200;
            if (v201)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v201);
            }

            if (*(&v313 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v313 + 1));
            }

            if (*(&v311 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v311 + 1));
            }

            if (*(&v310 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v310 + 1));
            }

            v161 = v295;
          }
        }

        v160 = v161 - 1;
      }

      while (v161);
      v202 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
      while (2)
      {
        v203 = v10;
        v204 = 0;
        v205 = *(v203 + 16);
        v306 = *v203;
        v298 = a2;
        *v203 = 0;
        *(v203 + 8) = 0;
        v307 = v205;
        *(v203 + 16) = 0;
        *(v203 + 24) = 0;
        v308 = *(v203 + 32);
        v309 = *(v203 + 40);
        v305 = v202;
        v206 = (v202 - 2) >> 1;
        v207 = v203;
        *(v203 + 40) = 0;
        *(v203 + 48) = 0;
        do
        {
          v208 = &v207[7 * v204];
          v209 = v208 + 7;
          v210 = (2 * v204) | 1;
          v211 = 2 * v204 + 2;
          if (v211 >= v305)
          {
            v204 = (2 * v204) | 1;
          }

          else
          {
            v212 = *a3;
            v213 = v208[8];
            *&v310 = v208[7];
            *(&v310 + 1) = v213;
            if (v213)
            {
              atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v214 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v212 + 8), &v310);
            v315[0] = v208[14];
            v215 = v208[15];
            v315[1] = v215;
            if (v215)
            {
              atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v216 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v212 + 8), v315);
            if (v215)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v215);
            }

            if (v213)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v213);
            }

            if (v214 >= v216)
            {
              v204 = v210;
            }

            else
            {
              v209 = v208 + 14;
              v204 = v211;
            }
          }

          v217 = *v209;
          *v209 = 0;
          v209[1] = 0;
          v218 = v207[1];
          *v207 = v217;
          if (v218)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v218);
          }

          v219 = *(v209 + 1);
          v209[2] = 0;
          v209[3] = 0;
          v220 = v207[3];
          *(v207 + 1) = v219;
          if (v220)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v220);
          }

          v221 = *(v209 + 5);
          *(v207 + 8) = *(v209 + 8);
          v209[5] = 0;
          v209[6] = 0;
          v222 = v207[6];
          *(v207 + 5) = v221;
          if (v222)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v222);
          }

          v207 = v209;
        }

        while (v204 <= v206);
        v223 = (a2 - 56);
        a2 -= 56;
        if (v209 == (v298 - 56))
        {
          v258 = v306;
          v306 = 0uLL;
          v259 = v209[1];
          *v209 = v258;
          v10 = v301;
          if (v259)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v259);
          }

          v260 = v307;
          v307 = 0uLL;
          v261 = v209[3];
          *(v209 + 1) = v260;
          if (v261)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v261);
          }

          *(v209 + 8) = v308;
          v262 = v309;
          v309 = 0uLL;
          v263 = v209[6];
          *(v209 + 5) = v262;
          if (!v263)
          {
            goto LABEL_417;
          }
        }

        else
        {
          v224 = *(v298 - 56);
          *v223 = 0;
          v223[1] = 0;
          v225 = v209[1];
          *v209 = v224;
          v10 = v301;
          if (v225)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v225);
          }

          v226 = *(v298 - 40);
          *(v298 - 40) = 0;
          *(v298 - 32) = 0;
          v227 = v209[3];
          *(v209 + 1) = v226;
          if (v227)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v227);
          }

          *(v209 + 8) = *(v298 - 24);
          v228 = *(v298 - 16);
          *(v298 - 16) = 0;
          *(v298 - 8) = 0;
          v229 = v209[6];
          *(v209 + 5) = v228;
          if (v229)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v229);
          }

          v230 = v306;
          v306 = 0uLL;
          v231 = *(v298 - 48);
          *(v298 - 56) = v230;
          if (v231)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v231);
          }

          v232 = v307;
          v307 = 0uLL;
          v233 = *(v298 - 32);
          *(v298 - 40) = v232;
          if (v233)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v233);
          }

          *(v298 - 24) = v308;
          v234 = v309;
          v309 = 0uLL;
          v235 = *(v298 - 8);
          *(v298 - 16) = v234;
          if (v235)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v235);
          }

          v236 = v209 - v301 + 56;
          if (v236 < 57)
          {
            goto LABEL_417;
          }

          v237 = (0x6DB6DB6DB6DB6DB7 * (v236 >> 3) - 2) >> 1;
          v238 = v301 + 56 * v237;
          v239 = *a3;
          v240 = *(v238 + 8);
          *&v310 = *v238;
          *(&v310 + 1) = v240;
          if (v240)
          {
            atomic_fetch_add_explicit(&v240->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v241 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v239 + 8), &v310);
          v242 = v209[1];
          v315[0] = *v209;
          v315[1] = v242;
          if (v242)
          {
            atomic_fetch_add_explicit(&v242->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v243 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v239 + 8), v315);
          if (v242)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v242);
          }

          if (v240)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v240);
          }

          v10 = v301;
          if (v241 >= v243)
          {
            goto LABEL_417;
          }

          v244 = *(v209 + 1);
          v310 = *v209;
          *v209 = 0;
          v209[1] = 0;
          v311 = v244;
          v209[2] = 0;
          v209[3] = 0;
          v312 = *(v209 + 8);
          v313 = *(v209 + 5);
          v209[5] = 0;
          v209[6] = 0;
          while (1)
          {
            v245 = v238;
            v246 = *v238;
            *v238 = 0;
            *(v238 + 8) = 0;
            v247 = v209[1];
            *v209 = v246;
            if (v247)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v247);
            }

            v248 = *(v238 + 16);
            *(v238 + 16) = 0;
            *(v238 + 24) = 0;
            v249 = v209[3];
            *(v209 + 1) = v248;
            if (v249)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v249);
            }

            *(v209 + 8) = *(v238 + 32);
            v250 = *(v238 + 40);
            *(v238 + 40) = 0;
            *(v238 + 48) = 0;
            v251 = v209[6];
            *(v209 + 5) = v250;
            if (v251)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v251);
            }

            if (!v237)
            {
              break;
            }

            v237 = (v237 - 1) >> 1;
            v238 = v10 + 56 * v237;
            v252 = *a3;
            v253 = *(v238 + 8);
            v315[0] = *v238;
            v315[1] = v253;
            if (v253)
            {
              atomic_fetch_add_explicit(&v253->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v254 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v252 + 8), v315);
            v314 = v310;
            v299 = v310;
            v255 = *(&v310 + 1);
            if (*(&v310 + 1))
            {
              atomic_fetch_add_explicit((*(&v310 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v256 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v252 + 8), &v314);
            if (v255)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v255);
            }

            if (v253)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v253);
            }

            v209 = v245;
            v10 = v301;
            if (v254 >= v256)
            {
              v257 = v299;
              goto LABEL_426;
            }
          }

          v257 = v310;
LABEL_426:
          v264 = *(v245 + 8);
          *v245 = v257;
          if (v264)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v264);
          }

          v265 = *(v245 + 24);
          *(v245 + 16) = v311;
          if (v265)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v265);
          }

          *(v245 + 32) = v312;
          v263 = *(v245 + 48);
          *(v245 + 40) = v313;
          if (!v263)
          {
LABEL_417:
            if (*(&v309 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v309 + 1));
            }

            if (*(&v307 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v307 + 1));
            }

            if (*(&v306 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v306 + 1));
            }

            v202 = v305 - 1;
            if (v305 <= 2)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v263);
      goto LABEL_417;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 56 * (v12 >> 1));
    if (v11 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v14, v9, v293, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9, v14, v293, a3);
      v15 = 56 * v13;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9 + 56, v15 + v9 - 56, a2 - 112, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9 + 112, v9 + 56 + v15, a2 - 168, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v15 + v9 - 56, v14, v9 + 56 + v15, a3);
      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v9, v14);
    }

    v303 = a4 - 1;
    if (a5)
    {
      goto LABEL_24;
    }

    v16 = *a3;
    v17 = *(v9 - 48);
    *&v310 = *(v9 - 56);
    *(&v310 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v16 + 8), &v310);
    v19 = *(v9 + 8);
    *&v306 = *v9;
    *(&v306 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v16 + 8), &v306);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v18 < v20)
    {
LABEL_24:
      v21 = 0;
      v22 = *v9;
      v23 = *(v9 + 8);
      *&v310 = *v9;
      *(&v310 + 1) = v23;
      *v9 = 0;
      *(v9 + 8) = 0;
      v311 = *(v9 + 16);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v24 = *(v9 + 32);
      v312 = *(v10 + 32);
      v313 = *(v10 + 40);
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      do
      {
        v25 = *a3;
        v26 = *(v10 + v21 + 64);
        *&v306 = *(v10 + v21 + 56);
        *(&v306 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v27 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v25 + 8), &v306);
        v315[0] = v22;
        v315[1] = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v25 + 8), v315);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v21 += 56;
      }

      while (v27 < v28);
      v29 = v10 + v21;
      if (v21 == 56)
      {
        v8 = a2;
        do
        {
          if (v29 >= v8)
          {
            break;
          }

          v35 = *(v8 - 7);
          v36 = *(v8 - 6);
          v8 = (v8 - 56);
          v37 = *a3;
          *&v306 = v35;
          *(&v306 + 1) = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v38 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v37 + 8), &v306);
          v315[0] = v22;
          v315[1] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v39 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v37 + 8), v315);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }
        }

        while (v38 >= v39);
      }

      else
      {
        do
        {
          v30 = *(v8 - 7);
          v31 = *(v8 - 6);
          v8 = (v8 - 56);
          v32 = *a3;
          *&v306 = v30;
          *(&v306 + 1) = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v32 + 8), &v306);
          v315[0] = v22;
          v315[1] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v32 + 8), v315);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        while (v33 >= v34);
      }

      v296 = v24;
      v9 = v29;
      if (v29 < v8)
      {
        v40 = v8;
        do
        {
          std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v9, v40);
          do
          {
            v41 = *(v9 + 56);
            v42 = *(v9 + 64);
            v9 += 56;
            v43 = *a3;
            *&v306 = v41;
            *(&v306 + 1) = v42;
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v44 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v43 + 8), &v306);
            v315[0] = v22;
            v315[1] = v23;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v45 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v43 + 8), v315);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }
          }

          while (v44 < v45);
          do
          {
            v46 = *(v40 - 7);
            v47 = *(v40 - 6);
            v40 = (v40 - 56);
            v48 = *a3;
            *&v306 = v46;
            *(&v306 + 1) = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v49 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v48 + 8), &v306);
            v315[0] = v22;
            v315[1] = v23;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v48 + 8), v315);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            if (v47)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            }
          }

          while (v49 >= v50);
        }

        while (v9 < v40);
      }

      v51 = (v9 - 56);
      if (v9 - 56 != v301)
      {
        v52 = *v51;
        *v51 = 0;
        *(v9 - 48) = 0;
        v53 = *(v301 + 8);
        *v301 = v52;
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        v54 = *(v9 - 40);
        *(v9 - 40) = 0;
        *(v9 - 32) = 0;
        v55 = *(v301 + 24);
        *(v301 + 16) = v54;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        *(v301 + 32) = *(v9 - 24);
        v56 = *(v9 - 16);
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        v57 = *(v301 + 48);
        *(v301 + 40) = v56;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }

      v310 = 0uLL;
      v58 = *(v9 - 48);
      *(v9 - 56) = v22;
      *(v9 - 48) = v23;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      }

      v59 = v311;
      v311 = 0uLL;
      v60 = *(v9 - 32);
      *(v9 - 40) = v59;
      a4 = v303;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      *(v9 - 24) = v296;
      v61 = v313;
      v313 = 0uLL;
      v62 = *(v9 - 8);
      *(v9 - 16) = v61;
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (*(&v313 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v313 + 1));
      }

      if (*(&v311 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v311 + 1));
      }

      if (*(&v310 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v310 + 1));
      }

      v63 = v29 >= v8;
      v8 = a2;
      a1 = v301;
      if (!v63)
      {
        goto LABEL_101;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*>(v301, v9 - 56, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*>(v9, a2, a3))
      {
        a2 = v9 - 56;
        if (v64)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v64)
      {
LABEL_101:
        std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,false>(v301, v9 - 56, a3, v303, a5 & 1);
        goto LABEL_102;
      }
    }

    else
    {
      v65 = *(v9 + 8);
      *&v310 = *v9;
      v66 = v310;
      *(&v310 + 1) = v65;
      *v9 = 0;
      *(v9 + 8) = 0;
      v311 = *(v9 + 16);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v67 = *(v9 + 32);
      v312 = v67;
      v313 = *(v9 + 40);
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      v68 = *a3;
      *&v306 = v66;
      *(&v306 + 1) = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v68 + 8), &v306);
      v315[0] = *(v8 - 7);
      v70 = *(v8 - 6);
      v315[1] = v70;
      if (v70)
      {
        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v71 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v68 + 8), v315);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      v302 = v67;
      if (v69 >= v71)
      {
        v76 = v9 + 56;
        do
        {
          v9 = v76;
          if (v76 >= v8)
          {
            break;
          }

          v77 = *a3;
          *&v306 = v66;
          *(&v306 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v77 + 8), &v306);
          v315[0] = *v9;
          v79 = *(v9 + 8);
          v315[1] = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v77 + 8), v315);
          if (v79)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v79);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          v76 = v9 + 56;
        }

        while (v78 >= v80);
      }

      else
      {
        do
        {
          v72 = *a3;
          *&v306 = v66;
          *(&v306 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v72 + 8), &v306);
          v74 = *(v9 + 64);
          v315[0] = *(v9 + 56);
          v315[1] = v74;
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v75 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v72 + 8), v315);
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          v9 += 56;
        }

        while (v73 >= v75);
      }

      v81 = v8;
      if (v9 < v8)
      {
        v81 = v8;
        do
        {
          v82 = *a3;
          *&v306 = v66;
          *(&v306 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v83 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v82 + 8), &v306);
          v315[0] = *(v81 - 7);
          v84 = *(v81 - 6);
          v315[1] = v84;
          if (v84)
          {
            atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v85 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v82 + 8), v315);
          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v84);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          v81 = (v81 - 56);
        }

        while (v83 < v85);
      }

      while (v9 < v81)
      {
        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v9, v81);
        do
        {
          v86 = *a3;
          *&v306 = v66;
          *(&v306 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v87 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v86 + 8), &v306);
          v88 = *(v9 + 64);
          v315[0] = *(v9 + 56);
          v315[1] = v88;
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v89 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v86 + 8), v315);
          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          v9 += 56;
        }

        while (v87 >= v89);
        do
        {
          v90 = *a3;
          *&v306 = v66;
          *(&v306 + 1) = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v91 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v90 + 8), &v306);
          v315[0] = *(v81 - 7);
          v92 = *(v81 - 6);
          v315[1] = v92;
          if (v92)
          {
            atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v93 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v90 + 8), v315);
          if (v92)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v92);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          v81 = (v81 - 56);
        }

        while (v91 < v93);
      }

      v94 = (v9 - 56);
      if (v9 - 56 != v10)
      {
        v95 = *v94;
        *v94 = 0;
        *(v9 - 48) = 0;
        v96 = *(v10 + 8);
        *v10 = v95;
        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }

        v97 = *(v9 - 40);
        *(v9 - 40) = 0;
        *(v9 - 32) = 0;
        v98 = *(v10 + 24);
        *(v10 + 16) = v97;
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        }

        *(v10 + 32) = *(v9 - 24);
        v99 = *(v9 - 16);
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        v100 = *(v10 + 48);
        *(v10 + 40) = v99;
        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
        }
      }

      v310 = 0uLL;
      v101 = *(v9 - 48);
      *(v9 - 56) = v66;
      *(v9 - 48) = v65;
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v101);
      }

      v102 = v311;
      v311 = 0uLL;
      v103 = *(v9 - 32);
      *(v9 - 40) = v102;
      a4 = v303;
      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }

      *(v9 - 24) = v302;
      v104 = v313;
      v313 = 0uLL;
      v105 = *(v9 - 8);
      *(v9 - 16) = v104;
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }

      if (*(&v313 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v313 + 1));
      }

      if (*(&v311 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v311 + 1));
      }

      if (*(&v310 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v310 + 1));
      }

LABEL_102:
      a5 = 0;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(v9, v9 + 56, v9 + 112, a3);
  v113 = *(v8 - 7);
  v115 = *(v8 - 6);
  v114 = (v8 - 56);
  v116 = *a3;
  *&v310 = v113;
  *(&v310 + 1) = v115;
  if (v115)
  {
    atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v117 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v116 + 8), &v310);
  v118 = *(v9 + 120);
  *&v306 = *(v9 + 112);
  *(&v306 + 1) = v118;
  if (v118)
  {
    atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v119 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v116 + 8), &v306);
  if (v118)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v118);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (v117 < v119)
  {
    std::swap[abi:ne200100]<siri::intelligence::RuleMatch>((v9 + 112), v114);
    v120 = *a3;
    v121 = *(v9 + 120);
    *&v310 = *(v9 + 112);
    *(&v310 + 1) = v121;
    if (v121)
    {
      atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v122 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v120 + 8), &v310);
    v123 = *(v9 + 64);
    *&v306 = *(v9 + 56);
    *(&v306 + 1) = v123;
    if (v123)
    {
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v124 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v120 + 8), &v306);
    if (v123)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    if (v122 < v124)
    {
      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>((v9 + 56), (v9 + 112));
      v125 = *a3;
      v126 = *(v9 + 64);
      *&v310 = *(v9 + 56);
      *(&v310 + 1) = v126;
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v127 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v125 + 8), &v310);
      v128 = *(v9 + 8);
      *&v306 = *v9;
      *(&v306 + 1) = v128;
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v129 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v125 + 8), &v306);
      if (v128)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      }

      if (v126)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v126);
      }

      v111 = v9;
      if (v127 < v129)
      {
        v112 = (v9 + 56);
LABEL_202:

        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v111, v112);
      }
    }
  }
}

void sub_254D9FD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(a2 + 8);
  v32 = *a2;
  v33 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v8 + 8), &v32);
  v11 = *(a1 + 8);
  v30 = *a1;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v8 + 8), &v30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v13 = *a4;
  v14 = *(a3 + 8);
  v32 = *a3;
  v33 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v13 + 8), &v32);
  v16 = *(a2 + 8);
  v30 = *a2;
  v31 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v13 + 8), &v30);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (ResponseLastTimestamp >= v12)
  {
    if (v15 < v17)
    {
      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a2, a3);
      v25 = *a4;
      v26 = *(a2 + 8);
      v32 = *a2;
      v33 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v25 + 8), &v32);
      v28 = *(a1 + 8);
      v30 = *a1;
      v31 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v25 + 8), &v30);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v27 < v29)
      {
        v18 = a1;
        v24 = a2;
        goto LABEL_41;
      }
    }
  }

  else
  {
    v18 = a1;
    if (v15 < v17)
    {
LABEL_29:
      v24 = a3;
LABEL_41:

      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v18, v24);
      return;
    }

    std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a1, a2);
    v19 = *a4;
    v20 = *(a3 + 8);
    v32 = *a3;
    v33 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v19 + 8), &v32);
    v22 = *(a2 + 8);
    v30 = *a2;
    v31 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v19 + 8), &v30);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v21 < v23)
    {
      v18 = a2;
      goto LABEL_29;
    }
  }
}

void sub_254DA0240(_Unwind_Exception *exception_object)
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

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(a1, a2, a3, a6);
  v12 = *a6;
  v13 = *(a4 + 8);
  v49 = *a4;
  v50 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v12 + 8), &v49);
  v15 = *(a3 + 8);
  v47 = *a3;
  v48 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v12 + 8), &v47);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (ResponseLastTimestamp < v16)
  {
    std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a3, a4);
    v17 = *a6;
    v18 = *(a3 + 8);
    v49 = *a3;
    v50 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v17 + 8), &v49);
    v20 = *(a2 + 8);
    v47 = *a2;
    v48 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v17 + 8), &v47);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v19 < v21)
    {
      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a2, a3);
      v22 = *a6;
      v23 = *(a2 + 8);
      v49 = *a2;
      v50 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v22 + 8), &v49);
      v25 = *(a1 + 8);
      v47 = *a1;
      v48 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v22 + 8), &v47);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v24 < v26)
      {
        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a1, a2);
      }
    }
  }

  v27 = *a6;
  v28 = *(a5 + 8);
  v49 = *a5;
  v50 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v27 + 8), &v49);
  v30 = *(a4 + 8);
  v47 = *a4;
  v48 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v27 + 8), &v47);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v29 < v31)
  {
    std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a4, a5);
    v32 = *a6;
    v33 = *(a4 + 8);
    v49 = *a4;
    v50 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v32 + 8), &v49);
    v35 = *(a3 + 8);
    v47 = *a3;
    v48 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v32 + 8), &v47);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v34 < v36)
    {
      std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a3, a4);
      v37 = *a6;
      v38 = *(a3 + 8);
      v49 = *a3;
      v50 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v37 + 8), &v49);
      v40 = *(a2 + 8);
      v47 = *a2;
      v48 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v37 + 8), &v47);
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v39 < v41)
      {
        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a2, a3);
        v42 = *a6;
        v43 = *(a2 + 8);
        v49 = *a2;
        v50 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v42 + 8), &v49);
        v45 = *(a1 + 8);
        v47 = *a1;
        v48 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v42 + 8), &v47);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v44 < v46)
        {

          std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(a1, a2);
        }
      }
    }
  }
}

void sub_254DA06B8(_Unwind_Exception *exception_object)
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(a1, a1 + 56, a2 - 56, a3);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(a1, a1 + 56, a1 + 112, a3);
        v48 = *(v4 - 56);
        v49 = *(v4 - 48);
        v50 = (v4 - 56);
        v51 = *a3;
        *&v68 = v48;
        *(&v68 + 1) = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v51 + 8), &v68);
        v53 = *(a1 + 120);
        *&v73 = *(a1 + 112);
        *(&v73 + 1) = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v54 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v51 + 8), &v73);
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (ResponseLastTimestamp >= v54)
        {
          return 1;
        }

        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>((a1 + 112), v50);
        v55 = *a3;
        v56 = *(a1 + 120);
        *&v68 = *(a1 + 112);
        *(&v68 + 1) = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v55 + 8), &v68);
        v58 = *(a1 + 64);
        *&v73 = *(a1 + 56);
        *(&v73 + 1) = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v55 + 8), &v73);
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (v57 >= v59)
        {
          return 1;
        }

        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>((a1 + 56), (a1 + 112));
        v60 = *a3;
        v61 = *(a1 + 64);
        *&v68 = *(a1 + 56);
        *(&v68 + 1) = v61;
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v62 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v60 + 8), &v68);
        v63 = *(a1 + 8);
        *&v73 = *a1;
        *(&v73 + 1) = v63;
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v64 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v60 + 8), &v73);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        if (v62 >= v64)
        {
          return 1;
        }

        v14 = (a1 + 56);
        v13 = a1;
LABEL_14:
        std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(v13, v14);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v8 = *(a2 - 48);
      v9 = (a2 - 56);
      *&v68 = *(a2 - 56);
      *(&v68 + 1) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v7 + 8), &v68);
      v11 = *(a1 + 8);
      *&v73 = *a1;
      *(&v73 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v7 + 8), &v73);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v10 >= v12)
      {
        return 1;
      }

      v13 = a1;
      v14 = v9;
      goto LABEL_14;
    }
  }

  v15 = (a1 + 112);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::Intelligence::Impl::PickResponseRandom(std::vector<siri::intelligence::RuleMatch> const&)::$_0 &,siri::intelligence::RuleMatch*,0>(a1, a1 + 56, a1 + 112, a3);
  v16 = a1 + 168;
  if (a1 + 168 == v4)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v66 = v4;
  while (1)
  {
    v19 = *a3;
    v20 = *(v16 + 8);
    *&v68 = *v16;
    *(&v68 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v19 + 8), &v68);
    v22 = *v15;
    v23 = v15[1];
    *&v73 = v22;
    *(&v73 + 1) = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v19 + 8), &v73);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v21 < v24)
    {
      v67 = v18;
      v25 = *v16;
      v26 = *(v16 + 16);
      *v16 = 0;
      *(v16 + 8) = 0;
      v68 = v25;
      v69 = v26;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v70 = *(v16 + 32);
      v71 = *(v16 + 40);
      v27 = v17;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      while (1)
      {
        v28 = v27;
        v29 = a1 + v27;
        v30 = *(a1 + v27 + 112);
        *(v29 + 112) = 0;
        *(v29 + 120) = 0;
        v31 = *(a1 + v27 + 176);
        *(v29 + 168) = v30;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        v32 = *(v29 + 128);
        *(v29 + 128) = 0;
        *(v29 + 136) = 0;
        v33 = *(v29 + 192);
        *(v29 + 184) = v32;
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        v34 = a1 + v28;
        *(v34 + 200) = *(a1 + v28 + 144);
        v35 = *(a1 + v28 + 152);
        *(v34 + 152) = 0;
        *(v34 + 160) = 0;
        v36 = *(a1 + v28 + 216);
        *(v34 + 208) = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v37 = v68;
        if (v28 == -112)
        {
          break;
        }

        v38 = *a3;
        v73 = v68;
        if (*(&v68 + 1))
        {
          atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v39 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v38 + 8), &v73);
        v40 = *(a1 + v28 + 64);
        v72[0] = *(a1 + v28 + 56);
        v72[1] = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = siri::intelligence::FlowGraph::GetResponseLastTimestamp((v38 + 8), v72);
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (*(&v37 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
        }

        v27 = v28 - 56;
        if (v39 >= v41)
        {
          v42 = a1 + v27 + 168;
          goto LABEL_50;
        }
      }

      v42 = a1;
LABEL_50:
      v68 = 0uLL;
      v43 = *(v42 + 8);
      *v42 = v37;
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      v44 = v69;
      v69 = 0uLL;
      *(a1 + v28 + 128) = v44;
      v45 = *(v42 + 24);
      *(v42 + 24) = *(&v44 + 1);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      *(v42 + 32) = v70;
      v46 = v71;
      v71 = 0uLL;
      *(a1 + v28 + 152) = v46;
      v47 = *(v42 + 48);
      *(v42 + 48) = *(&v46 + 1);
      v4 = v66;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (*(&v71 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
      }

      if (*(&v69 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v69 + 1));
      }

      if (*(&v68 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v68 + 1));
      }

      v18 = v67 + 1;
      if (v67 == 7)
      {
        return v16 + 56 == v66;
      }
    }

    v15 = v16;
    v17 += 56;
    v16 += 56;
    if (v16 == v4)
    {
      return 1;
    }
  }
}

void sub_254DA0CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void std::swap[abi:ne200100]<siri::intelligence::RuleMatch>(__int128 *a1, __int128 *a2)
{
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v4 = *(a1 + 8);
  v16 = *(a1 + 40);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *(a1 + 1);
  *a1 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v8 = *(a1 + 3);
  a1[1] = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a2 + 40);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v10 = *(a1 + 6);
  *(a1 + 40) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(a2 + 1);
  *a2 = v14;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(a2 + 3);
  a2[1] = v15;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(a2 + 8) = v4;
  v13 = *(a2 + 6);
  *(a2 + 40) = v16;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Intent>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::allocator<siri::intelligence::Intent>,0>(std::string *a1, char *__s)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_28671C868;
  std::allocator<siri::intelligence::Intent>::construct[abi:ne200100]<siri::intelligence::Intent,char const(&)[1]>(&v2, a1 + 1, __s);
}

void sub_254DA0F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<siri::intelligence::ExecStateResponse>>::destroy[abi:ne200100]<siri::intelligence::ExecStateResponse,0>(uint64_t a1)
{
  v5 = (a1 + 288);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *(a1 + 152) = &unk_286718FE0;
  v2 = *(a1 + 280);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase((a1 + 152));
  *(a1 + 16) = &unk_286719048;
  v3 = *(a1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  siri::intelligence::ResponseBase::~ResponseBase((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__split_buffer<siri::intelligence::ExecStateResponse>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 312;
    std::allocator_traits<std::allocator<siri::intelligence::ExecStateResponse>>::destroy[abi:ne200100]<siri::intelligence::ExecStateResponse,0>(i - 312);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254DA1114(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, a2);
  }

  std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
}

_WORD *siri::intelligence::Utils::RandomNumberGeneratorState::RandomNumberGeneratorState(_WORD *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  if (v4 != 6)
  {
    siri::intelligence::Log::Warning("Random Number Generator State expects data of size 3, not %zu\n", a2, v4 >> 1);
    v3 = *a2;
  }

  *a1 = *v3;
  a1[1] = v3[1];
  a1[2] = v3[2];
  return a1;
}

void siri::intelligence::Utils::VersionLessThan(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  siri::intelligence::StringSplit(a1, ".");
}

void sub_254DA1344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v16 - 56) = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 56));
  a12 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void siri::intelligence::Utils::GetMajorMinorVersion(uint64_t a1)
{
  __p = 0;
  v2 = 0;
  v3 = 0;
  siri::intelligence::StringSplit(a1, ".");
}

void sub_254DA1450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::Utils::GetSecsSinceStart(siri::intelligence::Utils *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  *v8 = 0x1500000001;
  v5 = 16;
  v6 = 0;
  if (sysctl(v8, 2u, &v6, &v5, 0, 0) == -1)
  {
    v2 = "Failed to get boot time";
  }

  else
  {
    if (gettimeofday(&v4, 0) != -1)
    {
      goto LABEL_7;
    }

    v2 = "Failed to get time of day";
  }

  siri::intelligence::Log::Error(v2, v1);
LABEL_7:
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t siri::intelligence::Utils::GetCurrentYear(tm *this, const tm *a2)
{
  if (!this)
  {
    v3 = time(0);
    this = localtime_r(&v3, &v4);
  }

  return (this->tm_year + 1900);
}

uint64_t siri::intelligence::Utils::GetCurrentDayOfTheWeek(tm *this, const tm *a2)
{
  if (!this)
  {
    v3 = time(0);
    this = localtime_r(&v3, &v4);
  }

  return this->tm_wday;
}

void siri::intelligence::Utils::GetCurrentDate(tm *this@<X0>, std::string *a2@<X8>)
{
  v3 = this;
  if (!this)
  {
    v24.__r_.__value_.__r.__words[0] = time(0);
    v3 = localtime_r(&v24, &v25);
  }

  std::to_string(&v24, v3->tm_year + 1900);
  std::to_string(&v23, v3->tm_mon + 1);
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (size == 1)
  {
    std::operator+<char>();
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v23 = v22;
  }

  std::to_string(&v22, v3->tm_mday);
  v6 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v22.__r_.__value_.__l.__size_;
  }

  if (v6 == 1)
  {
    std::operator+<char>();
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    v22 = v21;
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = v24.__r_.__value_.__l.__size_;
  }

  v8 = &v19;
  std::string::basic_string[abi:ne200100](&v19, v7 + 1);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v24;
    }

    else
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    memmove(v8, v9, v7);
  }

  *(&v8->__r_.__value_.__l.__data_ + v7) = 45;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v23;
  }

  else
  {
    v10 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v23.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v19, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v20, "-");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v22.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v21, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_254DA1940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Utils::RandomBytes(void *a1, const char *a2)
{
  if (a1)
  {
    if (a1[1] != *a1)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        __src = jrand48(&siri::intelligence::Utils::sRandomNumberGeneratorState);
        if ((v4 + a1[1] - *a1) >= 8)
        {
          v6 = 8;
        }

        else
        {
          v6 = v4 + a1[1] - *a1;
        }

        memcpy((*a1 + v5), &__src, v6);
        v5 += 8;
        v4 -= 8;
      }

      while (v5 < a1[1] - *a1);
    }
  }

  else
  {

    siri::intelligence::Log::Error("Misuse of RandomBytes", a2);
  }
}

uint64_t siri::intelligence::Utils::SetRandomNumberGeneratorState(uint64_t result)
{
  siri::intelligence::Utils::sRandomNumberGeneratorState = result;
  word_27F754D44 = WORD2(result);
  return result;
}

void sub_254DA1CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t YAML::NodeEvents::AliasManager::RegisterReference(YAML::NodeEvents::AliasManager *this, const YAML::detail::node *a2)
{
  v2 = *a2;
  ++*(this + 3);
  return std::__tree<std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,unsigned long>>>::__emplace_unique_key_args<YAML::detail::node_ref const*,std::pair<YAML::detail::node_ref const*,unsigned long>>(this, v2);
}

uint64_t YAML::NodeEvents::AliasManager::LookupAnchor(YAML::NodeEvents::AliasManager *this, const YAML::detail::node *a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 4);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 4))
  {
    return *(v6 + 5);
  }

  else
  {
    return 0;
  }
}

YAML::NodeEvents *YAML::NodeEvents::NodeEvents(YAML::NodeEvents *this, const YAML::Node *a2)
{
  v3 = *(a2 + 5);
  *this = *(a2 + 4);
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 6);
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 2) = v4;
  *(this + 5) = 0;
  if (v4)
  {
    YAML::NodeEvents::Setup(this, v4);
  }

  return this;
}

void sub_254DA1E14(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(v2, *(v1 + 32));
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t YAML::NodeEvents::Setup(uint64_t this, uint64_t **a2)
{
  v3 = this;
  v4 = *a2;
  v5 = *(this + 32);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = v5[4];
      if (v7 <= v4)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= v4)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v6 + 10);
  *(v6 + 10) = v8 + 1;
  if (v8 <= 0)
  {
    this = **a2;
    if (*this == 1)
    {
      v9 = *(this + 16);
      if (v9 == 4)
      {
        YAML::detail::node_data::begin(this, &v17);
        while (1)
        {
          this = YAML::detail::node_data::end(**a2, &v14);
          if (v17 == v14)
          {
            v12 = &v15;
            v13 = &v18;
            if (v17 != 1)
            {
              if (v17 != 2)
              {
                return this;
              }

              v12 = v16;
              v13 = v19;
            }

            if (*v13 == *v12)
            {
              break;
            }
          }

          YAML::NodeEvents::Setup(v3, *v19[0]);
          YAML::NodeEvents::Setup(v3, *(v19[0] + 8));
          YAML::detail::node_iterator_base<YAML::detail::node>::operator++(&v17);
        }
      }

      else if (v9 == 3)
      {
        YAML::detail::node_data::begin(this, &v17);
        while (1)
        {
          this = YAML::detail::node_data::end(**a2, &v14);
          if (v17 == v14)
          {
            v10 = &v15;
            v11 = &v18;
            if (v17 != 1)
            {
              if (v17 != 2)
              {
                return this;
              }

              v10 = v16;
              v11 = v19;
            }

            if (*v11 == *v10)
            {
              break;
            }
          }

          YAML::NodeEvents::Setup(v3, *v18);
          YAML::detail::node_iterator_base<YAML::detail::node>::operator++(&v17);
        }
      }
    }
  }

  return this;
}

void YAML::NodeEvents::Emit(YAML::NodeEvents *a1, uint64_t a2)
{
  v7 = v8;
  memset(v8, 0, sizeof(v8));
  v5 = 0;
  v6 = 0;
  (*(*a2 + 16))(a2, &v5);
  v4 = *(a1 + 2);
  if (v4)
  {
    YAML::NodeEvents::Emit(a1, v4, a2, &v7);
  }

  (*(*a2 + 24))(a2);
  std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(&v7, v8[0]);
}

uint64_t YAML::NodeEvents::Emit(YAML::NodeEvents *a1, const YAML::detail::node *a2, uint64_t a3, uint64_t a4)
{
  result = YAML::NodeEvents::IsAliased(a1, a2);
  v9 = *a2;
  if (!result)
  {
    goto LABEL_20;
  }

  v11 = a4 + 8;
  v10 = *(a4 + 8);
  if (v10)
  {
    v12 = a4 + 8;
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
    if (v12 != v11 && v9 >= *(v12 + 32) && *(v12 + 40))
    {
      v31 = 0;
      LODWORD(v32) = 0;
      return (*(*a3 + 40))(a3, &v31);
    }
  }

  v16 = *(a4 + 24) + 1;
  *(a4 + 24) = v16;
  v31 = v9;
  v32 = v16;
  result = std::__tree<std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,unsigned long>>>::__emplace_unique_key_args<YAML::detail::node_ref const*,std::pair<YAML::detail::node_ref const*,unsigned long>>(a4, v9);
  v9 = *a2;
  v17 = *(a4 + 8);
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = a4 + 8;
  do
  {
    v19 = *(v17 + 32);
    v14 = v19 >= v9;
    v20 = v19 < v9;
    if (v14)
    {
      v18 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v18 != v11 && v9 >= *(v18 + 32))
  {
    v21 = *(v18 + 40);
  }

  else
  {
LABEL_20:
    v21 = 0;
  }

  v22 = *v9;
  if (**v9 == 1)
  {
    v23 = *(v22 + 4);
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v31 = 0;
        LODWORD(v32) = 0;
        (*(*a3 + 56))(a3, &v31, v22 + 24, v21, *(v22 + 12));
        YAML::detail::node_data::begin(**a2, &v31);
        while (1)
        {
          YAML::detail::node_data::end(**a2, &v28);
          if (v31 == v28)
          {
            v26 = &v29;
            v27 = &v32;
            if (v31 != 1)
            {
              if (v31 != 2)
              {
                return (*(*a3 + 64))(a3);
              }

              v26 = v30;
              v27 = v33;
            }

            if (*v27 == *v26)
            {
              break;
            }
          }

          YAML::NodeEvents::Emit(a1, *v32, a3, a4);
          YAML::detail::node_iterator_base<YAML::detail::node>::operator++(&v31);
        }

        return (*(*a3 + 64))(a3);
      }

      else if (v23 == 4)
      {
        v31 = 0;
        LODWORD(v32) = 0;
        (*(*a3 + 72))(a3, &v31, v22 + 24, v21, *(v22 + 12));
        YAML::detail::node_data::begin(**a2, &v31);
        while (1)
        {
          YAML::detail::node_data::end(**a2, &v28);
          if (v31 == v28)
          {
            v24 = &v29;
            v25 = &v32;
            if (v31 != 1)
            {
              if (v31 != 2)
              {
                return (*(*a3 + 80))(a3);
              }

              v24 = v30;
              v25 = v33;
            }

            if (*v25 == *v24)
            {
              break;
            }
          }

          YAML::NodeEvents::Emit(a1, *v33[0], a3, a4);
          YAML::NodeEvents::Emit(a1, *(v33[0] + 8), a3, a4);
          YAML::detail::node_iterator_base<YAML::detail::node>::operator++(&v31);
        }

        return (*(*a3 + 80))(a3);
      }
    }

    else if (v23 == 1)
    {
      v31 = 0;
      LODWORD(v32) = 0;
      return (*(*a3 + 32))(a3, &v31, v21);
    }

    else if (v23 == 2)
    {
      v31 = 0;
      LODWORD(v32) = 0;
      return (*(*a3 + 48))(a3, &v31, v22 + 24, v21, v22 + 56);
    }
  }

  return result;
}

BOOL YAML::NodeEvents::IsAliased(YAML::NodeEvents *this, const YAML::detail::node *a2)
{
  v4 = *(this + 4);
  v2 = this + 32;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 4);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  return v6 != v2 && v5 >= *(v6 + 4) && *(v6 + 10) > 1;
}

uint64_t std::__tree<std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,unsigned long>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,unsigned long>>>::__emplace_unique_key_args<YAML::detail::node_ref const*,std::pair<YAML::detail::node_ref const*,unsigned long>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t siri::intelligence::YamlIO::FromFile(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (siri::intelligence::FileExists(a2))
    {
      v7 = 1;
      *v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      YAML::LoadFile(a2);
    }

    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    siri::intelligence::Log::Error("Flow file does not exists: %s", v3, v5);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    siri::intelligence::Log::Error("Misuse of YamlIO::FromFile: message is NULL when examining %s\n", a2, v4);
  }

  return 0;
}

void siri::intelligence::ParseIntelligence(siri::intelligence *this, protobuf::Intelligence *a2, const YAML::Node *a3)
{
  v933 = 0;
  v934 = 0;
  v935 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v952, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v952, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [14]>(a2, "formatVersion", __p);
  v928 = a2;
  v9 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v9)
    {
      goto LABEL_38;
    }
  }

  else if (v9)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [14]>(v928, "formatVersion", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v930);
  *(this + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 66, &google::protobuf::internal::fixed_address_empty_string, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  else if (!a3)
  {
    goto LABEL_38;
  }

  YAML::Node::operator[]<char [14]>(v928, "formatVersion", __p);
  if ((__p[0] & 1) == 0)
  {
    v873 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v873, &v952);
  }

  if (v943)
  {
    v10 = *(**v943 + 8) + 1;
  }

  else
  {
    v10 = 0;
  }

  std::to_string(v950, v10);
  v11 = std::string::insert(v950, 0, "formatVersion=");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v930[16] = *(&v11->__r_.__value_.__l + 2);
  *v930 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_38:
  YAML::Node::operator[]<char [5]>(v928, "meta", __p);
  v13 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v13)
  {
    goto LABEL_148;
  }

  YAML::Node::operator[]<char [5]>(v928, "meta", __p);
  if ((__p[0] & 1) == 0)
  {
    v850 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v850, &v952);
  }

  v15 = v943 && (v14 = **v943, *v14 == 1) && *(v14 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v15)
    {
LABEL_57:
      YAML::Node::operator[]<char [5]>(v928, "meta", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v17 = v954;
        v16 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v17;
          v931 = v16;
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v22 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = *__p;
          v24 = *&__p[8];
          v907 = *&__p[16];
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        else
        {
          v23 = *__p;
          v24 = *&__p[8];
          v907 = *&__p[16];
        }
      }

      else
      {
        v24 = 0;
        v907 = 0;
        v22 = 0;
        v23 = 0;
      }

      v25 = 0;
      v26 = v22;
      while (1)
      {
        if (*v930 == v23)
        {
          v27 = v24;
          v28 = &v930[8];
          if (v23 != 1)
          {
            if (v23 != 2)
            {
              goto LABEL_118;
            }

            v27 = v907;
            v28 = &v930[16];
          }

          if (*v28 == v27)
          {
LABEL_118:
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              size = v952.__r_.__value_.__l.__size_;
              goto LABEL_147;
            }

            goto LABEL_148;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v29 = *(this + 5);
        if (!v29)
        {
          break;
        }

        v30 = *(this + 8);
        v31 = *v29;
        if (v30 < *v29)
        {
          *(this + 8) = v30 + 1;
          v32 = *&v29[2 * v30 + 2];
          if (!a3)
          {
            goto LABEL_105;
          }

          goto LABEL_85;
        }

        if (v31 == *(this + 9))
        {
          goto LABEL_83;
        }

LABEL_84:
        *v29 = v31 + 1;
        v32 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Meta>(*(this + 3));
        v33 = *(this + 8);
        v34 = *(this + 5) + 8 * v33;
        *(this + 8) = v33 + 1;
        *(v34 + 8) = v32;
        if (!a3)
        {
          goto LABEL_105;
        }

LABEL_85:
        std::to_string(&v939, v25);
        v35 = std::string::insert(&v939, 0, "meta[");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v940, "]=");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v826 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v826, v950);
        }

        if (v943)
        {
          v39 = *(**v943 + 8) + 1;
        }

        else
        {
          v39 = 0;
        }

        std::to_string(&v938, v39);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v938;
        }

        else
        {
          v40 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = v938.__r_.__value_.__l.__size_;
        }

        v42 = std::string::append(&v957, v40, v41);
        v43 = *&v42->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_105:
        siri::intelligence::ParseIntelligence_Meta(v32, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v22 = v26;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v25;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v31 = *(this + 9);
LABEL_83:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v31 + 1);
      v29 = *(this + 5);
      v31 = *v29;
      goto LABEL_84;
    }
  }

  else if (v15)
  {
    goto LABEL_57;
  }

  v18 = *(this + 5);
  if (!v18)
  {
    v20 = *(this + 9);
LABEL_128:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v20 + 1);
    v18 = *(this + 5);
    v20 = *v18;
    goto LABEL_129;
  }

  v19 = *(this + 8);
  v20 = *v18;
  if (v19 < *v18)
  {
    *(this + 8) = v19 + 1;
    v21 = *&v18[2 * v19 + 2];
    goto LABEL_130;
  }

  if (v20 == *(this + 9))
  {
    goto LABEL_128;
  }

LABEL_129:
  *v18 = v20 + 1;
  v21 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Meta>(*(this + 3));
  v45 = *(this + 8);
  v46 = *(this + 5) + 8 * v45;
  *(this + 8) = v45 + 1;
  *(v46 + 8) = v21;
LABEL_130:
  if (a3)
  {
    YAML::Node::operator[]<char [5]>(v928, "meta", __p);
    if ((__p[0] & 1) == 0)
    {
      v882 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v882, &v952);
    }

    if (v943)
    {
      v47 = *(**v943 + 8) + 1;
    }

    else
    {
      v47 = 0;
    }

    std::to_string(v950, v47);
    v48 = std::string::insert(v950, 0, "meta[0]=");
    v49 = *&v48->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v48->__r_.__value_.__l + 2);
    *v930 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [5]>(v928, "meta", __p);
  siri::intelligence::ParseIntelligence_Meta(v21, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_147:
    operator delete(size);
  }

LABEL_148:
  YAML::Node::operator[]<char [26]>(__p, v928);
  v50 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v50)
    {
      goto LABEL_253;
    }
  }

  else if (v50)
  {
    goto LABEL_253;
  }

  YAML::Node::operator[]<char [26]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v851 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v851, &v952);
  }

  v52 = v943 && (v51 = **v943, *v51 == 1) && *(v51 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v52)
    {
LABEL_168:
      YAML::Node::operator[]<char [26]>(&v952, v928);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v54 = v954;
        v53 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v54;
          v931 = v53;
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v55 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v56 = *__p;
          v57 = *&__p[8];
          v58 = *&__p[16];
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          v908 = v55;
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        else
        {
          v908 = 0;
          v56 = *__p;
          v57 = *&__p[8];
          v58 = *&__p[16];
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v908 = 0;
        v56 = 0;
      }

      for (i = 0; ; ++i)
      {
        if (*v930 == v56)
        {
          v60 = v57;
          v61 = &v930[8];
          if (v56 != 1)
          {
            if (v56 != 2)
            {
              goto LABEL_231;
            }

            v60 = v58;
            v61 = &v930[16];
          }

          if (*v61 == v60)
          {
LABEL_231:
            if (v908)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v908);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v71 = v952.__r_.__value_.__l.__size_;
              goto LABEL_252;
            }

            goto LABEL_253;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        if ((__p[0] & 1) == 0)
        {
          v824 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v824, v950);
        }

        *v950 = __p;
        YAML::as_if<std::string,void>::operator()(v950, &v958);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 456, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_218;
          }
        }

        else if (!a3)
        {
          goto LABEL_218;
        }

        std::to_string(&v939, i);
        v62 = std::string::insert(&v939, 0, "excludeIfBuildVariableSet[");
        v63 = *&v62->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v63;
        v62->__r_.__value_.__l.__size_ = 0;
        v62->__r_.__value_.__r.__words[2] = 0;
        v62->__r_.__value_.__r.__words[0] = 0;
        v64 = std::string::append(&v940, "]=");
        v65 = *&v64->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v827 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v827, v950);
        }

        if (v943)
        {
          v66 = *(**v943 + 8) + 1;
        }

        else
        {
          v66 = 0;
        }

        std::to_string(&v938, v66);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = &v938;
        }

        else
        {
          v67 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v68 = v938.__r_.__value_.__l.__size_;
        }

        v69 = std::string::append(&v957, v67, v68);
        v70 = *&v69->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_218:
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }
    }
  }

  else if (v52)
  {
    goto LABEL_168;
  }

  YAML::Node::operator[]<char [26]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v874 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v874, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v930);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 456, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_253;
    }
  }

  else if (!a3)
  {
    goto LABEL_253;
  }

  YAML::Node::operator[]<char [26]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v883 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v883, &v952);
  }

  if (v943)
  {
    v72 = *(**v943 + 8) + 1;
  }

  else
  {
    v72 = 0;
  }

  std::to_string(v950, v72);
  v73 = std::string::insert(v950, 0, "excludeIfBuildVariableSet[0]=");
  v74 = *&v73->__r_.__value_.__l.__data_;
  *&v930[16] = *(&v73->__r_.__value_.__l + 2);
  *v930 = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v71 = *&__p[8];
LABEL_252:
    operator delete(v71);
  }

LABEL_253:
  YAML::Node::operator[]<char [25]>(__p, v928);
  v75 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v75)
    {
      goto LABEL_358;
    }
  }

  else if (v75)
  {
    goto LABEL_358;
  }

  YAML::Node::operator[]<char [25]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v852 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v852, &v952);
  }

  v77 = v943 && (v76 = **v943, *v76 == 1) && *(v76 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v77)
    {
LABEL_273:
      YAML::Node::operator[]<char [25]>(&v952, v928);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v79 = v954;
        v78 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v79;
          v931 = v78;
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v80 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = *__p;
          v82 = *&__p[8];
          v83 = *&__p[16];
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          v909 = v80;
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        else
        {
          v909 = 0;
          v81 = *__p;
          v82 = *&__p[8];
          v83 = *&__p[16];
        }
      }

      else
      {
        v82 = 0;
        v83 = 0;
        v909 = 0;
        v81 = 0;
      }

      for (j = 0; ; ++j)
      {
        if (*v930 == v81)
        {
          v85 = v82;
          v86 = &v930[8];
          if (v81 != 1)
          {
            if (v81 != 2)
            {
              goto LABEL_336;
            }

            v85 = v83;
            v86 = &v930[16];
          }

          if (*v86 == v85)
          {
LABEL_336:
            if (v909)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v909);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v96 = v952.__r_.__value_.__l.__size_;
              goto LABEL_357;
            }

            goto LABEL_358;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        if ((__p[0] & 1) == 0)
        {
          v825 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v825, v950);
        }

        *v950 = __p;
        YAML::as_if<std::string,void>::operator()(v950, &v958);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 480, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_323;
          }
        }

        else if (!a3)
        {
          goto LABEL_323;
        }

        std::to_string(&v939, j);
        v87 = std::string::insert(&v939, 0, "excludeIfFeatureDisabled[");
        v88 = *&v87->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        v89 = std::string::append(&v940, "]=");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v828 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v828, v950);
        }

        if (v943)
        {
          v91 = *(**v943 + 8) + 1;
        }

        else
        {
          v91 = 0;
        }

        std::to_string(&v938, v91);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = &v938;
        }

        else
        {
          v92 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v93 = v938.__r_.__value_.__l.__size_;
        }

        v94 = std::string::append(&v957, v92, v93);
        v95 = *&v94->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_323:
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }
    }
  }

  else if (v77)
  {
    goto LABEL_273;
  }

  YAML::Node::operator[]<char [25]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v875 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v875, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v930);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(this + 480, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_358;
    }
  }

  else if (!a3)
  {
    goto LABEL_358;
  }

  YAML::Node::operator[]<char [25]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v884 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v884, &v952);
  }

  if (v943)
  {
    v97 = *(**v943 + 8) + 1;
  }

  else
  {
    v97 = 0;
  }

  std::to_string(v950, v97);
  v98 = std::string::insert(v950, 0, "excludeIfFeatureDisabled[0]=");
  v99 = *&v98->__r_.__value_.__l.__data_;
  *&v930[16] = *(&v98->__r_.__value_.__l + 2);
  *v930 = v99;
  v98->__r_.__value_.__l.__size_ = 0;
  v98->__r_.__value_.__r.__words[2] = 0;
  v98->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v96 = *&__p[8];
LABEL_357:
    operator delete(v96);
  }

LABEL_358:
  YAML::Node::operator[]<char [6]>(v928, "start", __p);
  v100 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v100)
    {
      goto LABEL_547;
    }
  }

  else if (v100)
  {
    goto LABEL_547;
  }

  *(this + 4) |= 2u;
  v101 = *(this + 67);
  if (!v101)
  {
    v101 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0);
    *(this + 67) = v101;
  }

  if (a3)
  {
    YAML::Node::operator[]<char [6]>(v928, "start", __p);
    if ((__p[0] & 1) == 0)
    {
      v876 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v876, &v952);
    }

    if (v943)
    {
      v102 = *(**v943 + 8) + 1;
    }

    else
    {
      v102 = 0;
    }

    std::to_string(v950, v102);
    v103 = std::string::insert(v950, 0, "start=");
    v104 = *&v103->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v103->__r_.__value_.__l + 2);
    *v930 = v104;
    v103->__r_.__value_.__l.__size_ = 0;
    v103->__r_.__value_.__r.__words[2] = 0;
    v103->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [6]>(v928, "start", v930);
  memset(&v957, 0, sizeof(v957));
  if (a3)
  {
    if ((v930[0] & 1) == 0)
    {
      v877 = __cxa_allocate_exception(0x38uLL);
      if ((v930[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *&v930[8], *&v930[16]);
      }

      else
      {
        *__p = *&v930[8];
        *&__p[16] = *&v930[24];
      }

      YAML::InvalidNode::InvalidNode(v877, __p);
    }

    if (v932)
    {
      v105 = *(**v932 + 8) + 1;
    }

    else
    {
      v105 = 0;
    }

    std::to_string(v950, v105);
    v106 = std::string::insert(v950, 0, "<msg>=");
    v107 = *&v106->__r_.__value_.__l.__data_;
    v952.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v952.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v957, &v952);
    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }
  }

  YAML::Node::operator[]<char [12]>(v930, "responseIds", __p);
  v108 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v108)
    {
      goto LABEL_504;
    }
  }

  else if (v108)
  {
    goto LABEL_504;
  }

  YAML::Node::operator[]<char [12]>(v930, "responseIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v878 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v878, &v952);
  }

  v110 = v943 && (v109 = **v943, *v109 == 1) && *(v109 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v110)
    {
LABEL_413:
      YAML::Node::operator[]<char [12]>(v930, "responseIds", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v112 = v954;
        v111 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v950 = *__p;
          *&v950[16] = *&__p[16];
          *&v950[32] = v112;
          v951 = v111;
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v111);
        }

        else
        {
          *v950 = *__p;
          *&v950[16] = *&__p[16];
          *&v950[32] = v954;
          v951 = 0;
        }
      }

      else
      {
        *v950 = 0;
        memset(&v950[8], 0, 32);
        v951 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v113 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v114 = *__p;
          v115 = *&__p[8];
          v906 = v113;
          v910 = *&__p[16];
          atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        }

        else
        {
          v114 = *__p;
          v115 = *&__p[8];
          v906 = 0;
          v910 = *&__p[16];
        }
      }

      else
      {
        v115 = 0;
        v906 = 0;
        v910 = 0;
        v114 = 0;
      }

      for (k = 0; ; ++k)
      {
        if (*v950 == v114)
        {
          v117 = v115;
          v118 = &v950[8];
          if (v114 != 1)
          {
            if (v114 != 2)
            {
              goto LABEL_476;
            }

            v117 = v910;
            v118 = &v950[16];
          }

          if (*v118 == v117)
          {
LABEL_476:
            if (v906)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v906);
            }

            if (v951)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v951);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v128 = v952.__r_.__value_.__l.__size_;
              goto LABEL_503;
            }

            goto LABEL_504;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v950, __p);
        if ((__p[0] & 1) == 0)
        {
          v829 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v958, *&__p[8], *&__p[16]);
          }

          else
          {
            v958 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v829, &v958);
        }

        v958.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v958, &v940);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v101 + 24, &v940);
        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
          if (!a3)
          {
            goto LABEL_463;
          }
        }

        else if (!a3)
        {
          goto LABEL_463;
        }

        std::to_string(&v937, k);
        v119 = std::string::insert(&v937, 0, "responseIds[");
        v120 = *&v119->__r_.__value_.__l.__data_;
        v938.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
        *&v938.__r_.__value_.__l.__data_ = v120;
        v119->__r_.__value_.__l.__size_ = 0;
        v119->__r_.__value_.__r.__words[2] = 0;
        v119->__r_.__value_.__r.__words[0] = 0;
        v121 = std::string::append(&v938, "]=");
        v122 = *&v121->__r_.__value_.__l.__data_;
        v939.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
        *&v939.__r_.__value_.__l.__data_ = v122;
        v121->__r_.__value_.__l.__size_ = 0;
        v121->__r_.__value_.__r.__words[2] = 0;
        v121->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v848 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v958, *&__p[8], *&__p[16]);
          }

          else
          {
            v958 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v848, &v958);
        }

        if (v943)
        {
          v123 = *(**v943 + 8) + 1;
        }

        else
        {
          v123 = 0;
        }

        std::to_string(&v936, v123);
        if ((v936.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = &v936;
        }

        else
        {
          v124 = v936.__r_.__value_.__r.__words[0];
        }

        if ((v936.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v125 = HIBYTE(v936.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v125 = v936.__r_.__value_.__l.__size_;
        }

        v126 = std::string::append(&v939, v124, v125);
        v127 = *&v126->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v127;
        v126->__r_.__value_.__l.__size_ = 0;
        v126->__r_.__value_.__r.__words[2] = 0;
        v126->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v957, &v940);
        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v936.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v936.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v937.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v937.__r_.__value_.__l.__data_);
        }

LABEL_463:
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v950);
      }
    }
  }

  else if (v110)
  {
    goto LABEL_413;
  }

  YAML::Node::operator[]<char [12]>(v930, "responseIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v885 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v885, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v950);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v101 + 24, v950);
  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_504;
    }
  }

  else if (!a3)
  {
    goto LABEL_504;
  }

  YAML::Node::operator[]<char [12]>(v930, "responseIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v905 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v905, &v952);
  }

  if (v943)
  {
    v129 = *(**v943 + 8) + 1;
  }

  else
  {
    v129 = 0;
  }

  std::to_string(&v958, v129);
  v130 = std::string::insert(&v958, 0, "responseIds[0]=");
  v131 = *&v130->__r_.__value_.__l.__data_;
  *&v950[16] = *(&v130->__r_.__value_.__l + 2);
  *v950 = v131;
  v130->__r_.__value_.__l.__size_ = 0;
  v130->__r_.__value_.__r.__words[2] = 0;
  v130->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v957, v950);
  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v958.__r_.__value_.__l.__data_);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v128 = *&__p[8];
LABEL_503:
    operator delete(v128);
  }

LABEL_504:
  YAML::Node::operator[]<char [11]>(v930, "activityId", __p);
  v132 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v132)
    {
      goto LABEL_536;
    }
  }

  else if (v132)
  {
    goto LABEL_536;
  }

  YAML::Node::operator[]<char [11]>(v930, "activityId", __p);
  if ((__p[0] & 1) == 0)
  {
    v879 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v879, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v950);
  *(v101 + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v101 + 6, &google::protobuf::internal::fixed_address_empty_string, v950);
  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) == 0)
  {
    if (!a3)
    {
      goto LABEL_536;
    }

LABEL_524:
    YAML::Node::operator[]<char [11]>(v930, "activityId", __p);
    if ((__p[0] & 1) == 0)
    {
      v887 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v887, &v952);
    }

    if (v943)
    {
      v133 = *(**v943 + 8) + 1;
    }

    else
    {
      v133 = 0;
    }

    std::to_string(&v958, v133);
    v134 = std::string::insert(&v958, 0, "activityId=");
    v135 = *&v134->__r_.__value_.__l.__data_;
    *&v950[16] = *(&v134->__r_.__value_.__l + 2);
    *v950 = v135;
    v134->__r_.__value_.__l.__size_ = 0;
    v134->__r_.__value_.__r.__words[2] = 0;
    v134->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v957, v950);
    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v958.__r_.__value_.__l.__data_);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_536;
  }

  operator delete(*&__p[8]);
  if (a3)
  {
    goto LABEL_524;
  }

LABEL_536:
  if (v957.__r_.__value_.__r.__words[0] != v957.__r_.__value_.__l.__size_)
  {
    std::string::basic_string[abi:ne200100]<0>(&v952, ";");
    siri::intelligence::StringJoin(&v957, &v952, __p);
    v138 = *(v101 + 1);
    v137 = (v101 + 8);
    v136 = v138;
    if (v138)
    {
      v139 = v136 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v137);
      v139 = v823;
    }

    if (*(v139 + 23) < 0)
    {
      operator delete(*v139);
    }

    v140 = *__p;
    *(v139 + 16) = *&__p[16];
    *v139 = v140;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v957;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v931)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v931);
  }

  if ((v930[31] & 0x80000000) != 0)
  {
    operator delete(*&v930[8]);
  }

LABEL_547:
  YAML::Node::operator[]<char [16]>(v928, "dialogResponses", __p);
  v141 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v141)
    {
      goto LABEL_658;
    }
  }

  else if (v141)
  {
    goto LABEL_658;
  }

  YAML::Node::operator[]<char [16]>(v928, "dialogResponses", __p);
  if ((__p[0] & 1) == 0)
  {
    v853 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v853, &v952);
  }

  v143 = v943 && (v142 = **v943, *v142 == 1) && *(v142 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v143)
    {
LABEL_567:
      YAML::Node::operator[]<char [16]>(v928, "dialogResponses", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v145 = v954;
        v144 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v145;
          v931 = v144;
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v144);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v150 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v151 = *__p;
          v152 = *&__p[8];
          v911 = *&__p[16];
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }

        else
        {
          v151 = *__p;
          v152 = *&__p[8];
          v911 = *&__p[16];
        }
      }

      else
      {
        v152 = 0;
        v911 = 0;
        v150 = 0;
        v151 = 0;
      }

      v153 = 0;
      v154 = v150;
      while (1)
      {
        if (*v930 == v151)
        {
          v155 = v152;
          v156 = &v930[8];
          if (v151 != 1)
          {
            if (v151 != 2)
            {
              goto LABEL_628;
            }

            v155 = v911;
            v156 = &v930[16];
          }

          if (*v156 == v155)
          {
LABEL_628:
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v172 = v952.__r_.__value_.__l.__size_;
              goto LABEL_657;
            }

            goto LABEL_658;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v157 = *(this + 8);
        if (!v157)
        {
          break;
        }

        v158 = *(this + 14);
        v159 = *v157;
        if (v158 < *v157)
        {
          *(this + 14) = v158 + 1;
          v160 = *&v157[2 * v158 + 2];
          if (!a3)
          {
            goto LABEL_615;
          }

          goto LABEL_595;
        }

        if (v159 == *(this + 15))
        {
          goto LABEL_593;
        }

LABEL_594:
        *v157 = v159 + 1;
        v160 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_DialogResponse>(*(this + 6));
        v161 = *(this + 14);
        v162 = *(this + 8) + 8 * v161;
        *(this + 14) = v161 + 1;
        *(v162 + 8) = v160;
        if (!a3)
        {
          goto LABEL_615;
        }

LABEL_595:
        std::to_string(&v939, v153);
        v163 = std::string::insert(&v939, 0, "dialogResponses[");
        v164 = *&v163->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v163->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v164;
        v163->__r_.__value_.__l.__size_ = 0;
        v163->__r_.__value_.__r.__words[2] = 0;
        v163->__r_.__value_.__r.__words[0] = 0;
        v165 = std::string::append(&v940, "]=");
        v166 = *&v165->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v166;
        v165->__r_.__value_.__l.__size_ = 0;
        v165->__r_.__value_.__r.__words[2] = 0;
        v165->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v830 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v830, v950);
        }

        if (v943)
        {
          v167 = *(**v943 + 8) + 1;
        }

        else
        {
          v167 = 0;
        }

        std::to_string(&v938, v167);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v168 = &v938;
        }

        else
        {
          v168 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v169 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v169 = v938.__r_.__value_.__l.__size_;
        }

        v170 = std::string::append(&v957, v168, v169);
        v171 = *&v170->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v171;
        v170->__r_.__value_.__l.__size_ = 0;
        v170->__r_.__value_.__r.__words[2] = 0;
        v170->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_615:
        siri::intelligence::ParseIntelligence_DialogResponse(v160, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v150 = v154;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v153;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v159 = *(this + 15);
LABEL_593:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v159 + 1);
      v157 = *(this + 8);
      v159 = *v157;
      goto LABEL_594;
    }
  }

  else if (v143)
  {
    goto LABEL_567;
  }

  v146 = *(this + 8);
  if (!v146)
  {
    v148 = *(this + 15);
LABEL_638:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v148 + 1);
    v146 = *(this + 8);
    v148 = *v146;
    goto LABEL_639;
  }

  v147 = *(this + 14);
  v148 = *v146;
  if (v147 < *v146)
  {
    *(this + 14) = v147 + 1;
    v149 = *&v146[2 * v147 + 2];
    goto LABEL_640;
  }

  if (v148 == *(this + 15))
  {
    goto LABEL_638;
  }

LABEL_639:
  *v146 = v148 + 1;
  v149 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_DialogResponse>(*(this + 6));
  v173 = *(this + 14);
  v174 = *(this + 8) + 8 * v173;
  *(this + 14) = v173 + 1;
  *(v174 + 8) = v149;
LABEL_640:
  if (a3)
  {
    YAML::Node::operator[]<char [16]>(v928, "dialogResponses", __p);
    if ((__p[0] & 1) == 0)
    {
      v886 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v886, &v952);
    }

    if (v943)
    {
      v175 = *(**v943 + 8) + 1;
    }

    else
    {
      v175 = 0;
    }

    std::to_string(v950, v175);
    v176 = std::string::insert(v950, 0, "dialogResponses[0]=");
    v177 = *&v176->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v176->__r_.__value_.__l + 2);
    *v930 = v177;
    v176->__r_.__value_.__l.__size_ = 0;
    v176->__r_.__value_.__r.__words[2] = 0;
    v176->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [16]>(v928, "dialogResponses", __p);
  siri::intelligence::ParseIntelligence_DialogResponse(v149, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v172 = *&__p[8];
LABEL_657:
    operator delete(v172);
  }

LABEL_658:
  YAML::Node::operator[]<char [18]>(__p, v928, "behaviorResponses");
  v178 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v178)
    {
      goto LABEL_769;
    }
  }

  else if (v178)
  {
    goto LABEL_769;
  }

  YAML::Node::operator[]<char [18]>(__p, v928, "behaviorResponses");
  if ((__p[0] & 1) == 0)
  {
    v854 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v854, &v952);
  }

  v180 = v943 && (v179 = **v943, *v179 == 1) && *(v179 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v180)
    {
LABEL_678:
      YAML::Node::operator[]<char [18]>(&v952, v928, "behaviorResponses");
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v182 = v954;
        v181 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v182;
          v931 = v181;
          atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v181);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v187 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v188 = *__p;
          v189 = *&__p[8];
          v912 = *&__p[16];
          atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v187);
        }

        else
        {
          v188 = *__p;
          v189 = *&__p[8];
          v912 = *&__p[16];
        }
      }

      else
      {
        v189 = 0;
        v912 = 0;
        v187 = 0;
        v188 = 0;
      }

      v190 = 0;
      v191 = v187;
      while (1)
      {
        if (*v930 == v188)
        {
          v192 = v189;
          v193 = &v930[8];
          if (v188 != 1)
          {
            if (v188 != 2)
            {
              goto LABEL_739;
            }

            v192 = v912;
            v193 = &v930[16];
          }

          if (*v193 == v192)
          {
LABEL_739:
            if (v187)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v187);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v209 = v952.__r_.__value_.__l.__size_;
              goto LABEL_768;
            }

            goto LABEL_769;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v194 = *(this + 11);
        if (!v194)
        {
          break;
        }

        v195 = *(this + 20);
        v196 = *v194;
        if (v195 < *v194)
        {
          *(this + 20) = v195 + 1;
          v197 = *&v194[2 * v195 + 2];
          if (!a3)
          {
            goto LABEL_726;
          }

          goto LABEL_706;
        }

        if (v196 == *(this + 21))
        {
          goto LABEL_704;
        }

LABEL_705:
        *v194 = v196 + 1;
        v197 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_BehaviorResponse>(*(this + 9));
        v198 = *(this + 20);
        v199 = *(this + 11) + 8 * v198;
        *(this + 20) = v198 + 1;
        *(v199 + 8) = v197;
        if (!a3)
        {
          goto LABEL_726;
        }

LABEL_706:
        std::to_string(&v939, v190);
        v200 = std::string::insert(&v939, 0, "behaviorResponses[");
        v201 = *&v200->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v200->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v201;
        v200->__r_.__value_.__l.__size_ = 0;
        v200->__r_.__value_.__r.__words[2] = 0;
        v200->__r_.__value_.__r.__words[0] = 0;
        v202 = std::string::append(&v940, "]=");
        v203 = *&v202->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v202->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v203;
        v202->__r_.__value_.__l.__size_ = 0;
        v202->__r_.__value_.__r.__words[2] = 0;
        v202->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v831 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v831, v950);
        }

        if (v943)
        {
          v204 = *(**v943 + 8) + 1;
        }

        else
        {
          v204 = 0;
        }

        std::to_string(&v938, v204);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v205 = &v938;
        }

        else
        {
          v205 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v206 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v206 = v938.__r_.__value_.__l.__size_;
        }

        v207 = std::string::append(&v957, v205, v206);
        v208 = *&v207->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v208;
        v207->__r_.__value_.__l.__size_ = 0;
        v207->__r_.__value_.__r.__words[2] = 0;
        v207->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_726:
        siri::intelligence::ParseIntelligence_BehaviorResponse(v197, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v187 = v191;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v190;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v196 = *(this + 21);
LABEL_704:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v196 + 1);
      v194 = *(this + 11);
      v196 = *v194;
      goto LABEL_705;
    }
  }

  else if (v180)
  {
    goto LABEL_678;
  }

  v183 = *(this + 11);
  if (!v183)
  {
    v185 = *(this + 21);
LABEL_749:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v185 + 1);
    v183 = *(this + 11);
    v185 = *v183;
    goto LABEL_750;
  }

  v184 = *(this + 20);
  v185 = *v183;
  if (v184 < *v183)
  {
    *(this + 20) = v184 + 1;
    v186 = *&v183[2 * v184 + 2];
    goto LABEL_751;
  }

  if (v185 == *(this + 21))
  {
    goto LABEL_749;
  }

LABEL_750:
  *v183 = v185 + 1;
  v186 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_BehaviorResponse>(*(this + 9));
  v210 = *(this + 20);
  v211 = *(this + 11) + 8 * v210;
  *(this + 20) = v210 + 1;
  *(v211 + 8) = v186;
LABEL_751:
  if (a3)
  {
    YAML::Node::operator[]<char [18]>(__p, v928, "behaviorResponses");
    if ((__p[0] & 1) == 0)
    {
      v888 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v888, &v952);
    }

    if (v943)
    {
      v212 = *(**v943 + 8) + 1;
    }

    else
    {
      v212 = 0;
    }

    std::to_string(v950, v212);
    v213 = std::string::insert(v950, 0, "behaviorResponses[0]=");
    v214 = *&v213->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v213->__r_.__value_.__l + 2);
    *v930 = v214;
    v213->__r_.__value_.__l.__size_ = 0;
    v213->__r_.__value_.__r.__words[2] = 0;
    v213->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [18]>(__p, v928, "behaviorResponses");
  siri::intelligence::ParseIntelligence_BehaviorResponse(v186, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v209 = *&__p[8];
LABEL_768:
    operator delete(v209);
  }

LABEL_769:
  YAML::Node::operator[]<char [19]>(__p, v928);
  v215 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v215)
    {
      goto LABEL_880;
    }
  }

  else if (v215)
  {
    goto LABEL_880;
  }

  YAML::Node::operator[]<char [19]>(__p, v928);
  if ((__p[0] & 1) == 0)
  {
    v855 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v855, &v952);
  }

  v217 = v943 && (v216 = **v943, *v216 == 1) && *(v216 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v217)
    {
LABEL_789:
      YAML::Node::operator[]<char [19]>(&v952, v928);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v219 = v954;
        v218 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v219;
          v931 = v218;
          atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v218);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v224 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v225 = *__p;
          v226 = *&__p[8];
          v913 = *&__p[16];
          atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v224);
        }

        else
        {
          v225 = *__p;
          v226 = *&__p[8];
          v913 = *&__p[16];
        }
      }

      else
      {
        v226 = 0;
        v913 = 0;
        v224 = 0;
        v225 = 0;
      }

      v227 = 0;
      v228 = v224;
      while (1)
      {
        if (*v930 == v225)
        {
          v229 = v226;
          v230 = &v930[8];
          if (v225 != 1)
          {
            if (v225 != 2)
            {
              goto LABEL_850;
            }

            v229 = v913;
            v230 = &v930[16];
          }

          if (*v230 == v229)
          {
LABEL_850:
            if (v224)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v224);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v246 = v952.__r_.__value_.__l.__size_;
              goto LABEL_879;
            }

            goto LABEL_880;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v231 = *(this + 14);
        if (!v231)
        {
          break;
        }

        v232 = *(this + 26);
        v233 = *v231;
        if (v232 < *v231)
        {
          *(this + 26) = v232 + 1;
          v234 = *&v231[2 * v232 + 2];
          if (!a3)
          {
            goto LABEL_837;
          }

          goto LABEL_817;
        }

        if (v233 == *(this + 27))
        {
          goto LABEL_815;
        }

LABEL_816:
        *v231 = v233 + 1;
        v234 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ReferenceResponse>(*(this + 12));
        v235 = *(this + 26);
        v236 = *(this + 14) + 8 * v235;
        *(this + 26) = v235 + 1;
        *(v236 + 8) = v234;
        if (!a3)
        {
          goto LABEL_837;
        }

LABEL_817:
        std::to_string(&v939, v227);
        v237 = std::string::insert(&v939, 0, "referenceResponses[");
        v238 = *&v237->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v237->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v238;
        v237->__r_.__value_.__l.__size_ = 0;
        v237->__r_.__value_.__r.__words[2] = 0;
        v237->__r_.__value_.__r.__words[0] = 0;
        v239 = std::string::append(&v940, "]=");
        v240 = *&v239->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v239->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v240;
        v239->__r_.__value_.__l.__size_ = 0;
        v239->__r_.__value_.__r.__words[2] = 0;
        v239->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v832 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v832, v950);
        }

        if (v943)
        {
          v241 = *(**v943 + 8) + 1;
        }

        else
        {
          v241 = 0;
        }

        std::to_string(&v938, v241);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v242 = &v938;
        }

        else
        {
          v242 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v243 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v243 = v938.__r_.__value_.__l.__size_;
        }

        v244 = std::string::append(&v957, v242, v243);
        v245 = *&v244->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v244->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v245;
        v244->__r_.__value_.__l.__size_ = 0;
        v244->__r_.__value_.__r.__words[2] = 0;
        v244->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_837:
        siri::intelligence::ParseIntelligence_ReferenceResponse(v234, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v224 = v228;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v227;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v233 = *(this + 27);
LABEL_815:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v233 + 1);
      v231 = *(this + 14);
      v233 = *v231;
      goto LABEL_816;
    }
  }

  else if (v217)
  {
    goto LABEL_789;
  }

  v220 = *(this + 14);
  if (!v220)
  {
    v222 = *(this + 27);
LABEL_860:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v222 + 1);
    v220 = *(this + 14);
    v222 = *v220;
    goto LABEL_861;
  }

  v221 = *(this + 26);
  v222 = *v220;
  if (v221 < *v220)
  {
    *(this + 26) = v221 + 1;
    v223 = *&v220[2 * v221 + 2];
    goto LABEL_862;
  }

  if (v222 == *(this + 27))
  {
    goto LABEL_860;
  }

LABEL_861:
  *v220 = v222 + 1;
  v223 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ReferenceResponse>(*(this + 12));
  v247 = *(this + 26);
  v248 = *(this + 14) + 8 * v247;
  *(this + 26) = v247 + 1;
  *(v248 + 8) = v223;
LABEL_862:
  if (a3)
  {
    YAML::Node::operator[]<char [19]>(__p, v928);
    if ((__p[0] & 1) == 0)
    {
      v889 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v889, &v952);
    }

    if (v943)
    {
      v249 = *(**v943 + 8) + 1;
    }

    else
    {
      v249 = 0;
    }

    std::to_string(v950, v249);
    v250 = std::string::insert(v950, 0, "referenceResponses[0]=");
    v251 = *&v250->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v250->__r_.__value_.__l + 2);
    *v930 = v251;
    v250->__r_.__value_.__l.__size_ = 0;
    v250->__r_.__value_.__r.__words[2] = 0;
    v250->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [19]>(__p, v928);
  siri::intelligence::ParseIntelligence_ReferenceResponse(v223, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v246 = *&__p[8];
LABEL_879:
    operator delete(v246);
  }

LABEL_880:
  YAML::Node::operator[]<char [15]>(v928, "responseGroups", __p);
  v252 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v252)
    {
      goto LABEL_991;
    }
  }

  else if (v252)
  {
    goto LABEL_991;
  }

  YAML::Node::operator[]<char [15]>(v928, "responseGroups", __p);
  if ((__p[0] & 1) == 0)
  {
    v856 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v856, &v952);
  }

  v254 = v943 && (v253 = **v943, *v253 == 1) && *(v253 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v254)
    {
LABEL_900:
      YAML::Node::operator[]<char [15]>(v928, "responseGroups", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v256 = v954;
        v255 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v256;
          v931 = v255;
          atomic_fetch_add_explicit(&v255->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v255);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v261 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v262 = *__p;
          v263 = *&__p[8];
          v914 = *&__p[16];
          atomic_fetch_add_explicit(&v261->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v261);
        }

        else
        {
          v262 = *__p;
          v263 = *&__p[8];
          v914 = *&__p[16];
        }
      }

      else
      {
        v263 = 0;
        v914 = 0;
        v261 = 0;
        v262 = 0;
      }

      v264 = 0;
      v265 = v261;
      while (1)
      {
        if (*v930 == v262)
        {
          v266 = v263;
          v267 = &v930[8];
          if (v262 != 1)
          {
            if (v262 != 2)
            {
              goto LABEL_961;
            }

            v266 = v914;
            v267 = &v930[16];
          }

          if (*v267 == v266)
          {
LABEL_961:
            if (v261)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v261);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v283 = v952.__r_.__value_.__l.__size_;
              goto LABEL_990;
            }

            goto LABEL_991;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v268 = *(this + 53);
        if (!v268)
        {
          break;
        }

        v269 = *(this + 104);
        v270 = *v268;
        if (v269 < *v268)
        {
          *(this + 104) = v269 + 1;
          v271 = *&v268[2 * v269 + 2];
          if (!a3)
          {
            goto LABEL_948;
          }

          goto LABEL_928;
        }

        if (v270 == *(this + 105))
        {
          goto LABEL_926;
        }

LABEL_927:
        *v268 = v270 + 1;
        v271 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(this + 51));
        v272 = *(this + 104);
        v273 = *(this + 53) + 8 * v272;
        *(this + 104) = v272 + 1;
        *(v273 + 8) = v271;
        if (!a3)
        {
          goto LABEL_948;
        }

LABEL_928:
        std::to_string(&v939, v264);
        v274 = std::string::insert(&v939, 0, "responseGroups[");
        v275 = *&v274->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v274->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v275;
        v274->__r_.__value_.__l.__size_ = 0;
        v274->__r_.__value_.__r.__words[2] = 0;
        v274->__r_.__value_.__r.__words[0] = 0;
        v276 = std::string::append(&v940, "]=");
        v277 = *&v276->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v276->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v277;
        v276->__r_.__value_.__l.__size_ = 0;
        v276->__r_.__value_.__r.__words[2] = 0;
        v276->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v833 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v833, v950);
        }

        if (v943)
        {
          v278 = *(**v943 + 8) + 1;
        }

        else
        {
          v278 = 0;
        }

        std::to_string(&v938, v278);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v279 = &v938;
        }

        else
        {
          v279 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v280 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v280 = v938.__r_.__value_.__l.__size_;
        }

        v281 = std::string::append(&v957, v279, v280);
        v282 = *&v281->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v281->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v282;
        v281->__r_.__value_.__l.__size_ = 0;
        v281->__r_.__value_.__r.__words[2] = 0;
        v281->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_948:
        siri::intelligence::ParseIntelligence_ResponseGroup(v271, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v261 = v265;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v264;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v270 = *(this + 105);
LABEL_926:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 102, v270 + 1);
      v268 = *(this + 53);
      v270 = *v268;
      goto LABEL_927;
    }
  }

  else if (v254)
  {
    goto LABEL_900;
  }

  v257 = *(this + 53);
  if (!v257)
  {
    v259 = *(this + 105);
LABEL_971:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 102, v259 + 1);
    v257 = *(this + 53);
    v259 = *v257;
    goto LABEL_972;
  }

  v258 = *(this + 104);
  v259 = *v257;
  if (v258 < *v257)
  {
    *(this + 104) = v258 + 1;
    v260 = *&v257[2 * v258 + 2];
    goto LABEL_973;
  }

  if (v259 == *(this + 105))
  {
    goto LABEL_971;
  }

LABEL_972:
  *v257 = v259 + 1;
  v260 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(this + 51));
  v284 = *(this + 104);
  v285 = *(this + 53) + 8 * v284;
  *(this + 104) = v284 + 1;
  *(v285 + 8) = v260;
LABEL_973:
  if (a3)
  {
    YAML::Node::operator[]<char [15]>(v928, "responseGroups", __p);
    if ((__p[0] & 1) == 0)
    {
      v890 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v890, &v952);
    }

    if (v943)
    {
      v286 = *(**v943 + 8) + 1;
    }

    else
    {
      v286 = 0;
    }

    std::to_string(v950, v286);
    v287 = std::string::insert(v950, 0, "responseGroups[0]=");
    v288 = *&v287->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v287->__r_.__value_.__l + 2);
    *v930 = v288;
    v287->__r_.__value_.__l.__size_ = 0;
    v287->__r_.__value_.__r.__words[2] = 0;
    v287->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [15]>(v928, "responseGroups", __p);
  siri::intelligence::ParseIntelligence_ResponseGroup(v260, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v283 = *&__p[8];
LABEL_990:
    operator delete(v283);
  }

LABEL_991:
  YAML::Node::operator[]<char [12]>(v928, "inputGroups", __p);
  v289 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v289)
    {
      goto LABEL_1102;
    }
  }

  else if (v289)
  {
    goto LABEL_1102;
  }

  YAML::Node::operator[]<char [12]>(v928, "inputGroups", __p);
  if ((__p[0] & 1) == 0)
  {
    v857 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v857, &v952);
  }

  v291 = v943 && (v290 = **v943, *v290 == 1) && *(v290 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v291)
    {
LABEL_1011:
      YAML::Node::operator[]<char [12]>(v928, "inputGroups", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v293 = v954;
        v292 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v293;
          v931 = v292;
          atomic_fetch_add_explicit(&v292->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v292);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v298 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v299 = *__p;
          v300 = *&__p[8];
          v915 = *&__p[16];
          atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v298);
        }

        else
        {
          v299 = *__p;
          v300 = *&__p[8];
          v915 = *&__p[16];
        }
      }

      else
      {
        v300 = 0;
        v915 = 0;
        v298 = 0;
        v299 = 0;
      }

      v301 = 0;
      v302 = v298;
      while (1)
      {
        if (*v930 == v299)
        {
          v303 = v300;
          v304 = &v930[8];
          if (v299 != 1)
          {
            if (v299 != 2)
            {
              goto LABEL_1072;
            }

            v303 = v915;
            v304 = &v930[16];
          }

          if (*v304 == v303)
          {
LABEL_1072:
            if (v298)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v298);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v320 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1101;
            }

            goto LABEL_1102;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v305 = *(this + 56);
        if (!v305)
        {
          break;
        }

        v306 = *(this + 110);
        v307 = *v305;
        if (v306 < *v305)
        {
          *(this + 110) = v306 + 1;
          v308 = *&v305[2 * v306 + 2];
          if (!a3)
          {
            goto LABEL_1059;
          }

          goto LABEL_1039;
        }

        if (v307 == *(this + 111))
        {
          goto LABEL_1037;
        }

LABEL_1038:
        *v305 = v307 + 1;
        v308 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(this + 54));
        v309 = *(this + 110);
        v310 = *(this + 56) + 8 * v309;
        *(this + 110) = v309 + 1;
        *(v310 + 8) = v308;
        if (!a3)
        {
          goto LABEL_1059;
        }

LABEL_1039:
        std::to_string(&v939, v301);
        v311 = std::string::insert(&v939, 0, "inputGroups[");
        v312 = *&v311->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v311->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v312;
        v311->__r_.__value_.__l.__size_ = 0;
        v311->__r_.__value_.__r.__words[2] = 0;
        v311->__r_.__value_.__r.__words[0] = 0;
        v313 = std::string::append(&v940, "]=");
        v314 = *&v313->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v313->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v314;
        v313->__r_.__value_.__l.__size_ = 0;
        v313->__r_.__value_.__r.__words[2] = 0;
        v313->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v834 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v834, v950);
        }

        if (v943)
        {
          v315 = *(**v943 + 8) + 1;
        }

        else
        {
          v315 = 0;
        }

        std::to_string(&v938, v315);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v316 = &v938;
        }

        else
        {
          v316 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v317 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v317 = v938.__r_.__value_.__l.__size_;
        }

        v318 = std::string::append(&v957, v316, v317);
        v319 = *&v318->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v318->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v319;
        v318->__r_.__value_.__l.__size_ = 0;
        v318->__r_.__value_.__r.__words[2] = 0;
        v318->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1059:
        siri::intelligence::ParseIntelligence_InputGroup(v308, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v298 = v302;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v301;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v307 = *(this + 111);
LABEL_1037:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 108, v307 + 1);
      v305 = *(this + 56);
      v307 = *v305;
      goto LABEL_1038;
    }
  }

  else if (v291)
  {
    goto LABEL_1011;
  }

  v294 = *(this + 56);
  if (!v294)
  {
    v296 = *(this + 111);
LABEL_1082:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 108, v296 + 1);
    v294 = *(this + 56);
    v296 = *v294;
    goto LABEL_1083;
  }

  v295 = *(this + 110);
  v296 = *v294;
  if (v295 < *v294)
  {
    *(this + 110) = v295 + 1;
    v297 = *&v294[2 * v295 + 2];
    goto LABEL_1084;
  }

  if (v296 == *(this + 111))
  {
    goto LABEL_1082;
  }

LABEL_1083:
  *v294 = v296 + 1;
  v297 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(this + 54));
  v321 = *(this + 110);
  v322 = *(this + 56) + 8 * v321;
  *(this + 110) = v321 + 1;
  *(v322 + 8) = v297;
LABEL_1084:
  if (a3)
  {
    YAML::Node::operator[]<char [12]>(v928, "inputGroups", __p);
    if ((__p[0] & 1) == 0)
    {
      v891 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v891, &v952);
    }

    if (v943)
    {
      v323 = *(**v943 + 8) + 1;
    }

    else
    {
      v323 = 0;
    }

    std::to_string(v950, v323);
    v324 = std::string::insert(v950, 0, "inputGroups[0]=");
    v325 = *&v324->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v324->__r_.__value_.__l + 2);
    *v930 = v325;
    v324->__r_.__value_.__l.__size_ = 0;
    v324->__r_.__value_.__r.__words[2] = 0;
    v324->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [12]>(v928, "inputGroups", __p);
  siri::intelligence::ParseIntelligence_InputGroup(v297, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v320 = *&__p[8];
LABEL_1101:
    operator delete(v320);
  }

LABEL_1102:
  YAML::Node::operator[]<char [11]>(v928, "activities", __p);
  v326 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v326)
    {
      goto LABEL_1213;
    }
  }

  else if (v326)
  {
    goto LABEL_1213;
  }

  YAML::Node::operator[]<char [11]>(v928, "activities", __p);
  if ((__p[0] & 1) == 0)
  {
    v858 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v858, &v952);
  }

  v328 = v943 && (v327 = **v943, *v327 == 1) && *(v327 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v328)
    {
LABEL_1122:
      YAML::Node::operator[]<char [11]>(v928, "activities", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v330 = v954;
        v329 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v330;
          v931 = v329;
          atomic_fetch_add_explicit(&v329->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v329);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v335 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v336 = *__p;
          v337 = *&__p[8];
          v916 = *&__p[16];
          atomic_fetch_add_explicit(&v335->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v335);
        }

        else
        {
          v336 = *__p;
          v337 = *&__p[8];
          v916 = *&__p[16];
        }
      }

      else
      {
        v337 = 0;
        v916 = 0;
        v335 = 0;
        v336 = 0;
      }

      v338 = 0;
      v339 = v335;
      while (1)
      {
        if (*v930 == v336)
        {
          v340 = v337;
          v341 = &v930[8];
          if (v336 != 1)
          {
            if (v336 != 2)
            {
              goto LABEL_1183;
            }

            v340 = v916;
            v341 = &v930[16];
          }

          if (*v341 == v340)
          {
LABEL_1183:
            if (v335)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v335);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v357 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1212;
            }

            goto LABEL_1213;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v342 = *(this + 23);
        if (!v342)
        {
          break;
        }

        v343 = *(this + 44);
        v344 = *v342;
        if (v343 < *v342)
        {
          *(this + 44) = v343 + 1;
          v345 = *&v342[2 * v343 + 2];
          if (!a3)
          {
            goto LABEL_1170;
          }

          goto LABEL_1150;
        }

        if (v344 == *(this + 45))
        {
          goto LABEL_1148;
        }

LABEL_1149:
        *v342 = v344 + 1;
        v345 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Activity>(*(this + 21));
        v346 = *(this + 44);
        v347 = *(this + 23) + 8 * v346;
        *(this + 44) = v346 + 1;
        *(v347 + 8) = v345;
        if (!a3)
        {
          goto LABEL_1170;
        }

LABEL_1150:
        std::to_string(&v939, v338);
        v348 = std::string::insert(&v939, 0, "activities[");
        v349 = *&v348->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v348->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v349;
        v348->__r_.__value_.__l.__size_ = 0;
        v348->__r_.__value_.__r.__words[2] = 0;
        v348->__r_.__value_.__r.__words[0] = 0;
        v350 = std::string::append(&v940, "]=");
        v351 = *&v350->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v350->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v351;
        v350->__r_.__value_.__l.__size_ = 0;
        v350->__r_.__value_.__r.__words[2] = 0;
        v350->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v835 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v835, v950);
        }

        if (v943)
        {
          v352 = *(**v943 + 8) + 1;
        }

        else
        {
          v352 = 0;
        }

        std::to_string(&v938, v352);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v353 = &v938;
        }

        else
        {
          v353 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v354 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v354 = v938.__r_.__value_.__l.__size_;
        }

        v355 = std::string::append(&v957, v353, v354);
        v356 = *&v355->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v355->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v356;
        v355->__r_.__value_.__l.__size_ = 0;
        v355->__r_.__value_.__r.__words[2] = 0;
        v355->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1170:
        siri::intelligence::ParseIntelligence_Activity(v345, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v335 = v339;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v338;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v344 = *(this + 45);
LABEL_1148:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 42, v344 + 1);
      v342 = *(this + 23);
      v344 = *v342;
      goto LABEL_1149;
    }
  }

  else if (v328)
  {
    goto LABEL_1122;
  }

  v331 = *(this + 23);
  if (!v331)
  {
    v333 = *(this + 45);
LABEL_1193:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 42, v333 + 1);
    v331 = *(this + 23);
    v333 = *v331;
    goto LABEL_1194;
  }

  v332 = *(this + 44);
  v333 = *v331;
  if (v332 < *v331)
  {
    *(this + 44) = v332 + 1;
    v334 = *&v331[2 * v332 + 2];
    goto LABEL_1195;
  }

  if (v333 == *(this + 45))
  {
    goto LABEL_1193;
  }

LABEL_1194:
  *v331 = v333 + 1;
  v334 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Activity>(*(this + 21));
  v358 = *(this + 44);
  v359 = *(this + 23) + 8 * v358;
  *(this + 44) = v358 + 1;
  *(v359 + 8) = v334;
LABEL_1195:
  if (a3)
  {
    YAML::Node::operator[]<char [11]>(v928, "activities", __p);
    if ((__p[0] & 1) == 0)
    {
      v892 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v892, &v952);
    }

    if (v943)
    {
      v360 = *(**v943 + 8) + 1;
    }

    else
    {
      v360 = 0;
    }

    std::to_string(v950, v360);
    v361 = std::string::insert(v950, 0, "activities[0]=");
    v362 = *&v361->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v361->__r_.__value_.__l + 2);
    *v930 = v362;
    v361->__r_.__value_.__l.__size_ = 0;
    v361->__r_.__value_.__r.__words[2] = 0;
    v361->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [11]>(v928, "activities", __p);
  siri::intelligence::ParseIntelligence_Activity(v334, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v357 = *&__p[8];
LABEL_1212:
    operator delete(v357);
  }

LABEL_1213:
  YAML::Node::operator[]<char [11]>(v928, "utterances", __p);
  v363 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v363)
    {
      goto LABEL_1324;
    }
  }

  else if (v363)
  {
    goto LABEL_1324;
  }

  YAML::Node::operator[]<char [11]>(v928, "utterances", __p);
  if ((__p[0] & 1) == 0)
  {
    v859 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v859, &v952);
  }

  v365 = v943 && (v364 = **v943, *v364 == 1) && *(v364 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v365)
    {
LABEL_1233:
      YAML::Node::operator[]<char [11]>(v928, "utterances", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v367 = v954;
        v366 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v367;
          v931 = v366;
          atomic_fetch_add_explicit(&v366->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v366);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v372 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v373 = *__p;
          v374 = *&__p[8];
          v917 = *&__p[16];
          atomic_fetch_add_explicit(&v372->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v372);
        }

        else
        {
          v373 = *__p;
          v374 = *&__p[8];
          v917 = *&__p[16];
        }
      }

      else
      {
        v374 = 0;
        v917 = 0;
        v372 = 0;
        v373 = 0;
      }

      v375 = 0;
      v376 = v372;
      while (1)
      {
        if (*v930 == v373)
        {
          v377 = v374;
          v378 = &v930[8];
          if (v373 != 1)
          {
            if (v373 != 2)
            {
              goto LABEL_1294;
            }

            v377 = v917;
            v378 = &v930[16];
          }

          if (*v378 == v377)
          {
LABEL_1294:
            if (v372)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v372);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v394 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1323;
            }

            goto LABEL_1324;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v379 = *(this + 26);
        if (!v379)
        {
          break;
        }

        v380 = *(this + 50);
        v381 = *v379;
        if (v380 < *v379)
        {
          *(this + 50) = v380 + 1;
          v382 = *&v379[2 * v380 + 2];
          if (!a3)
          {
            goto LABEL_1281;
          }

          goto LABEL_1261;
        }

        if (v381 == *(this + 51))
        {
          goto LABEL_1259;
        }

LABEL_1260:
        *v379 = v381 + 1;
        v382 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Utterance>(*(this + 24));
        v383 = *(this + 50);
        v384 = *(this + 26) + 8 * v383;
        *(this + 50) = v383 + 1;
        *(v384 + 8) = v382;
        if (!a3)
        {
          goto LABEL_1281;
        }

LABEL_1261:
        std::to_string(&v939, v375);
        v385 = std::string::insert(&v939, 0, "utterances[");
        v386 = *&v385->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v385->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v386;
        v385->__r_.__value_.__l.__size_ = 0;
        v385->__r_.__value_.__r.__words[2] = 0;
        v385->__r_.__value_.__r.__words[0] = 0;
        v387 = std::string::append(&v940, "]=");
        v388 = *&v387->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v387->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v388;
        v387->__r_.__value_.__l.__size_ = 0;
        v387->__r_.__value_.__r.__words[2] = 0;
        v387->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v836 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v836, v950);
        }

        if (v943)
        {
          v389 = *(**v943 + 8) + 1;
        }

        else
        {
          v389 = 0;
        }

        std::to_string(&v938, v389);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v390 = &v938;
        }

        else
        {
          v390 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v391 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v391 = v938.__r_.__value_.__l.__size_;
        }

        v392 = std::string::append(&v957, v390, v391);
        v393 = *&v392->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v392->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v393;
        v392->__r_.__value_.__l.__size_ = 0;
        v392->__r_.__value_.__r.__words[2] = 0;
        v392->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1281:
        siri::intelligence::ParseIntelligence_Utterance(v382, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v372 = v376;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v375;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v381 = *(this + 51);
LABEL_1259:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v381 + 1);
      v379 = *(this + 26);
      v381 = *v379;
      goto LABEL_1260;
    }
  }

  else if (v365)
  {
    goto LABEL_1233;
  }

  v368 = *(this + 26);
  if (!v368)
  {
    v370 = *(this + 51);
LABEL_1304:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v370 + 1);
    v368 = *(this + 26);
    v370 = *v368;
    goto LABEL_1305;
  }

  v369 = *(this + 50);
  v370 = *v368;
  if (v369 < *v368)
  {
    *(this + 50) = v369 + 1;
    v371 = *&v368[2 * v369 + 2];
    goto LABEL_1306;
  }

  if (v370 == *(this + 51))
  {
    goto LABEL_1304;
  }

LABEL_1305:
  *v368 = v370 + 1;
  v371 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Utterance>(*(this + 24));
  v395 = *(this + 50);
  v396 = *(this + 26) + 8 * v395;
  *(this + 50) = v395 + 1;
  *(v396 + 8) = v371;
LABEL_1306:
  if (a3)
  {
    YAML::Node::operator[]<char [11]>(v928, "utterances", __p);
    if ((__p[0] & 1) == 0)
    {
      v893 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v893, &v952);
    }

    if (v943)
    {
      v397 = *(**v943 + 8) + 1;
    }

    else
    {
      v397 = 0;
    }

    std::to_string(v950, v397);
    v398 = std::string::insert(v950, 0, "utterances[0]=");
    v399 = *&v398->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v398->__r_.__value_.__l + 2);
    *v930 = v399;
    v398->__r_.__value_.__l.__size_ = 0;
    v398->__r_.__value_.__r.__words[2] = 0;
    v398->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [11]>(v928, "utterances", __p);
  siri::intelligence::ParseIntelligence_Utterance(v371, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v394 = *&__p[8];
LABEL_1323:
    operator delete(v394);
  }

LABEL_1324:
  YAML::Node::operator[]<char [11]>(v928, "characters", __p);
  v400 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v400)
    {
      goto LABEL_1435;
    }
  }

  else if (v400)
  {
    goto LABEL_1435;
  }

  YAML::Node::operator[]<char [11]>(v928, "characters", __p);
  if ((__p[0] & 1) == 0)
  {
    v860 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v860, &v952);
  }

  v402 = v943 && (v401 = **v943, *v401 == 1) && *(v401 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v402)
    {
LABEL_1344:
      YAML::Node::operator[]<char [11]>(v928, "characters", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v404 = v954;
        v403 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v404;
          v931 = v403;
          atomic_fetch_add_explicit(&v403->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v409 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v410 = *__p;
          v411 = *&__p[8];
          v918 = *&__p[16];
          atomic_fetch_add_explicit(&v409->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v409);
        }

        else
        {
          v410 = *__p;
          v411 = *&__p[8];
          v918 = *&__p[16];
        }
      }

      else
      {
        v411 = 0;
        v918 = 0;
        v409 = 0;
        v410 = 0;
      }

      v412 = 0;
      v413 = v409;
      while (1)
      {
        if (*v930 == v410)
        {
          v414 = v411;
          v415 = &v930[8];
          if (v410 != 1)
          {
            if (v410 != 2)
            {
              goto LABEL_1405;
            }

            v414 = v918;
            v415 = &v930[16];
          }

          if (*v415 == v414)
          {
LABEL_1405:
            if (v409)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v409);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v431 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1434;
            }

            goto LABEL_1435;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v416 = *(this + 29);
        if (!v416)
        {
          break;
        }

        v417 = *(this + 56);
        v418 = *v416;
        if (v417 < *v416)
        {
          *(this + 56) = v417 + 1;
          v419 = *&v416[2 * v417 + 2];
          if (!a3)
          {
            goto LABEL_1392;
          }

          goto LABEL_1372;
        }

        if (v418 == *(this + 57))
        {
          goto LABEL_1370;
        }

LABEL_1371:
        *v416 = v418 + 1;
        v419 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Character>(*(this + 27));
        v420 = *(this + 56);
        v421 = *(this + 29) + 8 * v420;
        *(this + 56) = v420 + 1;
        *(v421 + 8) = v419;
        if (!a3)
        {
          goto LABEL_1392;
        }

LABEL_1372:
        std::to_string(&v939, v412);
        v422 = std::string::insert(&v939, 0, "characters[");
        v423 = *&v422->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v422->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v423;
        v422->__r_.__value_.__l.__size_ = 0;
        v422->__r_.__value_.__r.__words[2] = 0;
        v422->__r_.__value_.__r.__words[0] = 0;
        v424 = std::string::append(&v940, "]=");
        v425 = *&v424->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v424->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v425;
        v424->__r_.__value_.__l.__size_ = 0;
        v424->__r_.__value_.__r.__words[2] = 0;
        v424->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v837 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v837, v950);
        }

        if (v943)
        {
          v426 = *(**v943 + 8) + 1;
        }

        else
        {
          v426 = 0;
        }

        std::to_string(&v938, v426);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v427 = &v938;
        }

        else
        {
          v427 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v428 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v428 = v938.__r_.__value_.__l.__size_;
        }

        v429 = std::string::append(&v957, v427, v428);
        v430 = *&v429->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v429->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v430;
        v429->__r_.__value_.__l.__size_ = 0;
        v429->__r_.__value_.__r.__words[2] = 0;
        v429->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1392:
        siri::intelligence::ParseIntelligence_Character(v419, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v409 = v413;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v412;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v418 = *(this + 57);
LABEL_1370:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 54, v418 + 1);
      v416 = *(this + 29);
      v418 = *v416;
      goto LABEL_1371;
    }
  }

  else if (v402)
  {
    goto LABEL_1344;
  }

  v405 = *(this + 29);
  if (!v405)
  {
    v407 = *(this + 57);
LABEL_1415:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 54, v407 + 1);
    v405 = *(this + 29);
    v407 = *v405;
    goto LABEL_1416;
  }

  v406 = *(this + 56);
  v407 = *v405;
  if (v406 < *v405)
  {
    *(this + 56) = v406 + 1;
    v408 = *&v405[2 * v406 + 2];
    goto LABEL_1417;
  }

  if (v407 == *(this + 57))
  {
    goto LABEL_1415;
  }

LABEL_1416:
  *v405 = v407 + 1;
  v408 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Character>(*(this + 27));
  v432 = *(this + 56);
  v433 = *(this + 29) + 8 * v432;
  *(this + 56) = v432 + 1;
  *(v433 + 8) = v408;
LABEL_1417:
  if (a3)
  {
    YAML::Node::operator[]<char [11]>(v928, "characters", __p);
    if ((__p[0] & 1) == 0)
    {
      v894 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v894, &v952);
    }

    if (v943)
    {
      v434 = *(**v943 + 8) + 1;
    }

    else
    {
      v434 = 0;
    }

    std::to_string(v950, v434);
    v435 = std::string::insert(v950, 0, "characters[0]=");
    v436 = *&v435->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v435->__r_.__value_.__l + 2);
    *v930 = v436;
    v435->__r_.__value_.__l.__size_ = 0;
    v435->__r_.__value_.__r.__words[2] = 0;
    v435->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [11]>(v928, "characters", __p);
  siri::intelligence::ParseIntelligence_Character(v408, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v431 = *&__p[8];
LABEL_1434:
    operator delete(v431);
  }

LABEL_1435:
  YAML::Node::operator[]<char [7]>(v928, "events", __p);
  v437 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v437)
    {
      goto LABEL_1546;
    }
  }

  else if (v437)
  {
    goto LABEL_1546;
  }

  YAML::Node::operator[]<char [7]>(v928, "events", __p);
  if ((__p[0] & 1) == 0)
  {
    v861 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v861, &v952);
  }

  v439 = v943 && (v438 = **v943, *v438 == 1) && *(v438 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v439)
    {
LABEL_1455:
      YAML::Node::operator[]<char [7]>(v928, "events", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v441 = v954;
        v440 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v441;
          v931 = v440;
          atomic_fetch_add_explicit(&v440->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v440);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v446 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v447 = *__p;
          v448 = *&__p[8];
          v919 = *&__p[16];
          atomic_fetch_add_explicit(&v446->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v446);
        }

        else
        {
          v447 = *__p;
          v448 = *&__p[8];
          v919 = *&__p[16];
        }
      }

      else
      {
        v448 = 0;
        v919 = 0;
        v446 = 0;
        v447 = 0;
      }

      v449 = 0;
      v450 = v446;
      while (1)
      {
        if (*v930 == v447)
        {
          v451 = v448;
          v452 = &v930[8];
          if (v447 != 1)
          {
            if (v447 != 2)
            {
              goto LABEL_1516;
            }

            v451 = v919;
            v452 = &v930[16];
          }

          if (*v452 == v451)
          {
LABEL_1516:
            if (v446)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v446);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v468 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1545;
            }

            goto LABEL_1546;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v453 = *(this + 65);
        if (!v453)
        {
          break;
        }

        v454 = *(this + 128);
        v455 = *v453;
        if (v454 < *v453)
        {
          *(this + 128) = v454 + 1;
          v456 = *&v453[2 * v454 + 2];
          if (!a3)
          {
            goto LABEL_1503;
          }

          goto LABEL_1483;
        }

        if (v455 == *(this + 129))
        {
          goto LABEL_1481;
        }

LABEL_1482:
        *v453 = v455 + 1;
        v456 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(*(this + 63));
        v457 = *(this + 128);
        v458 = *(this + 65) + 8 * v457;
        *(this + 128) = v457 + 1;
        *(v458 + 8) = v456;
        if (!a3)
        {
          goto LABEL_1503;
        }

LABEL_1483:
        std::to_string(&v939, v449);
        v459 = std::string::insert(&v939, 0, "events[");
        v460 = *&v459->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v459->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v460;
        v459->__r_.__value_.__l.__size_ = 0;
        v459->__r_.__value_.__r.__words[2] = 0;
        v459->__r_.__value_.__r.__words[0] = 0;
        v461 = std::string::append(&v940, "]=");
        v462 = *&v461->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v461->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v462;
        v461->__r_.__value_.__l.__size_ = 0;
        v461->__r_.__value_.__r.__words[2] = 0;
        v461->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v838 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v838, v950);
        }

        if (v943)
        {
          v463 = *(**v943 + 8) + 1;
        }

        else
        {
          v463 = 0;
        }

        std::to_string(&v938, v463);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v464 = &v938;
        }

        else
        {
          v464 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v465 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v465 = v938.__r_.__value_.__l.__size_;
        }

        v466 = std::string::append(&v957, v464, v465);
        v467 = *&v466->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v466->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v467;
        v466->__r_.__value_.__l.__size_ = 0;
        v466->__r_.__value_.__r.__words[2] = 0;
        v466->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1503:
        siri::intelligence::ParseIntelligence_Event(v456, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v446 = v450;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v449;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v455 = *(this + 129);
LABEL_1481:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 126, v455 + 1);
      v453 = *(this + 65);
      v455 = *v453;
      goto LABEL_1482;
    }
  }

  else if (v439)
  {
    goto LABEL_1455;
  }

  v442 = *(this + 65);
  if (!v442)
  {
    v444 = *(this + 129);
LABEL_1526:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 126, v444 + 1);
    v442 = *(this + 65);
    v444 = *v442;
    goto LABEL_1527;
  }

  v443 = *(this + 128);
  v444 = *v442;
  if (v443 < *v442)
  {
    *(this + 128) = v443 + 1;
    v445 = *&v442[2 * v443 + 2];
    goto LABEL_1528;
  }

  if (v444 == *(this + 129))
  {
    goto LABEL_1526;
  }

LABEL_1527:
  *v442 = v444 + 1;
  v445 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(*(this + 63));
  v469 = *(this + 128);
  v470 = *(this + 65) + 8 * v469;
  *(this + 128) = v469 + 1;
  *(v470 + 8) = v445;
LABEL_1528:
  if (a3)
  {
    YAML::Node::operator[]<char [7]>(v928, "events", __p);
    if ((__p[0] & 1) == 0)
    {
      v895 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v895, &v952);
    }

    if (v943)
    {
      v471 = *(**v943 + 8) + 1;
    }

    else
    {
      v471 = 0;
    }

    std::to_string(v950, v471);
    v472 = std::string::insert(v950, 0, "events[0]=");
    v473 = *&v472->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v472->__r_.__value_.__l + 2);
    *v930 = v473;
    v472->__r_.__value_.__l.__size_ = 0;
    v472->__r_.__value_.__r.__words[2] = 0;
    v472->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [7]>(v928, "events", __p);
  siri::intelligence::ParseIntelligence_Event(v445, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v468 = *&__p[8];
LABEL_1545:
    operator delete(v468);
  }

LABEL_1546:
  YAML::Node::operator[]<char [11]>(v928, "conditions", __p);
  v474 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v474)
    {
      goto LABEL_1657;
    }
  }

  else if (v474)
  {
    goto LABEL_1657;
  }

  YAML::Node::operator[]<char [11]>(v928, "conditions", __p);
  if ((__p[0] & 1) == 0)
  {
    v862 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v862, &v952);
  }

  v476 = v943 && (v475 = **v943, *v475 == 1) && *(v475 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v476)
    {
LABEL_1566:
      YAML::Node::operator[]<char [11]>(v928, "conditions", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v478 = v954;
        v477 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v478;
          v931 = v477;
          atomic_fetch_add_explicit(&v477->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v477);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v483 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v484 = *__p;
          v485 = *&__p[8];
          v920 = *&__p[16];
          atomic_fetch_add_explicit(&v483->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v483);
        }

        else
        {
          v484 = *__p;
          v485 = *&__p[8];
          v920 = *&__p[16];
        }
      }

      else
      {
        v485 = 0;
        v920 = 0;
        v483 = 0;
        v484 = 0;
      }

      v486 = 0;
      v487 = v483;
      while (1)
      {
        if (*v930 == v484)
        {
          v488 = v485;
          v489 = &v930[8];
          if (v484 != 1)
          {
            if (v484 != 2)
            {
              goto LABEL_1627;
            }

            v488 = v920;
            v489 = &v930[16];
          }

          if (*v489 == v488)
          {
LABEL_1627:
            if (v483)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v483);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v505 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1656;
            }

            goto LABEL_1657;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v490 = *(this + 35);
        if (!v490)
        {
          break;
        }

        v491 = *(this + 68);
        v492 = *v490;
        if (v491 < *v490)
        {
          *(this + 68) = v491 + 1;
          v493 = *&v490[2 * v491 + 2];
          if (!a3)
          {
            goto LABEL_1614;
          }

          goto LABEL_1594;
        }

        if (v492 == *(this + 69))
        {
          goto LABEL_1592;
        }

LABEL_1593:
        *v490 = v492 + 1;
        v493 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition>(*(this + 33));
        v494 = *(this + 68);
        v495 = *(this + 35) + 8 * v494;
        *(this + 68) = v494 + 1;
        *(v495 + 8) = v493;
        if (!a3)
        {
          goto LABEL_1614;
        }

LABEL_1594:
        std::to_string(&v939, v486);
        v496 = std::string::insert(&v939, 0, "conditions[");
        v497 = *&v496->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v496->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v497;
        v496->__r_.__value_.__l.__size_ = 0;
        v496->__r_.__value_.__r.__words[2] = 0;
        v496->__r_.__value_.__r.__words[0] = 0;
        v498 = std::string::append(&v940, "]=");
        v499 = *&v498->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v498->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v499;
        v498->__r_.__value_.__l.__size_ = 0;
        v498->__r_.__value_.__r.__words[2] = 0;
        v498->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v839 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v839, v950);
        }

        if (v943)
        {
          v500 = *(**v943 + 8) + 1;
        }

        else
        {
          v500 = 0;
        }

        std::to_string(&v938, v500);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v501 = &v938;
        }

        else
        {
          v501 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v502 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v502 = v938.__r_.__value_.__l.__size_;
        }

        v503 = std::string::append(&v957, v501, v502);
        v504 = *&v503->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v503->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v504;
        v503->__r_.__value_.__l.__size_ = 0;
        v503->__r_.__value_.__r.__words[2] = 0;
        v503->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1614:
        siri::intelligence::ParseIntelligence_Condition(v493, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v483 = v487;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v486;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v492 = *(this + 69);
LABEL_1592:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 66, v492 + 1);
      v490 = *(this + 35);
      v492 = *v490;
      goto LABEL_1593;
    }
  }

  else if (v476)
  {
    goto LABEL_1566;
  }

  v479 = *(this + 35);
  if (!v479)
  {
    v481 = *(this + 69);
LABEL_1637:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 66, v481 + 1);
    v479 = *(this + 35);
    v481 = *v479;
    goto LABEL_1638;
  }

  v480 = *(this + 68);
  v481 = *v479;
  if (v480 < *v479)
  {
    *(this + 68) = v480 + 1;
    v482 = *&v479[2 * v480 + 2];
    goto LABEL_1639;
  }

  if (v481 == *(this + 69))
  {
    goto LABEL_1637;
  }

LABEL_1638:
  *v479 = v481 + 1;
  v482 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition>(*(this + 33));
  v506 = *(this + 68);
  v507 = *(this + 35) + 8 * v506;
  *(this + 68) = v506 + 1;
  *(v507 + 8) = v482;
LABEL_1639:
  if (a3)
  {
    YAML::Node::operator[]<char [11]>(v928, "conditions", __p);
    if ((__p[0] & 1) == 0)
    {
      v896 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v896, &v952);
    }

    if (v943)
    {
      v508 = *(**v943 + 8) + 1;
    }

    else
    {
      v508 = 0;
    }

    std::to_string(v950, v508);
    v509 = std::string::insert(v950, 0, "conditions[0]=");
    v510 = *&v509->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v509->__r_.__value_.__l + 2);
    *v930 = v510;
    v509->__r_.__value_.__l.__size_ = 0;
    v509->__r_.__value_.__r.__words[2] = 0;
    v509->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [11]>(v928, "conditions", __p);
  siri::intelligence::ParseIntelligence_Condition(v482, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v505 = *&__p[8];
LABEL_1656:
    operator delete(v505);
  }

LABEL_1657:
  YAML::Node::operator[]<char [10]>(v928, "variables", __p);
  v511 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v511)
    {
      goto LABEL_1768;
    }
  }

  else if (v511)
  {
    goto LABEL_1768;
  }

  YAML::Node::operator[]<char [10]>(v928, "variables", __p);
  if ((__p[0] & 1) == 0)
  {
    v863 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v863, &v952);
  }

  v513 = v943 && (v512 = **v943, *v512 == 1) && *(v512 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v513)
    {
LABEL_1677:
      YAML::Node::operator[]<char [10]>(v928, "variables", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v515 = v954;
        v514 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v515;
          v931 = v514;
          atomic_fetch_add_explicit(&v514->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v514);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v520 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v521 = *__p;
          v522 = *&__p[8];
          v921 = *&__p[16];
          atomic_fetch_add_explicit(&v520->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v520);
        }

        else
        {
          v521 = *__p;
          v522 = *&__p[8];
          v921 = *&__p[16];
        }
      }

      else
      {
        v522 = 0;
        v921 = 0;
        v520 = 0;
        v521 = 0;
      }

      v523 = 0;
      v524 = v520;
      while (1)
      {
        if (*v930 == v521)
        {
          v525 = v522;
          v526 = &v930[8];
          if (v521 != 1)
          {
            if (v521 != 2)
            {
              goto LABEL_1738;
            }

            v525 = v921;
            v526 = &v930[16];
          }

          if (*v526 == v525)
          {
LABEL_1738:
            if (v520)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v520);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v542 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1767;
            }

            goto LABEL_1768;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v527 = *(this + 50);
        if (!v527)
        {
          break;
        }

        v528 = *(this + 98);
        v529 = *v527;
        if (v528 < *v527)
        {
          *(this + 98) = v528 + 1;
          v530 = *&v527[2 * v528 + 2];
          if (!a3)
          {
            goto LABEL_1725;
          }

          goto LABEL_1705;
        }

        if (v529 == *(this + 99))
        {
          goto LABEL_1703;
        }

LABEL_1704:
        *v527 = v529 + 1;
        v530 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
        v531 = *(this + 98);
        v532 = *(this + 50) + 8 * v531;
        *(this + 98) = v531 + 1;
        *(v532 + 8) = v530;
        if (!a3)
        {
          goto LABEL_1725;
        }

LABEL_1705:
        std::to_string(&v939, v523);
        v533 = std::string::insert(&v939, 0, "variables[");
        v534 = *&v533->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v533->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v534;
        v533->__r_.__value_.__l.__size_ = 0;
        v533->__r_.__value_.__r.__words[2] = 0;
        v533->__r_.__value_.__r.__words[0] = 0;
        v535 = std::string::append(&v940, "]=");
        v536 = *&v535->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v535->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v536;
        v535->__r_.__value_.__l.__size_ = 0;
        v535->__r_.__value_.__r.__words[2] = 0;
        v535->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v840 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v840, v950);
        }

        if (v943)
        {
          v537 = *(**v943 + 8) + 1;
        }

        else
        {
          v537 = 0;
        }

        std::to_string(&v938, v537);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v538 = &v938;
        }

        else
        {
          v538 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v539 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v539 = v938.__r_.__value_.__l.__size_;
        }

        v540 = std::string::append(&v957, v538, v539);
        v541 = *&v540->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v540->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v541;
        v540->__r_.__value_.__l.__size_ = 0;
        v540->__r_.__value_.__r.__words[2] = 0;
        v540->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1725:
        siri::intelligence::ParseIntelligence_Variable(v530, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v520 = v524;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v523;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v529 = *(this + 99);
LABEL_1703:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v529 + 1);
      v527 = *(this + 50);
      v529 = *v527;
      goto LABEL_1704;
    }
  }

  else if (v513)
  {
    goto LABEL_1677;
  }

  v516 = *(this + 50);
  if (!v516)
  {
    v518 = *(this + 99);
LABEL_1748:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v518 + 1);
    v516 = *(this + 50);
    v518 = *v516;
    goto LABEL_1749;
  }

  v517 = *(this + 98);
  v518 = *v516;
  if (v517 < *v516)
  {
    *(this + 98) = v517 + 1;
    v519 = *&v516[2 * v517 + 2];
    goto LABEL_1750;
  }

  if (v518 == *(this + 99))
  {
    goto LABEL_1748;
  }

LABEL_1749:
  *v516 = v518 + 1;
  v519 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
  v543 = *(this + 98);
  v544 = *(this + 50) + 8 * v543;
  *(this + 98) = v543 + 1;
  *(v544 + 8) = v519;
LABEL_1750:
  if (a3)
  {
    YAML::Node::operator[]<char [10]>(v928, "variables", __p);
    if ((__p[0] & 1) == 0)
    {
      v897 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v897, &v952);
    }

    if (v943)
    {
      v545 = *(**v943 + 8) + 1;
    }

    else
    {
      v545 = 0;
    }

    std::to_string(v950, v545);
    v546 = std::string::insert(v950, 0, "variables[0]=");
    v547 = *&v546->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v546->__r_.__value_.__l + 2);
    *v930 = v547;
    v546->__r_.__value_.__l.__size_ = 0;
    v546->__r_.__value_.__r.__words[2] = 0;
    v546->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [10]>(v928, "variables", __p);
  siri::intelligence::ParseIntelligence_Variable(v519, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v542 = *&__p[8];
LABEL_1767:
    operator delete(v542);
  }

LABEL_1768:
  YAML::Node::operator[]<char [15]>(v928, "useTimerCounts", __p);
  v548 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v548)
    {
      goto LABEL_1800;
    }
  }

  else if (v548)
  {
    goto LABEL_1800;
  }

  YAML::Node::operator[]<char [15]>(v928, "useTimerCounts", __p);
  if ((__p[0] & 1) == 0)
  {
    v864 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v864, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v930);
  v549 = siri::intelligence::StringToBool(v930, 0);
  *(this + 4) |= 8u;
  *(this + 552) = v549;
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_1800;
    }
  }

  else if (!a3)
  {
    goto LABEL_1800;
  }

  YAML::Node::operator[]<char [15]>(v928, "useTimerCounts", __p);
  if ((__p[0] & 1) == 0)
  {
    v880 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v880, &v952);
  }

  if (v943)
  {
    v550 = *(**v943 + 8) + 1;
  }

  else
  {
    v550 = 0;
  }

  std::to_string(v950, v550);
  v551 = std::string::insert(v950, 0, "useTimerCounts=");
  v552 = *&v551->__r_.__value_.__l.__data_;
  *&v930[16] = *(&v551->__r_.__value_.__l + 2);
  *v930 = v552;
  v551->__r_.__value_.__l.__size_ = 0;
  v551->__r_.__value_.__r.__words[2] = 0;
  v551->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_1800:
  YAML::Node::operator[]<char [8]>(v928, "version", __p);
  v553 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v553)
    {
      goto LABEL_1832;
    }
  }

  else if (v553)
  {
    goto LABEL_1832;
  }

  YAML::Node::operator[]<char [8]>(v928, "version", __p);
  if ((__p[0] & 1) == 0)
  {
    v865 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v865, &v952);
  }

  v952.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v952, v930);
  siri::intelligence::StringToDouble(v930, 0);
  *(this + 4) |= 4u;
  *(this + 68) = v554;
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!a3)
    {
      goto LABEL_1832;
    }
  }

  else if (!a3)
  {
    goto LABEL_1832;
  }

  YAML::Node::operator[]<char [8]>(v928, "version", __p);
  if ((__p[0] & 1) == 0)
  {
    v881 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v881, &v952);
  }

  if (v943)
  {
    v555 = *(**v943 + 8) + 1;
  }

  else
  {
    v555 = 0;
  }

  std::to_string(v950, v555);
  v556 = std::string::insert(v950, 0, "version=");
  v557 = *&v556->__r_.__value_.__l.__data_;
  *&v930[16] = *(&v556->__r_.__value_.__l + 2);
  *v930 = v557;
  v556->__r_.__value_.__l.__size_ = 0;
  v556->__r_.__value_.__r.__words[2] = 0;
  v556->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
  if ((v930[23] & 0x80000000) != 0)
  {
    operator delete(*v930);
  }

  if ((v950[23] & 0x80000000) != 0)
  {
    operator delete(*v950);
  }

  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_1832:
  YAML::Node::operator[]<char [15]>(v928, "groupResponses", __p);
  v558 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v558)
    {
      goto LABEL_1943;
    }
  }

  else if (v558)
  {
    goto LABEL_1943;
  }

  YAML::Node::operator[]<char [15]>(v928, "groupResponses", __p);
  if ((__p[0] & 1) == 0)
  {
    v866 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v866, &v952);
  }

  v560 = v943 && (v559 = **v943, *v559 == 1) && *(v559 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v560)
    {
LABEL_1852:
      YAML::Node::operator[]<char [15]>(v928, "groupResponses", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v562 = v954;
        v561 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v562;
          v931 = v561;
          atomic_fetch_add_explicit(&v561->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v561);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v567 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v568 = *__p;
          v569 = *&__p[8];
          v922 = *&__p[16];
          atomic_fetch_add_explicit(&v567->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v567);
        }

        else
        {
          v568 = *__p;
          v569 = *&__p[8];
          v922 = *&__p[16];
        }
      }

      else
      {
        v569 = 0;
        v922 = 0;
        v567 = 0;
        v568 = 0;
      }

      v570 = 0;
      v571 = v567;
      while (1)
      {
        if (*v930 == v568)
        {
          v572 = v569;
          v573 = &v930[8];
          if (v568 != 1)
          {
            if (v568 != 2)
            {
              goto LABEL_1913;
            }

            v572 = v922;
            v573 = &v930[16];
          }

          if (*v573 == v572)
          {
LABEL_1913:
            if (v567)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v567);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v589 = v952.__r_.__value_.__l.__size_;
              goto LABEL_1942;
            }

            goto LABEL_1943;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v574 = *(this + 17);
        if (!v574)
        {
          break;
        }

        v575 = *(this + 32);
        v576 = *v574;
        if (v575 < *v574)
        {
          *(this + 32) = v575 + 1;
          v577 = *&v574[2 * v575 + 2];
          if (!a3)
          {
            goto LABEL_1900;
          }

          goto LABEL_1880;
        }

        if (v576 == *(this + 33))
        {
          goto LABEL_1878;
        }

LABEL_1879:
        *v574 = v576 + 1;
        v577 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(this + 15));
        v578 = *(this + 32);
        v579 = *(this + 17) + 8 * v578;
        *(this + 32) = v578 + 1;
        *(v579 + 8) = v577;
        if (!a3)
        {
          goto LABEL_1900;
        }

LABEL_1880:
        std::to_string(&v939, v570);
        v580 = std::string::insert(&v939, 0, "groupResponses[");
        v581 = *&v580->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v580->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v581;
        v580->__r_.__value_.__l.__size_ = 0;
        v580->__r_.__value_.__r.__words[2] = 0;
        v580->__r_.__value_.__r.__words[0] = 0;
        v582 = std::string::append(&v940, "]=");
        v583 = *&v582->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v582->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v583;
        v582->__r_.__value_.__l.__size_ = 0;
        v582->__r_.__value_.__r.__words[2] = 0;
        v582->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v841 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v841, v950);
        }

        if (v943)
        {
          v584 = *(**v943 + 8) + 1;
        }

        else
        {
          v584 = 0;
        }

        std::to_string(&v938, v584);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v585 = &v938;
        }

        else
        {
          v585 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v586 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v586 = v938.__r_.__value_.__l.__size_;
        }

        v587 = std::string::append(&v957, v585, v586);
        v588 = *&v587->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v587->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v588;
        v587->__r_.__value_.__l.__size_ = 0;
        v587->__r_.__value_.__r.__words[2] = 0;
        v587->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_1900:
        siri::intelligence::ParseIntelligence_ResponseGroup(v577, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v567 = v571;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v570;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v576 = *(this + 33);
LABEL_1878:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v576 + 1);
      v574 = *(this + 17);
      v576 = *v574;
      goto LABEL_1879;
    }
  }

  else if (v560)
  {
    goto LABEL_1852;
  }

  v563 = *(this + 17);
  if (!v563)
  {
    v565 = *(this + 33);
LABEL_1923:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v565 + 1);
    v563 = *(this + 17);
    v565 = *v563;
    goto LABEL_1924;
  }

  v564 = *(this + 32);
  v565 = *v563;
  if (v564 < *v563)
  {
    *(this + 32) = v564 + 1;
    v566 = *&v563[2 * v564 + 2];
    goto LABEL_1925;
  }

  if (v565 == *(this + 33))
  {
    goto LABEL_1923;
  }

LABEL_1924:
  *v563 = v565 + 1;
  v566 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(this + 15));
  v590 = *(this + 32);
  v591 = *(this + 17) + 8 * v590;
  *(this + 32) = v590 + 1;
  *(v591 + 8) = v566;
LABEL_1925:
  if (a3)
  {
    YAML::Node::operator[]<char [15]>(v928, "groupResponses", __p);
    if ((__p[0] & 1) == 0)
    {
      v898 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v898, &v952);
    }

    if (v943)
    {
      v592 = *(**v943 + 8) + 1;
    }

    else
    {
      v592 = 0;
    }

    std::to_string(v950, v592);
    v593 = std::string::insert(v950, 0, "groupResponses[0]=");
    v594 = *&v593->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v593->__r_.__value_.__l + 2);
    *v930 = v594;
    v593->__r_.__value_.__l.__size_ = 0;
    v593->__r_.__value_.__r.__words[2] = 0;
    v593->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [15]>(v928, "groupResponses", __p);
  siri::intelligence::ParseIntelligence_ResponseGroup(v566, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v589 = *&__p[8];
LABEL_1942:
    operator delete(v589);
  }

LABEL_1943:
  YAML::Node::operator[]<char [9]>(__p, v928, "rulesets");
  v595 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v595)
    {
      goto LABEL_2054;
    }
  }

  else if (v595)
  {
    goto LABEL_2054;
  }

  YAML::Node::operator[]<char [9]>(__p, v928, "rulesets");
  if ((__p[0] & 1) == 0)
  {
    v867 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v867, &v952);
  }

  v597 = v943 && (v596 = **v943, *v596 == 1) && *(v596 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v597)
    {
LABEL_1963:
      YAML::Node::operator[]<char [9]>(&v952, v928, "rulesets");
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v599 = v954;
        v598 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v599;
          v931 = v598;
          atomic_fetch_add_explicit(&v598->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v598);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v604 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v605 = *__p;
          v606 = *&__p[8];
          v923 = *&__p[16];
          atomic_fetch_add_explicit(&v604->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v604);
        }

        else
        {
          v605 = *__p;
          v606 = *&__p[8];
          v923 = *&__p[16];
        }
      }

      else
      {
        v606 = 0;
        v923 = 0;
        v604 = 0;
        v605 = 0;
      }

      v607 = 0;
      v608 = v604;
      while (1)
      {
        if (*v930 == v605)
        {
          v609 = v606;
          v610 = &v930[8];
          if (v605 != 1)
          {
            if (v605 != 2)
            {
              goto LABEL_2024;
            }

            v609 = v923;
            v610 = &v930[16];
          }

          if (*v610 == v609)
          {
LABEL_2024:
            if (v604)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v604);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v626 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2053;
            }

            goto LABEL_2054;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v611 = *(this + 20);
        if (!v611)
        {
          break;
        }

        v612 = *(this + 38);
        v613 = *v611;
        if (v612 < *v611)
        {
          *(this + 38) = v612 + 1;
          v614 = *&v611[2 * v612 + 2];
          if (!a3)
          {
            goto LABEL_2011;
          }

          goto LABEL_1991;
        }

        if (v613 == *(this + 39))
        {
          goto LABEL_1989;
        }

LABEL_1990:
        *v611 = v613 + 1;
        v614 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(this + 18));
        v615 = *(this + 38);
        v616 = *(this + 20) + 8 * v615;
        *(this + 38) = v615 + 1;
        *(v616 + 8) = v614;
        if (!a3)
        {
          goto LABEL_2011;
        }

LABEL_1991:
        std::to_string(&v939, v607);
        v617 = std::string::insert(&v939, 0, "rulesets[");
        v618 = *&v617->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v617->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v618;
        v617->__r_.__value_.__l.__size_ = 0;
        v617->__r_.__value_.__r.__words[2] = 0;
        v617->__r_.__value_.__r.__words[0] = 0;
        v619 = std::string::append(&v940, "]=");
        v620 = *&v619->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v619->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v620;
        v619->__r_.__value_.__l.__size_ = 0;
        v619->__r_.__value_.__r.__words[2] = 0;
        v619->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v842 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v842, v950);
        }

        if (v943)
        {
          v621 = *(**v943 + 8) + 1;
        }

        else
        {
          v621 = 0;
        }

        std::to_string(&v938, v621);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v622 = &v938;
        }

        else
        {
          v622 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v623 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v623 = v938.__r_.__value_.__l.__size_;
        }

        v624 = std::string::append(&v957, v622, v623);
        v625 = *&v624->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v624->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v625;
        v624->__r_.__value_.__l.__size_ = 0;
        v624->__r_.__value_.__r.__words[2] = 0;
        v624->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2011:
        siri::intelligence::ParseIntelligence_InputGroup(v614, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v604 = v608;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v607;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v613 = *(this + 39);
LABEL_1989:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 36, v613 + 1);
      v611 = *(this + 20);
      v613 = *v611;
      goto LABEL_1990;
    }
  }

  else if (v597)
  {
    goto LABEL_1963;
  }

  v600 = *(this + 20);
  if (!v600)
  {
    v602 = *(this + 39);
LABEL_2034:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 36, v602 + 1);
    v600 = *(this + 20);
    v602 = *v600;
    goto LABEL_2035;
  }

  v601 = *(this + 38);
  v602 = *v600;
  if (v601 < *v600)
  {
    *(this + 38) = v601 + 1;
    v603 = *&v600[2 * v601 + 2];
    goto LABEL_2036;
  }

  if (v602 == *(this + 39))
  {
    goto LABEL_2034;
  }

LABEL_2035:
  *v600 = v602 + 1;
  v603 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(this + 18));
  v627 = *(this + 38);
  v628 = *(this + 20) + 8 * v627;
  *(this + 38) = v627 + 1;
  *(v628 + 8) = v603;
LABEL_2036:
  if (a3)
  {
    YAML::Node::operator[]<char [9]>(__p, v928, "rulesets");
    if ((__p[0] & 1) == 0)
    {
      v899 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v899, &v952);
    }

    if (v943)
    {
      v629 = *(**v943 + 8) + 1;
    }

    else
    {
      v629 = 0;
    }

    std::to_string(v950, v629);
    v630 = std::string::insert(v950, 0, "rulesets[0]=");
    v631 = *&v630->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v630->__r_.__value_.__l + 2);
    *v930 = v631;
    v630->__r_.__value_.__l.__size_ = 0;
    v630->__r_.__value_.__r.__words[2] = 0;
    v630->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [9]>(__p, v928, "rulesets");
  siri::intelligence::ParseIntelligence_InputGroup(v603, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v626 = *&__p[8];
LABEL_2053:
    operator delete(v626);
  }

LABEL_2054:
  YAML::Node::operator[]<char [8]>(v928, "intents", __p);
  v632 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v632)
    {
      goto LABEL_2165;
    }
  }

  else if (v632)
  {
    goto LABEL_2165;
  }

  YAML::Node::operator[]<char [8]>(v928, "intents", __p);
  if ((__p[0] & 1) == 0)
  {
    v868 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v868, &v952);
  }

  v634 = v943 && (v633 = **v943, *v633 == 1) && *(v633 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v634)
    {
LABEL_2074:
      YAML::Node::operator[]<char [8]>(v928, "intents", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v636 = v954;
        v635 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v636;
          v931 = v635;
          atomic_fetch_add_explicit(&v635->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v635);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v641 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v642 = *__p;
          v643 = *&__p[8];
          v924 = *&__p[16];
          atomic_fetch_add_explicit(&v641->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v641);
        }

        else
        {
          v642 = *__p;
          v643 = *&__p[8];
          v924 = *&__p[16];
        }
      }

      else
      {
        v643 = 0;
        v924 = 0;
        v641 = 0;
        v642 = 0;
      }

      v644 = 0;
      v645 = v641;
      while (1)
      {
        if (*v930 == v642)
        {
          v646 = v643;
          v647 = &v930[8];
          if (v642 != 1)
          {
            if (v642 != 2)
            {
              goto LABEL_2135;
            }

            v646 = v924;
            v647 = &v930[16];
          }

          if (*v647 == v646)
          {
LABEL_2135:
            if (v641)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v641);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v663 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2164;
            }

            goto LABEL_2165;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v648 = *(this + 32);
        if (!v648)
        {
          break;
        }

        v649 = *(this + 62);
        v650 = *v648;
        if (v649 < *v648)
        {
          *(this + 62) = v649 + 1;
          v651 = *&v648[2 * v649 + 2];
          if (!a3)
          {
            goto LABEL_2122;
          }

          goto LABEL_2102;
        }

        if (v650 == *(this + 63))
        {
          goto LABEL_2100;
        }

LABEL_2101:
        *v648 = v650 + 1;
        v651 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Intent>(*(this + 30));
        v652 = *(this + 62);
        v653 = *(this + 32) + 8 * v652;
        *(this + 62) = v652 + 1;
        *(v653 + 8) = v651;
        if (!a3)
        {
          goto LABEL_2122;
        }

LABEL_2102:
        std::to_string(&v939, v644);
        v654 = std::string::insert(&v939, 0, "intents[");
        v655 = *&v654->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v654->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v655;
        v654->__r_.__value_.__l.__size_ = 0;
        v654->__r_.__value_.__r.__words[2] = 0;
        v654->__r_.__value_.__r.__words[0] = 0;
        v656 = std::string::append(&v940, "]=");
        v657 = *&v656->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v656->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v657;
        v656->__r_.__value_.__l.__size_ = 0;
        v656->__r_.__value_.__r.__words[2] = 0;
        v656->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v843 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v843, v950);
        }

        if (v943)
        {
          v658 = *(**v943 + 8) + 1;
        }

        else
        {
          v658 = 0;
        }

        std::to_string(&v938, v658);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v659 = &v938;
        }

        else
        {
          v659 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v660 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v660 = v938.__r_.__value_.__l.__size_;
        }

        v661 = std::string::append(&v957, v659, v660);
        v662 = *&v661->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v661->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v662;
        v661->__r_.__value_.__l.__size_ = 0;
        v661->__r_.__value_.__r.__words[2] = 0;
        v661->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2122:
        siri::intelligence::ParseIntelligence_Intent(v651, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v641 = v645;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v644;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v650 = *(this + 63);
LABEL_2100:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 60, v650 + 1);
      v648 = *(this + 32);
      v650 = *v648;
      goto LABEL_2101;
    }
  }

  else if (v634)
  {
    goto LABEL_2074;
  }

  v637 = *(this + 32);
  if (!v637)
  {
    v639 = *(this + 63);
LABEL_2145:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 60, v639 + 1);
    v637 = *(this + 32);
    v639 = *v637;
    goto LABEL_2146;
  }

  v638 = *(this + 62);
  v639 = *v637;
  if (v638 < *v637)
  {
    *(this + 62) = v638 + 1;
    v640 = *&v637[2 * v638 + 2];
    goto LABEL_2147;
  }

  if (v639 == *(this + 63))
  {
    goto LABEL_2145;
  }

LABEL_2146:
  *v637 = v639 + 1;
  v640 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Intent>(*(this + 30));
  v664 = *(this + 62);
  v665 = *(this + 32) + 8 * v664;
  *(this + 62) = v664 + 1;
  *(v665 + 8) = v640;
LABEL_2147:
  if (a3)
  {
    YAML::Node::operator[]<char [8]>(v928, "intents", __p);
    if ((__p[0] & 1) == 0)
    {
      v900 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v900, &v952);
    }

    if (v943)
    {
      v666 = *(**v943 + 8) + 1;
    }

    else
    {
      v666 = 0;
    }

    std::to_string(v950, v666);
    v667 = std::string::insert(v950, 0, "intents[0]=");
    v668 = *&v667->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v667->__r_.__value_.__l + 2);
    *v930 = v668;
    v667->__r_.__value_.__l.__size_ = 0;
    v667->__r_.__value_.__r.__words[2] = 0;
    v667->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [8]>(v928, "intents", __p);
  siri::intelligence::ParseIntelligence_Intent(v640, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v663 = *&__p[8];
LABEL_2164:
    operator delete(v663);
  }

LABEL_2165:
  YAML::Node::operator[]<char [9]>(__p, v928, "counters");
  v669 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v669)
    {
      goto LABEL_2276;
    }
  }

  else if (v669)
  {
    goto LABEL_2276;
  }

  YAML::Node::operator[]<char [9]>(__p, v928, "counters");
  if ((__p[0] & 1) == 0)
  {
    v869 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v869, &v952);
  }

  v671 = v943 && (v670 = **v943, *v670 == 1) && *(v670 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v671)
    {
LABEL_2185:
      YAML::Node::operator[]<char [9]>(&v952, v928, "counters");
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v673 = v954;
        v672 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v673;
          v931 = v672;
          atomic_fetch_add_explicit(&v672->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v672);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v678 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v679 = *__p;
          v680 = *&__p[8];
          v925 = *&__p[16];
          atomic_fetch_add_explicit(&v678->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v678);
        }

        else
        {
          v679 = *__p;
          v680 = *&__p[8];
          v925 = *&__p[16];
        }
      }

      else
      {
        v680 = 0;
        v925 = 0;
        v678 = 0;
        v679 = 0;
      }

      v681 = 0;
      v682 = v678;
      while (1)
      {
        if (*v930 == v679)
        {
          v683 = v680;
          v684 = &v930[8];
          if (v679 != 1)
          {
            if (v679 != 2)
            {
              goto LABEL_2246;
            }

            v683 = v925;
            v684 = &v930[16];
          }

          if (*v684 == v683)
          {
LABEL_2246:
            if (v678)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v678);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v700 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2275;
            }

            goto LABEL_2276;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v685 = *(this + 38);
        if (!v685)
        {
          break;
        }

        v686 = *(this + 74);
        v687 = *v685;
        if (v686 < *v685)
        {
          *(this + 74) = v686 + 1;
          v688 = *&v685[2 * v686 + 2];
          if (!a3)
          {
            goto LABEL_2233;
          }

          goto LABEL_2213;
        }

        if (v687 == *(this + 75))
        {
          goto LABEL_2211;
        }

LABEL_2212:
        *v685 = v687 + 1;
        v688 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Counter>(*(this + 36));
        v689 = *(this + 74);
        v690 = *(this + 38) + 8 * v689;
        *(this + 74) = v689 + 1;
        *(v690 + 8) = v688;
        if (!a3)
        {
          goto LABEL_2233;
        }

LABEL_2213:
        std::to_string(&v939, v681);
        v691 = std::string::insert(&v939, 0, "counters[");
        v692 = *&v691->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v691->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v692;
        v691->__r_.__value_.__l.__size_ = 0;
        v691->__r_.__value_.__r.__words[2] = 0;
        v691->__r_.__value_.__r.__words[0] = 0;
        v693 = std::string::append(&v940, "]=");
        v694 = *&v693->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v693->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v694;
        v693->__r_.__value_.__l.__size_ = 0;
        v693->__r_.__value_.__r.__words[2] = 0;
        v693->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v844 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v844, v950);
        }

        if (v943)
        {
          v695 = *(**v943 + 8) + 1;
        }

        else
        {
          v695 = 0;
        }

        std::to_string(&v938, v695);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v696 = &v938;
        }

        else
        {
          v696 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v697 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v697 = v938.__r_.__value_.__l.__size_;
        }

        v698 = std::string::append(&v957, v696, v697);
        v699 = *&v698->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v698->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v699;
        v698->__r_.__value_.__l.__size_ = 0;
        v698->__r_.__value_.__r.__words[2] = 0;
        v698->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2233:
        siri::intelligence::ParseIntelligence_Counter(v688, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v678 = v682;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v681;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v687 = *(this + 75);
LABEL_2211:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 72, v687 + 1);
      v685 = *(this + 38);
      v687 = *v685;
      goto LABEL_2212;
    }
  }

  else if (v671)
  {
    goto LABEL_2185;
  }

  v674 = *(this + 38);
  if (!v674)
  {
    v676 = *(this + 75);
LABEL_2256:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 72, v676 + 1);
    v674 = *(this + 38);
    v676 = *v674;
    goto LABEL_2257;
  }

  v675 = *(this + 74);
  v676 = *v674;
  if (v675 < *v674)
  {
    *(this + 74) = v675 + 1;
    v677 = *&v674[2 * v675 + 2];
    goto LABEL_2258;
  }

  if (v676 == *(this + 75))
  {
    goto LABEL_2256;
  }

LABEL_2257:
  *v674 = v676 + 1;
  v677 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Counter>(*(this + 36));
  v701 = *(this + 74);
  v702 = *(this + 38) + 8 * v701;
  *(this + 74) = v701 + 1;
  *(v702 + 8) = v677;
LABEL_2258:
  if (a3)
  {
    YAML::Node::operator[]<char [9]>(__p, v928, "counters");
    if ((__p[0] & 1) == 0)
    {
      v901 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v901, &v952);
    }

    if (v943)
    {
      v703 = *(**v943 + 8) + 1;
    }

    else
    {
      v703 = 0;
    }

    std::to_string(v950, v703);
    v704 = std::string::insert(v950, 0, "counters[0]=");
    v705 = *&v704->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v704->__r_.__value_.__l + 2);
    *v930 = v705;
    v704->__r_.__value_.__l.__size_ = 0;
    v704->__r_.__value_.__r.__words[2] = 0;
    v704->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [9]>(__p, v928, "counters");
  siri::intelligence::ParseIntelligence_Counter(v677, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v700 = *&__p[8];
LABEL_2275:
    operator delete(v700);
  }

LABEL_2276:
  YAML::Node::operator[]<char [6]>(v928, "flags", __p);
  v706 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v706)
    {
      goto LABEL_2387;
    }
  }

  else if (v706)
  {
    goto LABEL_2387;
  }

  YAML::Node::operator[]<char [6]>(v928, "flags", __p);
  if ((__p[0] & 1) == 0)
  {
    v870 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v870, &v952);
  }

  v708 = v943 && (v707 = **v943, *v707 == 1) && *(v707 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v708)
    {
LABEL_2296:
      YAML::Node::operator[]<char [6]>(v928, "flags", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v710 = v954;
        v709 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v710;
          v931 = v709;
          atomic_fetch_add_explicit(&v709->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v709);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v715 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v716 = *__p;
          v717 = *&__p[8];
          v926 = *&__p[16];
          atomic_fetch_add_explicit(&v715->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v715);
        }

        else
        {
          v716 = *__p;
          v717 = *&__p[8];
          v926 = *&__p[16];
        }
      }

      else
      {
        v717 = 0;
        v926 = 0;
        v715 = 0;
        v716 = 0;
      }

      v718 = 0;
      v719 = v715;
      while (1)
      {
        if (*v930 == v716)
        {
          v720 = v717;
          v721 = &v930[8];
          if (v716 != 1)
          {
            if (v716 != 2)
            {
              goto LABEL_2357;
            }

            v720 = v926;
            v721 = &v930[16];
          }

          if (*v721 == v720)
          {
LABEL_2357:
            if (v715)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v715);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v737 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2386;
            }

            goto LABEL_2387;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v722 = *(this + 41);
        if (!v722)
        {
          break;
        }

        v723 = *(this + 80);
        v724 = *v722;
        if (v723 < *v722)
        {
          *(this + 80) = v723 + 1;
          v725 = *&v722[2 * v723 + 2];
          if (!a3)
          {
            goto LABEL_2344;
          }

          goto LABEL_2324;
        }

        if (v724 == *(this + 81))
        {
          goto LABEL_2322;
        }

LABEL_2323:
        *v722 = v724 + 1;
        v725 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Flag>(*(this + 39));
        v726 = *(this + 80);
        v727 = *(this + 41) + 8 * v726;
        *(this + 80) = v726 + 1;
        *(v727 + 8) = v725;
        if (!a3)
        {
          goto LABEL_2344;
        }

LABEL_2324:
        std::to_string(&v939, v718);
        v728 = std::string::insert(&v939, 0, "flags[");
        v729 = *&v728->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v728->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v729;
        v728->__r_.__value_.__l.__size_ = 0;
        v728->__r_.__value_.__r.__words[2] = 0;
        v728->__r_.__value_.__r.__words[0] = 0;
        v730 = std::string::append(&v940, "]=");
        v731 = *&v730->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v730->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v731;
        v730->__r_.__value_.__l.__size_ = 0;
        v730->__r_.__value_.__r.__words[2] = 0;
        v730->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v845 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v845, v950);
        }

        if (v943)
        {
          v732 = *(**v943 + 8) + 1;
        }

        else
        {
          v732 = 0;
        }

        std::to_string(&v938, v732);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v733 = &v938;
        }

        else
        {
          v733 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v734 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v734 = v938.__r_.__value_.__l.__size_;
        }

        v735 = std::string::append(&v957, v733, v734);
        v736 = *&v735->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v735->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v736;
        v735->__r_.__value_.__l.__size_ = 0;
        v735->__r_.__value_.__r.__words[2] = 0;
        v735->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2344:
        siri::intelligence::ParseIntelligence_Flag(v725, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v715 = v719;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v718;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v724 = *(this + 81);
LABEL_2322:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 78, v724 + 1);
      v722 = *(this + 41);
      v724 = *v722;
      goto LABEL_2323;
    }
  }

  else if (v708)
  {
    goto LABEL_2296;
  }

  v711 = *(this + 41);
  if (!v711)
  {
    v713 = *(this + 81);
LABEL_2367:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 78, v713 + 1);
    v711 = *(this + 41);
    v713 = *v711;
    goto LABEL_2368;
  }

  v712 = *(this + 80);
  v713 = *v711;
  if (v712 < *v711)
  {
    *(this + 80) = v712 + 1;
    v714 = *&v711[2 * v712 + 2];
    goto LABEL_2369;
  }

  if (v713 == *(this + 81))
  {
    goto LABEL_2367;
  }

LABEL_2368:
  *v711 = v713 + 1;
  v714 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Flag>(*(this + 39));
  v738 = *(this + 80);
  v739 = *(this + 41) + 8 * v738;
  *(this + 80) = v738 + 1;
  *(v739 + 8) = v714;
LABEL_2369:
  if (a3)
  {
    YAML::Node::operator[]<char [6]>(v928, "flags", __p);
    if ((__p[0] & 1) == 0)
    {
      v902 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v902, &v952);
    }

    if (v943)
    {
      v740 = *(**v943 + 8) + 1;
    }

    else
    {
      v740 = 0;
    }

    std::to_string(v950, v740);
    v741 = std::string::insert(v950, 0, "flags[0]=");
    v742 = *&v741->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v741->__r_.__value_.__l + 2);
    *v930 = v742;
    v741->__r_.__value_.__l.__size_ = 0;
    v741->__r_.__value_.__r.__words[2] = 0;
    v741->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [6]>(v928, "flags", __p);
  siri::intelligence::ParseIntelligence_Flag(v714, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v737 = *&__p[8];
LABEL_2386:
    operator delete(v737);
  }

LABEL_2387:
  YAML::Node::operator[]<char [7]>(v928, "labels", __p);
  v743 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v743)
    {
      goto LABEL_2498;
    }
  }

  else if (v743)
  {
    goto LABEL_2498;
  }

  YAML::Node::operator[]<char [7]>(v928, "labels", __p);
  if ((__p[0] & 1) == 0)
  {
    v871 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v871, &v952);
  }

  v745 = v943 && (v744 = **v943, *v744 == 1) && *(v744 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v745)
    {
LABEL_2407:
      YAML::Node::operator[]<char [7]>(v928, "labels", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v747 = v954;
        v746 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v747;
          v931 = v746;
          atomic_fetch_add_explicit(&v746->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v746);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v752 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v753 = *__p;
          v754 = *&__p[8];
          v927 = *&__p[16];
          atomic_fetch_add_explicit(&v752->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v752);
        }

        else
        {
          v753 = *__p;
          v754 = *&__p[8];
          v927 = *&__p[16];
        }
      }

      else
      {
        v754 = 0;
        v927 = 0;
        v752 = 0;
        v753 = 0;
      }

      v755 = 0;
      v756 = v752;
      while (1)
      {
        if (*v930 == v753)
        {
          v757 = v754;
          v758 = &v930[8];
          if (v753 != 1)
          {
            if (v753 != 2)
            {
              goto LABEL_2468;
            }

            v757 = v927;
            v758 = &v930[16];
          }

          if (*v758 == v757)
          {
LABEL_2468:
            if (v752)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v752);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v774 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2497;
            }

            goto LABEL_2498;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v759 = *(this + 44);
        if (!v759)
        {
          break;
        }

        v760 = *(this + 86);
        v761 = *v759;
        if (v760 < *v759)
        {
          *(this + 86) = v760 + 1;
          v762 = *&v759[2 * v760 + 2];
          if (!a3)
          {
            goto LABEL_2455;
          }

          goto LABEL_2435;
        }

        if (v761 == *(this + 87))
        {
          goto LABEL_2433;
        }

LABEL_2434:
        *v759 = v761 + 1;
        v762 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Label>(*(this + 42));
        v763 = *(this + 86);
        v764 = *(this + 44) + 8 * v763;
        *(this + 86) = v763 + 1;
        *(v764 + 8) = v762;
        if (!a3)
        {
          goto LABEL_2455;
        }

LABEL_2435:
        std::to_string(&v939, v755);
        v765 = std::string::insert(&v939, 0, "labels[");
        v766 = *&v765->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v765->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v766;
        v765->__r_.__value_.__l.__size_ = 0;
        v765->__r_.__value_.__r.__words[2] = 0;
        v765->__r_.__value_.__r.__words[0] = 0;
        v767 = std::string::append(&v940, "]=");
        v768 = *&v767->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v767->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v768;
        v767->__r_.__value_.__l.__size_ = 0;
        v767->__r_.__value_.__r.__words[2] = 0;
        v767->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v846 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v846, v950);
        }

        if (v943)
        {
          v769 = *(**v943 + 8) + 1;
        }

        else
        {
          v769 = 0;
        }

        std::to_string(&v938, v769);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v770 = &v938;
        }

        else
        {
          v770 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v771 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v771 = v938.__r_.__value_.__l.__size_;
        }

        v772 = std::string::append(&v957, v770, v771);
        v773 = *&v772->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v772->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v773;
        v772->__r_.__value_.__l.__size_ = 0;
        v772->__r_.__value_.__r.__words[2] = 0;
        v772->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2455:
        siri::intelligence::ParseIntelligence_Label(v762, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v752 = v756;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v755;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v761 = *(this + 87);
LABEL_2433:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 84, v761 + 1);
      v759 = *(this + 44);
      v761 = *v759;
      goto LABEL_2434;
    }
  }

  else if (v745)
  {
    goto LABEL_2407;
  }

  v748 = *(this + 44);
  if (!v748)
  {
    v750 = *(this + 87);
LABEL_2478:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 84, v750 + 1);
    v748 = *(this + 44);
    v750 = *v748;
    goto LABEL_2479;
  }

  v749 = *(this + 86);
  v750 = *v748;
  if (v749 < *v748)
  {
    *(this + 86) = v749 + 1;
    v751 = *&v748[2 * v749 + 2];
    goto LABEL_2480;
  }

  if (v750 == *(this + 87))
  {
    goto LABEL_2478;
  }

LABEL_2479:
  *v748 = v750 + 1;
  v751 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Label>(*(this + 42));
  v775 = *(this + 86);
  v776 = *(this + 44) + 8 * v775;
  *(this + 86) = v775 + 1;
  *(v776 + 8) = v751;
LABEL_2480:
  if (a3)
  {
    YAML::Node::operator[]<char [7]>(v928, "labels", __p);
    if ((__p[0] & 1) == 0)
    {
      v903 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v903, &v952);
    }

    if (v943)
    {
      v777 = *(**v943 + 8) + 1;
    }

    else
    {
      v777 = 0;
    }

    std::to_string(v950, v777);
    v778 = std::string::insert(v950, 0, "labels[0]=");
    v779 = *&v778->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v778->__r_.__value_.__l + 2);
    *v930 = v779;
    v778->__r_.__value_.__l.__size_ = 0;
    v778->__r_.__value_.__r.__words[2] = 0;
    v778->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [7]>(v928, "labels", __p);
  siri::intelligence::ParseIntelligence_Label(v751, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v774 = *&__p[8];
LABEL_2497:
    operator delete(v774);
  }

LABEL_2498:
  YAML::Node::operator[]<char [6]>(v928, "lists", __p);
  v780 = __p[0] != 1 || v943 && (***v943 & 1) == 0;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v780)
    {
      goto LABEL_2609;
    }
  }

  else if (v780)
  {
    goto LABEL_2609;
  }

  YAML::Node::operator[]<char [6]>(v928, "lists", __p);
  if ((__p[0] & 1) == 0)
  {
    v872 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
    }

    else
    {
      v952 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v872, &v952);
  }

  v782 = v943 && (v781 = **v943, *v781 == 1) && *(v781 + 16) == 3;
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v782)
    {
LABEL_2518:
      YAML::Node::operator[]<char [6]>(v928, "lists", &v952);
      if ((v952.__r_.__value_.__s.__data_[0] & 1) != 0 && v956)
      {
        YAML::detail::node_data::begin(**v956, __p);
        v784 = v954;
        v783 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v784;
          v931 = v783;
          atomic_fetch_add_explicit(&v783->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v783);
        }

        else
        {
          *v930 = *__p;
          *&v930[16] = *&__p[16];
          *&v930[32] = v954;
          v931 = 0;
        }
      }

      else
      {
        *v930 = 0;
        memset(&v930[8], 0, 32);
        v931 = 0;
      }

      if (v952.__r_.__value_.__s.__data_[0] == 1 && v956)
      {
        YAML::detail::node_data::end(**v956, __p);
        v789 = v955;
        if (v955)
        {
          atomic_fetch_add_explicit(&v955->__shared_owners_, 1uLL, memory_order_relaxed);
          v790 = *__p;
          v791 = *&__p[8];
          v929 = *&__p[16];
          atomic_fetch_add_explicit(&v789->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v789);
        }

        else
        {
          v790 = *__p;
          v791 = *&__p[8];
          v929 = *&__p[16];
        }
      }

      else
      {
        v791 = 0;
        v929 = 0;
        v789 = 0;
        v790 = 0;
      }

      v792 = 0;
      v793 = v789;
      while (1)
      {
        if (*v930 == v790)
        {
          v794 = v791;
          v795 = &v930[8];
          if (v790 != 1)
          {
            if (v790 != 2)
            {
              goto LABEL_2579;
            }

            v794 = v929;
            v795 = &v930[16];
          }

          if (*v795 == v794)
          {
LABEL_2579:
            if (v789)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v789);
            }

            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (v953 < 0)
            {
              v811 = v952.__r_.__value_.__l.__size_;
              goto LABEL_2608;
            }

            goto LABEL_2609;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v930, __p);
        v796 = *(this + 47);
        if (!v796)
        {
          break;
        }

        v797 = *(this + 92);
        v798 = *v796;
        if (v797 < *v796)
        {
          *(this + 92) = v797 + 1;
          v799 = *&v796[2 * v797 + 2];
          if (!a3)
          {
            goto LABEL_2566;
          }

          goto LABEL_2546;
        }

        if (v798 == *(this + 93))
        {
          goto LABEL_2544;
        }

LABEL_2545:
        *v796 = v798 + 1;
        v799 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_List>(*(this + 45));
        v800 = *(this + 92);
        v801 = *(this + 47) + 8 * v800;
        *(this + 92) = v800 + 1;
        *(v801 + 8) = v799;
        if (!a3)
        {
          goto LABEL_2566;
        }

LABEL_2546:
        std::to_string(&v939, v792);
        v802 = std::string::insert(&v939, 0, "lists[");
        v803 = *&v802->__r_.__value_.__l.__data_;
        v940.__r_.__value_.__r.__words[2] = v802->__r_.__value_.__r.__words[2];
        *&v940.__r_.__value_.__l.__data_ = v803;
        v802->__r_.__value_.__l.__size_ = 0;
        v802->__r_.__value_.__r.__words[2] = 0;
        v802->__r_.__value_.__r.__words[0] = 0;
        v804 = std::string::append(&v940, "]=");
        v805 = *&v804->__r_.__value_.__l.__data_;
        v957.__r_.__value_.__r.__words[2] = v804->__r_.__value_.__r.__words[2];
        *&v957.__r_.__value_.__l.__data_ = v805;
        v804->__r_.__value_.__l.__size_ = 0;
        v804->__r_.__value_.__r.__words[2] = 0;
        v804->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0] & 1) == 0)
        {
          v847 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v950, *&__p[8], *&__p[16]);
          }

          else
          {
            *v950 = *&__p[8];
            *&v950[16] = *&__p[24];
          }

          YAML::InvalidNode::InvalidNode(v847, v950);
        }

        if (v943)
        {
          v806 = *(**v943 + 8) + 1;
        }

        else
        {
          v806 = 0;
        }

        std::to_string(&v938, v806);
        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v807 = &v938;
        }

        else
        {
          v807 = v938.__r_.__value_.__r.__words[0];
        }

        if ((v938.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v808 = HIBYTE(v938.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v808 = v938.__r_.__value_.__l.__size_;
        }

        v809 = std::string::append(&v957, v807, v808);
        v810 = *&v809->__r_.__value_.__l.__data_;
        v958.__r_.__value_.__r.__words[2] = v809->__r_.__value_.__r.__words[2];
        *&v958.__r_.__value_.__l.__data_ = v810;
        v809->__r_.__value_.__l.__size_ = 0;
        v809->__r_.__value_.__r.__words[2] = 0;
        v809->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v933, &v958);
        if (SHIBYTE(v958.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v958.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v938.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v957.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v957.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v940.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v940.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v939.__r_.__value_.__l.__data_);
        }

LABEL_2566:
        siri::intelligence::ParseIntelligence_List(v799, __p, a3);
        if (v949)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v949);
        }

        v789 = v793;
        if (v948 < 0)
        {
          operator delete(v947);
        }

        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (v945 < 0)
        {
          operator delete(v944);
        }

        if (v942)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v942);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        ++v792;
        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v930);
      }

      v798 = *(this + 93);
LABEL_2544:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 90, v798 + 1);
      v796 = *(this + 47);
      v798 = *v796;
      goto LABEL_2545;
    }
  }

  else if (v782)
  {
    goto LABEL_2518;
  }

  v785 = *(this + 47);
  if (!v785)
  {
    v787 = *(this + 93);
LABEL_2589:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 90, v787 + 1);
    v785 = *(this + 47);
    v787 = *v785;
    goto LABEL_2590;
  }

  v786 = *(this + 92);
  v787 = *v785;
  if (v786 < *v785)
  {
    *(this + 92) = v786 + 1;
    v788 = *&v785[2 * v786 + 2];
    goto LABEL_2591;
  }

  if (v787 == *(this + 93))
  {
    goto LABEL_2589;
  }

LABEL_2590:
  *v785 = v787 + 1;
  v788 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_List>(*(this + 45));
  v812 = *(this + 92);
  v813 = *(this + 47) + 8 * v812;
  *(this + 92) = v812 + 1;
  *(v813 + 8) = v788;
LABEL_2591:
  if (a3)
  {
    YAML::Node::operator[]<char [6]>(v928, "lists", __p);
    if ((__p[0] & 1) == 0)
    {
      v904 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v952, *&__p[8], *&__p[16]);
      }

      else
      {
        v952 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v904, &v952);
    }

    if (v943)
    {
      v814 = *(**v943 + 8) + 1;
    }

    else
    {
      v814 = 0;
    }

    std::to_string(v950, v814);
    v815 = std::string::insert(v950, 0, "lists[0]=");
    v816 = *&v815->__r_.__value_.__l.__data_;
    *&v930[16] = *(&v815->__r_.__value_.__l + 2);
    *v930 = v816;
    v815->__r_.__value_.__l.__size_ = 0;
    v815->__r_.__value_.__r.__words[2] = 0;
    v815->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v933, v930);
    if ((v930[23] & 0x80000000) != 0)
    {
      operator delete(*v930);
    }

    if ((v950[23] & 0x80000000) != 0)
    {
      operator delete(*v950);
    }

    if (v942)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v942);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [6]>(v928, "lists", __p);
  siri::intelligence::ParseIntelligence_List(v788, __p, a3);
  if (v942)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v942);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v811 = *&__p[8];
LABEL_2608:
    operator delete(v811);
  }

LABEL_2609:
  if (v933 != v934)
  {
    std::string::basic_string[abi:ne200100]<0>(&v952, ";");
    siri::intelligence::StringJoin(&v933, &v952, __p);
    v819 = *(this + 1);
    v818 = (this + 8);
    v817 = v819;
    if (v819)
    {
      v820 = v817 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v818);
      v820 = v822;
    }

    if (*(v820 + 23) < 0)
    {
      operator delete(*v820);
    }

    v821 = *__p;
    *(v820 + 16) = *&__p[16];
    *v820 = v821;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v952.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v952.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v933;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}