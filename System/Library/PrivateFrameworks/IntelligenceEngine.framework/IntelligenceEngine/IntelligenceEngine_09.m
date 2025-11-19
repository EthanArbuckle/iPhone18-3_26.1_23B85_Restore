void sub_254D057C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a12 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void sub_254D058C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x254D058C0);
}

void siri::intelligence::FunctionLength(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "variable");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, &__p.__r_.__value_.__l.__data_);
  if (v3 + 80 == v4)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_7:
      if (*(v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v7[4], v7[5]);
      }

      else
      {
        __p = *(v7 + 4);
      }

      v8 = strlen(siri::intelligence::TYPE_ARRAY[0]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v8 == __p.__r_.__value_.__l.__size_)
        {
          if (v8 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v9 = __p.__r_.__value_.__r.__words[0];
          v10 = memcmp(__p.__r_.__value_.__l.__data_, siri::intelligence::TYPE_ARRAY[0], v8);
          operator delete(v9);
          if (!v10)
          {
            goto LABEL_20;
          }
        }

        else
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (v8 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, siri::intelligence::TYPE_ARRAY[0], v8))
      {
LABEL_20:
        v11 = **v7;
        if (v6 && v12)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = (v12[10] - v12[9]) >> 4;
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        else
        {
          v27 = (v12[10] - v12[9]) >> 4;
        }

        goto LABEL_63;
      }

      if (*(v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v7[4], v7[5]);
      }

      else
      {
        __p = *(v7 + 4);
      }

      v14 = strlen(siri::intelligence::TYPE_STRING[0]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v14 == __p.__r_.__value_.__l.__size_)
        {
          if (v14 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v15 = __p.__r_.__value_.__r.__words[0];
          v16 = memcmp(__p.__r_.__value_.__l.__data_, siri::intelligence::TYPE_STRING[0], v14);
          operator delete(v15);
          if (!v16)
          {
LABEL_34:
            v17 = **v7;
            v19 = 0;
            if (v6 && v18)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = v6;
            }

            if (v18[95] < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v18 + 9), *(v18 + 10));
            }

            else
            {
              __p = *(v18 + 3);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v19)
            {
              v26 = v19;
LABEL_62:
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

LABEL_63:
            operator new();
          }
        }

        else
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (v14 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, siri::intelligence::TYPE_STRING[0], v14))
      {
        goto LABEL_34;
      }

      if (*(v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v7[4], v7[5]);
      }

      else
      {
        __p = *(v7 + 4);
      }

      v20 = strlen(siri::intelligence::TYPE_DICTIONARY[0]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v20 != __p.__r_.__value_.__l.__size_)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_63;
        }

        if (v20 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v21 = __p.__r_.__value_.__r.__words[0];
        v22 = memcmp(__p.__r_.__value_.__l.__data_, siri::intelligence::TYPE_DICTIONARY[0], v20);
        operator delete(v21);
        if (v22)
        {
          goto LABEL_63;
        }
      }

      else if (v20 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, siri::intelligence::TYPE_DICTIONARY[0], v20))
      {
        goto LABEL_63;
      }

      v23 = **v7;
      if (!v6 || !v24)
      {
        v28 = v24[22];
        goto LABEL_63;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = v24[22];
      v26 = v6;
      goto LABEL_62;
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "variable", "length");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D05DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ArrayIndex(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if ((v22 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "variable", "arrayIndex");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_30;
  }

  operator delete(__p[0]);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "index");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else if (v13)
  {
LABEL_15:
    v14 = **v8;
    v16 = v15;
    v17 = 0;
    if (v7 && v15)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v7;
    }

    v18 = **v13;
    if (!v19)
    {
      goto LABEL_24;
    }

    v20 = v19;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v12;
    if (v16)
    {
      siri::intelligence::VariableArray::GetItem(v16, *&v20[3].__vftable, a2);
      v19 = v12;
      if (!v12)
      {
LABEL_26:
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (v12)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
LABEL_24:
      *a2 = 0;
      a2[1] = 0;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    goto LABEL_26;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "index", "arrayIndex");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
LABEL_29:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_30:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D060AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionDefined(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 48))(v7);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "variable", "defined");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D06220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionUndefined(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      v8 = (*(*v7 + 48))(v7) ^ 1;
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "variable", "undefined");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D0636C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionEmpty(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 40))(v7);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "variable", "empty");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D064B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionNonEmpty(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      v8 = (*(*v7 + 40))(v7) ^ 1;
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "variable", "nonempty");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D06600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionDirectInvocationBuilder(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "identifier");
  v7 = std::__tree<std::string>::find<std::string>(v6 + 72, __p);
  if (v6 + 80 == v7)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = *(v7 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
LABEL_7:
      v11 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, "userData");
      v12 = std::__tree<std::string>::find<std::string>(v11 + 72, __p);
      if (v11 + 80 == v12)
      {
        v14 = 0;
        v13 = 0;
      }

      else
      {
        v14 = *(v12 + 56);
        v13 = *(v12 + 64);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      v25[0] = 0;
      v25[1] = 0;
      v26 = 0;
      if (a2)
      {
        v15 = *(a2 + 40);
        if (v15)
        {
          v16 = *v15;
          v18 = *(v16 + 232);
          v17 = *(v16 + 240);
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          if (v18)
          {
            if (v14)
            {
              v19 = v14->~__shared_weak_count;
              if (v20 && v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                v14 = v13;
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v20 = 0;
            }

            (*(*v10 + 56))(v23, v10);
            v21 = v20;
            v22 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            siri::intelligence::Callbacks::InvokeDirectInvocationBuilder(v18, v23, &v21, __p);
            *v25 = *__p;
            v26 = v28;
            HIBYTE(v28) = 0;
            LOBYTE(__p[0]) = 0;
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v24 < 0)
            {
              operator delete(v23[0]);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }
          }
        }
      }

      operator new();
    }
  }

  else if (v10)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v8, "identifier", "directInvocationBuilder");
  *a3 = 0;
  a3[1] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_254D06948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if (!v34)
    {
LABEL_5:
      if (!v33)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v34)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (!v33)
  {
LABEL_7:
    if (a25 < 0)
    {
      operator delete(__p);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  goto LABEL_7;
}

void siri::intelligence::FunctionVisitCount(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "responseId");
  v6 = std::__tree<std::string>::find<std::string>(v5 + 72, __p);
  if (v5 + 80 == v6)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_16:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v7, "responseId", "nonempty");
