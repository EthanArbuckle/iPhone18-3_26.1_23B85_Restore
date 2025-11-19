void sub_254D1CC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Memory::GetRoot(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  siri::intelligence::ParseVariableComponents(a2, &v47);
  v7 = v47;
  v8 = v48 - v47;
  if ((0x6DB6DB6DB6DB6DB7 * ((v48 - v47) >> 3)) <= 1)
  {
    v9 = a1[1];
    *a4 = *a1;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_90;
  }

  v41 = a4;
  memset(v46, 0, sizeof(v46));
  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v48 - v7;
  }

  if (v8 == 56 || v10 == 0)
  {
    v13 = v11;
LABEL_12:
    *v41 = v10;
    v41[1] = v13;
    goto LABEL_89;
  }

  v40 = a2;
  v14 = 0;
  v15 = 1;
  while (1)
  {
    std::vector<siri::intelligence::VariableComponent>::push_back[abi:ne200100](v46, (v7 + v14));
    if ((*(v7 + v14 + 48) & 1) == 0)
    {
      v24 = std::__tree<std::string>::find<std::string>((v10 + 72), (v7 + v14));
      v25 = v24;
      if (v10 + 80 == v24)
      {
        v19 = 0;
LABEL_30:
        if (a3)
        {
          operator new();
        }

LABEL_84:
        *v41 = 0;
        v41[1] = 0;
        goto LABEL_85;
      }

      v26 = *(v24 + 56);
      v19 = *(v25 + 64);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v26)
      {
        goto LABEL_30;
      }

      v27 = **v26;
      if (!v28)
      {
        v36 = (v7 + v14);
        if (*(v7 + v14 + 23) < 0)
        {
          v36 = *v36;
        }

        if (*(v40 + 23) >= 0)
        {
          v37 = v40;
        }

        else
        {
          v37 = *v40;
        }

        siri::intelligence::Log::Error("Reference to non-dictionary component '%s' in variable reference: %s", v29, v36, v37);
        goto LABEL_84;
      }

      v30 = v28;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = v19;
        v31 = 0;
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v13 = 0;
        v31 = 1;
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_34:
      if ((v31 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v10 = v30;
      goto LABEL_65;
    }

    v45 = 0;
    if ((siri::intelligence::Memory::GetArrayIndex(a1, v7 + v14, &v45) & 1) == 0)
    {
      *v41 = 0;
      v41[1] = 0;
      goto LABEL_87;
    }

    v16 = std::__tree<std::string>::find<std::string>((v10 + 72), (v7 + v14));
    v17 = v16;
    if (v10 + 80 == v16)
    {
      v19 = 0;
LABEL_40:
      if (a3)
      {
        std::allocate_shared[abi:ne200100]<siri::intelligence::VariableArray,std::allocator<siri::intelligence::VariableArray>,std::string const&,0>();
      }

      goto LABEL_84;
    }

    v18 = *(v16 + 56);
    v19 = *(v17 + 64);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    v20 = **v18;
    if (!v21)
    {
      v38 = (v7 + v14);
      if (*(v7 + v14 + 23) < 0)
      {
        v38 = *v38;
      }

      if (*(v40 + 23) >= 0)
      {
        v39 = v40;
      }

      else
      {
        v39 = *v40;
      }

      siri::intelligence::Log::Error("Reference to non-array component '%s' in variable reference: %s", v22, v38, v39);
      goto LABEL_84;
    }

    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    v32 = (v21[10] - v21[9]) >> 4;
    if (v32 <= v45)
    {
      break;
    }

    siri::intelligence::VariableArray::GetItem(v21, v45, &lpsrc);
    if (lpsrc)
    {
      v34 = **lpsrc;
      if (v10)
      {
        v13 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = 0;
LABEL_57:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

LABEL_65:
    if (v10)
    {
      v7 = v47;
      v14 += 56;
      v11 = v13;
      if (v15++ < 0x6DB6DB6DB6DB6DB7 * ((v48 - v47) >> 3) - 1)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  if (v32 == v45 && a3 != 0)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *v41 = 0;
  v41[1] = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_85:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_87:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_89:
  lpsrc = v46;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&lpsrc);
LABEL_90:
  v46[0] = &v47;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](v46);
}

void sub_254D1D288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ***a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  a18 = &a23;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a18);
  a23 = (v25 - 120);
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::VariableComponent>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<siri::intelligence::VariableComponent>::__emplace_back_slow_path<siri::intelligence::VariableComponent const&>(a1, a2);
  }

  else
  {
    std::vector<siri::intelligence::VariableComponent>::__construct_one_at_end[abi:ne200100]<siri::intelligence::VariableComponent const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

char **std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableDictionary,siri::intelligence::Variable>@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void siri::intelligence::Memory::CreateVariable(uint64_t a1@<X1>, char *a2@<X2>, void *a3@<X8>)
{
  siri::intelligence::ParseVariableComponents(a1, &v22);
  if (v22 == v23)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    if (*(v23 - 33) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(v23 - 56), *(v23 - 48));
    }

    else
    {
      v5 = *(v23 - 56);
      v21.__r_.__value_.__r.__words[2] = *(v23 - 40);
      *&v21.__r_.__value_.__l.__data_ = v5;
    }

    *a3 = 0;
    a3[1] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_STRING[0]);
    IsEquivalentType = siri::intelligence::IsEquivalentType(a2, &__p);
    v7 = IsEquivalentType;
    if (v20 < 0)
    {
      operator delete(__p);
      if (v7)
      {
LABEL_8:
        operator new();
      }
    }

    else if (IsEquivalentType)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_NUMBER[0]);
    v8 = siri::intelligence::IsEquivalentType(a2, &__p);
    v9 = v8;
    if (v20 < 0)
    {
      operator delete(__p);
      if (v9)
      {
LABEL_12:
        operator new();
      }
    }

    else if (v8)
    {
      goto LABEL_12;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_BOOLEAN[0]);
    v10 = siri::intelligence::IsEquivalentType(a2, &__p);
    v11 = v10;
    if (v20 < 0)
    {
      operator delete(__p);
      if (v11)
      {
LABEL_16:
        operator new();
      }
    }

    else if (v10)
    {
      goto LABEL_16;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
    v12 = siri::intelligence::IsEquivalentType(a2, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v12)
    {
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,std::string &,0>();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
    v13 = siri::intelligence::IsEquivalentType(a2, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v13)
    {
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableArray,std::allocator<siri::intelligence::VariableArray>,std::string &,0>();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_REFERENCE[0]);
    v14 = siri::intelligence::IsEquivalentType(a2, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v14)
    {
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableReference,std::allocator<siri::intelligence::VariableReference>,std::string &,0>();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_FUNCTION);
    v16 = siri::intelligence::IsEquivalentType(a2, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableFunction,std::allocator<siri::intelligence::VariableFunction>,std::string &,0>();
    }

    v17 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v21.__r_.__value_.__r.__words[0];
    }

    if (a2[23] >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    siri::intelligence::Log::Error("Unsupported type for variable '%s': '%s'", v15, v17, v18);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v21.__r_.__value_.__r.__words[0] = &v22;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_254D1D89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __p = &a27;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::Memory::GetLiteralVariable(std::string *a1@<X1>, void *a2@<X8>)
{
  siri::intelligence::GetLiteralType(a1, &__s1);
  v3 = strlen(siri::intelligence::TYPE_NUMBER[0]);
  v4 = v3;
  v5 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    if (v3 != v14)
    {
      goto LABEL_8;
    }

    if (v3 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    p_s1 = __s1;
  }

  else
  {
    if (v3 != v15)
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (!memcmp(p_s1, siri::intelligence::TYPE_NUMBER[0], v4))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence14VariableNumberENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

LABEL_8:
  v7 = strlen(siri::intelligence::TYPE_BOOLEAN[0]);
  v8 = v7;
  if ((v5 & 0x80000000) != 0)
  {
    if (v7 != v14)
    {
      goto LABEL_15;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v9 = __s1;
  }

  else
  {
    if (v7 != v5)
    {
      goto LABEL_15;
    }

    v9 = &__s1;
  }

  if (!memcmp(v9, siri::intelligence::TYPE_BOOLEAN[0], v8))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence15VariableBooleanENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

LABEL_15:
  v10 = strlen(siri::intelligence::TYPE_STRING[0]);
  v11 = v10;
  if ((v5 & 0x80000000) != 0)
  {
    if (v10 != v14)
    {
      goto LABEL_22;
    }

    if (v10 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = __s1;
  }

  else
  {
    if (v10 != v5)
    {
      goto LABEL_22;
    }

    v12 = &__s1;
  }

  if (!memcmp(v12, siri::intelligence::TYPE_STRING[0], v11))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence14VariableStringENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

LABEL_22:
  *a2 = 0;
  a2[1] = 0;
  if (v15 < 0)
  {
    operator delete(__s1);
  }
}

void sub_254D1DBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::Memory::GetVariables@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::Memory::GetOrCreateVariable(uint64_t a1@<X0>, std::string *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &v10);
  if (v10)
  {
    v7 = v11;
    *a4 = v10;
    a4[1] = v7;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_6_1);
    siri::intelligence::Memory::CreateVariable(a2, a3, a4);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_254D1DD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

uint64_t siri::intelligence::Memory::SetVariable(uint64_t a1, std::string *a2, char ***a3)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &v99);
  v7 = v99;
  if (!v99)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Attempt to set variable that does not exist: %s", v6, v9);
    goto LABEL_9;
  }

  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_40;
  }

  if (*(v99 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v99[4], v99[5]);
    v8 = *a3;
  }

  else
  {
    __str = *(v99 + 4);
  }

  if (*(v8 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v8[4], v8[5]);
  }

  else
  {
    v97 = *(v8 + 4);
  }

  v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v13 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
  v14 = SHIBYTE(v97.__r_.__value_.__r.__words[2]);
  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v97.__r_.__value_.__l.__size_;
  }

  if (size != v13)
  {
    v17 = 1;
    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v97;
  }

  else
  {
    v16 = v97.__r_.__value_.__r.__words[0];
  }

  v17 = memcmp(p_str, v16, size) != 0;
  if (v14 < 0)
  {
LABEL_29:
    operator delete(v97.__r_.__value_.__l.__data_);
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

LABEL_30:
  if (v11 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v17)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
LABEL_32:
    v18 = *a3;
    if (*(*a3 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v18[4], v18[5]);
    }

    else
    {
      __str = *(v18 + 4);
    }

    std::string::basic_string[abi:ne200100]<0>(&v97, siri::intelligence::TYPE_STRING[0]);
    IsEquivalentType = siri::intelligence::IsEquivalentType(&__str, &v97.__r_.__value_.__l.__data_);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (IsEquivalentType)
      {
LABEL_49:
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
        (*(**a3 + 7))(&__str);
        v10 = (*(*v7 + 2))(v7, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }

    else if (IsEquivalentType)
    {
      goto LABEL_49;
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = a2->__r_.__value_.__r.__words[0];
    }

    v27 = *a3;
    if (*(*a3 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v27[4], v27[5]);
    }

    else
    {
      __str = *(v27 + 4);
    }

    v36 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v37 = __str.__r_.__value_.__r.__words[0];
    if (*(v7 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v97, v7[4], v7[5]);
    }

    else
    {
      v97 = *(v7 + 4);
    }

    v38 = &__str;
    if (v36 < 0)
    {
      v38 = v37;
    }

    v39 = &v97;
    if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v97.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Attempt to set a value for variable '%s' with type '%s' instead of '%s'", v24, v26, v38, v39);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_41;
  }

  if (((*(**a3 + 6))() & 1) == 0)
  {
LABEL_40:
    (*(*v7 + 3))(v7);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
    v10 = 1;
    goto LABEL_41;
  }

  v19 = *a3;
  if (!*a3)
  {
    v21 = 0;
    goto LABEL_58;
  }

  v20 = **v19;
  if (!v21)
  {
LABEL_58:
    v22 = 0;
    goto LABEL_59;
  }

  v22 = a3[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_59:
  v28 = **v7;
  if (!v29)
  {
    v31 = 0;
    goto LABEL_66;
  }

  v30 = v29;
  v31 = v100;
  if (v100)
  {
    atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v21)
  {
LABEL_66:
    v32 = *a3;
    if (*a3)
    {
      v33 = **v32;
      if (v34)
      {
        v35 = a3[1];
        if (v35)
        {
          v88 = a3[1];
          atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
          goto LABEL_84;
        }
      }
    }

    else
    {
      v34 = 0;
    }

    v88 = 0;
LABEL_84:
    v40 = **v7;
    if (v41)
    {
      v42 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v34)
      {
        v41[9] = v34[9];
        v10 = 1;
        *(v41 + 64) = 1;
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
LABEL_190:
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        goto LABEL_194;
      }
    }

    else
    {
      v42 = 0;
    }

    v43 = *a3;
    if (*a3)
    {
      v44 = **v43;
      if (v45)
      {
        v46 = a3[1];
        if (v46)
        {
          v87 = a3[1];
          atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
          goto LABEL_100;
        }
      }
    }

    else
    {
      v45 = 0;
    }

    v87 = 0;
LABEL_100:
    v47 = **v7;
    if (v48)
    {
      v49 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v45)
      {
        v86 = v49;
        v48[66] = v45[66];
        v10 = 1;
        v48[64] = 1;
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
LABEL_186:
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (v87)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        goto LABEL_190;
      }
    }

    else
    {
      v49 = 0;
    }

    v86 = v49;
    v50 = *a3;
    if (*a3)
    {
      v51 = **v50;
      if (v52)
      {
        v53 = a3[1];
        if (v53)
        {
          v85 = a3[1];
          atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
          goto LABEL_112;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v85 = 0;
LABEL_112:
    v54 = **v7;
    if (v55)
    {
      v56 = v55;
      v57 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v52)
      {
        v84 = v57;
        memset(&__str, 0, sizeof(__str));
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&__str, v52[9], v52[10], (v52[10] - v52[9]) >> 4);
        if (&v56[3] != &__str)
        {
          std::vector<std::shared_ptr<siri::intelligence::Variable>>::__assign_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&v56[3], __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 4);
        }

        v10 = 1;
        v56[2].__r_.__value_.__s.__data_[16] = 1;
        v97.__r_.__value_.__r.__words[0] = &__str;
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v97);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
LABEL_182:
        if (v84)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v84);
        }

        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        goto LABEL_186;
      }
    }

    else
    {
      v57 = 0;
    }

    v84 = v57;
    v58 = *a3;
    if (*a3)
    {
      v59 = **v58;
      if (v60 && (v61 = a3[1]) != 0)
      {
        v83 = a3[1];
        atomic_fetch_add_explicit(v61 + 1, 1uLL, memory_order_relaxed);
      }

      else
      {
        v83 = 0;
      }
    }

    else
    {
      v83 = 0;
      v60 = 0;
    }

    v62 = **v7;
    v64 = v100;
    if (v63)
    {
      v65 = v63;
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v66 = v64;
      if (v60)
      {
        siri::intelligence::VariableDictionary::GetValues(v60, &__str);
        siri::intelligence::VariableDictionary::SetValues(v65, &__str);
        v97.__r_.__value_.__r.__words[0] = &__str;
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v97);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
        v10 = 1;
        v67 = v64;
        v68 = v83;
LABEL_178:
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        goto LABEL_182;
      }
    }

    else
    {
      v66 = 0;
    }

    v69 = v66;
    std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableReference,siri::intelligence::Variable>(&v95, *a3, a3[1]);
    std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableReference,siri::intelligence::Variable>(&v93, v7, v64);
    v70 = v93;
    if (v93 && v95)
    {
      if (*(v95 + 95) < 0)
      {
        v68 = v83;
        std::string::__init_copy_ctor_external(&__str, *(v95 + 72), *(v95 + 80));
      }

      else
      {
        __str = *(v95 + 72);
        v68 = v83;
      }

      std::string::operator=(v70 + 3, &__str);
      v70[2].__r_.__value_.__s.__data_[16] = 1;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      v10 = 1;
    }

    else
    {
      std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableFunction,siri::intelligence::Variable>(&v91, *a3, a3[1]);
      std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableFunction,siri::intelligence::Variable>(&v89, v7, v64);
      v72 = v89;
      if (v89 && (v73 = v91) != 0)
      {
        if (*(v91 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *(v91 + 72), *(v91 + 80));
        }

        else
        {
          __str = *(v91 + 72);
        }

        std::string::operator=(v72 + 3, &__str);
        v72[2].__r_.__value_.__s.__data_[16] = 1;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v80 = *(v73 + 96);
        v81 = *(v73 + 104);
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v82 = v72[4].__r_.__value_.__l.__size_;
        v72[4].__r_.__value_.__r.__words[0] = v80;
        v72[4].__r_.__value_.__l.__size_ = v81;
        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        v68 = v83;
        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
        v10 = 1;
      }

      else
      {
        v74 = *a3;
        if (*(*a3 + 55) < 0)
        {
          v68 = v83;
          std::string::__init_copy_ctor_external(&__str, v74[4], v74[5]);
          v74 = *a3;
        }

        else
        {
          __str = *(v74 + 4);
          v68 = v83;
        }

        v75 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        v76 = __str.__r_.__value_.__r.__words[0];
        if (*(v74 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v97, v74[1], v74[2]);
        }

        else
        {
          v77 = *(v74 + 1);
          v97.__r_.__value_.__r.__words[2] = v74[3];
          *&v97.__r_.__value_.__l.__data_ = v77;
        }

        v78 = &__str;
        if (v75 < 0)
        {
          v78 = v76;
        }

        v79 = &v97;
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v79 = v97.__r_.__value_.__r.__words[0];
        }

        siri::intelligence::Log::Error("Unknown type (%s) found when setting new variable value: %s", v71, v78, v79);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }
    }

    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    v67 = v69;
    goto LABEL_178;
  }

  if (v21[95] < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(v21 + 9), *(v21 + 10));
  }

  else
  {
    __str = *(v21 + 3);
  }

  std::string::operator=(v30 + 3, &__str);
  v30[2].__r_.__value_.__s.__data_[16] = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
  v10 = 1;
