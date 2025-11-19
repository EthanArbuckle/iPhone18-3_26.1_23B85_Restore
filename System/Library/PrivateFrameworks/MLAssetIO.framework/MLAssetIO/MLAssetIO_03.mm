uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MIL::IRParameter  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique(uint64_t a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v5 <= v4)
      {
        v9 = v4 % v5;
      }
    }

    else
    {
      v9 = (v5 - 1) & v4;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v6)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, (a2 + 16)))
          {
            return 0;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v5)
            {
              v12 %= v5;
            }
          }

          else
          {
            v12 &= v5 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v5 || (v14 * v5) < v13)
  {
    v18 = 1;
    if (v5 >= 3)
    {
      v18 = (v5 & (v5 - 1)) != 0;
    }

    v19 = v18 | (2 * v5);
    v20 = vcvtps_u32_f32(v13 / v14);
    if (v19 <= v20)
    {
      prime = v20;
    }

    else
    {
      prime = v19;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v25 = *(a1 + 8);
    if (prime <= *&v25)
    {
      if (prime >= *&v25)
      {
        goto LABEL_19;
      }

      v26 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v25 < 3uLL || (v27 = vcnt_s8(v25), v27.i16[0] = vaddlv_u8(v27), v27.u32[0] > 1uLL))
      {
        v26 = std::__next_prime(v26);
      }

      else
      {
        v28 = 1 << -__clz(v26 - 1);
        if (v26 >= 2)
        {
          v26 = v28;
        }
      }

      if (prime <= v26)
      {
        prime = v26;
      }

      if (prime >= *&v25)
      {
        goto LABEL_19;
      }

      if (!prime)
      {
        v30 = *a1;
        *a1 = 0;
        if (v30)
        {
          operator delete(v30);
        }

        *(a1 + 8) = 0;
        goto LABEL_19;
      }
    }

    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

LABEL_19:
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
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

  v22 = *a1;
  v23 = *(*a1 + 8 * v16);
  if (v23)
  {
    *a2 = *v23;
LABEL_49:
    *v23 = a2;
    goto LABEL_50;
  }

  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v22[v16] = a1 + 16;
  if (*a2)
  {
    v24 = *(*a2 + 8);
    if (v17.u32[0] > 1uLL)
    {
      if (v24 >= *&v15)
      {
        v24 %= *&v15;
      }
    }

    else
    {
      v24 &= *&v15 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_49;
  }

LABEL_50:
  ++*(a1 + 24);
  return 1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void CoreML::MIL::Opsets::CoreML5Opset::~CoreML5Opset(CoreML::MIL::Opsets::CoreML5Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::CoreML6Opset::~CoreML6Opset(CoreML::MIL::Opsets::CoreML6Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::CoreML6_trainOpset::~CoreML6_trainOpset(CoreML::MIL::Opsets::CoreML6_trainOpset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::CoreML7Opset::~CoreML7Opset(CoreML::MIL::Opsets::CoreML7Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::CoreML8Opset::~CoreML8Opset(CoreML::MIL::Opsets::CoreML8Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::CoreML9Opset::~CoreML9Opset(CoreML::MIL::Opsets::CoreML9Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1C6908B60);
}

void CoreML::MIL::Opsets::RegisterCoreMLOpsets()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 7;
  strcpy(&__p, "CoreML5");
  operator new();
}

void sub_1C1C12A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v60 - 185) < 0)
  {
    operator delete(*(v60 - 208));
  }

  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a44 < 0)
  {
    operator delete(a39);
    if ((v59 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v60 - 176);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v60 - 96);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v60 - 136);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a18);
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a27);
      MEMORY[0x1C6908B60](v57, 0xA1C40BD48D6D6);
      _Unwind_Resume(a1);
    }
  }

  else if (!v59)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v58);
  goto LABEL_14;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
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

void sub_1C1C13444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[3 * a3];
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, v4);
      v7 = v6;
      v8 = *(a1 + 8);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v8)
        {
          v11 = v6 % *&v8;
        }
      }

      else
      {
        v11 = (*&v8 - 1) & v6;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v7)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, v4))
      {
        goto LABEL_18;
      }

      v4 += 3;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1C1C138CC(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string&>(void *a1, const void **a2)
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

void sub_1C1C13C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__node_insert_unique(uint64_t a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v5 <= v4)
      {
        v9 = v4 % v5;
      }
    }

    else
    {
      v9 = (v5 - 1) & v4;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v6)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, (a2 + 16)))
          {
            return 0;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v5)
            {
              v12 %= v5;
            }
          }

          else
          {
            v12 &= v5 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v5 || (v14 * v5) < v13)
  {
    v15 = 1;
    if (v5 >= 3)
    {
      v15 = (v5 & (v5 - 1)) != 0;
    }

    v16 = v15 | (2 * v5);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__rehash<true>(a1, v18);
  }

  v19 = *(a1 + 8);
  v20 = *(a2 + 8);
  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= *&v19)
    {
      v20 %= *&v19;
    }
  }

  else
  {
    v20 &= *&v19 - 1;
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v20);
  if (v23)
  {
    *a2 = *v23;
LABEL_37:
    *v23 = a2;
    goto LABEL_38;
  }

  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(v22 + 8 * v20) = a1 + 16;
  if (*a2)
  {
    v24 = *(*a2 + 8);
    if (v21.u32[0] > 1uLL)
    {
      if (v24 >= *&v19)
      {
        v24 %= *&v19;
      }
    }

    else
    {
      v24 &= *&v19 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_37;
  }

LABEL_38:
  ++*(a1 + 24);
  return 1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__emplace_unique_key_args<std::string,std::string const&,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>(void *a1, const void **a2)
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

void sub_1C1C142A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C14568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML9Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4160090;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C146D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML8Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4160010;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C14838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML7Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415FF90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C149A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6_trainOpset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415FF10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C14B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML6Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415FE90;
  a2[1] = v2;
  return result;
}

MIL::IROpset **std::unique_ptr<CoreML::MIL::Opsets::CoreML5Opset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x1C6908B60]();
  }

  return a1;
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "classify");
  CoreML::MIL::Operators::CoreML::Classify::Make();
}

void sub_1C1C14CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<CoreML::MIL::Opsets::CoreML5Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415FE00;
  a2[1] = v2;
  return result;
}

void CoreML::MIL::Operators::CoreML::CustomValidators::ValidateClassify(CoreML::MIL::Operators::CoreML::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v60, "probabilities");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v60, "classes");
  ParameterValue = MIL::IROperation::GetParameterValue();
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  v8 = (*(*ParameterValue + 32))(ParameterValue);
  v9 = MIL::IRValueType::AsListType(v8);
  v10 = (*(*v9 + 64))(v9);
  v11 = (*(*v6 + 96))(v6);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = (*(**v12 + 16))();
      if (!v15)
      {
        break;
      }

      v16 = (*(*v15 + 48))(v15);
      if (((v16 != 1) & v14) == 1)
      {
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v43 = LocationPtr[1];
        v58 = *LocationPtr;
        v59 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v56, "Classifier probabilities can have a maximum of one dimension that is not rank 1.");
        MEMORY[0x1C69083E0](a2, &v58, 304, v56);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        v35 = v59;
        if (!v59)
        {
          return;
        }

        goto LABEL_54;
      }

      v14 |= v16 != 1;
      v12 += 8;
      if (v12 == v13)
      {
        goto LABEL_10;
      }
    }

    v40 = MIL::IRObject::GetLocationPtr(this);
    v41 = v40[1];
    v54 = *v40;
    v55 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v52, "Classifier probabilities must have a fully known shape.");
    MEMORY[0x1C69083E0](a2, &v54, 304, v52);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    v35 = v55;
    if (v55)
    {
      goto LABEL_54;
    }

    return;
  }

LABEL_10:
  v17 = (*(*v9 + 16))(v9);
  if ((*(*v6 + 16))(v6) != v17)
  {
    v36 = MIL::IRObject::GetLocationPtr(this);
    v37 = v36[1];
    v50 = *v36;
    v51 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Arguments not of the same length in classify operation");
    MEMORY[0x1C69083E0](a2, &v50, 304, __p);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    v35 = v51;
    if (!v51)
    {
      return;
    }

LABEL_54:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    return;
  }

  OutputType = MIL::IROperation::GetOutputType(this);
  v19 = MIL::IRValueType::AsTensorType(OutputType);
  if (!MIL::IRTensorValueType::IsScalar(v19) || (v20 = (*(*v19 + 88))(v19), v21 = MIL::IRValueType::AsTensorType(v10), v20 != (*(*v21 + 88))(v21)))
  {
    v38 = MIL::IRObject::GetLocationPtr(this);
    v39 = v38[1];
    v46 = *v38;
    v47 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v44, "Incorrect type for class prediction output of classify operation");
    MEMORY[0x1C69083E0](a2, &v46, 313, v44);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    v35 = v47;
    if (!v47)
    {
      return;
    }

    goto LABEL_54;
  }

  if ((*(*this + 192))(this) < 2)
  {
    goto LABEL_58;
  }

  v22 = (*(*this + 176))(this);
  if (v22[1] - *v22 <= 0x10uLL)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(*(*v22 + 16));
  v24 = (*(*Type + 48))(Type);
  if (v24)
  {
    v25 = v24;
    v26 = (*(*v24 + 64))(v24);
    v27 = (*(*v26 + 24))(v26);
    v28 = (*(*v25 + 72))(v25);
    v29 = (*(*v28 + 24))(v28);
    if (v27)
    {
      v30 = v29;
      if (MIL::IRTensorValueType::IsScalar(v27) && v30 != 0)
      {
        v32 = MIL::IRTensorValueType::IsScalar(v30) && v27 == v10;
        if (v32 && ((*(*v30 + 88))(v30) == 6 || (*(*v30 + 88))(v30) == 5))
        {
LABEL_58:
          MIL::ValidationResult::ValidationResult(a2);
          return;
        }
      }
    }
  }

  v33 = MIL::IRObject::GetLocationPtr(this);
  v34 = v33[1];
  v62 = *v33;
  v63 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v60, "Incorrect type for probabilities output of classify operation");
  MEMORY[0x1C69083E0](a2, &v62, 313, v60);
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  v35 = v63;
  if (v63)
  {
    goto LABEL_54;
  }
}

void sub_1C1C153B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  v41 = *(v39 - 88);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void CoreML::MIL::CoreMLUtil::MakeContext(CoreML::MIL::CoreMLUtil *this@<X0>, uint64_t *a2@<X8>)
{
  MIL::Opsets::Common::CreateMILContext(this);
  v3 = *a2;
  CoreML::MIL::Opsets::RegisterCoreMLOpsets();
}