LABEL_17:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = *(a2 + 40);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = *v10;
  (*(*v9 + 56))(__p, v9);
  siri::intelligence::FlowGraph::GetResponse((v11 + 8), __p, &v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v13[0] = v14;
    v13[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    siri::intelligence::FlowGraph::GetResponseVisitCount((v11 + 8), v13);
    operator new();
  }

  v12 = v15;
  *a3 = 0;
  a3[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_18:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_254D06C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v25);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::FunctionDefinition::~FunctionDefinition(void **this)
{
  v2 = this + 7;
  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableNumber>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],double,std::allocator<siri::intelligence::VariableNumber>,0>(void *a1, char *__s, double *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AEF0;
  std::allocator<siri::intelligence::VariableNumber>::construct[abi:ne200100]<siri::intelligence::VariableNumber,char const(&)[1],double>(&v5, (a1 + 3), __s, a3);
  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::VariableNumber>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671AEF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::allocator<siri::intelligence::VariableNumber>::construct[abi:ne200100]<siri::intelligence::VariableNumber,char const(&)[1],double>(int a1, uint64_t a2, char *__s, double *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  siri::intelligence::VariableNumber::VariableNumber(a2, &__p, *a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D06F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<siri::intelligence::FunctionArgument>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
}

void std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_254D0720C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<siri::intelligence::VariableBoolean>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671AEA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void sub_254D07380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<siri::intelligence::VariableString>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::string,std::allocator<siri::intelligence::VariableString>,0>(std::string *a1, char *__s, const std::string *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_286719290;
  std::allocator<siri::intelligence::VariableString>::construct[abi:ne200100]<siri::intelligence::VariableString,char const(&)[1],std::string>(&v5, a1 + 1, __s, a3);
  return a1;
}

void std::allocator<siri::intelligence::VariableString>::construct[abi:ne200100]<siri::intelligence::VariableString,char const(&)[1],std::string>(int a1, std::string *a2, char *__s, const std::string *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  siri::intelligence::VariableString::VariableString(a2, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D074F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableBoolean>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],BOOL,std::allocator<siri::intelligence::VariableBoolean>,0>(void *a1, char *__s, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671AEA0;
  std::allocator<siri::intelligence::VariableBoolean>::construct[abi:ne200100]<siri::intelligence::VariableBoolean,char const(&)[1],BOOL>(&v5, (a1 + 3), __s, a3);
  return a1;
}

void std::allocator<siri::intelligence::VariableBoolean>::construct[abi:ne200100]<siri::intelligence::VariableBoolean,char const(&)[1],BOOL>(int a1, uint64_t a2, char *__s, char *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  siri::intelligence::VariableBoolean::VariableBoolean(a2, &__p, *a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D0764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<siri::intelligence::FunctionArgument>::__init_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::FunctionArgument>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D07880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::FunctionArgument>,siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v7->__r_.__value_.__l.__data_ = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      *(a3 + v6 + 48) = *(a1 + v6 + 48);
      v6 += 56;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_254D07960(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::FunctionDefinition>,siri::intelligence::FunctionDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v8 = v4 - 3;
        std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v8);
        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 10;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = v4 - 3;
        std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 10;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::intelligence::FunctionDescription::~FunctionDescription(void **this)
{
  v2 = this + 6;
  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::map<std::string,siri::intelligence::FunctionDefinition>::map[abi:ne200100](void *a1)
{
  a1[1] = 0;
  v2 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = qword_280AF4388;
  if (qword_280AF4388 != &qword_280AF4390)
  {
    v4 = 0;
    while (*a1 != v2)
    {
      v5 = v2;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *(v4 + 8);
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (v7);
      }

      if (std::less<std::string>::operator()[abi:ne200100](a1, (v6 + 32), (v3 + 32)))
      {
        if (!*v2)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v6;
        v8 = (v6 + 8);
        goto LABEL_14;
      }

      v8 = std::__tree<std::string>::__find_equal<std::string>(a1, &v12, (v3 + 32));
LABEL_14:
      if (!*v8)
      {
        goto LABEL_15;
      }

      v9 = *(v3 + 8);
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
          v10 = *(v3 + 16);
          v7 = *v10 == v3;
          v3 = v10;
        }

        while (!v7);
      }

      if (v10 == &qword_280AF4390)
      {
        return a1;
      }

      v4 = *v2;
      v3 = v10;
    }

    v6 = v2;
    if (!v4)
    {
LABEL_10:
      v12 = v2;
LABEL_15:
      operator new();
    }

    goto LABEL_12;
  }

  return a1;
}

void sub_254D07D88(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(*(a1 + 1));
    v2 = (a1 + 112);
    std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (a1[111] < 0)
    {
      operator delete(*(a1 + 11));
    }

    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<siri::intelligence::FunctionArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      std::vector<siri::intelligence::FunctionArgument>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *>(__str, a3, v8);
    for (i = *(a1 + 8); i != v12; std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(i))
    {
      i -= 56;
    }

    *(a1 + 8) = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::FunctionArgument>,siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(__str + v11, a3, *(a1 + 8));
  }
}

void std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *,siri::intelligence::FunctionArgument *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this[2].__r_.__value_.__s.__data_[0] = v5[2].__r_.__value_.__s.__data_[0];
      this = (this + 56);
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }

  return this;
}

void std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,false>(unint64_t a1, const void **a2, uint64_t a3, char a4)
{
  while (2)
  {
    v341 = a2;
    v342 = a2 - 10;
    v335 = a2 - 30;
    v337 = a2 - 20;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        v8 = v7;
        v9 = a2 - v7;
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 4);
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7, v7 + 80, v342);
              return;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7, v7 + 80, v7 + 160, v342);
              return;
            case 5:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7, v7 + 80, v7 + 160, v7 + 240, v342);
              return;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            v132 = *(a2 - 10);
            v131 = a2 - 10;
            v130 = v132;
            v133 = *(v7 + 23);
            v134 = *(v131 + 23);
            if (v134 >= 0)
            {
              v135 = *(v131 + 23);
            }

            else
            {
              v135 = v131[1];
            }

            if (v134 >= 0)
            {
              v136 = v131;
            }

            else
            {
              v136 = v130;
            }

            if (v133 >= 0)
            {
              v137 = *(v7 + 23);
            }

            else
            {
              v137 = *(v7 + 8);
            }

            if (v133 >= 0)
            {
              v138 = v7;
            }

            else
            {
              v138 = *v7;
            }

            if (v137 >= v135)
            {
              v139 = v135;
            }

            else
            {
              v139 = v137;
            }

            v140 = memcmp(v136, v138, v139);
            v141 = v135 < v137;
            if (v140)
            {
              v141 = v140 < 0;
            }

            if (v141)
            {
              std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(v7, v131);
            }

            return;
          }
        }

        v344 = v7;
        if (v9 <= 1919)
        {
          if (a4)
          {
            if (v7 != a2)
            {
              v142 = (v7 + 80);
              if ((v7 + 80) != a2)
              {
                v143 = 0;
                v144 = v7;
                do
                {
                  v145 = v142;
                  v146 = *(v144 + 23);
                  v147 = *(v144 + 103);
                  if (v147 >= 0)
                  {
                    v148 = *(v144 + 103);
                  }

                  else
                  {
                    v148 = v144[11];
                  }

                  if (v147 >= 0)
                  {
                    v149 = v142;
                  }

                  else
                  {
                    v149 = v144[10];
                  }

                  if (v146 >= 0)
                  {
                    v150 = *(v144 + 23);
                  }

                  else
                  {
                    v150 = v144[1];
                  }

                  if (v146 >= 0)
                  {
                    v151 = v144;
                  }

                  else
                  {
                    v151 = *v144;
                  }

                  if (v150 >= v148)
                  {
                    v152 = v148;
                  }

                  else
                  {
                    v152 = v150;
                  }

                  v153 = memcmp(v149, v151, v152);
                  v154 = v148 < v150;
                  if (v153)
                  {
                    v154 = v153 < 0;
                  }

                  if (v154)
                  {
                    v155 = *v145;
                    v354 = v145[2];
                    *v353 = v155;
                    v145[1] = 0;
                    v145[2] = 0;
                    *v145 = 0;
                    v156 = v144[13];
                    __p = *(v144 + 7);
                    v357 = v144[16];
                    v144[14] = 0;
                    v144[15] = 0;
                    v358[0] = *(v144 + 17);
                    v157 = v144[19];
                    v355 = v156;
                    *&v358[1] = v157;
                    v144[16] = 0;
                    v144[17] = 0;
                    v158 = v143;
                    v144[18] = 0;
                    v144[19] = 0;
                    while (1)
                    {
                      v159 = v344 + v158;
                      if (*(v344 + v158 + 103) < 0)
                      {
                        operator delete(*(v159 + 80));
                      }

                      *(v159 + 80) = *v159;
                      v160 = *(v159 + 16);
                      v161 = *(v159 + 24);
                      *(v159 + 23) = 0;
                      *v159 = 0;
                      *(v159 + 96) = v160;
                      *(v159 + 104) = v161;
                      if (*(v159 + 135) < 0)
                      {
                        operator delete(*(v159 + 112));
                      }

                      v162 = v344 + v158;
                      *(v159 + 112) = *(v344 + v158 + 32);
                      *(v159 + 128) = *(v344 + v158 + 48);
                      *(v162 + 55) = 0;
                      *(v162 + 32) = 0;
                      std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v344 + v158 + 136));
                      *(v162 + 136) = *(v162 + 56);
                      *(v162 + 152) = *(v162 + 72);
                      *(v162 + 64) = 0;
                      *(v162 + 72) = 0;
                      *(v162 + 56) = 0;
                      if (!v158)
                      {
                        break;
                      }

                      v163 = *(v162 - 57);
                      if (SHIBYTE(v354) >= 0)
                      {
                        v164 = HIBYTE(v354);
                      }

                      else
                      {
                        v164 = v353[1];
                      }

                      if (SHIBYTE(v354) >= 0)
                      {
                        v165 = v353;
                      }

                      else
                      {
                        v165 = v353[0];
                      }

                      if (v163 >= 0)
                      {
                        v166 = *(v162 - 57);
                      }

                      else
                      {
                        v166 = *(v162 - 72);
                      }

                      if (v163 >= 0)
                      {
                        v167 = (v162 - 80);
                      }

                      else
                      {
                        v167 = *(v162 - 80);
                      }

                      if (v166 >= v164)
                      {
                        v168 = v164;
                      }

                      else
                      {
                        v168 = v166;
                      }

                      v169 = memcmp(v165, v167, v168);
                      v170 = v164 < v166;
                      if (v169)
                      {
                        v170 = v169 < 0;
                      }

                      v158 -= 80;
                      if (!v170)
                      {
                        v171 = v344 + v158 + 80;
                        goto LABEL_305;
                      }
                    }

                    v171 = v344;
LABEL_305:
                    if (*(v171 + 23) < 0)
                    {
                      operator delete(*v171);
                    }

                    v172 = *v353;
                    *(v171 + 16) = v354;
                    *v171 = v172;
                    HIBYTE(v354) = 0;
                    LOBYTE(v353[0]) = 0;
                    *(v171 + 24) = v355;
                    if (*(v171 + 55) < 0)
                    {
                      operator delete(*(v162 + 32));
                    }

                    v173 = __p;
                    *(v162 + 48) = v357;
                    *(v162 + 32) = v173;
                    HIBYTE(v357) = 0;
                    LOBYTE(__p) = 0;
                    std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v162 + 56));
                    *(v162 + 56) = *&v358[0];
                    *(v171 + 64) = *(v358 + 8);
                    memset(v358, 0, 24);
                    v345[0] = v358;
                    std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v345);
                    if (SHIBYTE(v357) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v354) < 0)
                    {
                      operator delete(v353[0]);
                    }
                  }

                  v142 = v145 + 10;
                  v143 += 80;
                  v144 = v145;
                }

                while (v145 + 10 != v341);
              }
            }
          }

          else if (v7 != a2)
          {
            v298 = (v7 + 80);
            if ((v7 + 80) != a2)
            {
              v299 = (v7 + 152);
              do
              {
                v300 = v298;
                v301 = *(v8 + 23);
                v302 = *v8;
                v303 = *(v8 + 103);
                if (v303 >= 0)
                {
                  v304 = *(v8 + 103);
                }

                else
                {
                  v304 = *(v8 + 88);
                }

                if (v303 >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *(v8 + 80);
                }

                v306 = v8;
                if (v301 >= 0)
                {
                  v307 = *(v8 + 23);
                }

                else
                {
                  v307 = *(v8 + 8);
                }

                if (v301 >= 0)
                {
                  v308 = v306;
                }

                else
                {
                  v308 = v302;
                }

                if (v307 >= v304)
                {
                  v309 = v304;
                }

                else
                {
                  v309 = v307;
                }

                v310 = memcmp(v305, v308, v309);
                v311 = v341;
                v312 = v304 < v307;
                if (v310)
                {
                  v312 = v310 < 0;
                }

                if (v312)
                {
                  v313 = *v300;
                  v354 = v300[2];
                  *v353 = v313;
                  v300[1] = 0;
                  v300[2] = 0;
                  *v300 = 0;
                  v314 = *(v306 + 104);
                  __p = *(v306 + 112);
                  v357 = *(v306 + 128);
                  *(v306 + 112) = 0;
                  *(v306 + 120) = 0;
                  v358[0] = *(v306 + 136);
                  v315 = *(v306 + 152);
                  v355 = v314;
                  *&v358[1] = v315;
                  *(v306 + 128) = 0;
                  *(v306 + 136) = 0;
                  v316 = v299;
                  *(v306 + 144) = 0;
                  *(v306 + 152) = 0;
                  do
                  {
                    v317 = (v316 - 9);
                    if (*(v316 - 49) < 0)
                    {
                      operator delete(*v317);
                    }

                    *v317 = *(v316 - 19);
                    *(v316 - 7) = *(v316 - 17);
                    *(v316 - 129) = 0;
                    *(v316 - 152) = 0;
                    *(v316 - 6) = *(v316 - 16);
                    v318 = (v316 - 5);
                    if (*(v316 - 17) < 0)
                    {
                      operator delete(*v318);
                    }

                    *v318 = *(v316 - 15);
                    *(v316 - 3) = *(v316 - 13);
                    *(v316 - 97) = 0;
                    *(v316 - 120) = 0;
                    std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v316 - 2);
                    *(v316 - 1) = *(v316 - 6);
                    v319 = v316 - 10;
                    *v316 = *(v316 - 10);
                    *(v316 - 10) = 0;
                    *(v316 - 12) = 0;
                    *(v316 - 11) = 0;
                    v320 = *(v316 - 209);
                    v321 = v316 - 29;
                    v322 = *(v316 - 29);
                    v323 = *(v316 - 28);
                    if (SHIBYTE(v354) >= 0)
                    {
                      v324 = HIBYTE(v354);
                    }

                    else
                    {
                      v324 = v353[1];
                    }

                    if (SHIBYTE(v354) >= 0)
                    {
                      v325 = v353;
                    }

                    else
                    {
                      v325 = v353[0];
                    }

                    if ((v320 & 0x80u) == 0)
                    {
                      v326 = v320;
                    }

                    else
                    {
                      v326 = v323;
                    }

                    if ((v320 & 0x80u) == 0)
                    {
                      v327 = v321;
                    }

                    else
                    {
                      v327 = v322;
                    }

                    if (v326 >= v324)
                    {
                      v328 = v324;
                    }

                    else
                    {
                      v328 = v326;
                    }

                    v329 = memcmp(v325, v327, v328);
                    v330 = v324 < v326;
                    if (v329)
                    {
                      v330 = v329 < 0;
                    }

                    v316 = v319;
                  }

                  while (v330);
                  v331 = (v319 - 9);
                  if (*(v319 - 49) < 0)
                  {
                    operator delete(*v331);
                  }

                  v332 = (v319 - 5);
                  v333 = *v353;
                  *(v319 - 7) = v354;
                  *v331 = v333;
                  HIBYTE(v354) = 0;
                  LOBYTE(v353[0]) = 0;
                  *(v319 - 6) = v355;
                  if (*(v319 - 17) < 0)
                  {
                    operator delete(*v332);
                  }

                  v334 = __p;
                  *(v319 - 3) = v357;
                  *v332 = v334;
                  HIBYTE(v357) = 0;
                  LOBYTE(__p) = 0;
                  std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v319 - 2);
                  *(v319 - 1) = v358[0];
                  *v319 = *&v358[1];
                  memset(v358, 0, 24);
                  v345[0] = v358;
                  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v345);
                  v311 = v341;
                  if (SHIBYTE(v357) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v354) < 0)
                  {
                    operator delete(v353[0]);
                  }
                }

                v298 = v300 + 10;
                v299 += 10;
                v8 = v300;
              }

              while (v300 + 10 != v311);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v7 != a2)
          {
            v174 = (v10 - 2) >> 1;
            v336 = v9;
            v175 = v174;
            v338 = v10;
            v343 = v174;
            do
            {
              v176 = v175;
              if (v174 >= v175)
              {
                v177 = (2 * v175) | 1;
                v178 = v344;
                v179 = v344 + 80 * v177;
                v180 = 2 * v175 + 2;
                v340 = v175;
                if (v180 >= v10)
                {
                  v193 = *v179;
                }

                else
                {
                  v181 = *(v179 + 103);
                  v182 = *(v179 + 80);
                  v183 = *(v179 + 23);
                  v184 = *v179;
                  if (v183 >= 0)
                  {
                    v185 = *(v179 + 23);
                  }

                  else
                  {
                    v185 = *(v179 + 8);
                  }

                  if (v183 >= 0)
                  {
                    v186 = (v344 + 80 * v177);
                  }

                  else
                  {
                    v186 = *v179;
                  }

                  if (v181 >= 0)
                  {
                    v187 = *(v179 + 103);
                  }

                  else
                  {
                    v187 = *(v179 + 88);
                  }

                  if (v181 >= 0)
                  {
                    v188 = (v179 + 80);
                  }

                  else
                  {
                    v188 = *(v179 + 80);
                  }

                  if (v187 >= v185)
                  {
                    v189 = v185;
                  }

                  else
                  {
                    v189 = v187;
                  }

                  v190 = memcmp(v186, v188, v189);
                  v178 = v344;
                  v191 = v185 < v187;
                  if (v190)
                  {
                    v191 = v190 < 0;
                  }

                  v192 = !v191;
                  if (v191)
                  {
                    v193 = v182;
                  }

                  else
                  {
                    v193 = v184;
                  }

                  if (!v192)
                  {
                    v179 += 80;
                  }

                  v176 = v340;
                  if (!v192)
                  {
                    v177 = v180;
                  }
                }

                v194 = (v178 + 80 * v176);
                v195 = *(v194 + 23);
                v196 = *(v179 + 23);
                if (v196 >= 0)
                {
                  v197 = *(v179 + 23);
                }

                else
                {
                  v197 = *(v179 + 8);
                }

                if (v196 >= 0)
                {
                  v198 = v179;
                }

                else
                {
                  v198 = v193;
                }

                if (v195 >= 0)
                {
                  v199 = *(v194 + 23);
                }

                else
                {
                  v199 = v194[1];
                }

                if (v195 >= 0)
                {
                  v200 = v194;
                }

                else
                {
                  v200 = *v194;
                }

                if (v199 >= v197)
                {
                  v201 = v197;
                }

                else
                {
                  v201 = v199;
                }

                v202 = memcmp(v198, v200, v201);
                v203 = v197 < v199;
                if (v202)
                {
                  v203 = v202 < 0;
                }

                if (!v203)
                {
                  v204 = *v194;
                  v354 = v194[2];
                  *v353 = v204;
                  v194[1] = 0;
                  v194[2] = 0;
                  *v194 = 0;
                  v355 = v194[3];
                  v205 = *(v194 + 2);
                  v357 = v194[6];
                  __p = v205;
                  v194[5] = 0;
                  v194[6] = 0;
                  v194[4] = 0;
                  v358[0] = *(v194 + 7);
                  *&v358[1] = v194[9];
                  v194[7] = 0;
                  v194[8] = 0;
                  v194[9] = 0;
                  do
                  {
                    v206 = v179;
                    if (*(v194 + 23) < 0)
                    {
                      operator delete(*v194);
                    }

                    v207 = *v179;
                    v194[2] = *(v179 + 16);
                    *v194 = v207;
                    *(v179 + 23) = 0;
                    *v179 = 0;
                    v194[3] = *(v179 + 24);
                    if (*(v194 + 55) < 0)
                    {
                      operator delete(v194[4]);
                    }

                    v208 = *(v179 + 32);
                    v194[6] = *(v179 + 48);
                    *(v194 + 2) = v208;
                    *(v179 + 55) = 0;
                    *(v179 + 32) = 0;
                    std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v194 + 7);
                    *(v194 + 7) = *(v179 + 56);
                    v194[9] = *(v179 + 72);
                    *(v179 + 56) = 0;
                    *(v179 + 64) = 0;
                    *(v179 + 72) = 0;
                    if (v174 < v177)
                    {
                      break;
                    }

                    v209 = (2 * v177) | 1;
                    v179 = v344 + 80 * v209;
                    v177 = 2 * v177 + 2;
                    if (v177 >= v10)
                    {
                      v222 = *v179;
                      v177 = v209;
                    }

                    else
                    {
                      v210 = *(v179 + 103);
                      v211 = *(v179 + 80);
                      v212 = *(v179 + 23);
                      v213 = *v179;
                      if (v212 >= 0)
                      {
                        v214 = *(v179 + 23);
                      }

                      else
                      {
                        v214 = *(v179 + 8);
                      }

                      if (v212 >= 0)
                      {
                        v215 = (v344 + 80 * v209);
                      }

                      else
                      {
                        v215 = *v179;
                      }

                      if (v210 >= 0)
                      {
                        v216 = *(v179 + 103);
                      }

                      else
                      {
                        v216 = *(v179 + 88);
                      }

                      if (v210 >= 0)
                      {
                        v217 = (v179 + 80);
                      }

                      else
                      {
                        v217 = *(v179 + 80);
                      }

                      if (v216 >= v214)
                      {
                        v218 = v214;
                      }

                      else
                      {
                        v218 = v216;
                      }

                      v219 = memcmp(v215, v217, v218);
                      v73 = v214 >= v216;
                      v10 = v338;
                      v220 = !v73;
                      if (v219)
                      {
                        v220 = v219 < 0;
                      }

                      v221 = !v220;
                      v222 = v220 ? v211 : v213;
                      v174 = v343;
                      if (v221)
                      {
                        v177 = v209;
                      }

                      else
                      {
                        v179 += 80;
                      }
                    }

                    v223 = *(v179 + 23);
                    if (v223 >= 0)
                    {
                      v224 = *(v179 + 23);
                    }

                    else
                    {
                      v224 = *(v179 + 8);
                    }

                    if (v223 >= 0)
                    {
                      v225 = v179;
                    }

                    else
                    {
                      v225 = v222;
                    }

                    if (SHIBYTE(v354) >= 0)
                    {
                      v226 = HIBYTE(v354);
                    }

                    else
                    {
                      v226 = v353[1];
                    }

                    if (SHIBYTE(v354) >= 0)
                    {
                      v227 = v353;
                    }

                    else
                    {
                      v227 = v353[0];
                    }

                    if (v226 >= v224)
                    {
                      v228 = v224;
                    }

                    else
                    {
                      v228 = v226;
                    }

                    v229 = memcmp(v225, v227, v228);
                    v230 = v224 < v226;
                    if (v229)
                    {
                      v230 = v229 < 0;
                    }

                    v194 = v206;
                  }

                  while (!v230);
                  if (*(v206 + 23) < 0)
                  {
                    operator delete(*v206);
                  }

                  v231 = *v353;
                  *(v206 + 16) = v354;
                  *v206 = v231;
                  HIBYTE(v354) = 0;
                  LOBYTE(v353[0]) = 0;
                  *(v206 + 24) = v355;
                  if (*(v206 + 55) < 0)
                  {
                    operator delete(*(v206 + 32));
                  }

                  v232 = __p;
                  *(v206 + 48) = v357;
                  *(v206 + 32) = v232;
                  HIBYTE(v357) = 0;
                  LOBYTE(__p) = 0;
                  std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v206 + 56));
                  *(v206 + 56) = v358[0];
                  *(v206 + 72) = *&v358[1];
                  memset(v358, 0, 24);
                  v345[0] = v358;
                  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v345);
                  if (SHIBYTE(v357) < 0)
                  {
                    operator delete(__p);
                  }

                  v176 = v340;
                  if (SHIBYTE(v354) < 0)
                  {
                    operator delete(v353[0]);
                  }
                }
              }

              v175 = v176 - 1;
            }

            while (v176);
            v233 = 0xCCCCCCCCCCCCCCCDLL * (v336 >> 4);
            v234 = v341;
            v235 = v344;
            do
            {
              v236 = 0;
              v237 = *v235;
              v238 = *(v235 + 24);
              v346 = *(v235 + 16);
              *v345 = v237;
              *(v235 + 8) = 0;
              *(v235 + 16) = 0;
              *v235 = 0;
              v347 = v238;
              v239 = *(v235 + 48);
              v348 = *(v235 + 32);
              v349 = v239;
              *(v235 + 40) = 0;
              *(v235 + 48) = 0;
              *(v235 + 32) = 0;
              v350 = *(v235 + 56);
              v351 = *(v235 + 72);
              *(v235 + 56) = 0;
              *(v235 + 64) = 0;
              v240 = v235;
              *(v235 + 72) = 0;
              do
              {
                v241 = &v240[5 * v236];
                v242 = v241 + 5;
                v243 = (2 * v236) | 1;
                v236 = 2 * v236 + 2;
                if (v236 >= v233)
                {
                  v236 = v243;
                }

                else
                {
                  v246 = *(v241 + 20);
                  v245 = v241 + 10;
                  v244 = v246;
                  v247 = *(v245 + 23);
                  v248 = *(v245 - 57);
                  if (v248 >= 0)
                  {
                    v249 = *(v245 - 57);
                  }

                  else
                  {
                    v249 = *(v245 - 9);
                  }

                  if (v248 >= 0)
                  {
                    v250 = v242;
                  }

                  else
                  {
                    v250 = *(v245 - 10);
                  }

                  if (v247 >= 0)
                  {
                    v251 = *(v245 + 23);
                  }

                  else
                  {
                    v251 = *(v245 + 1);
                  }

                  if (v247 >= 0)
                  {
                    v252 = v245;
                  }

                  else
                  {
                    v252 = v244;
                  }

                  if (v251 >= v249)
                  {
                    v253 = v249;
                  }

                  else
                  {
                    v253 = v251;
                  }

                  v254 = memcmp(v250, v252, v253);
                  v255 = v249 < v251;
                  if (v254)
                  {
                    v255 = v254 < 0;
                  }

                  if (v255)
                  {
                    v242 = v245;
                  }

                  else
                  {
                    v236 = v243;
                  }
                }

                if (*(v240 + 23) < 0)
                {
                  operator delete(*v240);
                }

                v256 = *v242;
                *(v240 + 2) = *(v242 + 2);
                *v240 = v256;
                *(v242 + 23) = 0;
                *v242 = 0;
                *(v240 + 3) = *(v242 + 3);
                if (*(v240 + 55) < 0)
                {
                  operator delete(*(v240 + 4));
                }

                v257 = v242[2];
                *(v240 + 6) = *(v242 + 6);
                v240[2] = v257;
                *(v242 + 55) = 0;
                *(v242 + 32) = 0;
                std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v240 + 7);
                *(v240 + 56) = *(v242 + 56);
                *(v240 + 9) = *(v242 + 9);
                *(v242 + 7) = 0;
                *(v242 + 8) = 0;
                *(v242 + 9) = 0;
                v240 = v242;
              }

              while (v236 <= ((v233 - 2) >> 1));
              v258 = (v234 - 10);
              v259 = *(v242 + 23);
              if (v242 == (v234 - 10))
              {
                if (v259 < 0)
                {
                  operator delete(*v242);
                }

                v295 = *v345;
                *(v242 + 2) = v346;
                *v242 = v295;
                HIBYTE(v346) = 0;
                LOBYTE(v345[0]) = 0;
                *(v242 + 3) = v347;
                if (*(v242 + 55) < 0)
                {
                  operator delete(*(v242 + 4));
                }

                v296 = v348;
                *(v242 + 6) = v349;
                v242[2] = v296;
                HIBYTE(v349) = 0;
                LOBYTE(v348) = 0;
                std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v242 + 7);
                *(v242 + 56) = v350;
                *(v242 + 9) = v351;
                v350 = 0uLL;
                v351 = 0;
              }

              else
              {
                if (v259 < 0)
                {
                  operator delete(*v242);
                }

                v260 = *v258;
                *(v242 + 2) = *(v234 - 8);
                *v242 = v260;
                *(v234 - 57) = 0;
                *(v234 - 80) = 0;
                *(v242 + 3) = *(v234 - 7);
                if (*(v242 + 55) < 0)
                {
                  operator delete(*(v242 + 4));
                }

                v261 = *(v234 - 3);
                *(v242 + 6) = *(v234 - 4);
                v242[2] = v261;
                *(v234 - 25) = 0;
                *(v234 - 48) = 0;
                std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v242 + 7);
                v262 = v234 - 3;
                *(v242 + 56) = *(v234 - 3);
                *(v242 + 9) = *(v234 - 1);
                *v262 = 0;
                v262[1] = 0;
                v262[2] = 0;
                if (*(v234 - 57) < 0)
                {
                  operator delete(*v258);
                }

                v263 = (v234 - 6);
                v264 = *v345;
                *(v234 - 8) = v346;
                *v258 = v264;
                HIBYTE(v346) = 0;
                LOBYTE(v345[0]) = 0;
                *(v234 - 7) = v347;
                if (*(v234 - 25) < 0)
                {
                  operator delete(*v263);
                }

                v265 = v348;
                *(v234 - 4) = v349;
                *v263 = v265;
                HIBYTE(v349) = 0;
                LOBYTE(v348) = 0;
                std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v234 - 3);
                *(v234 - 3) = v350;
                *(v234 - 1) = v351;
                v350 = 0uLL;
                v351 = 0;
                v266 = v242 - v344 + 80;
                if (v266 >= 81)
                {
                  v267 = (-2 - 0x3333333333333333 * (v266 >> 4)) >> 1;
                  v268 = v344 + 80 * v267;
                  v269 = *(v242 + 23);
                  v270 = *(v268 + 23);
                  if (v270 >= 0)
                  {
                    v271 = *(v268 + 23);
                  }

                  else
                  {
                    v271 = *(v268 + 8);
                  }

                  if (v270 >= 0)
                  {
                    v272 = (v344 + 80 * v267);
                  }

                  else
                  {
                    v272 = *v268;
                  }

                  if (v269 >= 0)
                  {
                    v273 = *(v242 + 23);
                  }

                  else
                  {
                    v273 = *(v242 + 1);
                  }

                  if (v269 >= 0)
                  {
                    v274 = v242;
                  }

                  else
                  {
                    v274 = *v242;
                  }

                  if (v273 >= v271)
                  {
                    v275 = v271;
                  }

                  else
                  {
                    v275 = v273;
                  }

                  v276 = memcmp(v272, v274, v275);
                  v277 = v271 < v273;
                  if (v276)
                  {
                    v277 = v276 < 0;
                  }

                  if (v277)
                  {
                    v278 = *v242;
                    v279 = *(v242 + 3);
                    v354 = *(v242 + 2);
                    *v353 = v278;
                    *(v242 + 1) = 0;
                    *(v242 + 2) = 0;
                    *v242 = 0;
                    v280 = v242[2];
                    v357 = *(v242 + 6);
                    __p = v280;
                    *(v242 + 5) = 0;
                    *(v242 + 6) = 0;
                    *(v242 + 4) = 0;
                    v358[0] = *(v242 + 56);
                    v281 = *(v242 + 9);
                    v355 = v279;
                    *&v358[1] = v281;
                    *(v242 + 7) = 0;
                    *(v242 + 8) = 0;
                    if (SHIBYTE(v354) >= 0)
                    {
                      v282 = HIBYTE(v354);
                    }

                    else
                    {
                      v282 = v353[1];
                    }

                    if (SHIBYTE(v354) >= 0)
                    {
                      v283 = v353;
                    }

                    else
                    {
                      v283 = v353[0];
                    }

                    *(v242 + 9) = 0;
                    do
                    {
                      v284 = v268;
                      if (*(v242 + 23) < 0)
                      {
                        operator delete(*v242);
                      }

                      v285 = *v268;
                      *(v242 + 2) = *(v268 + 16);
                      *v242 = v285;
                      *(v268 + 23) = 0;
                      *v268 = 0;
                      *(v242 + 3) = *(v268 + 24);
                      if (*(v242 + 55) < 0)
                      {
                        operator delete(*(v242 + 4));
                      }

                      v286 = *(v268 + 32);
                      *(v242 + 6) = *(v268 + 48);
                      v242[2] = v286;
                      *(v268 + 55) = 0;
                      *(v268 + 32) = 0;
                      std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v242 + 7);
                      *(v242 + 56) = *(v268 + 56);
                      *(v242 + 9) = *(v268 + 72);
                      *(v268 + 56) = 0;
                      *(v268 + 64) = 0;
                      *(v268 + 72) = 0;
                      if (!v267)
                      {
                        break;
                      }

                      v267 = (v267 - 1) >> 1;
                      v268 = v344 + 80 * v267;
                      v287 = *(v268 + 23);
                      if (v287 >= 0)
                      {
                        v288 = *(v268 + 23);
                      }

                      else
                      {
                        v288 = *(v268 + 8);
                      }

                      if (v287 >= 0)
                      {
                        v289 = (v344 + 80 * v267);
                      }

                      else
                      {
                        v289 = *v268;
                      }

                      if (v282 >= v288)
                      {
                        v290 = v288;
                      }

                      else
                      {
                        v290 = v282;
                      }

                      v291 = memcmp(v289, v283, v290);
                      v292 = v288 < v282;
                      if (v291)
                      {
                        v292 = v291 < 0;
                      }

                      v242 = v284;
                    }

                    while (v292);
                    if (*(v284 + 23) < 0)
                    {
                      operator delete(*v284);
                    }

                    v293 = *v353;
                    *(v284 + 16) = v354;
                    *v284 = v293;
                    HIBYTE(v354) = 0;
                    LOBYTE(v353[0]) = 0;
                    *(v284 + 24) = v355;
                    if (*(v284 + 55) < 0)
                    {
                      operator delete(*(v284 + 32));
                    }

                    v294 = __p;
                    *(v284 + 48) = v357;
                    *(v284 + 32) = v294;
                    HIBYTE(v357) = 0;
                    LOBYTE(__p) = 0;
                    std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v284 + 56));
                    *(v284 + 56) = v358[0];
                    *(v284 + 72) = *&v358[1];
                    memset(v358, 0, 24);
                    v352 = v358;
                    std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v352);
                    if (SHIBYTE(v357) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v354) < 0)
                    {
                      operator delete(v353[0]);
                    }
                  }
                }
              }

              v353[0] = &v350;
              std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v353);
              if (SHIBYTE(v349) < 0)
              {
                operator delete(v348);
              }

              v234 = v258;
              v235 = v344;
              if (SHIBYTE(v346) < 0)
              {
                operator delete(v345[0]);
              }
            }

            while (v233-- > 2);
          }

          return;
        }

        v11 = v10 >> 1;
        v12 = (v7 + 80 * (v10 >> 1));
        if (v9 < 0x2801)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v12, v7, v342);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7, v12, v342);
          v13 = 5 * v11;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7 + 80, v7 + 16 * v13 - 80, v337);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7 + 160, v7 + 80 + 16 * v13, v335);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(v7 + 16 * v13 - 80, v12, (v7 + 80 + 16 * v13));
          std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(v7, v12);
        }

        --a3;
        if (a4)
        {
          break;
        }

        v14 = *(v7 + 23);
        v15 = *(v7 - 57);
        if (v15 >= 0)
        {
          v16 = *(v7 - 57);
        }

        else
        {
          v16 = *(v7 - 72);
        }

        if (v15 >= 0)
        {
          v17 = (v7 - 80);
        }

        else
        {
          v17 = *(v7 - 80);
        }

        if (v14 >= 0)
        {
          v18 = *(v7 + 23);
        }

        else
        {
          v18 = *(v7 + 8);
        }

        if (v14 >= 0)
        {
          v19 = v7;
        }

        else
        {
          v19 = *v7;
        }

        if (v18 >= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v18;
        }

        v21 = memcmp(v17, v19, v20);
        v22 = v16 < v18;
        if (v21)
        {
          v22 = v21 < 0;
        }

        if (v22)
        {
          break;
        }

        v75 = *v7;
        v76 = *(v7 + 24);
        v354 = *(v7 + 16);
        *v353 = v75;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        v77 = *(v7 + 32);
        v357 = *(v7 + 48);
        __p = v77;
        *(v7 + 48) = 0;
        v78 = (v7 + 56);
        v79 = *(v7 + 56);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v358[0] = v79;
        v80 = *(v7 + 72);
        v355 = v76;
        *&v358[1] = v80;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        v81 = *(a2 - 57);
        if (SHIBYTE(v354) >= 0)
        {
          v82 = HIBYTE(v354);
        }

        else
        {
          v82 = v353[1];
        }

        if (SHIBYTE(v354) >= 0)
        {
          v83 = v353;
        }

        else
        {
          v83 = v353[0];
        }

        if (v81 >= 0)
        {
          v84 = *(a2 - 57);
        }

        else
        {
          v84 = *(a2 - 9);
        }

        if (v81 >= 0)
        {
          v85 = v342;
        }

        else
        {
          v85 = *(a2 - 10);
        }

        if (v84 >= v82)
        {
          v86 = v82;
        }

        else
        {
          v86 = v84;
        }

        v87 = memcmp(v83, v85, v86);
        v88 = v82 < v84;
        if (v87)
        {
          v88 = v87 < 0;
        }

        if (v88)
        {
          v89 = (v7 + 80);
          do
          {
            v90 = *(v89 + 23);
            if (v90 >= 0)
            {
              v91 = *(v89 + 23);
            }

            else
            {
              v91 = v89[1];
            }

            if (v90 >= 0)
            {
              v92 = v89;
            }

            else
            {
              v92 = *v89;
            }

            if (v91 >= v82)
            {
              v93 = v82;
            }

            else
            {
              v93 = v91;
            }

            v94 = memcmp(v83, v92, v93);
            v95 = v82 < v91;
            if (v94)
            {
              v95 = v94 < 0;
            }

            v89 += 10;
          }

          while (!v95);
          v7 = (v89 - 10);
        }

        else
        {
          v96 = (v7 + 80);
          do
          {
            v7 = v96;
            if (v96 >= v341)
            {
              break;
            }

            v97 = *(v96 + 23);
            if (v97 >= 0)
            {
              v98 = *(v96 + 23);
            }

            else
            {
              v98 = v96[1];
            }

            if (v97 >= 0)
            {
              v99 = v96;
            }

            else
            {
              v99 = *v96;
            }

            if (v98 >= v82)
            {
              v100 = v82;
            }

            else
            {
              v100 = v98;
            }

            v101 = memcmp(v83, v99, v100);
            v102 = v101 < 0;
            if (!v101)
            {
              v102 = v82 < v98;
            }

            v96 = (v7 + 80);
          }

          while (!v102);
        }

        v103 = v341;
        if (v7 < v341)
        {
          v104 = v342;
          do
          {
            v105 = *(v104 + 23);
            if (v105 >= 0)
            {
              v106 = *(v104 + 23);
            }

            else
            {
              v106 = v104[1];
            }

            if (v105 >= 0)
            {
              v107 = v104;
            }

            else
            {
              v107 = *v104;
            }

            if (v106 >= v82)
            {
              v108 = v82;
            }

            else
            {
              v108 = v106;
            }

            v109 = memcmp(v83, v107, v108);
            v110 = v82 < v106;
            if (v109)
            {
              v110 = v109 < 0;
            }

            v104 -= 10;
          }

          while (v110);
          goto LABEL_190;
        }

        while (v7 < v103)
        {
          std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(v7, v103);
          v111 = (v7 + 80);
          do
          {
            v112 = *(v111 + 23);
            if (v112 >= 0)
            {
              v113 = *(v111 + 23);
            }

            else
            {
              v113 = v111[1];
            }

            if (v112 >= 0)
            {
              v114 = v111;
            }

            else
            {
              v114 = *v111;
            }

            if (v113 >= v82)
            {
              v115 = v82;
            }

            else
            {
              v115 = v113;
            }

            v116 = memcmp(v83, v114, v115);
            v117 = v82 < v113;
            if (v116)
            {
              v117 = v116 < 0;
            }

            v111 += 10;
          }

          while (!v117);
          v7 = (v111 - 10);
          v104 = (v103 - 5);
          do
          {
            v118 = *(v104 + 23);
            if (v118 >= 0)
            {
              v119 = *(v104 + 23);
            }

            else
            {
              v119 = v104[1];
            }

            if (v118 >= 0)
            {
              v120 = v104;
            }

            else
            {
              v120 = *v104;
            }

            if (v119 >= v82)
            {
              v121 = v82;
            }

            else
            {
              v121 = v119;
            }

            v122 = memcmp(v83, v120, v121);
            v123 = v82 < v119;
            if (v122)
            {
              v123 = v122 < 0;
            }

            v104 -= 10;
          }

          while (v123);
LABEL_190:
          v103 = (v104 + 10);
        }

        v124 = (v7 - 80);
        if (v7 - 80 != v344)
        {
          if (*(v344 + 23) < 0)
          {
            operator delete(*v344);
          }

          v125 = *v124;
          *(v344 + 16) = *(v7 - 64);
          *v344 = v125;
          *(v7 - 57) = 0;
          *(v7 - 80) = 0;
          *(v344 + 24) = *(v7 - 56);
          if (*(v344 + 55) < 0)
          {
            operator delete(*(v344 + 32));
          }

          v126 = *(v7 - 48);
          *(v344 + 48) = *(v7 - 32);
          *(v344 + 32) = v126;
          *(v7 - 25) = 0;
          *(v7 - 48) = 0;
          std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v78);
          *(v344 + 56) = *(v7 - 24);
          *(v344 + 72) = *(v7 - 8);
          *(v7 - 24) = 0;
          *(v7 - 16) = 0;
          *(v7 - 8) = 0;
        }

        if (*(v7 - 57) < 0)
        {
          operator delete(*v124);
        }

        v127 = *v353;
        *(v7 - 64) = v354;
        *v124 = v127;
        HIBYTE(v354) = 0;
        LOBYTE(v353[0]) = 0;
        *(v7 - 56) = v355;
        v128 = (v7 - 48);
        a2 = v341;
        if (*(v7 - 25) < 0)
        {
          operator delete(*v128);
        }

        v129 = __p;
        *(v7 - 32) = v357;
        *v128 = v129;
        HIBYTE(v357) = 0;
        LOBYTE(__p) = 0;
        std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v7 - 24));
        *(v7 - 24) = v358[0];
        *(v7 - 8) = *&v358[1];
        memset(v358, 0, 24);
        v345[0] = v358;
        std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v345);
        if (SHIBYTE(v357) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v354) < 0)
        {
          operator delete(v353[0]);
        }