LABEL_194:
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

LABEL_41:
  if (v100)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v100);
  }

  return v10;
}

void sub_254D1E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v38 = *(v36 - 96);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableReference,siri::intelligence::Variable>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableFunction,siri::intelligence::Variable>(void *result, char **lpsrc, uint64_t a3)
{
  v3 = result;
  {
    *v3 = result;
    v3[1] = a3;
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

BOOL siri::intelligence::Memory::HasVariable(uint64_t a1, std::string *a2)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &v4);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

void siri::intelligence::Memory::SetGlobalVariables(uint64_t a1, void *a2)
{
  v3 = (a1 + 24);
  v4 = a1 + 16;
  std::__tree<std::string>::destroy(a1 + 16, *(a1 + 24));
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, &str_6_1);
      siri::intelligence::Memory::CreateVariable((v6 + 4), v6 + 56, &v13);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v4, v6 + 4);
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }
}

void sub_254D1EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::IsGlobalVariable(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    while (1)
    {
      if (*(v2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v2[4], v2[5]);
      }

      else
      {
        __str = *(v2 + 4);
      }

      v5 = *(a2 + 23);
      if (v5 >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        v6 = a2[1];
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (v6 == size && (v5 >= 0 ? (v9 = a2) : (v9 = *a2), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), !memcmp(v9, p_str, v6)))
      {
        v13 = 1;
        if (v8 < 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100](__p, v6 + 1);
        if (v19 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v6)
        {
          if (*(a2 + 23) >= 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = *a2;
          }

          memmove(v11, v12, v6);
        }

        *(v11 + v6) = 46;
        v13 = siri::intelligence::StringStartsWith(&__str, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
        {
LABEL_29:
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (v13)
      {
        return 1;
      }

      v14 = v2[1];
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
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
      if (v15 == v3)
      {
        return v13;
      }
    }
  }

  return 0;
}

void sub_254D1EF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t siri::intelligence::Memory::IsUnsupportedGlobalVariable(uint64_t a1, const void **a2)
{
  if (siri::intelligence::Memory::IsGlobalVariable(a1, a2))
  {
    return 0;
  }

  siri::intelligence::ParseVariableComponents(a2, v20);
  if ((0x6DB6DB6DB6DB6DB7 * ((v20[1] - v20[0]) >> 3)) < 2 || (v5 = *(a1 + 16), v6 = (a1 + 24), v5 == v6))
  {
LABEL_30:
    v4 = 0;
  }

  else
  {
    while (1)
    {
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, v5[4], v5[5]);
      }

      else
      {
        v19 = *(v5 + 4);
      }

      siri::intelligence::ParseVariableComponents(&v19, v18);
      if ((0x6DB6DB6DB6DB6DB7 * ((v18[1] - v18[0]) >> 3)) >= 2)
      {
        v7 = *(v18[0] + 23);
        if (v7 >= 0)
        {
          v8 = *(v18[0] + 23);
        }

        else
        {
          v8 = *(v18[0] + 8);
        }

        v9 = *(v20[0] + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v20[0] + 8);
        }

        if (v8 == v9)
        {
          v11 = v7 >= 0 ? v18[0] : *v18[0];
          v12 = *v20[0];
          v13 = v10 >= 0 ? v20[0] : *v20[0];
          if (!memcmp(v11, v13, v8))
          {
            break;
          }
        }
      }

      v21 = v18;
      std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v21);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

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
      if (v15 == v6)
      {
        goto LABEL_30;
      }
    }

    v21 = v18;
    std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v21);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    v4 = 1;
  }

  v19.__r_.__value_.__r.__words[0] = v20;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v19);
  return v4;
}

void sub_254D1F254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  __p = &a20;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::Memory::SetVariableFromString(uint64_t a1, std::string *a2, uint64_t a3)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &v9);
  v6 = v9;
  if (v9)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
    v7 = (*(*v6 + 2))(v6, a3);
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_254D1F328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::GetVariableAsStringVector(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  siri::intelligence::Memory::GetVariable(a1, a2, &v39);
  v6 = v39;
  if (!v39)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Non-existing variable referenced: '%s'", v5, v7);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_43;
  }

  if (*(v39 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, v39[4], v39[5]);
  }

  else
  {
    v38 = *(v39 + 4);
  }

  if (!siri::intelligence::IsPrimitiveType(&v38))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
    IsEquivalentType = siri::intelligence::IsEquivalentType(&v38, &__p.__first_);
    v10 = IsEquivalentType;
    if (SHIBYTE(__p.__end_) < 0)
    {
      operator delete(__p.__first_);
      if (!v10)
      {
LABEL_38:
        v31 = &v38;
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v38.__r_.__value_.__r.__words[0];
        }

        siri::intelligence::Log::Error("Unsupported variable type '%s'", v9, v31);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        goto LABEL_41;
      }
    }

    else if (!IsEquivalentType)
    {
      goto LABEL_38;
    }

    v11 = **v6;
    if (v12)
    {
      v13 = v12;
      v14 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v14;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      if (v12[10] != v12[9])
      {
        v15 = 0;
        do
        {
          siri::intelligence::VariableArray::GetItem(v13, v15, &v34);
          (*(*v34 + 56))(v36);
          v16 = *(a3 + 8);
          v17 = *(a3 + 16);
          if (v16 >= v17)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
            }

            v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
            if (2 * v21 > v20)
            {
              v20 = 2 * v21;
            }

            if (v21 >= 0x555555555555555)
            {
              v22 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v22 = v20;
            }

            __p.__end_cap_.__value_ = a3;
            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v22);
            }

            v23 = 24 * v19;
            v24 = *v36;
            *(v23 + 16) = v37;
            *v23 = v24;
            v36[1] = 0;
            v37 = 0;
            v36[0] = 0;
            v25 = 24 * v19 + 24;
            v26 = *(a3 + 8) - *a3;
            v27 = 24 * v19 - v26;
            memcpy((v23 - v26), *a3, v26);
            v28 = *a3;
            *a3 = v27;
            *(a3 + 8) = v25;
            v29 = *(a3 + 16);
            *(a3 + 16) = 0;
            __p.__end_ = v28;
            __p.__end_cap_.__value_ = v29;
            __p.__first_ = v28;
            __p.__begin_ = v28;
            std::__split_buffer<std::string>::~__split_buffer(&__p);
            v30 = SHIBYTE(v37);
            *(a3 + 8) = v25;
            if (v30 < 0)
            {
              operator delete(v36[0]);
            }
          }

          else
          {
            v18 = *v36;
            *(v16 + 16) = v37;
            *v16 = v18;
            v36[1] = 0;
            v37 = 0;
            v36[0] = 0;
            *(a3 + 8) = v16 + 24;
          }

          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          ++v15;
        }

        while (v15 < (*(v13 + 80) - *(v13 + 72)) >> 4);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      goto LABEL_41;
    }

    goto LABEL_38;
  }

  (*(*v6 + 7))(&__p, v6);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a3, &__p, &__p.__end_cap_, 1uLL);
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

LABEL_41:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_43:
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_254D1F708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::Memory::GetNumberValue(uint64_t a1, std::string *a2)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
  v2 = 0.0;
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v2 = v4[9];
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      else
      {
        v2 = v4[9];
      }
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v2;
}

uint64_t siri::intelligence::Memory::SetNumberValue(uint64_t a1, std::string *a2, double a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_NUMBER[0]);
  siri::intelligence::Memory::GetOrCreateVariable(a1, a2, __p, &lpsrc);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (lpsrc)
  {
    v7 = **lpsrc;
    if (v8)
    {
      v9 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8[9] = a3;
      *(v8 + 64) = 1;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      if (!v9)
      {
        return 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v10 = 1;
      goto LABEL_13;
    }
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Error("Setting number that is not explicitly defined: %s", v6, v11);
  v10 = 0;
  result = 0;
  v9 = v16;
  if (v16)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    return v10;
  }

  return result;
}

void sub_254D1F9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::GetBooleanValue(uint64_t a1, std::string *a2)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
  {
    v4 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v3[66];
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v5 = v3[66];
    }
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5 & 1;
}

uint64_t siri::intelligence::Memory::SetBooleanValue(uint64_t a1, std::string *a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_BOOLEAN[0]);
  siri::intelligence::Memory::GetOrCreateVariable(a1, a2, __p, &lpsrc);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (lpsrc)
  {
    v7 = **lpsrc;
    if (v8)
    {
      v9 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8[66] = a3;
      v8[64] = 1;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      if (!v9)
      {
        return 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v10 = 1;
      goto LABEL_13;
    }
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Error("Setting BOOLean that is not explicitly defined: %s", v6, v11);
  v10 = 0;
  result = 0;
  v9 = v16;
  if (v16)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    return v10;
  }

  return result;
}

void sub_254D1FBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::GetStringValue(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &str_6_1);
    v6 = v9;
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5[95] < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v5 + 9), *(v5 + 10));
  }

  else
  {
    v7 = *(v5 + 72);
    a3->__r_.__value_.__r.__words[2] = *(v5 + 11);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_12:

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D1FD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::SetStringValue(uint64_t a1, std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_STRING[0]);
  siri::intelligence::Memory::GetOrCreateVariable(a1, a2, __p, &lpsrc);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (lpsrc)
  {
    v7 = **lpsrc;
    if (v8)
    {
      v9 = v8;
      v10 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::operator=(v8 + 3, a3);
      v9[2].__r_.__value_.__s.__data_[16] = 1;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      if (!v10)
      {
        return 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v11 = 1;
      goto LABEL_13;
    }
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2->__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Error("Setting string that is not explicitly defined: %s", v6, v12);
  v11 = 0;
  result = 0;
  v10 = v17;
  if (v17)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    return v11;
  }

  return result;
}

void sub_254D1FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::GetArrayValue(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
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

  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v5)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(a3, v5[9], v5[10], (v5[10] - v5[9]) >> 4);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v6)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_254D20020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::SetArrayValue(uint64_t a1, std::string *a2, uint64_t **a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_ARRAY[0]);
  siri::intelligence::Memory::GetOrCreateVariable(a1, a2, __p, &lpsrc);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (lpsrc)
  {
    v7 = **lpsrc;
    if (v8)
    {
      v9 = v8;
      v10 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 4))(v8);
      v11 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        do
        {
          v13 = *v11;
          v14 = v11[1];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            *(&v18 + 1) = v14;
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            *(&v18 + 1) = 0;
          }

          *&v18 = v13;
          if (v13)
          {
            std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100](v9 + 9, &v18);
            *(v9 + 64) = 1;
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          v11 += 2;
        }

        while (v11 != v12);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      if (!v10)
      {
        return 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v15 = 1;
      goto LABEL_24;
    }
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Error("Setting array that is not explicitly defined: %s", v6, v16);
  v15 = 0;
  result = 0;
  v10 = v22;
  if (v22)
  {
LABEL_24:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    return v15;
  }

  return result;
}

void sub_254D2021C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::GetDictionaryValue(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
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

  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v5)
  {
    siri::intelligence::VariableDictionary::GetValues(v5, a3);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v6)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_254D20384(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::SetDictionaryValue(uint64_t a1, std::string *a2, uint64_t **a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, siri::intelligence::TYPE_DICTIONARY[0]);
  siri::intelligence::Memory::GetOrCreateVariable(a1, a2, __p, &lpsrc);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (lpsrc)
  {
    v7 = **lpsrc;
    if (v8)
    {
      v9 = v8;
      v10 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 32))(v8);
      v11 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        do
        {
          v13 = *v11;
          v14 = v11[1];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18[0] = v13;
          v18[1] = v14;
          siri::intelligence::VariableDictionary::AddProperty(v9, v18);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          v11 += 2;
        }

        while (v11 != v12);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
      if (!v10)
      {
        return 1;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v15 = 1;
      goto LABEL_19;
    }
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0];
  }

  siri::intelligence::Log::Error("Setting array that is not explicitly defined: %s", v6, v16);
  v15 = 0;
  result = 0;
  v10 = v22;
  if (v22)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    return v15;
  }

  return result;
}