void sub_1C1C154E8(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(uint64_t result)
{
  v1 = result & 0xFFFFFFFFFFFFFFFCLL;
  if (result)
  {
    if (*v1)
    {
      return result;
    }
  }

  else if ((result & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    return result;
  }

  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    v4 = *(a3 + 8);
    if (v4 > 127)
    {
      goto LABEL_12;
    }
  }

  v5 = -3;
  if (a2 < 0x10)
  {
    v5 = -2;
  }

  if (*a1 + v5 - a4 + 16 < v4)
  {
LABEL_12:

    return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
  }

  else
  {
    *a4 = (8 * a2) | 2;
    v6 = 1;
    if (a2 >= 0x10)
    {
      *a4 = (8 * a2) | 0x82;
      a4[1] = 1;
      v6 = 2;
    }

    a4[v6] = v4;
    v7 = &a4[v6 + 1];
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memcpy(v7, v8, v4);
    return &v7[v4];
  }
}

unsigned __int8 *CoreML::Specification::ModelDescription::_InternalSerialize(void (***this)(CoreML::Specification::ModelDescription *__hidden this), unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v8 = this[4][i + 1];
      *__dst = 10;
      v9 = *(v8 + 10);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        __dst[2] = v9 >> 7;
        v10 = __dst + 3;
        if (v9 >= 0x4000)
        {
          v12 = v9 >> 7;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v11 = v12 >> 7;
            *v10++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v16 = this[7][j + 1];
      *__dst = 82;
      v17 = *(v16 + 10);
      __dst[1] = v17;
      if (v17 > 0x7F)
      {
        __dst[1] = v17 | 0x80;
        v19 = v17 >> 7;
        __dst[2] = v17 >> 7;
        v18 = __dst + 3;
        if (v17 >= 0x4000)
        {
          v20 = v17 >> 7;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v19 = v20 >> 7;
            *v18++ = v20 >> 7;
            v21 = v20 >> 14;
            v20 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = this[17];
  v23 = (v22 & 0xFFFFFFFFFFFFFFFELL);
  v24 = *((v22 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = v23[1];
    if (!v24)
    {
      goto LABEL_29;
    }

    v25 = *v23;
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_29;
    }

    v25 = (v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v25, v24))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.ModelDescription.predictedFeatureName", "serializing", v26);
    v23 = (this[17] & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 0xBu, v23, __dst);
LABEL_29:
  v27 = this[18];
  v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
  v29 = *((v27 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = v28[1];
    if (!v29)
    {
      goto LABEL_37;
    }

    v30 = *v28;
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_37;
    }

    v30 = (v27 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v30, v29))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.ModelDescription.predictedProbabilitiesName", "serializing", v31);
    v28 = (this[18] & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 0xCu, v28, __dst);
LABEL_37:
  v32 = *(this + 18);
  if (v32)
  {
    for (k = 0; k != v32; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v34 = this[10][k + 1];
      *__dst = 106;
      v35 = *(v34 + 10);
      __dst[1] = v35;
      if (v35 > 0x7F)
      {
        __dst[1] = v35 | 0x80;
        v37 = v35 >> 7;
        __dst[2] = v35 >> 7;
        v36 = __dst + 3;
        if (v35 >= 0x4000)
        {
          v38 = v35 >> 7;
          do
          {
            *(v36 - 1) = v37 | 0x80;
            v37 = v38 >> 7;
            *v36++ = v38 >> 7;
            v39 = v38 >> 14;
            v38 >>= 7;
          }

          while (v39);
        }
      }

      else
      {
        v36 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v34, v36, a3);
    }
  }

  v40 = *(this + 24);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v42 = this[13][m + 1];
      *__dst = 418;
      v43 = *(v42 + 28);
      __dst[2] = v43;
      if (v43 > 0x7F)
      {
        __dst[2] = v43 | 0x80;
        v45 = v43 >> 7;
        __dst[3] = v43 >> 7;
        v44 = __dst + 4;
        if (v43 >= 0x4000)
        {
          v46 = v43 >> 7;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v45 = v46 >> 7;
            *v44++ = v46 >> 7;
            v47 = v46 >> 14;
            v46 >>= 7;
          }

          while (v47);
        }
      }

      else
      {
        v44 = __dst + 3;
      }

      __dst = CoreML::Specification::FunctionDescription::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = this[19];
  v49 = (v48 & 0xFFFFFFFFFFFFFFFELL);
  v50 = *((v48 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v50 & 0x8000000000000000) != 0)
  {
    v50 = v49[1];
    if (!v50)
    {
      goto LABEL_65;
    }

    v51 = *v49;
  }

  else
  {
    if (!*((v48 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_65;
    }

    v51 = (v48 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v51, v50))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.ModelDescription.defaultFunctionName", "serializing", v52);
    v49 = (this[19] & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 0x15u, v49, __dst);
LABEL_65:
  v53 = *(this + 30);
  if (v53)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v55 = this[16][n + 1];
      *__dst = 914;
      v56 = *(v55 + 10);
      __dst[2] = v56;
      if (v56 > 0x7F)
      {
        __dst[2] = v56 | 0x80;
        v58 = v56 >> 7;
        __dst[3] = v56 >> 7;
        v57 = __dst + 4;
        if (v56 >= 0x4000)
        {
          v59 = v56 >> 7;
          do
          {
            *(v57 - 1) = v58 | 0x80;
            v58 = v59 >> 7;
            *v57++ = v59 >> 7;
            v60 = v59 >> 14;
            v59 >>= 7;
          }

          while (v60);
        }
      }

      else
      {
        v57 = __dst + 3;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v55, v57, a3);
    }
  }

  if (this != &CoreML::Specification::_ModelDescription_default_instance_)
  {
    v61 = this[20];
    if (v61)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
        v61 = this[20];
      }

      *__dst = 1698;
      v62 = *(v61 + 24);
      __dst[2] = v62;
      if (v62 > 0x7F)
      {
        __dst[2] = v62 | 0x80;
        v64 = v62 >> 7;
        __dst[3] = v62 >> 7;
        v63 = __dst + 4;
        if (v62 >= 0x4000)
        {
          v65 = v62 >> 7;
          do
          {
            *(v63 - 1) = v64 | 0x80;
            v64 = v65 >> 7;
            *v63++ = v65 >> 7;
            v66 = v65 >> 14;
            v65 >>= 7;
          }

          while (v66);
        }
      }

      else
      {
        v63 = __dst + 3;
      }

      __dst = CoreML::Specification::Metadata::_InternalSerialize(v61, v63, a3);
    }
  }

  v67 = this[1];
  if ((v67 & 1) == 0)
  {
    return __dst;
  }

  v69 = v67 & 0xFFFFFFFFFFFFFFFCLL;
  v70 = *(v69 + 31);
  if (v70 < 0)
  {
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
  }

  else
  {
    v71 = (v69 + 8);
  }

  if (*a3 - __dst >= v70)
  {
    v72 = v70;
    memcpy(__dst, v71, v70);
    __dst += v72;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v71, v70, __dst);
}

uint64_t CoreML::Specification::ModelDescription::ByteSizeLong(void (***this)(CoreML::Specification::ModelDescription *__hidden this))
{
  v2 = *(this + 6);
  v3 = this[4];
  if (v3)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = CoreML::Specification::FeatureDescription::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = this[7];
  if (v10)
  {
    v11 = (v10 + 1);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = CoreML::Specification::FeatureDescription::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = this[10];
  if (v17)
  {
    v18 = (v17 + 1);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = CoreML::Specification::FeatureDescription::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 24);
  v23 = v16 + 2 * v22;
  v24 = this[13];
  if (v24)
  {
    v25 = (v24 + 1);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = CoreML::Specification::FunctionDescription::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 30);
  v30 = v23 + 2 * v29;
  v31 = this[16];
  if (v31)
  {
    v32 = (v31 + 1);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = CoreML::Specification::FeatureDescription::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = this[17] & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  if (v37 < 0)
  {
    if (!*(v36 + 8))
    {
      goto LABEL_38;
    }
  }

  else if (!*(v36 + 23))
  {
    goto LABEL_38;
  }

  v38 = *(v36 + 8);
  if (v37 >= 0)
  {
    v38 = v37;
  }

  v30 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_38:
  v39 = this[18] & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  if (v40 < 0)
  {
    if (!*(v39 + 8))
    {
      goto LABEL_43;
    }
  }

  else if (!*(v39 + 23))
  {
    goto LABEL_43;
  }

  v41 = *(v39 + 8);
  if (v40 >= 0)
  {
    v41 = v40;
  }

  v30 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_43:
  v42 = this[19] & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  if (v43 < 0)
  {
    if (!*(v42 + 8))
    {
      goto LABEL_48;
    }
  }

  else if (!*(v42 + 23))
  {
    goto LABEL_48;
  }

  v44 = *(v42 + 8);
  if (v43 >= 0)
  {
    v44 = v43;
  }

  v30 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_48:
  if (this != &CoreML::Specification::_ModelDescription_default_instance_)
  {
    v45 = this[20];
    if (v45)
    {
      v46 = CoreML::Specification::Metadata::ByteSizeLong(v45);
      v30 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v47 = this[1];
  if (v47)
  {
    v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v30 += v50;
  }

  *(this + 42) = v30;
  return v30;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ModelDescription>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_1F415DB58;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = a1;
  *(result + 168) = 0;
  *(result + 136) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 144) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 152) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 160) = 0;
  return result;
}

void CoreML::Specification::ModelDescription::MergeFrom(CoreML::Specification::ModelDescription *this, void (***a2)(CoreML::Specification::ModelDescription *__hidden this))
{
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = a2[4];
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 2, v6, v5 + 1, v4, **(this + 4) - *(this + 6));
    v7 = *(this + 6) + v4;
    *(this + 6) = v7;
    v8 = *(this + 4);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = a2[7];
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 5, v11, v10 + 1, v9, **(this + 7) - *(this + 12));
    v12 = *(this + 12) + v9;
    *(this + 12) = v12;
    v13 = *(this + 7);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 18);
  if (v14)
  {
    v15 = a2[10];
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64), *(a2 + 18));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 8, v16, v15 + 1, v14, **(this + 10) - *(this + 18));
    v17 = *(this + 18) + v14;
    *(this + 18) = v17;
    v18 = *(this + 10);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 24);
  if (v19)
  {
    v20 = a2[13];
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 88), *(a2 + 24));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::TypeHandler>(this + 11, v21, v20 + 1, v19, **(this + 13) - *(this + 24));
    v22 = *(this + 24) + v19;
    *(this + 24) = v22;
    v23 = *(this + 13);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 30);
  if (v24)
  {
    v25 = a2[16];
    v26 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112), *(a2 + 30));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 14, v26, v25 + 1, v24, **(this + 16) - *(this + 30));
    v27 = *(this + 30) + v24;
    *(this + 30) = v27;
    v28 = *(this + 16);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = a2[17] & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v29 + 23);
  if (v30 < 0)
  {
    v30 = *(v29 + 8);
  }

  if (v30)
  {
    v31 = *(this + 1);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 17, v29, v32);
  }

  v33 = a2[18] & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  if (v34 < 0)
  {
    v34 = *(v33 + 8);
  }

  if (v34)
  {
    v35 = *(this + 1);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 18, v33, v36);
  }

  v37 = a2[19] & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  if (v38 < 0)
  {
    v38 = *(v37 + 8);
  }

  if (v38)
  {
    v39 = *(this + 1);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 19, v37, v40);
  }

  if (a2 != &CoreML::Specification::_ModelDescription_default_instance_)
  {
    v41 = a2[20];
    if (v41)
    {
      v42 = *(this + 20);
      if (!v42)
      {
        v43 = *(this + 1);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata>(v44);
        *(this + 20) = v42;
        v41 = a2[20];
      }

      if (v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = &CoreML::Specification::_Metadata_default_instance_;
      }

      CoreML::Specification::Metadata::MergeFrom(v42, v45);
    }
  }

  v46 = a2[1];
  if (v46)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(this + 1, (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(atomic_ullong **a1, CoreML::Specification::FeatureDescription **a2, void (****a3)(CoreML::Specification::FeatureDescription *__hidden this), int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      google::protobuf::internal::GenericTypeHandler<CoreML::Specification::FeatureDescription>::Merge(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::TypeHandler>(atomic_ullong **a1, CoreML::Specification::FunctionDescription **a2, CoreML::Specification::FunctionDescription **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FunctionDescription>(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      google::protobuf::internal::GenericTypeHandler<CoreML::Specification::FunctionDescription>::Merge(v11, v13);
      --v5;
    }

    while (v5);
  }
}

double google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata>(atomic_ullong *this)
{
  if (!this)
  {
    operator new();
  }

  *(AlignedWithHook + 8) = this;
  *AlignedWithHook = off_1F415D540;
  result = 0.0;
  *(AlignedWithHook + 16) = xmmword_1C1C32EE0;
  *(AlignedWithHook + 32) = xmmword_1C1C32EE0;
  *(AlignedWithHook + 48) = &google::protobuf::internal::kGlobalEmptyTable;
  *(AlignedWithHook + 56) = this;
  *(AlignedWithHook + 96) = 0;
  *(AlignedWithHook + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(AlignedWithHook + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(AlignedWithHook + 80) = &google::protobuf::internal::fixed_address_empty_string;
  *(AlignedWithHook + 88) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

void CoreML::Specification::Metadata::MergeFrom(CoreML::Specification::Metadata *this, const CoreML::Specification::Metadata *a2)
{
  google::protobuf::internal::MapFieldLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::MergeFrom(this + 2, a2 + 2);
  v4 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    v6 = *(this + 1);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 8, v4, v7);
  }

  v8 = *(a2 + 9) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    v10 = *(this + 1);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 9, v8, v11);
  }

  v12 = *(a2 + 10) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    v14 = *(this + 1);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 10, v12, v15);
  }

  v16 = *(a2 + 11) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  if (v17 < 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17)
  {
    v18 = *(this + 1);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 11, v16, v19);
  }

  v20 = *(a2 + 1);
  if (v20)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(this + 1, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *google::protobuf::internal::MapFieldLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::MergeFrom(void *result, void *a2)
{
  v4 = a2[3];
  v5 = a2[1];
  if (v5 > v4)
  {
    v27 = v2;
    v28 = v3;
    v6 = result;
    v7 = a2[4];
    while (1)
    {
      v8 = *(v7 + 8 * v4);
      if (v8)
      {
        break;
      }

      if (v5 == ++v4)
      {
        return result;
      }
    }

    if (v8 != *(v7 + 8 * (v4 ^ 1)))
    {
      v18 = *(v7 + 8 * v4);
      v19 = a2;
      v20 = v4;
LABEL_9:
      v9 = MEMORY[0x1E69E5470];
      while (1)
      {
        google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(v6, &v8->__r_.__value_.__l.__data_, 0, &v24);
        v10 = v24;
        if (!v24)
        {
          break;
        }

LABEL_26:
        std::string::operator=(v10 + 1, v8 + 1);
        result = google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::operator++(&v18);
        v8 = v18;
        if (!v18)
        {
          return result;
        }
      }

      if (google::protobuf::Map<std::string,std::string>::InnerMap::ResizeIfLoadIsOutOfRange(v6, *v6 + 1))
      {
        google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(v6, &v8->__r_.__value_.__l.__data_, 0, &v21);
        v24 = v21;
        v11 = v23;
        v25 = v22;
        v26 = v23;
      }

      else
      {
        v11 = v26;
      }

      v12 = v6[5];
      if (v12)
      {
        AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(v12, 0x38uLL, v9);
      }

      else
      {
        AlignedWithHook = operator new(0x38uLL);
      }

      v14 = AlignedWithHook;
      v15 = v6[5];
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(AlignedWithHook, v8->__r_.__value_.__l.__data_, v8->__r_.__value_.__l.__size_);
        if (!v14)
        {
LABEL_23:
          v17 = v6[5];
          v14[1].__words[0] = 0;
          v14[1].__words[1] = 0;
          v14[1].__words[2] = 0;
          if (v17)
          {
            google::protobuf::internal::ThreadSafeArena::AddCleanup(v17, &v14[1], google::protobuf::internal::arena_destruct_object<std::string>);
          }

          google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(v6, v11, v14, &v21);
          ++*v6;
          v10 = v21;
          goto LABEL_26;
        }
      }

      else
      {
        v16 = *&v8->__r_.__value_.__l.__data_;
        AlignedWithHook->__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&AlignedWithHook->__r_.__value_.__l.__data_ = v16;
        if (!AlignedWithHook)
        {
          goto LABEL_23;
        }
      }

      if (v15)
      {
        google::protobuf::internal::ThreadSafeArena::AddCleanup(v15, v14, google::protobuf::internal::arena_destruct_object<std::string>);
      }

      goto LABEL_23;
    }

    v8 = *(v8->__r_.__value_.__r.__words[0] + 40);
    v18 = v8;
    v19 = a2;
    v20 = v4;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::operator++(void *a1)
{
  v2 = *(*a1 + 48);
  if (v2)
  {
    goto LABEL_2;
  }

  v11 = 0;
  if (google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::revalidate_if_necessary(a1, &v11))
  {
    v3 = a1[2] + 1;
LABEL_13:
    google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::SearchFrom(a1, v3);
    return a1;
  }

  v4 = a1[2];
  v5 = *(*(a1[1] + 32) + 8 * v4);
  v6 = v11;
  v7 = v11[1];
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
      v8 = *(v6 + 16);
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  v11 = v8;
  if (v8 == (v5 + 8))
  {
    v3 = v4 + 2;
    goto LABEL_13;
  }

  v2 = v8[5];
LABEL_2:
  *a1 = v2;
  return a1;
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::SearchFrom(void *result, unint64_t a2)
{
  *result = 0;
  v2 = result[1];
  v3 = *(v2 + 8);
  if (v3 <= a2)
  {
LABEL_6:
    result[2] = a2;
  }

  else
  {
    v4 = *(v2 + 32);
    while (1)
    {
      v5 = *(v4 + 8 * a2);
      if (v5)
      {
        break;
      }

      if (v3 == ++a2)
      {
        a2 = v3;
        goto LABEL_6;
      }
    }

    v6 = *(v4 + 8 * (a2 ^ 1));
    result[2] = a2;
    if (v5 == v6)
    {
      *result = *(*v5 + 40);
    }

    else
    {
      *result = v5;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,std::string>(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::string,std::reference_wrapper<std::string const>>(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,std::string>(uint64_t a1, const void ***a2, const void **a3)
{
  v3 = *(*a2 + 23);
  if (v3 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if (v3 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = memcmp(v4, v7, v9);
  if (v5 < v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v8)
  {
    v11 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  return v11 >> 31;
}

uint64_t google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::string,std::reference_wrapper<std::string const>>(uint64_t a1, const void **a2, const void ***a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(*a3 + 23);
  if (v6 >= 0)
  {
    v7 = *a3;
  }

  else
  {
    v7 = **a3;
  }

  if (v6 >= 0)
  {
    v8 = *(*a3 + 23);
  }

  else
  {
    v8 = (*a3)[1];
  }

  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = memcmp(v4, v7, v9);
  if (v5 < v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v8)
  {
    v11 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  return v11 >> 31;
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::ResizeIfLoadIsOutOfRange(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      google::protobuf::Map<std::string,std::string>::InnerMap::Resize(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t *std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,void *>>(uint64_t **a1, const void ***a2, _OWORD *a3)
{
  v5 = std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__find_equal<std::reference_wrapper<std::string const>>(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = google::protobuf::internal::MapAllocator<std::__tree_node<std::__value_type<std::reference_wrapper<std::string const>,void *>,void *>>::allocate(a1 + 2, 1uLL);
    *(v6 + 2) = *a3;
    std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__insert_node_at(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__find_equal<std::reference_wrapper<std::string const>>(uint64_t a1, uint64_t *a2, const void ***a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,std::reference_wrapper<std::string const>>(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,std::reference_wrapper<std::string const>>(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[3] = (a1[3] + 1);
  return result;
}

uint64_t google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,std::reference_wrapper<std::string const>>(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *(*a2 + 23);
  if (v3 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if (v3 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *(*a3 + 23);
  if (v6 >= 0)
  {
    v7 = *a3;
  }

  else
  {
    v7 = **a3;
  }

  if (v6 >= 0)
  {
    v8 = *(*a3 + 23);
  }

  else
  {
    v8 = (*a3)[1];
  }

  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = memcmp(v4, v7, v9);
  if (v5 < v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v8)
  {
    v11 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  return v11 >> 31;
}

void std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::destroy(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}

void *google::protobuf::internal::MapAllocator<void *>::allocate(atomic_ullong **a1, size_t __sz)
{
  v2 = *a1;
  v3 = 8 * __sz;
  if (v2)
  {
    return google::protobuf::Arena::AllocateAlignedWithHook(v2, v3, MEMORY[0x1E69E5470]);
  }

  else
  {
    return operator new(v3);
  }
}

void google::protobuf::Map<std::string,std::string>::InnerMap::TransferList(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 48);
    v6 = google::protobuf::Map<std::string,std::string>::InnerMap::BucketNumber<std::string>(a1, v4);
    google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(a1, v6, v4, v7);
    v4 = v5;
  }

  while (v5);
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::TransferTree(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = google::protobuf::Map<std::string,std::string>::InnerMap::BucketNumber<std::string>(a1, v5[4]);
    google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(a1, v6, v5[5], v11);
    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4 + 1);
  return google::protobuf::Map<std::string,std::string>::InnerMap::DestroyTree(a1, v4);
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::DestroyTree(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

unsigned __int8 *CoreML::Specification::Metadata::_InternalSerialize(CoreML::Specification::Metadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = *v7;
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_9;
    }

    v9 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v9, v8))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.shortDescription", "serializing", v10);
    v7 = (*(this + 8) & 0xFFFFFFFFFFFFFFFELL);
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1u, v7, a2);
LABEL_9:
  v11 = *(this + 9);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v13 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = v12[1];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = *v12;
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_17;
    }

    v14 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v14, v13))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.versionString", "serializing", v15);
    v12 = (*(this + 9) & 0xFFFFFFFFFFFFFFFELL);
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2u, v12, a2);
LABEL_17:
  v16 = *(this + 10);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL);
  v18 = *((v16 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = v17[1];
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = *v17;
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_25;
    }

    v19 = (v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v19, v18))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.author", "serializing", v20);
    v17 = (*(this + 10) & 0xFFFFFFFFFFFFFFFELL);
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3u, v17, a2);
LABEL_25:
  v21 = *(this + 11);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFELL);
  v23 = *((v21 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v23 = v22[1];
    if (!v23)
    {
      goto LABEL_33;
    }

    v24 = *v22;
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_33;
    }

    v24 = (v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v24, v23))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.license", "serializing", v25);
    v22 = (*(this + 11) & 0xFFFFFFFFFFFFFFFELL);
  }

  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4u, v22, a2);
LABEL_33:
  v26 = *(this + 2);
  if (v26)
  {
    if (v26 != 1 && (*(a3 + 58) & 1) != 0)
    {
      operator new[]();
    }

    v27 = *(this + 5);
    v28 = *(this + 3);
    if (v28 > v27)
    {
      v29 = *(this + 6);
      while (1)
      {
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          break;
        }

        if (v28 == ++v27)
        {
          goto LABEL_46;
        }
      }

      if (v30 == *(v29 + 8 * (v27 ^ 1)))
      {
        v30 = *(*v30 + 40);
        v37 = v30;
        v38 = this + 16;
        v39 = v27;
        if (!v30)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v37 = *(v29 + 8 * v27);
        v38 = this + 16;
        v39 = v27;
      }

      do
      {
        a2 = google::protobuf::internal::MapEntryFuncs<std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::InternalSerialize(v30, (v30 + 24), a2, a3);
        CoreML::Specification::Metadata::_InternalSerialize(unsigned char *,google::protobuf::io::EpsCopyOutputStream *)const::Utf8Check::Check(v37);
        google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::operator++(&v37);
        v30 = v37;
      }

      while (v37);
    }
  }

LABEL_46:
  v31 = *(this + 1);
  if (v31)
  {
    v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *(v33 + 31);
    if (v34 < 0)
    {
      v35 = *(v33 + 8);
      v34 = *(v33 + 16);
    }

    else
    {
      v35 = (v33 + 8);
    }

    if (*a3 - a2 < v34)
    {
      return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v35, v34, a2);
    }

    else
    {
      v36 = v34;
      memcpy(a2, v35, v34);
      a2 += v36;
    }
  }

  return a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,false>(uint64_t result, void *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v140 = (a2 - 1);
  v143 = a2;
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = a2 - v7;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v82 = *v140;
        v83 = *v6;
        result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, *v6);
        if (result)
        {
          *v6 = v82;
          *v140 = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,0>(v6, v6 + 1, v6 + 2, v140);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,0>(v6, v6 + 1, v6 + 2, v6 + 3);
      v77 = *v140;
      v78 = v6[3];
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, v78);
      if (!result)
      {
        return result;
      }

      v6[3] = v77;
      *v140 = v78;
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v6[3], v6[2]);
      if (!result)
      {
        return result;
      }

      v79 = *(v6 + 1);
      *(v6 + 1) = vextq_s8(v79, v79, 8uLL);
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v79.i64[1], v6[1]);
      if (!result)
      {
        return result;
      }

      v80 = *(v6 + 1);
      *(v6 + 1) = vextq_s8(v80, v80, 8uLL);
      v81 = v80.i64[1];
      goto LABEL_180;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v88 = v6 + 1;
      v90 = v6 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v6;
          do
          {
            v94 = *v92;
            v93 = v92[1];
            v92 = v88;
            result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v93, v94);
            if (result)
            {
              v95 = v91;
              while (1)
              {
                *(v6 + v95 + 8) = v94;
                if (!v95)
                {
                  break;
                }

                v94 = *(v6 + v95 - 8);
                result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v93, v94);
                v95 -= 8;
                if ((result & 1) == 0)
                {
                  v96 = (v6 + v95 + 8);
                  goto LABEL_130;
                }
              }

              v96 = v6;
LABEL_130:
              *v96 = v93;
              a2 = v143;
            }

            v88 = v92 + 1;
            v91 += 8;
          }

          while (v92 + 1 != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v135 = *v6;
          v134 = v6[1];
          v6 = v88;
          result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v134, v135);
          if (result)
          {
            v136 = v6;
            do
            {
              *v136 = v135;
              v135 = *(v136 - 2);
              result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v134, v135);
              --v136;
            }

            while ((result & 1) != 0);
            *v136 = v134;
            a2 = v143;
          }

          v88 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v6 != a2)
      {
        v97 = v9 >> 1;
        v98 = v9 >> 1;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v6[v100];
            if (2 * v98 + 2 >= v8)
            {
              v103 = *v101;
            }

            else
            {
              v102 = *v101;
              v103 = v101[1];
              v104 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v101, v103);
              if (v104)
              {
                ++v101;
              }

              else
              {
                v103 = v102;
              }

              if (v104)
              {
                v100 = 2 * v99 + 2;
              }
            }

            v105 = &v6[v99];
            v106 = *v105;
            result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v103, *v105);
            if ((result & 1) == 0)
            {
              v139 = v99;
              v141 = v106;
              do
              {
                v107 = v101;
                *v105 = v103;
                if (v97 < v100)
                {
                  break;
                }

                v108 = (2 * v100) | 1;
                v109 = v6;
                v101 = &v6[v108];
                v110 = 2 * v100 + 2;
                if (v110 >= v8)
                {
                  v103 = *v101;
                  v100 = (2 * v100) | 1;
                }

                else
                {
                  v103 = *v101;
                  v111 = v101[1];
                  v112 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v101, v111);
                  if (v112)
                  {
                    v103 = v111;
                    ++v101;
                  }

                  v106 = v141;
                  v100 = v112 ? v110 : v108;
                }

                result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v103, v106);
                v105 = v107;
                v6 = v109;
              }

              while (!result);
              *v107 = v106;
              v99 = v139;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v113 = v143;
        do
        {
          v114 = 0;
          v142 = *v6;
          v144 = v113;
          v115 = v6;
          do
          {
            v116 = &v115[v114];
            v117 = (v116 + 1);
            v118 = (2 * v114) | 1;
            v119 = 2 * v114 + 2;
            if (v119 >= v8)
            {
              v124 = *v117;
              v114 = (2 * v114) | 1;
            }

            else
            {
              v122 = v116[2];
              v121 = (v116 + 2);
              v120 = v122;
              v123 = *(v121 - 1);
              result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v123, v122);
              if (result)
              {
                v124 = v120;
              }

              else
              {
                v124 = v123;
              }

              if (result)
              {
                v117 = v121;
                v114 = v119;
              }

              else
              {
                v114 = v118;
              }
            }

            *v115 = v124;
            v115 = v117;
          }

          while (v114 <= (v8 - 2) / 2);
          v125 = v144 - 1;
          if (v117 == v144 - 1)
          {
            v113 = v144 - 1;
            *v117 = v142;
          }

          else
          {
            *v117 = *v125;
            v113 = v144 - 1;
            *v125 = v142;
            v126 = (v117 - v6 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v6[v128 >> 1];
              v131 = *v130;
              v132 = *v117;
              result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v130, *v117);
              if (result)
              {
                do
                {
                  v133 = v130;
                  *v117 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v6[v129];
                  v131 = *v130;
                  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v130, v132);
                  v117 = v133;
                }

                while ((result & 1) != 0);
                *v133 = v132;
              }
            }
          }

          v127 = v8-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v6[v8 >> 1];
    v11 = v10;
    v12 = *v140;
    if (v8 >= 0x81)
    {
      v13 = *v10;
      v14 = *v6;
      v15 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v10, *v6);
      v16 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v12, v13);
      if (v15)
      {
        if (v16)
        {
          *v6 = v12;
          goto LABEL_27;
        }

        *v6 = v13;
        *v10 = v14;
        v25 = *v140;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, v14))
        {
          *v10 = v25;
LABEL_27:
          *v140 = v14;
        }
      }

      else if (v16)
      {
        *v10 = v12;
        *v140 = v13;
        v21 = *v10;
        v22 = *v6;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v10, *v6))
        {
          *v6 = v21;
          *v10 = v22;
        }
      }

      v26 = v10 - 1;
      v27 = *(v10 - 1);
      v28 = v6[1];
      v29 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v27, v28);
      v30 = *(a2 - 2);
      v31 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v30, v27);
      if (v29)
      {
        if (v31)
        {
          v6[1] = v30;
          goto LABEL_39;
        }

        v6[1] = v27;
        *v26 = v28;
        v35 = *(a2 - 2);
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v35, v28))
        {
          *v26 = v35;
LABEL_39:
          *(a2 - 2) = v28;
        }
      }

      else if (v31)
      {
        *v26 = v30;
        *(a2 - 2) = v27;
        v32 = *v26;
        v33 = v6[1];
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v26, v33))
        {
          v6[1] = v32;
          *v26 = v33;
        }
      }

      v38 = v10[1];
      v37 = v10 + 1;
      v36 = v38;
      v39 = v6[2];
      v40 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v38, v39);
      v41 = *(a2 - 3);
      v42 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v41, v38);
      if (v40)
      {
        if (v42)
        {
          v6[2] = v41;
          goto LABEL_48;
        }

        v6[2] = v36;
        *v37 = v39;
        v45 = *(a2 - 3);
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v45, v39))
        {
          *v37 = v45;
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      else if (v42)
      {
        *v37 = v41;
        *(a2 - 3) = v36;
        v43 = *v37;
        v44 = v6[2];
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v37, v44))
        {
          v6[2] = v43;
          *v37 = v44;
        }
      }

      v46 = *v11;
      v47 = *v26;
      v48 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v11, *v26);
      v49 = *v37;
      v50 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v37, v46);
      if (v48)
      {
        if (!v50)
        {
          *v26 = v46;
          *v11 = v47;
          v26 = v11;
          v46 = v49;
          if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v49, v47))
          {
            v46 = v47;
LABEL_56:
            v51 = *v6;
            *v6 = v46;
            *v11 = v51;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v50)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v37 = v46;
        v37 = v11;
        v46 = v47;
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v49, v47))
        {
          v46 = v49;
          goto LABEL_56;
        }
      }

      *v26 = v49;
      *v37 = v47;
      goto LABEL_56;
    }

    v17 = *v6;
    v18 = *v10;
    v19 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v6, *v10);
    v20 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v12, v17);
    if (!v19)
    {
      if (v20)
      {
        *v6 = v12;
        *v140 = v17;
        v23 = *v6;
        v24 = *v10;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v6, *v10))
        {
          *v10 = v23;
          *v6 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v20)
    {
      *v10 = v12;
    }

    else
    {
      *v10 = v17;
      *v6 = v18;
      v34 = *v140;
      if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, v18))
      {
        goto LABEL_57;
      }

      *v6 = v34;
    }

    *v140 = v18;