LABEL_129:
        a4 = 0;
      }

      v23 = 0;
      v24 = *v7;
      v25 = *(v7 + 24);
      v354 = *(v7 + 16);
      *v353 = v24;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v26 = *(v7 + 32);
      v357 = *(v7 + 48);
      __p = v26;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v27 = (v7 + 56);
      v358[0] = *(v7 + 56);
      v28 = *(v7 + 72);
      v355 = v25;
      *&v358[1] = v28;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      if (SHIBYTE(v354) >= 0)
      {
        v29 = HIBYTE(v354);
      }

      else
      {
        v29 = v353[1];
      }

      if (SHIBYTE(v354) >= 0)
      {
        v30 = v353;
      }

      else
      {
        v30 = v353[0];
      }

      *(v7 + 72) = 0;
      do
      {
        v31 = *(v7 + v23 + 103);
        if (v31 >= 0)
        {
          v32 = *(v7 + v23 + 103);
        }

        else
        {
          v32 = *(v7 + v23 + 88);
        }

        if (v31 >= 0)
        {
          v33 = (v7 + v23 + 80);
        }

        else
        {
          v33 = *(v7 + v23 + 80);
        }

        if (v29 >= v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = v29;
        }

        v35 = memcmp(v33, v30, v34);
        v36 = v32 < v29;
        if (v35)
        {
          v36 = v35 < 0;
        }

        v23 += 80;
      }

      while (v36);
      v37 = v7 + v23;
      v38 = v342;
      if (v23 == 80)
      {
        v38 = v342;
        while (1)
        {
          v45 = (v38 + 10);
          if (v37 >= (v38 + 10))
          {
            break;
          }

          v46 = *(v38 + 23);
          if (v46 >= 0)
          {
            v47 = *(v38 + 23);
          }

          else
          {
            v47 = v38[1];
          }

          if (v46 >= 0)
          {
            v48 = v38;
          }

          else
          {
            v48 = *v38;
          }

          if (v29 >= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v29;
          }

          v50 = memcmp(v48, v30, v49);
          v51 = v47 < v29;
          if (v50)
          {
            v51 = v50 < 0;
          }

          v38 -= 10;
          if (v51)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        do
        {
          v39 = *(v38 + 23);
          if (v39 >= 0)
          {
            v40 = *(v38 + 23);
          }

          else
          {
            v40 = v38[1];
          }

          if (v39 >= 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = *v38;
          }

          if (v29 >= v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = v29;
          }

          v43 = memcmp(v41, v30, v42);
          v44 = v40 < v29;
          if (v43)
          {
            v44 = v43 < 0;
          }

          v38 -= 10;
        }

        while (!v44);
LABEL_80:
        v45 = (v38 + 10);
      }

      v7 = v37;
      if (v37 < v45)
      {
        v52 = v45;
        do
        {
          std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(v7, v52);
          v53 = (v7 + 80);
          do
          {
            v54 = *(v53 + 23);
            if (v54 >= 0)
            {
              v55 = *(v53 + 23);
            }

            else
            {
              v55 = v53[1];
            }

            if (v54 >= 0)
            {
              v56 = v53;
            }

            else
            {
              v56 = *v53;
            }

            if (v29 >= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v29;
            }

            v58 = memcmp(v56, v30, v57);
            v59 = v55 < v29;
            if (v58)
            {
              v59 = v58 < 0;
            }

            v53 += 10;
          }

          while (v59);
          v7 = (v53 - 10);
          v60 = (v52 - 5);
          do
          {
            v61 = *(v60 + 23);
            if (v61 >= 0)
            {
              v62 = *(v60 + 23);
            }

            else
            {
              v62 = v60[1];
            }

            if (v61 >= 0)
            {
              v63 = v60;
            }

            else
            {
              v63 = *v60;
            }

            if (v29 >= v62)
            {
              v64 = v62;
            }

            else
            {
              v64 = v29;
            }

            v65 = memcmp(v63, v30, v64);
            v66 = v62 < v29;
            if (v65)
            {
              v66 = v65 < 0;
            }

            v60 -= 10;
          }

          while (!v66);
          v52 = (v60 + 10);
        }

        while (v7 < v52);
      }

      v67 = (v7 - 80);
      if (v7 - 80 != v344)
      {
        if (*(v344 + 23) < 0)
        {
          operator delete(*v344);
        }

        v68 = *v67;
        *(v344 + 16) = *(v7 - 64);
        *v344 = v68;
        *(v7 - 57) = 0;
        *(v7 - 80) = 0;
        *(v344 + 24) = *(v7 - 56);
        if (*(v344 + 55) < 0)
        {
          operator delete(*(v344 + 32));
        }

        v69 = *(v7 - 48);
        *(v344 + 48) = *(v7 - 32);
        *(v344 + 32) = v69;
        *(v7 - 25) = 0;
        *(v7 - 48) = 0;
        std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v27);
        *(v344 + 56) = *(v7 - 24);
        *(v344 + 72) = *(v7 - 8);
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        *(v7 - 8) = 0;
      }

      if (*(v7 - 57) < 0)
      {
        operator delete(*v67);
      }

      v70 = *v353;
      *(v7 - 64) = v354;
      *v67 = v70;
      HIBYTE(v354) = 0;
      LOBYTE(v353[0]) = 0;
      *(v7 - 56) = v355;
      v71 = (v7 - 48);
      if (*(v7 - 25) < 0)
      {
        operator delete(*v71);
      }

      v72 = __p;
      *(v7 - 32) = v357;
      *v71 = v72;
      HIBYTE(v357) = 0;
      LOBYTE(__p) = 0;
      std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v7 - 24));
      *(v7 - 24) = v358[0];
      *(v7 - 8) = *&v358[1];
      memset(v358, 0, 24);
      v345[0] = v358;
      std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](v345);
      if (SHIBYTE(v357) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v354) < 0)
      {
        operator delete(v353[0]);
      }

      v73 = v37 >= v45;
      a2 = v341;
      a1 = v344;
      if (!v73)
      {
LABEL_128:
        std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,false>(v344, v7 - 80, a3, a4 & 1);
        goto LABEL_129;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *>(v344, (v7 - 80));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *>(v7, v341))
      {
        break;
      }

      if (!v74)
      {
        goto LABEL_128;
      }
    }

    a2 = (v7 - 80);
    if (!v74)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v14)
  {
    v21 = a1;
    if (v20)
    {
LABEL_51:
      v31 = a3;
LABEL_72:

      std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(v21, v31);
      return;
    }

    std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a1, a2);
    v22 = *(a2 + 23);
    v23 = *(a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    if (v23 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v22 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = *(a2 + 8);
    }

    if (v22 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v21 = a2;
      goto LABEL_51;
    }
  }

  else if (v20)
  {
    std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a2, a3);
    v32 = *(a1 + 23);
    v33 = *(a2 + 23);
    if (v33 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 8);
    }

    if (v33 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v32 >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = *(a1 + 8);
    }

    if (v32 >= 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = *a1;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      v21 = a1;
      v31 = a2;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a3, a4);
    v17 = *(a2 + 23);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    if (v18 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a2, a3);
      v26 = *(a1 + 23);
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      if (v27 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {

        std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a4, a5);
    v19 = *(a3 + 23);
    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = *(a4 + 23);
    }

    else
    {
      v21 = *(a4 + 8);
    }

    if (v20 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a3, a4);
      v28 = *(a2 + 23);
      v29 = *(a3 + 23);
      if (v29 >= 0)
      {
        v30 = *(a3 + 23);
      }

      else
      {
        v30 = *(a3 + 8);
      }

      if (v29 >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 8);
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a2, a3);
        v37 = *(a1 + 23);
        v38 = *(a2 + 23);
        if (v38 >= 0)
        {
          v39 = *(a2 + 23);
        }

        else
        {
          v39 = *(a2 + 8);
        }

        if (v38 >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = *a2;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {

          std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *>(uint64_t a1, const void **a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v6 = (a2 - 10);
        v5 = *(a2 - 10);
        v7 = *(a1 + 23);
        v8 = *(a2 - 57);
        if (v8 >= 0)
        {
          v9 = *(a2 - 57);
        }

        else
        {
          v9 = *(a2 - 9);
        }

        if (v8 >= 0)
        {
          v10 = a2 - 10;
        }

        else
        {
          v10 = *(a2 - 10);
        }

        if (v7 >= 0)
        {
          v11 = *(a1 + 23);
        }

        else
        {
          v11 = *(a1 + 8);
        }

        if (v7 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(v10, v12, v13);
        v15 = v9 < v11;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(a1, v6);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a1 + 80, a2 - 10);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a1 + 80, a1 + 160, a2 - 10);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 10);
      return 1;
  }