void sub_254D20568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::Memory::PushBackArrayValue(uint64_t a1, std::string *a2, uint64_t a3)
{
  if (!*a3)
  {
    return 0;
  }

  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
  if (lpsrc)
  {
    v6 = **lpsrc;
    if (v7)
    {
      v8 = *(&lpsrc + 1);
      if (*(&lpsrc + 1))
      {
        atomic_fetch_add_explicit((*(&lpsrc + 1) + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_9:
  if (*(&lpsrc + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&lpsrc + 1));
  }

  if (!v7)
  {
    v9 = 0;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_21;
  }

  (*(**a3 + 88))(&lpsrc);
  v9 = lpsrc != 0;
  if (lpsrc)
  {
    v11 = lpsrc;
    if (*(&lpsrc + 1))
    {
      atomic_fetch_add_explicit((*(&lpsrc + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100](v7 + 9, &v11);
    *(v7 + 64) = 1;
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
  }

  if (*(&lpsrc + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&lpsrc + 1));
  }

  if (v8)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v9;
}

void sub_254D20748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Memory::PopBackArrayValue(uint64_t a1, std::string *a2, uint64_t a3)
{
  siri::intelligence::Memory::GetVariable(a1, a2, &lpsrc);
  if (!lpsrc)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = **lpsrc;
  if (!v7)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!v7 || *(v7 + 10) == *(v7 + 9))
  {
    v11 = 0;
    if (!v8)
    {
      return v11;
    }

LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    return v11;
  }

  siri::intelligence::VariableArray::PopBack(v7, &lpsrc);
  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    v10 = v15;
    v13[0] = lpsrc;
    v13[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::intelligence::Memory::SetVariable(a1, a3, v13);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 48, &a2->__r_.__value_.__l.__data_);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v11 = 1;
  if (v8)
  {
    goto LABEL_23;
  }

  return v11;
}

void sub_254D208F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::ExpandVariables(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
  }

  else
  {
    v18 = *a3;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (siri::intelligence::Entity::FindNext(&v18))
  {
    siri::intelligence::Entity::GetName(&v18, &__p);
    memset(&v16, 0, sizeof(v16));
    siri::intelligence::Memory::GetVariable(a1, &__p, &v14);
    v5 = v14;
    if (!v14)
    {
      goto LABEL_36;
    }

    siri::intelligence::Memory::GetVariableAsStringVector(a1, &__p, &v13);
    std::vector<std::string>::__vdeallocate(&v16);
    v16 = v13;
    memset(&v13, 0, sizeof(v13));
    __s1.__r_.__value_.__r.__words[0] = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s1);
    if (*(v5 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v5[4], v5[5]);
    }

    else
    {
      v13 = *(v5 + 4);
    }

    v6 = strlen(siri::intelligence::TYPE_NUMBER[0]);
    v7 = v6;
    v8 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v6 != v13.__r_.__value_.__l.__size_)
      {
        goto LABEL_20;
      }

      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v13.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v6 != SHIBYTE(v13.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_20;
      }

      v9 = &v13;
    }

    if (!memcmp(v9, siri::intelligence::TYPE_NUMBER[0], v7))
    {
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_36;
      }

LABEL_35:
      operator delete(v13.__r_.__value_.__l.__data_);
      goto LABEL_36;
    }

LABEL_20:
    if (*(v5 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__s1, v5[4], v5[5]);
    }

    else
    {
      __s1 = *(v5 + 4);
    }

    v10 = strlen(siri::intelligence::TYPE_BOOLEAN[0]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v10 == __s1.__r_.__value_.__l.__size_)
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v11 = __s1.__r_.__value_.__r.__words[0];
        memcmp(__s1.__r_.__value_.__l.__data_, siri::intelligence::TYPE_BOOLEAN[0], v10);
      }

      else
      {
        v11 = __s1.__r_.__value_.__r.__words[0];
      }

      operator delete(v11);
    }

    else if (v10 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      memcmp(&__s1, siri::intelligence::TYPE_BOOLEAN[0], v10);
    }

    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }

LABEL_36:
    siri::intelligence::Entity::Expand(&v18, &v16, &v13);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v13.__r_.__value_.__r.__words[0] = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_254D20C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 + 23) < 0)
  {
    operator delete(*v36);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::ValidateVariableReference(uint64_t *a1, uint64_t a2, const void **a3, siri::intelligence::ValidationResults *a4, int a5)
{
  if ((siri::intelligence::IsValidCompoundVariableName(a2) & 1) == 0)
  {
    if (*(a3 + 23) >= 0)
    {
      v17 = *(a3 + 23);
    }

    else
    {
      v17 = a3[1];
    }

    std::string::basic_string[abi:ne200100](&v139, v17 + 43);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v139;
    }

    else
    {
      v18 = v139.__r_.__value_.__r.__words[0];
    }

    if (v17)
    {
      if (*(a3 + 23) >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      memmove(v18, v19, v17);
    }

    strcpy(v18 + v17, "variable reference has invalid characters: ");
    v20 = *(a2 + 23);
    if (v20 >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    if (v20 >= 0)
    {
      v22 = *(a2 + 23);
    }

    else
    {
      v22 = *(a2 + 8);
    }

    v23 = std::string::append(&v139, v21, v22);
    v140 = *v23;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::ValidationResults::AddError(a4, siri::intelligence::CODE_INVALID_NAME, &v140, a5);
    goto LABEL_39;
  }

  if (siri::intelligence::Memory::IsUnsupportedGlobalVariable(a1, a2))
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = a3[1];
    }

    std::string::basic_string[abi:ne200100](&v139, v10 + 40);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v139;
    }

    else
    {
      v11 = v139.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      memmove(v11, v12, v10);
    }

    strcpy(v11 + v10, "reference to undefined global variable: ");
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = std::string::append(&v139, v14, v15);
    v140 = *v16;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::ValidationResults::AddWarning(a4, siri::intelligence::CODE_READ_ONLY, &v140, a5);
LABEL_39:
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    return;
  }

  v25 = *a1;
  v24 = a1[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v132 = v24;
  std::string::basic_string[abi:ne200100]<0>(&v140, siri::intelligence::TYPE_DICTIONARY[0]);
  v129 = a4;
  v130 = a5;
  siri::intelligence::ParseVariableComponents(a2, &v139);
  v26 = v139.__r_.__value_.__r.__words[0];
  if (v139.__r_.__value_.__l.__size_ == v139.__r_.__value_.__r.__words[0])
  {
    goto LABEL_267;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0x6DB6DB6DB6DB6DB7 * ((v139.__r_.__value_.__l.__size_ - v139.__r_.__value_.__r.__words[0]) >> 3);
  v131 = v25 + 80;
  while (1)
  {
    v30 = v29 - 1;
    v31 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
    v32 = v31;
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v31 == SHIBYTE(v140.__r_.__value_.__r.__words[2]))
    {
      v33 = &v140;
      goto LABEL_53;
    }

LABEL_54:
    if (!siri::intelligence::DialogTypes::IsDialogTypeInput(&v140, (v26 + v27)))
    {
      if (*(a3 + 23) >= 0)
      {
        v54 = *(a3 + 23);
      }

      else
      {
        v54 = a3[1];
      }

      std::string::basic_string[abi:ne200100](&v135, v54 + 32);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &v135;
      }

      else
      {
        v55 = v135.__r_.__value_.__r.__words[0];
      }

      if (v54)
      {
        if (*(a3 + 23) >= 0)
        {
          v56 = a3;
        }

        else
        {
          v56 = *a3;
        }

        memmove(v55, v56, v54);
      }

      strcpy(v55 + v54, "refers to a non-existing input '");
      v57 = *(v26 + v27 + 23);
      v58 = *(v26 + v27 + 8);
      if (v57 >= 0)
      {
        v59 = (v26 + v27);
      }

      else
      {
        v59 = *(v26 + v27);
      }

      if (v57 >= 0)
      {
        v60 = *(v26 + v27 + 23);
      }

      else
      {
        v60 = *(v26 + v27 + 8);
      }

      v61 = std::string::append(&v135, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(&v136, "' on type ");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v140;
      }

      else
      {
        v65 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v140.__r_.__value_.__l.__size_;
      }

      v67 = std::string::append(&v137, v65, size);
      __str = *v67;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::ValidationResults::AddError(v129, siri::intelligence::CODE_UNDEF_VAR, &__str, a5);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_267;
      }

      v68 = v135.__r_.__value_.__r.__words[0];
      goto LABEL_194;
    }

    siri::intelligence::DialogTypes::GetDialogTypeInputType(&v140, (v26 + v27), &__str);
    if (*(v26 + v27 + 48) == 1 && !siri::intelligence::StringEndsWith(&__str, siri::intelligence::ARRAY_SUFFIX))
    {
      if (*(a3 + 23) >= 0)
      {
        v69 = *(a3 + 23);
      }

      else
      {
        v69 = a3[1];
      }

      std::string::basic_string[abi:ne200100](&v134, v69 + 58);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = &v134;
      }

      else
      {
        v70 = v134.__r_.__value_.__r.__words[0];
      }

      if (v69)
      {
        if (*(a3 + 23) >= 0)
        {
          v71 = a3;
        }

        else
        {
          v71 = *a3;
        }

        memmove(v70, v71, v69);
      }

      strcpy(v70 + v69, "attempts to lookup an array element for a non-array type '");
      v72 = *(v26 + v27 + 23);
      v73 = *(v26 + v27 + 8);
      if (v72 >= 0)
      {
        v74 = (v26 + v27);
      }

      else
      {
        v74 = *(v26 + v27);
      }

      if (v72 >= 0)
      {
        v75 = *(v26 + v27 + 23);
      }

      else
      {
        v75 = *(v26 + v27 + 8);
      }

      v76 = std::string::append(&v134, v74, v75);
      v77 = *&v76->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      v78 = std::string::append(&v135, "' on type ");
      v79 = a5;
      v80 = v129;
      v81 = *&v78->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v81;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = &v140;
      }

      else
      {
        v82 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v83 = v140.__r_.__value_.__l.__size_;
      }

LABEL_184:
      v95 = std::string::append(&v136, v82, v83);
      v137 = *v95;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::ValidationResults::AddError(v80, siri::intelligence::CODE_TYPE_MISMATCH, &v137, v79);
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_267;
      }

      v68 = __str.__r_.__value_.__r.__words[0];
LABEL_194:
      operator delete(v68);
      goto LABEL_267;
    }

    if (v28 != v30)
    {
      v34 = *(v26 + v27 + 48);
      if (v34 != siri::intelligence::StringEndsWith(&__str, siri::intelligence::ARRAY_SUFFIX))
      {
        if (*(a3 + 23) >= 0)
        {
          v84 = *(a3 + 23);
        }

        else
        {
          v84 = a3[1];
        }

        std::string::basic_string[abi:ne200100](&v134, v84 + 57);
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v134;
        }

        else
        {
          v85 = v134.__r_.__value_.__r.__words[0];
        }

        if (v84)
        {
          if (*(a3 + 23) >= 0)
          {
            v86 = a3;
          }

          else
          {
            v86 = *a3;
          }

          memmove(v85, v86, v84);
        }

        strcpy(v85 + v84, "does not have an array element lookup for an array type '");
        v87 = *(v26 + v27 + 23);
        v88 = *(v26 + v27 + 8);
        if (v87 >= 0)
        {
          v89 = (v26 + v27);
        }

        else
        {
          v89 = *(v26 + v27);
        }

        if (v87 >= 0)
        {
          v90 = *(v26 + v27 + 23);
        }

        else
        {
          v90 = *(v26 + v27 + 8);
        }

        v91 = std::string::append(&v134, v89, v90);
        v92 = *&v91->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        v93 = std::string::append(&v135, "' on type ");
        v79 = a5;
        v80 = v129;
        v94 = *&v93->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v94;
        v93->__r_.__value_.__l.__size_ = 0;
        v93->__r_.__value_.__r.__words[2] = 0;
        v93->__r_.__value_.__r.__words[0] = 0;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = &v140;
        }

        else
        {
          v82 = v140.__r_.__value_.__r.__words[0];
        }

        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v83 = v140.__r_.__value_.__l.__size_;
        }

        goto LABEL_184;
      }
    }

    std::string::operator=(&v140, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_105:
    ++v28;
    v26 = v139.__r_.__value_.__r.__words[0];
    v29 = 0x6DB6DB6DB6DB6DB7 * ((v139.__r_.__value_.__l.__size_ - v139.__r_.__value_.__r.__words[0]) >> 3);
    v27 += 56;
    if (v28 >= v29)
    {
      goto LABEL_267;
    }
  }

  if (v31 != v140.__r_.__value_.__l.__size_)
  {
    goto LABEL_54;
  }

  if (v31 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v140.__r_.__value_.__r.__words[0];
LABEL_53:
  if (memcmp(v33, siri::intelligence::TYPE_DICTIONARY[0], v32))
  {
    goto LABEL_54;
  }

  v35 = std::__tree<std::string>::find<std::string>(v25 + 72, (v26 + v27));
  if (v131 != v35)
  {
    v36 = *(v35 + 56);
    v37 = *(v35 + 64);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v36)
    {
      goto LABEL_196;
    }

    v133 = v37;
    if (*(v36 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v36 + 32), *(v36 + 40));
    }

    else
    {
      __str = *(v36 + 32);
    }

    if (siri::intelligence::IsPrimitiveType(&__str))
    {
      if (v28 != v30)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("variable reference has components after a primitive type: ", a3, &v136.__r_.__value_.__l.__data_);
        v105 = *(v26 + v27 + 23);
        if (v105 >= 0)
        {
          v106 = (v26 + v27);
        }

        else
        {
          v106 = *(v26 + v27);
        }

        if (v105 >= 0)
        {
          v107 = *(v26 + v27 + 23);
        }

        else
        {
          v107 = *(v26 + v27 + 8);
        }

        v108 = std::string::append(&v136, v106, v107);
        v137 = *v108;
        v108->__r_.__value_.__l.__size_ = 0;
        v108->__r_.__value_.__r.__words[2] = 0;
        v108->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::ValidationResults::AddError(v129, siri::intelligence::CODE_UNDEF_VAR, &v137, a5);
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v109 = v136.__r_.__value_.__r.__words[0];
          goto LABEL_262;
        }
      }

LABEL_263:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v104 = v133;
      if (v133)
      {
LABEL_266:
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      goto LABEL_267;
    }

    v38 = v25;
    v39 = *(v26 + v27 + 48);
    v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (v39 == 1)
    {
      v41 = strlen(siri::intelligence::TYPE_ARRAY[0]);
      v42 = v41;
      if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (v41 != __str.__r_.__value_.__l.__size_)
        {
          goto LABEL_230;
        }

        if (v41 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        p_str = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v41 != HIBYTE(__str.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_230;
        }

        p_str = &__str;
      }

      if (memcmp(p_str, siri::intelligence::TYPE_ARRAY[0], v42))
      {
LABEL_230:
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("attempts to lookup an array element for a non-array type '", a3, &v134.__r_.__value_.__l.__data_);
        v110 = *(v26 + v27 + 23);
        if (v110 >= 0)
        {
          v111 = (v26 + v27);
        }

        else
        {
          v111 = *(v26 + v27);
        }

        if (v110 >= 0)
        {
          v112 = *(v26 + v27 + 23);
        }

        else
        {
          v112 = *(v26 + v27 + 8);
        }

        v113 = std::string::append(&v134, v111, v112);
        v114 = *&v113->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v114;
        v113->__r_.__value_.__l.__size_ = 0;
        v113->__r_.__value_.__r.__words[2] = 0;
        v113->__r_.__value_.__r.__words[0] = 0;
        v115 = std::string::append(&v135, "' on type ");
        v116 = a5;
        v117 = v129;
        v118 = *&v115->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v118;
        v115->__r_.__value_.__l.__size_ = 0;
        v115->__r_.__value_.__r.__words[2] = 0;
        v115->__r_.__value_.__r.__words[0] = 0;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = &v140;
        }

        else
        {
          v119 = v140.__r_.__value_.__r.__words[0];
        }

        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v120 = v140.__r_.__value_.__l.__size_;
        }