LABEL_57:
    --a3;
    v52 = *v6;
    v53 = v6;
    if ((a4 & 1) != 0 || (v53 = v6, google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*(v6 - 1), *v6)))
    {
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v56, v52));
      if (v54 == v6)
      {
        a2 = v143;
        do
        {
          if (v53 >= a2)
          {
            break;
          }

          v58 = *--a2;
        }

        while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v58, v52));
      }

      else
      {
        do
        {
          v57 = *--a2;
        }

        while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v57, v52));
      }

      if (v53 < a2)
      {
        v59 = *a2;
        v60 = v53;
        v61 = a2;
        do
        {
          *v60 = v59;
          *v61 = v55;
          do
          {
            v54 = v60;
            v62 = v60[1];
            ++v60;
            v55 = v62;
          }

          while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v62, v52));
          do
          {
            v63 = *--v61;
            v59 = v63;
          }

          while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v63, v52));
        }

        while (v60 < v61);
      }

      if (v54 != v6)
      {
        *v6 = *v54;
      }

      *v54 = v52;
      v64 = v53 >= a2;
      a2 = v143;
      if (!v64)
      {
        goto LABEL_78;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**>(v6, v54);
      v7 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**>(v54 + 1, v143);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,false>(v6, v54, a3, a4 & 1);
        a4 = 0;
        v7 = v54 + 1;
      }
    }

    else
    {
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, *v140);
      v66 = v6;
      if (result)
      {
        v7 = v6;
        do
        {
          v67 = v7[1];
          ++v7;
          result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, v67);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v68 = v6 + 1;
        do
        {
          v7 = v68;
          if (v68 >= v143)
          {
            break;
          }

          ++v68;
          result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, *v7);
        }

        while (!result);
      }

      v69 = v143;
      if (v7 < v143)
      {
        v69 = v143;
        do
        {
          v70 = *--v69;
          result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = v66;
      if (v7 >= v69)
      {
        a2 = v143;
      }

      else
      {
        v72 = *v7;
        v73 = *v69;
        a2 = v143;
        do
        {
          *v7 = v73;
          *v69 = v72;
          do
          {
            v74 = v7[1];
            ++v7;
            v72 = v74;
          }

          while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, v74));
          do
          {
            v75 = *--v69;
            v73 = v75;
            result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v52, v75);
          }

          while ((result & 1) != 0);
        }

        while (v7 < v69);
      }

      v76 = v7 - 1;
      if (v7 - 1 != v71)
      {
        *v71 = *v76;
      }

      a4 = 0;
      *v76 = v52;
    }
  }

  v84 = *v6;
  v85 = v6[1];
  v86 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v85, *v6);
  v87 = *v140;
  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, v85);
  if (!v86)
  {
    if (!result)
    {
      return result;
    }

    v6[1] = v87;
    *v140 = v85;
    v81 = v6[1];
LABEL_180:
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v81, *v6);
    if (result)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }

    return result;
  }

  if (result)
  {
    *v6 = v87;
  }

  else
  {
    *v6 = v85;
    v6[1] = v84;
    v137 = *v140;
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v140, v84);
    if (!result)
    {
      return result;
    }

    v6[1] = v137;
  }

  *v140 = v84;
  return result;
}

