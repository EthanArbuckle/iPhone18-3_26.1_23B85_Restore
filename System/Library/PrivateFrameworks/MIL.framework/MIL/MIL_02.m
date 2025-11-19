void MIL::IROpset::IROpset(void *a1, uint64_t a2)
{
  *a1 = &unk_2829DED88;
  a1[1] = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v2 = (a2 + 16);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      std::make_unique[abi:ne200100]<MIL::IROpsetImpl,std::unordered_map<std::string,std::shared_ptr<MIL::IROperator const>> &,std::unordered_map<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> &,std::unordered_map<std::string,std::string> &,0>();
    }

    v3 = (*(**(v2 + 5) + 16))(*(v2 + 5));
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v15, v3, v2 + 1);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(v18, &v15.__r_.__value_.__l.__data_);
    v5 = v4;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
      if ((v5 & 1) == 0)
      {
LABEL_9:
        exception = __cxa_allocate_exception(0x10uLL);
        v7 = (*(**(v2 + 5) + 16))(*(v2 + 5));
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v13, *v7, *(v7 + 8));
        }

        else
        {
          v8 = *v7;
          v13.__r_.__value_.__r.__words[2] = *(v7 + 16);
          *&v13.__r_.__value_.__l.__data_ = v8;
        }

        v9 = std::string::insert(&v13, 0, "Duplicate operator name '");
        v10 = *&v9->__r_.__value_.__l.__data_;
        v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v14.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        v11 = std::string::append(&v14, ".");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v15.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v15);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

void sub_217FA50E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a32);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v33 - 96);
  std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](v32, 0);
  _Unwind_Resume(a1);
}

void MIL::IROpset::IROpset(void *a1)
{
  a1[1] = 0;
  *a1 = &unk_2829DED88;
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  std::make_unique[abi:ne200100]<MIL::IROpsetImpl,std::unordered_map<std::string,std::shared_ptr<MIL::IROperator const>> &,std::unordered_map<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> &,std::unordered_map<std::string,std::string> &,0>();
}

{
  *a1 = &unk_2829DED88;
  a1[1] = 0;
  std::make_unique[abi:ne200100]<MIL::IROpsetImpl,std::unordered_map<std::string,std::shared_ptr<MIL::IROperator const>> &,std::unordered_map<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> &,std::unordered_map<std::string,std::string> &,0>();
}

void sub_217FA5224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(va);
  std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](v3, 0);
  _Unwind_Resume(a1);
}

void sub_217FA5484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a30);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v31 - 128);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v31 - 88);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a20);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a25);
  MEMORY[0x21CEAFEA0](v30, 0x10B3C40E7C412B7);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a10);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::string&,std::shared_ptr<MIL::IROperator const>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__construct_node_hash<std::string&,std::shared_ptr<MIL::IROperator const>>();
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

void sub_217FA57A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<std::string&,std::shared_ptr<MIL::IROperator const>,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  *&this[1].__r_.__value_.__l.__data_ = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return this;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::string&,std::string&>();
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

void sub_217FA5AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_217FA5C58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IROperator>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__construct_node_hash<std::string const&,std::unique_ptr<MIL::IROperator>>();
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

void sub_217FA5F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<std::string const&,std::unique_ptr<MIL::IROperator>,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(&this[1], a3);
  return this;
}

void sub_217FA601C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IROperator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217FA63C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **MIL::IROpsetImpl::AlignData(const void **this)
{
  if ((this[15] & 1) == 0)
  {
    v1 = this;
    for (i = this[7]; i; i = *i)
    {
      this = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v1, i + 2);
      if (!this)
      {
        v3 = i[8];
        if (!v3)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v3 + 48))(&v4);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IROperator>>(v1, i + 2);
        this = v4;
        v4 = 0;
        if (this)
        {
          this = (*(*this + 1))(this);
        }
      }
    }

    *(v1 + 120) = 1;
  }

  return this;
}

void sub_217FA6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IROpsetImpl::TryGetOperatorSharedPtr(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
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

void sub_217FA6834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  return this;
}

void sub_217FA693C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_217FA6AC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IROperator const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IROperator const>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IROperator const>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IROperator const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IROperator const>> const&>();
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

void sub_217FA6EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__construct_node_hash<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>> const&>();
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

void sub_217FA723C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_217FA7374(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t MIL::IROpsetImpl::IROpsetImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(v7 + 40, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 80, a4);
  *(a1 + 120) = 0;
  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(void *a1, const void **a2)
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

void sub_217FA7704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::SupplementedOpset::~SupplementedOpset(_anonymous_namespace_::SupplementedOpset *this)
{
  *this = &unk_2829DEE20;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *this = &unk_2829DED88;
  std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_2829DEE20;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *this = &unk_2829DED88;
  std::unique_ptr<MIL::IROpsetImpl>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t anonymous namespace::SupplementedOpset::GetName(_anonymous_namespace_::SupplementedOpset *this)
{
  if ((*(this + 39) & 0x8000000000000000) != 0)
  {
    return *(this + 2);
  }

  else
  {
    return this + 16;
  }
}

void sub_217FA786C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x217FA7864);
}