LABEL_254:
        v128 = std::string::append(&v136, v119, v120);
        v137 = *v128;
        v128->__r_.__value_.__l.__size_ = 0;
        v128->__r_.__value_.__r.__words[2] = 0;
        v128->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::ValidationResults::AddError(v117, siri::intelligence::CODE_TYPE_MISMATCH, &v137, v116);
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          v109 = v134.__r_.__value_.__r.__words[0];
LABEL_262:
          operator delete(v109);
        }

        goto LABEL_263;
      }
    }

    if (v28 != v30)
    {
      v44 = strlen(siri::intelligence::TYPE_ARRAY[0]);
      v45 = v44;
      if ((v40 & 0x80) != 0)
      {
        if (v44 != __str.__r_.__value_.__l.__size_)
        {
          goto LABEL_85;
        }

        if (v44 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v46 = __str.__r_.__value_.__r.__words[0];
LABEL_84:
        v47 = memcmp(v46, siri::intelligence::TYPE_ARRAY[0], v45) == 0;
      }

      else
      {
        if (v44 == v40)
        {
          v46 = &__str;
          goto LABEL_84;
        }

LABEL_85:
        v47 = 0;
      }

      if (v39 != v47)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("does not have an array element lookup for an array type '", a3, &v134.__r_.__value_.__l.__data_);
        v121 = *(v26 + v27 + 23);
        if (v121 >= 0)
        {
          v122 = (v26 + v27);
        }

        else
        {
          v122 = *(v26 + v27);
        }

        if (v121 >= 0)
        {
          v123 = *(v26 + v27 + 23);
        }

        else
        {
          v123 = *(v26 + v27 + 8);
        }

        v124 = std::string::append(&v134, v122, v123);
        v125 = *&v124->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v125;
        v124->__r_.__value_.__l.__size_ = 0;
        v124->__r_.__value_.__r.__words[2] = 0;
        v124->__r_.__value_.__r.__words[0] = 0;
        v126 = std::string::append(&v135, "' on type ");
        v116 = a5;
        v117 = v129;
        v127 = *&v126->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v127;
        v126->__r_.__value_.__l.__size_ = 0;
        v126->__r_.__value_.__r.__words[2] = 0;
        v126->__r_.__value_.__r.__words[0] = 0;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = &v140;
        }

        else
        {
          v119 = v140.__r_.__value_.__r.__words[0];
        }

        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v120 = v140.__r_.__value_.__l.__size_;
        }

        goto LABEL_254;
      }
    }

    v48 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
    v49 = v48;
    if ((v40 & 0x80) != 0)
    {
      v25 = v38;
      if (v48 == __str.__r_.__value_.__l.__size_)
      {
        if (v48 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v50 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_93;
      }
    }

    else
    {
      v25 = v38;
      if (v48 == v40)
      {
        v50 = &__str;
LABEL_93:
        if (!memcmp(v50, siri::intelligence::TYPE_DICTIONARY[0], v49))
        {
          goto LABEL_263;
        }
      }
    }

    v51 = strlen(siri::intelligence::TYPE_ARRAY[0]);
    v52 = v51;
    if ((v40 & 0x80) != 0)
    {
      if (v51 == __str.__r_.__value_.__l.__size_)
      {
        if (v51 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v53 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_100;
      }
    }

    else if (v51 == v40)
    {
      v53 = &__str;
LABEL_100:
      if (!memcmp(v53, siri::intelligence::TYPE_ARRAY[0], v52))
      {
        goto LABEL_263;
      }
    }

    std::string::operator=(&v140, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v133)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v133);
    }

    goto LABEL_105;
  }

  v37 = 0;
LABEL_196:
  if (*(a3 + 23) >= 0)
  {
    v96 = *(a3 + 23);
  }

  else
  {
    v96 = a3[1];
  }

  std::string::basic_string[abi:ne200100](&v137, v96 + 33);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = &v137;
  }

  else
  {
    v97 = v137.__r_.__value_.__r.__words[0];
  }

  if (v96)
  {
    if (*(a3 + 23) >= 0)
    {
      v98 = a3;
    }

    else
    {
      v98 = *a3;
    }

    memmove(v97, v98, v96);
  }

  strcpy(v97 + v96, "reference to undefined variable: ");
  v99 = *(v26 + v27 + 23);
  v100 = *(v26 + v27 + 8);
  if (v99 >= 0)
  {
    v101 = (v26 + v27);
  }

  else
  {
    v101 = *(v26 + v27);
  }

  if (v99 >= 0)
  {
    v102 = *(v26 + v27 + 23);
  }

  else
  {
    v102 = *(v26 + v27 + 8);
  }

  v103 = std::string::append(&v137, v101, v102);
  __str = *v103;
  v103->__r_.__value_.__l.__size_ = 0;
  v103->__r_.__value_.__r.__words[2] = 0;
  v103->__r_.__value_.__r.__words[0] = 0;
  siri::intelligence::ValidationResults::AddError(v129, siri::intelligence::CODE_UNDEF_VAR, &__str, v130);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    v104 = v37;
    goto LABEL_266;
  }

LABEL_267:
  __str.__r_.__value_.__r.__words[0] = &v139;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (v132)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v132);
  }
}

void sub_254D21ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a41 = (v46 - 152);
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a41);
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Memory::ValidateVariableReference(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, siri::intelligence::ValidationResults *a5, uint64_t a6)
{
  v7 = *a2;
  if (*a2)
  {
    v13 = **v7;
    if (v14)
    {
      v15 = *(a2 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = v15;
      std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v41, v14 + 9);
      v16 = v41;
      if (v41 != v42)
      {
        do
        {
          if (!siri::intelligence::DialogTypes::IsDialogTypeInput(a3, v16 + 4))
          {
            if (*(a4 + 23) >= 0)
            {
              v17 = *(a4 + 23);
            }

            else
            {
              v17 = a4[1];
            }

            std::string::basic_string[abi:ne200100](&v37, v17 + 32);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v37;
            }

            else
            {
              v18 = v37.__r_.__value_.__r.__words[0];
            }

            if (v17)
            {
              if (*(a4 + 23) >= 0)
              {
                v19 = a4;
              }

              else
              {
                v19 = *a4;
              }

              memmove(v18, v19, v17);
            }

            strcpy(v18 + v17, "refers to a non-existing input '");
            v20 = *(v16 + 55);
            if (v20 >= 0)
            {
              v21 = (v16 + 4);
            }

            else
            {
              v21 = v16[4];
            }

            if (v20 >= 0)
            {
              v22 = *(v16 + 55);
            }

            else
            {
              v22 = v16[5];
            }

            v23 = std::string::append(&v37, v21, v22);
            v24 = *&v23->__r_.__value_.__l.__data_;
            v38.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v38.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v25 = std::string::append(&v38, "' on type ");
            v26 = *&v25->__r_.__value_.__l.__data_;
            v39.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v39.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = *(a3 + 23);
            if (v27 >= 0)
            {
              v28 = a3;
            }

            else
            {
              v28 = *a3;
            }

            if (v27 >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = *(a3 + 8);
            }

            v30 = std::string::append(&v39, v28, v29);
            __p = *v30;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v30->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::ValidationResults::AddError(a5, siri::intelligence::CODE_UNDEF_VAR, &__p, a6);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v39.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }
          }

          siri::intelligence::DialogTypes::GetDialogTypeInputType(a3, v16 + 4, &__p);
          v31 = v16[8];
          v36[0] = v16[7];
          v36[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::intelligence::Memory::ValidateVariableReference(a1, v36, &__p, a4, a5, a6);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v32 = v16[1];
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
              v33 = v16[2];
              v34 = *v33 == v16;
              v16 = v33;
            }

            while (!v34);
          }

          v16 = v33;
        }

        while (v33 != v42);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v41, v42[0]);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }
  }
}

void sub_254D22068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Memory::Load(char **this, const protobuf::Intelligence_State *a2)
{
  (*(**this + 24))(*this);
  std::__tree<std::string>::destroy((this + 6), this[7]);
  this[7] = 0;
  this[8] = 0;
  this[6] = (this + 7);
  if (*(a2 + 8) >= 1)
  {
    for (i = 0; i < *(a2 + 8); ++i)
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(a2 + 24, i);
      v7 = v5;
      memset(&v19, 0, sizeof(v19));
      v8 = *(v5 + 16);
      if ((v8 & 4) != 0)
      {
        v10 = *(v5 + 40);
        if (!v10)
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 19433);
          v11 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || values_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v18, &v11->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          v10 = *(v7 + 40);
        }

        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &protobuf::_Intelligence_State_Memory_Value_default_instance_;
        }

        MEMORY[0x259C299D0](&v19, "[");
        if (v12[8] >= 1)
        {
          v13 = 0;
          do
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v12 + 6), v13);
            std::operator+<char>();
            v14 = std::string::append(&v18, "'");
            v15 = *&v14->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v15;
            v14->__r_.__value_.__l.__size_ = 0;
            v14->__r_.__value_.__r.__words[2] = 0;
            v14->__r_.__value_.__r.__words[0] = 0;
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0].__r_.__value_.__r.__words[0];
            }

            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p[0].__r_.__value_.__l.__size_;
            }

            std::string::append(&v19, v16, size);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__data_);
            }

            ++v13;
          }

          while (v13 < v12[8]);
        }

        std::string::append(&v19, "]");
      }

      else
      {
        if ((v8 & 2) == 0)
        {
          v9 = *(v5 + 24);
          if (*(v9 + 23) < 0)
          {
            v9 = *v9;
          }

          siri::intelligence::Log::Warning("Key %s has no value", v6, v9);
          goto LABEL_29;
        }

        std::string::operator=(&v19, *(v5 + 32));
      }

      siri::intelligence::Memory::SetVariableFromString(this, *(v7 + 24), &v19);
LABEL_29:
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_254D2238C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a23);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Memory::Save(siri::intelligence::Memory *this, protobuf::Intelligence_State *a2)
{
  if (a2)
  {
    std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v28, (*this + 72));
    v3 = v28;
    if (v28 != v29)
    {
      while (1)
      {
        v4 = *(a2 + 5);
        if (!v4)
        {
          break;
        }

        v5 = *(a2 + 8);
        v6 = *v4;
        if (v5 < *v4)
        {
          *(a2 + 8) = v5 + 1;
          v7 = *&v4[2 * v5 + 2];
          goto LABEL_10;
        }

        if (v6 == *(a2 + 9))
        {
          goto LABEL_8;
        }

LABEL_9:
        *v4 = v6 + 1;
        v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory>(*(a2 + 3));
        v8 = *(a2 + 8);
        v9 = *(a2 + 5) + 8 * v8;
        *(a2 + 8) = v8 + 1;
        *(v9 + 8) = v7;
LABEL_10:
        v10 = *(v7 + 3);
        *(v7 + 4) |= 1u;
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v7 + 24, (v3 + 4));
        }

        std::string::operator=(v10, (v3 + 4));
        v11 = v3[7];
        if (*(v11 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v11[4], v11[5]);
        }

        else
        {
          v27 = *(v11 + 4);
        }

        if (siri::intelligence::IsPrimitiveType(&v27))
        {
          (*(*v3[7] + 56))(&__p);
          *(v7 + 4) |= 2u;
          google::protobuf::internal::ArenaStringPtr::SetNoArena(v7 + 4, &google::protobuf::internal::fixed_address_empty_string, &__p);
          if (v26 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_ARRAY[0]);
          IsEquivalentType = siri::intelligence::IsEquivalentType(&v27, &__p);
          v13 = IsEquivalentType;
          if (v26 < 0)
          {
            operator delete(__p.n128_u64[0]);
            if (v13)
            {
LABEL_23:
              v14 = v3[7];
              if (v14)
              {
                v15 = **v14;
                if (v16)
                {
                  v17 = v3[8];
                  if (v17)
                  {
                    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

LABEL_29:
                  *(v7 + 4) |= 4u;
                  v18 = *(v7 + 5);
                  if (v18)
                  {
                    if (!v16)
                    {
LABEL_40:
                      if (v17)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                      }

                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    v18 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory_Value>(0);
                    *(v7 + 5) = v18;
                    if (!v16)
                    {
                      goto LABEL_40;
                    }
                  }

                  if (v16[10] != v16[9])
                  {
                    v19 = 0;
                    do
                    {
                      siri::intelligence::VariableArray::GetItem(v16, v19, &v23);
                      (*(*v23 + 56))(&__p);
                      google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v18 + 24, &__p);
                      if (v26 < 0)
                      {
                        operator delete(__p.n128_u64[0]);
                      }

                      if (v24)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                      }

                      ++v19;
                    }

                    while (v19 < (v16[10] - v16[9]) >> 4);
                  }

                  goto LABEL_40;
                }
              }

              else
              {
                v16 = 0;
              }

              v17 = 0;
              goto LABEL_29;
            }
          }

          else if (IsEquivalentType)
          {
            goto LABEL_23;
          }
        }

LABEL_42:
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        v20 = v3[1];
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
            v21 = v3[2];
            v22 = *v21 == v3;
            v3 = v21;
          }

          while (!v22);
        }

        v3 = v21;
        if (v21 == v29)
        {
          goto LABEL_50;
        }
      }

      v6 = *(a2 + 9);
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v6 + 1);
      v4 = *(a2 + 5);
      v6 = *v4;
      goto LABEL_9;
    }

LABEL_50:
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v28, v29[0]);
  }

  else
  {

    siri::intelligence::Log::Error("NULL state in Memory::Save", 0);
  }
}