LABEL_28:
  v16 = (a1 + 160);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,0>(a1, a1 + 80, (a1 + 160));
  v17 = (a1 + 240);
  if ((a1 + 240) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v16 + 23);
    v21 = *(v17 + 23);
    if (v21 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = v17[1];
    }

    if (v21 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v20 >= 0)
    {
      v24 = *(v16 + 23);
    }

    else
    {
      v24 = v16[1];
    }

    if (v20 >= 0)
    {
      v25 = v16;
    }

    else
    {
      v25 = *v16;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      *v48 = *v17;
      v29 = v17[2];
      v30 = v17[3];
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      v49 = v29;
      v50 = v30;
      __p = *(v17 + 2);
      v52 = v17[6];
      v17[4] = 0;
      v17[5] = 0;
      v53[0] = *(v17 + 7);
      *&v53[1] = v17[9];
      v17[8] = 0;
      v17[9] = 0;
      v31 = v18;
      v17[6] = 0;
      v17[7] = 0;
      while (1)
      {
        v32 = a1 + v31;
        if (*(a1 + v31 + 263) < 0)
        {
          operator delete(*(v32 + 240));
        }

        *(v32 + 240) = *(v32 + 160);
        v33 = *(v32 + 176);
        v34 = *(v32 + 184);
        *(v32 + 183) = 0;
        *(v32 + 160) = 0;
        *(v32 + 256) = v33;
        *(v32 + 264) = v34;
        if (*(v32 + 295) < 0)
        {
          operator delete(*(v32 + 272));
        }

        v35 = a1 + v31;
        *(v32 + 272) = *(a1 + v31 + 192);
        *(v32 + 288) = *(a1 + v31 + 208);
        *(v35 + 215) = 0;
        *(v35 + 192) = 0;
        std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((a1 + v31 + 296));
        *(a1 + v31 + 296) = *(a1 + v31 + 216);
        *(v35 + 312) = *(v35 + 232);
        *(v35 + 224) = 0;
        *(v35 + 232) = 0;
        *(v35 + 216) = 0;
        if (v31 == -160)
        {
          break;
        }

        v36 = *(v35 + 103);
        if (v49 >= 0)
        {
          v37 = HIBYTE(v49);
        }

        else
        {
          v37 = v48[1];
        }

        if (v49 >= 0)
        {
          v38 = v48;
        }

        else
        {
          v38 = v48[0];
        }

        if (v36 >= 0)
        {
          v39 = *(v35 + 103);
        }

        else
        {
          v39 = *(v35 + 88);
        }

        if (v36 >= 0)
        {
          v40 = (v35 + 80);
        }

        else
        {
          v40 = *(v35 + 80);
        }

        if (v39 >= v37)
        {
          v41 = v37;
        }

        else
        {
          v41 = v39;
        }

        v42 = memcmp(v38, v40, v41);
        v43 = v37 < v39;
        if (v42)
        {
          v43 = v42 < 0;
        }

        v31 -= 80;
        if (!v43)
        {
          v44 = a1 + v31 + 240;
          goto LABEL_74;
        }
      }

      v44 = a1;
LABEL_74:
      if (*(v44 + 23) < 0)
      {
        operator delete(*v44);
      }

      *v44 = *v48;
      v45 = v49;
      v46 = v50;
      HIBYTE(v49) = 0;
      LOBYTE(v48[0]) = 0;
      *(v44 + 16) = v45;
      *(v44 + 24) = v46;
      if (*(v44 + 55) < 0)
      {
        operator delete(*(v35 + 192));
      }

      *(v35 + 192) = __p;
      *(v35 + 208) = v52;
      HIBYTE(v52) = 0;
      LOBYTE(__p) = 0;
      std::vector<siri::intelligence::FunctionArgument>::__vdeallocate((v35 + 216));
      *(v35 + 216) = *&v53[0];
      *(v44 + 64) = *(v53 + 8);
      memset(v53, 0, 24);
      v54 = v53;
      std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v54);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (++v19 == 8)
      {
        return v17 + 10 == a2;
      }
    }

    v16 = v17;
    v18 += 80;
    v17 += 10;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void std::swap[abi:ne200100]<siri::intelligence::FunctionDefinition>(uint64_t a1, __int128 *a2)
{
  *v13 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = v4;
  *__p = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = (a1 + 56);
  v8 = *(a1 + 56);
  v16 = v6;
  v17 = v8;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v18 = v9;
  v19 = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v11;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v12 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v12;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(v7);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v13;
  *(a2 + 2) = v14;
  *(a2 + 3) = v5;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 4));
  }

  a2[2] = *__p;
  *(a2 + 6) = v16;
  std::vector<siri::intelligence::FunctionArgument>::__vdeallocate(a2 + 7);
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = &v17;
  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v20);
}