uint64_t MIL::StringToIRPixelFormatType(const void **a1)
{
  v91 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v11, "FMT_OneComponent8");
  v12 = 1;
  std::string::basic_string[abi:ne200100]<0>(v13, "FMT_OneComponent16Half");
  v14 = 2;
  std::string::basic_string[abi:ne200100]<0>(v15, "FMT_OneComponent32Float");
  v16 = 3;
  std::string::basic_string[abi:ne200100]<0>(v17, "FMT_TwoComponent8");
  v18 = 4;
  std::string::basic_string[abi:ne200100]<0>(v19, "FMT_TwoComponent16Half");
  v20 = 6;
  std::string::basic_string[abi:ne200100]<0>(v21, "FMT_TwoComponent32Float");
  v22 = 5;
  std::string::basic_string[abi:ne200100]<0>(v23, "FMT_32ARGB");
  v24 = 11;
  std::string::basic_string[abi:ne200100]<0>(v25, "FMT_32BGRA");
  v26 = 12;
  std::string::basic_string[abi:ne200100]<0>(v27, "FMT_32RGBA");
  v28 = 13;
  std::string::basic_string[abi:ne200100]<0>(v29, "FMT_64RGBAHalf");
  v30 = 14;
  std::string::basic_string[abi:ne200100]<0>(v31, "FMT_DisparityFloat16");
  v32 = 15;
  std::string::basic_string[abi:ne200100]<0>(v33, "FMT_DepthFloat16");
  v34 = 17;
  std::string::basic_string[abi:ne200100]<0>(v35, "any");
  v36 = 20;
  std::string::basic_string[abi:ne200100]<0>(v37, "FMT_420YpCbCr8BiPlanarVideoRange");
  v38 = 21;
  std::string::basic_string[abi:ne200100]<0>(v39, "FMT_420YpCbCr8BiPlanarFullRange");
  v40 = 22;
  std::string::basic_string[abi:ne200100]<0>(v41, "FMT_420YpCbCr10BiPlanarVideoRange");
  v42 = 23;
  std::string::basic_string[abi:ne200100]<0>(v43, "FMT_420YpCbCr10BiPlanarFullRange");
  v44 = 24;
  std::string::basic_string[abi:ne200100]<0>(v45, "FMT_420YpCbCr10PackedBiPlanarVideoRange");
  v46 = 25;
  std::string::basic_string[abi:ne200100]<0>(v47, "FMT_420YpCbCr10PackedBiPlanarFullRange");
  v48 = 26;
  std::string::basic_string[abi:ne200100]<0>(v49, "FMT_420YpCbCr10PackedBiPlanarWideRange");
  v50 = 27;
  std::string::basic_string[abi:ne200100]<0>(v51, "FMT_444YpCbCr8BiPlanarVideoRange");
  v52 = 28;
  std::string::basic_string[abi:ne200100]<0>(v53, "FMT_444YpCbCr8BiPlanarFullRange");
  v54 = 29;
  std::string::basic_string[abi:ne200100]<0>(v55, "FMT_AGX_OneComponent16");
  v56 = 41;
  std::string::basic_string[abi:ne200100]<0>(v57, "FMT_AGX_OneComponent16Half");
  v58 = 42;
  std::string::basic_string[abi:ne200100]<0>(v59, "FMT_Lossy75_OneComponent16Half");
  v60 = 43;
  std::string::basic_string[abi:ne200100]<0>(v61, "FMT_Lossy62_OneComponent16Half");
  v62 = 44;
  std::string::basic_string[abi:ne200100]<0>(v63, "FMT_Lossy50_OneComponent16Half");
  v64 = 45;
  std::string::basic_string[abi:ne200100]<0>(v65, "FMT_AGX_32BGRA");
  v66 = 51;
  std::string::basic_string[abi:ne200100]<0>(v67, "FMT_Lossy75_32BGRA");
  v68 = 52;
  std::string::basic_string[abi:ne200100]<0>(v69, "FMT_Lossy62_32BGRA");
  v70 = 53;
  std::string::basic_string[abi:ne200100]<0>(v71, "FMT_Lossy50_32BGRA");
  v72 = 54;
  std::string::basic_string[abi:ne200100]<0>(v73, "FMT_AGX_64RGBAHalf");
  v74 = 55;
  std::string::basic_string[abi:ne200100]<0>(v75, "FMT_Lossy75_64RGBAHalf");
  v76 = 56;
  std::string::basic_string[abi:ne200100]<0>(v77, "FMT_Lossy62_64RGBAHalf");
  v78 = 57;
  std::string::basic_string[abi:ne200100]<0>(v79, "FMT_Lossy50_64RGBAHalf");
  v80 = 58;
  std::string::basic_string[abi:ne200100]<0>(v81, "FMT_Lossless_420YpCbCr8BiPlanarVideoRange");
  v82 = 70;
  std::string::basic_string[abi:ne200100]<0>(v83, "FMT_Lossless_420YpCbCr8BiPlanarFullRange");
  v84 = 71;
  std::string::basic_string[abi:ne200100]<0>(v85, "FMT_12RLSB_12G12BMSB");
  v86 = 90;
  std::string::basic_string[abi:ne200100]<0>(v87, "FMT_OneComponent12LSB");
  v88 = 91;
  std::string::basic_string[abi:ne200100]<0>(v89, "FMT_MultiSlice_Lossless_OneComponent16Half");
  v90 = 100;
  std::unordered_map<std::string,MIL::IRPixelFormatType>::unordered_map(v10, &v11.__r_.__value_.__l.__data_, 40);
  v2 = 160;
  do
  {
    if (SHIBYTE(v10[v2 + 3]) < 0)
    {
      operator delete(v10[v2 + 1]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v10, a1);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v7 = std::string::append(&v9, " does not map to a pixel format type.");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v4 = *(v3 + 10);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v10);
  return v4;
}

void sub_217FA7E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

_BYTE *MIL::IRPixelFormatTypeToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = "FMT_OneComponent8";
  switch(a1)
  {
    case 1u:
      break;
    case 2u:
      v3 = "FMT_OneComponent16Half";
      break;
    case 3u:
      v3 = "FMT_OneComponent32Float";
      break;
    case 4u:
      v3 = "FMT_TwoComponent8";
      break;
    case 5u:
      v3 = "FMT_TwoComponent32Float";
      break;
    case 6u:
      v3 = "FMT_TwoComponent16Half";
      break;
    case 0xBu:
      v3 = "FMT_32ARGB";
      break;
    case 0xCu:
      v3 = "FMT_32BGRA";
      break;
    case 0xDu:
      v3 = "FMT_32RGBA";
      break;
    case 0xEu:
      v3 = "FMT_64RGBAHalf";
      break;
    case 0xFu:
      v3 = "FMT_DisparityFloat16";
      break;
    case 0x11u:
      v3 = "FMT_DepthFloat16";
      break;
    case 0x14u:
      v3 = "any";
      break;
    case 0x15u:
      v3 = "FMT_420YpCbCr8BiPlanarVideoRange";
      break;
    case 0x16u:
      v3 = "FMT_420YpCbCr8BiPlanarFullRange";
      break;
    case 0x17u:
      v3 = "FMT_420YpCbCr10BiPlanarVideoRange";
      break;
    case 0x18u:
      v3 = "FMT_420YpCbCr10BiPlanarFullRange";
      break;
    case 0x19u:
      v3 = "FMT_420YpCbCr10PackedBiPlanarVideoRange";
      break;
    case 0x1Au:
      v3 = "FMT_420YpCbCr10PackedBiPlanarFullRange";
      break;
    case 0x1Bu:
      v3 = "FMT_420YpCbCr10PackedBiPlanarWideRange";
      break;
    case 0x1Cu:
      v3 = "FMT_444YpCbCr8BiPlanarVideoRange";
      break;
    case 0x1Du:
      v3 = "FMT_444YpCbCr8BiPlanarFullRange";
      break;
    case 0x28u:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported format: Count");
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    case 0x29u:
      v3 = "FMT_AGX_OneComponent16";
      break;
    case 0x2Au:
      v3 = "FMT_AGX_OneComponent16Half";
      break;
    case 0x2Bu:
      v3 = "FMT_Lossy75_OneComponent16Half";
      break;
    case 0x2Cu:
      v3 = "FMT_Lossy62_OneComponent16Half";
      break;
    case 0x2Du:
      v3 = "FMT_Lossy50_OneComponent16Half";
      break;
    case 0x33u:
      v3 = "FMT_AGX_32BGRA";
      break;
    case 0x34u:
      v3 = "FMT_Lossy75_32BGRA";
      break;
    case 0x35u:
      v3 = "FMT_Lossy62_32BGRA";
      break;
    case 0x36u:
      v3 = "FMT_Lossy50_32BGRA";
      break;
    case 0x37u:
      v3 = "FMT_AGX_64RGBAHalf";
      break;
    case 0x38u:
      v3 = "FMT_Lossy75_64RGBAHalf";
      break;
    case 0x39u:
      v3 = "FMT_Lossy62_64RGBAHalf";
      break;
    case 0x3Au:
      v3 = "FMT_Lossy50_64RGBAHalf";
      break;
    case 0x46u:
      v3 = "FMT_Lossless_420YpCbCr8BiPlanarVideoRange";
      break;
    case 0x47u:
      v3 = "FMT_Lossless_420YpCbCr8BiPlanarFullRange";
      break;
    case 0x5Au:
      v3 = "FMT_12RLSB_12G12BMSB";
      break;
    case 0x5Bu:
      v3 = "FMT_OneComponent12LSB";
      break;
    case 0x64u:
      v3 = "FMT_MultiSlice_Lossless_OneComponent16Half";
      break;
    default:
      v6 = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v9, a1);
      v7 = std::string::insert(&v9, 0, "Unsupported format: ");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(v6, &v10);
      v6->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v6, off_278235F80, MEMORY[0x277D82610]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void sub_217FA82F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t MIL::GetNumPlanesForFormat(int a1)
{
  if ((a1 - 21) < 9)
  {
    return 2;
  }

  result = 1;
  if (a1 > 89)
  {
    if (a1 != 90)
    {
      return result;
    }

    return 2;
  }

  if ((a1 - 70) < 2)
  {
    return 2;
  }

  if (a1 == 20 || a1 == 40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported pixel format type.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

uint64_t MIL::GetChannelDimForFormat(int a1, unsigned int a2)
{
  result = MIL::SupportsMultiSlice(a1);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Channel dim for multislice is defined via numSlices.");
LABEL_15:
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 15:
    case 17:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 91:
    case 100:
      if (a2)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        v18 = a1;
        v19 = v17;
        MIL::IRPixelFormatTypeToString(v18, &v51);
        v20 = std::string::insert(&v51, 0, "Plane index exceeds number of planes of ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = std::string::append(&v52, ": ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v50, a2);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v50;
        }

        else
        {
          v24 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v50.__r_.__value_.__l.__size_;
        }

        v26 = std::string::append(&v53, v24, size);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(v19, &v54);
        v19->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v19, off_278235F80, MEMORY[0x277D82610]);
      }

      return 1;
    case 4:
    case 5:
    case 6:
      if (a2)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        v40 = a1;
        v41 = v39;
        MIL::IRPixelFormatTypeToString(v40, &v51);
        v42 = std::string::insert(&v51, 0, "Plane index exceeds number of planes of ");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v52, ": ");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v50, a2);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v50;
        }

        else
        {
          v46 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v50.__r_.__value_.__l.__size_;
        }

        v48 = std::string::append(&v53, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(v41, &v54);
        v41->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v41, off_278235F80, MEMORY[0x277D82610]);
      }

      return 2;
    case 11:
    case 12:
    case 13:
    case 14:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
      if (a2)
      {
        v6 = __cxa_allocate_exception(0x10uLL);
        v7 = a1;
        v8 = v6;
        MIL::IRPixelFormatTypeToString(v7, &v51);
        v9 = std::string::insert(&v51, 0, "Plane index exceeds number of planes of ");
        v10 = *&v9->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        v11 = std::string::append(&v52, ": ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v50, a2);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v50;
        }

        else
        {
          v13 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v50.__r_.__value_.__l.__size_;
        }

        v15 = std::string::append(&v53, v13, v14);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(v8, &v54);
        v8->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v8, off_278235F80, MEMORY[0x277D82610]);
      }

      return 4;
    case 20:
    case 40:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported pixel format type.");
      goto LABEL_15;
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 70:
    case 71:
    case 90:
      if (a2 >= 2)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        v29 = a1;
        v30 = v28;
        MIL::IRPixelFormatTypeToString(v29, &v51);
        v31 = std::string::insert(&v51, 0, "Plane index exceeds number of planes of ");
        v32 = *&v31->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v52, ": ");
        v34 = *&v33->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v50, a2);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v50;
        }

        else
        {
          v35 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v50.__r_.__value_.__l.__size_;
        }

        v37 = std::string::append(&v53, v35, v36);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        std::logic_error::logic_error(v30, &v54);
        v30->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v30, off_278235F80, MEMORY[0x277D82610]);
      }

      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }

    default:
      return result;
  }
}