void sub_254D227B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&a24, a25);
  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671B030;
  siri::intelligence::VariableDictionary::VariableDictionary((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::VariableDictionary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671B030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::vector<siri::intelligence::VariableComponent>::__construct_one_at_end[abi:ne200100]<siri::intelligence::VariableComponent const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
}

void sub_254D22A34(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<siri::intelligence::VariableComponent>::__emplace_back_slow_path<siri::intelligence::VariableComponent const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::VariableComponent>>(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  *(v7 + 48) = *(a2 + 48);
  *&v18 = v18 + 56;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<siri::intelligence::VariableComponent>::~__split_buffer(&v16);
  return v15;
}

void sub_254D22BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<siri::intelligence::VariableComponent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::VariableComponent>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::VariableComponent>,siri::intelligence::VariableComponent*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<siri::intelligence::VariableComponent>::~__split_buffer(void **a1)
{
  std::__split_buffer<siri::intelligence::VariableComponent>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<siri::intelligence::VariableComponent>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v4, i - 56);
  }
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableArray>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<siri::intelligence::VariableArray>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AFE0;
  siri::intelligence::VariableArray::VariableArray(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::VariableArray>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671AFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableDictionary>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<siri::intelligence::VariableDictionary>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671B030;
  siri::intelligence::VariableDictionary::VariableDictionary(a1 + 3, a2);
  return a1;
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableArray>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<siri::intelligence::VariableArray>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AFE0;
  siri::intelligence::VariableArray::VariableArray(a1 + 3, a2);
  return a1;
}

void sub_254D231AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<siri::intelligence::VariableReference>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671AF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void sub_254D232D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<siri::intelligence::VariableFunction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671AF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence14VariableNumberENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AEF0;
  siri::intelligence::VariableNumber::VariableNumber((a1 + 3));
  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence15VariableBooleanENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AEA0;
  siri::intelligence::VariableBoolean::VariableBoolean((a1 + 3));
  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D235E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
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

double YAML::EmitFromEvents::EmitFromEvents(YAML::EmitFromEvents *this, YAML::Emitter *a2)
{
  *this = &unk_28671B080;
  *(this + 1) = a2;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

{
  *this = &unk_28671B080;
  *(this + 1) = a2;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

uint64_t *YAML::EmitFromEvents::OnNull(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  YAML::EmitFromEvents::BeginNode(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  YAML::EmitFromEvents::EmitProps(a1, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return YAML::Emitter::Write(a1[1]);
}

void sub_254D23870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

YAML::Emitter *YAML::EmitFromEvents::BeginNode(YAML::Emitter *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = this;
    v3 = *(*(*(this + 3) + (((v1 + *(this + 6) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + *(this + 6) - 1) & 0x3FF));
    if (v3 == 1)
    {
      v4 = 2;
      v5 = 27;
    }

    else
    {
      if (v3 != 2)
      {
        return this;
      }

      v4 = 1;
      v5 = 28;
    }

    this = YAML::Emitter::SetLocalValue(*(this + 1), v5);
    v6 = *(v2 + 7) + *(v2 + 6) - 1;
    *(*(*(v2 + 3) + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v6 & 0x3FF)) = v4;
  }

  return this;
}

void YAML::EmitFromEvents::EmitProps(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a2[23];
  v6 = v5;
  v7 = *(a2 + 1);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  if (v6 < 0)
  {
    if (v7 == 1)
    {
      v10 = *a2;
      v11 = *v10;
      if (v11 == 33 || v11 == 63)
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 8);
    }

    else
    {
      v9 = *(a1 + 8);
      v10 = *a2;
    }

    std::string::__init_copy_ctor_external(&v14, v10, v7);
  }

  else
  {
    if (v6 == 1)
    {
      v8 = *a2;
      if (v8 == 33 || v8 == 63)
      {
        goto LABEL_22;
      }
    }

    v9 = *(a1 + 8);
    v14 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v18, "");
  YAML::_Tag::_Tag(&v15, &v18, &v14, 0);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  YAML::Emitter::Write(v9, &v15);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if (!a3)
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (!a3)
  {
    return;
  }

LABEL_23:
  v12 = *(a1 + 8);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  YAML::Emitter::Write(v12, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_254D23AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::EmitFromEvents::OnAlias(YAML::Emitter *a1, uint64_t a2, uint64_t a3)
{
  YAML::EmitFromEvents::BeginNode(a1);
  v5 = *(a1 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  YAML::Emitter::Write(v5, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D23BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::ToString(_anonymous_namespace_ *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  MEMORY[0x259C29BE0](&v6, a2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254D23D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259C29CE0](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t YAML::EmitFromEvents::OnScalar(YAML::Emitter *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  YAML::EmitFromEvents::BeginNode(a1);
  YAML::EmitFromEvents::EmitProps(a1, a3, a4);
  v9 = *(a1 + 1);

  return YAML::Emitter::Write(v9, a5);
}

void *YAML::EmitFromEvents::OnSequenceStart(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  YAML::EmitFromEvents::BeginNode(a1);
  YAML::EmitFromEvents::EmitProps(a1, a3, a4);
  if (a5 == 1)
  {
    v9 = 24;
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_6;
    }

    v9 = 23;
  }

  YAML::Emitter::SetLocalValue(*(a1 + 8), v9);
LABEL_6:
  v10 = *(a1 + 8);
  if (**v10 == 1)
  {
    YAML::Emitter::EmitBeginSeq(v10);
  }

  v12 = 0;
  return std::deque<YAML::EmitFromEvents::State::value>::push_back((a1 + 16), &v12);
}

void YAML::EmitFromEvents::OnSequenceEnd(YAML::EmitFromEvents *this)
{
  v2 = *(this + 1);
  if (**v2 == 1)
  {
    YAML::Emitter::EmitEndSeq(v2);
  }

  v3 = *(this + 7) - 1;
  if (*(*(*(this + 3) + (((v3 + *(this + 6)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + *(this + 6)) & 0x3FF)))
  {
    __assert_rtn("OnSequenceEnd", "emitfromevents.cpp", 68, "m_stateStack.top() == State::WaitingForSequenceEntry");
  }

  *(this + 7) = v3;

  std::deque<YAML::EmitFromEvents::State::value>::__maybe_remove_back_spare[abi:ne200100](this + 2);
}

void *YAML::EmitFromEvents::OnMapStart(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  YAML::EmitFromEvents::BeginNode(a1);
  YAML::EmitFromEvents::EmitProps(a1, a3, a4);
  if (a5 == 1)
  {
    v9 = 24;
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_6;
    }

    v9 = 23;
  }

  YAML::Emitter::SetLocalValue(*(a1 + 8), v9);
LABEL_6:
  v10 = *(a1 + 8);
  if (**v10 == 1)
  {
    YAML::Emitter::EmitBeginMap(v10);
  }

  v12 = 1;
  return std::deque<YAML::EmitFromEvents::State::value>::push_back((a1 + 16), &v12);
}

void YAML::EmitFromEvents::OnMapEnd(YAML::EmitFromEvents *this)
{
  v2 = *(this + 1);
  if (**v2 == 1)
  {
    YAML::Emitter::EmitEndMap(v2);
  }

  v3 = *(this + 7) - 1;
  if (*(*(*(this + 3) + (((v3 + *(this + 6)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + *(this + 6)) & 0x3FF)) != 1)
  {
    __assert_rtn("OnMapEnd", "emitfromevents.cpp", 92, "m_stateStack.top() == State::WaitingForKey");
  }

  *(this + 7) = v3;

  std::deque<YAML::EmitFromEvents::State::value>::__maybe_remove_back_spare[abi:ne200100](this + 2);
}

void YAML::EmitFromEvents::~EmitFromEvents(YAML::EmitFromEvents *this)
{
  *this = &unk_28671B080;
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](this + 2);
}

{
  *this = &unk_28671B080;
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](this + 2);

  JUMPOUT(0x259C29D90);
}

void *std::deque<YAML::EmitFromEvents::State::value>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(v13);
    }

    result[4] = v8 - 1024;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<YAML::Scanner::FLOW_MARKER *>::emplace_back<YAML::Scanner::FLOW_MARKER *&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_254D24580(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::deque<YAML::EmitFromEvents::State::value>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 7) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x800)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void IE_GetClassName(NSObject *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1;
  if (v5)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "nil");
  }
}

BOOL IE_NSObjectIsBoolean(NSObject *a1)
{
  IE_GetClassName(a1, &v5);
  if (v6 < 0)
  {
    v2 = *(&v5 + 1) == 13 && *v5 == 0x6F424643534E5F5FLL && *(v5 + 5) == 0x6E61656C6F6F4246;
    operator delete(v5);
  }

  else
  {
    return v6 == 13 && v5 == 0x6F424643534E5F5FLL && *(&v5 + 5) == 0x6E61656C6F6F4246;
  }

  return v2;
}

void IE_NSObjectToVariable(NSObject *a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v10 = [v8 UTF8String];
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableString,std::allocator<siri::intelligence::VariableString>,char const(&)[1],char const*,0>();
    }

    if (IE_NSObjectIsBoolean(v8))
    {
      [v8 BOOLValue];
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      *&v10 = v3;
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v8;
      _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence13VariableArrayENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8;
      _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    IE_GetClassName(v8, &__str);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Error("Unsupported NSObject type: %s", v5, p_str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  *a2 = 0;
  a2[1] = 0;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_254D24BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *IE_VariableToNSObject(char ***a1)
{
  v1 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  v3 = *v1;
  v4 = **v1;
  {
    v8 = *v3;
    if (v9)
    {
      v10 = a1[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = MEMORY[0x277CCACA8];
      if (v9[95] < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *(v9 + 9), *(v9 + 10));
      }

      else
      {
        v35 = *(v9 + 3);
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v35;
      }

      else
      {
        v15 = v35.__r_.__value_.__r.__words[0];
      }

      v6 = [v11 stringWithUTF8String:v15];
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      goto LABEL_31;
    }

    v12 = *v3;
    if (v13)
    {
      v10 = a1[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13[9]];
    }

    else
    {
      v16 = *v3;
      if (!v17)
      {
        v19 = *v3;
        if (!v20)
        {
          std::dynamic_pointer_cast[abi:ne200100]<siri::intelligence::VariableDictionary,siri::intelligence::Variable>(a1, &v40);
          if (v40)
          {
            v6 = objc_opt_new();
            std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v38, v40 + 9);
            v26 = v38;
            if (v38 != v39)
            {
              do
              {
                std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>::pair[abi:ne200100](&v35, v26 + 2);
                v33 = v36;
                v34 = v37;
                if (v37)
                {
                  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v27 = IE_VariableToNSObject(&v33);
                if (v34)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                }

                if (v27)
                {
                  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v28 = &v35;
                  }

                  else
                  {
                    v28 = v35.__r_.__value_.__r.__words[0];
                  }

                  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v28, v33}];
                  [(std::__shared_weak_count *)v6 setObject:v27 forKey:v29];
                }

                if (v37)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }

                if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v35.__r_.__value_.__l.__data_);
                }

                v30 = *(v26 + 1);
                if (v30)
                {
                  do
                  {
                    v31 = v30;
                    v30 = *v30;
                  }

                  while (v30);
                }

                else
                {
                  do
                  {
                    v31 = *(v26 + 2);
                    v32 = *v31 == v26;
                    v26 = v31;
                  }

                  while (!v32);
                }

                v26 = v31;
              }

              while (v31 != v39);
            }

            std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v38, v39[0]);
          }

          else
          {
            v6 = 0;
          }

          v18 = v41;
          if (!v41)
          {
            goto LABEL_8;
          }

LABEL_33:
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          goto LABEL_8;
        }

        v21 = v20;
        v10 = a1[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = objc_opt_new();
        v22 = *(v21 + 80) - *(v21 + 72);
        if (v22)
        {
          v23 = 0;
          v24 = v22 >> 4;
          do
          {
            siri::intelligence::VariableArray::GetItem(v21, v23, &v42);
            v25 = IE_VariableToNSObject(&v42);
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }

            if (v25)
            {
              [(std::__shared_weak_count *)v6 addObject:v25];
            }

            ++v23;
          }

          while (v24 != v23);
        }

LABEL_31:
        if (!v10)
        {
          goto LABEL_8;
        }

        v18 = v10;
        goto LABEL_33;
      }

      v10 = a1[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = [MEMORY[0x277CCABB0] numberWithBool:v17[66]];
    }

    v6 = v14;
    goto LABEL_31;
  }

  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  siri::intelligence::Log::Error("Found a variable reference that should already have been pinned.", v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_7:
    v6 = 0;
  }

LABEL_8:

  return v6;
}

void sub_254D25130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

id IE_VariableToIEVariable(void *a1)
{
  if (*a1)
  {
    v2 = objc_opt_new();
    v3 = MEMORY[0x277CCACA8];
    v4 = *a1;
    if (*(*a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(v4 + 8), *(v4 + 16));
    }

    else
    {
      v5 = *(v4 + 8);
      v17.__r_.__value_.__r.__words[2] = *(v4 + 24);
      *&v17.__r_.__value_.__l.__data_ = v5;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v17;
    }

    else
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    v7 = [v3 stringWithUTF8String:v6];
    [v2 setName:v7];

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = *a1;
    if (*(*a1 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(v9 + 32), *(v9 + 40));
    }

    else
    {
      v17 = *(v9 + 32);
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17.__r_.__value_.__r.__words[0];
    }

    v11 = [v8 stringWithUTF8String:v10];
    [v2 setType:v11];

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    [v2 setPersistent:*(*a1 + 65)];
    v12 = a1[1];
    v15 = *a1;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = IE_VariableToNSObject(&v15);
    [v2 setValue:{v13, v15}];

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id IE_ExpandedConditionToIECondition(const siri::intelligence::ResolvedCondition *a1)
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCACA8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = [v3 stringWithUTF8String:{p_p, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  [v2 setConditionId:v5];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = MEMORY[0x277CCACA8];
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 3), *(a1 + 4));
  }

  else
  {
    __p = *(a1 + 1);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  v8 = [v6 stringWithUTF8String:{v7, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  [v2 setExpression:v8];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v2 setValue:*(a1 + 48)];
  v9 = objc_opt_new();
  memset(&__p, 0, sizeof(__p));
  std::vector<siri::intelligence::ResolvedCondition>::__init_with_size[abi:ne200100]<siri::intelligence::ResolvedCondition*,siri::intelligence::ResolvedCondition*>(&__p, *(a1 + 7), *(a1 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *(a1 + 7)) >> 4));
  size = __p.__r_.__value_.__l.__size_;
  for (i = __p.__r_.__value_.__r.__words[0]; i != size; i = (i + 80))
  {
    v12 = IE_ExpandedConditionToIECondition(i);
    [v9 addObject:v12];
  }

  v15 = &__p;
  std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&v15);
  [v2 setChildren:v9];

  return v2;
}

id IE_ResponseToIEResponse(const siri::intelligence::ExecStateResponse **a1)
{
  v48 = objc_opt_new();
  v2 = *a1;
  v49 = a1[1];
  if (*a1 != v49)
  {
    while (1)
    {
      siri::intelligence::ExecStateResponse::ExecStateResponse(v64, v2);
      if (siri::intelligence::ExecStateResponse::IsDialog(v64))
      {
        break;
      }

      if (siri::intelligence::ExecStateResponse::IsBehavior(v64))
      {
        siri::intelligence::ExecStateResponse::GetBehaviorResponse(v64, &v59);
        v5 = objc_opt_new();
        v6 = MEMORY[0x277CCACA8];
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v58, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        }

        else
        {
          v58 = v60;
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v58;
        }

        else
        {
          v35 = v58.__r_.__value_.__r.__words[0];
        }

        v36 = [v6 stringWithUTF8String:v35];
        [v5 setResponse_id:v36];

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v37 = MEMORY[0x277CCACA8];
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v58, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
        }

        else
        {
          v58 = v61;
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v58;
        }

        else
        {
          v38 = v58.__r_.__value_.__r.__words[0];
        }

        v39 = [v37 stringWithUTF8String:v38];
        [v5 setInputGroupId:v39];

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v40 = MEMORY[0x277CCACA8];
        if (*(v62 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v58, *v62, *(v62 + 1));
        }

        else
        {
          v41 = *v62;
          v58.__r_.__value_.__r.__words[2] = *(v62 + 2);
          *&v58.__r_.__value_.__l.__data_ = v41;
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v58;
        }

        else
        {
          v42 = v58.__r_.__value_.__r.__words[0];
        }

        v43 = [v40 stringWithUTF8String:v42];
        [v5 setName:v43];

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v44 = *(v62 + 3);
        v45 = *(v62 + 4);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v44)
          {
            v50 = v44;
            v51 = v45;
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_109:
            v46 = IE_VariableToNSObject(&v50);
            [v5 setParameters:v46];

            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            }
          }
        }

        else if (v44)
        {
          v50 = *(v62 + 3);
          v51 = 0;
          goto LABEL_109;
        }

        [v48 addObject:v5];
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        v34 = &unk_286718FE0;
LABEL_114:
        v59 = v34;
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        siri::intelligence::ResponseBase::~ResponseBase(&v59);
      }

      v59 = &v70;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v59);
      v68 = &unk_286718FE0;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      siri::intelligence::ResponseBase::~ResponseBase(&v68);
      v66 = &unk_286719048;
      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      siri::intelligence::ResponseBase::~ResponseBase(&v66);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      v2 = (v2 + 312);
      if (v2 == v49)
      {
        goto LABEL_124;
      }
    }

    siri::intelligence::ExecStateResponse::GetDialogResponse(v64, &v59);
    v3 = objc_opt_new();
    v4 = MEMORY[0x277CCACA8];
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v60;
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v58;
    }

    else
    {
      v7 = v58.__r_.__value_.__r.__words[0];
    }

    v8 = [v4 stringWithUTF8String:v7];
    [v3 setResponse_id:v8];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v9 = MEMORY[0x277CCACA8];
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v61;
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v58;
    }

    else
    {
      v10 = v58.__r_.__value_.__r.__words[0];
    }

    v11 = [v9 stringWithUTF8String:v10];
    [v3 setInputGroupId:v11];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v12 = MEMORY[0x277CCACA8];
    if (*(v62 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v62, *(v62 + 1));
    }

    else
    {
      v13 = *v62;
      v58.__r_.__value_.__r.__words[2] = *(v62 + 2);
      *&v58.__r_.__value_.__l.__data_ = v13;
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v58;
    }

    else
    {
      v14 = v58.__r_.__value_.__r.__words[0];
    }

    v15 = [v12 stringWithUTF8String:v14];
    [v3 setText:v15];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v16 = MEMORY[0x277CCACA8];
    if (*(v62 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *(v62 + 11), *(v62 + 12));
    }

    else
    {
      v58 = *(v62 + 88);
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v58;
    }

    else
    {
      v17 = v58.__r_.__value_.__r.__words[0];
    }

    v18 = [v16 stringWithUTF8String:v17];
    [v3 setCatId:v18];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v19 = *(v62 + 14);
    v20 = *(v62 + 15);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v19)
      {
        goto LABEL_45;
      }

      v56 = v19;
      v57 = v20;
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_45;
      }

      v56 = *(v62 + 14);
      v57 = 0;
    }

    v21 = IE_VariableToNSObject(&v56);
    [v3 setCatParameters:v21];

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