unsigned __int8 *google::protobuf::internal::MapEntryFuncs<std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::InternalSerialize(uint64_t a1, uint64_t a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*this <= a3)
  {
    a3 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a3);
  }

  *a3 = 1698;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  v8 = 9 * (__clz(v7 | 1) ^ 0x1F) + 73;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  v10 = v7 + v9 + (v8 >> 6) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
  v11 = v10 + 2;
  a3[2] = v10 + 2;
  if (v10 + 2 > 0x7F)
  {
    a3[2] = v11 | 0x80;
    v13 = v11 >> 7;
    a3[3] = v11 >> 7;
    v12 = a3 + 4;
    if (v11 >= 0x4000)
    {
      v14 = v11 >> 7;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v13 = v14 >> 7;
        *v12++ = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v12 = a3 + 3;
  }

  if (*this <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v12);
  }

  v16 = *(a1 + 23);
  if (v16 < 0 && (v16 = *(a1 + 8), v16 > 127) || *this - v12 + 14 < v16)
  {
    v19 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(this, 1, a1, v12);
  }

  else
  {
    *v12 = 10;
    v17 = v12 + 2;
    v12[1] = v16;
    if (*(a1 + 23) >= 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = *a1;
    }

    memcpy(v12 + 2, v18, v16);
    v19 = &v17[v16];
  }

  if (*this <= v19)
  {
    v19 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v19);
  }

  v20 = *(a2 + 23);
  if (v20 < 0 && (v20 = *(a2 + 8), v20 > 127) || *this - v19 + 14 < v20)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(this, 2, a2, v19);
  }

  else
  {
    *v19 = 18;
    v21 = v19 + 2;
    v19[1] = v20;
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    memcpy(v19 + 2, v22, v20);
    return &v21[v20];
  }
}

void CoreML::Specification::Metadata::_InternalSerialize(unsigned char *,google::protobuf::io::EpsCopyOutputStream *)const::Utf8Check::Check(char *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(a1, v2))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.UserDefinedEntry.key", "serializing", v3);
  }

  v4 = v1[47];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v1 + 3);
    v4 = *(v1 + 4);
  }

  else
  {
    v5 = (v1 + 24);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v5, v4))
  {

    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.UserDefinedEntry.value", "serializing", v6);
  }
}

BOOL google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,0>(void **a1, void **a2, void **a3, void **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a2, *a1);
  v11 = *a3;
  v12 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a3, v8);
  if (v10)
  {
    if (v12)
    {
      *a1 = v11;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a3, v9))
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a2, *a1))
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a4, v8);
  if (result)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a3, *a2);
    if (result)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*a2, *a1);
      if (result)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**>(void **a1, void **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v13, *a1);
        v15 = *(a2 - 1);
        v16 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v15, v13);
        if (v14)
        {
          if (v16)
          {
            *a1 = v15;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v24 = *(a2 - 1);
            if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v24, v12))
            {
              return 1;
            }

            a1[1] = v24;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if (!v16)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v11 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*> &,google::protobuf::MapPair<std::string,std::string> const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v7, v8))
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = *(a1 + 1);
        *(a1 + 1) = vextq_s8(v9, v9, 8uLL);
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v9.i64[1], a1[1]))
        {
          return 1;
        }

        v10 = *(a1 + 1);
        *(a1 + 1) = vextq_s8(v10, v10, 8uLL);
        v11 = v10.i64[1];
        break;
      default:
        goto LABEL_16;
    }

    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v11, *a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v5, *a1))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v17 = *a1;
  v18 = a1[1];
  v19 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v18, *a1);
  v21 = a1 + 2;
  v20 = a1[2];
  v22 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v20, v18);
  if (v19)
  {
    if (v22)
    {
      *a1 = v20;
      a1[2] = v17;
    }

    else
    {
      *a1 = v18;
      a1[1] = v17;
      if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v20, v17))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v22)
  {
    v23 = *(a1 + 1);
    *(a1 + 1) = vextq_s8(v23, v23, 8uLL);
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v23.i64[1], v17))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  for (i = 24; ; i += 8)
  {
    v28 = *v25;
    v29 = *v21;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(*v25, *v21))
    {
      v30 = i;
      while (1)
      {
        *(a1 + v30) = v29;
        v31 = v30 - 8;
        if (v30 == 8)
        {
          break;
        }

        v29 = *(a1 + v30 - 16);
        v32 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,std::string> const*>::operator()(v28, v29);
        v30 = v31;
        if (!v32)
        {
          v33 = (a1 + v31);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v28;
      if (++v26 == 8)
      {
        break;
      }
    }

    v21 = v25++;
    if (v25 == a2)
    {
      return 1;
    }
  }

  return v25 + 1 == a2;
}

const char *CoreML::Specification::Metadata::_InternalParse(CoreML::Specification::Metadata *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v69 = a2;
  v5 = (this + 16);
LABEL_2:
  while ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v69, *(a3 + 23)) & 1) == 0)
  {
    v6 = (v69 + 1);
    v7 = *v69;
    if (*v69 < 0)
    {
      v7 = v7 + (*v6 << 7) - 128;
      if (*v6 < 0)
      {
        v8 = 14;
        v9 = 2;
        while (1)
        {
          v7 += (v69[v9] - 1) << v8;
          if ((v69[v9] & 0x80000000) == 0)
          {
            break;
          }

          ++v9;
          v8 += 7;
          if (v9 == 5)
          {
            return 0;
          }
        }

        v6 = &v69[v9 + 1];
      }

      else
      {
        v6 = (v69 + 2);
      }
    }

    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_105;
        }

        v58 = *(this + 1);
        v54 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v54 = *v54;
        }

        v55 = (this + 64);
      }

      else
      {
        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_105;
        }

        v53 = *(this + 1);
        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v54 = *v54;
        }

        v55 = (this + 72);
      }

LABEL_96:
      v59 = google::protobuf::internal::ArenaStringPtr::Mutable(v55, v54);
      v6 = google::protobuf::internal::InlineGreedyStringParser(v59, v6, a3);
      v69 = v6;
      v62 = *(v59 + 23);
      v63 = *v59;
      if ((v62 & 0x80000000) == 0)
      {
        v64 = v59;
      }

      else
      {
        v64 = *v59;
      }

      if ((v62 & 0x8000000000000000) != 0)
      {
        v62 = v59[1];
        if ((v62 & 0x8000000000000000) != 0)
        {
          google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(v59[1], v60, v61);
        }
      }

      if (!google::protobuf::internal::VerifyUTF8(v64, v62))
      {
        return 0;
      }

      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_105;
        }

        v56 = *(this + 1);
        v54 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
        if (v56)
        {
          v54 = *v54;
        }

        v55 = (this + 80);
        goto LABEL_96;
      }

      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_105;
        }

        v57 = *(this + 1);
        v54 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v54 = *v54;
        }

        v55 = (this + 88);
        goto LABEL_96;
      }

      if (v10 == 100 && v7 == 34)
      {
        v6 -= 2;
        while (1)
        {
          v69 = v6 + 2;
          v70 = 0;
          v11 = google::protobuf::internal::ParseContext::ReadSizeAndPushLimitAndDepth(a3, (v6 + 2), &v70);
          if (!v11)
          {
            v6 = 0;
            goto LABEL_55;
          }

          v71 = v5;
          v72 = v5;
          memset(&v73, 0, sizeof(v73));
          v75 = 0;
          String = v11;
          v12 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &String, *(a3 + 23));
          v6 = String;
          if (v12)
          {
            if (String)
            {
LABEL_61:
              v39 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse>(v71[1].__r_.__value_.__r.__words[2]);
              v75 = v39;
              goto LABEL_69;
            }
          }

          else
          {
            if (*String != 10)
            {
              goto LABEL_61;
            }

            v13 = String[1];
            if (String[1] < 0)
            {
              SizeFallback = google::protobuf::internal::ReadSizeFallback((String + 1), String[1]);
              if (!SizeFallback)
              {
                goto LABEL_53;
              }

              v14 = SizeFallback;
              v13 = v16;
            }

            else
            {
              v14 = String + 2;
            }

            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v14, v13, &v73);
            if (!String)
            {
              goto LABEL_53;
            }

            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v73;
            }

            else
            {
              v17 = v73.__r_.__value_.__r.__words[0];
            }

            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v18 = LODWORD(v73.__r_.__value_.__r.__words[1]);
            }

            if (!google::protobuf::internal::IsStructurallyValidUTF8(v17, v18))
            {
              google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.UserDefinedEntry.key", "parsing", v19);
LABEL_53:
              v6 = 0;
              goto LABEL_54;
            }

            v20 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &String, *(a3 + 23));
            v21 = String;
            if (v20)
            {
              if (String)
              {
                goto LABEL_63;
              }

              goto LABEL_53;
            }

            if (*String != 18 || (v22 = v72->__words[0], google::protobuf::Map<std::string,std::string>::InnerMap::insert<std::string&>(v77, v72, &v73), v23 = (v77[0] + 24), v74 = v77[0] + 24, v22 == v72->__words[0]))
            {
LABEL_63:
              v36 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse>(v71[1].__r_.__value_.__r.__words[2]);
              v75 = v36;
              goto LABEL_64;
            }

            v24 = v21[1];
            if (v21[1] < 0)
            {
              v26 = google::protobuf::internal::ReadSizeFallback((v21 + 1), v21[1]);
              if (!v26)
              {
                String = 0;
                goto LABEL_52;
              }

              v25 = v26;
              v24 = v27;
            }

            else
            {
              v25 = v21 + 2;
            }

            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v25, v24, v23);
            if (!String)
            {
              goto LABEL_52;
            }

            v28 = v74;
            v29 = *(v74 + 23);
            if ((v29 & 0x8000000000000000) != 0)
            {
              v28 = *v74;
              v29 = *(v74 + 8);
            }

            if (!google::protobuf::internal::IsStructurallyValidUTF8(v28, v29))
            {
              google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.Metadata.UserDefinedEntry.value", "parsing", v30);
LABEL_52:
              google::protobuf::Map<std::string,std::string>::erase<std::string>(v72, &v73.__r_.__value_.__l.__data_);
              goto LABEL_53;
            }

            v31 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &String, *(a3 + 23));
            v6 = String;
            if ((v31 & 1) == 0 && String)
            {
              v75 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse>(v71[1].__r_.__value_.__r.__words[2]);
              v32 = v74;
              v33 = google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::mutable_value(v75);
              v34 = v33;
              if (*(v33 + 23) < 0)
              {
                operator delete(*v33);
              }

              v35 = *v32;
              v34[2] = *(v32 + 16);
              *v34 = v35;
              *(v32 + 23) = 0;
              *v32 = 0;
              google::protobuf::Map<std::string,std::string>::erase<std::string>(v72, &v73.__r_.__value_.__l.__data_);
              v36 = v75;
LABEL_64:
              v36[8] |= 1u;
              v40 = *(v36 + 1);
              v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
              if (v40)
              {
                v41 = *v41;
              }

              v42 = google::protobuf::internal::ArenaStringPtr::Mutable(v36 + 2, v41);
              v43 = v42;
              if (*(v42 + 23) < 0)
              {
                operator delete(*v42);
              }

              v44 = *&v73.__r_.__value_.__l.__data_;
              v43[2] = v73.__r_.__value_.__r.__words[2];
              *v43 = v44;
              *(&v73.__r_.__value_.__s + 23) = 0;
              v73.__r_.__value_.__s.__data_[0] = 0;
              v39 = v75;
              v6 = String;
LABEL_69:
              v6 = google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::_InternalParse(v39, v6, a3);
              if (v6)
              {
                v45 = (*(*v75 + 104))(v75);
                std::string::operator=(&v73, v45);
                google::protobuf::Map<std::string,std::string>::InnerMap::insert<std::string&>(v77, v72, &v73);
                v74 = v77[0] + 24;
                v46 = v75;
                v75[8] |= 2u;
                v47 = *(v46 + 1);
                v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
                if (v47)
                {
                  v48 = *v48;
                }

                v49 = google::protobuf::internal::ArenaStringPtr::Mutable(v46 + 3, v48);
                v50 = v74;
                if (*(v74 + 23) < 0)
                {
                  operator delete(*v74);
                }

                v51 = *v49;
                *(v50 + 16) = v49[2];
                *v50 = v51;
                *(v49 + 23) = 0;
                *v49 = 0;
              }
            }
          }