void sub_217FA8ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t std::unordered_map<std::string,MIL::IRPixelFormatType>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRPixelFormatType>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::IRPixelFormatType> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRPixelFormatType>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::IRPixelFormatType> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRPixelFormatType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRPixelFormatType>>>::__construct_node_hash<std::pair<std::string const,MIL::IRPixelFormatType> const&>();
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

void sub_217FA9004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FA90CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void MIL::IRProgram::~IRProgram(MIL::IRProgram *this)
{
  MIL::IRCachedScope::~IRCachedScope((this + 64));

  MIL::IRObject::~IRObject(this);
}

void *MIL::IRProgram::IRProgram(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::IRObject::IRObject(a1, &v5, a3);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  MIL::IRCachedScope::IRCachedScope((a1 + 8));
  *a1 = &unk_2829DEE60;
  a1[8] = &unk_2829DEEE8;
  return a1;
}

void MIL::IRProgram::Make(__int128 *a1, __int128 *a2)
{
  v6 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v2 = 0u;
  v3 = 0u;
  v4 = 1065353216;
  MIL::IRProgram::Make();
}

void sub_217FA9264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_217FA9350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v12, v13);
  _Unwind_Resume(a1);
}

_anonymous_namespace_::IRProgramImpl **std::unique_ptr<anonymous namespace::IRProgramImpl>::~unique_ptr[abi:ne200100](_anonymous_namespace_::IRProgramImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

uint64_t MIL::IRProgram::GetFunction(uint64_t a1)
{
  result = (*(*a1 + 56))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v3 = std::string::append(&v5, "' does not exist.");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v6.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v6.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v6);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

void sub_217FA94BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_217FA95BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRProgram::ToString(a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::IRProgramImpl::~IRProgramImpl(_anonymous_namespace_::IRProgramImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 176);
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MIL::IRCachedScope::~IRCachedScope((this + 64));

  MIL::IRObject::~IRObject(this);
}

{

  JUMPOUT(0x21CEAFEA0);
}

void non-virtual thunk toanonymous namespace::IRProgramImpl::~IRProgramImpl(_anonymous_namespace_::IRProgramImpl *this)
{
}

{

  JUMPOUT(0x21CEAFEA0);
}

uint64_t anonymous namespace::IRProgramImpl::IRProgramImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  MIL::IRProgram::IRProgram(a1, &v9, a5);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  *a1 = &unk_2829DEF88;
  *(a1 + 64) = &unk_2829DF018;
  *(a1 + 160) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  return a1;
}

void sub_217FA96FC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v3);
  v5 = *(v1 + 21);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MIL::IRCachedScope::~IRCachedScope(v2);
  MIL::IRObject::~IRObject(v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRProgramImpl::SetFunctions(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2829DF098;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = v3;
  MIL::IRCachedScope::InvalidateAndCall(a1 + 64, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_217FA97C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL anonymous namespace::IRProgramImpl::EqualsImpl(_anonymous_namespace_::IRProgramImpl *this, const MIL::IRObject *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*(this + 25) != v3[25])
  {
    return 0;
  }

  v5 = this + 192;
  do
  {
    v5 = *v5;
    v6 = v5 == 0;
    if (!v5)
    {
      break;
    }

    v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v4 + 22, v5 + 2);
    if (!v7)
    {
      break;
    }
  }

  while ((MIL::IRObject::Equals(*(v5 + 5), v7[5]) & 1) != 0);
  return v6;
}

void anonymous namespace::IRProgramImpl::Copy(_anonymous_namespace_::IRProgramImpl *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
}

void sub_217FA9924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRProgramImpl::GetContextSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 168);
  *a2 = *(this + 160);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

const void *anonymous namespace::IRProgramImpl::TryGetFunction(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 176), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **anonymous namespace::IRProgramImpl::TryGetFunctionSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 176), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void anonymous namespace::IRProgramImpl::WithFunctions(MIL::IRObject *a1)
{
  MIL::IRObject::GetLocationPtr(a1);
  Attributes = MIL::IRObject::GetAttributes(a1);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v3, Attributes);
}

void anonymous namespace::IRProgramImpl::WithRenames(MIL::IRObject *this)
{
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  for (i = *(this + 24); i; i = *i)
  {
    (*(*i[5] + 224))(v5);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRFunction>>(v6, i + 2);
    v3 = v5[0];
    v5[0] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  MIL::IRObject::GetLocationPtr(this);
  Attributes = MIL::IRObject::GetAttributes(this);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v5, Attributes);
}