void std::vector<siri::intelligence::FunctionDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::allocator_traits<std::allocator<siri::intelligence::FunctionDescription>>::destroy[abi:ne200100]<siri::intelligence::FunctionDescription,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<siri::intelligence::FunctionDescription>>::destroy[abi:ne200100]<siri::intelligence::FunctionDescription,0>(uint64_t a1)
{
  v3 = (a1 + 48);
  std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<siri::intelligence::FunctionDescription>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<siri::intelligence::FunctionDescription>>::destroy[abi:ne200100]<siri::intelligence::FunctionDescription,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void siri::intelligence::BehaviorHandler::GetAllDescriptions(uint64_t a1@<X8>)
{
  siri::intelligence::GetBehaviorDefinitions(&v28);
  v3 = 126 - 2 * __clz((v29 - v28) >> 6);
  if (v29 == v28)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::BehaviorHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::BehaviorDefinition *,false>(v28, v29, v4, 1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = v28;
  for (i = v29; v5 != i; v5 += 8)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v25 = 0;
    v26 = 0;
    v27 = 0;
    std::string::operator=(&__p, v5);
    if (&v25 != (v5 + 4))
    {
      std::vector<siri::intelligence::BehaviorArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(&v25, v5[4], v5[5], 0x6DB6DB6DB6DB6DB7 * ((v5[5] - v5[4]) >> 3));
    }

    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
      v11 = v10 + 1;
      if (v10 + 1 > 0x555555555555555)
      {
        std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v11;
      }

      v34 = a1;
      if (v13)
      {
        if (v13 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = 48 * v10;
      v30 = 0;
      v31 = 48 * v10;
      v32 = 48 * v10;
      v33 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((48 * v10), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        *v15 = *&__p.__r_.__value_.__l.__data_;
        *(48 * v10 + 0x10) = *(&__p.__r_.__value_.__l + 2);
      }

      *(48 * v10 + 0x18) = 0;
      *(48 * v10 + 0x20) = 0;
      *(48 * v10 + 0x28) = 0;
      std::vector<siri::intelligence::BehaviorArgument>::__init_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(v15 + 24, v25, v26, 0x6DB6DB6DB6DB6DB7 * ((v26 - v25) >> 3));
      v16 = v32;
      v18 = *a1;
      v17 = *(a1 + 8);
      v19 = v31 + *a1 - v17;
      if (v17 != *a1)
      {
        v20 = *a1;
        v21 = v31 + *a1 - v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = v20[2];
          *v21 = v22;
          v20[1] = 0;
          v20[2] = 0;
          *v20 = 0;
          *(v21 + 24) = 0;
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
          *(v21 + 24) = *(v20 + 3);
          *(v21 + 40) = v20[5];
          v20[3] = 0;
          v20[4] = 0;
          v20[5] = 0;
          v20 += 6;
          v21 += 48;
        }

        while (v20 != v17);
        do
        {
          std::allocator<siri::intelligence::BehaviorDescription>::destroy[abi:ne200100](v18);
          v18 += 6;
        }

        while (v18 != v17);
        v18 = *a1;
      }

      v14 = v16 + 48;
      *a1 = v19;
      *(a1 + 8) = v16 + 48;
      v23 = *(a1 + 16);
      *(a1 + 16) = v33;
      v32 = v18;
      v33 = v23;
      v30 = v18;
      v31 = v18;
      std::__split_buffer<siri::intelligence::BehaviorDescription>::~__split_buffer(&v30);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(a1 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v9 = *&__p.__r_.__value_.__l.__data_;
        *(v8 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v8 = v9;
      }

      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      std::vector<siri::intelligence::BehaviorArgument>::__init_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(v8 + 24, v25, v26, 0x6DB6DB6DB6DB6DB7 * ((v26 - v25) >> 3));
      v14 = v8 + 48;
    }

    *(a1 + 8) = v14;
    v30 = &v25;
    std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v28;
  std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_254D0A8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__split_buffer<siri::intelligence::BehaviorDescription>::~__split_buffer(&a18);
  siri::intelligence::BehaviorDescription::~BehaviorDescription(&a9);
  std::vector<siri::intelligence::BehaviorDescription>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a15;
  std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::GetBehaviorDefinitions(uint64_t this)
{
  v1 = this;
  v11 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&_MergedGlobals_9);
    if (this)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, "setString");
      v9 = siri::intelligence::BehaviorSetString;
      std::string::basic_string[abi:ne200100]<0>(v3, "name");
      std::string::basic_string[abi:ne200100]<0>(v4, siri::intelligence::TYPE_REFERENCE[0]);
      v4[24] = 1;
      std::string::basic_string[abi:ne200100]<0>(v5, "value");
      std::string::basic_string[abi:ne200100]<0>(v6, siri::intelligence::TYPE_STRING[0]);
      v6[24] = 1;
      memset(v10, 0, sizeof(v10));
      std::vector<siri::intelligence::BehaviorArgument>::__init_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument const*,siri::intelligence::BehaviorArgument const*>(v10, v3, &v7, 2uLL);
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  v7 = v1;
  v8 = 0;
  if (qword_280AF43B8 != qword_280AF43B0)
  {
    if (((qword_280AF43B8 - qword_280AF43B0) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_254D0B7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = -1216;
  v70 = v67;
  do
  {
    siri::intelligence::BehaviorDefinition::~BehaviorDefinition(v70);
    v70 = (v71 - 64);
    v69 += 64;
  }

  while (v69);
  for (i = 112; i != -56; i -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&a11 + i));
  }

  for (j = 224; j != -56; j -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&a32 + j));
  }

  for (k = 56; k != -56; k -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&a67 + k));
  }

  for (m = 112; m != -56; m -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x240] + m));
  }

  for (n = 56; n != -56; n -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x2E8] + n));
  }

  siri::intelligence::TestParseError::~TestParseError(&STACK[0x358]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x390]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x3C8]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x400]);
  for (ii = 56; ii != -56; ii -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x438] + ii));
  }

  for (jj = 56; jj != -56; jj -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x4A8] + jj));
  }

  for (kk = 56; kk != -56; kk -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x518] + kk));
  }

  for (mm = 56; mm != -56; mm -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x588] + mm));
  }

  for (nn = 56; nn != -56; nn -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x5F8] + nn));
  }

  for (i1 = 56; i1 != -56; i1 -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x668] + i1));
  }

  for (i2 = 56; i2 != -56; i2 -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x6D8] + i2));
  }

  __cxa_guard_abort(&_MergedGlobals_9);
  _Unwind_Resume(a1);
}

void **std::vector<siri::intelligence::BehaviorDefinition>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void siri::intelligence::BehaviorHandler::Validate(uint64_t a1, const void **a2, siri::intelligence::ValidationResults *a3, const void **a4, void ***a5, uint64_t a6, int a7)
{
  siri::intelligence::GetBehaviorDefinitionsMap(&v225);
  v10 = std::__tree<std::string>::find<std::string>(&v225, a4);
  v11 = v10;
  if (&v226 == v10 || (*(v10 + 112) & 1) != 0)
  {
    goto LABEL_488;
  }

  if (a6)
  {
    v12 = a6 + 312;
  }

  else
  {
    v12 = 0;
  }

  *v204 = a4;
  if (*(v10 + 113) != 1)
  {
    if (!*a5)
    {
      goto LABEL_447;
    }

    v203 = a6;
    std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v224, *a5 + 9);
    v66 = v224.__r_.__value_.__r.__words[0];
    if (v224.__r_.__value_.__l.__data_ != &v224.__r_.__value_.__r.__words[1])
    {
      v67 = "";
      do
      {
        if (*(v66 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v223, *(v66 + 32), *(v66 + 40));
        }

        else
        {
          v223 = *(v66 + 32);
        }

        std::string::basic_string[abi:ne200100]<0>(&v211, v67);
        v68 = v67;
        std::string::basic_string[abi:ne200100]<0>(&v212, v67);
        v213 = 1;
        v70 = *(v11 + 88);
        v69 = *(v11 + 96);
        if (v70 != v69)
        {
          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v223.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v223.__r_.__value_.__l.__size_;
          }

          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v223;
          }

          else
          {
            v72 = v223.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v73 = *(v70 + 23);
            v74 = v73;
            if ((v73 & 0x80u) != 0)
            {
              v73 = *(v70 + 8);
            }

            if (v73 == size)
            {
              v75 = v74 >= 0 ? v70 : *v70;
              if (!memcmp(v75, v72, size))
              {
                break;
              }
            }

            v70 += 56;
            if (v70 == v69)
            {
              goto LABEL_171;
            }
          }

          std::string::operator=(&v211, v70);
          std::string::operator=(&v212, (v70 + 24));
          v213 = *(v70 + 48);
        }

LABEL_171:
        v76 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
        if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v76 = v211.__r_.__value_.__l.__size_;
        }

        if (!v76)
        {
          if (*(a2 + 23) >= 0)
          {
            v79 = *(a2 + 23);
          }

          else
          {
            v79 = a2[1];
          }

          std::string::basic_string[abi:ne200100](&v220, v79 + 35);
          if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = &v220;
          }

          else
          {
            v80 = v220.__r_.__value_.__r.__words[0];
          }

          if (v79)
          {
            if (*(a2 + 23) >= 0)
            {
              v81 = a2;
            }

            else
            {
              v81 = *a2;
            }

            memmove(v80, v81, v79);
          }

          strcpy(v80 + v79, "defines an unsupported parameter: '");
          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &v223;
          }

          else
          {
            v82 = v223.__r_.__value_.__r.__words[0];
          }

          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = HIBYTE(v223.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = v223.__r_.__value_.__l.__size_;
          }

          v84 = std::string::append(&v220, v82, v83);
          v85 = *&v84->__r_.__value_.__l.__data_;
          v221.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
          *&v221.__r_.__value_.__l.__data_ = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          v86 = std::string::append(&v221, "'");
          v222 = *v86;
          v86->__r_.__value_.__l.__size_ = 0;
          v86->__r_.__value_.__r.__words[2] = 0;
          v86->__r_.__value_.__r.__words[0] = 0;
          siri::intelligence::ValidationResults::AddWarning(a3, siri::intelligence::CODE_UNDEF_PARAM, &v222, a7);
          if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v222.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v221.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v220.__r_.__value_.__l.__data_);
          }

          goto LABEL_352;
        }

        v77 = *(v66 + 56);
        v78 = *(v66 + 64);
        if (v78)
        {
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v222, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
        }

        else
        {
          v222 = v212;
        }

        v87 = strlen(siri::intelligence::TYPE_UNKNOWN);
        v88 = v87;
        v89 = SHIBYTE(v222.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v222.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v87 != v222.__r_.__value_.__l.__size_)
          {
LABEL_215:
            if (!v77)
            {
              goto LABEL_213;
            }

            goto LABEL_216;
          }

          if (v87 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v90 = v222.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v87 != SHIBYTE(v222.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_215;
          }

          v90 = &v222;
        }

        v91 = !memcmp(v90, siri::intelligence::TYPE_UNKNOWN, v88) || v77 == 0;
        if (v91)
        {
LABEL_213:
          if ((v89 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

LABEL_216:
        (*(*v77 + 96))(&v221, v77, v12);
        v92 = strlen(siri::intelligence::TYPE_UNKNOWN);
        v93 = v92;
        if ((SHIBYTE(v221.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v92 != v221.__r_.__value_.__l.__size_)
          {
            goto LABEL_223;
          }

          if (v92 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v94 = v221.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v92 != SHIBYTE(v221.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_223;
          }

          v94 = &v221;
        }

        if (!memcmp(v94, siri::intelligence::TYPE_UNKNOWN, v93))
        {
          goto LABEL_346;
        }

LABEL_223:
        if (*(v77 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v220, *(v77 + 32), *(v77 + 40));
        }

        else
        {
          v220 = *(v77 + 32);
        }

        if (siri::intelligence::IsEquivalentType(&v220, &v222.__r_.__value_.__l.__data_))
        {
          if ((SHIBYTE(v220.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_285;
          }

          v95 = v220.__r_.__value_.__r.__words[0];
          goto LABEL_284;
        }

        IsEquivalentType = siri::intelligence::IsEquivalentType(&v221, &v222.__r_.__value_.__l.__data_);
        v97 = IsEquivalentType;
        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
          if (v97)
          {
            goto LABEL_285;
          }
        }

        else if (IsEquivalentType)
        {
          goto LABEL_285;
        }

        if (*(a2 + 23) >= 0)
        {
          v98 = *(a2 + 23);
        }

        else
        {
          v98 = a2[1];
        }

        std::string::basic_string[abi:ne200100](&v210, v98 + 19);
        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = &v210;
        }

        else
        {
          v99 = v210.__r_.__value_.__r.__words[0];
        }

        if (v98)
        {
          if (*(a2 + 23) >= 0)
          {
            v100 = a2;
          }

          else
          {
            v100 = *a2;
          }

          memmove(v99, v100, v98);
        }

        strcpy(v99 + v98, "type mismatch for '");
        v101 = *(a4 + 23);
        if (v101 >= 0)
        {
          v102 = a4;
        }

        else
        {
          v102 = *a4;
        }

        if (v101 >= 0)
        {
          v103 = *(a4 + 23);
        }

        else
        {
          v103 = a4[1];
        }

        v104 = std::string::append(&v210, v102, v103);
        v105 = *&v104->__r_.__value_.__l.__data_;
        v214.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&v214.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        v106 = std::string::append(&v214, "': parameter '");
        v107 = *&v106->__r_.__value_.__l.__data_;
        v215.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
        *&v215.__r_.__value_.__l.__data_ = v107;
        v106->__r_.__value_.__l.__size_ = 0;
        v106->__r_.__value_.__r.__words[2] = 0;
        v106->__r_.__value_.__r.__words[0] = 0;
        if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = &v223;
        }

        else
        {
          v108 = v223.__r_.__value_.__r.__words[0];
        }

        if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v109 = HIBYTE(v223.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v109 = v223.__r_.__value_.__l.__size_;
        }

        v110 = std::string::append(&v215, v108, v109);
        v111 = *&v110->__r_.__value_.__l.__data_;
        v216.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
        *&v216.__r_.__value_.__l.__data_ = v111;
        v110->__r_.__value_.__l.__size_ = 0;
        v110->__r_.__value_.__r.__words[2] = 0;
        v110->__r_.__value_.__r.__words[0] = 0;
        v112 = std::string::append(&v216, "' should be type ");
        v113 = *&v112->__r_.__value_.__l.__data_;
        v217.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
        *&v217.__r_.__value_.__l.__data_ = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v114 = &v222;
        }

        else
        {
          v114 = v222.__r_.__value_.__r.__words[0];
        }

        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v115 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v115 = v222.__r_.__value_.__l.__size_;
        }

        v116 = std::string::append(&v217, v114, v115);
        v117 = *&v116->__r_.__value_.__l.__data_;
        v218.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
        *&v218.__r_.__value_.__l.__data_ = v117;
        v116->__r_.__value_.__l.__size_ = 0;
        v116->__r_.__value_.__r.__words[2] = 0;
        v116->__r_.__value_.__r.__words[0] = 0;
        v118 = std::string::append(&v218, " but it's type is ");
        v119 = *&v118->__r_.__value_.__l.__data_;
        v219.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
        *&v219.__r_.__value_.__l.__data_ = v119;
        v118->__r_.__value_.__l.__size_ = 0;
        v118->__r_.__value_.__r.__words[2] = 0;
        v118->__r_.__value_.__r.__words[0] = 0;
        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = &v221;
        }

        else
        {
          v120 = v221.__r_.__value_.__r.__words[0];
        }

        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v121 = HIBYTE(v221.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v121 = v221.__r_.__value_.__l.__size_;
        }

        v122 = std::string::append(&v219, v120, v121);
        v220 = *v122;
        v122->__r_.__value_.__l.__size_ = 0;
        v122->__r_.__value_.__r.__words[2] = 0;
        v122->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_TYPE_MISMATCH, &v220, a7);
        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v217.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v216.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v215.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v214.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
        {
          v95 = v210.__r_.__value_.__r.__words[0];
LABEL_284:
          operator delete(v95);
        }