LABEL_54:
          google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::Parser<google::protobuf::internal::MapFieldLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>,google::protobuf::Map<std::string,std::string>>::~Parser(&v71);
LABEL_55:
          ++*(a3 + 22);
          if (*(a3 + 20))
          {
            return 0;
          }

          v37 = *(a3 + 7) + v70;
          *(a3 + 7) = v37;
          v38 = *(a3 + 1) + (v37 & (v37 >> 31));
          *a3 = v38;
          v69 = v6;
          if (!v6)
          {
            return v6;
          }

          if (v38 <= v6 || *v6 != 1698)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_105:
      if (v7)
      {
        v65 = (v7 & 7) == 4;
      }

      else
      {
        v65 = 1;
      }

      if (v65)
      {
        *(a3 + 20) = v7 - 1;
        return v6;
      }

      v66 = *(this + 1);
      if (v66)
      {
        v67 = ((v66 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v67 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      }

      v71 = v67;
      v69 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v7, &v71, v6, a3);
      if (!v69)
      {
        return 0;
      }
    }
  }

  return v69;
}

void sub_1C1C18CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::Parser<google::protobuf::internal::MapFieldLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>,google::protobuf::Map<std::string,std::string>>::~Parser(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::Parser<google::protobuf::internal::MapFieldLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>,google::protobuf::Map<std::string,std::string>>::~Parser(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = v2[1];
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v3 & 1) == 0)
    {
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!*v4)
    {
LABEL_4:
      (*(*v2 + 8))(v2);
    }
  }

LABEL_5:
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void google::protobuf::Map<std::string,std::string>::InnerMap::insert<std::string&>(uint64_t a1, void *a2, __int128 *a3)
{
  google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(a2, a3, 0, &v19);
  if (v19)
  {
    v6 = 0;
    v7 = *(&v19 + 1);
    v8 = v20;
    *a1 = v19;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    goto LABEL_18;
  }

  if (google::protobuf::Map<std::string,std::string>::InnerMap::ResizeIfLoadIsOutOfRange(a2, *a2 + 1))
  {
    google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(a2, a3, 0, &v16);
    v19 = v16;
    v9 = v18;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    v9 = v21;
  }

  v10 = a2[5];
  if (v10)
  {
    AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(v10, 0x38uLL, MEMORY[0x1E69E5470]);
  }

  else
  {
    AlignedWithHook = operator new(0x38uLL);
  }

  v12 = AlignedWithHook;
  v13 = a2[5];
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v14 = *a3;
    AlignedWithHook->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&AlignedWithHook->__r_.__value_.__l.__data_ = v14;
    if (!AlignedWithHook)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v13)
    {
      google::protobuf::internal::ThreadSafeArena::AddCleanup(v13, v12, google::protobuf::internal::arena_destruct_object<std::string>);
    }

    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(AlignedWithHook, *a3, *(a3 + 1));
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_15:
  v15 = a2[5];
  v12[1].__words[0] = 0;
  v12[1].__words[1] = 0;
  v12[1].__words[2] = 0;
  if (v15)
  {
    google::protobuf::internal::ThreadSafeArena::AddCleanup(v15, &v12[1], google::protobuf::internal::arena_destruct_object<std::string>);
  }

  google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(a2, v9, v12, a1);
  ++*a2;
  v6 = 1;
LABEL_18:
  *(a1 + 24) = v6;
}

uint64_t google::protobuf::Map<std::string,std::string>::erase<std::string>(void *a1, const void **a2)
{
  result = google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(a1, a2, 0, &v32);
  if (!v32)
  {
    return result;
  }

  v30 = v32;
  v31 = v33;
  if (!*(v32 + 48))
  {
    v34 = 0;
    if (google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::revalidate_if_necessary(&v30, &v34))
    {
      v10 = *(*(&v30 + 1) + 8);
      if (v10 > v31 + 1)
      {
        v11 = v10 - v31 - 2;
        v12 = (*(*(&v30 + 1) + 32) + 8 * v31 + 8);
        do
        {
          if (*v12++)
          {
            v14 = 1;
          }

          else
          {
            v14 = v11 == 0;
          }

          --v11;
        }

        while (!v14);
      }
    }

    else
    {
      v15 = *(*(&v30 + 1) + 32);
      v16 = *(v15 + 8 * v31);
      v17 = v34;
      v18 = v34[1];
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
          v19 = v17[2];
          v14 = *v19 == v17;
          v17 = v19;
        }

        while (!v14);
      }

      v34 = v19;
      if (v19 == (v16 + 8))
      {
        v20 = *(*(&v30 + 1) + 8);
        if (v20 > v31 + 2)
        {
          v21 = v20 - v31 - 3;
          v22 = (v15 + 8 * v31 + 16);
          do
          {
            if (*v22++)
            {
              v24 = 1;
            }

            else
            {
              v24 = v21 == 0;
            }

            --v21;
          }

          while (!v24);
        }
      }
    }
  }

  v34 = 0;
  v4 = google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::revalidate_if_necessary(&v32, &v34);
  v5 = v33;
  v6 = v32;
  v7 = a1[4];
  v8 = *(v7 + 8 * v33);
  if (v4)
  {
    v9 = google::protobuf::Map<std::string,std::string>::InnerMap::EraseFromLinkedList(v32, *(v7 + 8 * v33));
LABEL_7:
    *(a1[4] + 8 * v5) = v9;
    goto LABEL_8;
  }

  std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::erase(*(v7 + 8 * v33), v34);
  if (!*(v8 + 24))
  {
    google::protobuf::Map<std::string,std::string>::InnerMap::DestroyTree(a1, v8);
    v9 = 0;
    *(a1[4] + ((8 * v5) | 8)) = 0;
    v5 &= ~1uLL;
    goto LABEL_7;
  }

LABEL_8:
  result = google::protobuf::Map<std::string,std::string>::InnerMap::DestroyNode(a1[5], v6);
  --*a1;
  if (v5 == a1[3])
  {
    v25 = a1[1];
    v26 = v25 > v5;
    v27 = v25 - v5;
    if (v26)
    {
      v28 = v5 + 1;
      v29 = (a1[4] + 8 * v5);
      do
      {
        if (*v29)
        {
          break;
        }

        a1[3] = v28++;
        ++v29;
        --v27;
      }

      while (v27);
    }
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *(result + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  *result = &unk_1F4160110;
  return result;
}

uint64_t *google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::mutable_value(uint64_t a1)
{
  *(a1 + 32) |= 2u;
  v1 = *(a1 + 8);
  v2 = (v1 & 0xFFFFFFFFFFFFFFFCLL);
  if (v1)
  {
    v2 = *v2;
  }

  return google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v2);
}

const char *google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::_InternalParse(uint64_t a1, const char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v31 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v31, *(this + 23)))
    {
      return v31;
    }

    String = (v31 + 1);
    v6 = *v31;
    if (*v31 < 0)
    {
      v6 = v6 + (*String << 7) - 128;
      if (*String < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v31[v8] - 1) << v7;
          if ((v31[v8] & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        String = &v31[v8 + 1];
      }

      else
      {
        String = (v31 + 2);
      }
    }

    v31 = String;
    if (v6 == 10)
    {
      break;
    }

    if (v6 != 18)
    {
      if (v6)
      {
        v9 = (v6 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(this + 20) = v6 - 1;
        return String;
      }

      v32 = 0;
      String = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v32, String, this);
      v31 = String;
      goto LABEL_39;
    }

    *(a1 + 32) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v12 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v11);
    v13 = *String;
    if ((v13 & 0x80) == 0)
    {
      v14 = String + 1;
LABEL_28:
      String = google::protobuf::internal::EpsCopyInputStream::ReadString(this, v14, v13, v12);
      goto LABEL_29;
    }

    SizeFallback = google::protobuf::internal::ReadSizeFallback(String, *String);
    if (SizeFallback)
    {
      v14 = SizeFallback;
      v13 = v21;
      goto LABEL_28;
    }

    String = 0;
LABEL_29:
    v31 = String;
    v22 = *(v12 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v23 = v12;
      v12 = *v12;
      v22 = v23[1];
    }

    if (!google::protobuf::internal::IsStructurallyValidUTF8(v12, v22))
    {
      v29 = "CoreML.Specification.Metadata.UserDefinedEntry.value";
      goto LABEL_46;
    }

LABEL_39:
    if (!String)
    {
      return String;
    }
  }

  *(a1 + 32) |= 1u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  v17 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 16), v16);
  v18 = *String;
  if ((v18 & 0x80) == 0)
  {
    v19 = String + 1;
    goto LABEL_35;
  }

  v25 = google::protobuf::internal::ReadSizeFallback(String, *String);
  if (v25)
  {
    v19 = v25;
    v18 = v26;
LABEL_35:
    String = google::protobuf::internal::EpsCopyInputStream::ReadString(this, v19, v18, v17);
  }

  else
  {
    String = 0;
  }

  v31 = String;
  v27 = *(v17 + 23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v28 = v17;
    v17 = *v17;
    v27 = v28[1];
  }

  if (google::protobuf::internal::IsStructurallyValidUTF8(v17, v27))
  {
    goto LABEL_39;
  }

  v29 = "CoreML.Specification.Metadata.UserDefinedEntry.key";
LABEL_46:
  google::protobuf::internal::PrintUTF8ErrorLog(v29, "parsing", v24);
  return 0;
}

unsigned __int8 *google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::_InternalSerialize(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = (*(*a1 + 104))(a1);
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(v6 + 23);
  if (v7 < 0 && (v7 = *(v6 + 8), v7 > 127) || *a3 - a2 + 14 < v7)
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v6, a2);
  }

  else
  {
    *a2 = 10;
    a2[1] = v7;
    if (*(v6 + 23) >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    memcpy(a2 + 2, v8, v7);
    v9 = &a2[v7 + 2];
  }

  v10 = (*(*a1 + 112))(a1);
  if (*a3 <= v9)
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v9);
  }

  v11 = *(v10 + 23);
  if (v11 < 0 && (v11 = *(v10 + 8), v11 > 127) || *a3 - v9 + 14 < v11)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 2, v10, v9);
  }

  else
  {
    *v9 = 18;
    v9[1] = v11;
    if (*(v10 + 23) >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    memcpy(v9 + 2, v12, v11);
    return &v9[v11 + 2];
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::GetCachedSize(_DWORD *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v7 = (*(*a1 + 104))(a1);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v3 = v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[8] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    return v6 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v4 = (*(*a1 + 112))(a1);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 8);
  }

  v6 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v6 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::ByteSizeLong(uint64_t a1)
{
  v2 = (*(*a1 + 104))(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = (v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6));
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  return v4 + (v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6)) + 2;
}

void google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::CheckTypeAndMergeFrom(uint64_t a1, _DWORD *a2)
{
  v2 = a2[8];
  if (v2)
  {
    if (v2)
    {
      v5 = *(a1 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 16), v6);
      v7 = (*(*a2 + 104))(a2);
      v8 = *(a1 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      google::protobuf::internal::ArenaStringPtr::Set((a1 + 16), v7, v9);
      *(a1 + 32) |= 1u;
      v2 = a2[8];
    }

    if ((v2 & 2) != 0)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v11);
      v12 = (*(*a2 + 112))(a2);
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      google::protobuf::internal::ArenaStringPtr::Set((a1 + 24), v12, v14);
      *(a1 + 32) |= 2u;
    }
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::Clear(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v3 = *(result + 24);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v3 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  *(result + 32) &= 0xFFFFFFFC;
  return result;
}

void CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse::~Metadata_UserDefinedEntry_DoNotUse(CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse *this)
{
  google::protobuf::internal::MapEntryLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryLite(this);

  JUMPOUT(0x1C6908B60);
}

google::protobuf::internal::InternalMetadata *google::protobuf::internal::MapEntryLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryLite(google::protobuf::internal::InternalMetadata *this)
{
  *this = &unk_1F4160270;
  v2 = *(this + 1);
  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  return google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryImpl(this);
}

google::protobuf::internal::InternalMetadata *google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryImpl(google::protobuf::internal::InternalMetadata *this)
{
  *this = &unk_1F41602F8;
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(this + 2);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v5);
  }

  v6 = *(this + 3);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v6);
  }

LABEL_7:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
  return this;
}

void google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryImpl(google::protobuf::internal::InternalMetadata *a1)
{
  google::protobuf::internal::MapEntryImpl<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,google::protobuf::MessageLite,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryImpl(a1);

  JUMPOUT(0x1C6908B60);
}

void google::protobuf::internal::MapEntryLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryLite(google::protobuf::internal::InternalMetadata *a1)
{
  google::protobuf::internal::MapEntryLite<CoreML::Specification::Metadata_UserDefinedEntry_DoNotUse,std::string,std::string,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)9>::~MapEntryLite(a1);

  JUMPOUT(0x1C6908B60);
}

BOOL google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::revalidate_if_necessary(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(a1 + 16) & (*(v4 + 8) - 1);
  *(a1 + 16) = v6;
  v7 = *(v4 + 32);
  v8 = *(v7 + 8 * v6);
  if (v8 == v5)
  {
    return 1;
  }

  if (v8 && v8 != *(v7 + 8 * (v6 ^ 1)))
  {
    while (1)
    {
      v8 = *(v8 + 48);
      if (!v8)
      {
        break;
      }

      if (v8 == v5)
      {
        return 1;
      }
    }
  }

  google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(v4, v5, a2, &v13);
  v9 = v14;
  *(a1 + 16) = v14;
  v10 = *(*(a1 + 8) + 32);
  v11 = *(v10 + 8 * v9);
  return !v11 || v11 != *(v10 + 8 * (v9 ^ 1));
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::EraseFromLinkedList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 48);
  if (v2 == a1)
  {
    return v3;
  }

  *(v2 + 48) = google::protobuf::Map<std::string,std::string>::InnerMap::EraseFromLinkedList();
  return v2;
}