void sub_217FA9BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(_anonymous_namespace_::IRProgramImpl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 1;
  v4 = &unk_2829DF118;
  v5 = &v3;
  v7 = &v4;
  MIL::Util::Walk(this, &v4);
  std::__function::__value_func<BOOL ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&v4);
  v4 = &unk_2829DF1A8;
  v5 = this;
  v6 = &v3;
  v7 = &v4;
  MIL::Util::Walk(this, &v4);
  std::__function::__value_func<BOOL ()(MIL::IRFunction const&)>::~__value_func[abi:ne200100](&v4);
  v4 = &unk_2829DF238;
  v5 = this;
  v6 = &v3;
  v7 = &v4;
  MIL::Util::Walk(this, &v4);
  std::__function::__value_func<BOOL ()(MIL::IRBlock const&)>::~__value_func[abi:ne200100](&v4);
  return v3;
}

void sub_217FA9D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(MIL::IRBlock const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::IRProgramImpl::BuildScopeCache(_anonymous_namespace_::IRProgramImpl *this)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  MIL::IRMutableScope::Make();
}

void sub_217FA9DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<anonymous namespace::IRProgramImpl::SetFunctions(std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&)::{lambda(void)#1},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DF098;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<anonymous namespace::IRProgramImpl::SetFunctions(std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&)::{lambda(void)#1},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(v1 + 176, *(a1 + 16));
  for (i = *(v1 + 192); i; i = *i)
  {
    (*(*i[5] + 184))(i[5], v1);
  }
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::SetFunctions(std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&)::{lambda(void)#1},std::allocator<std::unordered_map<std::string,std::shared_ptr<MIL::IRFunction>> &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_217FAA09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRFunction>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__construct_node_hash<std::string const&,std::unique_ptr<MIL::IRFunction>>();
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

void sub_217FAA31C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IRFunction>>::pair[abi:ne200100]<std::string const&,std::unique_ptr<MIL::IRFunction>,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

  std::shared_ptr<MIL::IRFunction>::shared_ptr[abi:ne200100]<MIL::IRFunction,std::default_delete<MIL::IRFunction>,0>(&this[1], a3);
  return this;
}

void sub_217FAA41C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1}>,BOOL ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829DF118;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1}>,BOOL ()(MIL::IROperation const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 232))(a2);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    if (*v4 <= 3)
    {
      v5 = 3;
    }

    *v4 = v5;
  }

  return v3 == 0;
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IROperation const&)#1}>,BOOL ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1}>,BOOL ()(MIL::IRFunction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DF1A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1}>,BOOL ()(MIL::IRFunction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *v4;
  if (*v4 <= v3)
  {
    v5 = v3;
  }

  *v4 = v5;
  return 1;
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRFunction const&)#1}>,BOOL ()(MIL::IRFunction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::IRProgramImpl::MinimumRequiredSyntaxForScope(_anonymous_namespace_::IRProgramImpl *this, const MIL::IRCachedScope *a2)
{
  v2 = *((*(*this + 32))(this, a2) + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 1;
  do
  {
    if (MIL::IRValueType::TryCastAsStateType(v2[5]))
    {
      v3 = 4;
    }

    else
    {
      v4 = MIL::IRValueType::TryCastAsMemoryLayoutType(v2[5]);
      if (v4)
      {
        v5 = v4;
        if (MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(v4) || MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(v5) || MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v5))
        {
          if (v3 <= 3)
          {
            v3 = 3;
          }

          else
          {
            v3 = v3;
          }
        }
      }
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IRFunction const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1}>,BOOL ()(MIL::IRBlock const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829DF238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1}>,BOOL ()(MIL::IRBlock const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *v4;
  if (*v4 <= v3)
  {
    v5 = v3;
  }

  *v4 = v5;
  return 1;
}

uint64_t std::__function::__func<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1},std::allocator<anonymous namespace::IRProgramImpl::GetMinimumRequiredSyntaxVersion(void)::{lambda(MIL::IRBlock const&)#1}>,BOOL ()(MIL::IRBlock const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IRBlock const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *MIL::IRScope::IRScope(MIL::IRScope *this)
{
  result = MIL::IRValueQueryable::IRValueQueryable(this);
  *result = &unk_2829DF2C8;
  return result;
}

void MIL::IRCachedScope::~IRCachedScope(MIL::IRCachedScope *this)
{
  *this = &unk_2829DF328;
  std::mutex::~mutex((this + 24));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MIL::IRValueQueryable::~IRValueQueryable(this);
}

double MIL::IRCachedScope::IRCachedScope(MIL::IRCachedScope *this)
{
  v1 = MIL::IRValueQueryable::IRValueQueryable(this);
  *v1 = &unk_2829DF328;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 850045863;
  result = 0.0;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  v1[10] = 0;
  *(v1 + 88) = 1;
  return result;
}

void MIL::IRCachedScope::DisableCache(MIL::IRCachedScope *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  atomic_store(0, this + 88);

  std::mutex::unlock((this + 24));
}

uint64_t MIL::IRCachedScope::IsCacheEnabled(MIL::IRCachedScope *this)
{
  std::mutex::lock((this + 24));
  v2 = atomic_load(this + 88);
  std::mutex::unlock((this + 24));
  return v2 & 1;
}

void MIL::IRCachedScope::InvalidateAndCall(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5);

  std::mutex::unlock((a1 + 24));
}

uint64_t MIL::IRCachedScope::GetParent(MIL::IRCachedScope *this)
{
  MIL::IRCachedScope::GetScope(this, &v3);
  v1 = (*(*v3 + 72))(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_217FAACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRCachedScope::GetScope(MIL::IRCachedScope *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(this + 88);
  if (v4)
  {
    v6 = (this + 8);
    v5 = *(this + 1);
    if (v5)
    {
LABEL_8:
      v10 = *(this + 2);
      *a2 = v5;
      a2[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    }

    v7 = (this + 24);
    std::mutex::lock((this + 24));
    v8 = atomic_load(this + 88);
    if (v8)
    {
      if (!*v6)
      {
        (*(*this + 80))(&v13, this);
        std::shared_ptr<MIL::IRScope const>::operator=[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(this + 1, &v13);
        v9 = v13;
        v13 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      std::mutex::unlock((this + 24));
      v5 = *v6;
      goto LABEL_8;
    }

    (*(*this + 80))(&v13, this);
    std::shared_ptr<MIL::IRScope const>::operator=[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(this + 1, &v13);
  }

  else
  {
    v7 = (this + 24);
    std::mutex::lock((this + 24));
    (*(*this + 80))(&v13, this);
    std::shared_ptr<MIL::IRScope const>::operator=[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(this + 1, &v13);
  }

  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 2);
  *a2 = *(this + 1);
  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v7);
}

void sub_217FAAE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRCachedScope::GetScope(a10);
  }

  std::mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRCachedScope::GetType(MIL::IRCachedScope *a1, uint64_t a2, uint64_t a3)
{
  MIL::IRCachedScope::GetScope(a1, &v7);
  v5 = (*(*v7 + 16))(v7, a2, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_217FAAF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCachedScope::TryGetType(MIL::IRCachedScope *a1, uint64_t a2, uint64_t a3)
{
  MIL::IRCachedScope::GetScope(a1, &v7);
  v5 = (*(*v7 + 24))(v7, a2, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_217FAB004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCachedScope::GetTypes(MIL::IRCachedScope *this)
{
  MIL::IRCachedScope::GetScope(this, &v3);
  v1 = (*(*v3 + 32))(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_217FAB084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCachedScope::GetValue(MIL::IRCachedScope *a1, uint64_t a2, uint64_t a3)
{
  MIL::IRCachedScope::GetScope(a1, &v7);
  v5 = (*(*v7 + 40))(v7, a2, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_217FAB114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCachedScope::TryGetValue(MIL::IRCachedScope *a1, uint64_t a2, uint64_t a3)
{
  MIL::IRCachedScope::GetScope(a1, &v7);
  v5 = (*(*v7 + 48))(v7, a2, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_217FAB1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRCachedScope::TryGetValueSharedPtr(MIL::IRCachedScope *a1, uint64_t a2, uint64_t a3)
{
  MIL::IRCachedScope::GetScope(a1, &v6);
  (*(*v6 + 56))(v6, a2, a3);
  v5 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_217FAB25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCachedScope::GetValues(MIL::IRCachedScope *this)
{
  MIL::IRCachedScope::GetScope(this, &v3);
  v1 = (*(*v3 + 64))(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_217FAB2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<MIL::IRScope const>::operator=[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRScope const>::shared_ptr[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *MIL::IRMutableScope::IRMutableScope(MIL::IRMutableScope *this)
{
  result = MIL::IRValueQueryable::IRValueQueryable(this);
  *result = &unk_2829DF390;
  return result;
}

void MIL::IRMutableScope::Make()
{
  operator new();
}

{
  operator new();
}

MIL::IRValueQueryable **std::unique_ptr<anonymous namespace::IRScopeImpl>::~unique_ptr[abi:ne200100](MIL::IRValueQueryable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 56);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 16);
    MIL::IRValueQueryable::~IRValueQueryable(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void anonymous namespace::IRScopeImpl::~IRScopeImpl(_anonymous_namespace_::IRScopeImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 56);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 16);

  MIL::IRValueQueryable::~IRValueQueryable(this);
}

{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 56);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 16);
  MIL::IRValueQueryable::~IRValueQueryable(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *std::shared_ptr<MIL::IRScope const>::shared_ptr[abi:ne200100]<MIL::IRScope const,std::default_delete<MIL::IRScope const>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IRScope const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRScope const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRScope const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *anonymous namespace::IRScopeImpl::IRScopeImpl(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = MIL::IRValueQueryable::IRValueQueryable(a1);
  *v8 = &unk_2829DF4C0;
  v8[1] = a2;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table((v8 + 2), a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table((a1 + 7), a4);
  return a1;
}

uint64_t anonymous namespace::IRScopeImpl::GetType(uint64_t a1, const void **a2, char a3)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  return result;
}

void sub_217FAB920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v23)
  {
LABEL_12:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v22);
  goto LABEL_12;
}

uint64_t anonymous namespace::IRScopeImpl::TryGetType(uint64_t a1, const void **a2, char a3)
{
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 16), a2);
  if (v5)
  {
    if ((a3 & 1) != 0 || *(a1 + 8))
    {
      return v5[5];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = *(*result + 24);

      return v7();
    }
  }

  return result;
}

uint64_t anonymous namespace::IRScopeImpl::GetValue(uint64_t a1, const void **a2, char a3)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  return result;
}

void sub_217FABB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v23)
  {
LABEL_12:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v22);
  goto LABEL_12;
}

uint64_t anonymous namespace::IRScopeImpl::TryGetValue(uint64_t a1, const void **a2, char a3)
{
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

const void **anonymous namespace::IRScopeImpl::TryGetValueSharedPtr@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 56), a2);
  if (result)
  {
    if ((a3 & 1) != 0 || *(a1 + 8))
    {
      v8 = result[6];
      *a4 = result[5];
      a4[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      return result;
    }

LABEL_10:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  result = *(a1 + 8);
  if (!result)
  {
    goto LABEL_10;
  }

  v9 = *(*result + 7);

  return v9();
}

BOOL anonymous namespace::IRScopeImpl::SetType(uint64_t a1, const void **a2, const void *a3, char a4)
{
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 16), a2);
  if (v8 && (a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  v9 = v8 == 0;
  v12.__r_.__value_.__r.__words[0] = a2;
  std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 16), a2)[5] = a3;
  return v9;
}

void sub_217FABEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v23)
  {
LABEL_12:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v22);
  goto LABEL_12;
}

BOOL anonymous namespace::IRScopeImpl::SetValue(uint64_t a1, const void **a2, __int128 *a3, char a4)
{
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 56), a2);
  if (v8 && (a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    MIL::UnknownLocation::Make(exception);
  }

  v14.__r_.__value_.__r.__words[0] = a2;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 56), a2);
  v10 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = v9[6];
  *(v9 + 5) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8 == 0;
}

void sub_217FAC0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
    if ((v25 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v25)
  {
LABEL_12:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v24);
  goto LABEL_12;
}

void anonymous namespace::IRScopeImpl::WithRenames(uint64_t a1, const void ***a2)
{
  std::unordered_map<std::string,MIL::IRValueType const*>::unordered_map(v16, a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v16, v4);
      if (v6)
      {
        v7 = v6[5];
        v15[0] = v4 + 3;
        std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, v4 + 3)[5] = v7;
        std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>(v16, v4);
      }

      v4 += 6;
    }

    while (v4 != v5);
  }

  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v15, a1 + 56);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(v15, v8);
      if (v10)
      {
        v16[6] = v8 + 3;
        v11 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15, v8 + 3);
        v13 = v10[5];
        v12 = v10[6];
        if (v12)
        {
          atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
        }

        v14 = v11[6];
        v11[5] = v13;
        v11[6] = v12;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(v15, v8);
      }

      v8 += 6;
    }

    while (v8 != v9);
  }

  operator new();
}