LABEL_285:
        if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v211.__r_.__value_.__l.__size_ != 10)
          {
            goto LABEL_346;
          }

          v123 = v211.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) != 10)
          {
            goto LABEL_346;
          }

          v123 = &v211;
        }

        v124 = v123->__r_.__value_.__r.__words[0];
        v125 = LOWORD(v123->__r_.__value_.__r.__words[1]);
        v127 = v124 != 0x65736E6F70736572 || v125 != 25673;
        if (v203 && !v127)
        {
          (*(*v77 + 56))(&v220, v77);
          if (v203 + 80 == std::__tree<std::string>::find<std::string>(v203 + 72, &v220.__r_.__value_.__l.__data_))
          {
            if (*(a2 + 23) >= 0)
            {
              v128 = *(a2 + 23);
            }

            else
            {
              v128 = a2[1];
            }

            std::string::basic_string[abi:ne200100](&v210, v128 + 21);
            if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v129 = &v210;
            }

            else
            {
              v129 = v210.__r_.__value_.__r.__words[0];
            }

            if (v128)
            {
              if (*(a2 + 23) >= 0)
              {
                v130 = a2;
              }

              else
              {
                v130 = *a2;
              }

              memmove(v129, v130, v128);
            }

            strcpy(v129 + v128, "invalid response ID '");
            (*(*v77 + 56))(__p, v77);
            if ((v209 & 0x80u) == 0)
            {
              v131 = __p;
            }

            else
            {
              v131 = __p[0];
            }

            if ((v209 & 0x80u) == 0)
            {
              v132 = v209;
            }

            else
            {
              v132 = __p[1];
            }

            v133 = std::string::append(&v210, v131, v132);
            v134 = *&v133->__r_.__value_.__l.__data_;
            v214.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
            *&v214.__r_.__value_.__l.__data_ = v134;
            v133->__r_.__value_.__l.__size_ = 0;
            v133->__r_.__value_.__r.__words[2] = 0;
            v133->__r_.__value_.__r.__words[0] = 0;
            v135 = std::string::append(&v214, "' for behavior '");
            v136 = *&v135->__r_.__value_.__l.__data_;
            v215.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
            *&v215.__r_.__value_.__l.__data_ = v136;
            v135->__r_.__value_.__l.__size_ = 0;
            v135->__r_.__value_.__r.__words[2] = 0;
            v135->__r_.__value_.__r.__words[0] = 0;
            v137 = *(a4 + 23);
            if (v137 >= 0)
            {
              v138 = a4;
            }

            else
            {
              v138 = *a4;
            }

            if (v137 >= 0)
            {
              v139 = *(a4 + 23);
            }

            else
            {
              v139 = a4[1];
            }

            v140 = std::string::append(&v215, v138, v139);
            v141 = *&v140->__r_.__value_.__l.__data_;
            v216.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
            *&v216.__r_.__value_.__l.__data_ = v141;
            v140->__r_.__value_.__l.__size_ = 0;
            v140->__r_.__value_.__r.__words[2] = 0;
            v140->__r_.__value_.__r.__words[0] = 0;
            v142 = std::string::append(&v216, "' parameter '");
            v143 = *&v142->__r_.__value_.__l.__data_;
            v217.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
            *&v217.__r_.__value_.__l.__data_ = v143;
            v142->__r_.__value_.__l.__size_ = 0;
            v142->__r_.__value_.__r.__words[2] = 0;
            v142->__r_.__value_.__r.__words[0] = 0;
            if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v144 = &v223;
            }

            else
            {
              v144 = v223.__r_.__value_.__r.__words[0];
            }

            if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v145 = HIBYTE(v223.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v145 = v223.__r_.__value_.__l.__size_;
            }

            v146 = std::string::append(&v217, v144, v145);
            v147 = *&v146->__r_.__value_.__l.__data_;
            v218.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
            *&v218.__r_.__value_.__l.__data_ = v147;
            v146->__r_.__value_.__l.__size_ = 0;
            v146->__r_.__value_.__r.__words[2] = 0;
            v146->__r_.__value_.__r.__words[0] = 0;
            v148 = std::string::append(&v218, "'");
            v219 = *v148;
            v148->__r_.__value_.__l.__size_ = 0;
            v148->__r_.__value_.__r.__words[2] = 0;
            v148->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_INVALID_ID, &v219, a7);
            if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v219.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v218.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v217.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v216.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v215.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v214.__r_.__value_.__l.__data_);
            }

            if (v209 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v210.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v220.__r_.__value_.__l.__data_);
          }
        }

LABEL_346:
        if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v221.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v222.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_350;
        }

LABEL_349:
        operator delete(v222.__r_.__value_.__l.__data_);
LABEL_350:
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

LABEL_352:
        if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v212.__r_.__value_.__l.__data_);
        }

        v67 = v68;
        if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v211.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__r_.__value_.__l.__data_);
        }

        v149 = *(v66 + 8);
        if (v149)
        {
          do
          {
            v150 = v149;
            v149 = v149->__r_.__value_.__r.__words[0];
          }

          while (v149);
        }

        else
        {
          do
          {
            v150 = *(v66 + 16);
            v91 = v150->__r_.__value_.__r.__words[0] == v66;
            v66 = v150;
          }

          while (!v91);
        }

        v66 = v150;
      }

      while (v150 != &v224.__r_.__value_.__r.__words[1]);
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v224, v224.__r_.__value_.__l.__size_);
    if (*(a4 + 23) < 0)
    {
      if (a4[1] == 9)
      {
        v156 = *a4;
        if (**a4 == 0x6E69727453746573 && *(*a4 + 8) == 103)
        {
          goto LABEL_401;
        }

        v158 = *v156;
        v159 = v156[8];
        if (v158 == 0x65626D754E746573 && v159 == 114)
        {
          goto LABEL_401;
        }
      }

      if (a4[1] == 10 && **a4 == 0x656C6F6F42746573 && *(*a4 + 4) == 28257)
      {
        goto LABEL_401;
      }

      if (a4[1] != 8)
      {
        goto LABEL_396;
      }

      v152 = *a4;
    }

    else
    {
      v151 = *(a4 + 23);
      v152 = a4;
      if (v151 != 8)
      {
        if (v151 == 9)
        {
          if (*a4 == 0x6E69727453746573 && *(a4 + 8) == 103)
          {
            goto LABEL_401;
          }

          v153 = *(a4 + 8);
          v154 = *a4 == 0x65626D754E746573;
          v155 = 114;
        }

        else
        {
          if (v151 != 10)
          {
            goto LABEL_396;
          }

          v153 = *(a4 + 4);
          v154 = *a4 == 0x656C6F6F42746573;
          v155 = 28257;
        }

        if (!v154 || v153 != v155)
        {
          goto LABEL_396;
        }

LABEL_401:
        v164 = *a5;
        std::string::basic_string[abi:ne200100]<0>(&v211, "name");
        v165 = std::__tree<std::string>::find<std::string>((v164 + 9), &v211.__r_.__value_.__l.__data_);
        v166 = v165;
        if (v164 + 10 == v165)
        {
          v173 = 0;
          v171 = 0;
          goto LABEL_411;
        }

        v167 = *(v165 + 56);
        v168 = *(v166 + 64);
        if (v168)
        {
          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        {
          v171 = v170;
          if (!v168)
          {
            v173 = 0;
            goto LABEL_411;
          }

          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
          v172 = v168;
        }

        else
        {
          v172 = 0;
          v171 = 0;
          v173 = 0;
          if (!v168)
          {
LABEL_411:
            if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v211.__r_.__value_.__l.__data_);
            }

            if (v171)
            {
              if (v171[95] < 0)
              {
                std::string::__init_copy_ctor_external(&v211, *(v171 + 9), *(v171 + 10));
              }

              else
              {
                v211 = *(v171 + 3);
              }

              IsGlobalVariable = siri::intelligence::Memory::IsGlobalVariable(v12, &v211.__r_.__value_.__l.__data_);
              if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v211.__r_.__value_.__l.__data_);
              }

              if (IsGlobalVariable)
              {
                if (*(a2 + 23) >= 0)
                {
                  v175 = *(a2 + 23);
                }

                else
                {
                  v175 = a2[1];
                }

                v176 = &v224;
                std::string::basic_string[abi:ne200100](&v224, v175 + 41);
                if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v176 = v224.__r_.__value_.__r.__words[0];
                }

                if (v175)
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v177 = a2;
                  }

                  else
                  {
                    v177 = *a2;
                  }

                  memmove(v176, v177, v175);
                }

                strcpy(v176 + v175, "cannot modify read-only global variable: ");
                if (v171[95] < 0)
                {
                  std::string::__init_copy_ctor_external(&v223, *(v171 + 9), *(v171 + 10));
                }

                else
                {
                  v223 = *(v171 + 3);
                }

                if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v178 = &v223;
                }

                else
                {
                  v178 = v223.__r_.__value_.__r.__words[0];
                }

                if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v179 = HIBYTE(v223.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v179 = v223.__r_.__value_.__l.__size_;
                }

                v180 = std::string::append(&v224, v178, v179);
                v211 = *v180;
                v180->__r_.__value_.__l.__size_ = 0;
                v180->__r_.__value_.__r.__words[2] = 0;
                v180->__r_.__value_.__r.__words[0] = 0;
                siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_READ_ONLY, &v211, a7);
                if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v211.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v223.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v224.__r_.__value_.__l.__data_);
                }
              }
            }

            if (v173)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v173);
            }

            goto LABEL_447;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v168);
        v173 = v172;
        goto LABEL_411;
      }
    }

    if (*v152 == 0x7961727241746573)
    {
      goto LABEL_401;
    }

LABEL_396:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "setDictionary") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "pushBack") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "popBack") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "setUndefined") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "setEmpty"))
    {
      goto LABEL_401;
    }