void std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::erase(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
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
    v6 = a2;
    do
    {
      v5 = v6[2];
      v7 = *v5 == v6;
      v6 = v5;
    }

    while (!v7);
  }

  if (*a1 == a2)
  {
    *a1 = v5;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  if (!*(a1 + 16))
  {

    operator delete(a2);
  }
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::DestroyNode(uint64_t result, uint64_t a2)
{
  if (a2 && !result)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1C6908B60);
  }

  return result;
}

uint64_t CoreML::Specification::Metadata::ByteSizeLong(CoreML::Specification::Metadata *this)
{
  v2 = 2 * *(this + 2);
  v3 = *(this + 5);
  v4 = *(this + 3);
  if (v4 > v3)
  {
    v5 = *(this + 6);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_14;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
      v28 = v6;
      v29 = this + 16;
      v30 = v3;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v28 = *(v5 + 8 * v3);
      v29 = this + 16;
      v30 = v3;
    }

    do
    {
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v8 = 9 * (__clz(v7 | 1) ^ 0x1F) + 73;
      v9 = *(v6 + 47);
      v10 = *(v6 + 32);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v11 = v7 + v10 + (v8 >> 6) + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
      v2 += ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + v11;
      google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::operator++(&v28);
      v6 = v28;
    }

    while (v28);
  }

LABEL_14:
  v12 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    if (!*(v12 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v12 + 23))
  {
    goto LABEL_19;
  }

  v14 = *(v12 + 8);
  if (v13 >= 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_19:
  v15 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    if (!*(v15 + 8))
    {
      goto LABEL_24;
    }
  }

  else if (!*(v15 + 23))
  {
    goto LABEL_24;
  }

  v17 = *(v15 + 8);
  if (v16 >= 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_24:
  v18 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  if (v19 < 0)
  {
    if (!*(v18 + 8))
    {
      goto LABEL_29;
    }
  }

  else if (!*(v18 + 23))
  {
    goto LABEL_29;
  }

  v20 = *(v18 + 8);
  if (v19 >= 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_29:
  v21 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    if (!*(v21 + 8))
    {
      goto LABEL_34;
    }
  }

  else if (!*(v21 + 23))
  {
    goto LABEL_34;
  }

  v23 = *(v21 + 8);
  if (v22 >= 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_34:
  v24 = *(this + 1);
  if (v24)
  {
    v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    v2 += v27;
  }

  *(this + 24) = v2;
  return v2;
}

uint64_t CoreML::Specification::Metadata::Clear(CoreML::Specification::Metadata *this)
{
  result = google::protobuf::Map<std::string,std::string>::InnerMap::clear(this + 16);
  v3 = *(this + 8);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  v5 = *(this + 9);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

  v7 = *(this + 10);
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

  v9 = *(this + 11);
  if (v9 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v9 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
    }
  }

  v12 = *(this + 8);
  v11 = (this + 8);
  if (v12)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v11);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v1[4];
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (v5 == *(v4 + 8 * (v3 ^ 1)))
        {
          v7 = v3 + 1;
          *(v4 + 8 * (v3 + 1)) = 0;
          *(v1[4] + 8 * v3) = 0;
          v8 = *v5;
          do
          {
            v9 = v8[5];
            v10 = v8[1];
            v11 = v8;
            if (v10)
            {
              do
              {
                v12 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::erase(v5, v8);
            google::protobuf::Map<std::string,std::string>::InnerMap::DestroyNode(v1[5], v9);
            v8 = v12;
          }

          while (v12 != (v5 + 1));
          result = google::protobuf::Map<std::string,std::string>::InnerMap::DestroyTree(v1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = v5[6];
          result = google::protobuf::Map<std::string,std::string>::InnerMap::DestroyNode(v1[5], v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3;
LABEL_16:
      v3 = v7 + 1;
      v2 = v1[1];
    }

    while (v7 + 1 < v2);
  }

  *v1 = 0;
  v1[3] = v2;
  return result;
}

void CoreML::Specification::Metadata::~Metadata(CoreML::Specification::Metadata *this)
{
  CoreML::Specification::Metadata::~Metadata(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = *(this + 8);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v5);
  }

  v6 = *(this + 9);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v6);
  }

  v7 = *(this + 10);
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v7);
  }

  v8 = *(this + 11);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v8);
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_13:
  google::protobuf::Map<std::string,std::string>::InnerMap::~InnerMap(this + 16);
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::~InnerMap(uint64_t a1)
{
  if (!*(a1 + 40) && *(a1 + 8) != 1)
  {
    google::protobuf::Map<std::string,std::string>::InnerMap::clear(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FunctionDescription>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &unk_1F4160198;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = a1;
  *(result + 112) = 0;
  *(result + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 104) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

void CoreML::Specification::FunctionDescription::MergeFrom(CoreML::Specification::FunctionDescription *this, const CoreML::Specification::FunctionDescription *a2)
{
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = *(a2 + 4);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 2, v6, (v5 + 8), v4, **(this + 4) - *(this + 6));
    v7 = *(this + 6) + v4;
    *(this + 6) = v7;
    v8 = *(this + 4);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = *(a2 + 7);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 5, v11, (v10 + 8), v9, **(this + 7) - *(this + 12));
    v12 = *(this + 12) + v9;
    *(this + 12) = v12;
    v13 = *(this + 7);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 18);
  if (v14)
  {
    v15 = *(a2 + 10);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64), *(a2 + 18));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 8, v16, (v15 + 8), v14, **(this + 10) - *(this + 18));
    v17 = *(this + 18) + v14;
    *(this + 18) = v17;
    v18 = *(this + 10);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 11) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  if (v20 < 0)
  {
    v20 = *(v19 + 8);
  }

  if (v20)
  {
    v21 = *(this + 1);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 11, v19, v22);
  }

  v23 = *(a2 + 12) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  if (v24 < 0)
  {
    v24 = *(v23 + 8);
  }

  if (v24)
  {
    v25 = *(this + 1);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 12, v23, v26);
  }

  v27 = *(a2 + 13) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  if (v28 < 0)
  {
    v28 = *(v27 + 8);
  }

  if (v28)
  {
    v29 = *(this + 1);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 13, v27, v30);
  }

  v31 = *(a2 + 1);
  if (v31)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(this + 1, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

unsigned __int8 *CoreML::Specification::FunctionDescription::_InternalSerialize(CoreML::Specification::FunctionDescription *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 11);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = *v7;
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_9;
    }

    v9 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v9, v8))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.FunctionDescription.name", "serializing", v10);
    v7 = (*(this + 11) & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1u, v7, __dst);
LABEL_9:
  v11 = *(this + 6);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v13 = *(*(this + 4) + 8 * i + 8);
      *__dst = 18;
      v14 = *(v13 + 40);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        __dst[1] = v14 | 0x80;
        v16 = v14 >> 7;
        __dst[2] = v14 >> 7;
        v15 = __dst + 3;
        if (v14 >= 0x4000)
        {
          v17 = v14 >> 7;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v16 = v17 >> 7;
            *v15++ = v17 >> 7;
            v18 = v17 >> 14;
            v17 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 12);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v21 = *(*(this + 7) + 8 * j + 8);
      *__dst = 26;
      v22 = *(v21 + 40);
      __dst[1] = v22;
      if (v22 > 0x7F)
      {
        __dst[1] = v22 | 0x80;
        v24 = v22 >> 7;
        __dst[2] = v22 >> 7;
        v23 = __dst + 3;
        if (v22 >= 0x4000)
        {
          v25 = v22 >> 7;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v24 = v25 >> 7;
            *v23++ = v25 >> 7;
            v26 = v25 >> 14;
            v25 >>= 7;
          }

          while (v26);
        }
      }

      else
      {
        v23 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 12);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
  v29 = *((v27 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = v28[1];
    if (!v29)
    {
      goto LABEL_37;
    }

    v30 = *v28;
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_37;
    }

    v30 = (v27 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v30, v29))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.FunctionDescription.predictedFeatureName", "serializing", v31);
    v28 = (*(this + 12) & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4u, v28, __dst);
LABEL_37:
  v32 = *(this + 13);
  v33 = (v32 & 0xFFFFFFFFFFFFFFFELL);
  v34 = *((v32 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v34 & 0x8000000000000000) != 0)
  {
    v34 = v33[1];
    if (!v34)
    {
      goto LABEL_45;
    }

    v35 = *v33;
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_45;
    }

    v35 = (v32 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v35, v34))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.FunctionDescription.predictedProbabilitiesName", "serializing", v36);
    v33 = (*(this + 13) & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5u, v33, __dst);
LABEL_45:
  v37 = *(this + 18);
  if (v37)
  {
    for (k = 0; k != v37; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v39 = *(*(this + 10) + 8 * k + 8);
      *__dst = 50;
      v40 = *(v39 + 40);
      __dst[1] = v40;
      if (v40 > 0x7F)
      {
        __dst[1] = v40 | 0x80;
        v42 = v40 >> 7;
        __dst[2] = v40 >> 7;
        v41 = __dst + 3;
        if (v40 >= 0x4000)
        {
          v43 = v40 >> 7;
          do
          {
            *(v41 - 1) = v42 | 0x80;
            v42 = v43 >> 7;
            *v41++ = v43 >> 7;
            v44 = v43 >> 14;
            v43 >>= 7;
          }

          while (v44);
        }
      }

      else
      {
        v41 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureDescription::_InternalSerialize(v39, v41, a3);
    }
  }

  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return __dst;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if (*a3 - __dst >= v48)
  {
    v50 = v48;
    memcpy(__dst, v49, v48);
    __dst += v50;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v49, v48, __dst);
}

unsigned __int8 *CoreML::Specification::FeatureDescription::_InternalSerialize(void (***this)(CoreML::Specification::FeatureDescription *__hidden this), unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = this[2];
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = *v7;
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_9;
    }

    v9 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v9, v8))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.FeatureDescription.name", "serializing", v10);
    v7 = (this[2] & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1u, v7, __dst);
LABEL_9:
  v11 = this[3];
  v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v13 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = v12[1];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = *v12;
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_17;
    }

    v14 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v14, v13))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.FeatureDescription.shortDescription", "serializing", v15);
    v12 = (this[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2u, v12, __dst);
LABEL_17:
  if (this != &CoreML::Specification::_FeatureDescription_default_instance_)
  {
    v16 = this[4];
    if (v16)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
        v16 = this[4];
      }

      *__dst = 26;
      v17 = *(v16 + 8);
      __dst[1] = v17;
      if (v17 > 0x7F)
      {
        __dst[1] = v17 | 0x80;
        v19 = v17 >> 7;
        __dst[2] = v17 >> 7;
        v18 = __dst + 3;
        if (v17 >= 0x4000)
        {
          v20 = v17 >> 7;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v19 = v20 >> 7;
            *v18++ = v20 >> 7;
            v21 = v20 >> 14;
            v20 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = __dst + 2;
      }

      __dst = CoreML::Specification::FeatureType::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = this[1];
  if ((v22 & 1) == 0)
  {
    return __dst;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
  }

  else
  {
    v26 = (v24 + 8);
  }

  if (*a3 - __dst >= v25)
  {
    v27 = v25;
    memcpy(__dst, v26, v25);
    __dst += v27;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v26, v25, __dst);
}

google::protobuf::internal *CoreML::Specification::FeatureDescription::_InternalParse(CoreML::Specification::FeatureDescription *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v29 = a2;
  while (1)
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v29, *(a3 + 23)))
      {
        return v29;
      }

      v5 = v29 + 1;
      v6 = *v29;
      if (*v29 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(v29 + v8) - 1) << v7;
            if ((*(v29 + v8) & 0x80000000) == 0)
            {
              break;
            }

            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return 0;
            }
          }

          v5 = v29 + v8 + 1;
        }

        else
        {
          v5 = v29 + 2;
        }
      }

      v9 = v6 >> 3;
      if (v6 >> 3 != 3)
      {
        break;
      }

      if (v6 != 26)
      {
        goto LABEL_17;
      }

      v18 = *(this + 4);
      if (!v18)
      {
        v19 = *(this + 1);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureType>(v20);
        *(this + 4) = v18;
      }

      v14 = google::protobuf::internal::ParseContext::ParseMessage(a3, v18, v5);
LABEL_34:
      v29 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    if (v9 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_17;
      }

      v15 = *(this + 1);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v17 = (this + 24);
    }

    else
    {
      if (v9 != 1 || v6 != 10)
      {
LABEL_17:
        if (v6)
        {
          v11 = (v6 & 7) == 4;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(a3 + 20) = v6 - 1;
          return v5;
        }

        v12 = *(this + 1);
        if (v12)
        {
          v13 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v13 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
        }

        v30 = v13;
        v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v30, v5, a3);
        goto LABEL_34;
      }

      v21 = *(this + 1);
      v16 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v16 = *v16;
      }

      v17 = (this + 16);
    }

    v22 = google::protobuf::internal::ArenaStringPtr::Mutable(v17, v16);
    v5 = google::protobuf::internal::InlineGreedyStringParser(v22, v5, a3);
    v29 = v5;
    v25 = *(v22 + 23);
    v26 = *v22;
    if ((v25 & 0x80000000) == 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = *v22;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      v25 = v22[1];
      if ((v25 & 0x8000000000000000) != 0)
      {
        google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(v22[1], v23, v24);
      }
    }

    if (!google::protobuf::internal::VerifyUTF8(v27, v25))
    {
      return 0;
    }

    if (!v5)
    {
      return v5;
    }
  }
}

uint64_t CoreML::Specification::FeatureDescription::ByteSizeLong(void (***this)(CoreML::Specification::FeatureDescription *__hidden this))
{
  v2 = this[2] & 0xFFFFFFFFFFFFFFFELL;
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v2 + 8);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  v5 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  v6 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (!*(v6 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v6 + 23))
  {
    goto LABEL_13;
  }

  v8 = *(v6 + 8);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v5 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_13:
  if (this != &CoreML::Specification::_FeatureDescription_default_instance_)
  {
    v9 = this[4];
    if (v9)
    {
      v10 = CoreML::Specification::FeatureType::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = this[1];
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v5 += v14;
  }

  *(this + 10) = v5;
  return v5;
}