LABEL_45:
    v22 = *(v62 + 16);
    v23 = *(v62 + 17);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v22)
      {
        goto LABEL_52;
      }

      v54 = v22;
      v55 = v23;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      if (!v22)
      {
        goto LABEL_52;
      }

      v54 = *(v62 + 16);
      v55 = 0;
    }

    v24 = IE_VariableToNSObject(&v54);
    [v3 setVisualParameters:v24];

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

LABEL_52:
    v25 = MEMORY[0x277CCACA8];
    if (*(v62 + 167) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *(v62 + 18), *(v62 + 19));
    }

    else
    {
      v58 = *(v62 + 6);
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v58;
    }

    else
    {
      v26 = v58.__r_.__value_.__r.__words[0];
    }

    v27 = [v25 stringWithUTF8String:v26];
    [v3 setPatternId:v27];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v28 = *(v62 + 21);
    v29 = *(v62 + 22);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v28)
      {
        v52 = v28;
        v53 = v29;
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_65;
      }
    }

    else if (v28)
    {
      v52 = *(v62 + 21);
      v53 = 0;
LABEL_65:
      v30 = IE_VariableToNSObject(&v52);
      [v3 setPatternParameters:v30];

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }
    }

    [v3 setSensitiveData:*(v62 + 184)];
    v31 = MEMORY[0x277CCACA8];
    if (*(v62 + 215) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *(v62 + 24), *(v62 + 25));
    }

    else
    {
      v58 = *(v62 + 8);
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v58;
    }

    else
    {
      v32 = v58.__r_.__value_.__r.__words[0];
    }

    v33 = [v31 stringWithUTF8String:v32];
    [v3 setDialogPhase:v33];

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    [v48 addObject:v3];
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v34 = &unk_286719048;
    goto LABEL_114;
  }

LABEL_124:

  return v48;
}

void sub_254D25E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  siri::intelligence::BehaviorResponse::~BehaviorResponse(&a27);
  siri::intelligence::ExecStateResponse::~ExecStateResponse(&a44);

  _Unwind_Resume(a1);
}

void IE_GetTemplateDirFromBundle(NSBundle *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v6 = v4;
  if (v4)
  {
    v7 = [(NSBundle *)v4 resourcePath];
    if (v7)
    {
      v2 = [(NSBundle *)v6 resourcePath];
      v8 = [v2 UTF8String];
    }

    else
    {
      v8 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(v13, v8);
    if (v7)
    {
    }

    siri::intelligence::JoinPath(v13, siri::intelligence::Configuration::TEMPLATES_DIR, __p);
    if (siri::intelligence::DirExists(__p))
    {
      *a2 = *__p;
      *(a2 + 16) = v12;
    }

    else
    {
      v10 = __p;
      if (v12 < 0)
      {
        v10 = __p[0];
      }

      siri::intelligence::Log::Warning("Bundle Templates directory not found: %s", v9, v10);
      std::string::basic_string[abi:ne200100]<0>(a2, "");
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    siri::intelligence::Log::Error("Invalid flow request: nil bundle provided", v5);
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void *IEDefer::IEDefer(void *a1, uint64_t a2)
{
  *a1 = MEMORY[0x259C2A240](a2);
  return a1;
}

{
  *a1 = MEMORY[0x259C2A240](a2);
  return a1;
}

void IEDefer::~IEDefer(void (***this)(void))
{
  v2 = *this;
  if (v2)
  {
    v2[2]();
    v3 = *this;
  }

  else
  {
    v3 = 0;
  }
}

IEEvent *IE_IntentToIEEvent(siri::intelligence::Intent **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v5 = 0;
    goto LABEL_128;
  }

  v4 = MEMORY[0x277CCACA8];
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v108 = *(v2 + 1);
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v108;
  }

  else
  {
    v6 = v108.__r_.__value_.__r.__words[0];
  }

  v98 = [v4 stringWithUTF8String:v6];
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = *a1;
  if (*(*a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v108.__r_.__value_.__r.__words[2] = *(v8 + 2);
    *&v108.__r_.__value_.__l.__data_ = v9;
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v108;
  }

  else
  {
    v10 = v108.__r_.__value_.__r.__words[0];
  }

  v97 = [v7 stringWithUTF8String:v10];
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v96 = [[IEEvent alloc] initWithName:v98 withId:v97];
  v100 = objc_opt_new();
  v99 = a1;
  v11 = *a1;
  memset(&v108, 0, sizeof(v108));
  std::vector<siri::intelligence::NLParameters>::__init_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(&v108, *(v11 + 24), *(v11 + 25), 0xCCCCCCCCCCCCCCCDLL * ((*(v11 + 25) - *(v11 + 24)) >> 3));
  size = v108.__r_.__value_.__l.__size_;
  for (i = v108.__r_.__value_.__r.__words[0]; i != size; i += 40)
  {
    v14 = objc_opt_new();
    v16 = *(i + 24);
    v15 = *(i + 32);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v112 = v16;
    v113 = v15;
    v17 = IE_VariableToNSObject(&v112);
    if (v113)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    v18 = MEMORY[0x277CCACA8];
    if (*(i + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v111, *i, *(i + 8));
    }

    else
    {
      v19 = *i;
      v111.__r_.__value_.__r.__words[2] = *(i + 16);
      *&v111.__r_.__value_.__l.__data_ = v19;
    }

    if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v111;
    }

    else
    {
      v20 = v111.__r_.__value_.__r.__words[0];
    }

    v21 = [v18 stringWithUTF8String:v20];
    [v14 setName:v21];

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

    v22 = v17;
    if (!v17)
    {
      v1 = objc_opt_new();
      v22 = v1;
    }

    [v14 setParameters:v22];
    if (!v17)
    {
    }

    [v100 addObject:v14];
  }

  v111.__r_.__value_.__r.__words[0] = &v108;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&v111);
  v23 = v96;
  [(IEEvent *)v96 setParsers:v100];
  v24 = a1;
  siri::intelligence::Intent::GetNlProducer(*a1, &v108);
  v25 = objc_opt_new();
  v27 = v109;
  v26 = v110;
  if (v110)
  {
    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v106 = v27;
  v107 = v26;
  v28 = IE_VariableToNSObject(&v106);
  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v107);
  }

  v29 = MEMORY[0x277CCACA8];
  v95 = v28;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v108;
  }

  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v111;
  }

  else
  {
    v30 = v111.__r_.__value_.__r.__words[0];
  }

  v31 = [v29 stringWithUTF8String:v30];
  [v25 setName:v31];

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v32 = v28;
  if (!v28)
  {
    v32 = objc_opt_new();
  }

  [v25 setParameters:v32];
  if (!v28)
  {
  }

  [(IEEvent *)v96 setProducer:v25];
  std::string::basic_string[abi:ne200100]<0>(&v111, "socialCATI");
  v33 = *a1;
  if (*(*a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, *(v33 + 9), *(v33 + 10));
    v33 = *a1;
  }

  else
  {
    v105 = *(v33 + 3);
  }

  if (*(v33 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(v33 + 12), *(v33 + 13));
  }

  else
  {
    v104 = *(v33 + 4);
  }

  v34 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v105.__r_.__value_.__l.__size_;
  }

  if (v34)
  {
    v35 = objc_opt_new();
    v36 = objc_opt_new();
    v37 = objc_opt_new();
    v38 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v104.__r_.__value_.__l.__size_;
    }

    if (v38)
    {
      v39 = objc_opt_new();
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v104;
      }

      else
      {
        v40 = v104.__r_.__value_.__r.__words[0];
      }

      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40];
      [v39 setObject:v41 forKey:@"identifierValue"];

      [v37 addObject:v39];
    }

    v42 = objc_opt_new();
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v105;
    }

    else
    {
      v43 = v105.__r_.__value_.__r.__words[0];
    }

    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43];
    [v42 setObject:v44 forKey:@"identifierValue"];

    [v42 setObject:@"intentName" forKey:@"namespace"];
    [v37 addObject:v42];
    [v36 setObject:v37 forKey:@"matchers"];
    if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v111;
    }

    else
    {
      v45 = v111.__r_.__value_.__r.__words[0];
    }

    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v45];
    [v35 setName:v46];

    [v35 setParameters:v36];
    [v100 addObject:v35];
    [(IEEvent *)v96 setParsers:v100];

    v24 = v99;
  }

  v47 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v104.__r_.__value_.__l.__size_;
  }

  if (v47)
  {
    v48 = objc_opt_new();
    v49 = objc_opt_new();
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v104;
    }

    else
    {
      v50 = v104.__r_.__value_.__r.__words[0];
    }

    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:v50];
    [v49 setObject:v51 forKey:@"identifierValue"];

    if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v111;
    }

    else
    {
      v52 = v111.__r_.__value_.__r.__words[0];
    }

    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:v52];
    [v48 setName:v53];

    [v48 setParameters:v49];
    [(IEEvent *)v96 setProducer:v48];
  }

  v54 = *v24;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v101, *(v54 + 15), *(v54 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v54 + 16) - *(v54 + 15)) >> 3));
  v55 = v101;
  v56 = v102;
  v114[0] = &v101;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v114);
  if (v55 != v56)
  {
    v57 = objc_opt_new();
    v58 = objc_opt_new();
    v59 = objc_opt_new();
    v60 = *v99;
    v102 = 0;
    v103 = 0;
    v101 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v101, *(v60 + 15), *(v60 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v60 + 16) - *(v60 + 15)) >> 3));
    v61 = v101;
    v62 = v102;
    if (v101 != v102)
    {
      do
      {
        v63 = objc_opt_new();
        v64 = v61;
        if (v61[23] < 0)
        {
          v64 = *v61;
        }

        v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
        [v63 setObject:v65 forKey:@"identifier"];

        [v59 addObject:v63];
        v61 += 24;
      }

      while (v61 != v62);
    }

    v114[0] = &v101;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v114);
    v23 = v96;
    [v58 setObject:v59 forKey:@"invocations"];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"directInvocation"];
    [v57 setName:v66];

    [v57 setParameters:v58];
    [v100 addObject:v57];
    [(IEEvent *)v96 setParsers:v100];

    v24 = v99;
  }

  v67 = *v24;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v101, *(v67 + 18), *(v67 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(v67 + 19) - *(v67 + 18)) >> 3));
  v68 = v101;
  v69 = v102;
  v114[0] = &v101;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v114);
  if (v68 != v69)
  {
    v70 = objc_opt_new();
    v71 = objc_opt_new();
    v72 = objc_opt_new();
    v73 = *v99;
    v102 = 0;
    v103 = 0;
    v101 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v101, *(v73 + 18), *(v73 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(v73 + 19) - *(v73 + 18)) >> 3));
    v74 = v101;
    v75 = v102;
    while (v74 != v75)
    {
      v76 = v74;
      if (v74[23] < 0)
      {
        v76 = *v74;
      }

      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:v76];
      [v72 addObject:v77];

      v74 += 24;
    }

    v114[0] = &v101;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v114);
    [v71 setObject:v72 forKey:@"userDialogActs"];
    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"usoLiteral"];
    [v70 setName:v78];

    [v70 setParameters:v71];
    [v100 addObject:v70];
    [(IEEvent *)v23 setParsers:v100];

    v24 = v99;
  }

  v80 = *(*v24 + 32);
  v79 = *(*v24 + 33);
  if (v79)
  {
    atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    v81 = *(v80 + 16);
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    if (!v81)
    {
      goto LABEL_117;
    }

LABEL_103:
    v82 = objc_opt_new();
    v83 = objc_opt_new();
    v84 = objc_opt_new();
    v85 = *(*v99 + 32);
    v86 = *(*v99 + 33);
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::set<std::string>::set[abi:ne200100](&v101, v85);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    v87 = v101;
    if (v101 != &v102)
    {
      do
      {
        v88 = v87 + 4;
        if (*(v87 + 55) < 0)
        {
          v88 = *v88;
        }

        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:v88];
        [v84 addObject:v89];

        v90 = v87[1];
        if (v90)
        {
          do
          {
            v91 = v90;
            v90 = *v90;
          }

          while (v90);
        }

        else
        {
          do
          {
            v91 = v87[2];
            v92 = *v91 == v87;
            v87 = v91;
          }

          while (!v92);
        }

        v87 = v91;
      }

      while (v91 != &v102);
    }

    std::__tree<std::string>::destroy(&v101, v102);
    [v83 setObject:v84 forKey:@"utterances"];
    v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"exactMatch"];
    [v82 setName:v93];

    [v82 setParameters:v83];
    [v100 addObject:v82];
    [(IEEvent *)v23 setParsers:v100];

    goto LABEL_117;
  }

  if (*(v80 + 16))
  {
    goto LABEL_103;
  }