LABEL_447:
    v182 = *(v11 + 88);
    for (i = *(v11 + 96); v182 != i; v182 += 56)
    {
      if (*(v182 + 48) == 1)
      {
        v183 = *a5;
        if (!*a5)
        {
          goto LABEL_454;
        }

        v184 = std::__tree<std::string>::find<std::string>((v183 + 9), v182);
        if (v183 + 10 == v184)
        {
          goto LABEL_454;
        }

        v186 = *(v184 + 56);
        v185 = *(v184 + 64);
        if (v185)
        {
          atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v185);
        }

        if (!v186)
        {
LABEL_454:
          if (*(a2 + 23) >= 0)
          {
            v187 = *(a2 + 23);
          }

          else
          {
            v187 = a2[1];
          }

          std::string::basic_string[abi:ne200100](&v221, v187 + 9);
          if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v188 = &v221;
          }

          else
          {
            v188 = v221.__r_.__value_.__r.__words[0];
          }

          if (v187)
          {
            if (*(a2 + 23) >= 0)
            {
              v189 = a2;
            }

            else
            {
              v189 = *a2;
            }

            memmove(v188, v189, v187);
          }

          strcpy(v188 + v187, "behavior ");
          v190 = *(v11 + 79);
          if (v190 >= 0)
          {
            v191 = (v11 + 56);
          }

          else
          {
            v191 = *(v11 + 56);
          }

          if (v190 >= 0)
          {
            v192 = *(v11 + 79);
          }

          else
          {
            v192 = *(v11 + 64);
          }

          v193 = std::string::append(&v221, v191, v192);
          v194 = *&v193->__r_.__value_.__l.__data_;
          v222.__r_.__value_.__r.__words[2] = v193->__r_.__value_.__r.__words[2];
          *&v222.__r_.__value_.__l.__data_ = v194;
          v193->__r_.__value_.__l.__size_ = 0;
          v193->__r_.__value_.__r.__words[2] = 0;
          v193->__r_.__value_.__r.__words[0] = 0;
          v195 = std::string::append(&v222, " does not define the required parameter: '");
          v196 = *&v195->__r_.__value_.__l.__data_;
          v223.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
          *&v223.__r_.__value_.__l.__data_ = v196;
          v195->__r_.__value_.__l.__size_ = 0;
          v195->__r_.__value_.__r.__words[2] = 0;
          v195->__r_.__value_.__r.__words[0] = 0;
          v197 = *(v182 + 23);
          if (v197 >= 0)
          {
            v198 = v182;
          }

          else
          {
            v198 = *v182;
          }

          if (v197 >= 0)
          {
            v199 = *(v182 + 23);
          }

          else
          {
            v199 = *(v182 + 8);
          }

          v200 = std::string::append(&v223, v198, v199);
          v201 = *&v200->__r_.__value_.__l.__data_;
          v224.__r_.__value_.__r.__words[2] = v200->__r_.__value_.__r.__words[2];
          *&v224.__r_.__value_.__l.__data_ = v201;
          v200->__r_.__value_.__l.__size_ = 0;
          v200->__r_.__value_.__r.__words[2] = 0;
          v200->__r_.__value_.__r.__words[0] = 0;
          v202 = std::string::append(&v224, "'");
          v211 = *v202;
          v202->__r_.__value_.__l.__size_ = 0;
          v202->__r_.__value_.__r.__words[2] = 0;
          v202->__r_.__value_.__r.__words[0] = 0;
          siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_NO_PARAM, &v211, a7);
          if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v211.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v224.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v223.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v222.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v221.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    goto LABEL_488;
  }

  if (a6)
  {
    siri::intelligence::VariableDictionary::GetValues(*a5, &v211);
    v14 = v211.__r_.__value_.__l.__size_;
    for (j = v211.__r_.__value_.__r.__words[0]; j != v14; j += 16)
    {
      v15 = *j;
      if (*(*j + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v224, *(v15 + 8), *(v15 + 16));
      }

      else
      {
        v16 = *(v15 + 8);
        v224.__r_.__value_.__r.__words[2] = *(v15 + 24);
        *&v224.__r_.__value_.__l.__data_ = v16;
      }

      if (!siri::intelligence::Memory::HasVariable(v12, &v224))
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = *(a2 + 23);
        }

        else
        {
          v23 = a2[1];
        }

        std::string::basic_string[abi:ne200100](&v221, v23 + 59);
        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v221;
        }

        else
        {
          v24 = v221.__r_.__value_.__r.__words[0];
        }

        if (v23)
        {
          if (*(a2 + 23) >= 0)
          {
            v25 = a2;
          }

          else
          {
            v25 = *a2;
          }

          memmove(v24, v25, v23);
        }

        strcpy(v24 + v23, "defines a parameter key that's not a valid variable name: '");
        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v224;
        }

        else
        {
          v26 = v224.__r_.__value_.__r.__words[0];
        }

        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v224.__r_.__value_.__l.__size_;
        }

        v28 = std::string::append(&v221, v26, v27);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v222.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v222.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v222, "'");
        v223 = *v30;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_UNDEF_PARAM, &v223, a7);
        if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v221.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_144;
        }

        v31 = v221.__r_.__value_.__r.__words[0];
        goto LABEL_143;
      }

      if (siri::intelligence::Memory::IsGlobalVariable(v12, &v224.__r_.__value_.__l.__data_))
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = *(a2 + 23);
        }

        else
        {
          v17 = a2[1];
        }

        std::string::basic_string[abi:ne200100](&v222, v17 + 38);
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v222;
        }

        else
        {
          v18 = v222.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (*(a2 + 23) >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          memmove(v18, v19, v17);
        }

        strcpy(v18 + v17, "modifies a read-only global variable: ");
        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v224;
        }

        else
        {
          v20 = v224.__r_.__value_.__r.__words[0];
        }

        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v224.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v222, v20, v21);
        v223 = *v22;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_READ_ONLY, &v223, a7);
        if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v223.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }
      }

      siri::intelligence::Memory::GetVariable(v12, &v224, &v222);
      if (*(v222.__r_.__value_.__r.__words[0] + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v223, *(v222.__r_.__value_.__r.__words[0] + 32), *(v222.__r_.__value_.__r.__words[0] + 40));
      }

      else
      {
        v223 = *(v222.__r_.__value_.__r.__words[0] + 32);
      }

      if (v222.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v222.__r_.__value_.__l.__size_);
      }

      (*(**j + 96))(&v222);
      v32 = siri::intelligence::TYPE_UNKNOWN;
      v33 = strlen(siri::intelligence::TYPE_UNKNOWN);
      v34 = v33;
      if ((SHIBYTE(v223.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v33 != v223.__r_.__value_.__l.__size_)
        {
          goto LABEL_70;
        }

        if (v33 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v35 = v223.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v33 != SHIBYTE(v223.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_70;
        }

        v35 = &v223;
      }

      if (!memcmp(v35, siri::intelligence::TYPE_UNKNOWN, v34))
      {
        goto LABEL_139;
      }

LABEL_70:
      if ((SHIBYTE(v222.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v34 == v222.__r_.__value_.__l.__size_)
        {
          if (v34 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v36 = v222.__r_.__value_.__r.__words[0];
LABEL_76:
          if (!memcmp(v36, v32, v34))
          {
            goto LABEL_139;
          }
        }
      }

      else if (v34 == SHIBYTE(v222.__r_.__value_.__r.__words[2]))
      {
        v36 = &v222;
        goto LABEL_76;
      }

      v37 = *j;
      if (*(*j + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v221, *(v37 + 32), *(v37 + 40));
      }

      else
      {
        v221 = *(v37 + 32);
      }

      if (siri::intelligence::IsEquivalentType(&v221, &v223.__r_.__value_.__l.__data_))
      {
        if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
        {
          v38 = v221.__r_.__value_.__r.__words[0];
          goto LABEL_138;
        }
      }

      else
      {
        v39 = siri::intelligence::IsEquivalentType(&v222, &v223.__r_.__value_.__l.__data_);
        v40 = v39;
        if ((SHIBYTE(v221.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (v39)
          {
            goto LABEL_139;
          }

LABEL_87:
          if (*(a2 + 23) >= 0)
          {
            v41 = *(a2 + 23);
          }

          else
          {
            v41 = a2[1];
          }

          std::string::basic_string[abi:ne200100](&v214, v41 + 19);
          if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v214;
          }

          else
          {
            v42 = v214.__r_.__value_.__r.__words[0];
          }

          if (v41)
          {
            if (*(a2 + 23) >= 0)
            {
              v43 = a2;
            }

            else
            {
              v43 = *a2;
            }

            memmove(v42, v43, v41);
          }

          strcpy(v42 + v41, "type mismatch for '");
          v44 = *(*v204 + 23);
          if (v44 >= 0)
          {
            v45 = *v204;
          }

          else
          {
            v45 = **v204;
          }

          if (v44 >= 0)
          {
            v46 = *(*v204 + 23);
          }

          else
          {
            v46 = *(*v204 + 8);
          }

          v47 = std::string::append(&v214, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v215.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v215.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          v49 = std::string::append(&v215, "': parameter '");
          v50 = *&v49->__r_.__value_.__l.__data_;
          v216.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&v216.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &v224;
          }

          else
          {
            v51 = v224.__r_.__value_.__r.__words[0];
          }

          if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v52 = v224.__r_.__value_.__l.__size_;
          }

          v53 = std::string::append(&v216, v51, v52);
          v54 = *&v53->__r_.__value_.__l.__data_;
          v217.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&v217.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          v55 = std::string::append(&v217, "' should be type ");
          v56 = *&v55->__r_.__value_.__l.__data_;
          v218.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v218.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v223;
          }

          else
          {
            v57 = v223.__r_.__value_.__r.__words[0];
          }

          if ((v223.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = HIBYTE(v223.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v58 = v223.__r_.__value_.__l.__size_;
          }

          v59 = std::string::append(&v218, v57, v58);
          v60 = *&v59->__r_.__value_.__l.__data_;
          v219.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
          *&v219.__r_.__value_.__l.__data_ = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          v61 = std::string::append(&v219, " but it's type is ");
          v62 = *&v61->__r_.__value_.__l.__data_;
          v220.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v220.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v222;
          }

          else
          {
            v63 = v222.__r_.__value_.__r.__words[0];
          }

          if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v64 = v222.__r_.__value_.__l.__size_;
          }

          v65 = std::string::append(&v220, v63, v64);
          v221 = *v65;
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_TYPE_MISMATCH, &v221, a7);
          if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v221.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v220.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v219.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v218.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v217.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v216.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v215.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_139;
          }

          v38 = v214.__r_.__value_.__r.__words[0];
LABEL_138:
          operator delete(v38);
          goto LABEL_139;
        }

        operator delete(v221.__r_.__value_.__l.__data_);
        if (!v40)
        {
          goto LABEL_87;
        }
      }

LABEL_139:
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v223.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_144;
      }

      v31 = v223.__r_.__value_.__r.__words[0];
LABEL_143:
      operator delete(v31);
LABEL_144:
      if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v224.__r_.__value_.__l.__data_);
      }
    }

    v224.__r_.__value_.__r.__words[0] = &v211;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v224);
  }

LABEL_488:
  std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(&v225, v226);
}

void sub_254D0D96C(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(v2 - 112, *(v2 - 104));
  _Unwind_Resume(a1);
}

void *siri::intelligence::GetBehaviorDefinitionsMap@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_280AF43A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF43A8))
  {
    qword_280AF43D8 = 0;
    qword_280AF43D0 = 0;
    qword_280AF43C8 = &qword_280AF43D0;
    __cxa_atexit(std::map<std::string,siri::intelligence::BehaviorDefinition>::~map[abi:ne200100], &qword_280AF43C8, &dword_254C81000);
    __cxa_guard_release(&qword_280AF43A8);
  }

  if (qword_280AF43D8)
  {

    return std::map<std::string,siri::intelligence::BehaviorDefinition>::map[abi:ne200100](a1);
  }

  else
  {
    siri::intelligence::GetBehaviorDefinitions(&v7);
    v4 = v7;
    for (i = v8; v4 != i; v4 += 64)
    {
      v6 = *std::__tree<std::string>::__find_equal<std::string>(&qword_280AF43C8, &v9, v4);
      if (!v6)
      {
        operator new();
      }

      std::string::operator=((v6 + 56), v4);
      *(v6 + 80) = *(v4 + 24);
      if (v4 != v6 + 56)
      {
        std::vector<siri::intelligence::BehaviorArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(v6 + 88, *(v4 + 32), *(v4 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 40) - *(v4 + 32)) >> 3));
      }

      *(v6 + 112) = *(v4 + 56);
    }

    v9 = &v7;
    std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](&v9);
    return std::map<std::string,siri::intelligence::BehaviorDefinition>::map[abi:ne200100](a1);
  }
}

void sub_254D0E118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  operator delete(v13);
  a13 = &a10;
  std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::BehaviorHandler::Execute(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (a4)
  {
    v10 = a2;
    siri::intelligence::GetBehaviorDefinitionsMap(&v41);
    v11 = std::__tree<std::string>::find<std::string>(&v41, v10);
    v12 = v11;
    if (&v42 == v11 || (v13 = *(v11 + 80)) == 0)
    {
      v24 = 0;
LABEL_49:
      std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(&v41, v42);
      return v24;
    }

    v14 = *(v11 + 88);
    v15 = *(v11 + 96);
    if (v14 != v15)
    {
      v16 = 1;
      do
      {
        while (*(v14 + 48) == 1)
        {
          v17 = *a3;
          if (!*a3)
          {
            break;
          }

          v18 = std::__tree<std::string>::find<std::string>(v17 + 72, v14);
          if (v17 + 80 != v18)
          {
            v21 = *(v18 + 56);
            v20 = *(v18 + 64);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            if (v21)
            {
              break;
            }
          }

          v22 = v14;
          if (*(v14 + 23) < 0)
          {
            v22 = *v14;
          }

          if (*(v10 + 23) >= 0)
          {
            v23 = v10;
          }

          else
          {
            v23 = *v10;
          }

          siri::intelligence::Log::Error("Required parameter '%s' not provided for behavior '%s'. Behavior will have no effect.", v19, v22, v23);
          v16 = 0;
          v24 = 0;
          v14 += 56;
          if (v14 == v15)
          {
            goto LABEL_35;
          }
        }

        v14 += 56;
      }

      while (v14 != v15);
      if ((v16 & 1) == 0)
      {
        v24 = 0;
LABEL_35:
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        (*(**a3 + 56))(v39);
        v28 = SHIBYTE(v40);
        v29 = v39[0];
        if (v24)
        {
          v30 = "true";
        }

        else
        {
          v30 = "false";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v30);
        v32 = v39;
        if (v28 < 0)
        {
          v32 = v29;
        }

        if (v36 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        siri::intelligence::Log::Debug("Executing behavior %s(%s) -> %s", v31, v10, v32, v33);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }

        goto LABEL_49;
      }

      v13 = *(v12 + 80);
    }

    v39[0] = a4;
    v39[1] = a5;
    v40 = a6;
    v25 = a3[1];
    v37 = *a3;
    v38 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v13(&v37, v39);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if ((v24 & 1) == 0)
    {
      if (*(v10 + 23) >= 0)
      {
        v27 = v10;
      }

      else
      {
        v27 = *v10;
      }

      siri::intelligence::Log::Error("Error returned from system behavior '%s'", v26, v27);
    }

    goto LABEL_35;
  }

  siri::intelligence::Log::Error("Behavior execution called will NULL intelligence or memory. Skipping execution.", a2);
  return 0;
}

BOOL siri::intelligence::BehaviorHandler::IsNameHandled(uint64_t a1, const void **a2)
{
  siri::intelligence::GetBehaviorDefinitionsMap(&v5);
  v3 = &v6 != std::__tree<std::string>::find<std::string>(&v5, a2);
  std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(&v5, v6);
  return v3;
}

uint64_t siri::intelligence::BehaviorHandler::AreKeysVariableNames(uint64_t a1, const void **a2)
{
  siri::intelligence::GetBehaviorDefinitionsMap(&v6);
  v3 = std::__tree<std::string>::find<std::string>(&v6, a2);
  if (&v7 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 113);
  }

  std::__tree<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::BehaviorDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::BehaviorDefinition>>>::destroy(&v6, v7);
  return v4 & 1;
}

uint64_t siri::intelligence::BehaviorSetString(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_20:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "setString");
    v24 = 0;
    goto LABEL_43;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&lpsrc);
  if (!lpsrc.__r_.__value_.__r.__words[0])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = **lpsrc.__r_.__value_.__l.__data_;
  if (!v22)
  {
LABEL_22:
    size = 0;
    goto LABEL_23;
  }

  size = lpsrc.__r_.__value_.__l.__size_;
  if (lpsrc.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

LABEL_23:
  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v22)
    {
      goto LABEL_29;
    }
  }

  else if (v22)
  {
LABEL_29:
    if (v12[95] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
    }

    else
    {
      __p = *(v12 + 3);
    }

    if (v22[95] < 0)
    {
      std::string::__init_copy_ctor_external(&lpsrc, *(v22 + 9), *(v22 + 10));
    }

    else
    {
      lpsrc = *(v22 + 3);
    }

    v24 = siri::intelligence::Memory::SetStringValue(v15 + 24, &__p, &lpsrc);
    if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(lpsrc.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a string", v20, "value", "setString");
  v24 = 0;
LABEL_41:
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

LABEL_43:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v24;
}

void sub_254D0E8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorSetNumber(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_20:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "setNumber");
    v24 = 0;
    goto LABEL_38;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&lpsrc);
  if (!lpsrc)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = **lpsrc;
  if (!v22)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v23 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_23:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v22)
    {
LABEL_29:
      if (v12[95] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
      }

      else
      {
        __p = *(v12 + 3);
      }

      v24 = siri::intelligence::Memory::SetNumberValue(v15 + 24, &__p, v22[9]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_29;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a number", v20, "value", "setNumber");
  v24 = 0;
LABEL_36:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_38:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v24;
}

void sub_254D0EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorSetBoolean(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_20:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "setBoolean");
    v24 = 0;
    goto LABEL_38;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&lpsrc);
  if (!lpsrc)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = **lpsrc;
  if (!v22)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v23 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_23:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v22)
    {
LABEL_29:
      if (v12[95] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
      }

      else
      {
        __p = *(v12 + 3);
      }

      v24 = siri::intelligence::Memory::SetBooleanValue(v15 + 24, &__p, v22[66]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_29;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a BOOLean", v20, "value", "setBoolean");
  v24 = 0;
LABEL_36:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_38:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v24;
}

void sub_254D0EFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorSetArray(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_20:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "setArray");
    v24 = 0;
    goto LABEL_38;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&lpsrc);
  if (!lpsrc)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = **lpsrc;
  if (!v22)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v23 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_23:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v22)
    {
LABEL_29:
      if (v12[95] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
      }

      else
      {
        __p = *(v12 + 3);
      }

      lpsrc = 0;
      v27 = 0;
      v28 = 0;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&lpsrc, v22[9], v22[10], (v22[10] - v22[9]) >> 4);
      v24 = siri::intelligence::Memory::SetArrayValue(v15 + 24, &__p, &lpsrc);
      p_lpsrc = &lpsrc;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&p_lpsrc);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_29;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not an array", v20, "value", "setArray");
  v24 = 0;
LABEL_36:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_38:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v24;
}

void sub_254D0F374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorSetDictionary(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_20:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "setDictionary");
    v24 = 0;
    goto LABEL_38;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&lpsrc);
  if (!lpsrc)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = **lpsrc;
  if (!v22)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v23 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_23:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v22)
    {
LABEL_29:
      if (v12[95] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
      }

      else
      {
        __p = *(v12 + 3);
      }

      siri::intelligence::VariableDictionary::GetValues(v22, &lpsrc);
      v24 = siri::intelligence::Memory::SetDictionaryValue(v15 + 24, &__p, &lpsrc);
      p_lpsrc = &lpsrc;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&p_lpsrc);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_29;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a dictionary", v20, "value", "setDictionary");
  v24 = 0;