void CoreML::Specification::FeatureDescription::MergeFrom(CoreML::Specification::FeatureDescription *this, void (***a2)(CoreML::Specification::FeatureDescription *__hidden this))
{
  v4 = a2[2] & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    v6 = *(this + 1);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 2, v4, v7);
  }

  v8 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    v10 = *(this + 1);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, v8, v11);
  }

  if (a2 != &CoreML::Specification::_FeatureDescription_default_instance_)
  {
    v12 = a2[4];
    if (v12)
    {
      v13 = *(this + 4);
      if (!v13)
      {
        v14 = *(this + 1);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureType>(v15);
        *(this + 4) = v13;
        v12 = a2[4];
      }

      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = &CoreML::Specification::_FeatureType_default_instance_;
      }

      CoreML::Specification::FeatureType::MergeFrom(v13, v16);
    }
  }

  v17 = a2[1];
  if (v17)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(this + 1, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *CoreML::Specification::FeatureDescription::Clear(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  v4 = this[3];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v4 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = this + 1;
  v6 = this[1];
  v8 = v6 & 1;
  v9 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    if (*v9)
    {
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    goto LABEL_13;
  }

  this = this[4];
  if (this)
  {
    CoreML::Specification::FeatureType::~FeatureType(this);
    this = MEMORY[0x1C6908B60]();
    v8 = *v7 & 1;
  }

LABEL_13:
  v1[4] = 0;
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v1 + 1);
  }

  return this;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415D9F0;
  *(result + 40) = 0;
  *(result + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::FeatureDescription::~FeatureDescription(void (***this)(CoreML::Specification::FeatureDescription *__hidden this))
{
  CoreML::Specification::FeatureDescription::~FeatureDescription(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 1);
  v2 = this[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = this[2];
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v5);
  }

  v6 = this[3];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v6);
  }

  if (this != &CoreML::Specification::_FeatureDescription_default_instance_)
  {
    v7 = this[4];
    if (v7)
    {
      CoreML::Specification::FeatureType::~FeatureType(v7);
      MEMORY[0x1C6908B60]();
    }
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_12:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

const char *CoreML::Specification::FunctionDescription::_InternalParse(CoreML::Specification::FunctionDescription *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v38 = a2;
  while (1)
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v38, *(a3 + 23)))
    {
      return v38;
    }

    v5 = (v38 + 1);
    v6 = *v38;
    if (*v38 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v38[v8] - 1) << v7;
          if ((v38[v8] & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = &v38[v8 + 1];
      }

      else
      {
        v5 = (v38 + 2);
      }
    }

    v9 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_72;
      }

      v19 = *(this + 1);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (this + 88);
LABEL_63:
      v28 = google::protobuf::internal::ArenaStringPtr::Mutable(v21, v20);
      v5 = google::protobuf::internal::InlineGreedyStringParser(v28, v5, a3);
      v38 = v5;
      v31 = *(v28 + 23);
      v32 = *v28;
      if ((v31 & 0x80000000) == 0)
      {
        v33 = v28;
      }

      else
      {
        v33 = *v28;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        v31 = v28[1];
        if ((v31 & 0x8000000000000000) != 0)
        {
          google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(v28[1], v29, v30);
        }
      }

      if (!google::protobuf::internal::VerifyUTF8(v33, v31))
      {
        return 0;
      }

      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      if (v9 == 2)
      {
        if (v6 == 18)
        {
          --v5;
          while (1)
          {
            v23 = *(this + 4);
            if (v23 && (v24 = *(this + 6), v24 < *v23))
            {
              *(this + 6) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v25 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 2));
              google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), v25);
            }

            v26 = google::protobuf::internal::ParseContext::ParseMessage(a3, v25, (v5 + 1));
            v5 = v26;
            if (!v26)
            {
              return v5;
            }

            if (*a3 <= v26 || *v26 != 18)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v9 == 3 && v6 == 26)
      {
        --v5;
        while (1)
        {
          v11 = *(this + 7);
          if (v11 && (v12 = *(this + 12), v12 < *v11))
          {
            *(this + 12) = v12 + 1;
            v13 = *&v11[2 * v12 + 2];
          }

          else
          {
            v13 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 5));
            google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 40), v13);
          }

          v14 = google::protobuf::internal::ParseContext::ParseMessage(a3, v13, (v5 + 1));
          v5 = v14;
          if (!v14)
          {
            return v5;
          }

          if (*a3 <= v14 || *v14 != 26)
          {
            goto LABEL_58;
          }
        }
      }

LABEL_72:
      if (v6)
      {
        v34 = (v6 & 7) == 4;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        *(a3 + 20) = v6 - 1;
        return v5;
      }

      v35 = *(this + 1);
      if (v35)
      {
        v36 = ((v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v36 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      }

      v39 = v36;
      v38 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v39, v5, a3);
      if (!v38)
      {
        return 0;
      }
    }
  }

  if (v9 == 4)
  {
    if (v6 != 34)
    {
      goto LABEL_72;
    }

    v22 = *(this + 1);
    v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v20 = *v20;
    }

    v21 = (this + 96);
    goto LABEL_63;
  }

  if (v9 == 5)
  {
    if (v6 != 42)
    {
      goto LABEL_72;
    }

    v27 = *(this + 1);
    v20 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v20 = *v20;
    }

    v21 = (this + 104);
    goto LABEL_63;
  }

  if (v9 != 6 || v6 != 50)
  {
    goto LABEL_72;
  }

  --v5;
  while (1)
  {
    v15 = *(this + 10);
    if (v15 && (v16 = *(this + 18), v16 < *v15))
    {
      *(this + 18) = v16 + 1;
      v17 = *&v15[2 * v16 + 2];
    }

    else
    {
      v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 8));
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 64), v17);
    }

    v18 = google::protobuf::internal::ParseContext::ParseMessage(a3, v17, (v5 + 1));
    v5 = v18;
    if (!v18)
    {
      return v5;
    }

    if (*a3 <= v18 || *v18 != 50)
    {
LABEL_58:
      v38 = v5;
      goto LABEL_2;
    }
  }
}

uint64_t CoreML::Specification::FunctionDescription::ByteSizeLong(CoreML::Specification::FunctionDescription *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = CoreML::Specification::FeatureDescription::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = CoreML::Specification::FeatureDescription::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = *(this + 10);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = CoreML::Specification::FeatureDescription::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    if (!*(v22 + 8))
    {
      goto LABEL_26;
    }
  }

  else if (!*(v22 + 23))
  {
    goto LABEL_26;
  }

  v24 = *(v22 + 8);
  if (v23 >= 0)
  {
    v24 = v23;
  }

  v16 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_26:
  v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if (v26 < 0)
  {
    if (!*(v25 + 8))
    {
      goto LABEL_31;
    }
  }

  else if (!*(v25 + 23))
  {
    goto LABEL_31;
  }

  v27 = *(v25 + 8);
  if (v26 >= 0)
  {
    v27 = v26;
  }

  v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_31:
  v28 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  if (v29 < 0)
  {
    if (!*(v28 + 8))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v28 + 23))
  {
    goto LABEL_36;
  }

  v30 = *(v28 + 8);
  if (v29 >= 0)
  {
    v30 = v29;
  }

  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_36:
  v31 = *(this + 1);
  if (v31)
  {
    v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v16 += v34;
  }

  *(this + 28) = v16;
  return v16;
}

void *CoreML::Specification::FunctionDescription::Clear(void *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::FeatureDescription::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = CoreML::Specification::FeatureDescription::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      this = CoreML::Specification::FeatureDescription::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 88);
  if (v11 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

  v13 = *(v1 + 96);
  if (v13 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
    }
  }

  v15 = *(v1 + 104);
  if (v15 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v15 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
    }
  }

  v18 = *(v1 + 8);
  v17 = (v1 + 8);
  if (v18)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v17);
  }

  return this;
}

void CoreML::Specification::FunctionDescription::~FunctionDescription(CoreML::Specification::FunctionDescription *this)
{
  CoreML::Specification::FunctionDescription::~FunctionDescription(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v5 = *(this + 11);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v5);
  }

  v6 = *(this + 12);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v6);
  }

  v7 = *(this + 13);
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v7);
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_11:
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 64));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 40));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 16));
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  if (*(this + 2) && !*this)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(this);
  }

  return this;
}

google::protobuf::internal *CoreML::Specification::ModelDescription::_InternalParse(CoreML::Specification::ModelDescription *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v50 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v50, *(a3 + 23)))
      {
        return v50;
      }

      v5 = v50 + 1;
      v6 = *v50;
      if (*v50 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(v50 + v8) - 1) << v7;
            if ((*(v50 + v8) & 0x80000000) == 0)
            {
              break;
            }

            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return 0;
            }
          }

          v5 = v50 + v8 + 1;
        }

        else
        {
          v5 = v50 + 2;
        }
      }

      v9 = v6 >> 3;
      if (v6 >> 3 <= 0xC)
      {
        break;
      }

      if (v6 >> 3 <= 0x14)
      {
        if (v9 == 13)
        {
          if (v6 == 106)
          {
            --v5;
            while (1)
            {
              v38 = *(this + 10);
              if (v38 && (v39 = *(this + 18), v39 < *v38))
              {
                *(this + 18) = v39 + 1;
                v40 = *&v38[2 * v39 + 2];
              }

              else
              {
                v40 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 8));
                google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 64), v40);
              }

              v41 = google::protobuf::internal::ParseContext::ParseMessage(a3, v40, (v5 + 1));
              v5 = v41;
              if (!v41)
              {
                return v5;
              }

              if (*a3 <= v41 || *v41 != 106)
              {
                goto LABEL_99;
              }
            }
          }
        }

        else if (v9 == 20 && v6 == 162)
        {
          v5 -= 2;
          while (1)
          {
            v22 = *(this + 13);
            if (v22 && (v23 = *(this + 24), v23 < *v22))
            {
              *(this + 24) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v24 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FunctionDescription>(*(this + 11));
              google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 88), v24);
            }

            v25 = google::protobuf::internal::ParseContext::ParseMessage(a3, v24, (v5 + 2));
            v5 = v25;
            if (!v25)
            {
              return v5;
            }

            if (*a3 <= v25 || *v25 != 418)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_100;
      }

      if (v9 == 21)
      {
        if (v6 != 170)
        {
          goto LABEL_100;
        }

        v31 = *(this + 1);
        v20 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v20 = *v20;
        }

        v21 = (this + 152);
        goto LABEL_71;
      }

      if (v9 == 50)
      {
        if (v6 == 146)
        {
          v5 -= 2;
          while (1)
          {
            v42 = *(this + 16);
            if (v42 && (v43 = *(this + 30), v43 < *v42))
            {
              *(this + 30) = v43 + 1;
              v44 = *&v42[2 * v43 + 2];
            }

            else
            {
              v44 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 14));
              google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 112), v44);
            }

            v45 = google::protobuf::internal::ParseContext::ParseMessage(a3, v44, (v5 + 2));
            v5 = v45;
            if (!v45)
            {
              return v5;
            }

            if (*a3 <= v45 || *v45 != 914)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_100;
      }

      if (v9 != 100 || v6 != 34)
      {
        goto LABEL_100;
      }

      v10 = *(this + 20);
      if (!v10)
      {
        v11 = *(this + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata>(v12);
        v10 = v13;
        *(this + 20) = v13;
      }

      v14 = google::protobuf::internal::ParseContext::ParseMessage(a3, v10, v5);
LABEL_107:
      v50 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    if (v6 >> 3 <= 0xA)
    {
      break;
    }

    if (v9 == 11)
    {
      if (v6 != 90)
      {
        goto LABEL_100;
      }

      v30 = *(this + 1);
      v20 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v20 = *v20;
      }

      v21 = (this + 136);
    }

    else
    {
      if (v9 != 12 || v6 != 98)
      {
        goto LABEL_100;
      }

      v19 = *(this + 1);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (this + 144);
    }

LABEL_71:
    v32 = google::protobuf::internal::ArenaStringPtr::Mutable(v21, v20);
    v5 = google::protobuf::internal::InlineGreedyStringParser(v32, v5, a3);
    v50 = v5;
    v35 = *(v32 + 23);
    v36 = *v32;
    if ((v35 & 0x80000000) == 0)
    {
      v37 = v32;
    }

    else
    {
      v37 = *v32;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      v35 = v32[1];
      if ((v35 & 0x8000000000000000) != 0)
      {
        google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(v32[1], v33, v34);
      }
    }

    if (!google::protobuf::internal::VerifyUTF8(v37, v35))
    {
      return 0;
    }

    if (!v5)
    {
      return v5;
    }
  }

  if (v9 != 1)
  {
    if (v9 == 10 && v6 == 82)
    {
      --v5;
      while (1)
      {
        v15 = *(this + 7);
        if (v15 && (v16 = *(this + 12), v16 < *v15))
        {
          *(this + 12) = v16 + 1;
          v17 = *&v15[2 * v16 + 2];
        }

        else
        {
          v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 5));
          google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 40), v17);
        }

        v18 = google::protobuf::internal::ParseContext::ParseMessage(a3, v17, (v5 + 1));
        v5 = v18;
        if (!v18)
        {
          return v5;
        }

        if (*a3 <= v18 || *v18 != 82)
        {
          goto LABEL_99;
        }
      }
    }

    goto LABEL_100;
  }

  if (v6 != 10)
  {
LABEL_100:
    if (v6)
    {
      v46 = (v6 & 7) == 4;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      *(a3 + 20) = v6 - 1;
      return v5;
    }

    v47 = *(this + 1);
    if (v47)
    {
      v48 = ((v47 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v48 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v51 = v48;
    v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v51, v5, a3);
    goto LABEL_107;
  }

  --v5;
  while (1)
  {
    v26 = *(this + 4);
    if (v26 && (v27 = *(this + 6), v27 < *v26))
    {
      *(this + 6) = v27 + 1;
      v28 = *&v26[2 * v27 + 2];
    }

    else
    {
      v28 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureDescription>(*(this + 2));
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), v28);
    }

    v29 = google::protobuf::internal::ParseContext::ParseMessage(a3, v28, (v5 + 1));
    v5 = v29;
    if (!v29)
    {
      return v5;
    }

    if (*a3 <= v29 || *v29 != 10)
    {
LABEL_99:
      v50 = v5;
      goto LABEL_2;
    }
  }
}