LABEL_117:
  v5 = v23;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (v110)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v110);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

LABEL_128:

  return v5;
}

void sub_254D26E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  siri::intelligence::DirectInvocation::~DirectInvocation(&a35);
  _Unwind_Resume(a1);
}

void sub_254D271D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  siri::intelligence::Intent::~Intent(v16);
  _Unwind_Resume(a1);
}

IEInputGroup *IE_InputGroupToIEInputGroup(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    v4 = [[IEInputGroup alloc] initWithId:v3];
    [(IEInputGroup *)v4 setListenAfterSpeaking:*(*a1 + 52)];
    [(IEInputGroup *)v4 setImmersiveExperience:*(*a1 + 53)];
    [(IEInputGroup *)v4 setShouldCoordinateWithSpeech:*(*a1 + 54)];
    v5 = (*a1)[8];
    v9 = (*a1)[7];
    v10 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = IE_VariableToNSObject(&v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v7 = v6;
    if (!v6)
    {
      v7 = objc_opt_new();
    }

    [(IEInputGroup *)v4 setNlParameters:v7, v9];
    if (!v6)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void IE_IEDirectInvocationToDirectInvocation(IEDirectInvocation *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v4 = [(IEDirectInvocation *)v3 identifier];

  if (v4)
  {
    v5 = [(IEDirectInvocation *)v3 identifier];
    std::string::basic_string[abi:ne200100]<0>(&__str, [v5 UTF8String]);
    std::string::operator=(a2, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v6 = [(IEDirectInvocation *)v3 userData];

  if (v6)
  {
    v7 = [(IEDirectInvocation *)v3 userData];
    IE_NSObjectToVariable(v7, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      v8 = **__str.__r_.__value_.__l.__data_;
      if (v9)
      {
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
    }

    size = 0;
LABEL_12:
    if (__str.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
    }

    if (size)
    {
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 + 32);
    *(a2 + 24) = v9;
    *(a2 + 32) = size;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (size)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
    }
  }
}

void sub_254D2752C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  siri::intelligence::DirectInvocation::~DirectInvocation(v16);

  _Unwind_Resume(a1);
}

siri::intelligence::ExecStateResponse *siri::intelligence::ExecStateResponse::ExecStateResponse(siri::intelligence::ExecStateResponse *this, const siri::intelligence::ExecStateResponse *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::ResponseBase::ResponseBase((this + 16), (a2 + 16));
  *(this + 2) = &unk_286719048;
  v5 = *(a2 + 18);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::ResponseBase::ResponseBase((this + 152), (a2 + 152));
  *(this + 19) = &unk_286718FE0;
  v6 = *(a2 + 35);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(this + 288, *(a2 + 36), *(a2 + 37), (*(a2 + 37) - *(a2 + 36)) >> 4);
  return this;
}

void sub_254D27660(_Unwind_Exception *a1)
{
  siri::intelligence::BehaviorResponse::~BehaviorResponse(v3);
  siri::intelligence::DialogResponse::~DialogResponse(v2);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

siri::intelligence::ResponseBase *siri::intelligence::ResponseBase::ResponseBase(siri::intelligence::ResponseBase *this, const siri::intelligence::ResponseBase *a2)
{
  *this = &unk_286719028;
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

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  v7 = *(a2 + 10);
  v8 = *(a2 + 22);
  *(this + 12) = 0;
  *(this + 22) = v8;
  *(this + 10) = v7;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 96, *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  return this;
}

void sub_254D27798(_Unwind_Exception *exception_object)
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

uint64_t std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D2784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(a1, a2);
  }

  std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
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
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>::operator()[abi:ne200100](uint64_t a1)
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

std::string *std::__shared_ptr_emplace<siri::intelligence::VariableString>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],char const*,std::allocator<siri::intelligence::VariableString>,0>(std::string *a1, char *__s, char **a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_286719290;
  std::allocator<siri::intelligence::VariableString>::construct[abi:ne200100]<siri::intelligence::VariableString,char const(&)[1],char const*>(&v5, a1 + 1, __s, a3);
  return a1;
}

void std::allocator<siri::intelligence::VariableString>::construct[abi:ne200100]<siri::intelligence::VariableString,char const(&)[1],char const*>(int a1, std::string *a2, char *__s, char **a4)
{
  std::string::basic_string[abi:ne200100]<0>(&v7, __s);
  std::string::basic_string[abi:ne200100]<0>(&__p, *a4);
  siri::intelligence::VariableString::VariableString(a2, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_254D27B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence13VariableArrayENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AFE0;
  siri::intelligence::VariableArray::VariableArray((a1 + 3));
  return a1;
}

void siri::intelligence::DialogResponse::DialogResponse(siri::intelligence::DialogResponse *this)
{
  *(this + 69) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = &unk_286719048;
  operator new();
}

void siri::intelligence::DialogResponse::GetExpanded(siri::intelligence::DialogResponse *this@<X0>, siri::intelligence::ResponseBase *a2@<X8>)
{
  siri::intelligence::ResponseBase::ResponseBase(a2, this);
  *a2 = &unk_286719048;
  v5 = *(this + 16);
  *(a2 + 15) = *(this + 15);
  *(a2 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_254D2828C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  siri::intelligence::DialogResponse::~DialogResponse(v2);
  _Unwind_Resume(a1);
}

void siri::intelligence::DialogResponse::SetCharacter(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 32);
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::DialogResponse::GetCharacter@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::DialogResponse::GetText(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::DialogResponse::GetUserData(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    v3 = *(v2 + 40);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 56);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::DialogResponse::GetCategory(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 64), *(v2 + 72));
  }

  else
  {
    v3 = *(v2 + 64);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 80);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::DialogResponse::GetCatId(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 88), *(v2 + 96));
  }

  else
  {
    v3 = *(v2 + 88);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 104);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::DialogResponse::SetCatParameters(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 120);
  *(v2 + 112) = v4;
  *(v2 + 120) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::DialogResponse::GetCatParameters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::DialogResponse::SetVisualParameters(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 136);
  *(v2 + 128) = v4;
  *(v2 + 136) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::DialogResponse::GetVisualParameters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *(v2 + 128);
  v3 = *(v2 + 136);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::DialogResponse::GetPatternId(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 144), *(v2 + 152));
  }

  else
  {
    v3 = *(v2 + 144);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 160);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::DialogResponse::SetPatternParameters(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 176);
  *(v2 + 168) = v4;
  *(v2 + 176) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::DialogResponse::GetPatternParameters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *(v2 + 168);
  v3 = *(v2 + 176);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::DialogResponse::GetDialogPhase(siri::intelligence::DialogResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 192), *(v2 + 200));
  }

  else
  {
    v3 = *(v2 + 192);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 208);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__shared_ptr_emplace<siri::intelligence::DialogResponse::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671B118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::DialogResponse::Impl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v2 = *(a1 + 200);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 47) < 0)
  {
    v6 = *(a1 + 24);

    operator delete(v6);
  }
}

uint64_t YAML::operator<<(uint64_t a1, const YAML::Node *a2)
{
  v7[0] = &unk_28671B080;
  v7[1] = a1;
  memset(v8, 0, sizeof(v8));
  YAML::NodeEvents::NodeEvents(&v4, a2);
  YAML::NodeEvents::Emit(&v4, v7);
  std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(v6, v6[1]);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7[0] = &unk_28671B080;
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](v8);
  return a1;
}

void sub_254D28940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  YAML::NodeEvents::~NodeEvents(&a9);
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100]((v15 + 16));
  _Unwind_Resume(a1);
}

void sub_254D289B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Emitter::~Emitter(va);
  _Unwind_Resume(a1);
}

void sub_254D28ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Emitter::~Emitter(va);
  _Unwind_Resume(a1);
}

void sub_254D28E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  IEDefer::~IEDefer(va1);
  v17 = v19;
  v19 = 0;
  if (v17)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](va, v17);
  }

  v18 = *(v15 - 56);
  *(v15 - 64) = &unk_28671C180;
  *(v15 - 56) = 0;
  if (v18)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v15 - 56, v18);
  }

  _Unwind_Resume(a1);
}

void NSDictionaryToStringMap(NSDictionary *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[2].super.isa = 0;
  a1[1].super.isa = 0;
  a1->super.isa = &a1[1];
  if (v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [v4 objectForKey:v8];
          if (v8)
          {
            v10 = v8;
            v11 = [v8 UTF8String];
          }

          else
          {
            v11 = "";
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v11);
          if (v9)
          {
            v12 = v9;
            v13 = [v9 UTF8String];
          }

          else
          {
            v13 = "";
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, v13);
          v24 = __p;
          v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, __p);
          std::string::operator=((v14 + 56), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    v3 = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_254D29188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v22, *(v22 + 8));

  _Unwind_Resume(a1);
}

void sub_254D29528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  IEDefer::~IEDefer(va1);
  v17 = v19;
  v19 = 0;
  if (v17)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](va, v17);
  }

  v18 = *(v15 - 56);
  *(v15 - 64) = &unk_28671C180;
  *(v15 - 56) = 0;
  if (v18)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v15 - 56, v18);
  }

  _Unwind_Resume(a1);
}

void sub_254D299BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  IEDefer::~IEDefer(va1);
  v17 = v19;
  v19 = 0;
  if (v17)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](va, v17);
  }

  v18 = *(v15 - 56);
  *(v15 - 64) = &unk_28671C180;
  *(v15 - 56) = 0;
  if (v18)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v15 - 56, v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void siri::intelligence::TestCaseBuilder::TestCaseBuilder(siri::intelligence::TestCaseBuilder *this)
{
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence15TestCaseBuilder4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

{
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence15TestCaseBuilder4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void siri::intelligence::TestCaseBuilder::Clear(protobuf::FlowTest_Test **this)
{
  protobuf::FlowTest_Test::FlowTest_Test(v2);
  if (*this != v2)
  {
    protobuf::FlowTest_Test::InternalSwap(*this, v2);
  }

  protobuf::FlowTest_Test::~FlowTest_Test(v2);
}

void siri::intelligence::TestCaseBuilder::SendIntent(uint64_t *a1, uint64_t a2, std::string *__str, uint64_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  if (!v8)
  {
    v10 = *(v7 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24), v10 + 1);
    v8 = *(v7 + 40);
    v10 = *v8;
    goto LABEL_7;
  }

  v9 = *(v7 + 32);
  v10 = *v8;
  if (v9 < *v8)
  {
    *(v7 + 32) = v9 + 1;
    v11 = *&v8[2 * v9 + 2];
    goto LABEL_8;
  }

  if (v10 == *(v7 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v8 = v10 + 1;
  v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v7 + 24));
  v12 = *(v7 + 32);
  v13 = *(v7 + 40) + 8 * v12;
  *(v7 + 32) = v12 + 1;
  *(v13 + 8) = v11;
LABEL_8:
  *(v11 + 4) |= 2u;
  v14 = *(v11 + 7);
  if (!v14)
  {
    v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_SendIntent>(0);
    *(v11 + 7) = v14;
  }

  v15 = *(a2 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (!v15)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v16 = v14 + 56;
      v21 = *(v14 + 7);
      *(v14 + 4) |= 2u;
      if (v21 != &google::protobuf::internal::fixed_address_empty_string)
      {
        v18 = v21;
        v19 = __str;
        goto LABEL_20;
      }

      v22 = __str;
LABEL_23:
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v16, v22);
    }
  }

  v16 = v14 + 48;
  v17 = *(v14 + 6);
  *(v14 + 4) |= 1u;
  if (v17 == &google::protobuf::internal::fixed_address_empty_string)
  {
    v22 = a2;
    goto LABEL_23;
  }

  v18 = v17;
  v19 = a2;
LABEL_20:
  std::string::operator=(v18, v19);
  v23 = *a4;
  v24 = *(a4 + 8);
  v34[0] = v23;
  v34[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::VariableToTestKeyValue(v35, v34);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v37)
  {
    v25 = (v37 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v36)
  {
    v26 = 8 * v36;
    while (1)
    {
      v27 = *v25;
      v28 = *(v14 + 5);
      if (!v28)
      {
        break;
      }

      v29 = *(v14 + 8);
      v30 = *v28;
      if (v29 >= *v28)
      {
        if (v30 == *(v14 + 9))
        {
LABEL_38:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v14 + 6, v30 + 1);
          v28 = *(v14 + 5);
          v30 = *v28;
        }

        *v28 = v30 + 1;
        v31 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(v14 + 3));
        v32 = *(v14 + 8);
        v33 = *(v14 + 5) + 8 * v32;
        *(v14 + 8) = v32 + 1;
        *(v33 + 8) = v31;
        goto LABEL_40;
      }

      *(v14 + 8) = v29 + 1;
      v31 = *&v28[2 * v29 + 2];
LABEL_40:
      if (v27 != v31)
      {
        protobuf::FlowTest_KeyValueParameter::Clear(v31);
        protobuf::FlowTest_KeyValueParameter::MergeFrom(v31, v27);
      }

      ++v25;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    v30 = *(v14 + 9);
    goto LABEL_38;
  }

LABEL_43:
  protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(v35);
}