LABEL_36:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_38:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v24;
}

void sub_254D0F728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::BehaviorPushBack(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_23:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "pushBack");
    v21 = 0;
    goto LABEL_34;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_13:
  v15 = **a2;
  v16 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "value");
  v17 = std::__tree<std::string>::find<std::string>(v16 + 72, &__p.__r_.__value_.__l.__data_);
  v18 = *(v17 + 56);
  v19 = *(v17 + 64);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v18 + 88))(&v25);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = v25;
  if (v25)
  {
    if (v12[95] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v12 + 9), *(v12 + 10));
      v20 = v25;
    }

    else
    {
      __p = *(v12 + 3);
    }

    v23 = v20;
    v24 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = siri::intelligence::Memory::PushBackArrayValue(v15 + 24, &__p, &v23);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v21 = 0;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

LABEL_34:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v21;
}

void sub_254D0FA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorPopBack(uint64_t *a1, uint64_t **a2)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v14 = v13;
      goto LABEL_11;
    }

    v14 = 0;
  }

LABEL_11:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_17:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "popBack");
    v19 = 0;
    goto LABEL_42;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_13:
  memset(&__p, 0, sizeof(__p));
  v15 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&v25, "destination");
  v16 = std::__tree<std::string>::find<std::string>(v15 + 72, &v25.__r_.__value_.__l.__data_);
  if (v15 + 80 == v16)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v18 = *(v16 + 56);
    v17 = *(v16 + 64);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if (!v18)
    {
      goto LABEL_33;
    }
  }

  else if (!v18)
  {
LABEL_33:
    v23 = **a2;
    if (v12[95] < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v12 + 9), *(v12 + 10));
    }

    else
    {
      v25 = *(v12 + 3);
    }

    v19 = siri::intelligence::Memory::PopBackArrayValue(v23 + 24, &v25, &__p);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    goto LABEL_38;
  }

  v20 = **v18;
  if (v21)
  {
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v21[95] < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v21 + 9), *(v21 + 10));
    }

    else
    {
      v25 = *(v21 + 3);
    }

    __p = v25;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    goto LABEL_33;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v22, "destination", "popBack");
  v19 = 0;
LABEL_38:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v19;
}

void sub_254D0FDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::BehaviorSetUndefined(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, &__p.__r_.__value_.__l.__data_);
  v6 = v4;
  if (v3 + 80 == v4)
  {
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v11 = v10;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = v8;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v13 = v12;
      goto LABEL_11;
    }

    v13 = 0;
  }

LABEL_11:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_16:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v5, "name", "setUndefined");
    v15 = 0;
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_13:
  v14 = **a2;
  if (v11[95] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v11 + 9), *(v11 + 10));
  }

  else
  {
    __p = *(v11 + 3);
  }

  siri::intelligence::Memory::GetVariable(v14 + 24, &__p, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = v17 != 0;
  if (v17)
  {
    (*v17)[3]();
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_24:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v15;
}

void sub_254D10080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::BehaviorSetEmpty(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, &__p.__r_.__value_.__l.__data_);
  v6 = v4;
  if (v3 + 80 == v4)
  {
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v11 = v10;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = v8;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v13 = v12;
      goto LABEL_11;
    }

    v13 = 0;
  }

LABEL_11:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_16:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v5, "name", "setEmpty");
    v15 = 0;
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_13:
  v14 = **a2;
  if (v11[95] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v11 + 9), *(v11 + 10));
  }

  else
  {
    __p = *(v11 + 3);
  }

  siri::intelligence::Memory::GetVariable(v14 + 24, &__p, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = v17 != 0;
  if (v17)
  {
    (*v17)[4]();
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_24:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v15;
}

void sub_254D102CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::BehaviorRetryInputs(uint64_t *a1, siri::intelligence::Intelligence::Impl ***a2)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "responseId");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v4 + 56);
    v5 = *(v4 + 64);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_12:
    siri::intelligence::ExecutionState::RewindToLastInputGroup((**a2 + 96));
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_7:
  (*(*v6 + 88))(&v8, v6, **a2 + 24);
  (*(*v8 + 56))(__p);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  siri::intelligence::Intelligence::RetryInputsForResponseId(*a2, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

void sub_254D10470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

siri::intelligence::ExecutionState *siri::intelligence::BehaviorRepeatLastResponse(uint64_t a1, uint64_t **a2)
{
  result = a2[2];
  if (result)
  {
    if (a2[1])
    {
      siri::intelligence::ExecutionState::PopLastResponseIfDone(result);
      v4 = a2[2];
      v5 = v4[4];
      v7[0] = v4[3];
      v7[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = **a2;
      siri::intelligence::ExecStateResponse::ExecStateResponse(&v8, v7);
    }

    return 0;
  }

  return result;
}

void sub_254D10724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::BehaviorRegisterUndo(uint64_t *a1, const char *a2)
{
  if (*a2)
  {
    v4 = *a1;
    std::string::basic_string[abi:ne200100]<0>(&__p, "identifier");
    v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p);
    if (v4 + 80 == v5)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v8 = *(v5 + 56);
      v7 = *(v5 + 64);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }

    v9 = v8 != 0;
    if (v8)
    {
      v10 = *a1;
      std::string::basic_string[abi:ne200100]<0>(&__p, "userData");
      v11 = std::__tree<std::string>::find<std::string>(v10 + 72, &__p);
      if (v10 + 80 == v11)
      {
        v13 = 0;
        v12 = 0;
      }

      else
      {
        v13 = *(v11 + 56);
        v12 = *(v11 + 64);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      if (v17 < 0)
      {
        operator delete(__p);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else if (!v13)
      {
        goto LABEL_22;
      }

      (*(*v13 + 88))(&__p, v13, **a2 + 24);
      __p = 0;
      v16 = 0;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

LABEL_22:
      operator new();
    }

    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not defined", v6, "identifier", "registerUndo");
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    siri::intelligence::Log::Error("BehaviorRegisterUndo() called with null intelligence object. This should never happen.", a2);
    return 0;
  }

  return v9;
}

void sub_254D10A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::BehaviorExitValue(uint64_t *a1, const char *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v2;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v5 = *v2;
    }

    v6 = *(v5 + 256);
    *(v5 + 248) = v3;
    *(v5 + 256) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    siri::intelligence::Log::Error("BehaviorExitValue() called with null intelligence object. This should never happen.", a2);
  }

  return v2 != 0;
}

uint64_t siri::intelligence::BehaviorSetVariables(void ***a1, uint64_t **a2)
{
  v2 = **a2;
  siri::intelligence::VariableDictionary::GetValues(*a1, v16);
  v3 = v16[0];
  v4 = v16[1];
  v5 = 1;
  while (v3 != v4)
  {
    v6 = *v3;
    if ((*(*v3 + 31) & 0x80000000) == 0)
    {
      v7 = (v6 + 8);
      v8 = *(v6 + 8);
      v15.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v15.__r_.__value_.__l.__data_ = v8;
LABEL_7:
      v9 = *v7;
      __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
      goto LABEL_8;
    }

    std::string::__init_copy_ctor_external(&v15, *(v6 + 8), *(v6 + 16));
    v6 = *v3;
    if ((*(*v3 + 31) & 0x80000000) == 0)
    {
      v7 = (v6 + 8);
      goto LABEL_7;
    }

    std::string::__init_copy_ctor_external(&__p, *(v6 + 8), *(v6 + 16));
    v6 = *v3;
LABEL_8:
    (*(*v6 + 88))(&v12);
    v10 = siri::intelligence::Memory::SetVariable(v2 + 24, &__p, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v5 &= v10;
    v3 += 2;
  }

  v15.__r_.__value_.__r.__words[0] = v16;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v5 & 1;
}

void sub_254D10CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __p = &a24;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL siri::intelligence::BehaviorPickFromArray(uint64_t *a1, uint64_t **a2)
{
  v3 = **a2;
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&lpsrc, "name");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &lpsrc.__r_.__value_.__l.__data_);
  v7 = v5;
  if (v4 + 80 == v5)
  {
    v48 = 0;
    v12 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v7 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v13 = 0;
      v12 = 0;
      v48 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = v11;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v9;
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v48 = v13;
      goto LABEL_11;
    }

    v48 = 0;
  }

LABEL_11:
  if ((SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_18:
    siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v6, "name", "pickFromArray");
    v18 = 0;
    v19 = v48;
    goto LABEL_81;
  }

  operator delete(lpsrc.__r_.__value_.__l.__data_);
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_13:
  (*(*v12 + 11))(&lpsrc, v12, v3 + 24);
  if (!lpsrc.__r_.__value_.__r.__words[0])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v15 = **lpsrc.__r_.__value_.__l.__data_;
  if (!v16)
  {
LABEL_20:
    size = 0;
    goto LABEL_21;
  }

  size = lpsrc.__r_.__value_.__l.__size_;
  if (lpsrc.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

LABEL_21:
  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v16)
  {
    v20 = *a1;
    std::string::basic_string[abi:ne200100]<0>(&lpsrc, "destination");
    v21 = std::__tree<std::string>::find<std::string>(v20 + 72, &lpsrc.__r_.__value_.__l.__data_);
    v23 = v21;
    if (v20 + 80 == v21)
    {
      v30 = 0;
      v28 = 0;
    }

    else
    {
      v24 = *(v21 + 56);
      v25 = *(v23 + 64);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v29 = 0;
        v28 = 0;
        v30 = 0;
        if (!v25)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v28 = v27;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = v25;
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        v30 = v29;
        goto LABEL_35;
      }

      v30 = 0;
    }

LABEL_35:
    if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(lpsrc.__r_.__value_.__l.__data_);
    }

    v18 = v28 != 0;
    if (!v28)
    {
      v19 = v48;
      siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a variable reference", v22, "destination", "pickFromArray");
LABEL_77:
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      goto LABEL_79;
    }

    v31 = *a1;
    std::string::basic_string[abi:ne200100]<0>(&lpsrc, "deleteItem");
    v32 = std::__tree<std::string>::find<std::string>(v31 + 72, &lpsrc.__r_.__value_.__l.__data_);
    v33 = v32;
    if (v31 + 80 == v32)
    {
      v47 = 0;
      v38 = 0;
    }

    else
    {
      v34 = *(v32 + 56);
      v35 = *(v33 + 64);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v39 = 0;
        v38 = 0;
        v47 = 0;
        if (!v35)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v38 = v37;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = v35;
LABEL_47:
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        v47 = v39;
        goto LABEL_50;
      }

      v47 = 0;
    }

LABEL_50:
    if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(lpsrc.__r_.__value_.__l.__data_);
    }

    v19 = v48;
    if (v38)
    {
      (*(*v38 + 88))(&lpsrc, v38, v3 + 24);
      LODWORD(v38) = (*(*lpsrc.__r_.__value_.__l.__data_ + 80))(lpsrc.__r_.__value_.__r.__words[0]);
      if (lpsrc.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
      }
    }

    v41 = *(v16 + 9);
    v40 = *(v16 + 10);
    v42 = v40 - v41;
    if (v40 == v41)
    {
      if (v28[95] < 0)
      {
        std::string::__init_copy_ctor_external(&lpsrc, *(v28 + 9), *(v28 + 10));
      }

      else
      {
        lpsrc = *(v28 + 3);
      }

      v53 = 0;
      v54 = 0;
      siri::intelligence::Memory::SetVariable(v3 + 24, &lpsrc, &v53);
      v45 = v54;
      if (!v54)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v43 = erand48(&siri::intelligence::Utils::sRandomNumberGeneratorState);
      if (v28[95] < 0)
      {
        std::string::__init_copy_ctor_external(&lpsrc, *(v28 + 9), *(v28 + 10));
      }

      else
      {
        lpsrc = *(v28 + 3);
      }

      v44 = (v43 * (v42 >> 4));
      siri::intelligence::VariableArray::GetItem(v16, v44, &v51);
      siri::intelligence::Memory::SetVariable(v3 + 24, &lpsrc, &v51);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(lpsrc.__r_.__value_.__l.__data_);
        if (!v38)
        {
          goto LABEL_75;
        }
      }

      else if (!v38)
      {
LABEL_75:
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        goto LABEL_77;
      }

      siri::intelligence::VariableArray::RemoveItem(v16, v44);
      if (*(v12 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&lpsrc, v12[9], v12[10]);
      }

      else
      {
        lpsrc = *(v12 + 3);
      }

      v49 = v16;
      v50 = size;
      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::Memory::SetVariable(v3 + 24, &lpsrc, &v49);
      v45 = v50;
      if (!v50)
      {
LABEL_73:
        if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(lpsrc.__r_.__value_.__l.__data_);
        }

        goto LABEL_75;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    goto LABEL_73;
  }

  siri::intelligence::Log::Error("Parameter '%s' of '%s' behavior is not a reference to an array", v14, "name", "pickFromArray");
  v18 = 0;
  v19 = v48;
LABEL_79:
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

LABEL_81:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return v18;
}

void sub_254D11384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::BehaviorDefinition::~BehaviorDefinition(void **this)
{
  v2 = this + 4;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void siri::intelligence::ExecStateResponse::~ExecStateResponse(siri::intelligence::ExecStateResponse *this)
{
  v5 = (this + 288);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *(this + 19) = &unk_286718FE0;
  v2 = *(this + 35);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this + 19);
  *(this + 2) = &unk_286719048;
  v3 = *(this + 18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this + 2);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::vector<siri::intelligence::BehaviorArgument>::__init_with_size[abi:ne200100]<siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::FunctionArgument>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D11988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::BehaviorArgument>,siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*,siri::intelligence::BehaviorArgument*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_254D11A74(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v5 = v2 + v3 - 56;
    v6 = -v3;
    do
    {
      std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v1, v5);
      v5 -= 56;
      v6 += 56;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<siri::intelligence::BehaviorDefinition>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<siri::intelligence::BehaviorDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<siri::intelligence::BehaviorDefinition>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::intelligence::BehaviorDescription::~BehaviorDescription(void **this)
{
  v2 = this + 3;
  std::vector<siri::intelligence::BehaviorArgument>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::map<std::string,siri::intelligence::BehaviorDefinition>::map[abi:ne200100](void *a1)
{
  a1[1] = 0;
  v2 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = qword_280AF43C8;
  if (qword_280AF43C8 != &qword_280AF43D0)
  {
    v4 = 0;
    while (*a1 != v2)
    {
      v5 = v2;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *(v4 + 8);
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (v7);
      }

      if (std::less<std::string>::operator()[abi:ne200100](a1, (v6 + 32), (v3 + 32)))
      {
        if (!*v2)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v6;
        v8 = (v6 + 8);
        goto LABEL_14;
      }

      v8 = std::__tree<std::string>::__find_equal<std::string>(a1, &v12, (v3 + 32));
LABEL_14:
      if (!*v8)
      {
        goto LABEL_15;
      }

      v9 = *(v3 + 8);
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
          v10 = *(v3 + 16);
          v7 = *v10 == v3;
          v3 = v10;
        }

        while (!v7);
      }

      if (v10 == &qword_280AF43D0)
      {
        return a1;
      }

      v4 = *v2;
      v3 = v10;
    }

    v6 = v2;
    if (!v4)
    {
LABEL_10:
      v12 = v2;
LABEL_15:
      operator new();
    }

    goto LABEL_12;
  }

  return a1;
}