void sub_217FAC370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

const void **anonymous namespace::IRScopeImpl::RemoveTypeAndValue(uint64_t a1, const void **a2)
{
  std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>((a1 + 16), a2);

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>((a1 + 56), a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_217FAC66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FAC734(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,MIL::IRValueType const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__construct_node_hash<std::pair<std::string const,MIL::IRValueType const*> const&>();
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

void sub_217FACA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FACACC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__shared_ptr_pointer<anonymous namespace::IRScopeImpl  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::IRScopeImpl  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v1 + 56);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 16);
    MIL::IRValueQueryable::~IRValueQueryable(v1);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::IRScopeImpl  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::IRValue::AsTensor(MIL::IRValue *this)
{
  result = (*(*this + 40))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValue::AsList(MIL::IRValue *this)
{
  result = (*(*this + 48))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValue::AsTuple(MIL::IRValue *this)
{
  result = (*(*this + 56))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValue::AsDictionary(MIL::IRValue *this)
{
  result = (*(*this + 64))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t anonymous namespace::TryGetScalarHelper<BOOL>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<BOOL>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<unsigned char>(void *lpsrc)
{
  {

    return MIL::IRTypedTensorValue<BOOL>::TryGetScalarValue(v2);
  }

  else
  {
    if (!result)
    {
    }
  }

  return result;
}

uint64_t anonymous namespace::TryGetScalarHelper<unsigned short>(void *lpsrc)
{
  {

    return MIL::IRTypedTensorValue<unsigned short>::TryGetScalarValue(v2);
  }

  else
  {
    if (!result)
    {
    }
  }

  return result;
}

uint64_t anonymous namespace::TryGetScalarHelper<unsigned int>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<unsigned int>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<unsigned long long>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<unsigned long long>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<signed char>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<signed char>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<short>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<short>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<int>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<int>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<long long>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<long long>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<MIL::Fp8E5M2>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<MIL::Fp8E5M2>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<MIL::Fp8E4M3FN>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<MIL::Bf16>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<MIL::Bf16>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<MIL::Fp16>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<MIL::Fp16>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<float>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<float>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<double>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<double>::TryGetScalarValue(v1);
}

uint64_t anonymous namespace::TryGetScalarHelper<std::string>(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return MIL::IRTypedTensorValue<std::string>::TryGetScalarValue(v1);
}

uint64_t MIL::IRValue::GetScalar<BOOL>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<unsigned char>(void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<unsigned short>(void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<unsigned int>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<unsigned long long>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<signed char>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<short>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<int>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<long long>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

uint64_t MIL::IRValue::GetScalar<MIL::Fp8E5M2>(const void *a1)
{
  if (!v1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *v1;
}

uint64_t MIL::IRValue::GetScalar<MIL::Fp8E4M3FN>(const void *a1)
{
  if (!v1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *v1;
}

uint64_t MIL::IRValue::GetScalar<MIL::Bf16>(const void *a1)
{
  if (!v1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *v1;
}

uint64_t MIL::IRValue::GetScalar<MIL::Fp16>(const void *a1)
{
  if (!v1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *v1;
}

float MIL::IRValue::GetScalar<float>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

double MIL::IRValue::GetScalar<double>(const void *a1)
{
  if (!Scalar)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v4, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return *Scalar;
}

void MIL::IRValue::GetScalar<std::string>(const void *a1@<X0>, std::string *a2@<X8>)
{
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v8, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
    v6 = *(v3 + 8);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

uint64_t *anonymous namespace::TryGetDataViewHelper<BOOL>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<unsigned char>::GetView(result[2]);
    *a2 = 1;
    if (v3)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

void anonymous namespace::TryGetDataViewHelper<unsigned char>(void *lpsrc@<X0>, uint64_t a2@<X8>)
{
  {
    if (v39[0] == 1)
    {
      v8 = v40;
      v9 = v41;
LABEL_9:
      v11 = ((v9 >> 1) & 0x1FFFFFFFFFFFFFFFLL) + (v9 & 1);
      v10 = v11 == 0;
LABEL_10:
      if (v10)
      {
        v8 = 0;
      }

      *a2 = 1;
LABEL_23:
      *(a2 + 8) = v8;
      *(a2 + 16) = v11;
      return;
    }

    if (v36[0] == 1)
    {
      v8 = v37;
      v12 = v38;
LABEL_15:
      v13 = v12 >> 3;
      v14 = (v12 & 7) == 0;
      goto LABEL_18;
    }

    if (v33[0] == 1)
    {
      v8 = v34;
      v13 = (v35 >> 2) & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v35 & 3) == 0;
    }

    else
    {
      if (v30[0] == 1)
      {
        v8 = v31;
        v12 = 3 * v32;
        goto LABEL_15;
      }

      if (v27[0] == 1)
      {
        v8 = v28;
        v9 = v29;
        goto LABEL_9;
      }

      if (v24[0] != 1)
      {
        if (v21[0] == 1)
        {
          v8 = v22;
          v11 = v23;
        }

        else
        {
          if (v18[0] == 1)
          {
            v8 = v19;
            v11 = v20;
          }

          else
          {
            if (v15[0] != 1)
            {
              *(a2 + 8) = 0;
              *(a2 + 16) = 0;
              *a2 = 0;
              return;
            }

            v8 = v16;
            v11 = v17;
          }
        }

        v10 = v11 == 0;
        goto LABEL_10;
      }

      v8 = v25;
      v13 = ((3 * v26) >> 2) & 0x1FFFFFFFFFFFFFFFLL;
      v14 = ((6 * v26) & 6) == 0;
    }

LABEL_18:
    if (v14)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13 + 1;
    }

    *a2 = 1;
    if (!v11)
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  View = MIL::IRValueContiguousData<unsigned char>::GetView(v4[2]);
  *a2 = 1;
  if (v6)
  {
    v7 = View;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
}

uint64_t anonymous namespace::TryGetDataViewHelper<unsigned short>@<X0>(uint64_t *lpsrc@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<unsigned short>::GetView(v4[2]);
    *a2 = 1;
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 8) = v7;
    *(a2 + 16) = v6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v14[0] == 1)
    {
      v8 = v15;
      v9 = v16;
    }

    else
    {
      if (v11[0] != 1)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0;
        return result;
      }

      v8 = v12;
      v9 = v13;
    }

    v10 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v8 = 0;
    }

    *a2 = 1;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<unsigned int>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<unsigned int>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<unsigned long long>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<unsigned long long>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<signed char>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<signed char>::GetView(result[2]);
    *a2 = 1;
    if (v3)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<short>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<short>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<int>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<int>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<long long>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<long long>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<MIL::Fp8E5M2>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(result[2]);
    *a2 = 1;
    if (v3)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<MIL::Fp8E4M3FN>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(result[2]);
    *a2 = 1;
    if (v3)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<MIL::Bf16>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<MIL::Bf16>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<MIL::Fp16>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<MIL::Fp16>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<float>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<float>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<double>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<double>::GetView(result[2]);
    *a2 = 1;
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = v3 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t *anonymous namespace::TryGetDataViewHelper<std::string>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  {
    result = MIL::IRValueContiguousData<std::string>::GetView(result[2]);
    *a2 = 1;
    if ((24 * v3) >= 0x18)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 8) = v4;
    *(a2 + 16) = 24 * v3 / 0x18uLL;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  return result;
}

void anonymous namespace::TryGetDataViewHelper<MIL::Int4>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::Int4>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

void anonymous namespace::TryGetDataViewHelper<MIL::UInt6>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

void anonymous namespace::TryGetDataViewHelper<MIL::UInt4>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

void anonymous namespace::TryGetDataViewHelper<MIL::UInt3>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

void anonymous namespace::TryGetDataViewHelper<MIL::UInt2>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

void anonymous namespace::TryGetDataViewHelper<MIL::UInt1>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  {
    MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }
}

uint64_t MIL::IRTensorValue::GetDataView<BOOL>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<unsigned char>(void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<unsigned short>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<unsigned int>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<unsigned long long>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<signed char>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<short>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<int>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<long long>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::Bf16>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::Fp16>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<float>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<double>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<std::string>(uint64_t *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::Int4>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::UInt6>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::UInt4>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::UInt3>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::UInt2>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

uint64_t MIL::IRTensorValue::GetDataView<MIL::UInt1>(const void *a1)
{
  if ((v4[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return v5;
}

void MIL::IRTypedTensorValue<MIL::Int4>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char const,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char const,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(6 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char const,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char const,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(3 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char const,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(2 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(uint64_t a1)
{
  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  v4 = v3;
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));

  MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char const,true>(View, v4, v5);
}

void MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char const,true>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t GetHashForSubByte<MIL::Int4>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::Int4>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::Int4>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t GetHashForSubByte<MIL::UInt6>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::UInt6>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t GetHashForSubByte<MIL::UInt4>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::UInt4>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t GetHashForSubByte<MIL::UInt3>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::UInt3>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t GetHashForSubByte<MIL::UInt2>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::UInt2>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t GetHashForSubByte<MIL::UInt1>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(a1);
  v10[0] = v4;
  v10[1] = v3;
  if (v3)
  {
    v5 = v3;
    for (i = 0; i != v5; ++i)
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, i);
      v7 = std::hash<MIL::UInt1>::operator()(&v11, &v9);
      MIL::Util::HashCombine(&v12, v7);
    }

    return v12;
  }

  return v2;
}

uint64_t MIL::IRTypedTensorValue<MIL::Int4>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::Int4>::GetValues(a1);
  if ((v3 >> 1) & 0x1FFFFFFFFFFFFFFFLL | v3 & 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::Int4::Int4(&v8, *v4 & 0xF);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt6>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::UInt6>::GetValues(a1);
  if ((((6 * v3) & 6) != 0) | ((6 * v3) >> 3))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::UInt6::UInt6(&v8, *v4 & 0x3F);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt4>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::UInt4>::GetValues(a1);
  if ((v3 >> 1) & 0x1FFFFFFFFFFFFFFFLL | v3 & 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::UInt4::UInt4(&v8, *v4 & 0xF);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt3>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::UInt3>::GetValues(a1);
  if ((((3 * v3) & 7) != 0) | ((3 * v3) >> 3))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::UInt3::UInt3(&v8, *v4 & 7);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt2>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::UInt2>::GetValues(a1);
  if ((v3 >> 2) & 0x1FFFFFFFFFFFFFFFLL | ((v3 & 3) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::UInt2::UInt2(&v8, *v4 & 3);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<MIL::UInt1>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  MIL::IRTypedTensorValue<MIL::UInt1>::GetValues(a1);
  if (((v3 & 7) != 0) | (v3 >> 3))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MIL::UInt1::UInt1(&v8, *v4 & 1);
  return v8;
}

uint64_t MIL::IRTypedTensorValue<BOOL>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<BOOL>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB00E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DF6C0;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB01F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB0304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB03EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB04D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<BOOL>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<unsigned char>::GetView(a1[2]);
  v7 = v6;
  v8 = v6 ? View : 0;
  v9 = MIL::IRValueContiguousData<unsigned char>::GetView(*(v4 + 16));
  v11 = v10 ? v9 : 0;
  if (v7 != v10)
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB0704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<BOOL>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<BOOL>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<unsigned char>::GetView(v1);
  if (v7)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      --v9;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<BOOL>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<BOOL>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<unsigned char>::GetView(*(a1 + 16));
  if (v3)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<BOOL>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB0A30(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<std::string>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<std::string>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB0CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DF7A0;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB0DE0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB0EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB0FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB10B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<std::string>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<std::string>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (a1[1] != *(result + 8))
    {
      return 0;
    }

    View = MIL::IRValueContiguousData<std::string>::GetView(a1[2]);
    v7 = 24 * v6 / 0x18uLL;
    v8 = (24 * v6) >= 0x18 ? View : 0;
    v9 = MIL::IRValueContiguousData<std::string>::GetView(*(v4 + 16));
    v11 = (24 * v10) >= 0x18 ? v9 : 0;
    if (v7 != 24 * v10 / 0x18uLL)
    {
      return 0;
    }

    (*(*a1[2] + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareValues<std::string>(v8, v7, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_28;
  }

  return result;
}

void sub_217FB12E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<std::string>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<std::string>::GetView(*(a1 + 16));
  if ((24 * v2) < 0x18)
  {
    return 0;
  }

  return result;
}

BOOL CompareValues<std::string>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 23);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    v7 = *(a3 + 23);
    v8 = *(a3 + 8);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *(a3 + 23);
    }

    if (v6 == v8)
    {
      v10 = 0;
      v11 = 0;
      v12 = v5 >> 63;
      v13 = v7 >> 63;
      v14 = 1;
      do
      {
        if (v12)
        {
          v15 = *(a1 + v10);
        }

        else
        {
          v15 = (a1 + v10);
        }

        if (v13)
        {
          v16 = *(a3 + v10);
        }

        else
        {
          v16 = (a3 + v10);
        }

        if (memcmp(v15, v16, v6))
        {
          break;
        }

        v11 = v14 >= a2;
        if (a2 == v14)
        {
          break;
        }

        v17 = *(a1 + v10 + 47);
        v12 = v17 >> 63;
        v6 = (v17 & 0x80000000) == 0 ? *(a1 + v10 + 47) : *(a1 + v10 + 32);
        v18 = *(a3 + v10 + 47);
        v13 = v18 >> 63;
        v19 = *(a3 + v10 + 32);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = *(a3 + v10 + 47);
        }

        v10 += 24;
        ++v14;
      }

      while (v6 == v19);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

unint64_t MIL::IRTypedTensorValue<std::string>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v13 = v5;
  View = MIL::IRValueContiguousData<std::string>::GetView(v1);
  if ((24 * v7) >= 0x18)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((24 * v7) >= 0x18)
  {
    v9 = 24 * (24 * v7 / 0x18uLL);
    do
    {
      v10 = std::__string_hash<char>::operator()[abi:ne200100](&v12, v8);
      MIL::Util::HashCombine(&v13, v10);
      v8 += 24;
      v9 -= 24;
    }

    while (v9);
    return v13;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<std::string>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<std::string>::GetView(*(a1 + 16));
  if ((24 * v3) < 0x18)
  {
    return 0;
  }

  return result;
}

void MIL::IRTypedTensorValue<std::string>::GetScalarValue(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v11, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<std::string>::GetView(*(a1 + 16));
  if ((24 * v5) >= 0x18)
  {
    v6 = View;
  }

  else
  {
    v6 = 0;
  }

  if (*(v6 + 23) < 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);

    std::string::__init_copy_ctor_external(a2, v8, v9);
  }

  else
  {
    v7 = *v6;
    a2->__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&a2->__r_.__value_.__l.__data_ = v7;
  }
}

uint64_t MIL::IRTypedTensorValue<std::string>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB1794(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::Bf16>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB1A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DF858;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB1B44(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB1C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB1D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB1E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Bf16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<MIL::Bf16>::GetView(a1[2]);
  v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<MIL::Bf16>::GetView(*(v4 + 16));
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB204C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Bf16>::GetView(*(a1 + 16));
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<MIL::Bf16>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<MIL::Bf16>::GetView(v1);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 2 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 2;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<MIL::Bf16>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<MIL::Bf16>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<MIL::Bf16>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB2368(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::Fp16>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB2608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DF910;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB2718(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB2824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB29F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp16>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<MIL::Fp16>::GetView(a1[2]);
  v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<MIL::Fp16>::GetView(*(v4 + 16));
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB2C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp16>::GetView(*(a1 + 16));
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<MIL::Fp16>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<MIL::Fp16>::GetView(v1);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 2 * v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      v9 -= 2;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<MIL::Fp16>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<MIL::Fp16>::GetView(*(a1 + 16));
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp16>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB2F3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::Fp8E5M2>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB31DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DF9C8;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 25)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB32EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB33F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB34E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB35C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E5M2>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (a1[1] != *(result + 8))
    {
      return 0;
    }

    View = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(a1[2]);
    v7 = v6;
    v8 = v6 ? View : 0;
    v9 = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(*(v4 + 16));
    v11 = v10 ? v9 : 0;
    if (v7 != v10)
    {
      return 0;
    }

    (*(*a1[2] + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareValues<MIL::Fp8E5M2>(v8, v7, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_28;
  }

  return result;
}

void sub_217FB37D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

BOOL CompareValues<MIL::Fp8E5M2>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = 0;
    for (i = 0; i != a2; v6 = i >= a2)
    {
      if (((*(a1 + i) & 0x7F) != 0 || (*(a3 + i) & 0x7F) != 0) && (MIL::Fp8E5M2::IsNaN((a1 + i)) && MIL::Fp8E5M2::IsNaN((a3 + i)) || *(a1 + i) != *(a3 + i)))
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

unint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(v1);
  if (v7)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      --v9;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(*(a1 + 16));
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<MIL::Fp8E5M2>::GetView(*(a1 + 16));
  if (v3)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E5M2>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB3BA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB3E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFA80;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB3F50(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB405C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB4144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB4228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (a1[1] != *(result + 8))
    {
      return 0;
    }

    View = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(a1[2]);
    v7 = v6;
    v8 = v6 ? View : 0;
    v9 = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(*(v4 + 16));
    v11 = v10 ? v9 : 0;
    if (v7 != v10)
    {
      return 0;
    }

    (*(*a1[2] + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareValues<MIL::Fp8E4M3FN>(v8, v7, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_28;
  }

  return result;
}

void sub_217FB4438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

BOOL CompareValues<MIL::Fp8E4M3FN>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = 0;
    for (i = 0; i != a2; v6 = i >= a2)
    {
      if (((*(a1 + i) & 0x7F) != 0 || (*(a3 + i) & 0x7F) != 0) && (MIL::Fp8E4M3FN::IsNaN((a1 + i)) && MIL::Fp8E4M3FN::IsNaN((a3 + i)) || *(a1 + i) != *(a3 + i)))
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

unint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(v1);
  if (v7)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      --v9;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(*(a1 + 16));
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<MIL::Fp8E4M3FN>::GetView(*(a1 + 16));
  if (v3)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB4804(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<float>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<float>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<float>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB4AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<float>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<float>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFB38;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB4BB4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB4CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<float>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB4DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<float>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB4E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<float>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<float>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<float>::GetView(a1[2]);
  v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<float>::GetView(*(v4 + 16));
  v11 = (v10 & 0x3FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x3FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB50BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<float>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<float>::GetView(*(a1 + 16));
  if ((v2 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<float>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v14 = v5;
  View = MIL::IRValueContiguousData<float>::GetView(v1);
  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 4 * v7;
    do
    {
      v10 = *v8++;
      v11 = LODWORD(v10);
      if (v10 == 0.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      MIL::Util::HashCombine(&v14, v12);
      v9 -= 4;
    }

    while (v9);
    return v14;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<float>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<float>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

float MIL::IRTypedTensorValue<float>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<float>::GetView(*(a1 + 16));
  if ((v3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<float>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB53E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<double>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<double>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<double>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB5684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<double>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<double>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFBF0;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB5794(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB58A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<double>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB5988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<double>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB5A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<double>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<double>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<double>::GetView(a1[2]);
  v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<double>::GetView(*(v4 + 16));
  v11 = (v10 & 0x1FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x1FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB5C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<double>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<double>::GetView(*(a1 + 16));
  if ((v2 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<double>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v14 = v5;
  View = MIL::IRValueContiguousData<double>::GetView(v1);
  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v11 = v10;
      if (v10 == 0.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = *&v11;
      }

      MIL::Util::HashCombine(&v14, v12);
      v9 -= 8;
    }

    while (v9);
    return v14;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<double>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<double>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  return result;
}

double MIL::IRTypedTensorValue<double>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<double>::GetView(*(a1 + 16));
  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<double>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB5FC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Int4>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<MIL::Int4>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<MIL::Int4>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB6210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<MIL::Int4>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFCA8;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB6320(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB6514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB65F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<BOOL>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Int4>::Equals(uint64_t a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    v4 = result;
    if (*(a1 + 8) != *(result + 8))
    {
      return 0;
    }

    MIL::IRTypedTensorValue<MIL::Int4>::GetValues(a1);
    v6 = v5;
    v8 = v7;
    MIL::IRTypedTensorValue<MIL::Int4>::GetValues(v4);
    if (v8 != v10)
    {
      return 0;
    }

    v11 = v9;
    (*(**(a1 + 16) + 40))(v21);
    (*(**(v4 + 16) + 40))(__p);
    v12 = v22;
    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21[1];
    }

    v14 = v20;
    v15 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (v13 == v14)
    {
      if ((v22 & 0x80u) == 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = memcmp(v16, v17, v13) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v12 & 0x80) != 0)
        {
          operator delete(v21[0]);
          if (v18)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return CompareSubByteValues<MIL::Int4>(v6, v8, v11);
      }
    }

    else
    {
      v18 = 1;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    v12 = v22;
    goto LABEL_22;
  }

  return result;
}

void sub_217FB6800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<MIL::Int4>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB69B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<signed char>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<signed char>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB6C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFD60;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB6D60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB6E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB6F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB7038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<signed char>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<signed char>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<signed char>::GetView(a1[2]);
  v7 = v6;
  v8 = v6 ? View : 0;
  v9 = MIL::IRValueContiguousData<signed char>::GetView(*(v4 + 16));
  v11 = v10 ? v9 : 0;
  if (v7 != v10)
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}

void sub_217FB726C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<signed char>::GetValues(uint64_t a1)
{
  result = MIL::IRValueContiguousData<signed char>::GetView(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::IRTypedTensorValue<signed char>::GetHash(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = HIDWORD(v2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v12 = v5;
  View = MIL::IRValueContiguousData<signed char>::GetView(v1);
  if (v7)
  {
    v8 = View;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
    do
    {
      v10 = *v8++;
      MIL::Util::HashCombine(&v12, v10);
      --v9;
    }

    while (v9);
    return v12;
  }

  return v5;
}

uint64_t MIL::IRTypedTensorValue<signed char>::TryGetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    return 0;
  }

  result = MIL::IRValueContiguousData<signed char>::GetView(*(a1 + 16));
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::IRTypedTensorValue<signed char>::GetScalarValue(uint64_t a1)
{
  if (!MIL::IRTensorValueType::IsScalar(*(a1 + 8)))
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v7, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  View = MIL::IRValueContiguousData<signed char>::GetView(*(a1 + 16));
  if (v3)
  {
    v4 = View;
  }

  else
  {
    v4 = 0;
  }

  return *v4;
}

uint64_t MIL::IRTypedTensorValue<signed char>::GetFileProperties(uint64_t a1)
{
  result = MIL::IRValueContiguousData<BOOL>::TryGetFileProperties(*(a1 + 16));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "file properties not available for in-memory tensors");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_217FB7590(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<short>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void MIL::IRTypedTensorValue<short>::~IRTypedTensorValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

void MIL::IRTypedTensorValue<short>::IRTypedTensorValue()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_217FB7830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRTypedTensorValue<short>::IRTypedTensorValue(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2829DFE18;
  a1[1] = a2;
  v4 = *a3;
  *a3 = 0;
  a1[2] = v4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Type cannot be null");
    goto LABEL_6;
  }

  if ((*(*a2 + 88))(a2) != 10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_217FB7940(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FB7A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

void sub_217FB7C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MIL::IRTypedTensorValue<short>::IRTypedTensorValue();
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTypedTensorValue<short>::Equals(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (a1[1] != *(result + 8))
  {
    return 0;
  }

  View = MIL::IRValueContiguousData<short>::GetView(a1[2]);
  v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? View : 0;
  v9 = MIL::IRValueContiguousData<short>::GetView(*(v4 + 16));
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v9 : 0;
  if (v7 != (v10 & 0x7FFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (*(*a1[2] + 40))(v25);
  (*(**(v4 + 16) + 40))(__p);
  v12 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25[1];
  }

  v14 = v24;
  v15 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 1;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) != 0;
  if (v15 < 0)
  {
LABEL_26:
    operator delete(__p[0]);
    v12 = v26;
  }

LABEL_27:
  if ((v12 & 0x80) != 0)
  {
    operator delete(v25[0]);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (*v8 != *v11)
  {
    return 0;
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v7 == v19)
    {
      break;
    }

    v21 = v8[v19];
    v22 = v11[v19++];
  }

  while (v21 == v22);
  return v20 >= v7;
}