void sub_254D2A000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableToTestKeyValue(uint64_t a1, char ***a2)
{
  protobuf::FlowTest_KeyValueParameter::FlowTest_KeyValueParameter(a1);
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v4[1], v4[2]);
  }

  else
  {
    v5 = *(v4 + 1);
    v46.__r_.__value_.__r.__words[2] = v4[3];
    *&v46.__r_.__value_.__l.__data_ = v5;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v46.__r_.__value_.__l.__size_;
    operator delete(v46.__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else if (!*(&v46.__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  v7 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v7[1], v7[2]);
  }

  else
  {
    v8 = *(v7 + 1);
    v46.__r_.__value_.__r.__words[2] = v7[3];
    *&v46.__r_.__value_.__l.__data_ = v8;
  }

  *(a1 + 16) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena((a1 + 72), &google::protobuf::internal::fixed_address_empty_string, &v46);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

LABEL_13:
  v9 = *a2;
  if (!*a2)
  {
    return;
  }

  v10 = *v9;
  v11 = **v9;
  if (!v12)
  {
    v14 = *v10;
    if (v15)
    {
      v13 = a2[1];
      if (!v13)
      {
        v20 = v15[9];
        *(a1 + 16) |= 4u;
        *(a1 + 88) = v20;
        return;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = v15[9];
      *(a1 + 16) |= 4u;
      *(a1 + 88) = v16;
      goto LABEL_26;
    }

    v17 = *v10;
    if (v18)
    {
      v13 = a2[1];
      if (!v13)
      {
        v32 = v18[66];
        *(a1 + 16) |= 8u;
        *(a1 + 96) = v32;
        return;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = v18[66];
      *(a1 + 16) |= 8u;
      *(a1 + 96) = v19;
      goto LABEL_26;
    }

    v21 = *v10;
    if (v22)
    {
      v13 = a2[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::VariableDictionary::GetValues(v22, &v47);
      v23 = v47;
      v24 = v48;
      if (v47 != v48)
      {
        while (1)
        {
          v25 = *(a1 + 64);
          if (!v25)
          {
            break;
          }

          v26 = *(a1 + 56);
          v27 = *v25;
          if (v26 >= *v25)
          {
            if (v27 == *(a1 + 60))
            {
LABEL_41:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v27 + 1);
              v25 = *(a1 + 64);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v28 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 48));
            v29 = *(a1 + 56);
            v30 = *(a1 + 64) + 8 * v29;
            *(a1 + 56) = v29 + 1;
            *(v30 + 8) = v28;
            goto LABEL_43;
          }

          *(a1 + 56) = v26 + 1;
          v28 = *&v25[2 * v26 + 2];
LABEL_43:
          v31 = v23[1];
          v45[0] = *v23;
          v45[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::intelligence::VariableToTestKeyValue(&v46, v45);
          if (&v46 != v28)
          {
            protobuf::FlowTest_KeyValueParameter::Clear(v28);
            protobuf::FlowTest_KeyValueParameter::MergeFrom(v28, &v46);
          }

          protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(&v46);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v23 += 2;
          if (v23 == v24)
          {
            goto LABEL_70;
          }
        }

        v27 = *(a1 + 60);
        goto LABEL_41;
      }

LABEL_70:
      v46.__r_.__value_.__r.__words[0] = &v47;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v46);
      if (!v13)
      {
        return;
      }

      goto LABEL_26;
    }

    v33 = *v10;
    if (!v34)
    {
      return;
    }

    v13 = a2[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&v47, v34[9], v34[10], (v34[10] - v34[9]) >> 4);
    v35 = v47;
    v36 = v48;
    if (v47 == v48)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v37 = *(a1 + 40);
      if (!v37)
      {
        break;
      }

      v38 = *(a1 + 32);
      v39 = *v37;
      if (v38 >= *v37)
      {
        if (v39 == *(a1 + 36))
        {
LABEL_61:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v39 + 1);
          v37 = *(a1 + 40);
          v39 = *v37;
        }

        *v37 = v39 + 1;
        v40 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 24));
        v41 = *(a1 + 32);
        v42 = *(a1 + 40) + 8 * v41;
        *(a1 + 32) = v41 + 1;
        *(v42 + 8) = v40;
        goto LABEL_63;
      }

      *(a1 + 32) = v38 + 1;
      v40 = *&v37[2 * v38 + 2];
LABEL_63:
      v43 = v35[1];
      v44[0] = *v35;
      v44[1] = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::VariableToTestKeyValue(&v46, v44);
      if (&v46 != v40)
      {
        protobuf::FlowTest_KeyValueParameter::Clear(v40);
        protobuf::FlowTest_KeyValueParameter::MergeFrom(v40, &v46);
      }

      protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(&v46);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      v35 += 2;
      if (v35 == v36)
      {
        goto LABEL_70;
      }
    }

    v39 = *(a1 + 36);
    goto LABEL_61;
  }

  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12[95] < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(v12 + 9), *(v12 + 10));
  }

  else
  {
    v46 = *(v12 + 3);
  }

  *(a1 + 16) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena((a1 + 80), &google::protobuf::internal::fixed_address_empty_string, &v46);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_254D2A540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(v18);
  _Unwind_Resume(a1);
}

void sub_254D2A5D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x254D2A5C4);
}

void siri::intelligence::TestCaseBuilder::AssertResponseAllIds(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (!v4)
  {
    v6 = *(v3 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24), v6 + 1);
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:
  *(v7 + 4) |= 4u;
  v10 = *(v7 + 8);
  if (!v10)
  {
    v10 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(0);
    *(v7 + 8) = v10;
  }

  v13 = a2;
  v11 = *a2;
  v12 = v13[1];
  if (v12 - v11 != 24)
  {
    if (v11 == v12)
    {
      return;
    }

    while (1)
    {
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 8));
      }

      else
      {
        v17 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 16);
        *&__p.__r_.__value_.__l.__data_ = v17;
      }

      v18 = *(v10 + 8);
      if (!v18)
      {
        break;
      }

      v19 = *(v10 + 14);
      v20 = *v18;
      if (v19 >= *v18)
      {
        if (v20 == *(v10 + 15))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10 + 12, v20 + 1);
          v18 = *(v10 + 8);
          v20 = *v18;
        }

        *v18 = v20 + 1;
        v22 = *(v10 + 6);
        if (!v22)
        {
          operator new();
        }

        if (v22[14])
        {
        }

        AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v22, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
        AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
        AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
        v23 = *(v10 + 14);
        v24 = *(v10 + 8) + 8 * v23;
        *(v10 + 14) = v23 + 1;
        *(v24 + 8) = AlignedAndAddCleanup;
        goto LABEL_30;
      }

      *(v10 + 14) = v19 + 1;
      AlignedAndAddCleanup = *&v18[2 * v19 + 2];
LABEL_30:
      std::string::operator=(AlignedAndAddCleanup, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 += 24;
      if (v11 == v12)
      {
        return;
      }
    }

    v20 = *(v10 + 15);
    goto LABEL_24;
  }

  v16 = *(v10 + 9);
  v15 = v10 + 72;
  v14 = v16;
  *(v15 - 56) |= 1u;
  if (v16 == &google::protobuf::internal::fixed_address_empty_string)
  {

    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v15, v11);
  }

  std::string::operator=(v14, v11);
}

void sub_254D2A894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestCaseBuilder::AssertResponseAnyId(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (!v4)
  {
    v6 = *(v3 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24), v6 + 1);
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:
  *(v7 + 4) |= 4u;
  v10 = *(v7 + 8);
  if (!v10)
  {
    v10 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(0);
    *(v7 + 8) = v10;
  }

  v13 = a2;
  v11 = *a2;
  v12 = v13[1];
  if (v12 - v11 != 24)
  {
    if (v11 == v12)
    {
      return;
    }

    while (1)
    {
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 8));
      }

      else
      {
        v17 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 16);
        *&__p.__r_.__value_.__l.__data_ = v17;
      }

      v18 = *(v10 + 5);
      if (!v18)
      {
        break;
      }

      v19 = *(v10 + 8);
      v20 = *v18;
      if (v19 >= *v18)
      {
        if (v20 == *(v10 + 9))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10 + 6, v20 + 1);
          v18 = *(v10 + 5);
          v20 = *v18;
        }

        *v18 = v20 + 1;
        v22 = *(v10 + 3);
        if (!v22)
        {
          operator new();
        }

        if (v22[14])
        {
        }

        AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v22, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
        AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
        AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
        v23 = *(v10 + 8);
        v24 = *(v10 + 5) + 8 * v23;
        *(v10 + 8) = v23 + 1;
        *(v24 + 8) = AlignedAndAddCleanup;
        goto LABEL_30;
      }

      *(v10 + 8) = v19 + 1;
      AlignedAndAddCleanup = *&v18[2 * v19 + 2];
LABEL_30:
      std::string::operator=(AlignedAndAddCleanup, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 += 24;
      if (v11 == v12)
      {
        return;
      }
    }

    v20 = *(v10 + 9);
    goto LABEL_24;
  }

  v16 = *(v10 + 9);
  v15 = v10 + 72;
  v14 = v16;
  *(v15 - 56) |= 1u;
  if (v16 == &google::protobuf::internal::fixed_address_empty_string)
  {

    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v15, v11);
  }

  std::string::operator=(v14, v11);
}

void sub_254D2AB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestCaseBuilder::SetVariable(uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  if (!v6)
  {
    v8 = *(v5 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v8 + 1);
    v6 = *(v5 + 40);
    v8 = *v6;
    goto LABEL_7;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(v5 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:
  v12 = *(v9 + 5);
  if (!v12)
  {
    v14 = *(v9 + 9);
LABEL_13:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v9 + 6, v14 + 1);
    v12 = *(v9 + 5);
    v14 = *v12;
    goto LABEL_14;
  }

  v13 = *(v9 + 8);
  v14 = *v12;
  if (v13 < *v12)
  {
    *(v9 + 8) = v13 + 1;
    v15 = *&v12[2 * v13 + 2];
    goto LABEL_15;
  }

  if (v14 == *(v9 + 9))
  {
    goto LABEL_13;
  }

LABEL_14:
  *v12 = v14 + 1;
  v15 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(v9 + 3));
  v16 = *(v9 + 8);
  v17 = *(v9 + 5) + 8 * v16;
  *(v9 + 8) = v16 + 1;
  *(v17 + 8) = v15;
LABEL_15:
  v18 = *a3;
  v19 = *(a3 + 8);
  v23[0] = v18;
  v23[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::VariableToTestKeyValue(v24, v23);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v24 != v15)
  {
    protobuf::FlowTest_KeyValueParameter::Clear(v15);
    protobuf::FlowTest_KeyValueParameter::MergeFrom(v15, v24);
  }

  v22 = *(v15 + 9);
  v21 = v15 + 72;
  v20 = v22;
  *(v21 - 56) |= 1u;
  if (v22 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v21, a2);
  }

  std::string::operator=(v20, a2);
  protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(v24);
}

void sub_254D2AD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

std::string *siri::intelligence::TestCaseBuilder::GotoResponse(uint64_t *a1, std::string *__str)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (!v4)
  {
    v6 = *(v3 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24), v6 + 1);
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:
  *(v7 + 4) |= 1u;
  started = *(v7 + 6);
  if (!started)
  {
    started = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(0);
    *(v7 + 6) = started;
  }

  v13 = *(started + 3);
  v11 = started + 24;
  v12 = v13;
  *(v11 - 8) |= 1u;
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {

    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v11, __str);
  }

  return std::string::operator=(v12, __str);
}

std::string *siri::intelligence::TestCaseBuilder::SwitchActivity(uint64_t *a1, std::string *__str)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (!v4)
  {
    v6 = *(v3 + 36);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24), v6 + 1);
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:
  *(v7 + 4) |= 1u;
  started = *(v7 + 6);
  if (!started)
  {
    started = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(0);
    *(v7 + 6) = started;
  }

  v13 = *(started + 4);
  v11 = started + 32;
  v12 = v13;
  *(v11 - 16) |= 2u;
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {

    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v11, __str);
  }

  return std::string::operator=(v12, __str);
}

void siri::intelligence::TestCaseBuilder::AddToTestFile(uint64_t *a1, __int128 *a2, __int128 *a3, std::string *__str, uint64_t a5)
{
  v9 = *a1;
  v12 = *(v9 + 48);
  v10 = v9 + 48;
  v11 = v12;
  *(v10 - 32) |= 1u;
  if (v12 != &google::protobuf::internal::fixed_address_empty_string)
  {
    std::string::operator=(v11, __str);
    v13 = *(a5 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a5 + 8);
    }

    v14 = *a1;
    if (v13)
    {
      v17 = *(v14 + 56);
      v15 = v14 + 56;
      v16 = v17;
      *(v15 - 40) |= 2u;
      if (v17 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v15, a5);
      }

      std::string::operator=(v16, a5);
    }

    else
    {
      v18 = *(v14 + 56);
      if (v18 != &google::protobuf::internal::fixed_address_empty_string)
      {
        if (*(v18 + 23) < 0)
        {
          **v18 = 0;
          *(v18 + 8) = 0;
        }

        else
        {
          *v18 = 0;
          *(v18 + 23) = 0;
        }
      }

      *(v14 + 16) &= ~2u;
    }

    siri::intelligence::TestCase::TestCase(&v20, *a1, a2, a3);
    memset(v19, 0, sizeof(v19));
    siri::intelligence::TestSuite::LoadTests(v19, a2);
    siri::intelligence::TestSuite::AddTestCase(v19, &v20);
    siri::intelligence::TestSuite::SaveTests(v19);
  }

  google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v10, __str);
}

void sub_254D2B190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  siri::intelligence::TestSuite::~TestSuite(&a9);
  siri::intelligence::TestCase::~TestCase(&a15);
  _Unwind_Resume(a1);
}

void sub_254D2B240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestSuite::~TestSuite(void **this)
{
  v2 = this + 3;
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence15TestCaseBuilder4ImplENS_9allocatorIS4_EEEC2B8ne200100IJES6_Li0EEES6_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28671B168;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 24) = 0u;
  protobuf::FlowTest_Test::FlowTest_Test((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::TestCaseBuilder::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671B168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

BOOL siri::intelligence::DirExists(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  return stat(a1, &v5) != -1 && (v5.st_mode & 0xF000) == 0x4000;
}

BOOL siri::intelligence::FileExists(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  return stat(a1, &v5) != -1 && (v5.st_mode & 0xF000) == 0x8000;
}

_BYTE *siri::intelligence::FindFileInPaths@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1] - *a2;
  if (v4)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      siri::intelligence::JoinPath(*a2 + v7, a1, a3);
      result = siri::intelligence::FileExists(a3);
      if (result)
      {
        break;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v7 += 24;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    return std::string::basic_string[abi:ne200100]<0>(a3, &str_5);
  }

  return result;
}

void sub_254D2B5A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::JoinPath(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 23);
  v6 = *(a1 + 8);
  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *(a2 + 23);
  if (!v7)
  {
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    *a3 = *a2;
    v11 = *(a2 + 16);
    goto LABEL_15;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    if (v5 < 0)
    {
      v10 = *a1;
      goto LABEL_19;
    }

    *a3 = *a1;
    v11 = *(a1 + 16);
LABEL_15:
    *(a3 + 16) = v11;
    return;
  }

  if (siri::intelligence::IsAbsPath(a2))
  {
    if (*(a2 + 23) < 0)
    {
LABEL_10:
      v10 = *a2;
      v6 = *(a2 + 8);
LABEL_19:

      std::string::__init_copy_ctor_external(a3, v10, v6);
      return;
    }

    goto LABEL_12;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  while (1)
  {
    v12 = *(a3 + 23);
    if (v12 < 0)
    {
      v13 = *(a3 + 8);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!*(a3 + 23))
      {
        goto LABEL_33;
      }

      v13 = *(a3 + 23);
    }

    v14 = v13 - 1;
    if ((v12 & 0x80000000) != 0)
    {
      break;
    }

    if (*(a3 + v14) != 47)
    {
      goto LABEL_33;
    }

LABEL_32:
    std::string::erase(a3, v12 - 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(*a3 + v14) == 47)
  {
    v12 = *(a3 + 8);
    goto LABEL_32;
  }

LABEL_33:
  std::string::push_back(a3, 47);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  std::string::append(a3, v16, v17);
}