void *CoreML::Specification::ModelDescription::Clear(void *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::FeatureDescription::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v5 = *(v1 + 12);
  if (v5 >= 1)
  {
    v6 = (v1[7] + 8);
    do
    {
      v7 = *v6++;
      this = CoreML::Specification::FeatureDescription::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 12) = 0;
  }

  v8 = *(v1 + 18);
  if (v8 >= 1)
  {
    v9 = (v1[10] + 8);
    do
    {
      v10 = *v9++;
      this = CoreML::Specification::FeatureDescription::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 18) = 0;
  }

  v11 = *(v1 + 24);
  if (v11 >= 1)
  {
    v12 = (v1[13] + 8);
    do
    {
      v13 = *v12++;
      this = CoreML::Specification::FunctionDescription::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 24) = 0;
  }

  v14 = *(v1 + 30);
  if (v14 >= 1)
  {
    v15 = (v1[16] + 8);
    do
    {
      v16 = *v15++;
      this = CoreML::Specification::FeatureDescription::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 30) = 0;
  }

  v17 = v1[17];
  if (v17 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
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

  v19 = v1[18];
  if (v19 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
    }
  }

  v21 = v1[19];
  if (v21 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
    }
  }

  v23 = v1[1];
  v24 = v23 & 1;
  v25 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    if (*v25)
    {
      goto LABEL_37;
    }
  }

  else if (v25)
  {
    goto LABEL_37;
  }

  this = v1[20];
  if (this)
  {
    CoreML::Specification::Metadata::~Metadata(this);
    this = MEMORY[0x1C6908B60]();
    v24 = v1[1] & 1;
  }

LABEL_37:
  v1[20] = 0;
  if (v24)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v1 + 1);
  }

  return this;
}

void CoreML::Specification::ModelDescription::~ModelDescription(void (***this)(CoreML::Specification::ModelDescription *__hidden this))
{
  CoreML::Specification::ModelDescription::~ModelDescription(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 1);
  v2 = this[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = this[17];
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v5);
  }

  v6 = this[18];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v6);
  }

  v7 = this[19];
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(v7);
  }

  if (this != &CoreML::Specification::_ModelDescription_default_instance_)
  {
    v8 = this[20];
    if (v8)
    {
      CoreML::Specification::Metadata::~Metadata(v8);
      MEMORY[0x1C6908B60]();
    }
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_14:
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 14));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::~RepeatedPtrField((this + 11));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 8));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 5));
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField((this + 2));
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  if (*(this + 2) && !*this)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(this);
  }

  return this;
}

uint64_t CoreML::Specification::FeatureDescription::FeatureDescription(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415D9F0;
  *(this + 8) = v3;
  *(this + 40) = 0;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 32) = 0;
  return this;
}

void CoreML::Specification::FeatureDescription::CopyFrom(void (***this)(CoreML::Specification::FeatureDescription *__hidden this), void (***a2)(CoreML::Specification::FeatureDescription *__hidden this))
{
  if (a2 != this)
  {
    CoreML::Specification::FeatureDescription::Clear(this);

    CoreML::Specification::FeatureDescription::MergeFrom(this, a2);
  }
}

double CoreML::Specification::Metadata::Metadata(CoreML::Specification::Metadata *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415D540;
  *(this + 1) = v3;
  result = 0.0;
  *(this + 1) = xmmword_1C1C32EE0;
  *(this + 2) = xmmword_1C1C32EE0;
  *(this + 6) = &google::protobuf::internal::kGlobalEmptyTable;
  *(this + 7) = a2;
  *(this + 24) = 0;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

void CoreML::Specification::Metadata::CopyFrom(CoreML::Specification::Metadata *this, const CoreML::Specification::Metadata *a2)
{
  if (a2 != this)
  {
    CoreML::Specification::Metadata::Clear(this);

    CoreML::Specification::Metadata::MergeFrom(this, a2);
  }
}

void *CoreML::Specification::Metadata::InternalSwap(void *this, CoreML::Specification::Metadata *a2)
{
  v2 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v2;
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[5];
  v7 = this[6];
  v8 = *(a2 + 6);
  this[5] = *(a2 + 5);
  this[6] = v8;
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  v9 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(a2 + 8);
  *(a2 + 8) = this[8];
  this[8] = v10;
  v11 = *(a2 + 9);
  *(a2 + 9) = this[9];
  this[9] = v11;
  v12 = *(a2 + 10);
  *(a2 + 10) = this[10];
  this[10] = v12;
  v13 = *(a2 + 11);
  *(a2 + 11) = this[11];
  this[11] = v13;
  return this;
}

uint64_t CoreML::Specification::FunctionDescription::FunctionDescription(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F4160198;
  *(this + 8) = v3;
  *(this + 16) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = a2;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = a2;
  *(this + 72) = 0;
  *(this + 112) = 0;
  *(this + 80) = 0;
  *(this + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 104) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void CoreML::Specification::FunctionDescription::CopyFrom(CoreML::Specification::FunctionDescription *this, const CoreML::Specification::FunctionDescription *a2)
{
  if (a2 != this)
  {
    CoreML::Specification::FunctionDescription::Clear(this);

    CoreML::Specification::FunctionDescription::MergeFrom(this, a2);
  }
}

uint64_t CoreML::Specification::ModelDescription::ModelDescription(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415DB58;
  *(this + 8) = v3;
  *(this + 16) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = a2;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = a2;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = a2;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = a2;
  *(this + 120) = 0;
  *(this + 168) = 0;
  *(this + 128) = 0;
  *(this + 136) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 144) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 152) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 160) = 0;
  return this;
}

CoreML::Specification::ModelDescription *CoreML::Specification::ModelDescription::ModelDescription(CoreML::Specification::ModelDescription *this, void (***a2)(CoreML::Specification::ModelDescription *__hidden this))
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = off_1F415DB58;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = a2[4];
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(v5, v8, v7 + 1, v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = a2[7];
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), v11);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 5, v13, v12 + 1, v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = a2[10];
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64), *(a2 + 18));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 8, v18, v17 + 1, v16, **(this + 10) - *(this + 18));
    v19 = *(this + 18) + v16;
    *(this + 18) = v19;
    v20 = *(this + 10);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = a2[13];
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 88), *(a2 + 24));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::TypeHandler>(this + 11, v23, v22 + 1, v21, **(this + 13) - *(this + 24));
    v24 = *(this + 24) + v21;
    *(this + 24) = v24;
    v25 = *(this + 13);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v26 = *(a2 + 30);
  if (v26)
  {
    v27 = a2[16];
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112), *(a2 + 30));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::TypeHandler>(this + 14, v28, v27 + 1, v26, **(this + 16) - *(this + 30));
    v29 = *(this + 30) + v26;
    *(this + 30) = v29;
    v30 = *(this + 16);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(this + 42) = 0;
  v31 = a2[1];
  if (v31)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(v4, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  v32 = a2[17] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v32 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v32 + 8))
    {
      goto LABEL_25;
    }
  }

  else if (!*(v32 + 23))
  {
    goto LABEL_25;
  }

  v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (*v4)
  {
    v33 = *v33;
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 17, v32, v33);
LABEL_25:
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  v34 = a2[18] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v34 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v34 + 8))
    {
      goto LABEL_32;
    }
  }

  else if (!*(v34 + 23))
  {
    goto LABEL_32;
  }

  v35 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (*v4)
  {
    v35 = *v35;
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 18, v34, v35);
LABEL_32:
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  v36 = a2[19] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v36 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v36 + 8))
    {
      goto LABEL_39;
    }
  }

  else if (!*(v36 + 23))
  {
    goto LABEL_39;
  }

  v37 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (*v4)
  {
    v37 = *v37;
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 19, v36, v37);
LABEL_39:
  if (a2 != &CoreML::Specification::_ModelDescription_default_instance_ && a2[20])
  {
    operator new();
  }

  *(this + 20) = 0;
  return this;
}

void sub_1C1C1CD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, google::protobuf::internal::InternalMetadata *a9, google::protobuf::internal::RepeatedPtrFieldBase *a10)
{
  google::protobuf::RepeatedPtrField<CoreML::Specification::FunctionDescription>::~RepeatedPtrField(v13);
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField(v12);
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField(v11);
  google::protobuf::RepeatedPtrField<CoreML::Specification::FeatureDescription>::~RepeatedPtrField(a10);
  *v10 = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v14);
  _Unwind_Resume(a1);
}

void CoreML::Specification::ModelDescription::CopyFrom(void (***this)(CoreML::Specification::ModelDescription *__hidden this), void (***a2)(CoreML::Specification::ModelDescription *__hidden this))
{
  if (a2 != this)
  {
    CoreML::Specification::ModelDescription::Clear(this);

    CoreML::Specification::ModelDescription::MergeFrom(this, a2);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1C6908AC0](a1 + 128);
  return a1;
}

double _ZNSt3__120__shared_ptr_emplaceIN6CoreML13Specification16ModelDescriptionENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F415CC98;
  *(a1 + 24) = off_1F415DB58;
  *(a1 + 32) = 0;
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 168) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 176) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 184) = 0;
  return result;
}

void std::__shared_ptr_emplace<CoreML::Specification::ModelDescription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

unint64_t google::protobuf::internal::ReadVarint64(google::protobuf::internal *this, const char **a2)
{
  v2 = *this;
  v4 = (*this + 1);
  v3 = **this;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v5 = v3 & 0x7F | (*v4 << 7);
    if (*v4 < 0)
    {
      v6 = 2;
      v7 = 14;
      while (1)
      {
        v5 += (v2[v6] - 1) << v7;
        if ((v2[v6] & 0x80000000) == 0)
        {
          break;
        }

        v3 = 0;
        v4 = 0;
        ++v6;
        v7 += 7;
        if (v6 == 10)
        {
          goto LABEL_10;
        }
      }

      v4 = &v2[v6 + 1];
    }

    else
    {
      v4 = v2 + 2;
    }

    v3 = v5;
  }

LABEL_10:
  *this = v4;
  return v3;
}

unsigned __int8 *CoreML::Specification::StringVector::_InternalSerialize(CoreML::Specification::StringVector *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(this + 4) + v7);
      v9 = *(v8 + 23);
      v10 = v8;
      v11 = v9;
      if (*(v8 + 23) < 0)
      {
        v10 = *v8;
        v11 = *(v8 + 1);
      }

      if (!google::protobuf::internal::IsStructurallyValidUTF8(v10, v11))
      {
        google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.StringVector.vector", "serializing", v12);
        v9 = *(v8 + 23);
      }

      if ((v9 & 0x80) != 0 && (v9 = *(v8 + 1), v9 > 127) || *a3 - __dst + 14 < v9)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v13 = __dst + 2;
        memcpy(v13, v8, v9);
        __dst = &v13[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, __dst);
}

const char *CoreML::Specification::StringVector::_InternalParse(CoreML::Specification::StringVector *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v25, *(a3 + 23)))
    {
      return v25;
    }

    v5 = (v25 + 1);
    v6 = *v25;
    if (*v25 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v25[v8] - 1) << v7;
          if ((v25[v8] & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = &v25[v8 + 1];
      }

      else
      {
        v5 = (v25 + 2);
      }
    }

    if (v6 == 10)
    {
      break;
    }

    if (v6)
    {
      v9 = (v6 & 7) == 4;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      *(a3 + 20) = v6 - 1;
      return v5;
    }

    v10 = *(this + 1);
    if (v10)
    {
      v11 = ((v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v11 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v26 = v11;
    v25 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v26, v5, a3);
    if (!v25)
    {
      return 0;
    }
  }

  v12 = v5 - 1;
  while (1)
  {
    v13 = *(this + 4);
    if (v13 && (v14 = *(this + 6), v14 < *v13))
    {
      *(this + 6) = v14 + 1;
      AlignedWithCleanup = *&v13[2 * v14 + 2];
    }

    else
    {
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      *v17 = AlignedWithCleanup;
      v17[1] = google::protobuf::internal::arena_destruct_object<std::string>;
      AlignedWithCleanup->__r_.__value_.__r.__words[0] = 0;
      AlignedWithCleanup->__r_.__value_.__l.__size_ = 0;
      AlignedWithCleanup->__r_.__value_.__r.__words[2] = 0;
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), AlignedWithCleanup);
    }

    v12 = google::protobuf::internal::InlineGreedyStringParser(AlignedWithCleanup, v12 + 1, a3);
    v25 = v12;
    size = SHIBYTE(AlignedWithCleanup->__r_.__value_.__r.__words[2]);
    v21 = AlignedWithCleanup->__r_.__value_.__r.__words[0];
    if ((size & 0x80000000) == 0)
    {
      v22 = AlignedWithCleanup;
    }

    else
    {
      v22 = AlignedWithCleanup->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x8000000000000000) != 0)
    {
      size = AlignedWithCleanup->__r_.__value_.__l.__size_;
      if ((size & 0x8000000000000000) != 0)
      {
        google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(AlignedWithCleanup->__r_.__value_.__l.__size_, v18, v19);
      }
    }

    if (!google::protobuf::internal::VerifyUTF8(v22, size) || v12 == 0)
    {
      return 0;
    }

    if (*a3 <= v12 || *v12 != 10)
    {
      goto LABEL_2;
    }
  }
}

uint64_t CoreML::Specification::StringVector::ByteSizeLong(CoreML::Specification::StringVector *this)
{
  v1 = *(this + 6);
  if (v1 < 1)
  {
    v3 = *(this + 6);
  }

  else
  {
    v2 = (*(this + 4) + 8);
    v3 = *(this + 6);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(this + 10) = v3;
  return v3;
}

std::string *CoreML::Specification::StringVector::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v3 = this;
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = *(a2 + 4);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&this->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 16, v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::StringVector::Clear(CoreML::Specification::StringVector *this)
{
  v1 = *(this + 6);
  if (v1 >= 1)
  {
    v2 = *(this + 4) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(this + 6) = 0;
  }

  v5 = *(this + 8);
  result = (this + 8);
  if (v5)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringVector>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &unk_1F415DF18;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void CoreML::Specification::StringVector::~StringVector(CoreML::Specification::StringVector *this)
{
  CoreML::Specification::StringVector::~StringVector(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  v4 = *(this + 4);
  if (v4 && !*(this + 2))
  {
    v5 = (v4 + 2);
    v6 = *v4;
    if (v6 >= 1)
    {
      do
      {
        v7 = *v5;
        if (*v5)
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          MEMORY[0x1C6908B60](v7, 0x1012C40EC159624);
        }

        ++v5;
        --v6;
      }

      while (v6);
      v4 = *(this + 4);
    }

    operator delete(v4);
  }

  *(this + 4) = 0;
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}